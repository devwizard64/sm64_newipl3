#ifndef SCRIPT

static Vtx vtx_ripple[] =
{
	{{{   -64,      0,     64}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{    64,      0,     64}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{    64,      0,    -64}, 0, {   992,    992}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{   -64,      0,    -64}, 0, {     0,    992}, {0xFF, 0xFF, 0xFF, 0xC8}}},
};

static u16 txt_ripple_0[] =
{
#include "0.ia16.h"
};

static u16 txt_ripple_1[] =
{
#include "1.ia16.h"
};

static u16 txt_ripple_2[] =
{
#include "2.ia16.h"
};

static u16 txt_ripple_3[] =
{
#include "3.ia16.h"
};

static Gfx gfx_ripple_start[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_ripple_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPPipeSync(),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Gfx gfx_ripple[] =
{
	gsSPDisplayList(gfx_ripple_start),
	gsSPVertex(vtx_ripple, 4, 0),
	gsSPBranchList(gfx_ripple_end),
};

Gfx gfx_ripple_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_ripple_0),
	gsSPBranchList(gfx_ripple),
};

Gfx gfx_ripple_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_ripple_1),
	gsSPBranchList(gfx_ripple),
};

Gfx gfx_ripple_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_ripple_2),
	gsSPBranchList(gfx_ripple),
};

Gfx gfx_ripple_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_ripple_3),
	gsSPBranchList(gfx_ripple),
};

#else /* SCRIPT */

extern Gfx gfx_ripple_0[];
extern Gfx gfx_ripple_1[];
extern Gfx gfx_ripple_2[];
extern Gfx gfx_ripple_3[];

S_SCRIPT s_ripple_stop[] =
{
	sSelect(6, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_ripple_0),
		sGfx(LAYER_XLU_SURF, gfx_ripple_1),
		sGfx(LAYER_XLU_SURF, gfx_ripple_2),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
		sGfx(LAYER_XLU_SURF, gfx_ripple_2),
		sGfx(LAYER_XLU_SURF, gfx_ripple_1),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ripple_move[] =
{
	sSelect(8, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_ripple_0),
		sGfx(LAYER_XLU_SURF, gfx_ripple_1),
		sGfx(LAYER_XLU_SURF, gfx_ripple_2),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
		sGfx(LAYER_XLU_SURF, gfx_ripple_3),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
