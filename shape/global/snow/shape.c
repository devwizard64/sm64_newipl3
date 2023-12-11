#ifndef SCRIPT

static Vtx vtx_snow[] =
{
	{{{   -15,    -15,      0}, 0, {     0,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,    -15,      0}, 0, {   480,    480}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,     15,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -15,     15,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_snow[] =
{
#include "snow.rgba16.h"
};

Gfx gfx_snow[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPLoadTextureBlock(txt_snow, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_snow, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_snow[];

S_SCRIPT s_snowball[] =
{
	sShadow(50, 180, SHADOW_CIRCLE4),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_snow),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
