#include <sm64.h>

extern Gfx gfx_quad0[];
extern Gfx gfx_back_start[];
extern Gfx gfx_back_tile[];
extern Gfx gfx_back_end[];

extern BACK back_a;
extern BACK back_d;
extern BACK back_e;
extern BACK back_f;
extern BACK back_b;
extern BACK back_g;
extern BACK back_h;
extern BACK back_i;
extern BACK back_c;
extern BACK back_j;

static BACK *back_table[] =
{
	&back_a,
	&back_d,
	&back_e,
	&back_f,
	&back_b,
	&back_g,
	&back_h,
	&back_i,
	&back_c,
	&back_j,
};

#define BACK_WD (SCREEN_WD*4)
#define BACK_HT (SCREEN_HT*4)
#define TILE_WD (SCREEN_WD/2)
#define TILE_HT (SCREEN_HT/2)

typedef struct back_data
{
	unsigned short angy;
	short angx;
	int posx;
	int posy;
	int index;
}
BACK_DATA;

static BACK_DATA back_data[2];

static int back_posx(CHAR screen, float fovy)
{
	float angy = back_data[screen].angy;
	float xf = (SCREEN_WD*360.0*angy) / (fovy*65536.0);
	int x = xf + 0.5;
	if (x > BACK_WD) x -= x/BACK_WD*BACK_WD;
	return BACK_WD - x;
}

static int back_posy(CHAR screen, UNUSED float fovy)
{
	float deg = (float)back_data[screen].angx * 360.0/65535.0;
	float yf = 360 * deg / 90.0;
	int yi = roundftos(yf);
	int y = yi + TILE_HT*5;
	if (y > BACK_HT) y = BACK_HT;
	if (y < SCREEN_HT) y = SCREEN_HT;
	return y;
}

static int back_index(CHAR screen)
{
	int x = (          back_data[screen].posx) / TILE_WD;
	int y = (BACK_HT - back_data[screen].posy) / TILE_HT;
	return BACK_TW*y + x;
}

#define back_vtx_set(vtx, i, x, y, s, t, rgb) \
	vtx_set(vtx, i, x, y, -1, 32*(s), 32*(t), rgb[0], rgb[1], rgb[2], 0xFF)

static Vtx *back_vtx(int index, CHAR shade)
{
	static u8 rgb[][3] =
	{
		{  80,  100,   90},
		{0xFF, 0xFF, 0xFF},
	};
	Vtx *vtx = gfx_alloc(sizeof(Vtx)*4);
	SHORT x =           TILE_WD*(index%BACK_TW);
	SHORT y = BACK_HT - TILE_HT*(index/BACK_TW);
	if (vtx)
	{
		back_vtx_set(vtx, 0, x+      0, y-      0,  0,  0, rgb[shade]);
		back_vtx_set(vtx, 1, x+      0, y-TILE_HT,  0, 31, rgb[shade]);
		back_vtx_set(vtx, 2, x+TILE_WD, y-TILE_HT, 31, 31, rgb[shade]);
		back_vtx_set(vtx, 3, x+TILE_WD, y-      0, 31,  0, rgb[shade]);
	}
	else
	{
	}
	return vtx;
}

static void back_tile(Gfx **g, CHAR type, CHAR screen, CHAR shade)
{
	int y;
	int x;
	for (y = 0; y < 3; y++)
	{
		for (x = 0; x < 3; x++)
		{
			int index = back_data[screen].index + BACK_TW*y + x;
			u16 *txt =
				((BACK *)segment_to_virtual(back_table[type]))->txt[index];
			Vtx *vtx = back_vtx(index, shade);
			gDPLoadImageBlockT(
				(*g)++, txt, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32
			);
			gSPVertex((*g)++, K0_TO_PHYS(vtx), 4, 0);
			gSPDisplayList((*g)++, gfx_quad0);
		}
	}
}

static Mtx *back_mtx(CHAR screen)
{
	float l = back_data[screen].posx;
	float r = back_data[screen].posx + SCREEN_WD;
	float b = back_data[screen].posy - SCREEN_HT;
	float t = back_data[screen].posy;
	Mtx *mtx = gfx_alloc(sizeof(Mtx));
	if (mtx)
	{
		guOrtho(mtx, l, r, b, t, 0, 3, 1);
	}
	else
	{
	}
	return mtx;
}

static Gfx *back_gfx(CHAR screen, CHAR type, CHAR shade)
{
	int len = 3 + 7*3*3 + 2;
	Gfx *gfx = gfx_alloc(sizeof(Gfx)*len);
	Gfx *g = gfx;
	if (!gfx)
	{
		return NULL;
	}
	else
	{
		Mtx *mtx = back_mtx(screen);
		gSPDisplayList(g++, gfx_back_start);
		gSPMatrix(
			g++, K0_TO_PHYS(mtx), G_MTX_PROJECTION|G_MTX_MUL|G_MTX_NOPUSH
		);
		gSPDisplayList(g++, gfx_back_tile);
		back_tile(&g, type, screen, shade);
		gSPDisplayList(g++, gfx_back_end);
		gSPEndDisplayList(g);
	}
	return gfx;
}

Gfx *back_draw(
	CHAR screen, CHAR type, float fovy,
	float eye_x, float eye_y, float eye_z,
	float look_x, float look_y, float look_z
)
{
	float dx = look_x - eye_x;
	float dy = look_y - eye_y;
	float dz = look_z - eye_z;
	CHAR shade = 1;
	if (type == BACK_C && !(save_get_star(COURSE_JRB-1) & 1)) shade = 0;
	fovy = 90;
	back_data[screen].angy = ATAN2(dz, dx);
	back_data[screen].angx = ATAN2(sqrtf(dx*dx + dz*dz), dy);
	back_data[screen].posx = back_posx(screen, fovy);
	back_data[screen].posy = back_posy(screen, fovy);
	back_data[screen].index = back_index(screen);
	return back_gfx(screen, type, shade);
}
