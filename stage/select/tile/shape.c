#ifndef SCRIPT

static Lights1 light_tile[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_tile_red[] =
{
#include "erase.rgba16.h"
};

static u16 txt_tile_blue[] =
{
#include "copy.rgba16.h"
};

static u16 txt_tile_yellow[] =
{
#include "main.rgba16.h"
};

static u16 txt_tile_green[] =
{
#include "score.rgba16.h"
};

static u16 txt_tile_purple[] =
{
#include "sound.rgba16.h"
};

#include "tile.h"

static Gfx gfx_tile[] =
{
	gsSPSetLights1N(light_tile[0]),
#include "tile.tile.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_tile_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_tile_end[] =
{
	gsSPDisplayList(gfx_tile),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_red[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_red, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_blue[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_blue, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_yellow[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_yellow, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_green[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_green, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_purple[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_tile_purple, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

Gfx gfx_tile_button[] =
{
	gsSPDisplayList(gfx_tile_start),
	gsDPLoadImageBlock(txt_file_light, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_tile_end),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_tile_red[];
extern Gfx gfx_tile_blue[];
extern Gfx gfx_tile_yellow[];
extern Gfx gfx_tile_green[];
extern Gfx gfx_tile_purple[];
extern Gfx gfx_tile_button[];

S_SCRIPT s_tile_red[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_red),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tile_blue[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_blue),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tile_yellow[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_yellow),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tile_green[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_green),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tile_purple[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_purple),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_tile_button[] =
{
	sEmpty(),
	sStart(),
		sScale(8),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_tile_button),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
