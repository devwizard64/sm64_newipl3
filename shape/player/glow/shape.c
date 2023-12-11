#ifndef SCRIPT

static Vtx vtx_glow[] =
{
	{{{   -32,      0,      0}, 0, {     0,    992}, {0xFF, 0xFF, 0x64, 0xFF}}},
	{{{    32,      0,      0}, 0, {   992,    992}, {0xFF, 0xFF, 0x64, 0xFF}}},
	{{{    32,     64,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0x64, 0xFF}}},
	{{{   -32,     64,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x64, 0xFF}}},
};

static u16 txt_glow_0[] =
{
#include "0.ia16.h"
};

static u16 txt_glow_1[] =
{
#include "1.ia16.h"
};

static u16 txt_glow_2[] =
{
#include "2.ia16.h"
};

static u16 txt_glow_3[] =
{
#include "3.ia16.h"
};

static u16 txt_glow_4[] =
{
#include "4.ia16.h"
};

static Gfx gfx_glow[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPVertex(vtx_glow, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_glow_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_glow_0),
	gsSPBranchList(gfx_glow),
};

Gfx gfx_glow_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_glow_1),
	gsSPBranchList(gfx_glow),
};

Gfx gfx_glow_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_glow_2),
	gsSPBranchList(gfx_glow),
};

Gfx gfx_glow_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_glow_3),
	gsSPBranchList(gfx_glow),
};

Gfx gfx_glow_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_glow_4),
	gsSPBranchList(gfx_glow),
};

#else /* SCRIPT */

extern Gfx gfx_glow_0[];
extern Gfx gfx_glow_1[];
extern Gfx gfx_glow_2[];
extern Gfx gfx_glow_3[];
extern Gfx gfx_glow_4[];

S_SCRIPT s_glow[] =
{
	sSelect(9, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_glow_0),
		sGfx(LAYER_XLU_SURF, gfx_glow_1),
		sGfx(LAYER_XLU_SURF, gfx_glow_2),
		sGfx(LAYER_XLU_SURF, gfx_glow_3),
		sGfx(LAYER_XLU_SURF, gfx_glow_4),
		sGfx(LAYER_XLU_SURF, gfx_glow_3),
		sGfx(LAYER_XLU_SURF, gfx_glow_2),
		sGfx(LAYER_XLU_SURF, gfx_glow_1),
		sGfx(LAYER_XLU_SURF, gfx_glow_0),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
