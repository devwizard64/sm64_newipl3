#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_ssl_3[] =
{
	sCull(2000),
	sStart(),
		sCallback(0x0801, s_water_802D1FA8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_4[] =
{
	sCull(2000),
	sStart(),
		sLOD(-1000, 4000),
		sStart(),
			sCallback(0x0802, s_water_802D1FA8),
		sEnd(),
		sLOD(4000, 12800),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07004AE0),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_58[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700BF18),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_199[] =
{
	sCull(4000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FCE0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_G, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, -2048, 0, -1024, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07009F48),
					sGfx(LAYER_OPA_SURF, (void *)0x0700BA78),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700BC18),
					sGfx(LAYER_XLU_DECAL, (void *)0x0700BD00),
					sCallback(0x0801, s_water_802D2108),
					sCallback(0, s_water_802D01E0),
					sCallback(0x0801, s_water_802D104C),
					sCallback(0x0851, s_water_802D104C),
					sCallback(0x0801, s_water_802D1CDC),
					sCallback(0x0802, s_water_802D1CDC),
					sCallback(0x0803, s_water_802D1CDC),
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

S_SCRIPT s_ssl_54[] =
{
	sCull(700),
	sStart(),
		sShadow(550, 180, SHADOW_SQUARE),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x070220A8),
			sGfx(LAYER_TEX_EDGE, (void *)0x070221E8),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_55[] =
{
	sCull(550),
	sStart(),
		sShadow(0, 180, SHADOW_50),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x070228A8),
			sGfx(LAYER_TEX_EDGE, (void *)0x070229E8),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_56[] =
{
	sCull(700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07022CF8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl_57[] =
{
	sCull(900),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070233A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x070235C0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl2[] =
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
				sCamera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x0701EE80),
					sGfx(LAYER_TEX_EDGE, (void *)0x0701F920),
					sGfx(LAYER_XLU_DECAL, (void *)0x0701FCE0),
					sCallback(0x0802, s_water_802D2108),
					sCallback(0, s_water_802D01E0),
					sCallback(0x0801, s_water_802D1B70),
					sCallback(0x0802, s_water_802D1B70),
					sCallback(0x0803, s_water_802D1B70),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ssl3[] =
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
				sCamera(4, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07021A08),
					sGfx(LAYER_XLU_SURF, (void *)0x07021DE8),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
