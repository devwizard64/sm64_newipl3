#ifndef SCRIPT

static Lights1 light_bob_55[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

#include "55.h"

static Gfx gfx_bob_55_c12[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_bob_55[0]),
#include "55.c12.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bob_55[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_bob_55_c12),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_bob_55[];

S_SCRIPT s_bob_55[] =
{
	sCull(1200),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_bob_55),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
