static u16 txt_snow_a[] =
{
#include "a.rgba16.h"
};

Gfx gfx_snow_a[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_snow_a),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_weather_end[] =
{
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static u16 txt_snow_b[] =
{
#include "b.rgba16.h"
};

Gfx gfx_snow_b[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_snow_b),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_lava_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_AA_ZB_TEX_EDGE2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_lava_txt[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};
