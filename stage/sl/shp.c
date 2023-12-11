#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_sl_55[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x0700A890),
	sEnd(),
	sExit(),
};

S_SCRIPT s_sl_56[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x0700A980),
	sEnd(),
	sExit(),
};

S_SCRIPT s_sl_54[] =
{
	sCull(350),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700A780),
	sEnd(),
	sExit(),
};

S_SCRIPT s_sl1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_B, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(16, 0, 2000, 6000, 0, 4400, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07005478),
					sGfx(LAYER_XLU_SURF, (void *)0x070056B0),
					sGfx(LAYER_OPA_SURF, 0x070073D0),
					sGfx(LAYER_TEX_EDGE, (void *)0x07007880),
					sGfx(LAYER_XLU_SURF, (void *)0x070088B0),
					sGfx(LAYER_XLU_DECAL, (void *)0x07008D58),
					sGfx(LAYER_OPA_SURF, (void *)0x0700A5A0),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1001, s_water_802D104C),
					sObject(),
					sCallback(WEATHER_SNOW, s_stage_weather),
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

S_SCRIPT s_sl2[] =
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
					sGfx(LAYER_OPA_SURF, (void *)0x0700BAE8),
					sGfx(LAYER_OPA_SURF, (void *)0x0700BCF8),
					sGfx(LAYER_XLU_SURF, (void *)0x0700C9E8),
					sGfx(LAYER_XLU_SURF, (void *)0x0700CB58),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
