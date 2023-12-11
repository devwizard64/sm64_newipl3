#include <sm64/shplang.h>

#define SCRIPT

extern void *s_objshape_802D2470(int code, SHAPE *shape, void *data);
extern void *s_objshape_802D2520(int code, SHAPE *shape, void *data);

S_SCRIPT s_rr_3[] =
{
	sCull(3000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07002CC8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_4[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07002E80),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_5[] =
{
	sCull(3000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07004A98),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_6[] =
{
	sCull(3000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07005C80),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_7[] =
{
	sCull(3500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07007E60),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_8[] =
{
	sCull(3500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07008258),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_9[] =
{
	sCull(2800),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07008E20),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_10[] =
{
	sCull(4000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700BB48),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_11[] =
{
	sCull(3000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700CA38),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_12[] =
{
	sCull(4000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700DBD8),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700DE88),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_13[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700E178),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_14[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x0700E830),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_15[] =
{
	sCull(4000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07012758),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_16[] =
{
	sCull(3500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07014340),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_17[] =
{
	sCull(1600),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07014D68),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_18[] =
{
	sCull(3800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x070154F0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_19[] =
{
	sCull(2500),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x07015AA0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_20[] =
{
	sCull(4500),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x07017368),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_21[] =
{
	sCull(5000),
	sStart(),
		sGfx(LAYER_XLU_SURF, (void *)0x07018990),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_22[] =
{
	sCull(3000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07018FD8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_55[] =
{
	sCull(500),
	sStart(),
		sCallback(0, s_objshape_802D2520),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_62[] =
{
	sCull(1300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07019918),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_57[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A3A0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_59[] =
{
	sCull(1200),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A4B8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_56[] =
{
	sCull(1300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A9B0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_54[] =
{
	sCull(700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701AC30),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_58[] =
{
	sCull(700),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701ADD8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_64[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B058),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_60[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B2D8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_63[] =
{
	sCull(420),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701B660),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701B798),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_61[] =
{
	sCull(1100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701BB20),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_65[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E488),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_66[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07020F18),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_67[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070239A8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_68[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07026448),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr_69[] =
{
	sCull(1500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07028DC0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_rr1[] =
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
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(14, 0, 2000, 6000, 0, 0, -8000, s_stage_camera),
				sStart(),
					sCallback(0, s_objshape_802D2470),
					sGfx(LAYER_TEX_EDGE, (void *)0x07002168),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
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
