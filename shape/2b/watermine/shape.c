#ifndef SCRIPT

static Lights1 light_watermine[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_watermine_l[] =
{
#include "l.rgba16.h"
};

static u16 txt_watermine_r[] =
{
#include "r.rgba16.h"
};

static u16 txt_watermine_spike[] =
{
#include "spike.rgba16.h"
};

#include "mine.h"
#include "spike.h"

static Gfx gfx_watermine_mine_l[] =
{
	gsDPLoadImageBlock(txt_watermine_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "mine.l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_watermine_mine_r[] =
{
	gsDPLoadImageBlock(txt_watermine_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "mine.r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_watermine_mine[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_watermine_mine_l),
	gsSPDisplayList(gfx_watermine_mine_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Gfx gfx_watermine_spike_spike[] =
{
	gsDPLoadImageBlock(txt_watermine_spike, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_watermine[0]),
#include "spike.spike.h"
	gsSPEndDisplayList(),
};

Gfx gfx_watermine_spike[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_watermine_spike_spike),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_watermine_mine[];
extern Gfx gfx_watermine_spike[];

S_SCRIPT s_watermine[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_OPA_SURF, gfx_watermine_spike),
		sBillboard(0, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_watermine_mine),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
