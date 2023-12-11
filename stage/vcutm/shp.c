#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_vcutm_54[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070096E0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_vcutm1[] =
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
			sPerspective(45, 100, 25000, s_stage_perspective),
			sStart(),
				sCamera(14, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07007E88),
					sGfx(LAYER_OPA_SURF, (void *)0x07008E10),
					sGfx(LAYER_OPA_SURF, (void *)0x070093E8),
					sGfx(LAYER_TEX_EDGE, (void *)0x070080D0),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
