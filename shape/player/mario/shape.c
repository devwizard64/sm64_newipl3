#ifndef SCRIPT

static Lights1 light_mario[] =
{
	gdSPDefLight(0.5, 0x00, 0x00, 0xFF),
	gdSPDefLight(0.5, 0xFF, 0x00, 0x00),
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.5, 0x72, 0x1C, 0x0E),
	gdSPDefLight(0.5, 0xFE, 0xC1, 0x79),
	gdSPDefLight(0.5, 0x73, 0x06, 0x00),
};

static u16 txt_mario_metal[] =
{
#include "metal.rgba16.h"
};

static u16 txt_mario_button[] =
{
#include "button.rgba16.h"
};

static u16 txt_mario_logo[] =
{
#include "logo.rgba16.h"
};

static u16 txt_mario_sideburn[] =
{
#include "sideburn.rgba16.h"
};

static u16 txt_mario_moustache[] =
{
#include "moustache.rgba16.h"
};

static u16 txt_mario_eyes_open[] =
{
#include "eyes_open.rgba16.h"
};

static u16 txt_mario_eyes_half[] =
{
#include "eyes_half.rgba16.h"
};

static u16 txt_mario_eyes_closed[] =
{
#include "eyes_closed.rgba16.h"
#include "eyes_closed.rgba16.h"
#include "eyes_closed.rgba16.h"
};

static u16 txt_mario_eyes_left[] =
{
#include "eyes_left.rgba16.h"
};

static u16 txt_mario_eyes_right[] =
{
#include "eyes_right.rgba16.h"
};

static u16 txt_mario_eyes_up[] =
{
#include "eyes_up.rgba16.h"
};

static u16 txt_mario_eyes_down[] =
{
#include "eyes_down.rgba16.h"
};

static u16 txt_mario_eyes_dead[] =
{
#include "eyes_dead.rgba16.h"
};

static u16 txt_mario_wing_l[] =
{
#include "wing_l.rgba16.h"
};

static u16 txt_mario_wing_r[] =
{
#include "wing_r.rgba16.h"
};

static u16 txt_mario_metal_wing_l[] =
{
#include "metal_wing_l.rgba16.h"
};

static u16 txt_mario_metal_wing_r[] =
{
#include "metal_wing_r.rgba16.h"
};

#include "h_waist.h"

static Gfx gfx_mario_h_waist[] =
{
#include "h_waist.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_h_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_h_waist),
	gsSPEndDisplayList(),
};

#include "h_uarmL.h"

Gfx gfx_mario_h_uarmL[] =
{
#include "h_uarmL.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_uarmL_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_h_uarmL),
	gsSPEndDisplayList(),
};

#include "h_larmL.h"

Gfx gfx_mario_h_larmL[] =
{
#include "h_larmL.red.h"
	gsSPEndDisplayList(),
};

#include "h_fistL.h"

Gfx gfx_mario_h_fistL[] =
{
#include "h_fistL.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistL_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_h_fistL),
	gsSPEndDisplayList(),
};

#include "h_uarmR.h"

Gfx gfx_mario_h_uarmR[] =
{
#include "h_uarmR.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_uarmR_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_h_uarmR),
	gsSPEndDisplayList(),
};

#include "h_larmR.h"

Gfx gfx_mario_h_larmR[] =
{
#include "h_larmR.red.h"
	gsSPEndDisplayList(),
};

#include "h_fistR.h"

static Gfx gfx_mario_h_fistR[] =
{
#include "h_fistR.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistR_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_h_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_h_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "h_thighL.h"

static Gfx gfx_mario_h_thighL[] =
{
#include "h_thighL.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_h_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_h_thighL),
	gsSPEndDisplayList(),
};

#include "h_shinL.h"

Gfx gfx_mario_h_shinL[] =
{
#include "h_shinL.blue.h"
	gsSPEndDisplayList(),
};

#include "h_shoeL.h"

Gfx gfx_mario_h_shoeL[] =
{
#include "h_shoeL.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeL_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_h_shoeL),
	gsSPEndDisplayList(),
};

#include "h_thighR.h"

Gfx gfx_mario_h_thighR[] =
{
#include "h_thighR.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_thighR_s[] =
{
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_h_thighR),
	gsSPEndDisplayList(),
};

#include "h_shinR.h"

Gfx gfx_mario_h_shinR[] =
{
#include "h_shinR.blue.h"
	gsSPEndDisplayList(),
};

#include "h_shoeR.h"

static Gfx gfx_mario_h_shoeR[] =
{
#include "h_shoeR.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeR_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_h_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_h_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "h_torso.h"

static Gfx gfx_mario_h_torso_button[] =
{
#include "h_torso.button.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso_blue[] =
{
#include "h_torso.blue.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso_red[] =
{
#include "h_torso.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_torso_shade[] =
{
	gsSPDisplayList(gfx_mario_h_torso_blue),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_h_torso_red),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_torso_button),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_torso_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_torso[] =
{
	gsSPDisplayList(gfx_mario_h_torso_button),
	gsSPDisplayList(gfx_mario_h_torso_blue),
	gsSPDisplayList(gfx_mario_h_torso_red),
	gsSPEndDisplayList(),
};

#include "h_cap.h"

static Gfx gfx_mario_h_cap_logo[] =
{
#include "h_cap.logo.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_eyes[] =
{
#include "h_cap.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_sideburn[] =
{
#include "h_cap.sideburn.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_moustache[] =
{
#include "h_cap.moustache.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_skin[] =
{
#include "h_cap.skin.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_red[] =
{
#include "h_cap.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_hair[] =
{
#include "h_cap.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_cap_shade[] =
{
	gsSPDisplayList(gfx_mario_h_cap_skin),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_h_cap_red),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_h_cap_hair),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_cap[] =
{
	gsSPDisplayList(gfx_mario_h_cap_logo),
	gsSPDisplayList(gfx_mario_h_cap_eyes),
	gsSPDisplayList(gfx_mario_h_cap_sideburn),
	gsSPDisplayList(gfx_mario_h_cap_moustache),
	gsSPDisplayList(gfx_mario_h_cap_skin),
	gsSPDisplayList(gfx_mario_h_cap_red),
	gsSPDisplayList(gfx_mario_h_cap_hair),
	gsSPEndDisplayList(),
};

UNUSED static Lights1 light_mario_old[] =
{
	gdSPDefLight(0.25, 0xFE, 0xC1, 0x79),
	gdSPDefLight(0.25, 0x73, 0x06, 0x00),
};

#include "h_hair.h"
#include "h_hair.001.h"

static Gfx gfx_mario_h_hair_eyes[] =
{
#include "h_hair.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair_moustache[] =
{
#include "h_hair.moustache.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair_sideburn[] =
{
#include "h_hair.sideburn.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair_skin[] =
{
#include "h_hair.skin.h"
#include "h_hair.001.skin.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair_hair[] =
{
#include "h_hair.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_h_hair_shade[] =
{
	gsSPDisplayList(gfx_mario_h_hair_skin),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_h_hair_hair),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsDPLoadImageBlock(txt_mario_sideburn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_h_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_h_hair[] =
{
	gsSPDisplayList(gfx_mario_h_hair_eyes),
	gsSPDisplayList(gfx_mario_h_hair_moustache),
	gsSPDisplayList(gfx_mario_h_hair_sideburn),
	gsSPDisplayList(gfx_mario_h_hair_skin),
	gsSPDisplayList(gfx_mario_h_hair_hair),
	gsSPEndDisplayList(),
};

#include "m_waist.h"

static Gfx gfx_mario_m_waist[] =
{
#include "m_waist.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_m_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_m_waist),
	gsSPEndDisplayList(),
};

#include "m_uarmL.h"

Gfx gfx_mario_m_uarmL[] =
{
#include "m_uarmL.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_uarmL_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_m_uarmL),
	gsSPEndDisplayList(),
};

#include "m_larmL.h"

Gfx gfx_mario_m_larmL[] =
{
#include "m_larmL.red.h"
	gsSPEndDisplayList(),
};

#include "m_fistL.h"

Gfx gfx_mario_m_fistL[] =
{
#include "m_fistL.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistL_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_m_fistL),
	gsSPEndDisplayList(),
};

#include "m_uarmR.h"

Gfx gfx_mario_m_uarmR[] =
{
#include "m_uarmR.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_uarmR_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_m_uarmR),
	gsSPEndDisplayList(),
};

#include "m_larmR.h"

Gfx gfx_mario_m_larmR[] =
{
#include "m_larmR.red.h"
	gsSPEndDisplayList(),
};

#include "m_fistR.h"

Gfx gfx_mario_m_fistR[] =
{
#include "m_fistR.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistR_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_m_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_m_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "m_thighL.h"

static Gfx gfx_mario_m_thighL[] =
{
#include "m_thighL.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_m_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_m_thighL),
	gsSPEndDisplayList(),
};

#include "m_shinL.h"

Gfx gfx_mario_m_shinL[] =
{
#include "m_shinL.blue.h"
	gsSPEndDisplayList(),
};

#include "m_shoeL.h"

Gfx gfx_mario_m_shoeL[] =
{
#include "m_shoeL.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeL_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_m_shoeL),
	gsSPEndDisplayList(),
};

#include "m_thighR.h"

Gfx gfx_mario_m_thighR[] =
{
#include "m_thighR.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_thighR_s[] =
{
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_m_thighR),
	gsSPEndDisplayList(),
};

#include "m_shinR.h"

Gfx gfx_mario_m_shinR[] =
{
#include "m_shinR.blue.h"
	gsSPEndDisplayList(),
};

#include "m_shoeR.h"

static Gfx gfx_mario_m_shoeR[] =
{
#include "m_shoeR.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeR_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_m_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_m_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "m_torso.h"

static Gfx gfx_mario_m_torso_button[] =
{
#include "m_torso.button.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso_blue[] =
{
#include "m_torso.blue.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso_red[] =
{
#include "m_torso.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_m_torso_shade[] =
{
	gsSPDisplayList(gfx_mario_m_torso_blue),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_m_torso_red),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_m_torso_button),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_m_torso_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_m_torso_e[] =
{
	gsSPDisplayList(gfx_mario_m_torso_button),
	gsSPDisplayList(gfx_mario_m_torso_blue),
	gsSPDisplayList(gfx_mario_m_torso_red),
	gsSPEndDisplayList(),
};

#include "l_waist.h"

static Gfx gfx_mario_l_waist[] =
{
#include "l_waist.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_waist_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_l_waist),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_waist_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_l_waist),
	gsSPEndDisplayList(),
};

#include "l_uarmL.h"

Gfx gfx_mario_l_uarmL[] =
{
#include "l_uarmL.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_uarmL_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_l_uarmL),
	gsSPEndDisplayList(),
};

#include "l_larmL.h"

Gfx gfx_mario_l_larmL[] =
{
#include "l_larmL.red.h"
	gsSPEndDisplayList(),
};

#include "l_fistL.h"

Gfx gfx_mario_l_fistL[] =
{
#include "l_fistL.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistL_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_l_fistL),
	gsSPEndDisplayList(),
};

#include "l_uarmR.h"

Gfx gfx_mario_l_uarmR[] =
{
#include "l_uarmR.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_uarmR_s[] =
{
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_l_uarmR),
	gsSPEndDisplayList(),
};

#include "l_larmR.h"

Gfx gfx_mario_l_larmR[] =
{
#include "l_larmR.red.h"
	gsSPEndDisplayList(),
};

#include "l_fistR.h"

static Gfx gfx_mario_l_fistR[] =
{
#include "l_fistR.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistR_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_l_fistR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_fistR_e[] =
{
	gsSPDisplayList(gfx_mario_l_fistR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "l_thighL.h"

static Gfx gfx_mario_l_thighL[] =
{
#include "l_thighL.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighL_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_l_thighL),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighL_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_l_thighL),
	gsSPEndDisplayList(),
};

#include "l_shinL.h"

Gfx gfx_mario_l_shinL[] =
{
#include "l_shinL.blue.h"
	gsSPEndDisplayList(),
};

#include "l_shoeL.h"

Gfx gfx_mario_l_shoeL[] =
{
#include "l_shoeL.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeL_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_l_shoeL),
	gsSPEndDisplayList(),
};

#include "l_thighR.h"

Gfx gfx_mario_l_thighR[] =
{
#include "l_thighR.blue.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_thighR_s[] =
{
	gsSPSetLights1N(light_mario[0]),
	gsSPDisplayList(gfx_mario_l_thighR),
	gsSPEndDisplayList(),
};

#include "l_shinR.h"

Gfx gfx_mario_l_shinR[] =
{
#include "l_shinR.blue.h"
	gsSPEndDisplayList(),
};

#include "l_shoeR.h"

static Gfx gfx_mario_l_shoeR[] =
{
#include "l_shoeR.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeR_s[] =
{
	gsSPSetLights1N(light_mario[3]),
	gsSPDisplayList(gfx_mario_l_shoeR),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_shoeR_e[] =
{
	gsSPDisplayList(gfx_mario_l_shoeR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsSPEndDisplayList(),
};

#include "l_torso.h"

static Gfx gfx_mario_l_torso_button[] =
{
#include "l_torso.button.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso_blue[] =
{
#include "l_torso.blue.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso_red[] =
{
#include "l_torso.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_torso_shade[] =
{
	gsSPDisplayList(gfx_mario_l_torso_blue),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_l_torso_red),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_torso_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_button, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_torso_button),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_torso_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_torso_e[] =
{
	gsSPDisplayList(gfx_mario_l_torso_button),
	gsSPDisplayList(gfx_mario_l_torso_blue),
	gsSPDisplayList(gfx_mario_l_torso_red),
	gsSPEndDisplayList(),
};

#include "l_cap.h"

static Gfx gfx_mario_l_cap_logo[] =
{
#include "l_cap.logo.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_eyes[] =
{
#include "l_cap.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_moustache[] =
{
#include "l_cap.moustache.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_skin[] =
{
#include "l_cap.skin.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_red[] =
{
#include "l_cap.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_hair[] =
{
#include "l_cap.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_cap_shade[] =
{
	gsSPDisplayList(gfx_mario_l_cap_skin),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_l_cap_red),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_l_cap_hair),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsDPLoadImageBlock(txt_mario_eyes_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_cap[] =
{
	gsSPDisplayList(gfx_mario_l_cap_logo),
	gsSPDisplayList(gfx_mario_l_cap_eyes),
	gsSPDisplayList(gfx_mario_l_cap_moustache),
	gsSPDisplayList(gfx_mario_l_cap_skin),
	gsSPDisplayList(gfx_mario_l_cap_red),
	gsSPDisplayList(gfx_mario_l_cap_hair),
	gsSPEndDisplayList(),
};

#include "l_hair.h"

static Gfx gfx_mario_l_hair_eyes[] =
{
#include "l_hair.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair_moustache[] =
{
#include "l_hair.moustache.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair_skin[] =
{
#include "l_hair.skin.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair_hair[] =
{
#include "l_hair.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_l_hair_shade[] =
{
	gsSPDisplayList(gfx_mario_l_hair_skin),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_l_hair_hair),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_open[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_half[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_half, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_closed[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_left[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_left, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_right[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_right, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_up[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_up, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_down[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_down, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair_dead[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_eyes_dead, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[4]),
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsDPLoadImageBlock(txt_mario_moustache, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_l_hair_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_l_hair[] =
{
	gsSPDisplayList(gfx_mario_l_hair_eyes),
	gsSPDisplayList(gfx_mario_l_hair_moustache),
	gsSPDisplayList(gfx_mario_l_hair_skin),
	gsSPDisplayList(gfx_mario_l_hair_hair),
	gsSPEndDisplayList(),
};

#include "handL.h"

Gfx gfx_mario_handL[] =
{
#include "handL.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handL_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_handL),
	gsSPEndDisplayList(),
};

#include "handR.h"

static Gfx gfx_mario_handR[] =
{
#include "handR.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handR_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_handR),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_handR_e[] =
{
	gsSPDisplayList(gfx_mario_handR),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

#include "capR.h"

static Gfx gfx_mario_capR_logo[] =
{
#include "capR.logo.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR_red[] =
{
#include "capR.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR_white[] =
{
#include "capR.white.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR_hair[] =
{
#include "capR.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_capR_shade[] =
{
	gsSPDisplayList(gfx_mario_capR_red),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_capR_white),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_capR_hair),
	gsSPEndDisplayList(),
};

#include "wingsR.h"

static Gfx gfx_mario_wingsR_l[] =
{
#include "wingsR.wing_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_r[] =
{
#include "wingsR.wing_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENVA, G_CC_MODULATERGBA_ENVA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wingsR_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_capR_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_mario_capR_logo),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_mario_capR_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wingsR_s[] =
{
	gsSPDisplayList(gfx_mario_wingsR_start),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_r),
	gsSPDisplayList(gfx_mario_wingsR_end),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_capR_e[] =
{
	gsSPDisplayList(gfx_mario_capR_logo),
	gsSPDisplayList(gfx_mario_capR_red),
	gsSPDisplayList(gfx_mario_capR_white),
	gsSPDisplayList(gfx_mario_capR_hair),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wingsR_e[] =
{
	gsSPDisplayList(gfx_mario_wingsR_start),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wingsR_r),
	gsSPDisplayList(gfx_mario_wingsR_end),
	gsSPEndDisplayList(),
};

#include "peaceR.h"

Gfx gfx_mario_peaceR[] =
{
#include "peaceR.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_peaceR_s[] =
{
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_peaceR),
	gsSPEndDisplayList(),
};

#include "cap.h"

static Gfx gfx_mario_cap_logo[] =
{
#include "cap.logo.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap_red[] =
{
#include "cap.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap_hair[] =
{
#include "cap.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_cap_shade[] =
{
	gsSPDisplayList(gfx_mario_cap_red),
	gsSPSetLights1N(light_mario[5]),
	gsSPDisplayList(gfx_mario_cap_hair),
	gsSPEndDisplayList(),
};

#include "wings.h"

static Gfx gfx_mario_wings_wing_l[] =
{
#include "wings.wing_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_wing_r[] =
{
#include "wings.wing_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPSetLights1N(light_mario[2]),
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wings_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_cap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGBA, G_CC_BLENDRGBA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_mario_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_mario[1]),
	gsSPDisplayList(gfx_mario_cap_logo),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_mario_cap_shade),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_cap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_mario[2]),
	gsSPDisplayList(gfx_mario_cap_logo),
	gsSPDisplayList(gfx_mario_cap_red),
	gsSPDisplayList(gfx_mario_cap_hair),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wings_s[] =
{
	gsSPDisplayList(gfx_mario_wings_start),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_wing_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_wing_r),
	gsSPDisplayList(gfx_mario_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wings_e[] =
{
	gsSPDisplayList(gfx_mario_wings_start),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_wing_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wings_wing_r),
	gsSPDisplayList(gfx_mario_wings_end),
	gsSPEndDisplayList(),
};

#include "wing.h"

static Gfx gfx_mario_wing_wing_l[] =
{
#include "wing.wing_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_mario_wing_wing_r[] =
{
#include "wing.wing_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_so[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPSetLights1N(light_mario[2]),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_sx[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPSetLights1N(light_mario[2]),
	gsDPLoadImageBlock(txt_mario_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_l),
	gsDPLoadImageBlock(txt_mario_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_eo[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPSetLights1N(light_mario[2]),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

Gfx gfx_mario_wing_ex[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_mario_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_l),
	gsDPLoadImageBlock(txt_mario_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_mario_wing_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK|G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_mario_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern void *s_player_alpha(int code, SHAPE *shape, void *data);
extern void *s_player_select_lod(int code, SHAPE *shape, void *data);
extern void *s_player_select_eyes(int code, SHAPE *shape, void *data);
extern void *s_player_torso(int code, SHAPE *shape, void *data);
extern void *s_player_head(int code, SHAPE *shape, void *data);
extern void *s_mario_select_hand(int code, SHAPE *shape, void *data);
extern void *s_mario_punch(int code, SHAPE *shape, void *data);
extern void *s_player_select_cap(int code, SHAPE *shape, void *data);
extern void *s_player_select_head(int code, SHAPE *shape, void *data);
extern void *s_player_wing(int code, SHAPE *shape, void *data);
extern void *s_player_hand(int code, SHAPE *shape, void *data);
extern void *s_mario_mirror(int code, SHAPE *shape, void *data);
extern void *s_mario_copyparentpos(int code, SHAPE *shape, void *data);
extern Gfx gfx_mario_h_waist_s[];
extern Gfx gfx_mario_h_waist_e[];
extern Gfx gfx_mario_h_uarmL[];
extern Gfx gfx_mario_h_uarmL_s[];
extern Gfx gfx_mario_h_larmL[];
extern Gfx gfx_mario_h_fistL[];
extern Gfx gfx_mario_h_fistL_s[];
extern Gfx gfx_mario_h_uarmR[];
extern Gfx gfx_mario_h_uarmR_s[];
extern Gfx gfx_mario_h_larmR[];
extern Gfx gfx_mario_h_fistR_s[];
extern Gfx gfx_mario_h_fistR_e[];
extern Gfx gfx_mario_h_thighL_s[];
extern Gfx gfx_mario_h_thighL_e[];
extern Gfx gfx_mario_h_shinL[];
extern Gfx gfx_mario_h_shoeL[];
extern Gfx gfx_mario_h_shoeL_s[];
extern Gfx gfx_mario_h_thighR[];
extern Gfx gfx_mario_h_thighR_s[];
extern Gfx gfx_mario_h_shinR[];
extern Gfx gfx_mario_h_shoeR_s[];
extern Gfx gfx_mario_h_shoeR_e[];
extern Gfx gfx_mario_h_torso_s[];
extern Gfx gfx_mario_h_torso[];
extern Gfx gfx_mario_h_cap_open[];
extern Gfx gfx_mario_h_cap_half[];
extern Gfx gfx_mario_h_cap_closed[];
extern Gfx gfx_mario_h_cap_left[];
extern Gfx gfx_mario_h_cap_right[];
extern Gfx gfx_mario_h_cap_up[];
extern Gfx gfx_mario_h_cap_down[];
extern Gfx gfx_mario_h_cap_dead[];
extern Gfx gfx_mario_h_cap[];
extern Gfx gfx_mario_h_hair_open[];
extern Gfx gfx_mario_h_hair_half[];
extern Gfx gfx_mario_h_hair_closed[];
extern Gfx gfx_mario_h_hair_left[];
extern Gfx gfx_mario_h_hair_right[];
extern Gfx gfx_mario_h_hair_up[];
extern Gfx gfx_mario_h_hair_down[];
extern Gfx gfx_mario_h_hair_dead[];
extern Gfx gfx_mario_h_hair[];
extern Gfx gfx_mario_m_waist_s[];
extern Gfx gfx_mario_m_waist_e[];
extern Gfx gfx_mario_m_uarmL[];
extern Gfx gfx_mario_m_uarmL_s[];
extern Gfx gfx_mario_m_larmL[];
extern Gfx gfx_mario_m_fistL[];
extern Gfx gfx_mario_m_fistL_s[];
extern Gfx gfx_mario_m_uarmR[];
extern Gfx gfx_mario_m_uarmR_s[];
extern Gfx gfx_mario_m_larmR[];
extern Gfx gfx_mario_m_fistR[];
extern Gfx gfx_mario_m_fistR_s[];
extern Gfx gfx_mario_m_fistR_e[];
extern Gfx gfx_mario_m_thighL_s[];
extern Gfx gfx_mario_m_thighL_e[];
extern Gfx gfx_mario_m_shinL[];
extern Gfx gfx_mario_m_shoeL[];
extern Gfx gfx_mario_m_shoeL_s[];
extern Gfx gfx_mario_m_thighR[];
extern Gfx gfx_mario_m_thighR_s[];
extern Gfx gfx_mario_m_shinR[];
extern Gfx gfx_mario_m_shoeR_s[];
extern Gfx gfx_mario_m_shoeR_e[];
extern Gfx gfx_mario_m_torso_s[];
extern Gfx gfx_mario_m_torso_e[];
extern Gfx gfx_mario_l_waist_s[];
extern Gfx gfx_mario_l_waist_e[];
extern Gfx gfx_mario_l_uarmL[];
extern Gfx gfx_mario_l_uarmL_s[];
extern Gfx gfx_mario_l_larmL[];
extern Gfx gfx_mario_l_fistL[];
extern Gfx gfx_mario_l_fistL_s[];
extern Gfx gfx_mario_l_uarmR[];
extern Gfx gfx_mario_l_uarmR_s[];
extern Gfx gfx_mario_l_larmR[];
extern Gfx gfx_mario_l_fistR_s[];
extern Gfx gfx_mario_l_fistR_e[];
extern Gfx gfx_mario_l_thighL_s[];
extern Gfx gfx_mario_l_thighL_e[];
extern Gfx gfx_mario_l_shinL[];
extern Gfx gfx_mario_l_shoeL[];
extern Gfx gfx_mario_l_shoeL_s[];
extern Gfx gfx_mario_l_thighR[];
extern Gfx gfx_mario_l_thighR_s[];
extern Gfx gfx_mario_l_shinR[];
extern Gfx gfx_mario_l_shoeR_s[];
extern Gfx gfx_mario_l_shoeR_e[];
extern Gfx gfx_mario_l_torso_s[];
extern Gfx gfx_mario_l_torso_e[];
extern Gfx gfx_mario_l_cap_open[];
extern Gfx gfx_mario_l_cap_half[];
extern Gfx gfx_mario_l_cap_closed[];
extern Gfx gfx_mario_l_cap_left[];
extern Gfx gfx_mario_l_cap_right[];
extern Gfx gfx_mario_l_cap_up[];
extern Gfx gfx_mario_l_cap_down[];
extern Gfx gfx_mario_l_cap_dead[];
extern Gfx gfx_mario_l_cap[];
extern Gfx gfx_mario_l_hair_open[];
extern Gfx gfx_mario_l_hair_half[];
extern Gfx gfx_mario_l_hair_closed[];
extern Gfx gfx_mario_l_hair_left[];
extern Gfx gfx_mario_l_hair_right[];
extern Gfx gfx_mario_l_hair_up[];
extern Gfx gfx_mario_l_hair_down[];
extern Gfx gfx_mario_l_hair_dead[];
extern Gfx gfx_mario_l_hair[];
extern Gfx gfx_mario_handL[];
extern Gfx gfx_mario_handL_s[];
extern Gfx gfx_mario_handR_s[];
extern Gfx gfx_mario_handR_e[];
extern Gfx gfx_mario_capR_s[];
extern Gfx gfx_mario_wingsR_s[];
extern Gfx gfx_mario_capR_e[];
extern Gfx gfx_mario_wingsR_e[];
extern Gfx gfx_mario_peaceR[];
extern Gfx gfx_mario_peaceR_s[];
extern Gfx gfx_mario_wing_so[];
extern Gfx gfx_mario_wing_sx[];
extern Gfx gfx_mario_wing_eo[];
extern Gfx gfx_mario_wing_ex[];

static S_SCRIPT s_mario_hso_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_open),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_half),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_closed),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_left),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_right),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_up),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_down),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_cap_dead),
			sEnd(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_open),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_half),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_closed),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_left),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_right),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_up),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_down),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_hair_dead),
			sEnd(),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_so),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_so),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hso_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hso_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hso[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hso_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_h_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_hso_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_h_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_hso_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_h_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_h_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_h_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mso_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_m_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mso_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_m_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mso[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hso_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_m_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_mso_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_m_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_mso_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_m_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_m_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_m_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lso_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_open),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_half),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_closed),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_left),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_right),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_up),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_down),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_cap_dead),
			sEnd(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_open),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_half),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_closed),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_left),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_right),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_up),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_down),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_hair_dead),
			sEnd(),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_so),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_so),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lso_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lso_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lso[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_lso_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_l_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_lso_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_l_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_lso_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_l_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_l_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_l_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hsx_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_open),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_half),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_closed),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_left),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_right),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_up),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_down),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_cap_dead),
			sEnd(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_open),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_half),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_closed),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_left),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_right),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_up),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_down),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_hair_dead),
			sEnd(),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_sx),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_sx),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hsx_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hsx_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hsx[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hsx_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_h_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_hsx_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_h_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_hsx_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_h_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_h_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_h_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_msx_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_m_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_msx_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_m_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_msx[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hsx_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_m_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_msx_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_m_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_msx_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_m_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_m_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_m_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lsx_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_open),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_half),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_closed),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_left),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_right),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_up),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_down),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_cap_dead),
			sEnd(),
			sSelect(0, s_player_select_eyes),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_open),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_half),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_closed),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_left),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_right),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_up),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_down),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_hair_dead),
			sEnd(),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_sx),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_sx),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lsx_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_fistL_s),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL_s, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lsx_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_fistR_s),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_s, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_s, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_s),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lsx[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_waist_s, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_torso_s, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_lsx_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_uarmL_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_l_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_lsx_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_uarmR_s, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_l_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_lsx_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_thighL_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_l_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_shoeL_s, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_thighR_s, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_l_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_l_shoeR_s),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_heo_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_mario_h_cap),
			sGfx(LAYER_OPA_SURF, gfx_mario_h_hair),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_eo),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_eo),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_heo_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_heo_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_h_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_heo[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_h_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_torso, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_heo_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_h_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_heo_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_h_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_heo_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_h_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_h_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_h_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_h_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_h_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_meo_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_m_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_meo_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_m_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_meo[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_m_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_torso_e, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_heo_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_m_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_meo_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_m_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_meo_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_m_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_m_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_m_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_m_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_m_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_leo_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_mario_l_cap),
			sGfx(LAYER_OPA_SURF, gfx_mario_l_hair),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_eo),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_TEX_EDGE, gfx_mario_wing_eo),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_leo_handL[] =
{
	sSelect(1, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_leo_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_mario_l_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_OPA_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_OPA_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_leo[] =
{
	sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_OPA_SURF, gfx_mario_l_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_torso_e, 68, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_leo_head),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_l_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_leo_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_mario_l_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_leo_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_l_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_mario_l_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_OPA_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_mario_l_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_mario_l_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_OPA_SURF, gfx_mario_l_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hex_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sGfx(LAYER_XLU_SURF, gfx_mario_h_cap),
			sGfx(LAYER_XLU_SURF, gfx_mario_h_hair),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_ex),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_ex),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hex_handL[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hex_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_h_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_hex[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_h_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_torso, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hex_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_h_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_hex_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_h_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_hex_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_h_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_h_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_h_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_h_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_h_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mex_handL[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_m_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mex_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_m_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_mex[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_m_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_torso_e, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_hex_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_m_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_mex_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_m_larmR, 65, 0, 0),
							sStart(),
								sSelect(0, s_mario_select_hand),
								sStart(),
									sCall(s_mario_mex_handR),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_m_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_m_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_m_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_m_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_m_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lex_head[] =
{
	sCallback(0, s_player_head),
	sAng(0, 0, 0),
	sStart(),
		sSelect(0, s_player_select_head),
		sStart(),
			sGfx(LAYER_XLU_SURF, gfx_mario_l_cap),
			sGfx(LAYER_XLU_SURF, gfx_mario_l_hair),
		sEnd(),
		sCoord(142, -51, -126, 22, -40, -135),
		sStart(),
			sCallback(0, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_ex),
			sEnd(),
		sEnd(),
		sCoord(142, -51, 126, -22, 40, -135),
		sStart(),
			sCallback(1, s_player_wing),
			sAng(0, 0, 0),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_wing_ex),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lex_handL[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(1, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_fistL),
			sEnd(),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_fistL, 60, 0, 0),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lex_handR[] =
{
	sSelect(0, s_mario_select_hand),
	sStart(),
		sJoint(LAYER_XLU_SURF, NULL, 60, 0, 0),
		sStart(),
			sCallback(0, s_mario_punch),
			sScale(1),
			sStart(),
				sGfx(LAYER_XLU_SURF, gfx_mario_l_fistR_e),
			sEnd(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_handR_e, 60, 0, 0),
		sStart(),
			sHand(0, 0, 0, 0, s_player_hand),
		sEnd(),
		sJoint(LAYER_XLU_SURF, gfx_mario_peaceR, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sJoint(LAYER_XLU_SURF, gfx_mario_capR_e, 60, 0, 0),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_mario_wingsR_e),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lex[] =
{
	sJoint(LAYER_XLU_SURF, NULL, 0, 0, 0),
	sStart(),
		sJoint(LAYER_XLU_SURF, gfx_mario_l_waist_e, 0, 0, 0),
		sStart(),
			sCallback(0, s_mario_copyparentpos),
			sCallback(0, s_player_torso),
			sAng(0, 0, 0),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_torso_e, 68, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, NULL, 87, 0, 0),
					sStart(),
						sCall(s_mario_lex_head),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 67, -10, 79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_uarmL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_l_larmL, 65, 0, 0),
							sStart(),
								sCall(s_mario_lex_handL),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_XLU_SURF, NULL, 68, -10, -79),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_uarmR, 0, 0, 0),
						sStart(),
							sJoint(LAYER_XLU_SURF, gfx_mario_l_larmR, 65, 0, 0),
							sStart(),
								sCall(s_mario_lex_handR),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, 42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_thighL_e, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_l_shinL, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_mario_l_shoeL, 67, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
			sJoint(LAYER_XLU_SURF, NULL, 13, -8, -42),
			sStart(),
				sJoint(LAYER_XLU_SURF, gfx_mario_l_thighR, 0, 0, 0),
				sStart(),
					sJoint(LAYER_XLU_SURF, gfx_mario_l_shinR, 89, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, NULL, 67, 0, 0),
						sStart(),
							sCallback(2, s_mario_punch),
							sScale(1),
							sStart(),
								sGfx(LAYER_XLU_SURF, gfx_mario_l_shoeR_e),
							sEnd(),
						sEnd(),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_h[] =
{
	sSelect(0, s_player_select_cap),
	sStart(),
		sCall(s_mario_hso),
		sCall(s_mario_hsx),
		sCall(s_mario_heo),
		sCall(s_mario_hex),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_m[] =
{
	sSelect(0, s_player_select_cap),
	sStart(),
		sCall(s_mario_mso),
		sCall(s_mario_msx),
		sCall(s_mario_meo),
		sCall(s_mario_mex),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_l[] =
{
	sSelect(0, s_player_select_cap),
	sStart(),
		sCall(s_mario_lso),
		sCall(s_mario_lsx),
		sCall(s_mario_leo),
		sCall(s_mario_lex),
	sEnd(),
	sReturn(),
};

static S_SCRIPT s_mario_lod[] =
{
	sEmpty(),
	sStart(),
		sLOD(-2048, 600),
		sStart(),
			sCall(s_mario_h),
		sEnd(),
		sLOD(600, 1600),
		sStart(),
			sCall(s_mario_m),
		sEnd(),
		sLOD(1600, 32767),
		sStart(),
			sCall(s_mario_l),
		sEnd(),
	sEnd(),
	sReturn(),
};

S_SCRIPT s_mario[] =
{
	sShadow(100, 180, SHADOW_MARIO),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(0, s_mario_mirror),
			sCallback(0, s_player_alpha),
			sSelect(0, s_player_select_lod),
			sStart(),
				sCall(s_mario_h),
				sCall(s_mario_lod),
			sEnd(),
			sCallback(1, s_mario_mirror),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
