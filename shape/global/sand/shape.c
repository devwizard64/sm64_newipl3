#ifndef SCRIPT

static Vtx vtx_sand[] =
{
	{{{    -8,     -8,      0}, 0, {     0,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,     -8,      0}, 0, {   480,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,      8,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    -8,      8,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_sand[] =
{
#include "sand.rgba16.h"
};

Gfx gfx_sand[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPLoadTextureBlock(txt_sand, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_sand, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#endif /* SCRIPT */
