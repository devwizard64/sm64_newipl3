#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_bitsa_54[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070022A8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_55[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070025E0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_56[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07002918),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_57[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07002C50),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_58[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07002F88),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_59[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070032C0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_60[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070035F8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_61[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07003930),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_62[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, 0x07003C68),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_63[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07003FA0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa_3[] =
{
	sCull(700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07004958),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitsa1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_J, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(11, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x070046B0),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
