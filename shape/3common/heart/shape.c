#ifndef SCRIPT

#include "heart.h"

static u16 txt_heart[] =
{
#include "heart.rgba16.h"
};

Gfx gfx_heart[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsDPLoadTextureBlock(txt_heart, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
#include "heart.heart.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_heart[];

S_SCRIPT s_heart[] =
{
	sShadow(100, 100, SHADOW_CIRCLE4),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_heart),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
