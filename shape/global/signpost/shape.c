#ifndef SCRIPT

static Lights1 light_signpost_post[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "post.h"

static u16 txt_signpost_wood[] =
{
#include "wood.rgba16.h"
};

static u16 txt_signpost_face[] =
{
#include "face.rgba16.h"
};

static Gfx gfx_signpost_post_wood[] =
{
	gsDPLoadImageBlock(txt_signpost_wood, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_signpost_post[0]),
#include "post.wood.h"
	gsSPEndDisplayList(),
};

Gfx gfx_signpost_post[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_signpost_post_wood),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_signpost_sign[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "sign.h"

static Gfx gfx_signpost_sign_wood[] =
{
	gsDPLoadImageBlock(txt_signpost_wood, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_signpost_sign[0]),
#include "sign.wood.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_signpost_sign_face[] =
{
	gsDPLoadImageBlock(txt_signpost_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "sign.face.h"
	gsSPEndDisplayList(),
};

Gfx gfx_signpost_sign[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_signpost_sign_wood),
	gsSPDisplayList(gfx_signpost_sign_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

MAP map_signpost[] =
{
#include "map.h"
	MAP_END,
};

#else /* SCRIPT */

extern Gfx gfx_signpost_post[];
extern Gfx gfx_signpost_sign[];

S_SCRIPT s_signpost[] =
{
	sShadow(60, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_signpost_post),
			sGfx(LAYER_OPA_SURF, gfx_signpost_sign),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
