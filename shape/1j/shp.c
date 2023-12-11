#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_1j_84[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x05000670, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 1, -12, 37),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05000528, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 1, -12, -37),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05000600, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, (void *)0x05000598, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

static S_SCRIPT s_1j_0C000098[] =
{
	sEmpty(),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, (void *)0x05007230, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x05006A18, 78, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 132, 0, 0),
					sStart(),
						sSelect(8, s_pl_demo_80257198),
						sStart(),
							sGfx(LAYER_OPA_SURF, (void *)0x05005CE0),
							sGfx(LAYER_OPA_SURF, (void *)0x05005D38),
							sGfx(LAYER_OPA_SURF, (void *)0x05005D90),
							sGfx(LAYER_OPA_SURF, (void *)0x05005DE8),
							sGfx(LAYER_OPA_SURF, (void *)0x05005E40),
							sGfx(LAYER_OPA_SURF, (void *)0x05005E98),
							sGfx(LAYER_OPA_SURF, (void *)0x05005EF0),
							sGfx(LAYER_OPA_SURF, (void *)0x05005F48),
						sEnd(),
						sJoint(LAYER_OPA_SURF, NULL, 38, -78, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05007B18, 0, 0, 0),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, (void *)0x050091A8, 132, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x05008F80, 132, 0, 0),
					sJoint(LAYER_OPA_SURF, NULL, 63, 0, 84),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05007EB8, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05008808, 104, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05009560, 87, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, (void *)0x050085C0, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 63, 0, -84),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05008288, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05008D58, 104, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x050099A0, 87, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, (void *)0x05008B10, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, (void *)0x050060E0, 78, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, -23, -1, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x0500A108, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_1j_0C000254[] =
{
	sEmpty(),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_XLU_SURF, (void *)0x05007288, 0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, (void *)0x05006A18, 78, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 132, 0, 0),
					sStart(),
						sSelect(8, s_pl_demo_80257198),
						sStart(),
							sGfx(LAYER_XLU_SURF, (void *)0x05005CE0),
							sGfx(LAYER_XLU_SURF, (void *)0x05005D38),
							sGfx(LAYER_XLU_SURF, (void *)0x05005D90),
							sGfx(LAYER_XLU_SURF, (void *)0x05005DE8),
							sGfx(LAYER_XLU_SURF, (void *)0x05005E40),
							sGfx(LAYER_XLU_SURF, (void *)0x05005E98),
							sGfx(LAYER_XLU_SURF, (void *)0x05005EF0),
							sGfx(LAYER_XLU_SURF, (void *)0x05005F48),
						sEnd(),
						sJoint(LAYER_XLU_SURF, NULL, 38, -78, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, (void *)0x05007B18, 0, 0, 0),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, (void *)0x050091A8, 132, 0, 0),
					sJoint(LAYER_XLU_SURF, (void *)0x05008F80, 132, 0, 0),
					sJoint(LAYER_XLU_SURF, NULL, 63, 0, 84),
					sStart(),
						sJoint(LAYER_XLU_SURF, (void *)0x05007EB8, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, (void *)0x05008808, 104, 0, 0),
							sStart(),
								sJoint(LAYER_XLU_SURF, (void *)0x05009560, 87, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_XLU_SURF, (void *)0x050085C0, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 63, 0, -84),
					sStart(),
						sJoint(LAYER_XLU_SURF, (void *)0x05008288, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, (void *)0x05008D58, 104, 0, 0),
							sStart(),
								sJoint(LAYER_XLU_SURF, (void *)0x050099A0, 87, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_XLU_SURF, (void *)0x05008B10, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_XLU_SURF, (void *)0x050060E0, 78, 0, 0),
				sJoint(LAYER_XLU_SURF, NULL, -23, -1, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, (void *)0x0500A188, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_1j_222[] =
{
	sShadow(100, 150, SHADOW_CIRCLE9),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(10, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sCall(s_1j_0C000098),
				sCall(s_1j_0C000254),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

UNUSED static long long _0C000460 = 0;

S_SCRIPT s_1j_85[] =
{
	sShadow(100, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x050226F0, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x050224F0, 100, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 222, 0, 0),
						sStart(),
							sSelect(2, s_objlib_8029DB48),
							sStart(),
								sGfx(LAYER_OPA_SURF, (void *)0x0501DA58),
								sGfx(LAYER_OPA_SURF, (void *)0x0501DA80),
							sEnd(),
						sEnd(),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 76, 49, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05021398, 0, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, NULL, 51, 55, 97),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05021760, 0, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x050216C0, 74, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, (void *)0x05021578, 69, 0, 0),
								sEnd(),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, NULL, 51, 55, -97),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x050219E8, 0, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05021948, 74, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, (void *)0x05021800, 69, 0, 0),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -1, 27, 95),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05021DC0, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05021C78, 100, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05021A88, 95, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -89, -62, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05021F20, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -1, 27, -95),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05022390, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x05022248, 100, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05022058, 95, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
