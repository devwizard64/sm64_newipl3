#ifndef SCRIPT

static Vtx vtx_leaf[] =
{
	{{{   -10,    -10,      0}, 0, {     0,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    10,    -10,      0}, 0, {   480,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    10,     10,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -10,     10,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_leaf[] =
{
#include "leaf.rgba16.h"
};

Gfx gfx_leaf[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_leaf, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPVertex(vtx_leaf, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_leaf[];

S_SCRIPT s_leaf[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_leaf),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
