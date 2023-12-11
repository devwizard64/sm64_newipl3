#ifndef SCRIPT

static Lights1 light_cap[] =
{
	gdSPDefLight(0.5, 0x73, 0x06, 0x00),
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.5, 0xFF, 0x00, 0x00),
};

static u16 txt_cap_metal[] =
{
#include "metal.rgba16.h"
};

static u16 txt_cap_logo[] =
{
#include "logo.rgba16.h"
};

static u16 txt_cap_wing_l[] =
{
#include "wing_l.rgba16.h"
};

static u16 txt_cap_wing_r[] =
{
#include "wing_r.rgba16.h"
};

static u16 txt_cap_metal_wing_l[] =
{
#include "metal_wing_l.rgba16.h"
};

static u16 txt_cap_metal_wing_r[] =
{
#include "metal_wing_r.rgba16.h"
};

#include "cap.h"

static Gfx gfx_cap_logo[] =
{
#include "cap.logo.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap_red[] =
{
#include "cap.red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap_hair[] =
{
#include "cap.hair.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_cap_shade[] =
{
	gsSPDisplayList(gfx_cap_red),
	gsSPSetLights1N(light_cap[0]),
	gsSPDisplayList(gfx_cap_hair),
	gsSPEndDisplayList(),
};

#include "wing.h"

static Gfx gfx_wings_wing_l[] =
{
#include "wing.wing_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_wing_r[] =
{
#include "wing.wing_r.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_wings_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_cap_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cap[2]),
	gsSPDisplayList(gfx_cap_logo),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_cap_shade),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB_ENVA, G_CC_MODULATERGB_ENVA),
	gsDPLoadTextureBlock(txt_cap_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_cap[1]),
	gsSPDisplayList(gfx_cap_logo),
	gsSPDisplayList(gfx_cap_red),
	gsSPDisplayList(gfx_cap_hair),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_wings_s[] =
{
	gsSPDisplayList(gfx_wings_start),
	gsDPLoadImageBlock(txt_cap_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_l),
	gsDPLoadImageBlock(txt_cap_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_r),
	gsSPDisplayList(gfx_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_cap_wings_e[] =
{
	gsSPDisplayList(gfx_wings_start),
	gsDPLoadImageBlock(txt_cap_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_l),
	gsDPLoadImageBlock(txt_cap_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_r),
	gsSPDisplayList(gfx_wings_end),
	gsSPEndDisplayList(),
};

Gfx gfx_wingcap_s[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_cap_logo, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_cap[2]),
	gsSPDisplayList(gfx_cap_logo),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_cap_shade),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_cap_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_l),
	gsDPLoadImageBlock(txt_cap_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

Gfx gfx_wingcap_e[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_MODULATERGB_ENVA, G_CC_MODULATERGB_ENVA),
	gsDPLoadTextureBlock(txt_cap_metal, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_cap[1]),
	gsSPDisplayList(gfx_cap_logo),
	gsSPDisplayList(gfx_cap_red),
	gsSPDisplayList(gfx_cap_hair),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING|G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGBA_ENV, G_CC_DECALRGBA_ENV),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_cap_metal_wing_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_l),
	gsDPLoadImageBlock(txt_cap_metal_wing_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_wings_wing_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_cap_s[];
extern Gfx gfx_cap_e[];
extern Gfx gfx_cap_wings_s[];
extern Gfx gfx_cap_wings_e[];
extern Gfx gfx_wingcap_s[];
extern Gfx gfx_wingcap_e[];

S_SCRIPT s_cap_s[] =
{
	sShadow(75, 180, SHADOW_CIRCLE9),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(10, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_cap_s),
				sGfx(LAYER_XLU_SURF, gfx_cap_s),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_cap_e[] =
{
	sShadow(75, 180, SHADOW_CIRCLE9),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(10, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_cap_e),
				sGfx(LAYER_XLU_SURF, gfx_cap_e),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wingcap_s[] =
{
	sShadow(75, 180, SHADOW_CIRCLE9),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(10, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sEmpty(),
				sStart(),
					sGfx(LAYER_OPA_SURF, gfx_cap_s),
					sGfx(LAYER_TEX_EDGE, gfx_cap_wings_s),
				sEnd(),
				sEmpty(),
				sStart(),
					sGfx(LAYER_XLU_SURF, gfx_wingcap_s),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_wingcap_e[] =
{
	sShadow(75, 180, SHADOW_CIRCLE9),
	sStart(),
		sScale(0.25),
		sStart(),
			sCallback(10, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sEmpty(),
				sStart(),
					sGfx(LAYER_OPA_SURF, gfx_cap_e),
					sGfx(LAYER_TEX_EDGE, gfx_cap_wings_e),
				sEnd(),
				sEmpty(),
				sStart(),
					sGfx(LAYER_XLU_SURF, gfx_wingcap_e),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
