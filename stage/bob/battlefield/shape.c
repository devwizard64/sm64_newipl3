#ifndef SCRIPT

static Lights1 light_battlefield_smooth[] =
{
	gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF),
};

#include "smooth.h"

static Gfx gfx_battlefield_smooth_c11[] =
{
	gsDPLoadImageBlock(txt_c_11, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_smooth[0]),
#include "smooth.c11.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_smooth_c18[] =
{
	gsDPLoadImageBlock(txt_c_18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "smooth.c18.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_smooth_c12[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "smooth.c12.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_smooth[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_smooth_c11),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_smooth_c18),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_battlefield_smooth_c12),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_flat[] =
{
	gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF),
};

#include "flat.h"

static Gfx gfx_battlefield_flat_c7[] =
{
	gsDPLoadImageBlock(txt_c_7, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_flat[0]),
#include "flat.c7.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c4[] =
{
	gsDPLoadImageBlock(txt_c_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.c4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c3[] =
{
	gsDPLoadImageBlock(txt_c_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.c3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c10[] =
{
	gsDPLoadImageBlock(txt_c_10, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.c10.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c9[] =
{
	gsDPLoadImageBlock(txt_c_9, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.c9.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c6[] =
{
	gsDPLoadImageBlock(txt_c_6, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.c6.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_2[] =
{
	gsDPLoadImageBlock(txt_bob_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.2.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_3[] =
{
	gsDPLoadImageBlock(txt_bob_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.3.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_1[] =
{
	gsDPLoadImageBlock(txt_bob_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "flat.1.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_flat_c12[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "flat.c12.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_flat[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_flat_c7),
	gsSPDisplayList(gfx_battlefield_flat_c4),
	gsSPDisplayList(gfx_battlefield_flat_c3),
	gsSPDisplayList(gfx_battlefield_flat_c10),
	gsSPDisplayList(gfx_battlefield_flat_c9),
	gsSPDisplayList(gfx_battlefield_flat_c6),
	gsSPDisplayList(gfx_battlefield_flat_2),
	gsSPDisplayList(gfx_battlefield_flat_3),
	gsSPDisplayList(gfx_battlefield_flat_1),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_battlefield_flat_c12),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

#include "xlu_decal.h"

static Gfx gfx_battlefield_xlu_decal_c21[] =
{
	gsDPLoadImageBlock(txt_c_21, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32),
#include "xlu_decal.c21.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_xlu_decal[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_IA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_xlu_decal_c21),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "tex_edge.h"

static Gfx gfx_battlefield_tex_edge_c16[] =
{
	gsDPLoadImageBlock(txt_c_16, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "tex_edge.c16.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_tex_edge_0[] =
{
	gsDPLoadImageBlock(txt_bob_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "tex_edge.0.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_tex_edge[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_TEX_EDGE2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_PASS2),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_tex_edge_c16),
	gsSPDisplayList(gfx_battlefield_tex_edge_0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_shade[] =
{
	gdSPDefLight(0.2, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.2, 0x64, 0x64, 0x64),
};

#include "shade.h"

static Gfx gfx_battlefield_shade_c17[] =
{
	gsDPLoadImageBlock(txt_c_17, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_shade[0]),
#include "shade.c17.h"
	gsSPSetLights1N(light_battlefield_shade[1]),
#include "shade.c17_shade.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_shade_c11[] =
{
	gsDPLoadImageBlock(txt_c_11, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_shade[0]),
#include "shade.c11.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_shade_c18[] =
{
	gsDPLoadImageBlock(txt_c_18, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "shade.c18.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_shade_4[] =
{
	gsDPLoadImageBlock(txt_bob_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "shade.4.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_shade_c19[] =
{
	gsDPLoadImageBlock(txt_c_19, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "shade.c19.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_battlefield_shade_c12[] =
{
	gsDPLoadImageBlock(txt_c_12, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "shade.c12.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_shade[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_shade_c17),
	gsSPDisplayList(gfx_battlefield_shade_c11),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_shade_c18),
	gsSPDisplayList(gfx_battlefield_shade_4),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_shade_c19),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_battlefield_shade_c12),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_battlefield_cave[] =
{
	gdSPDefLight(0.2, 0xFF, 0xFF, 0xFF),
};

#include "cave.h"

static Gfx gfx_battlefield_cave_c17[] =
{
	gsDPLoadImageBlock(txt_c_17, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_battlefield_cave[0]),
#include "cave.c17_cave.h"
	gsSPEndDisplayList(),
};

Gfx gfx_battlefield_cave[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_2CYCLE),
	gsDPSetRenderMode(G_RM_FOG_SHADE_A, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetDepthSource(G_ZS_PIXEL),
	gsDPSetFogColor(0xA0, 0xA0, 0xA0, 0xFF),
	gsSPFogPosition(980, 1000),
	gsSPSetGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_PASS2),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_battlefield_cave_c17),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_NOOP2),
	gsSPClearGeometryMode(G_FOG),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_battlefield_smooth[];
extern Gfx gfx_battlefield_flat[];
extern Gfx gfx_battlefield_xlu_decal[];
extern Gfx gfx_battlefield_tex_edge[];
extern Gfx gfx_battlefield_shade[];
extern Gfx gfx_battlefield_cave[];

S_SCRIPT s_battlefield[] =
{
	sScene(160, 120, 160, 120, 10),
	sStart(),
		sLayer(FALSE),
		sStart(),
			sOrtho(100),
			sStart(),
				sBackground(BACK_A, s_stage_back),
			sEnd(),
		sEnd(),
		sLayer(TRUE),
		sStart(),
			sPerspective(45, 100, 30000, s_stage_perspective),
			sStart(),
				sCamera(1, 0, 2000, 6000, 3072, 0, -4608, s_stage_camera),
				sStart(),
					sGfx(LAYER_OPA_SURF, gfx_battlefield_smooth),
					sGfx(LAYER_OPA_SURF, gfx_battlefield_flat),
					sGfx(LAYER_XLU_DECAL, gfx_battlefield_xlu_decal),
					sGfx(LAYER_TEX_EDGE, gfx_battlefield_tex_edge),
					sGfx(LAYER_OPA_SURF, gfx_battlefield_shade),
					sGfx(LAYER_OPA_SURF, gfx_battlefield_cave),
					sObject(),
					sCallback(WEATHER_NULL, s_stage_weather),
				sEnd(),
			sEnd(),
		sEnd(),
		sLayer(FALSE),
		sStart(),
			sCallback(0, s_cannon_overlay),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
