#ifndef SCRIPT

static Lights1 light_purplesw[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_purplesw_side[] =
{
#include "side.rgba16.h"
};

static u16 txt_purplesw_top[] =
{
#include "top.rgba16.h"
};

#include "purplesw.h"

static Gfx gfx_purplesw_side[] =
{
	gsDPLoadImageBlock(txt_purplesw_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 4),
	gsSPSetLights1N(light_purplesw[0]),
#include "purplesw.side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_purplesw_top[] =
{
	gsDPLoadImageBlock(txt_purplesw_top, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32),
#include "purplesw.top.h"
	gsSPEndDisplayList(),
};

Gfx gfx_purplesw[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 4, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 2, 0, 0),
	gsSPDisplayList(gfx_purplesw_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 5, 0, 0),
	gsSPDisplayList(gfx_purplesw_top),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_purplesw[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_purplesw[];
extern MAP map_purplesw[];

S_SCRIPT s_purplesw[] =
{
	sCull(300),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_purplesw),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
