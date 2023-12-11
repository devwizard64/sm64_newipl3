#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_cotmc1[] =
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
					sGfx(LAYER_OPA_SURF, (void *)0x07007D48),
					sGfx(LAYER_OPA_SURF, (void *)0x0700A160),
					sCallback(0, s_water_802D01E0),
					sCallback(0x2801, s_water_802D1B70),
					sGfx(LAYER_XLU_SURF, (void *)0x0700A4B8),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
