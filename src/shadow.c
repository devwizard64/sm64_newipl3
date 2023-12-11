#include <sm64.h>

typedef struct shadow
{
	float x;
	float y;
	float z;
	float level;
	float scale;
	float nx;
	float ny;
	float nz;
	float nw;
	float angy;
	float angx;
	u8 alpha;
}
SHADOW;

char shadow_onwater;
char shadow_ondecal;
static char shadow_offset;
static short shadow_bgcode;

static void shadow_rotate(float *posz, float *posx, float z, float x)
{
	OBJECT *obj = (OBJECT *)s_object;
	*posz = z*COS(obj->o_shape_ang_y) - x*SIN(obj->o_shape_ang_y);
	*posx = z*SIN(obj->o_shape_ang_y) + x*COS(obj->o_shape_ang_y);
}

static float shadow_atan2(float y, float x)
{
	return (float)ATAN2(y, x) / 65535.0 * 360.0;
}

static float shadow_scale_size(float size, float height)
{
	float scale;
	if (height <= 0.0)
	{
		scale = size;
	}
	else if (height >= 600.0)
	{
		scale = 0.5 * size;
	}
	else
	{
		scale = size * (1 - 0.5*height/600);
	}
	return scale;
}

static float shadow_cut_size(float size, float height)
{
	if (height >= 600.0)
	{
		return 0;
	}
	else
	{
		return size;
	}
}

static UCHAR shadow_scale_alpha(UCHAR alpha, float height)
{
	if (alpha <= 120)
	{
		return alpha;
	}
	else if (height <= 0.0)
	{
		return alpha;
	}
	else if (height >= 600.0)
	{
		return 120;
	}
	else
	{
		float a = (120-alpha)*height/600.0 + (float)alpha;
		return a;
	}
}

static float shadow_check_water(SHADOW *shadow)
{
	float water_y = bg_check_water(shadow->x, shadow->z);
	if (water_y < -10000.0)
	{
		return 0;
	}
	else if (shadow->y >= water_y && shadow->level <= water_y)
	{
		shadow_onwater = TRUE;
		return water_y;
	}
#ifndef sgi
	return water_y;
#endif
}

static int shadow_init(
	SHADOW *shadow, float x, float y, float z, SHORT size, UCHAR alpha
)
{
#ifdef sgi
	float water_y;
#else
	float water_y = -10000;
#endif
	float d;
	PLANE *plane;
	shadow->x = x;
	shadow->y = y;
	shadow->z = z;
	shadow->level = bg_check_plane(shadow->x, shadow->y, shadow->z, &plane);
	if (waterp) water_y = shadow_check_water(shadow);
	if (shadow_onwater)
	{
		shadow->level = water_y;
		shadow->nx = 0;
		shadow->ny = 1;
		shadow->nz = 0;
		shadow->nw = -water_y;
	}
	else
	{
		if (shadow->level < -10000.0 || plane->ny <= 0.0)
		{
			return TRUE;
		}
		shadow->nx = plane->nx;
		shadow->ny = plane->ny;
		shadow->nz = plane->nz;
		shadow->nw = plane->nw;
	}
	if (alpha != 0) shadow->alpha = shadow_scale_alpha(alpha, y - shadow->level);
	shadow->scale = shadow_scale_size(size, y - shadow->level);
	shadow->angy = shadow_atan2(shadow->nz, shadow->nx);
	if ((d = sqrtf(shadow->nx*shadow->nx + shadow->nz*shadow->nz)) == 0.0)
	{
		shadow->angx = 0;
	}
	else
	{
		shadow->angx = 90.0 - shadow_atan2(d, shadow->ny);
	}
	return FALSE;
}

static void shadow_vtx_st9(CHAR i, short *s, short *t)
{
	*s = 15 * (i%3 - 1);
	*t = 15 * (i/3 - 1);
}

static void shadow_vtx_st4(CHAR i, short *s, short *t)
{
	*s = 15 * (2*(i%2) - 1);
	*t = 15 * (2*(i/2) - 1);
}

static void shadow_vtx_set(
	Vtx *vtx, CHAR i, float vx, float vy, float vz, UCHAR alpha, CHAR vcode
)
{
	SHORT x = roundftos(vx);
	SHORT y = roundftos(vy);
	SHORT z = roundftos(vz);
	short s, t;
	switch (vcode)
	{
	case 0: shadow_vtx_st9(i, &s, &t); break;
	case 1: shadow_vtx_st4(i, &s, &t); break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	if (shadow_offset)
	{
		x += 5;
		y += 5;
		z += 5;
	}
	vtx_set(vtx, i, x, y, z, 32*s, 32*t, 0xFF, 0xFF, 0xFF, alpha);
}

static float shadow_project(SHADOW shadow, float x, float z)
{
	return -(shadow.nx*x + shadow.nz*z + shadow.nw) / shadow.ny;
}

static void shadow_vtx_calc_off(CHAR i, CHAR vcode, s8 *x, s8 *z)
{
	*x = i%(3-vcode) - 1;
	*z = i/(3-vcode) - 1;
	if (vcode == 1)
	{
		if (*x == 0) *x = 1;
		if (*z == 0) *z = 1;
	}
}

static void shadow_vtx_calc_pos(
	CHAR i, SHADOW shadow, float *x, float *y, float *z, CHAR vcode
)
{
	float scalez, angy, posx, posz;
	s8 offx, offz;
	PLANE *plane;
	scalez = cosf(shadow.angx * M_PI/180) * shadow.scale;
	angy = shadow.angy * M_PI/180;
	shadow_vtx_calc_off(i, vcode, &offx, &offz);
	posx = offx * shadow.scale / 2.0;
	posz = offz * scalez       / 2.0;
	*x = posz*sinf(angy) + posx*cosf(angy) + shadow.x;
	*z = posz*cosf(angy) - posx*sinf(angy) + shadow.z;
	if (shadow_onwater)
	{
		*y = shadow.level;
	}
	else
	{
		switch (vcode)
		{
		case 0: *y = bg_check_plane(*x, shadow.y, *z, &plane); break;
		case 1: *y = shadow_project(shadow, *x, *z); break;
#ifdef __GNUC__
		default: __builtin_unreachable();
#endif
		}
	}
}

static SHORT shadow_planecalc(SHADOW shadow, float x, float y, float z)
{
	float dx = x - shadow.x;
	float dy = y - shadow.level;
	float dz = z - shadow.z;
	float d = dx*shadow.nx + dy*shadow.ny + dz*shadow.nz;
	return d;
}

static void shadow_vtx_calc(Vtx *vtx, CHAR i, SHADOW shadow, CHAR vcode)
{
	float x, y, z, vx, vy, vz;
	UCHAR alpha = shadow.alpha;
	if (shadow_onwater) alpha = 200;
	shadow_vtx_calc_pos(i, shadow, &x, &y, &z, vcode);
	if (vcode == 0 && !shadow_onwater)
	{
		if (shadow_planecalc(shadow, x, y, z) != 0)
		{
			y = shadow_project(shadow, x, z);
			alpha = 0;
		}
	}
	vx = x - shadow.x;
	vy = y - shadow.y;
	vz = z - shadow.z;
	shadow_vtx_set(vtx, i, vx, vy, vz, alpha, vcode);
}

extern Gfx gfx_shadow_circle[];
extern Gfx gfx_shadow_square[];
extern Gfx gfx_shadow_9[];
extern Gfx gfx_shadow_4[];
extern Gfx gfx_shadow_end[];

static void shadow_gfx(Gfx *gfx, Vtx *vtx, CHAR vcode, CHAR tcode)
{
	switch (tcode)
	{
	case 10:
		gSPDisplayList(gfx++, gfx_shadow_circle);
		break;
	case 20:
		gSPDisplayList(gfx++, gfx_shadow_square);
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif

	}
	switch (vcode)
	{
	case 0:
		gSPVertex(gfx++, vtx, 9, 0);
		gSPDisplayList(gfx++, gfx_shadow_9);
		break;
	case 1:
		gSPVertex(gfx++, vtx, 4, 0);
		gSPDisplayList(gfx++, gfx_shadow_4);
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	gSPDisplayList(gfx++, gfx_shadow_end);
	gSPEndDisplayList(gfx);
}

static void shadow_fadein(
	SHADOW *shadow, UCHAR alpha, SHORT frame, SHORT min, SHORT max
)
{
	if (frame >= 0 && frame < min)
	{
		shadow->alpha = 0;
	}
	else if (frame > max)
	{
		shadow->alpha = alpha;
	}
	else
	{
		shadow->alpha = (float)alpha * (frame-min)/(max-min);
	}
}

static void shadow_fadeout(
	SHADOW *shadow, UCHAR alpha, SHORT frame, SHORT min, SHORT max
)
{
	if (frame >= min && frame <= max)
	{
		shadow->alpha = (float)alpha * (1.0 - (float)(frame-min)/(max-min));
	}
	else
	{
		shadow->alpha = 0;
	}
}

static int shadow_fade_player(int code, UCHAR alpha, SHADOW *shadow)
{
	OBJECT *obj;
	CHAR result;
	short frame;
	switch (code)
	{
	case 0: obj = mario_obj; break;
	case 1: obj = luigi_obj; break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	frame = obj->s.skel.frame;
	switch (obj->s.skel.index)
	{
	case 51:
		result = 0;
		break;
	case 52:
		shadow_fadein(shadow, alpha, frame, 5, 14);
		result = 1;
		break;
	case 0:
		shadow_fadein(shadow, alpha, frame, 21, 33);
		result = 1;
		break;
	case 28:
		shadow_fadeout(shadow, alpha, frame, 0, 5);
		result = 1;
		break;
	default:
		result = 2;
		break;
	}
	return result;
}

static void shadow_check_player(SHADOW *shadow)
{
	if (stage_index == STAGE_BITFS && shadow_bgcode == 1)
	{
		if (shadow->level < -3000.0)
		{
			shadow->level = -3062;
			shadow_onwater = TRUE;
		}
		else if (shadow->level > 3400.0)
		{
			shadow->level = 3492;
			shadow_onwater = TRUE;
		}
	}
	else if (stage_index == STAGE_LLL && scene_index == 1 && shadow_bgcode == 1)
	{
		shadow->level = 5;
		shadow_onwater = TRUE;
	}
}

static Gfx *shadow_draw_player(
	float x, float y, float z, SHORT size, UCHAR alpha, int code
)
{
	Vtx *vtx;
	Gfx *gfx;
	SHADOW shadow;
	CHAR flag;
	int i;
	if (stage_index == STAGE_RR && shadow_bgcode != 10)
	{
		switch (objshape_803612F0)
		{
		case 1:
			shadow_ondecal = TRUE;
			shadow_offset = TRUE;
			break;
		case 2:
			shadow_ondecal = TRUE;
			break;
		}
	}
	switch (shadow_fade_player(code, alpha, &shadow))
	{
		case 0: return NULL; break;
		case 1: flag = shadow_init(&shadow, x, y, z, size, 0);      break;
		case 2: flag = shadow_init(&shadow, x, y, z, size, alpha);  break;
#ifdef __GNUC__
		default: __builtin_unreachable();
#endif
	}
	if (flag) return NULL;
	vtx = gfx_alloc(sizeof(Vtx)*9);
	gfx = gfx_alloc(sizeof(Gfx)*5);
	if (!vtx || !gfx) return NULL;
	shadow_check_player(&shadow);
	for (i = 0; i < 9; i++) shadow_vtx_calc(vtx, i, shadow, 0);
	shadow_gfx(gfx, vtx, 0, 10);
	return gfx;
}

static Gfx *shadow_draw_circle9(
	float x, float y, float z, SHORT size, UCHAR alpha
)
{
	Vtx *vtx;
	Gfx *gfx;
	SHADOW shadow;
	int i;
	if (shadow_init(&shadow, x, y, z, size, alpha)) return NULL;
	vtx = gfx_alloc(sizeof(Vtx)*9);
	gfx = gfx_alloc(sizeof(Gfx)*5);
	if (!vtx || !gfx) return NULL;
	for (i = 0; i < 9; i++) shadow_vtx_calc(vtx, i, shadow, 0);
	shadow_gfx(gfx, vtx, 0, 10);
	return gfx;
}

static Gfx *shadow_draw_circle4(
	float x, float y, float z, SHORT size, UCHAR alpha
)
{
	Vtx *vtx;
	Gfx *gfx;
	SHADOW shadow;
	int i;
	if (shadow_init(&shadow, x, y, z, size, alpha)) return NULL;
	vtx = gfx_alloc(sizeof(Vtx)*4);
	gfx = gfx_alloc(sizeof(Gfx)*5);
	if (!vtx || !gfx) return NULL;
	for (i = 0; i < 4; i++) shadow_vtx_calc(vtx, i, shadow, 1);
	shadow_gfx(gfx, vtx, 1, 10);
	return gfx;
}

static Gfx *shadow_draw_circle4flat(
	float x, float y, float z, SHORT size, UCHAR alpha
)
{
	Vtx *vtx;
	Gfx *gfx;
	PLANE *plane;
	float level;
	float ground_y = bg_check_plane(x, y, z, &plane);
	float radius = size/2;
	if (ground_y < -10000.0) return NULL;
	else level = ground_y - y;
	vtx = gfx_alloc(sizeof(Vtx)*4);
	gfx = gfx_alloc(sizeof(Gfx)*5);
	if (!vtx || !gfx) return NULL;
	shadow_vtx_set(vtx, 0, -radius, level, -radius, alpha, 1);
	shadow_vtx_set(vtx, 1, +radius, level, -radius, alpha, 1);
	shadow_vtx_set(vtx, 2, -radius, level, +radius, alpha, 1);
	shadow_vtx_set(vtx, 3, +radius, level, +radius, alpha, 1);
	shadow_gfx(gfx, vtx, 1, 10);
	return gfx;
}

static Gfx *shadow_gfx_square(float x, float z, float y, UCHAR alpha)
{
	Vtx *vtx = gfx_alloc(sizeof(Vtx)*4);
	Gfx *gfx = gfx_alloc(sizeof(Gfx)*5);
	float x0, z0, x1, z1, x2, z2, x3, z3;
	if (!vtx || !gfx) return NULL;
	shadow_rotate(&z0, &x0, -z, -x);
	shadow_rotate(&z1, &x1, -z, +x);
	shadow_rotate(&z2, &x2, +z, -x);
	shadow_rotate(&z3, &x3, +z, +x);
	shadow_vtx_set(vtx, 0, x0, y, z0, alpha, 1);
	shadow_vtx_set(vtx, 1, x1, y, z1, alpha, 1);
	shadow_vtx_set(vtx, 2, x2, y, z2, alpha, 1);
	shadow_vtx_set(vtx, 3, x3, y, z3, alpha, 1);
	shadow_gfx(gfx, vtx, 1, 20);
	return gfx;
}

static int shadow_init_square(
	float x, float y, float z, float *level, u8 *alpha
)
{
	PLANE *plane;
	float water_y;
	*level = bg_check_plane(x, y, z, &plane);
	if (*level < -10000.0)
	{
		return TRUE;
	}
	else if ((water_y = bg_check_water(x, z)) < -10000.0)
	{
	}
	else if (y >= water_y && *level <= water_y)
	{
		shadow_onwater = TRUE;
		*level = water_y;
		*alpha = 200;
	}
	return FALSE;
}

static Gfx *shadow_draw_square(
	float x, float y, float z, SHORT size, u8 alpha, CHAR type
)
{
	float level, height, radius;
	if (shadow_init_square(x, y, z, &level, &alpha)) return NULL;
	height = y - level;
	switch (type)
	{
	case SHADOW_SQUAREFIX:
		radius = size/2;
		break;
	case SHADOW_SQUARE:
		radius = shadow_scale_size(size, height) / 2.0;
		break;
	case SHADOW_SQUARECUT:
		radius = shadow_cut_size(size, height) / 2.0;
		break;
	default:
		return NULL;
	}
	return shadow_gfx_square(radius, radius, -height, alpha);
}

typedef struct shadow_rect
{
	float sizex;
	float sizez;
	char flag;
}
SHADOW_RECT;

static Gfx *shadow_draw_rect(
	float x, float y, float z, UNUSED SHORT size, u8 alpha, CHAR type
)
{
	static SHADOW_RECT rect[] =
	{
		{360, 230, TRUE},
		{200, 180, TRUE},
	};
	float level, height, sizex, sizez;
	CHAR i = type - SHADOW_RECTSTART;
	if (shadow_init_square(x, y, z, &level, &alpha)) return NULL;
	height = y - level;
	if (ISTRUE(rect[i].flag))
	{
		sizex = shadow_scale_size(rect[i].sizex, height);
		sizez = shadow_scale_size(rect[i].sizez, height);
	}
	else
	{
		sizex = rect[i].sizex;
		sizez = rect[i].sizez;
	}
	return shadow_gfx_square(sizex, sizez, -height, alpha);
}

Gfx *shadow_draw(float x, float y, float z, SHORT size, UCHAR alpha, CHAR type)
{
	Gfx *gfx = NULL;
	BGFACE *ground;
	bg_check_ground(x, y, z, &ground);
	shadow_onwater = FALSE;
	shadow_ondecal = FALSE;
	shadow_offset = FALSE;
	if (ground)
	{
		if (ground->code == 46) shadow_ondecal = TRUE;
		shadow_bgcode = ground->code;
	}
	switch (type)
	{
	case SHADOW_CIRCLE9:
		gfx = shadow_draw_circle9(x, y, z, size, alpha);
		break;
	case SHADOW_CIRCLE4:
		gfx = shadow_draw_circle4(x, y, z, size, alpha);
		break;
	case SHADOW_CIRCLE4FLAT:
		gfx = shadow_draw_circle4flat(x, y, z, size, alpha);
		break;
	case SHADOW_SQUAREFIX:
		gfx = shadow_draw_square(x, y, z, size, alpha, type);
		break;
	case SHADOW_SQUARE:
		gfx = shadow_draw_square(x, y, z, size, alpha, type);
		break;
	case SHADOW_SQUARECUT:
		gfx = shadow_draw_square(x, y, z, size, alpha, type);
		break;
	case SHADOW_MARIO:
		gfx = shadow_draw_player(x, y, z, size, alpha, 0);
		break;
	default:
		gfx = shadow_draw_rect(x, y, z, size, alpha, type);
		break;
	}
	return gfx;
}

