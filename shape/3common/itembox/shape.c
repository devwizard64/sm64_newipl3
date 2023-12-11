#ifndef SCRIPT

static Lights1 light_itembox[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_itembox_face_b[] =
{
#include "face_b.rgba16.h"
};

static u16 txt_itembox_side_b[] =
{
#include "side_b.rgba16.h"
};

static u16 txt_itembox_face_g[] =
{
#include "face_g.rgba16.h"
};

static u16 txt_itembox_side_g[] =
{
#include "side_g.rgba16.h"
};

static u16 txt_itembox_face_r[] =
{
#include "face_r.rgba16.h"
};

static u16 txt_itembox_side_r[] =
{
#include "side_r.rgba16.h"
};

static u16 txt_itembox_face_y[] =
{
#include "face_y.rgba16.h"
};

static u16 txt_itembox_side_y[] =
{
#include "side_y.rgba16.h"
};

#include "32x64.h"

static Gfx gfx_itembox_32x64_face[] =
{
	gsSPSetLights1N(light_itembox[0]),
#include "32x64.32x64_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_itembox_32x64_side[] =
{
#include "32x64.32x64_side.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Gfx gfx_itembox_32x64_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

#include "64x32.h"

static Gfx gfx_itembox_64x32_face[] =
{
	gsSPSetLights1N(light_itembox[0]),
#include "64x32.64x32_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_itembox_64x32_side[] =
{
#include "64x32.64x32_side.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Gfx gfx_itembox_64x32_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_itembox_r[] =
{
	gsSPDisplayList(gfx_itembox_32x64_start),
	gsDPLoadImageBlock(txt_itembox_face_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_itembox_32x64_face),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_itembox_side_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPBranchList(gfx_itembox_32x64_side),
};

Gfx gfx_itembox_g[] =
{
	gsSPDisplayList(gfx_itembox_64x32_start),
	gsDPLoadImageBlock(txt_itembox_face_g, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_itembox_64x32_face),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsDPLoadImageBlock(txt_itembox_side_g, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPBranchList(gfx_itembox_64x32_side),
};

Gfx gfx_itembox_b[] =
{
	gsSPDisplayList(gfx_itembox_32x64_start),
	gsDPLoadImageBlock(txt_itembox_face_b, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_itembox_32x64_face),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_itembox_side_b, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPBranchList(gfx_itembox_32x64_side),
};

Gfx gfx_itembox_y[] =
{
	gsSPDisplayList(gfx_itembox_64x32_start),
	gsDPLoadImageBlock(txt_itembox_face_y, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_itembox_64x32_face),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsDPLoadImageBlock(txt_itembox_side_y, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPBranchList(gfx_itembox_64x32_side),
};

#else /* SCRIPT */

extern Gfx gfx_itembox_r[];
extern Gfx gfx_itembox_g[];
extern Gfx gfx_itembox_b[];
extern Gfx gfx_itembox_y[];

S_SCRIPT s_itembox[] =
{
	sCull(300),
	sStart(),
		sShadow(70, 180, SHADOW_SQUAREFIX),
		sStart(),
			sSelect(4, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_itembox_r),
				sGfx(LAYER_OPA_SURF, gfx_itembox_g),
				sGfx(LAYER_OPA_SURF, gfx_itembox_b),
				sGfx(LAYER_OPA_SURF, gfx_itembox_y),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
