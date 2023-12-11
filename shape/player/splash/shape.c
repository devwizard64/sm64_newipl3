#ifndef SCRIPT

static Vtx vtx_splash[] =
{
	{{{   -64,      0,      0}, 0, {     0,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    64,      0,      0}, 0, {   992,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    64,    256,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -64,    256,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static u16 txt_splash_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_splash_1[] =
{
#include "1.rgba16.h"
};

static u16 txt_splash_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_splash_3[] =
{
#include "3.rgba16.h"
};

static u16 txt_splash_4[] =
{
#include "4.rgba16.h"
};

static u16 txt_splash_5[] =
{
#include "5.rgba16.h"
};

static u16 txt_splash_6[] =
{
#include "6.rgba16.h"
};

static u16 txt_splash_7[] =
{
#include "7.rgba16.h"
};

static Gfx gfx_splash[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPVertex(vtx_splash, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_splash_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_0),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_1),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_2),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_3),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_4),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_5),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_6),
	gsSPBranchList(gfx_splash),
};

Gfx gfx_splash_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_splash_7),
	gsSPBranchList(gfx_splash),
};

#else /* SCRIPT */

extern Gfx gfx_splash_0[];
extern Gfx gfx_splash_1[];
extern Gfx gfx_splash_2[];
extern Gfx gfx_splash_3[];
extern Gfx gfx_splash_4[];
extern Gfx gfx_splash_5[];
extern Gfx gfx_splash_6[];
extern Gfx gfx_splash_7[];

S_SCRIPT s_splash[] =
{
	sSelect(8, s_objlib_8029DB48),
	sStart(),
		sGfx(LAYER_TEX_EDGE, gfx_splash_0),
		sGfx(LAYER_TEX_EDGE, gfx_splash_1),
		sGfx(LAYER_TEX_EDGE, gfx_splash_2),
		sGfx(LAYER_TEX_EDGE, gfx_splash_3),
		sGfx(LAYER_TEX_EDGE, gfx_splash_4),
		sGfx(LAYER_TEX_EDGE, gfx_splash_5),
		sGfx(LAYER_TEX_EDGE, gfx_splash_6),
		sGfx(LAYER_TEX_EDGE, gfx_splash_7),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
