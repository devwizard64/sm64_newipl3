#ifndef SCRIPT

static Vtx vtx_bubble[] =
{
	{{{   -16,      0,      0}, 0, {     0,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    16,      0,      0}, 0, {   992,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    16,     32,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -16,     32,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_bubble_a[] =
{
#include "a.rgba16.h"
};

static u16 txt_bubble_b[] =
{
#include "b.rgba16.h"
};

Gfx gfx_bubble_a[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_bubble_a, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPVertex(vtx_bubble, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_bubble_b[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_bubble_b, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPVertex(vtx_bubble, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_bubble_a[];
extern Gfx gfx_bubble_b[];

S_SCRIPT s_bubble_a[] =
{
	sSelect(1, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_bubble_a),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bubble_b[] =
{
	sSelect(1, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_bubble_b),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
