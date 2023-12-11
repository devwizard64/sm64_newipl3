#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_ccm_54[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x07010F28),
		sGfx(LAYER_OPA_SURF, (void *)0x070118B0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_210[] =
{
	sShadow(400, 200, SHADOW_CIRCLE4),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x07012BD8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_55[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x070136D0),
		sGfx(LAYER_TEX_EDGE, (void *)0x07013870),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_3[] =
{
	sCull(800),
	sStart(),
		sLOD(-1000, 4000),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x0700E708),
			sGfx(LAYER_TEX_EDGE, (void *)0x0700E970),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_4[] =
{
	sCull(900),
	sStart(),
		sLOD(-1000, 7000),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x0700F440),
			sGfx(LAYER_TEX_EDGE, (void *)0x0700F650),
			sGfx(LAYER_XLU_SURF, (void *)0x0700F780),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_5[] =
{
	sCull(400),
	sStart(),
		sLOD(-500, 7000),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x0700FB00),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_6[] =
{
	sCull(800),
	sStart(),
		sLOD(-1000, 7000),
		sStart(),
			sGfx(LAYER_XLU_SURF, (void *)0x0700FD08),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm_7[] =
{
	sCull(3500),
	sStart(),
		sLOD(-3000, 6000),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x07010660),
			sGfx(LAYER_TEX_EDGE, (void *)0x070109D0),
			sGfx(LAYER_XLU_SURF, (void *)0x07010B50),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ccm1[] =
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
			sPerspective(45, 100, 12800, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, 0, 0, 0, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x0700B090),
					sGfx(LAYER_OPA_SURF, (void *)0x0700B1D8),
					sGfx(LAYER_OPA_SURF, (void *)0x0700C380),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700D578),
					sGfx(LAYER_XLU_DECAL, (void *)0x0700DDF0),
					sCallback(0, s_water_802D01E0),
					sCallback(0x0501, s_water_802D104C),
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

S_SCRIPT s_ccm2[] =
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
					sGfx(LAYER_OPA_SURF, (void *)0x0701CE30),
					sGfx(LAYER_OPA_SURF, (void *)0x0701E558),
					sGfx(LAYER_OPA_DECAL, (void *)0x0701E6B0),
					sGfx(LAYER_TEX_EDGE, (void *)0x0701FC78),
					sGfx(LAYER_TEX_EDGE, (void *)0x0701FD78),
					sGfx(LAYER_XLU_SURF, (void *)0x0701FE60),
					sGfx(LAYER_XLU_SURF, (void *)0x070207F0),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
