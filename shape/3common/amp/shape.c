#ifndef SCRIPT

static u16 txt_amp_arc[] =
{
#include "arc.rgba16.h"
};

static u16 txt_amp_eyes[] =
{
#include "eyes.rgba16.h"
};

static u16 txt_amp_body[] =
{
#include "body.rgba16.h"
};

static u16 txt_amp_mouth[] =
{
#include "mouth.rgba16.h"
};

#include "arc.h"

static Gfx gfx_amp_arc_arc[] =
{
	gsDPLoadImageBlock(txt_amp_arc, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32),
#include "arc.arc.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_arc[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 5, 0, 0),
	gsSPDisplayList(gfx_amp_arc_arc),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "eyes.h"

static Gfx gfx_amp_eyes_eyes[] =
{
	gsDPLoadImageBlock(txt_amp_eyes, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "eyes.eyes.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_eyes[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_amp_eyes_eyes),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "mouth.h"

static Gfx gfx_amp_mouth_mouth[] =
{
	gsDPLoadImageBlock(txt_amp_mouth, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "mouth.mouth.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_mouth[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_amp_mouth_mouth),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "body.h"

static Gfx gfx_amp_body_body[] =
{
	gsDPLoadImageBlock(txt_amp_body, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "body.body.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_amp_body_body),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_amp_old[] =
{
	gdSPDefLight(0.25, 0xCF, 0xFF, 0x00),
};

#include "arcA_old.h"
#include "arcB_old.h"
#include "arcC_old.h"
#include "arcD_old.h"
#include "body_old.h"
#include "mouth_old.h"
#include "anger_old.h"
#include "eyes_old.h"

Gfx gfx_amp_arcA_old[] =
{
	gsSPSetLights1N(light_amp_old[0]),
#include "arcA_old.arc_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_arcB_old[] =
{
	gsSPSetLights1N(light_amp_old[0]),
#include "arcB_old.arc_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_arcC_old[] =
{
	gsSPSetLights1N(light_amp_old[0]),
#include "arcC_old.arc_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_arcD_old[] =
{
	gsSPSetLights1N(light_amp_old[0]),
#include "arcD_old.arc_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_body_old[] =
{
	gsSPSetLights1N(light_amp_old[1]),
#include "body_old.shade_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_mouth_old[] =
{
	gsSPSetLights1N(light_amp_old[1]),
#include "mouth_old.shade_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_anger_old[] =
{
	gsSPSetLights1N(light_amp_old[1]),
#include "anger_old.shade_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_amp_eyes_old[] =
{
	gsSPSetLights1N(light_amp_old[1]),
#include "eyes_old.shade_old.h"
	gsSPEndDisplayList(),
};

static short anime_amp_0_val[] =
{
	     0,      0,   3449,   6898,  10347,  13796,  17245,  20694,
	 24144,  27593,  31042, -31042, -27593, -24144, -20694, -17245,
	-13796, -10347,  -6898,  -3449,   6258,      0,   6898,  13796,
	 20694,  27593, -31042, -24144, -17245, -10347,  -3449,   3449,
	 10347,  17245,  24144,  31042, -27593, -20694, -13796,  -6898,
	     0,   6898,  13796,  20694,  27593, -31042, -24144, -17245,
	-10347,  -3449,   3449,  10347,  17245,  24144,  31042, -27593,
	-20694, -13796,  -6898, -32767,  22419,  12072,   1724,  -8622,
	-18970, -29317,  25868,  15521,   5173,  -5173, -15521, -25868,
	 29317,  18970,   8622,  -1724, -12072, -22419,  16383,      0,
	  3452,   6905,  10358,  13811,  17264,  20717,  24170,  27623,
	 31076, -31005, -27552, -24099, -20646, -17193, -13740, -10287,
	 -6834,  -3381, -16383,  16383,      0,   3451,   6903,  10355,
	 13807,  17259,  20710,  24162,  27614,  31066, -31015, -27563,
	-24112, -20660, -17208, -13756, -10304,  -6853,  -3401, -16383,
	 16383, -16383, -12934,  -9486,  -6037,  -2589,    859,   4307,
	  7756,  11204,  14653,  18101,  21550,  24998,  28447,  31895,
	-30189, -26741, -23292, -19843, -16383,  16383,  19833,  23282,
	 26732,  30181, -31902, -28453, -25003, -21553, -18104, -14654,
	-11205,  -7755,  -4305,   -856,   2593,   6042,   9492,  12941,
	-16383,  16383,
};

static u16 anime_amp_0_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   161,
	    1,     0,    19,   141,     1,   160,
	    1,     0,     1,     0,    19,     1,
	    1,     0,    19,   121,     1,   140,
	    1,    20,     1,     0,    19,    21,
	    1,     0,    19,   100,     1,   119,
	    1,     0,     1,     0,    19,    40,
	    1,     0,    19,    79,     1,    98,
	    1,     0,     1,     0,    19,    59,
	    1,     0,     1,     0,     1,   120,
	    1,     0,     1,     0,     1,    99,
	    1,     0,     1,     0,     1,    78,
};

static ANIME anime_amp_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	19,
	/*joint*/	13,
	anime_amp_0_val,
	anime_amp_0_tbl,
	0,
};

ANIME *anime_amp[] =
{
	&anime_amp_0,
};

#else /* SCRIPT */

extern Gfx gfx_amp_arc[];
extern Gfx gfx_amp_eyes[];
extern Gfx gfx_amp_mouth[];
extern Gfx gfx_amp_body[];
UNUSED static long long align_amp_start = 0;

S_SCRIPT s_amp[] =
{
	sShadow(100, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_TEX_EDGE, gfx_amp_eyes, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
							sJoint(LAYER_TEX_EDGE, gfx_amp_arc, 0, 0, 0),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
							sJoint(LAYER_TEX_EDGE, gfx_amp_arc, 0, 0, 0),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
							sJoint(LAYER_TEX_EDGE, gfx_amp_arc, 0, 0, 0),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
							sJoint(LAYER_TEX_EDGE, gfx_amp_arc, 0, 0, 0),
						sEnd(),
					sEnd(),
				sEnd(),
				sJoint(LAYER_TEX_EDGE, gfx_amp_mouth, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sBillboard(0, 0, 0),
					sStart(),
						sGfx(LAYER_TEX_EDGE, gfx_amp_body),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

UNUSED static long long align_amp_end = 0;

#endif /* SCRIPT */
