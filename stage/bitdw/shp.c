#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_bitdw_3[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070028A0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_4[] =
{
	sCull(2300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070032F8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_5[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07003608),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_6[] =
{
	sCull(4000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07003BF0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_7[] =
{
	sCull(3500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07004318),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_8[] =
{
	sCull(2500),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x070045C0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_9[] =
{
	sCull(1300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07005078),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_10[] =
{
	sCull(2900),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07005BC0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_11[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070065F0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_12[] =
{
	sCull(2400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007AA8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_13[] =
{
	sCull(2400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07008FF0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_14[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x070093B0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_15[] =
{
	sCull(2400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700A368),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_16[] =
{
	sCull(1100),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700A6A8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_17[] =
{
	sCull(1400),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AD10),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_56[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700AFA0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_55[] =
{
	sCull(1100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B220),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_54[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, 0x0700B480),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_57[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700B8D8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_58[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700BB58),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_59[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700C0E0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_60[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700C670),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_61[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700CC00),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_62[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D190),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw_63[] =
{
	sCull(2000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700D3E8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bitdw1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_I, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(14, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_TEX_EDGE, (void *)0x070020C8),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
