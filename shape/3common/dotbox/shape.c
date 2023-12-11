#ifndef SCRIPT

static Lights1 light_dotbox[] =
{
	gdSPDefLight(0.5, 0xFF, 0x00, 0x00),
	gdSPDefLight(0.5, 0x00, 0xFF, 0x00),
	gdSPDefLight(0.5, 0x00, 0x00, 0xFF),
	gdSPDefLight(0.5, 0xFF, 0xD4, 0x00),
};

#include "box.h"

static Gfx gfx_dotbox_box[] =
{
#include "box.box.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_dotbox_box_start[] =
{
	gsDPPipeSync(),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0x50),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPEndDisplayList(),
};

static Gfx gfx_dotbox_box_end[] =
{
	gsSPDisplayList(gfx_dotbox_box),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_dotbox_box_r[] =
{
	gsSPDisplayList(gfx_dotbox_box_start),
	gsSPSetLights1N(light_dotbox[0]),
	gsSPBranchList(gfx_dotbox_box_end),
};

Gfx gfx_dotbox_box_g[] =
{
	gsSPDisplayList(gfx_dotbox_box_start),
	gsSPSetLights1N(light_dotbox[1]),
	gsSPBranchList(gfx_dotbox_box_end),
};

Gfx gfx_dotbox_box_b[] =
{
	gsSPDisplayList(gfx_dotbox_box_start),
	gsSPSetLights1N(light_dotbox[2]),
	gsSPBranchList(gfx_dotbox_box_end),
};

Gfx gfx_dotbox_box_y[] =
{
	gsSPDisplayList(gfx_dotbox_box_start),
	gsSPSetLights1N(light_dotbox[3]),
	gsSPBranchList(gfx_dotbox_box_end),
};

#include "dot.h"

static u16 txt_dotbox_dot[] =
{
#include "dot.rgba16.h"
};

static Gfx gfx_dotbox_dot_dot[] =
{
	gsDPLoadImageBlock(txt_dotbox_dot, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "dot.dot.h"
	gsSPEndDisplayList(),
};

Gfx gfx_dotbox_dot[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_dotbox_dot_dot),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_dotboxmark[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

static u16 txt_dotboxmark[] =
{
#include "mark.rgba16.h"
};

#include "mark.h"

static Gfx gfx_dotboxmark_mark[] =
{
	gsDPLoadImageBlock(txt_dotboxmark, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32),
	gsSPSetLights1N(light_dotboxmark[0]),
#include "mark.mark.h"
	gsSPEndDisplayList(),
};

Gfx gfx_dotboxmark[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 5, 0, 0),
	gsSPDisplayList(gfx_dotboxmark_mark),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

MAP map_dotbox[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_dotbox_box_r[];
extern Gfx gfx_dotbox_box_g[];
extern Gfx gfx_dotbox_box_b[];
extern Gfx gfx_dotbox_box_y[];
extern Gfx gfx_dotbox_dot[];
extern Gfx gfx_dotboxmark[];
extern MAP map_dotbox[];

S_SCRIPT s_dotbox[] =
{
	sCull(300),
	sStart(),
		sShadow(70, 180, SHADOW_SQUAREFIX),
		sStart(),
			sSelect(4, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_dotbox_box_r),
				sGfx(LAYER_XLU_SURF, gfx_dotbox_box_g),
				sGfx(LAYER_XLU_SURF, gfx_dotbox_box_b),
				sGfx(LAYER_XLU_SURF, gfx_dotbox_box_y),
			sEnd(),
			sGfx(LAYER_TEX_EDGE, gfx_dotbox_dot),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
