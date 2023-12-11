#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_jrb_61[] =
{
	sCull(1600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AE48),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_62[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFB0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_59[] =
{
	sCull(1100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007AC8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_63[] =
{
	sCull(900),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007DC8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_60[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070080F8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_53[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07008FD8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_57[] =
{
	sCull(5000),
	sStart(),
		sCallback(0, s_objlib_8029D924),
		sGfx(LAYER_XLU_SURF, (void *)0x070090B0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_54[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07009A58),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_58[] =
{
	sCull(5000),
	sStart(),
		sCallback(0, s_objlib_8029D924),
		sGfx(LAYER_XLU_SURF, (void *)0x07009B30),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_55[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700A608),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb_56[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AC68),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_C, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 25000, s_stage_perspective),
			sStart(),
				sCamera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_TEX_EDGE, (void *)0x07002FD0),
					sGfx(LAYER_OPA_SURF, (void *)0x07004940),
					sGfx(LAYER_OPA_SURF, (void *)0x07004C78),
					sGfx(LAYER_OPA_SURF, (void *)0x070058C8),
					sGfx(LAYER_OPA_SURF, (void *)0x070069B0),
					sGfx(LAYER_OPA_SURF, (void *)0x07007570),
					sGfx(LAYER_TEX_EDGE, (void *)0x07007718),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1201, s_water_802D104C),
					sCallback(0x1205, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_JET, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
		sLayer(FALSE),
		sStart(),
			sCallback(0, s_cannon_overlay),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_jrb2[] =
{
	sScene(160, 120, 160, 120, 10),
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
			sPerspective(45, 100, 10000, s_stage_perspective),
			sStart(),
				sCamera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x0700EF00),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700FE48),
					sGfx(LAYER_OPA_SURF, (void *)0x07010548),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1202, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_BUBBLE, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
