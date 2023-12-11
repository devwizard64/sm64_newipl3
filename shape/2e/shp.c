#include <sm64/shplang.h>

#define SCRIPT

static S_SCRIPT s_2e_0D000000[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, (void *)0x06005750, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, -120),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x06005980, 0, 0, 0),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 120),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x060059F0, 0, 0, 0),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, (void *)0x06005688, 0, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_2e_0D000078[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, (void *)0x06005750, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, -120),
			sStart(),
				sJoint(LAYER_XLU_SURF, (void *)0x06005980, 0, 0, 0),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 120),
			sStart(),
				sJoint(LAYER_XLU_SURF, (void *)0x060059F0, 0, 0, 0),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, (void *)0x06005688, 0, 0, 0),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_2e_102[] =
{
	sShadow(100, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(0, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sCall(s_2e_0D000000),
				sCall(s_2e_0D000078),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

UNUSED static long long _0D000140 = 0;
