#ifndef SCRIPT

static Vtx vtx_wave[] =
{
	{{{   -32,      0,     32}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{    32,      0,     32}, 0, {  1984,      0}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{    32,      0,    -32}, 0, {  1984,   1984}, {0xFF, 0xFF, 0xFF, 0xC8}}},
	{{{   -32,      0,    -32}, 0, {     0,   1984}, {0xFF, 0xFF, 0xFF, 0xC8}}},
};

static Vtx vtx_wave_red[] =
{
	{{{   -32,      0,     32}, 0, {     0,      0}, {0xFF, 0x00, 0x00, 0xC8}}},
	{{{    32,      0,     32}, 0, {  1984,      0}, {0xFF, 0x00, 0x00, 0xC8}}},
	{{{    32,      0,    -32}, 0, {  1984,   1984}, {0xFF, 0x00, 0x00, 0xC8}}},
	{{{   -32,      0,    -32}, 0, {     0,   1984}, {0xFF, 0x00, 0x00, 0xC8}}},
};

static u16 txt_wave_0[] =
{
#include "0.ia16.h"
};

static u16 txt_wave_1[] =
{
#include "1.ia16.h"
};

static u16 txt_wave_2[] =
{
#include "2.ia16.h"
};

static u16 txt_wave_3[] =
{
#include "3.ia16.h"
};

static u16 txt_wave_4[] =
{
#include "4.ia16.h"
};

static u16 txt_wave_5[] =
{
#include "5.ia16.h"
};

static Gfx gfx_wave_start[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_wave_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPPipeSync(),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Gfx gfx_wave[] =
{
	gsSPDisplayList(gfx_wave_start),
	gsSPVertex(vtx_wave, 4, 0),
	gsSPBranchList(gfx_wave_end),
};

static Gfx gfx_wave_red[] =
{
	gsSPDisplayList(gfx_wave_start),
	gsSPVertex(vtx_wave_red, 4, 0),
	gsSPBranchList(gfx_wave_end),
};

Gfx gfx_wave_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_0),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_1),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_2),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_3),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_4),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_5),
	gsSPBranchList(gfx_wave),
};

Gfx gfx_wave_red_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_0),
	gsSPBranchList(gfx_wave_red),
};

Gfx gfx_wave_red_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_1),
	gsSPBranchList(gfx_wave_red),
};

Gfx gfx_wave_red_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_2),
	gsSPBranchList(gfx_wave_red),
};

Gfx gfx_wave_red_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_3),
	gsSPBranchList(gfx_wave_red),
};

Gfx gfx_wave_red_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_4),
	gsSPBranchList(gfx_wave_red),
};

Gfx gfx_wave_red_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_wave_5),
	gsSPBranchList(gfx_wave_red),
};

#else /* SCRIPT */

extern Gfx gfx_wave_0[];
extern Gfx gfx_wave_1[];
extern Gfx gfx_wave_2[];
extern Gfx gfx_wave_3[];
extern Gfx gfx_wave_4[];
extern Gfx gfx_wave_5[];
extern Gfx gfx_wave_red_0[];
extern Gfx gfx_wave_red_1[];
extern Gfx gfx_wave_red_2[];
extern Gfx gfx_wave_red_3[];
extern Gfx gfx_wave_red_4[];
extern Gfx gfx_wave_red_5[];

S_SCRIPT s_wave[] =
{
	sSelect(6, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_wave_0),
		sGfx(LAYER_XLU_SURF, gfx_wave_1),
		sGfx(LAYER_XLU_SURF, gfx_wave_2),
		sGfx(LAYER_XLU_SURF, gfx_wave_3),
		sGfx(LAYER_XLU_SURF, gfx_wave_4),
		sGfx(LAYER_XLU_SURF, gfx_wave_5),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wave_red[] =
{
	sSelect(6, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_0),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_1),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_2),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_3),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_4),
		sGfx(LAYER_XLU_SURF, gfx_wave_red_5),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
