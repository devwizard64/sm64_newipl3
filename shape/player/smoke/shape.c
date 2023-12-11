#ifndef SCRIPT

static Vtx vtx_smoke[] =
{
	{{{   -50,    -50,      0}, 0, {     0,    992}, {0x14, 0x0A, 0x0A, 0xFF}}},
	{{{    50,    -50,      0}, 0, {   992,    992}, {0x14, 0x0A, 0x0A, 0xFF}}},
	{{{    50,     50,      0}, 0, {   992,      0}, {0x14, 0x0A, 0x0A, 0xFF}}},
	{{{   -50,     50,      0}, 0, {     0,      0}, {0x14, 0x0A, 0x0A, 0xFF}}},
};

static u16 txt_smoke[] =
{
#include "smoke.ia16.h"
};

static Gfx gfx_smoke_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

static Gfx gfx_smoke_smoke[] =
{
	gsSPVertex(vtx_smoke, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_smoke_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_smoke[] =
{
	gsSPDisplayList(gfx_smoke_start),
	gsDPLoadTextureBlock(txt_smoke, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_smoke_smoke),
	gsSPDisplayList(gfx_smoke_end),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_smoke[];

S_SCRIPT s_smoke[] =
{
	sEmpty(),
	sStart(),
		sGfx(LAYER_XLU_SURF, gfx_smoke),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
