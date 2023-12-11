#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_bitfsa_54[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07000FE0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitfsa1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_D, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(11, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07001930),
					sObject(),
					sCallback(WEATHER_LAVA, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
