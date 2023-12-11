#ifndef SCRIPT

static Vtx vtx_whitepuff[] =
{
	{{{   -25,    -25,      0}, 0, {     0,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    25,    -25,      0}, 0, {   992,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    25,     25,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -25,     25,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Vtx vtx_blackpuff[] =
{
	{{{   -25,    -25,      0}, 0, {     0,    992}, {0x22, 0x1A, 0x1C, 0xFF}}},
	{{{    25,    -25,      0}, 0, {   992,    992}, {0x22, 0x1A, 0x1C, 0xFF}}},
	{{{    25,     25,      0}, 0, {   992,      0}, {0x22, 0x1A, 0x1C, 0xFF}}},
	{{{   -25,     25,      0}, 0, {     0,      0}, {0x22, 0x1A, 0x1C, 0xFF}}},
};

static u16 txt_puff[] =
{
#include "puff.ia16.h"
};

Gfx gfx_whitepuff[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENVA, G_CC_MODULATERGBA_ENVA),
	gsDPLoadTextureBlock(txt_puff, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_whitepuff, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_blackpuff[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENVA, G_CC_MODULATERGBA_ENVA),
	gsDPLoadTextureBlock(txt_puff, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_blackpuff, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_whitepuff[];
extern Gfx gfx_blackpuff[];

S_SCRIPT s_whitepuff[] =
{
	sEmpty(),
	sStart(),
		sCallback(0, s_objlib_8029D924),
		sGfx(LAYER_XLU_SURF, gfx_whitepuff),
	sEnd(),
	sExit(),
};

S_SCRIPT s_blackpuff[] =
{
	sEmpty(),
	sStart(),
		sCallback(0, s_objlib_8029D924),
		sGfx(LAYER_XLU_SURF, gfx_blackpuff),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
