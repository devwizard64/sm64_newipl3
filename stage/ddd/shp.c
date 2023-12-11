#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_ddd_56[] =
{
	sCull(700),
	sStart(),
		sShadow(120, 180, SHADOW_SQUAREFIX),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x0700D2A0),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ddd_54[] =
{
	sCull(10000),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x07009030),
		sGfx(LAYER_OPA_SURF, (void *)0x07009120),
		sGfx(LAYER_XLU_SURF, (void *)0x07009208),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ddd_55[] =
{
	sCull(10000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AF10),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700B068),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ddd1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_A, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(2, 0, 2000, 6000, 2560, 0, 512, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07004D48),
					sGfx(LAYER_OPA_SURF, (void *)0x070057E8),
					sGfx(LAYER_TEX_EDGE, (void *)0x07005C40),
					sGfx(LAYER_XLU_SURF, (void *)0x07005F78),
					sCallback(0, s_water_802D01E0),
					sCallback(0x2301, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_WHIRLPOOL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ddd2[] =
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
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(4, 0, 2000, 6000, 2560, 0, 512, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07007408),
					sGfx(LAYER_OPA_SURF, (void *)0x07007CB8),
					sGfx(LAYER_TEX_EDGE, (void *)0x07008C48),
					sGfx(LAYER_XLU_SURF, (void *)0x07008F80),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700BAE0),
					sGfx(LAYER_OPA_SURF, (void *)0x0700CE48),
					sCallback(0, s_water_802D01E0),
					sCallback(0x2302, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_JET, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
