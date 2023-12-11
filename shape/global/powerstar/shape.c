#ifndef SCRIPT

static Lights1 light_powerstar_star[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_powerstar_star[] =
{
#include "star.rgba16.h"
};

static u16 txt_powerstar_eye[] =
{
#include "eye.rgba16.h"
};

#include "star.h"

static Gfx gfx_powerstar_star_shade[] =
{
	gsSPSetLights1N(light_powerstar_star[0]),
#include "star.star.h"
	gsSPEndDisplayList(),
};

Gfx gfx_powerstar_star[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_powerstar_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPTexture(62*32, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPDisplayList(gfx_powerstar_star_shade),
	gsDPPipeSync(),
	gsSPTexture(62*32, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_powerstar_eyes[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

#include "eyes.h"

static Gfx gfx_powerstar_eyes_shade[] =
{
	gsDPLoadImageBlock(txt_powerstar_eye, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_powerstar_eyes[0]),
#include "eyes.eye.h"
	gsSPEndDisplayList(),
};

Gfx gfx_powerstar_eyes[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_powerstar_eyes_shade),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_powerstar_star[];
extern Gfx gfx_powerstar_eyes[];

S_SCRIPT s_powerstar[] =
{
	sShadow(100, 155, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_powerstar_star),
			sGfx(LAYER_TEX_EDGE, gfx_powerstar_eyes),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
