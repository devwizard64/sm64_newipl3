#include <sm64.h>

extern Gfx gfx_quad0[];
extern Gfx gfx_wipe_start[];
extern Gfx gfx_wipe_end[];
extern Gfx gfx_wipe_draw[];

static u8 wipe_timer[2] = {0};
static u16 wipe_ang[2] = {0};

extern u8 txt_wipe_star[];
extern u8 txt_wipe_circle[];
extern u8 txt_wipe_mario[];
extern u8 txt_wipe_bowser[];

static u8 *txt_wipe[] =
{
	txt_wipe_star,
	txt_wipe_circle,
	txt_wipe_mario,
	txt_wipe_bowser,
};

static int wipe_step(CHAR screen, UCHAR frame)
{
	int result = FALSE;
	wipe_timer[screen]++;
	if (wipe_timer[screen] == frame)
	{
		wipe_timer[screen] = 0;
		wipe_ang[screen] = 0;
		result = TRUE;
	}
	return result;
}

static UCHAR wipe_fade_alpha(CHAR code, CHAR screen, UCHAR frame)
{
	UCHAR alpha;
	switch (code)
	{
	case 0:
		alpha = 255.0*       (float)wipe_timer[screen]/(float)(frame-1)  + 0.5;
		break;
	case 1:
		alpha = 255.0*(1.0 - (float)wipe_timer[screen]/(float)(frame-1)) + 0.5;
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	return alpha;
}

static Vtx *wipe_fade_vtx(WIPE_FADE *fade, UCHAR alpha)
{
	Vtx *vtx = gfx_alloc(sizeof(Vtx)*4);
	u8 r = fade->r;
	u8 g = fade->g;
	u8 b = fade->b;
	if (vtx)
	{
		vtx_set(vtx, 0,         0,         0, -1, 0, 0, r, g, b, alpha);
		vtx_set(vtx, 1, SCREEN_WD,         0, -1, 0, 0, r, g, b, alpha);
		vtx_set(vtx, 2, SCREEN_WD, SCREEN_HT, -1, 0, 0, r, g, b, alpha);
		vtx_set(vtx, 3,         0, SCREEN_HT, -1, 0, 0, r, g, b, alpha);
	}
	else
	{
	}
	return vtx;
}

static int wipe_fade_gfx(CHAR screen, UCHAR frame, WIPE_FADE *fade, UCHAR alpha)
{
	Vtx *vtx;
	if ((vtx = wipe_fade_vtx(fade, alpha)))
	{
		gSPDisplayList(glistp++, gfx_wipe_start);
		gDPSetCombineMode(glistp++, G_CC_SHADE, G_CC_SHADE);
		gDPSetRenderMode(glistp++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
		gSPVertex(glistp++, K0_TO_PHYS(vtx), 4, 0);
		gSPDisplayList(glistp++, gfx_quad0);
		gSPDisplayList(glistp++, gfx_wipe_end);
	}
	return wipe_step(screen, frame);
}

static int wipe_fade_in(CHAR screen, UCHAR frame, WIPE_FADE *fade)
{
	UCHAR alpha = wipe_fade_alpha(1, screen, frame);
	return wipe_fade_gfx(screen, frame, fade, alpha);
}

static int wipe_fade_out(CHAR screen, UCHAR frame, WIPE_FADE *fade)
{
	UCHAR alpha = wipe_fade_alpha(0, screen, frame);
	return wipe_fade_gfx(screen, frame, fade, alpha);
}

static SHORT wipe_win_size(CHAR screen, CHAR frame, WIPE_WINDOW *win)
{
	float dsize = win->esize - win->ssize;
	float ssize = dsize * wipe_timer[screen]/(frame-1);
	float size = win->ssize + ssize;
	return size + 0.5;
}

static float wipe_win_dist(CHAR screen, CHAR frame, WIPE_WINDOW *win)
{
	float sx = win->sx;
	float sy = win->sy;
	float ex = win->ex;
	float ey = win->ey;
	float d = sqrtf((sx-ex)*(sx-ex) + (sy-ey)*(sy-ey));
	float dist = d * wipe_timer[screen]/(frame-1);
	return dist;
}

static USHORT wipe_win_ang(WIPE_WINDOW *win)
{
	float dx = win->ex - win->sx;
	float dy = win->ey - win->sy;
	return ATAN2(dx, dy);
}

static SHORT wipe_win_x(WIPE_WINDOW *win, float dist, USHORT ang)
{
	float x = win->sx + dist*COS(ang);
	return x + 0.5;
}

static SHORT wipe_win_y(WIPE_WINDOW *win, float dist, USHORT ang)
{
	float y = win->sy + dist*SIN(ang);
	return y + 0.5;
}

static void wipe_win_vtx_set(
	Vtx *vtx, int i, CHAR screen, WIPE_WINDOW *win,
	SHORT x, SHORT y, SHORT dx, SHORT dy, SHORT s, SHORT t
)
{
	u8 r = win->r;
	u8 g = win->g;
	u8 b = win->b;
	u16 ang = wipe_ang[screen];
	float xf = x + (dx*COS(ang) - dy*SIN(ang));
	float yf = y + (dx*SIN(ang) + dy*COS(ang));
	SHORT xs = roundftos(xf);
	SHORT ys = roundftos(yf);
	vtx_set(vtx, i, xs, ys, -1, 32*s, 32*t, r, g, b, 0xFF);
}

static void wipe_win_vtx(
	Vtx *vtx, CHAR screen, WIPE_WINDOW *win,
	SHORT x, SHORT y, SHORT size, CHAR code
)
{
	switch (code)
	{
	case 0:
		wipe_win_vtx_set(vtx, 0, screen, win, x, y, -size, -size, -31, 63);
		wipe_win_vtx_set(vtx, 1, screen, win, x, y, +size, -size,  31, 63);
		wipe_win_vtx_set(vtx, 2, screen, win, x, y, +size, +size,  31,  0);
		wipe_win_vtx_set(vtx, 3, screen, win, x, y, -size, +size, -31,  0);
		break;
	case 1:
		wipe_win_vtx_set(vtx, 0, screen, win, x, y, -size, -size,  0, 63);
		wipe_win_vtx_set(vtx, 1, screen, win, x, y, +size, -size, 63, 63);
		wipe_win_vtx_set(vtx, 2, screen, win, x, y, +size, +size, 63,  0);
		wipe_win_vtx_set(vtx, 3, screen, win, x, y, -size, +size,  0,  0);
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
	wipe_win_vtx_set(vtx, 4, screen, win, x, y, -2000, -2000, 0, 0);
	wipe_win_vtx_set(vtx, 5, screen, win, x, y, +2000, -2000, 0, 0);
	wipe_win_vtx_set(vtx, 6, screen, win, x, y, +2000, +2000, 0, 0);
	wipe_win_vtx_set(vtx, 7, screen, win, x, y, -2000, +2000, 0, 0);
}

static int wipe_win(
	CHAR screen, CHAR frame, WIPE_WINDOW *win, CHAR txt, CHAR code
)
{
	float dist = wipe_win_dist(screen, frame, win);
	USHORT ang = wipe_win_ang(win);
	SHORT x = wipe_win_x(win, dist, ang);
	SHORT y = wipe_win_y(win, dist, ang);
	SHORT size = wipe_win_size(screen, frame, win);
	Vtx *vtx;
	if ((vtx = gfx_alloc(sizeof(Vtx)*8)))
	{
		wipe_win_vtx(vtx, screen, win, x, y, size, code);
		gSPDisplayList(glistp++, gfx_wipe_start);
		gDPSetCombineMode(glistp++, G_CC_SHADE, G_CC_SHADE);
		gDPSetRenderMode(glistp++, G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2);
		gSPVertex(glistp++, K0_TO_PHYS(vtx), 8, 0);
		gSPDisplayList(glistp++, gfx_wipe_draw);
		gDPPipeSync(glistp++);
		gDPSetCombineMode(
			glistp++, G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA
		);
		gDPSetRenderMode(glistp++, G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2);
		gDPSetTextureFilter(glistp++, G_TF_BILERP);
		switch (code)
		{
		case 0: gDPLoadTextureBlock(
			glistp++, txt_wipe[txt], G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0,
			G_TX_MIRROR, G_TX_MIRROR, 5, 6, 0, 0
		); break;
		case 1: gDPLoadTextureBlock(
			glistp++, txt_wipe[txt], G_IM_FMT_IA, G_IM_SIZ_8b, 64, 64, 0,
			G_TX_CLAMP, G_TX_CLAMP, 6, 6, 0, 0
		); break;
#ifdef __GNUC__
		default: __builtin_unreachable();
#endif
		}
		gSPTexture(glistp++, 0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON);
		gSPVertex(glistp++, K0_TO_PHYS(vtx), 4, 0);
		gSPDisplayList(glistp++, gfx_quad0);
		gSPTexture(
			glistp++, 0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF
		);
		gSPDisplayList(glistp++, gfx_wipe_end);
		wipe_ang[screen] += win->ang_vel;
	}
	else
	{
	}
	return wipe_step(screen, frame);
}

int wipe_draw(CHAR screen, CHAR type, UCHAR frame, WIPE_DATA *data)
{
	switch (type)
	{
	case WIPE_FADE_IN:
		return wipe_fade_in(screen, frame, &data->fade);
		break;
	case WIPE_FADE_OUT:
		return wipe_fade_out(screen, frame, &data->fade);
		break;
	case WIPE_STAR_IN:
		return wipe_win(screen, frame, &data->window, 0, 0);
		break;
	case WIPE_STAR_OUT:
		return wipe_win(screen, frame, &data->window, 0, 0);
		break;
	case WIPE_CIRCLE_IN:
		return wipe_win(screen, frame, &data->window, 1, 0);
		break;
	case WIPE_CIRCLE_OUT:
		return wipe_win(screen, frame, &data->window, 1, 0);
		break;
	case WIPE_MARIO_IN:
		return wipe_win(screen, frame, &data->window, 2, 1);
		break;
	case WIPE_MARIO_OUT:
		return wipe_win(screen, frame, &data->window, 2, 1);
		break;
	case WIPE_BOWSER_IN:
		return wipe_win(screen, frame, &data->window, 3, 0);
		break;
	case WIPE_BOWSER_OUT:
		return wipe_win(screen, frame, &data->window, 3, 0);
		break;
#ifdef __GNUC__
	default: __builtin_unreachable();
#endif
	}
}

static Gfx *cannon_overlay_gfx(void)
{
	Vtx *vtx = gfx_alloc(sizeof(Vtx)*4);
	Gfx *gfx = gfx_alloc(sizeof(Gfx)*(3+7+6));
	Gfx *g = gfx;
	if (vtx && gfx)
	{
		vtx_set(vtx, 0,         0,         0, -1, 32*-36, 32*57, 0, 0, 0, 0xFF);
		vtx_set(vtx, 1, SCREEN_WD,         0, -1, 32*+36, 32*57, 0, 0, 0, 0xFF);
		vtx_set(vtx, 2, SCREEN_WD, SCREEN_HT, -1, 32*+36, 32* 6, 0, 0, 0, 0xFF);
		vtx_set(vtx, 3,         0, SCREEN_HT, -1, 32*-36, 32* 6, 0, 0, 0, 0xFF);
		gSPDisplayList(g++, gfx_wipe_start);
		gDPSetCombineMode(g++, G_CC_MODULATERGBDECALA, G_CC_MODULATERGBDECALA);
		gDPSetTextureFilter(g++, G_TF_BILERP);
		gDPLoadTextureBlock(
			g++, txt_wipe[1], G_IM_FMT_IA, G_IM_SIZ_8b, 32, 64, 0,
			G_TX_MIRROR, G_TX_MIRROR, 5, 6, 0, 0
		);
		gSPTexture(g++, 0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON);
		gSPVertex(g++, K0_TO_PHYS(vtx), 4, 0);
		gSPDisplayList(g++, gfx_quad0);
		gSPTexture(g++, 0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF);
		gSPDisplayList(g++, gfx_wipe_end);
		gSPEndDisplayList(g);
	}
	else
	{
		return NULL;
	}
	return gfx;
}

void *s_cannon_overlay(int code, SHAPE *shape, UNUSED void *data)
{
	S_CALLBACK *shp = (S_CALLBACK *)shape;
	Gfx *gfx = NULL;
	if (code == SC_DRAW)
	{
		if (scenep && scenep->cam->mode == 10) /* T:enum */
		{
			shape_set_layer(&shp->s, LAYER_XLU_SURF);
			gfx = cannon_overlay_gfx();
		}
	}
	return gfx;
}
