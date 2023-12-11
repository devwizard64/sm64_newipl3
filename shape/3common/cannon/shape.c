#ifndef SCRIPT

static Lights1 light_cannon[] =
{
	gdSPDefLight(0.3, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.3, 0x30, 0x37, 0xFF),
};

static u16 txt_cannon_side[] =
{
#include "side.rgba16.h"
};

#include "cannon.h"

static Gfx gfx_cannon_side[] =
{
	gsDPLoadImageBlock(txt_cannon_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cannon[0]),
#include "cannon.side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cannon_shade[] =
{
	gsSPSetLights1N(light_cannon[1]),
#include "cannon.shade.h"
	gsSPEndDisplayList(),
};

Gfx gfx_cannon[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_cannon_side),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_cannon_shade),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_cannon[];

S_SCRIPT s_cannon[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_cannon),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
