#include <sm64/shplang.h>

#define SCRIPT

extern void *s_face_proc(int code, SHAPE *shape, void *data);
extern void *s_title_logo(int code, SHAPE *shape, void *data);
extern void *s_title_symbol(int code, SHAPE *shape, void *data);
extern void *s_title_back(int code, SHAPE *shape, void *data);
extern void *s_gameover_back(int code, SHAPE *shape, void *data);
extern Gfx gfx_logo[];
extern Gfx gfx_symbol[];

S_SCRIPT s_logo[] =
{
	sScene(160, 120, 160, 120, 0),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0x00, 0x00, 0x00, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPersp(45, 128, 16384),
			sStart(),
				sCamera(0, 0, 0, 3200, 0, 0, 0, NULL),
				sStart(),
					sCallback(0, s_title_logo),
				sEnd(),
			sEnd(),
		sEnd(),
		sLayer(FALSE),
		sStart(),
			sCallback(0, s_title_symbol),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_face[] =
{
	sScene(160, 120, 160, 120, 0),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sCallback(0, s_title_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPersp(45, 128, 16384),
			sStart(),
				sCallback(2, s_face_proc),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_gameover[] =
{
	sScene(160, 120, 160, 120, 0),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sCallback(0, s_gameover_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPersp(45, 128, 16384),
			sStart(),
				sCallback(3, s_face_proc),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

extern Gfx gfx_debug_super_s[];
extern Gfx gfx_debug_super_u[];
extern Gfx gfx_debug_super_p[];
extern Gfx gfx_debug_super_e[];
extern Gfx gfx_debug_super_r[];
extern Gfx gfx_debug_mario_m[];
extern Gfx gfx_debug_mario_a[];
extern Gfx gfx_debug_mario_r[];
extern Gfx gfx_debug_mario_i[];
extern Gfx gfx_debug_mario_o[];

S_SCRIPT s_debug[] =
{
	sScene(160, 120, 160, 120, 0),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sCallback(0, s_title_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPersp(45, 128, 16384),
			sStart(),
				sCamera(0, 0, 0, 1200, 0, 0, 0, NULL),
				sStart(),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_super_s, -230, 300, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_super_u, -120, 300, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_super_p, -20, 300, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_super_e, 100, 300, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_super_r, 250, 300, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_mario_m, -310, 100, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_mario_a, -90, 100, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_mario_r, 60, 100, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_mario_i, 180, 100, 0),
					sGfxPos(LAYER_OPA_SURF, gfx_debug_mario_o, 300, 100, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
