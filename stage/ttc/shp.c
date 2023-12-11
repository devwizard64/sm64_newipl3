#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_ttc_54[] =
{
	sCull(410),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700ECB8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_55[] =
{
	sCull(410),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700EFE0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_56[] =
{
	sCull(1100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700F760),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_57[] =
{
	sCull(720),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FBB8),
		sCallback(0x1400, s_water_802D1E48),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_58[] =
{
	sCull(520),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FFE8),
		sCallback(0x1401, s_water_802D1E48),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_59[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070102B8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_60[] =
{
	sCull(400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07010868),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_61[] =
{
	sCull(520),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07010D38),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_62[] =
{
	sCull(250),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07011040),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_63[] =
{
	sCull(250),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07011360),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_64[] =
{
	sCull(380),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070116A8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_65[] =
{
	sCull(1700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07011B38),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_66[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07012028),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_67[] =
{
	sCull(200),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07012148),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc_68[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07012278),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ttc1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(GPACK_RGBA5551(0xC5, 0xFF, 0xFF, 1), NULL),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(2, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1400, s_water_802D2108),
					sCallback(0x1401, s_water_802D2108),
					sGfx(LAYER_OPA_SURF, (void *)0x0700AD38),
					sGfx(LAYER_XLU_SURF, (void *)0x0700B1D8),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700E878),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
