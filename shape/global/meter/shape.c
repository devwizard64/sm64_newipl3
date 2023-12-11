#ifndef SCRIPT

UNUSED static long long align_meter = 0;

static u16 txt_meter_0_l[] =
{
#include "0_l.rgba16.h"
};

static u16 txt_meter_0_r[] =
{
#include "0_r.rgba16.h"
};

static u16 txt_meter_8[] =
{
#include "8.rgba16.h"
};

static u16 txt_meter_7[] =
{
#include "7.rgba16.h"
};

static u16 txt_meter_6[] =
{
#include "6.rgba16.h"
};

static u16 txt_meter_5[] =
{
#include "5.rgba16.h"
};

static u16 txt_meter_4[] =
{
#include "4.rgba16.h"
};

static u16 txt_meter_3[] =
{
#include "3.rgba16.h"
};

static u16 txt_meter_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_meter_1[] =
{
#include "1.rgba16.h"
};

u16 *txt_meter_n[] =
{
	txt_meter_1,
	txt_meter_2,
	txt_meter_3,
	txt_meter_4,
	txt_meter_5,
	txt_meter_6,
	txt_meter_7,
	txt_meter_8,
};

static Vtx vtx_meter_0[] =
{
	{{{   -32,    -32,      0}, 0, {     0,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,    -32,      0}, 0, {   992,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     32,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -32,     32,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,    -32,      0}, 0, {     1,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    32,    -32,      0}, 0, {  1024,   2016}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    32,     32,      0}, 0, {  1024,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     32,      0}, 0, {     1,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_meter_0[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetRenderMode(G_RM_TEX_EDGE, G_RM_TEX_EDGE2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_meter_0, 8, 0),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_meter_0_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPLoadImageBlock(txt_meter_0_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPEndDisplayList(),
};

static Vtx vtx_meter_n[] =
{
	{{{   -16,    -16,      0}, 0, {     0,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,    -16,      0}, 0, {   992,    992}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    15,     16,      0}, 0, {   992,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -16,     16,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_meter_n[] =
{
	gsDPPipeSync(),
	gsSPVertex(vtx_meter_n, 4, 0),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_meter_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

#endif /* SCRIPT */
