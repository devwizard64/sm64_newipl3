#ifndef SCRIPT

static Lights1 light_shadestar[] =
{
	gdSPDefLight(0.1, 0x1E, 0x32, 0xE6),
};

#include "star.h"

static Gfx gfx_shadestar_shade[] =
{
	gsSPSetLights1N(light_shadestar[0]),
#include "star.star.h"
	gsSPEndDisplayList(),
};

Gfx gfx_shadestar[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0x78),
	gsSPDisplayList(gfx_shadestar_shade),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_shadestar[];

S_SCRIPT s_shadestar[] =
{
	sShadow(100, 155, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_XLU_SURF, gfx_shadestar),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
