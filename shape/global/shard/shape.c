#ifndef SCRIPT

static Lights1 light_shard[] =
{
	gdSPDefLight(0.25, 0xFF, 0x64, 0x64),
	gdSPDefLight(0.25, 0x64, 0xFF, 0x64),
	gdSPDefLight(0.25, 0x64, 0x64, 0xFF),
	gdSPDefLight(0.25, 0xFF, 0xFF, 0x64),
};

static Vtx vtx_shard_cork[] =
{
	{{{  -101,    -60,      0}, 0, {  -130,    467}, {   0,    0,  127, 0xFF}}},
	{{{   102,    -60,      0}, 0, {   599,    467}, {   0,    0,  127, 0xFF}}},
	{{{     0,     92,      0}, 0, {   234,    -81}, {   0,    0,  127, 0xFF}}},
};

static u16 txt_shard_cork[] =
{
#include "cork.rgba16.h"
};

static Gfx gfx_shard_cork_cork[] =
{
	gsDPLoadImageBlock(txt_shard_cork, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPVertex(vtx_shard_cork, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_cork[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPDisplayList(gfx_shard_cork_cork),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

static Vtx vtx_shard_s[] =
{
	{{{   -10,      0,     10}, 0, {     0,      0}, {   0,  127,    0, 0x00}}},
	{{{    10,      0,     10}, 0, {     0,      0}, {   0,  127,    0, 0x00}}},
	{{{     0,      0,    -10}, 0, {     0,      0}, {   0,  127,    0, 0x00}}},
};

static Vtx vtx_shard_y[] =
{
	{{{   -10,     10,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    10,     10,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{     0,    -10,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
};

static Vtx vtx_star_s[] =
{
	{{{     0,     -8,      0}, 0, {     0,      0}, {   0,    0, -127, 0x00}}},
	{{{   -32,     80,      0}, 0, {     0,      0}, {   0,    0, -127, 0x00}}},
	{{{    32,     80,      0}, 0, {     0,      0}, {   0,    0, -127, 0x00}}},
	{{{   -52,     28,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{  -116,     80,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   -84,    -52,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{    52,     28,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{    84,    -52,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   116,     80,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{     0,    160,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
};

static Vtx vtx_star_y[] =
{
	{{{     0,     -8,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{   -32,     80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    32,     80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{   -52,     28,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{  -116,     80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{   -84,    -52,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    52,     28,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{    84,    -52,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{   116,     80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
	{{{     0,    160,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0x00, 0xFF}}},
};

static Gfx gfx_star_s[] =
{
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPVertex(vtx_star_s, 10, 0),
	gsSP2Triangles( 0,  1,  2, 0,  3,  4,  1, 0),
	gsSP2Triangles( 0,  5,  3, 0,  6,  7,  0, 0),
	gsSP2Triangles( 2,  8,  6, 0,  1,  9,  2, 0),
	gsSP2Triangles( 0,  3,  1, 0,  2,  6,  0, 0),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sr[] =
{
	gsSPSetLights1N(light_shard[0]),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sg[] =
{
	gsSPSetLights1N(light_shard[1]),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sb[] =
{
	gsSPSetLights1N(light_shard[2]),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_sy[] =
{
	gsSPSetLights1N(light_shard[3]),
	gsSPDisplayList(gfx_star_s),
	gsSPEndDisplayList(),
};

Gfx gfx_star_y[] =
{
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPVertex(vtx_star_y, 10, 0),
	gsSP2Triangles( 0,  1,  2, 0,  3,  4,  1, 0),
	gsSP2Triangles( 0,  5,  3, 0,  6,  7,  0, 0),
	gsSP2Triangles( 2,  8,  6, 0,  1,  9,  2, 0),
	gsSP2Triangles( 0,  3,  1, 0,  2,  6,  0, 0),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sr[] =
{
	gsSPSetLights1N(light_shard[0]),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPVertex(vtx_shard_s, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sg[] =
{
	gsSPSetLights1N(light_shard[1]),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPVertex(vtx_shard_s, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sb[] =
{
	gsSPSetLights1N(light_shard[2]),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPVertex(vtx_shard_s, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_sy[] =
{
	gsSPSetLights1N(light_shard[3]),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsSPVertex(vtx_shard_s, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_shard_y[] =
{
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPVertex(vtx_shard_y, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_shard_cork[];
extern Gfx gfx_star_sr[];
extern Gfx gfx_star_sg[];
extern Gfx gfx_star_sb[];
extern Gfx gfx_star_sy[];
extern Gfx gfx_star_y[];
extern Gfx gfx_shard_sr[];
extern Gfx gfx_shard_sg[];
extern Gfx gfx_shard_sb[];
extern Gfx gfx_shard_sy[];
extern Gfx gfx_shard_y[];

S_SCRIPT s_shard[] =
{
	sCull(300),
	sStart(),
		sSelect(6, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_shard_sr),
			sGfx(LAYER_OPA_SURF, gfx_shard_sg),
			sGfx(LAYER_OPA_SURF, gfx_shard_sb),
			sGfx(LAYER_TEX_EDGE, gfx_shard_cork),
			sGfx(LAYER_OPA_SURF, gfx_shard_sy),
			sGfx(LAYER_OPA_SURF, gfx_shard_y),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_star[] =
{
	sCull(300),
	sStart(),
		sSelect(5, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_star_sr),
			sGfx(LAYER_OPA_SURF, gfx_star_sg),
			sGfx(LAYER_OPA_SURF, gfx_star_sb),
			sGfx(LAYER_OPA_SURF, gfx_star_sy),
			sGfx(LAYER_OPA_SURF, gfx_star_y),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
