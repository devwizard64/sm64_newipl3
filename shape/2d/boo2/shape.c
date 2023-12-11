#ifndef SCRIPT

static Lights1 light_boo2 = gdSPDefLights1(0x97, 0x9A, 0xFF, 0xFF, 0xFF, 0xFF, 40, 40, 40);

static u16 txt_boo2_eyes[] =
{
#include "eyes.rgba16.h"
};

static u16 txt_boo2_mouth[] =
{
#include "mouth.rgba16.h"
};

#include "boo.h"

static Gfx gfx_boo2_mouth[] =
{
	gsDPLoadImageBlockT(txt_boo2_mouth, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_boo2),
#include "boo.mouth.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_boo2_eyes[] =
{
	gsDPLoadImageBlockT(txt_boo2_eyes, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "boo.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_boo2_shade[] =
{
#include "boo.shade.h"
	gsSPEndDisplayList(),
};

Gfx gfx_boo2[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_BLENDRGB_ENVA, G_CC_BLENDRGB_ENVA),
	gsSPNumLights(NUMLIGHTS_1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_boo2_mouth),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_boo2_eyes),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE_ENV, G_CC_SHADE_ENV),
	gsSPDisplayList(gfx_boo2_shade),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_boo2[];

S_SCRIPT s_boo2[] =
{
	sShadow(70, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.4),
		sStart(),
			sCallback(0, s_objlib_8029D924),
			sSelect(2, s_objlib_8029DB48),
			sStart(),
				sGfx(LAYER_OPA_SURF, gfx_boo2),
				sGfx(LAYER_XLU_SURF, gfx_boo2),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
