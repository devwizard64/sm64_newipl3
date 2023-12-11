#ifndef SCRIPT

static Lights1 light_file[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_file_light[] =
{
#include "light.rgba16.h"
};

static u16 txt_file_shade[] =
{
#include "shade.rgba16.h"
};

static u16 txt_file_mario[] =
{
#include "mario.rgba16.h"
};

static u16 txt_file_new[] =
{
#include "new.rgba16.h"
};

#include "file.h"

static Gfx gfx_file_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_edge[] =
{
	gsSPSetLights1N(light_file[0]),
#include "file.edge.h"
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_face[] =
{
#include "file.face.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Vtx vtx_file_back[] =
{
	{{{   163,   -122,      0}, 0, {     0,    990}, {   0,    0, -127, 0xFF}}},
	{{{  -163,   -122,      0}, 0, {   990,    990}, {   0,    0, -127, 0xFF}}},
	{{{   163,    122,      0}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{  -163,    122,      0}, 0, {   990,      0}, {   0,    0, -127, 0xFF}}},
};

static Gfx gfx_file_back_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_file_back_end[] =
{
	gsSPSetLights1N(light_file[0]),
	gsSPVertex(vtx_file_back, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  1,  3,  2, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_file_mario[] =
{
	gsSPDisplayList(gfx_file_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_edge),
	gsDPLoadImageBlock(txt_file_mario, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPDisplayList(gfx_file_face),
	gsSPEndDisplayList(),
};

Gfx gfx_file_new[] =
{
	gsSPDisplayList(gfx_file_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_edge),
	gsDPLoadImageBlock(txt_file_new, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPDisplayList(gfx_file_face),
	gsSPEndDisplayList(),
};

Gfx gfx_file_back[] =
{
	gsSPDisplayList(gfx_file_back_start),
	gsDPLoadImageBlock(txt_file_shade, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_file_back_end),
	gsSPEndDisplayList(),
};

Gfx gfx_file_back_s[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_file[0]),
	gsSPVertex(vtx_file_back, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  1,  3,  2, 0),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_file_mario[];
extern Gfx gfx_file_new[];
extern Gfx gfx_file_back[];
extern Gfx gfx_file_back_s[];

S_SCRIPT s_file_mario[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_file_mario),
			sGfx(LAYER_OPA_SURF, gfx_file_back),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_file_mario_s[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_file_mario),
			sGfx(LAYER_OPA_SURF, gfx_file_back_s),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_file_new[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_file_new),
			sGfx(LAYER_OPA_SURF, gfx_file_back),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_file_new_s[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_file_new),
			sGfx(LAYER_OPA_SURF, gfx_file_back_s),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
