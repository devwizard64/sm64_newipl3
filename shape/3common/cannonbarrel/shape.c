#ifndef SCRIPT

static Lights1 light_cannonbarrel[] =
{
	gdSPDefLight(0.3, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.3, 0x00, 0x00, 0x32),
};

static u16 txt_cannonbarrel_rim[] =
{
#include "rim.rgba16.h"
};

#include "cannonbarrel.h"

static Gfx gfx_cannonbarrel_rim[] =
{
	gsDPLoadImageBlock(txt_cannonbarrel_rim, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cannonbarrel[0]),
#include "cannonbarrel.rim.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cannonbarrel_shade[] =
{
	gsSPSetLights1N(light_cannonbarrel[1]),
#include "cannonbarrel.shade.h"
	gsSPEndDisplayList(),
};

Gfx gfx_cannonbarrel[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_cannonbarrel_rim),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_cannonbarrel_shade),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_cannonbarrel[];

S_SCRIPT s_cannonbarrel[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_cannonbarrel),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
