#include <sm64/shplang.h>

#define SCRIPT

S_SCRIPT s_1h_0C000000[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x050016B8),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1h_0C000018[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x05001800),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1h_0C000030[] =
{
	sCull(500),
	sStart(),
		sGfx(LAYER_OPA_SURF, (void *)0x05001900),
	sEnd(),
	sExit(),
};

S_SCRIPT s_1h_85[] =
{
	sCull(600),
	sStart(),
		sGfx(LAYER_XLU_DECAL, (void *)0x05002E00),
		sSelect(4, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_OPA_SURF, (void *)0x05003350),
			sGfx(LAYER_OPA_SURF, (void *)0x05003370),
			sGfx(LAYER_OPA_SURF, (void *)0x05003390),
			sGfx(LAYER_OPA_SURF, (void *)0x050033B0),
		sEnd(),
	sEnd(),
	sExit(),
};
