#ifndef SCRIPT

static Lights1 light_pipe_side[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

#include "side.h"

static u16 txt_pipe_side[] =
{
#include "side.rgba16.h"
};

static Gfx gfx_pipe_side_side[] =
{
	gsDPLoadImageBlock(txt_pipe_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_pipe_side[0]),
#include "side.side.h"
	gsSPEndDisplayList(),
};

Gfx gfx_pipe_side[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_pipe_side_side),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_pipe_end[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
};

#include "end.h"

static u16 txt_pipe_top[] =
{
#include "top.rgba16.h"
};

static Gfx gfx_pipe_end_top[] =
{
	gsDPLoadImageBlock(txt_pipe_top, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_pipe_end[0]),
#include "end.top.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_pipe_end_bottom[] =
{
	gsSPSetLights1N(light_pipe_end[1]),
#include "end.bottom.h"
	gsSPEndDisplayList(),
};

Gfx gfx_pipe_end[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_pipe_end_top),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_pipe_end_bottom),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_pipe[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_pipe_side[];
extern Gfx gfx_pipe_end[];

S_SCRIPT s_pipe[] =
{
	sCull(350),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_pipe_side),
		sGfx(LAYER_OPA_SURF, gfx_pipe_end),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
