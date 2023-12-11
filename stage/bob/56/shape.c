#ifndef SCRIPT

#include "56.h"

static Gfx gfx_bob_56_c16[] =
{
	gsDPLoadImageBlock(txt_c_16, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "56.c16.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bob_56[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bob_56_c16),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_bob_56[];

S_SCRIPT s_bob_56[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_bob_56),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
