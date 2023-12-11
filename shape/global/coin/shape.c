#ifndef SCRIPT

static Vtx vtx_coin[] =
{
	{{{   -32,      0,      0}, 0, {     0,   1984}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    32,      0,      0}, 0, {  1984,   1984}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    32,     64,      0}, 0, {  1984,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{   -32,     64,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
};

static Vtx vtx_bluecoin[] =
{
	{{{   -50,      0,      0}, 0, {     0,   1984}, {0x78, 0x78, 0xFF, 0xFF}}},
	{{{    50,      0,      0}, 0, {  1984,   1984}, {0x78, 0x78, 0xFF, 0xFF}}},
	{{{    50,    100,      0}, 0, {  1984,      0}, {0x78, 0x78, 0xFF, 0xFF}}},
	{{{   -50,    100,      0}, 0, {     0,      0}, {0x78, 0x78, 0xFF, 0xFF}}},
};

static Vtx vtx_redcoin[] =
{
	{{{   -35,      0,      0}, 0, {     0,   1984}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{    35,      0,      0}, 0, {  1984,   1984}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{    35,     70,      0}, 0, {  1984,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{   -35,     70,      0}, 0, {     0,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
};

static u16 txt_coin_0[] =
{
#include "0.ia16.h"
};

static u16 txt_coin_1[] =
{
#include "1.ia16.h"
};

static u16 txt_coin_2[] =
{
#include "2.ia16.h"
};

static u16 txt_coin_3[] =
{
#include "3.ia16.h"
};

static Gfx gfx_coin_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_coin_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_coin_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_0),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_coin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_coin_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_1),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_coin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_coin_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_2),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_coin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_coin_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_3),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_coin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_bluecoin_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_0),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_bluecoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_bluecoin_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_1),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_bluecoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_bluecoin_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_2),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_bluecoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_bluecoin_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_3),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_bluecoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_redcoin_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_0),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_redcoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_redcoin_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_1),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_redcoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_redcoin_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_2),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_redcoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

Gfx gfx_redcoin_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_IA, G_IM_SIZ_16b, 1, txt_coin_3),
	gsSPDisplayList(gfx_coin_start),
	gsSPVertex(vtx_redcoin, 4, 0),
	gsSPBranchList(gfx_coin_end),
};

#else /* SCRIPT */

extern Gfx gfx_coin_0[];
extern Gfx gfx_coin_1[];
extern Gfx gfx_coin_2[];
extern Gfx gfx_coin_3[];
extern Gfx gfx_bluecoin_0[];
extern Gfx gfx_bluecoin_1[];
extern Gfx gfx_bluecoin_2[];
extern Gfx gfx_bluecoin_3[];
extern Gfx gfx_redcoin_0[];
extern Gfx gfx_redcoin_1[];
extern Gfx gfx_redcoin_2[];
extern Gfx gfx_redcoin_3[];

S_SCRIPT s_coin[] =
{
	sShadow(50, 180, SHADOW_CIRCLE4),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_coin_0),
			sGfx(LAYER_TEX_EDGE, gfx_coin_0),
			sGfx(LAYER_TEX_EDGE, gfx_coin_1),
			sGfx(LAYER_TEX_EDGE, gfx_coin_1),
			sGfx(LAYER_TEX_EDGE, gfx_coin_2),
			sGfx(LAYER_TEX_EDGE, gfx_coin_2),
			sGfx(LAYER_TEX_EDGE, gfx_coin_3),
			sGfx(LAYER_TEX_EDGE, gfx_coin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_coin_noshadow[] =
{
	sEmpty(),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_coin_0),
			sGfx(LAYER_TEX_EDGE, gfx_coin_0),
			sGfx(LAYER_TEX_EDGE, gfx_coin_1),
			sGfx(LAYER_TEX_EDGE, gfx_coin_1),
			sGfx(LAYER_TEX_EDGE, gfx_coin_2),
			sGfx(LAYER_TEX_EDGE, gfx_coin_2),
			sGfx(LAYER_TEX_EDGE, gfx_coin_3),
			sGfx(LAYER_TEX_EDGE, gfx_coin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bluecoin[] =
{
	sShadow(80, 180, SHADOW_CIRCLE4),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_3),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bluecoin_noshadow[] =
{
	sEmpty(),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_3),
			sGfx(LAYER_TEX_EDGE, gfx_bluecoin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_redcoin[] =
{
	sShadow(80, 180, SHADOW_CIRCLE4),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_3),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_redcoin_noshadow[] =
{
	sEmpty(),
	sStart(),
		sSelect(8, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_0),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_1),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_2),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_3),
			sGfx(LAYER_TEX_EDGE, gfx_redcoin_3),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
