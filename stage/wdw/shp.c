#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_wdw_54[] =
{
	sCull(550),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07012B90),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_55[] =
{
	sCull(350),
	sStart(),
		sShadow(110, 150, SHADOW_SQUARECUT),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07012E88),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_56[] =
{
	sCull(200),
	sStart(),
		sShadow(90, 150, SHADOW_SQUARE),
		sStart(),
			sGfx(LAYER_XLU_SURF, (void *)0x070131B8),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_57[] =
{
	sCull(420),
	sStart(),
		sShadow(240, 150, SHADOW_SQUARECUT),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07013490),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_58[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07013B70),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_59[] =
{
	sCull(900),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07013E40),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw_60[] =
{
	sCull(450),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070140E0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wdw1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_E, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, -4352, 0, -4352, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07009AB0),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700A138),
					sGfx(LAYER_XLU_SURF, (void *)0x07012798),
					sGfx(LAYER_XLU_DECAL, (void *)0x07012908),
					sCallback(0, s_water_802D0080),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1101, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
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

S_SCRIPT s_wdw2[] =
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
				sCamera(1, 0, 2000, 6000, -4352, 0, -4352, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07011E48),
					sGfx(LAYER_TEX_EDGE, (void *)0x07012258),
					sGfx(LAYER_XLU_DECAL, (void *)0x07012908),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1102, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
