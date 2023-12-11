#ifndef SCRIPT

static Vtx vtx_droplet[] =
{
	{{{    -4,      0,      0}, 0, {     0,    960}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     4,      0,      0}, 0, {   960,    960}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     4,      8,      0}, 0, {   960,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    -4,      8,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Vtx vtx_droplet_red[] =
{
	{{{    -4,      0,      0}, 0, {     0,    960}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{     4,      0,      0}, 0, {   960,    960}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{     4,      8,      0}, 0, {   960,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{    -4,      8,      0}, 0, {     0,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
};

static u16 txt_droplet[] =
{
#include "droplet.rgba16.h"
};

static Gfx gfx_droplet_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_droplet, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_droplet_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPPipeSync(),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_droplet[] =
{
	gsSPDisplayList(gfx_droplet_start),
	gsSPVertex(vtx_droplet, 4, 0),
	gsSPBranchList(gfx_droplet_end),
};

Gfx gfx_droplet_red[] =
{
	gsSPDisplayList(gfx_droplet_start),
	gsSPVertex(vtx_droplet_red, 4, 0),
	gsSPBranchList(gfx_droplet_end),
};

#endif /* SCRIPT */
