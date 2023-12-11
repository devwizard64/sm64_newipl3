#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_hmc_60[] =
{
	sCull(1000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701FFF8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_57[] =
{
	sCull(300),
	sStart(),
		sShadow(400, 180, SHADOW_CIRCLE9),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07023BC8),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_58[] =
{
	sCull(150),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07023E10),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_59[] =
{
	sCull(100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07024110),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_54[] =
{
	sCull(550),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07022DA0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_55[] =
{
	sCull(200),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07023090),
	sEnd(),
	sExit(),
};

S_SCRIPT s_hmc_56[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07022AA0),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_hmc1_1[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070078B0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007B50),
		sGfx(LAYER_XLU_SURF, (void *)0x070080E8),
		sGfx(LAYER_OPA_SURF, (void *)0x070093F0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_2[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700E448),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700EF00),
		sGfx(LAYER_XLU_SURF, (void *)0x0700F3E8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FA40),
		sGfx(LAYER_XLU_SURF, (void *)0x0700FEF0),
		sGfx(LAYER_OPA_DECAL, (void *)0x07010070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_3[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07013CA8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07013E80),
		sGfx(LAYER_XLU_SURF, (void *)0x07014300),
		sGfx(LAYER_XLU_SURF, (void *)0x07014B08),
		sGfx(LAYER_OPA_SURF, (void *)0x07014C00),
		sGfx(LAYER_XLU_SURF, (void *)0x07014E48),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0702, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_4[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070173A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07017C98),
		sGfx(LAYER_XLU_SURF, (void *)0x07018200),
		sGfx(LAYER_OPA_SURF, (void *)0x07019248),
		sGfx(LAYER_XLU_SURF, (void *)0x07019368),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_5[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A400),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_6[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E820),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701F1B0),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F690),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F818),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD58),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0701, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_7[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07020FD0),
		sCallback(0, s_wave_802D5D0C),
		sCallback(0, s_wave_802D5B98),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_8[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07021760),
		sGfx(LAYER_XLU_SURF, (void *)0x07021BA0),
		sGfx(LAYER_OPA_SURF, (void *)0x070228A0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_9[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070078B0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007B50),
		sGfx(LAYER_XLU_SURF, (void *)0x070080E8),
		sGfx(LAYER_OPA_SURF, (void *)0x070093F0),
		sGfx(LAYER_OPA_SURF, (void *)0x0700E448),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700EF00),
		sGfx(LAYER_XLU_SURF, (void *)0x0700F3E8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FA40),
		sGfx(LAYER_XLU_SURF, (void *)0x0700FEF0),
		sGfx(LAYER_OPA_DECAL, (void *)0x07010070),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_10[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070078B0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07007B50),
		sGfx(LAYER_XLU_SURF, (void *)0x070080E8),
		sGfx(LAYER_OPA_SURF, (void *)0x070093F0),
		sGfx(LAYER_OPA_SURF, (void *)0x070173A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07017C98),
		sGfx(LAYER_XLU_SURF, (void *)0x07018200),
		sGfx(LAYER_OPA_SURF, (void *)0x07019248),
		sGfx(LAYER_XLU_SURF, (void *)0x07019368),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_11[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700E448),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700EF00),
		sGfx(LAYER_XLU_SURF, (void *)0x0700F3E8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FA40),
		sGfx(LAYER_XLU_SURF, (void *)0x0700FEF0),
		sGfx(LAYER_OPA_DECAL, (void *)0x07010070),
		sGfx(LAYER_OPA_SURF, (void *)0x07013CA8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07013E80),
		sGfx(LAYER_XLU_SURF, (void *)0x07014300),
		sGfx(LAYER_XLU_SURF, (void *)0x07014B08),
		sGfx(LAYER_OPA_SURF, (void *)0x07014C00),
		sGfx(LAYER_XLU_SURF, (void *)0x07014E48),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0702, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_12[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700E448),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700EF00),
		sGfx(LAYER_XLU_SURF, (void *)0x0700F3E8),
		sGfx(LAYER_OPA_SURF, (void *)0x0700FA40),
		sGfx(LAYER_XLU_SURF, (void *)0x0700FEF0),
		sGfx(LAYER_OPA_DECAL, (void *)0x07010070),
		sGfx(LAYER_OPA_SURF, (void *)0x070173A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07017C98),
		sGfx(LAYER_XLU_SURF, (void *)0x07018200),
		sGfx(LAYER_OPA_SURF, (void *)0x07019248),
		sGfx(LAYER_XLU_SURF, (void *)0x07019368),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_13[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07013CA8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07013E80),
		sGfx(LAYER_XLU_SURF, (void *)0x07014300),
		sGfx(LAYER_XLU_SURF, (void *)0x07014B08),
		sGfx(LAYER_OPA_SURF, (void *)0x07014C00),
		sGfx(LAYER_XLU_SURF, (void *)0x07014E48),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A400),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0702, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_14[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07013CA8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07013E80),
		sGfx(LAYER_XLU_SURF, (void *)0x07014300),
		sGfx(LAYER_XLU_SURF, (void *)0x07014B08),
		sGfx(LAYER_OPA_SURF, (void *)0x07014C00),
		sGfx(LAYER_XLU_SURF, (void *)0x07014E48),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E820),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701F1B0),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F690),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F818),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD58),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0701, s_water_802D104C),
		sCallback(0x0702, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_15[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070173A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07017C98),
		sGfx(LAYER_XLU_SURF, (void *)0x07018200),
		sGfx(LAYER_OPA_SURF, (void *)0x07019248),
		sGfx(LAYER_XLU_SURF, (void *)0x07019368),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E820),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701F1B0),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F690),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F818),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD58),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0701, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_16[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E820),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701F1B0),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F690),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F818),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD58),
		sGfx(LAYER_OPA_SURF, (void *)0x07020FD0),
		sCallback(0, s_wave_802D5D0C),
		sCallback(0, s_wave_802D5B98),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0701, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_17[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0701E820),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701F1B0),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F690),
		sGfx(LAYER_XLU_SURF, (void *)0x0701F818),
		sGfx(LAYER_OPA_SURF, (void *)0x0701FD58),
		sGfx(LAYER_OPA_SURF, (void *)0x07021760),
		sGfx(LAYER_XLU_SURF, (void *)0x07021BA0),
		sGfx(LAYER_OPA_SURF, (void *)0x070228A0),
		sCallback(0, s_water_802D01E0),
		sCallback(0x0701, s_water_802D104C),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_hmc1_18[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070173A8),
		sGfx(LAYER_TEX_EDGE, (void *)0x07017C98),
		sGfx(LAYER_XLU_SURF, (void *)0x07018200),
		sGfx(LAYER_OPA_SURF, (void *)0x07019248),
		sGfx(LAYER_XLU_SURF, (void *)0x07019368),
		sGfx(LAYER_OPA_SURF, (void *)0x0701A080),
		sGfx(LAYER_TEX_EDGE, (void *)0x0701A400),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_hmc1[] =
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
					sSelect(18, s_objlib_8029DBD4),
					sStart(),
						sCall(s_hmc1_1),
						sCall(s_hmc1_2),
						sCall(s_hmc1_3),
						sCall(s_hmc1_4),
						sCall(s_hmc1_5),
						sCall(s_hmc1_6),
						sCall(s_hmc1_7),
						sCall(s_hmc1_8),
						sCall(s_hmc1_9),
						sCall(s_hmc1_10),
						sCall(s_hmc1_11),
						sCall(s_hmc1_12),
						sCall(s_hmc1_13),
						sCall(s_hmc1_14),
						sCall(s_hmc1_15),
						sCall(s_hmc1_16),
						sCall(s_hmc1_17),
						sCall(s_hmc1_18),
					sEnd(),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
