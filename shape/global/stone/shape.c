#ifndef SCRIPT

static Vtx vtx_stone[] =
{
	{{{   -15,    -15,      0}, 0, {     0,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,    -15,      0}, 0, {   992,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,     15,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -15,     15,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_stone[] =
{
#include "stone.rgba16.h"
};

Gfx gfx_stone[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPLoadTextureBlock(txt_stone, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_stone, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#endif /* SCRIPT */
