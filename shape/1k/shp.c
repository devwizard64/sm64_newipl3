#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_1k_89[] =
{
	sEmpty(),
	sStart(),
		sSelect(2, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x05004E80),
			sGfx(LAYER_OPA_SURF, (void *)0x05005978),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1k_87[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sBillboard(0, 0, 0),
					sStart(),
						sGfx(LAYER_TEX_EDGE, (void *)0x0500C278),
					sEnd(),
				sEnd(),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 157, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, (void *)0x0500E678),
						sEnd(),
					sEnd(),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 143, 0, 0),
						sStart(),
							sBillboard(0, 0, 0),
							sStart(),
								sGfx(LAYER_TEX_EDGE, (void *)0x0500E1D8),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, NULL, 143, 0, 0),
					sEnd(),
					sJoint(LAYER_TEX_EDGE, (void *)0x0500E518, 157, 0, 0),
					sJoint(LAYER_TEX_EDGE, (void *)0x0500E430, 157, 0, 0),
					sJoint(LAYER_TEX_EDGE, (void *)0x0500E2F8, 157, 0, 0),
					sJoint(LAYER_OPA_SURF, NULL, -16, 23, 51),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x0500DDF8, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x0500DD70, 39, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x0500DC18, 41, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -16, 23, -49),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x0500E060, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, (void *)0x0500DFD8, 39, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x0500DE80, 41, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1k_84[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, (void *)0x050138B0, 0, 63, -62),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x05012910, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x05013160, 132, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sGfx(LAYER_TEX_EDGE, (void *)0x05013350),
							sGfx(LAYER_TEX_EDGE, (void *)0x05013378),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 18, 72),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x050136A0, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 18, -72),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x050134A8, 0, 0, 0),
						sCallback(0, s_objlib_8029D890),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1k_85[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, (void *)0x05015368, -18, -34, 10),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x05015330, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x050152F8, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x050152C0, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x05015288, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x05015250, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x05015218, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x050151E0, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, (void *)0x050151A8, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1k_86[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, (void *)0x05016A48, 0, 72, -7),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x05016738, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, NULL, -1, 55, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 77, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05016418, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, -48, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 88, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x050164E0, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -1, 55, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 77, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x050165A8, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, -48, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 88, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, (void *)0x05016670, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};
