#ifndef SCRIPT

static Vtx vtx_1up[] =
{
	{{{    31,     31,      0}, 0, {   990,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -30,     31,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -30,    -30,      0}, 0, {     0,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    31,    -30,      0}, 0, {   990,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_1up[] =
{
#include "1up.rgba16.h"
};

static Gfx gfx_1up_1up[] =
{
	gsDPLoadImageBlock(txt_1up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPVertex(vtx_1up, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_1up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_1up_1up),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_1up[];

S_SCRIPT s_1up[] =
{
	sShadow(80, 180, SHADOW_CIRCLE4),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_1up),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
