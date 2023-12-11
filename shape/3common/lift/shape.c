#ifndef SCRIPT

static Lights1 light_lift[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_lift_side[] =
{
#include "side.rgba16.h"
};

static u16 txt_lift_face[] =
{
#include "face.rgba16.h"
};

#include "lift.h"

static Gfx gfx_lift_side[] =
{
	gsDPLoadImageBlock(txt_lift_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16),
	gsSPSetLights1N(light_lift[0]),
#include "lift.side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_lift_face[] =
{
	gsDPLoadImageBlock(txt_lift_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "lift.face.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lift[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 16, 0, G_TX_WRAP, G_TX_WRAP, 5, 4, 0, 0),
	gsSPDisplayList(gfx_lift_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_lift_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_lift[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_lift[];
extern MAP map_lift[];

S_SCRIPT s_lift[] =
{
	sCull(400),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_lift),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
