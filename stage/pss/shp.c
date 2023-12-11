#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_pss1[] =
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
				sCamera(9, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x0700A7C0),
					sGfx(LAYER_OPA_SURF, (void *)0x0700AFA8),
					sGfx(LAYER_OPA_SURF, (void *)0x0700B3F0),
					sGfx(LAYER_OPA_SURF, (void *)0x0700D338),
					sGfx(LAYER_XLU_SURF, (void *)0x0700DAD8),
					sGfx(LAYER_OPA_SURF, (void *)0x0700E2B0),
					sGfx(LAYER_OPA_DECAL, (void *)0x0700E3E8),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
