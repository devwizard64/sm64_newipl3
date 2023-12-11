#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_totwc_3[] =
{
	sCull(2000),
	sStart(),
		sBillboard(0, 0, 0),
		sStart(),
			sGfx(LAYER_XLU_SURF, (void *)0x070079A8),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_totwc1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_F, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 25000, s_stage_perspective),
			sStart(),
				sCamera(16, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07005D28),
					sGfx(LAYER_XLU_SURF, (void *)0x07007048),
					sGfx(LAYER_XLU_SURF, (void *)0x070078B8),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
