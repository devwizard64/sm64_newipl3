#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_courtyard_3[] =
{
	sCull(2600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07005078),
	sEnd(),
	sExit(),
};

S_SCRIPT s_courtyard1[] =
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
				sCamera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x070048B8),
					sGfx(LAYER_XLU_DECAL, (void *)0x07005698),
					sGfx(LAYER_TEX_EDGE, (void *)0x07005938),
					sCallback(0, s_water_802D01E0),
					sCallback(0x2601, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
