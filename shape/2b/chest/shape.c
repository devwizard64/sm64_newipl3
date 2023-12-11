#ifndef SCRIPT

static Lights1 light_chest[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_chest_keyhole[] =
{
#include "keyhole.rgba16.h"
};

static u16 txt_chest_inside[] =
{
#include "inside.rgba16.h"
};

static u16 txt_chest_latch[] =
{
#include "latch.rgba16.h"
};

static u16 txt_chest_outside[] =
{
#include "outside.rgba16.h"
};

#include "box.h"

static Gfx gfx_chest_box_keyhole[] =
{
	gsDPLoadImageBlock(txt_chest_keyhole, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_chest[0]),
#include "box.keyhole.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest_box_latch[] =
{
	gsDPLoadImageBlock(txt_chest_latch, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "box.latch.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest_box_inside[] =
{
	gsDPLoadImageBlock(txt_chest_inside, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "box.inside.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest_box_outside[] =
{
	gsDPLoadImageBlock(txt_chest_outside, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "box.outside.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chest_box[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chest_box_keyhole),
	gsSPDisplayList(gfx_chest_box_latch),
	gsSPDisplayList(gfx_chest_box_inside),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_chest_box_outside),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "lid.h"

static Gfx gfx_chest_lid_inside[] =
{
	gsDPLoadImageBlock(txt_chest_inside, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_chest[0]),
#include "lid.inside.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest_lid_latch[] =
{
	gsDPLoadImageBlock(txt_chest_latch, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "lid.latch.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chest_lid_outside[] =
{
	gsDPLoadImageBlock(txt_chest_outside, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "lid.outside.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chest_lid[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chest_lid_inside),
	gsSPDisplayList(gfx_chest_lid_latch),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_chest_lid_outside),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_chest_box[];
extern Gfx gfx_chest_lid[];

S_SCRIPT s_chest[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_chest_box),
	sEnd(),
	sExit(),
};

S_SCRIPT s_chestlid[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_chest_lid),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
