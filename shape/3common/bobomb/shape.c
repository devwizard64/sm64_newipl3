#ifndef SCRIPT

static u16 txt_bobomb_black_l[] =
{
#include "black_l.rgba16.h"
};

static u16 txt_bobomb_black_r[] =
{
#include "black_r.rgba16.h"
};

static u16 txt_bobomb_red_l[] =
{
#include "red_l.rgba16.h"
};

static u16 txt_bobomb_red_r[] =
{
#include "red_r.rgba16.h"
};

static u16 txt_bobomb_eyes_open[] =
{
#include "eyes_open.rgba16.h"
};

static u16 txt_bobomb_eyes_closed[] =
{
#include "eyes_closed.rgba16.h"
};

#include "eyes.h"

static Gfx gfx_bobomb_eyes_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_bobomb_eyes_end[] =
{
#include "eyes.eyes.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_bobomb_eyes_open[] =
{
	gsSPDisplayList(gfx_bobomb_eyes_start),
	gsDPLoadImageBlock(txt_bobomb_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_bobomb_eyes_end),
	gsSPEndDisplayList(),
};

Gfx gfx_bobomb_eyes_closed[] =
{
	gsSPDisplayList(gfx_bobomb_eyes_start),
	gsDPLoadImageBlock(txt_bobomb_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_bobomb_eyes_end),
	gsSPEndDisplayList(),
};

static Vtx vtx_bobomb_body_l[] =
{
	{{{     0,     49,      0}, 0, {   990,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -49,    -49,      0}, 0, {     0,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,    -49,      0}, 0, {   990,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -49,     49,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Vtx vtx_bobomb_body_r[] =
{
	{{{    49,     49,      0}, 0, {   990,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,    -49,      0}, 0, {     0,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    49,    -49,      0}, 0, {   990,   2012}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     49,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Gfx gfx_bobomb_body_black[] =
{
	gsDPLoadImageBlock(txt_bobomb_black_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPVertex(&vtx_bobomb_body_l[0], 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsDPLoadImageBlock(txt_bobomb_black_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPVertex(&vtx_bobomb_body_r[0], 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_bobomb_body_red[] =
{
	gsDPLoadImageBlock(txt_bobomb_red_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPVertex(&vtx_bobomb_body_l[0], 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsDPLoadImageBlock(txt_bobomb_red_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPVertex(&vtx_bobomb_body_r[0], 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_bobomb_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_bobomb_body_black),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_redbobomb_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_bobomb_body_red),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_bobomb[] =
{
	gdSPDefLight(0.25, 0xFF, 0x99, 0x12),
	gdSPDefLight(0.25, 0xB2, 0xB2, 0xB2),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
};

#include "footR.h"
#include "footL.h"
#include "cap.h"

Gfx gfx_bobomb_footR[] =
{
	gsSPSetLights1N(light_bobomb[0]),
#include "footR.foot.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bobomb_footL[] =
{
	gsSPSetLights1N(light_bobomb[0]),
#include "footL.foot.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bobomb_cap[] =
{
	gsSPSetLights1N(light_bobomb[1]),
#include "cap.cap.h"
	gsSPEndDisplayList(),
};

static short anime_bobomb_0_val[] =
{
	     0,     -8,     -8,     -6,     -4,     -1,      0,      1,
	     3,      5,      6,      7,      8,      7,      6,      5,
	     3,      1,      0,     -1,     -3,     -4,     -6,     -7,
	    -8,     -8,    162,    163,    166,    170,    173,    174,
	   173,    171,    168,    165,    163,    162,    163,    165,
	   168,    171,    173,    174,    173,    171,    169,    167,
	   164,    163,    162,  16383,      0,     -4,    -14,    -28,
	   -45,    -60,    -72,    -78,    -77,    -65,    -40,      0,
	   131,    363,    596,    730,    724,    638,    518,    413,
	   318,    209,    106,     30,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,     -2,     -6,     -7,      0,     22,     56,     87,
	   101,     90,     65,     35,     10,      0, -22954, -22814,
	-22423, -21823, -21057, -20168, -19197, -18187, -17181, -16221,
	-15350, -14610, -13858, -13134, -12759, -13052, -14418, -16580,
	-18833, -20475, -21437, -22140, -22609, -22872, -22954, -14401,
	-13741, -12568, -12090, -13555, -15771, -17653, -19507, -20969,
	-22003, -22644, -22641, -22153, -21528, -20798, -19994, -19145,
	-18282, -17435, -16635, -15912, -15297, -14819, -14511, -14401,
	 26917,  26483,  25290,  23509,  21307,  18852,  16313,  13858,
	 11656,   9875,   8682,   8248,   8562,   9437,  10771,  12462,
	 14408,  16507,  18657,  20756,  22702,  24393,  25728,  26603,
	 26917,   8456,   8845,   9911,  11503,  13471,  15666,  17935,
	 20129,  22098,  23690,  24756,  25144,  24863,  24081,  22888,
	 21377,  19637,  17761,  15839,  13963,  12224,  10712,   9520,
	  8737,   8456,    518,    477,    370,    225,     68,    -72,
	  -217,   -385,   -555,   -705,   -810,   -848,   -815,   -729,
	  -605,   -459,   -307,   -162,    -40,     74,    198,    318,
	   420,    492,    518,     52,     48,     39,     26,     11,
	    -2,    -18,    -37,    -57,    -75,    -88,    -93,    -90,
	   -80,    -66,    -49,    -32,    -16,     -2,      8,     21,
	    32,     42,     49,     52,  31725,  31852,  32154,  32514,
	-32720, -32601, -32704,  32584,  32270,  31958,  31718,  31623,
	 31696,  31882,  32137,  32415,  32672, -32671, -32592, -32677,
	 32633,  32339,  32044,  31816,  31725,
};

static u16 anime_bobomb_0_tbl[] =
{
	   25,     1,    25,    26,     1,     0,
	    1,     0,     1,    51,     1,     0,
	   25,   202,    25,   227,    25,   252,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    25,   152,
	   25,    52,    25,    77,    25,   102,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    25,   177,
	    1,     0,     1,     0,    25,   127,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bobomb_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	25,
	/*joint*/	13,
	anime_bobomb_0_val,
	anime_bobomb_0_tbl,
	0,
};

static short anime_bobomb_1_val[] =
{
	     0,    177,      0,      2,      8,     14,     16,     14,
	    10,      5,      1,      0,  16383,   4067,   4100,   4172,
	  4243,   4276,   4254,   4202,   4141,   4089,   4067, -17426,
	-16643, -14923, -13202, -12419, -12940, -14182, -15664, -16905,
	-17426,   -987,   -662,     50,    763,   1088,    872,    357,
	  -256,   -771,   -987,  -3844,  -4175,  -4903,  -5630,  -5961,
	 -5741,  -5216,  -4589,  -4064,  -3844, -10047, -11446, -14524,
	-17601, -19000, -18069, -15849, -13199, -10978, -10047,  16383,
	 16383,  29950,  30293,  31046,  31798,  32141,  31913,  31370,
	 30721,  30178,  29950,
};

static u16 anime_bobomb_1_tbl[] =
{
	    1,     0,     1,     1,    10,     2,
	    1,     0,     1,    12,     1,     0,
	    1,     0,     1,     0,    10,    65,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    63,
	    1,     0,    10,    13,    10,    23,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    64,
	   10,    33,    10,    43,    10,    53,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bobomb_1 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	10,
	/*joint*/	13,
	anime_bobomb_1_val,
	anime_bobomb_1_tbl,
	0,
};

ANIME *anime_bobomb[] =
{
	&anime_bobomb_0,
	&anime_bobomb_1,
};

#else /* SCRIPT */

extern Gfx gfx_bobomb_eyes_open[];
extern Gfx gfx_bobomb_eyes_closed[];
extern Gfx gfx_bobomb_body[];
extern Gfx gfx_redbobomb_body[];
extern Gfx gfx_bobomb_footR[];
extern Gfx gfx_bobomb_footL[];
extern Gfx gfx_bobomb_cap[];

S_SCRIPT s_bobomb[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.375),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, gfx_bobomb_body),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 57, -60),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 91, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bobomb_footR, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 55, 62),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 91, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bobomb_footL, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, gfx_bobomb_cap, 0, 0, 0),
					sSelect(2, s_objlib_8029DB48),
					sStart(),
						sJoint(LAYER_TEX_EDGE, gfx_bobomb_eyes_open, 0, 0, 0),
						sJoint(LAYER_TEX_EDGE, gfx_bobomb_eyes_closed, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_redbobomb[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.375),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, gfx_redbobomb_body),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 57, -60),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 91, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bobomb_footR, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 55, 62),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 91, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bobomb_footL, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, gfx_bobomb_cap, 0, 0, 0),
					sSelect(2, s_objlib_8029DB48),
					sStart(),
						sJoint(LAYER_TEX_EDGE, gfx_bobomb_eyes_open, 0, 0, 0),
						sJoint(LAYER_TEX_EDGE, gfx_bobomb_eyes_closed, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
