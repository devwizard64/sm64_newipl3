#ifndef SCRIPT

static Lights1 light_pushblock[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

static u16 txt_pushblock[] =
{
#include "pushblock.rgba16.h"
};

#include "pushblock.h"

static Gfx gfx_pushblock_pushblock[] =
{
	gsDPLoadImageBlock(txt_pushblock, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_pushblock[0]),
#include "pushblock.pushblock.h"
	gsSPEndDisplayList(),
};

Gfx gfx_pushblock[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_pushblock_pushblock),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_pushblock[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_pushblock[];
extern MAP map_pushblock[];

S_SCRIPT s_pushblock[] =
{
	sCull(500),
	sStart(),
		sShadow(70, 180, SHADOW_SQUAREFIX),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_pushblock),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
