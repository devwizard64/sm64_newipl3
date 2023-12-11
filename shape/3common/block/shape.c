#ifndef SCRIPT

static Lights1 light_block[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_block_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_block_1[] =
{
#include "1.rgba16.h"
};

#include "block.h"

static Gfx gfx_block_end[] =
{
	gsSPSetLights1N(light_block[0]),
#include "block.block.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Gfx gfx_block_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_block_0[] =
{
	gsSPDisplayList(gfx_block_start),
	gsDPLoadImageBlock(txt_block_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPBranchList(gfx_block_end),
};

Gfx gfx_block_1[] =
{
	gsSPDisplayList(gfx_block_start),
	gsDPLoadImageBlock(txt_block_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPBranchList(gfx_block_end),
};

MAP map_block[] =
{
#include "map.h"
	MAP_END,
};

UNUSED static long long align_block = 0;

#else /* SCRIPT */

extern Gfx gfx_block_0[];
extern Gfx gfx_block_1[];
extern MAP map_block[];

S_SCRIPT s_block[] =
{
	sCull(500),
	sStart(),
		sShadow(240, 180, SHADOW_SQUAREFIX),
		sStart(),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_block_0),
				sGfx(LAYER_OPA_SURF, gfx_block_1),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_crate[] =
{
	sCull(500),
	sStart(),
		sSelect(2, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_block_0),
			sGfx(LAYER_OPA_SURF, gfx_block_1),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
