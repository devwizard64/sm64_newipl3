#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_1c_86[] =
{
	sShadow(300, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, (void *)0x0500B188),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, -243, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 488, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 110, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, (void *)0x0500AD08, 0, 0, 0),
								sEnd(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sBillboard(0, 0, 0),
									sStart(),
										sGfx(LAYER_TEX_EDGE, (void *)0x0500A5D8),
									sEnd(),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_TEX_EDGE, (void *)0x0500B2D0, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x0500B418, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x0500B6C0, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, NULL, 0, 243, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 488, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 110, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, (void *)0x0500B068, 0, 0, 0),
								sEnd(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sBillboard(0, 0, 0),
									sStart(),
										sGfx(LAYER_TEX_EDGE, (void *)0x0500A890),
									sEnd(),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, -1, 36),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 548, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sBillboard(0, 0, 0),
									sStart(),
										sGfx(LAYER_TEX_EDGE, (void *)0x0500A4F0),
									sEnd(),
								sEnd(),
								sJoint(LAYER_OPA_SURF, NULL, 189, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
									sStart(),
										sBillboard(0, 0, 0),
										sStart(),
											sGfx(LAYER_TEX_EDGE, (void *)0x0500A6C0),
										sEnd(),
									sEnd(),
									sCallback(0, s_object_a_802A719C),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 1, 36),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 548, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sBillboard(0, 0, 0),
									sStart(),
										sGfx(LAYER_TEX_EDGE, (void *)0x0500A7A8),
									sEnd(),
								sEnd(),
								sJoint(LAYER_OPA_SURF, NULL, 189, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
									sStart(),
										sBillboard(0, 0, 0),
										sStart(),
											sGfx(LAYER_TEX_EDGE, (void *)0x0500A978),
										sEnd(),
									sEnd(),
								sEnd(),
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

S_SCRIPT s_1c_84[] =
{
	sCull(150),
	sStart(),
		sStart(),
			sGfx(LAYER_XLU_SURF, (void *)0x05011000),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1c_85[] =
{
	sCull(150),
	sStart(),
		sShadow(160, 100, SHADOW_CIRCLE4),
	sEnd(),
	sExit(),
};
