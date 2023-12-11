#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_thi_54[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007648),
	sEnd(),
	sExit(),
};

S_SCRIPT s_thi_55[] =
{
	sCull(300),
	sStart(),
		sScale(0.3),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07007648),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_thi_3[] =
{
	sCull(1200),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007930),
	sEnd(),
	sExit(),
};

S_SCRIPT s_thi1[] =
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
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07005260),
					sGfx(LAYER_OPA_SURF, (void *)0x07006968),
					sGfx(LAYER_TEX_EDGE, (void *)0x07007008),
					sGfx(LAYER_XLU_SURF, (void *)0x070072E8),
					sGfx(LAYER_XLU_DECAL, (void *)0x070073C0),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1301, s_water_802D104C),
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

S_SCRIPT s_thi2[] =
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
				sCamera(1, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sScale(0.3),
					sStart(),
						sGfx(LAYER_OPA_SURF, (void *)0x07005260),
						sGfx(LAYER_OPA_SURF, (void *)0x07006968),
						sGfx(LAYER_TEX_EDGE, (void *)0x07007008),
						sGfx(LAYER_XLU_SURF, (void *)0x070072E8),
					sEnd(),
					sGfx(LAYER_XLU_DECAL, (void *)0x07007538),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1302, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_thi3[] =
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
				sCamera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_XLU_SURF, (void *)0x07007C20),
					sGfx(LAYER_OPA_SURF, (void *)0x07009670),
					sGfx(LAYER_OPA_SURF, (void *)0x07009D50),
					sGfx(LAYER_TEX_EDGE, (void *)0x07009F58),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
