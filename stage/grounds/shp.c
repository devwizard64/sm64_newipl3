#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_grounds_55[] =
{
	sCull(1000),
	sStart(),
		sScale(0.375),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x0700C768, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x0700C728, 459, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x0700C6E8, 460, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x0700C6A8, 345, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x0700C670, 287, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_grounds_3[] =
{
	sCull(2100),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x0700A290),
	sEnd(),
	sExit(),
};

S_SCRIPT s_grounds_54[] =
{
	sCull(15000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, 0x0700BB80),
	sEnd(),
	sExit(),
};

S_SCRIPT s_grounds_56[] =
{
	sCull(15000),
	sStart(),
		sGfx(LAYER_TEX_EDGE, (void *)0x0700BC68),
	sEnd(),
	sExit(),
};

S_SCRIPT s_grounds1[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_A, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 20000, s_stage_perspective),
			sStart(),
				sCamera(16, 0, 1500, 2500, 0, 1500, -12000, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, (void *)0x07006D70),
					sGfx(LAYER_OPA_SURF, (void *)0x070095F0),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700A860),
					sGfx(LAYER_XLU_DECAL, (void *)0x0700B1D0),
					sGfx(LAYER_TEX_EDGE, (void *)0x0700BA20),
					sGfx(LAYER_OPA_DECAL, (void *)0x0700C430),
					sGfx(LAYER_OPA_SURF, (void *)0x0700C210),
					sCallback(0, s_water_802D01E0),
					sCallback(0x1601, s_water_802D1B70),
					sCallback(0x1601, s_water_802D104C),
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
