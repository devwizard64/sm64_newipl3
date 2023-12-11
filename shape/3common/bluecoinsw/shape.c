#ifndef SCRIPT

static Lights1 light_bluecoinsw[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

static u16 txt_bluecoinsw_side[] =
{
#include "side.rgba16.h"
};

static u16 txt_bluecoinsw_top[] =
{
#include "top.rgba16.h"
};

#include "bluecoinsw.h"

static Gfx gfx_bluecoinsw_side[] =
{
	gsDPLoadImageBlock(txt_bluecoinsw_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16),
	gsSPSetLights1N(light_bluecoinsw[0]),
#include "bluecoinsw.side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bluecoinsw_top[] =
{
	gsDPLoadImageBlock(txt_bluecoinsw_top, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "bluecoinsw.top.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bluecoinsw[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 4, 0, 0),
	gsSPDisplayList(gfx_bluecoinsw_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bluecoinsw_top),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_bluecoinsw[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_bluecoinsw[];
extern MAP map_bluecoinsw[];

S_SCRIPT s_bluecoinsw[] =
{
	sCull(300),
	sStart(),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_bluecoinsw),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
