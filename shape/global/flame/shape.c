#ifndef SCRIPT

static Vtx vtx_flame[] =
{
	{{{   -25,    -25,      0}, 0, {     0,    992}, {0x00, 0x00, 0x00, 0x00}}},
	{{{    25,    -25,      0}, 0, {   992,    992}, {0x00, 0x00, 0x00, 0x00}}},
	{{{    25,     25,      0}, 0, {   992,      0}, {0x00, 0x00, 0x00, 0x00}}},
	{{{   -25,     25,      0}, 0, {     0,      0}, {0x00, 0x00, 0x00, 0x00}}},
};

static u16 txt_flame_0[] =
{
#include "0.ia16.h"
};

static u16 txt_flame_1[] =
{
#include "1.ia16.h"
};

static u16 txt_flame_2[] =
{
#include "2.ia16.h"
};

static u16 txt_flame_3[] =
{
#include "3.ia16.h"
};

static u16 txt_flame_4[] =
{
#include "4.ia16.h"
};

static u16 txt_flame_5[] =
{
#include "5.ia16.h"
};

static u16 txt_flame_6[] =
{
#include "6.ia16.h"
};

static u16 txt_flame_7[] =
{
#include "7.ia16.h"
};

static Gfx gfx_flame[] =
{
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0x32, 0x00, 0xC8),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_flame, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_flame_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_0),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_1),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_2),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_3),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_4),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_5),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_6),
	gsSPBranchList(gfx_flame),
};

Gfx gfx_flame_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_7),
	gsSPBranchList(gfx_flame),
};

static Gfx gfx_blueflame[] =
{
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0x64, 0x64, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_flame, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_blueflame_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_0),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_1),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_2),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_3),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_4),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_5),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_6),
	gsSPBranchList(gfx_blueflame),
};

Gfx gfx_blueflame_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_flame_7),
	gsSPBranchList(gfx_blueflame),
};

#else /* SCRIPT */

extern Gfx gfx_flame_0[];
extern Gfx gfx_flame_1[];
extern Gfx gfx_flame_2[];
extern Gfx gfx_flame_3[];
extern Gfx gfx_flame_4[];
extern Gfx gfx_flame_5[];
extern Gfx gfx_flame_6[];
extern Gfx gfx_flame_7[];
extern Gfx gfx_blueflame_0[];
extern Gfx gfx_blueflame_1[];
extern Gfx gfx_blueflame_2[];
extern Gfx gfx_blueflame_3[];
extern Gfx gfx_blueflame_4[];
extern Gfx gfx_blueflame_5[];
extern Gfx gfx_blueflame_6[];
extern Gfx gfx_blueflame_7[];
extern S_SCRIPT s_flame[];

S_SCRIPT s_flame_shadow[] =
{
	sShadow(20, 80, SHADOW_CIRCLE4),
	sStart(),
		sExecute(s_flame),
	sEnd(),
	sExit(),
};

S_SCRIPT s_flame[] =
{
	sEmpty(),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_XLU_SURF, gfx_flame_0),
			sGfx(LAYER_XLU_SURF, gfx_flame_1),
			sGfx(LAYER_XLU_SURF, gfx_flame_2),
			sGfx(LAYER_XLU_SURF, gfx_flame_3),
			sGfx(LAYER_XLU_SURF, gfx_flame_4),
			sGfx(LAYER_XLU_SURF, gfx_flame_5),
			sGfx(LAYER_XLU_SURF, gfx_flame_6),
			sGfx(LAYER_XLU_SURF, gfx_flame_7),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_blueflame[] =
{
	sEmpty(),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_0),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_1),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_2),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_3),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_4),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_5),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_6),
			sGfx(LAYER_XLU_SURF, gfx_blueflame_7),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
