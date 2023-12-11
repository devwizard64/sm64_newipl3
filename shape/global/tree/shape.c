#ifndef SCRIPT

static Lights1 light_tree[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_tree_a_l[] =
{
#include "a_l.rgba16.h"
};

static u16 txt_tree_a_r[] =
{
#include "a_r.rgba16.h"
};

#include "a.h"

static Gfx gfx_tree_a_l[] =
{
	gsDPLoadImageBlock(txt_tree_a_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "a.a_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_tree_a_r[] =
{
	gsDPLoadImageBlock(txt_tree_a_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "a.a_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_tree_a[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_tree_a_l),
	gsSPDisplayList(gfx_tree_a_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static u16 txt_tree_b[] =
{
#include "b.rgba16.h"
};

#include "b.h"

Gfx gfx_tree_b[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_tree_b, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_tree[0]),
#include "b.b.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static u16 txt_tree_c[] =
{
#include "c.rgba16.h"
};

#include "c.h"

Gfx gfx_tree_c[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_tree_c, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_tree[0]),
#include "c.c.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "d.h"

Gfx gfx_tree_d[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_tree_b, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_tree[0]),
#include "d.b.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static u16 txt_tree_e[] =
{
#include "e.rgba16.h"
};

#include "e.h"

Gfx gfx_tree_e[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_tree_e, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_tree[0]),
#include "e.e.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_tree_a[];
extern Gfx gfx_tree_b[];
extern Gfx gfx_tree_c[];
extern Gfx gfx_tree_d[];
extern Gfx gfx_tree_e[];

S_SCRIPT s_tree_a[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_tree_a),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tree_b[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_tree_b),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tree_c[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_tree_c),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tree_d[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_tree_d),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tree_e[] =
{
	sCull(800),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_tree_e),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
