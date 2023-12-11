#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_1i_88[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x05001F98, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x05001B20, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x05002140, 0, 0, 0),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, (void *)0x05001D68, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x05001978, 0, 0, 0),
					sJoint(LAYER_OPA_SURF, (void *)0x050022E0, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_89[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x05002FB0),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_86[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x05005190, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, -7, -9, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05005680, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 156, -9, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05005408, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -3, 17, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05004EE8, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_85[] =
{
	sShadow(80, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x05006A68),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_87[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, (void *)0x050098E8, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, -141, -546, 218),
					sStart(),
						sJoint(LAYER_OPA_SURF, (void *)0x05008CB0, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_84[] =
{
	sShadow(70, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.4),
		sStart(),
			sCallback(0, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, (void *)0x0500C1B0),
				sGfx(LAYER_XLU_SURF, (void *)0x0500C1B0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1i_90[] =
{
	sCull(300),
	sStart(),
		sShadow(100, 150, SHADOW_CIRCLE9),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x0500F7D8),
			sGfx(LAYER_OPA_SURF, (void *)0x0500FC28),
			sGfx(LAYER_TEX_EDGE, (void *)0x05010100),
		sEnd(),
	sEnd(),
	sExit(),
};
