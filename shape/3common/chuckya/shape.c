#ifndef SCRIPT

UNUSED static Lights1 light_chuckya[] =
{
	gdSPDefLight(0.25, 0x9A, 0x00, 0x9C),
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xFF, 0x00, 0x00),
	gdSPDefLight(0.25, 0x39, 0x39, 0x39),
	gdSPDefLight(0.25, 0xE4, 0x83, 0x00),
	gdSPDefLight(0.25, 0xFF, 0x9E, 0x00),
	gdSPDefLight(0.25, 0x57, 0x53, 0x58),
};

static u16 txt_chuckya_eyes[] =
{
#include "eyes.rgba16.h"
};

UNUSED static u16 txt_chuckya_purple[] =
{
#include "purple.rgba16.h"
};

static u16 txt_chuckya_red[] =
{
#include "red.rgba16.h"
};

static u16 txt_chuckya_purple_l[] =
{
#include "purple_l.rgba16.h"
};

static u16 txt_chuckya_purple_r[] =
{
#include "purple_r.rgba16.h"
};

#include "body.h"

static Gfx gfx_chuckya_body_purple_l[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body.purple_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chuckya_body_purple_r[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body.purple_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_chuckya_body_purple_l),
	gsSPDisplayList(gfx_chuckya_body_purple_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "armL.h"

static Gfx gfx_chuckya_armL_purple_l[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "armL.purple_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chuckya_armL_purple_r[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "armL.purple_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_armL[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_chuckya_armL_purple_l),
	gsSPDisplayList(gfx_chuckya_armL_purple_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "armR.h"

static Gfx gfx_chuckya_armR_purple_l[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "armR.purple_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_chuckya_armR_purple_r[] =
{
	gsDPLoadImageBlock(txt_chuckya_purple_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "armR.purple_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_armR[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_chuckya_armR_purple_l),
	gsSPDisplayList(gfx_chuckya_armR_purple_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "handL.h"

static Gfx gfx_chuckya_handL_red[] =
{
	gsDPLoadImageBlock(txt_chuckya_red, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "handL.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_handL[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chuckya_handL_red),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "handR.h"

static Gfx gfx_chuckya_handR_red[] =
{
	gsDPLoadImageBlock(txt_chuckya_red, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "handR.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_handR[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chuckya_handR_red),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "antenna_end.h"

static Gfx gfx_chuckya_antenna_end_red[] =
{
	gsDPLoadImageBlock(txt_chuckya_red, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "antenna_end.red.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_antenna_end[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chuckya_antenna_end_red),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_chuckya_eyes[] =
{
	gdSPDefLight(0.4, 0xFF, 0xFF, 0xFF),
};

#include "eyes.h"

static Gfx gfx_chuckya_eyes_eyes[] =
{
	gsDPLoadImageBlock(txt_chuckya_eyes, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_chuckya_eyes[0]),
#include "eyes.eyes.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_eyes[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_chuckya_eyes_eyes),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Lights1 light_chuckya_base[] =
{
	gdSPDefLight(0.3, 0x89, 0x89, 0x8A),
};

#include "base.h"

static Gfx gfx_chuckya_base_base[] =
{
	gsSPSetLights1N(light_chuckya_base[0]),
#include "base.base.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_base[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_chuckya_base_base),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

static Lights1 light_chuckya_antenna[] =
{
	gdSPDefLight(0.3, 0xFF, 0xFF, 0x00),
};

#include "antenna.h"

static Gfx gfx_chuckya_antenna_antenna[] =
{
	gsSPSetLights1N(light_chuckya_antenna[0]),
#include "antenna.antenna.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_antenna[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_chuckya_antenna_antenna),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

static Lights1 light_chuckya_back[] =
{
	gdSPDefLight(0.25, 0x32, 0x32, 0x32),
};

#include "back.h"

static Gfx gfx_chuckya_back_back[] =
{
	gsSPSetLights1N(light_chuckya_back[0]),
#include "back.back.h"
	gsSPEndDisplayList(),
};

Gfx gfx_chuckya_back[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsSPDisplayList(gfx_chuckya_back_back),
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static short anime_chuckya_0_val[] =
{
	     0,      1,  16383,  -2136,  -1709,   -612,    874,   2474,
	  3908,   4897,   5164,   2763,  -1552,  -4013,  -2283,   1301,
	  3495,   3013,   1409,   -298,  -1093,   1820,  -3547,  30795,
	  -693,   -690,   -682,   -671,   -659,   -648,   -640,   -637,
	  -637,   -637,   -637,   -637,   -637,   -637,   -637,   -637,
	  -637,   -637,   -174,    -81,    156,    483,    839,   1165,
	  1404,   1497,   1497,   1497,   1497,   1497,   1497,   1497,
	  1497,   1497,   1497,   1497, -31551, -31955,  32535,  31110,
	 29557,  28132,  27090,  26686,  26686,  26686,  26686,  26686,
	 26686,  26686,  26686,  26686,  26686,  26686,   -889,   -575,
	   234,   1348,   2570,   3708,   4566,   4951,   3906,   1694,
	   -54,   -727,   -935,   -889,   -586,    -54,    450,    675,
	-16383, -32767,  -7332,  16383, -32767,  -7332,   1722,   1158,
	  -222,  -1955,  -4166,  -6812,  -9181, -10559, -11093, -11429,
	-11599, -11638, -11579, -11455, -11300, -11148, -11032, -10986,
	  1247,    251,  -1856,  -3754,  -5148,  -6489,  -7582,  -8227,
	 -8530,  -8736,  -8862,  -8921,  -8929,  -8902,  -8854,  -8801,
	 -8758,  -8740,  -8301,  -8658,  -9160,  -8953,  -7534,  -5469,
	 -3503,  -2382,  -2027,  -1838,  -1785,  -1838,  -1967,  -2140,
	 -2327,  -2499,  -2624,  -2673,  31728,  31950,  32546, -32121,
	-30787, -29104, -27663, -27051, -27051, -27051, -27051, -27051,
	-27051, -27051, -27051, -27051, -27051, -27051, -30758, -31813,
	 31492,  29497,  27988,  26499,  25363,  24910,  24910,  24910,
	 24910,  24910,  24910,  24910,  24910,  24910,  24910,  24910,
	 26441,  25971,  25206,  25111,  26249,  28024,  29657,  30374,
	 30374,  30374,  30374,  30374,  30374,  30374,  30374,  30374,
	 30374,  30374,  24696,  16383,  -8313, -24696, -16383,  -8313,
	-16626,  21319, -16310,  19022,  18819,  18293,  17564,  16755,
	 15986,  15380,  15058,  15185,  15697,  16375,  17000,  17353,
	 17162,  16621,  16206,  16246,  16383,
};

static u16 anime_chuckya_0_tbl[] =
{
	    1,     0,     1,     0,     1,     1,
	    1,     0,     1,     2,     1,     0,
	    1,     0,     1,     0,    18,   219,
	    1,     0,     1,     0,     1,   218,
	    1,     0,     1,     0,     1,   217,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   216,
	    1,     0,     1,     0,    18,    78,
	    1,     0,     1,     0,    18,     3,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   213,     1,   214,     1,   215,
	   18,   102,    18,   120,    18,   138,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    96,     1,    97,     1,    98,
	    1,    21,     1,    22,     1,    23,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   210,     1,   211,     1,   212,
	   18,   156,    18,   174,    18,   192,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    99,     1,   100,     1,   101,
	   18,    24,    18,    42,    18,    60,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	18,
	/*joint*/	30,
	anime_chuckya_0_val,
	anime_chuckya_0_tbl,
	0,
};

static short anime_chuckya_1_val[] =
{
	     0,      1,  16383,  -1093,  -1507,  -2241,  -2528,  -2021,
	 -1139,   -277,    170,    -78,   -761,  -1451,  -1724,  -1294,
	  -439,    413,    840,    601,    -29,   -706,  -1084,   1820,
	 -3547,  30795,   -637,   1497,  26686,    675,    820,   1126,
	  1401,   1452,   1219,    828,    365,    -80,   -425,   -580,
	  -445,    -70,    406,    847,   1115,   1129,    981,    791,
	   678, -16383, -32767,  -7332,  16383, -32767,  -7332, -10986,
	 -8740,  -2673, -27051,  24910,  30374,  24696,  16383,  -8313,
	-24696, -16383,  -8313, -16626,  21319, -16310,  16383,  16356,
	 16294,  16222,  16167,  16156,  16189,  16247,  16320,  16401,
	 16481,  16553,  16608,  16639,  16632,  16590,  16528,  16463,
	 16410,  16384,
};

static u16 anime_chuckya_1_tbl[] =
{
	    1,     0,     1,     0,     1,     1,
	    1,     0,     1,     2,     1,     0,
	    1,     0,     1,     0,    20,    70,
	    1,     0,     1,     0,     1,    69,
	    1,     0,     1,     0,     1,    68,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    67,
	    1,     0,     1,     0,    20,    29,
	    1,     0,     1,     0,    20,     3,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    64,     1,    65,     1,    66,
	    1,    55,     1,    56,     1,    57,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    49,     1,    50,     1,    51,
	    1,    23,     1,    24,     1,    25,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    61,     1,    62,     1,    63,
	    1,    58,     1,    59,     1,    60,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    52,     1,    53,     1,    54,
	    1,    26,     1,    27,     1,    28,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_1 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	20,
	/*joint*/	30,
	anime_chuckya_1_val,
	anime_chuckya_1_tbl,
	0,
};

static short anime_chuckya_2_val[] =
{
	     0,     13,     11,      7,      0,     -5,    -12,    -16,
	   -18,    -16,    -12,     -5,      0,      7,     11,     13,
	   169,  16383,  -2136,  -3611,  -6198,  -7142,  -5127,  -1683,
	  1676,   3435,   3461,   2795,   1688,    391,   -846,  -1772,
	 -2136,    938, -32675, -32675,   -889,    229,   2712,   5244,
	  6516,   6184,   5053,   3530,   2022,    936,    272,   -239,
	  -602,   -817,   -889, -16383, -32767,  -7332,  16383, -32767,
	 -7332,      0,     16,     57,    114,    177,    234,    275,
	   292,    275,    234,    177,    114,     57,     16,      0,
	 -3650,  -3326,  -2490,  -1347,   -102,   1040,   1876,   2200,
	  1876,   1040,   -102,  -1347,  -2490,  -3326,  -3650,   1065,
	  1025,    922,    781,    627,    486,    383,    342,    383,
	   486,    627,    781,    922,   1025,   1065, -32763, -32756,
	-32738, -32714, -32687, -32663, -32645, -32638, -32645, -32663,
	-32687, -32714, -32738, -32756, -32763, -30993, -31179, -31656,
	-32309,  32513,  31860,  31383,  31198,  31383,  31860,  32513,
	-32309, -31656, -31179, -30993, -32012, -32051, -32151, -32288,
	-32437, -32574, -32674, -32713, -32674, -32574, -32437, -32288,
	-32151, -32051, -32012,  24696,  16383,  -8313, -24696, -16383,
	 -8313, -16626,  21319,  21730,  22605,  23412,  23614,  22973,
	 21835,  20536,  19417,  18816,  18929,  19532,  20328,  21022,
	 21319, -16310,    834,    747,    524,    218,   -114,   -419,
	  -643,   -730,   -643,   -419,   -114,    218,    524,    747,
	   834,  13703,
};

static u16 anime_chuckya_2_tbl[] =
{
	   15,     1,     1,     0,     1,    16,
	    1,     0,     1,    17,     1,     0,
	    1,     0,    15,   170,     1,   185,
	    1,     0,     1,     0,     1,   169,
	    1,     0,     1,     0,    15,   154,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   153,
	    1,     0,     1,     0,    15,    36,
	    1,     0,     1,     0,    15,    18,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   150,     1,   151,     1,   152,
	   15,    57,    15,    72,    15,    87,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    51,     1,    52,     1,    53,
	    1,     0,     1,    33,     1,    34,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   147,     1,   148,     1,   149,
	   15,   102,    15,   117,    15,   132,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    54,     1,    55,     1,    56,
	    1,     0,     1,     0,     1,    35,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_2 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	15,
	/*joint*/	30,
	anime_chuckya_2_val,
	anime_chuckya_2_tbl,
	0,
};

static short anime_chuckya_3_val[] =
{
	     0,      1,  16383,  -1093,   -660,    453,   1975,   3630,
	  5142,   6237,   6640,   5886,   4092,   1861,   -204,  -1504,
	 -2201,  -2833,  -3353,  -3715,  -3873,  -3780,  -3389,  -2656,
	   662,   5873,   8622,   7544,   4881,   1681,  -1007,  -2136,
	  1820,   1814,   1794,   1762,   1719,   1667,   1605,   1536,
	  1459,   1377,   1289,   1198,   1104,   1007,    910,    813,
	   716,    622,    530,    443,    360,    284,    214,    153,
	   100,     58,     26,      6,      0,  -3547,  -3530,  -3482,
	 -3404,  -3299,  -3169,  -3017,  -2846,  -2658,  -2454,  -2239,
	 -2014,  -1781,  -1544,  -1304,  -1064,   -827,   -594,   -369,
	  -153,     49,    237,    408,    560,    690,    795,    873,
	   921,    938,  30795,  30803,  30825,  30861,  30909,  30969,
	 31039,  31117,  31204,  31297,  31396,  31500,  31607,  31716,
	 31827,  31937,  32046,  32153,  32257,  32356,  32449,  32536,
	 32615,  32684,  32744, -32741, -32705, -32682, -32675,   -637,
	  -635,   -628,   -617,   -602,   -583,   -562,   -537,   -511,
	  -482,   -451,   -419,   -386,   -352,   -318,   -284,   -250,
	  -217,   -185,   -155,   -126,    -99,    -75,    -53,    -35,
	   -20,     -9,     -2,      0,   1497,   1491,   1475,   1449,
	  1414,   1370,   1320,   1263,   1200,   1132,   1060,    985,
	   907,    828,    748,    668,    589,    511,    436,    364,
	   296,    233,    176,    126,     82,     47,     21,      5,
	     0,  26686,  26709,  26776,  26883,  27027,  27206,  27414,
	 27650,  27909,  28189,  28485,  28795,  29115,  29442,  29772,
	 30102,  30429,  30749,  31059,  31355,  31634,  31894,  32129,
	 32338,  32516,  32661, -32765, -32698, -32675,    675,   1266,
	  2789,   4868,   7128,   9192,  10686,  11233,  10196,   7735,
	  4677,   1843,     59,   -865,  -1650,  -2261,  -2666,  -2832,
	 -2727,  -2316,  -1569,   1890,   7359,  10257,   9153,   6395,
	  3075,    283,   -889, -16383, -32767,  -7332,  16383, -32767,
	 -7332, -10986, -10986, -10986, -10986, -10986, -10986, -10986,
	-10986, -10986, -10986, -10986, -10986, -10986, -10986, -10986,
	 -9987,  -7557,  -4545,  -1800,   -174,    451,    797,    917,
	   867,    702,    478,    249,     71,      0,  -8740,  -8740,
	 -8740,  -8740,  -8740,  -8740,  -8740,  -8740,  -8740,  -8740,
	 -8740,  -8740,  -8740,  -8740,  -8740,  -8175,  -6788,  -5044,
	 -3408,  -2343,  -1769,  -1292,   -903,   -595,   -360,   -191,
	   -79,    -18,      0,  -2673,  -2673,  -2673,  -2673,  -2673,
	 -2673,  -2673,  -2673,  -2673,  -2673,  -2673,  -2673,  -2673,
	 -2673,  -2673,  -3354,  -4962,  -6844,  -8345,  -8813,  -8263,
	 -7243,  -5895,  -4363,  -2789,  -1317,    -88,    753,   1066,
	-27051, -27051, -27051, -27051, -27051, -27051, -27051, -27051,
	-27051, -27051, -27051, -27051, -27051, -27051, -27051, -28128,
	-30721,  31659,  28902,  27499,  27357,  27670,  28320,  29192,
	 30167,  31129,  31961,  32546, -32767,  24910,  24910,  24910,
	 24910,  24910,  24910,  24910,  24910,  24910,  24910,  24910,
	 24910,  24910,  24910,  24910,  25438,  26731,  28354,  29871,
	 30848,  31357,  31769,  32093,  32341,  32521,  32643,  32718,
	 32756, -32767,  30374,  30374,  30374,  30374,  30374,  30374,
	 30374,  30374,  30374,  30374,  30374,  30374,  30374,  30374,
	 30374,  29759,  28306,  26604,  25241,  24805,  25282,  26177,
	 27364,  28717,  30108,  31410,  32498, -32290, -32013,  24696,
	 16383,  -8313, -24696, -16383,  -8313, -16626,  21319,  20989,
	 20124,  18911,  17538,  16192,  15060,  14331,  13851,  13383,
	 12990,  12735,  12679,  12885,  13415,  14331,  16984,  21407,
	 25681,  27890,  28089,  27711,  26903,  25813,  24590,  23381,
	 22334,  21597,  21319, -16310,  16383,  16362,  16306,  16222,
	 16121,  16011,  15900,  15798,  15713,  15655,  15632,  15635,
	 15651,  15676,  15711,  15753,  15801,  15853,  15908,  15965,
	 16022,  16078,  16131,  16179,  16223,  16259,  16286,  16304,
	 16310,
};

static u16 anime_chuckya_3_tbl[] =
{
	    1,     0,     1,     0,     1,     1,
	    1,     0,     1,     2,     1,     0,
	    1,     0,     1,     0,    29,   452,
	    1,     0,     1,     0,     1,   451,
	    1,     0,     1,     0,    29,   422,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   421,
	    1,     0,     1,     0,    29,   206,
	    1,     0,     1,     0,    29,     3,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   418,     1,   419,     1,   420,
	   29,   241,    29,   270,    29,   299,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   235,     1,   236,     1,   237,
	   29,    32,    29,    61,    29,    90,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   415,     1,   416,     1,   417,
	   29,   328,    29,   357,    29,   386,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   238,     1,   239,     1,   240,
	   29,   119,    29,   148,    29,   177,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_3 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	29,
	/*joint*/	30,
	anime_chuckya_3_val,
	anime_chuckya_3_tbl,
	0,
};

static short anime_chuckya_4_val[] =
{
	     0,      1,  16383,  -2136,  -1622,   -668,   -154,   -668,
	 -1622,  -2136,   1820,  -3547,  30795,   -693,   -174, -31551,
	  -889,   -726,   -425,   -263,   -425,   -726,   -889, -16383,
	-32767,  -7332,  16383, -32767,  -7332,   1722,   1247,  -8301,
	 31728, -30758,  26441,  24696,  16383,  -8313, -24696, -16383,
	 -8313, -16626,  21319, -16310,  19022,  18860,  18558,  18396,
	 18558,  18860,  19022,
};

static u16 anime_chuckya_4_tbl[] =
{
	    1,     0,     1,     0,     1,     1,
	    1,     0,     1,     2,     1,     0,
	    1,     0,     1,     0,     7,    44,
	    1,     0,     1,     0,     1,    43,
	    1,     0,     1,     0,     1,    42,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    41,
	    1,     0,     1,     0,     7,    16,
	    1,     0,     1,     0,     7,     3,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    38,     1,    39,     1,    40,
	    1,    29,     1,    30,     1,    31,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    23,     1,    24,     1,    25,
	    1,    10,     1,    11,     1,    12,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    35,     1,    36,     1,    37,
	    1,    32,     1,    33,     1,    34,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,    26,     1,    27,     1,    28,
	    1,    13,     1,    14,     1,    15,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_4 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	7,
	/*joint*/	30,
	anime_chuckya_4_val,
	anime_chuckya_4_tbl,
	0,
};

static short anime_chuckya_5_val[] =
{
	     0,      1,  16383,  -2136,  -2116,  -2058,  -1967,  -1845,
	 -1696,  -1524,  -1332,  -1124,   -903,   -673,   -439,   -202,
	    32,    262,    679,   1287,   1799,   1927,   1700,   1359,
	   931,    447,    -65,   -579,  -1063,  -1489,  -1829,  -2055,
	   938,    902,    800,    643,    442,    208,    -46,   -312,
	  -579,   -834,  -1068,  -1268,  -1425,  -1528,  -1564,  -1532,
	 -1442,  -1304,  -1125,   -915,   -683,   -437,   -187,     57,
	   289,    499,    678,    817,    906, -32675, -32675, -32675,
	-32675, -32675, -32675, -32675, -32675, -32675, -32675, -32675,
	-32675, -32675, -32675, -32675, -32675, -32675, -32675, -32675,
	-32675, -32675, -32675, -32675, -32675, -32675, -32675, -32675,
	-32675, -32675, -32675, -32704,  32748,  32624,  32465,  32280,
	 32078,  31867,  31656,  31454,  31269,  31110,  30986,  30905,
	 30876,  30902,  30973,  31083,  31224,  31390,  31574,  31768,
	 31966,  32161,  32344,  32511,  32652,  32762, -32700,   -889,
	  -868,   -811,   -724,   -611,   -480,   -336,   -184,    -32,
	   114,    251,    371,    468,    537,    570,    410,     28,
	  -381,   -625,   -712,   -779,   -828,   -862,   -884,   -896,
	  -900,   -899,   -895,   -891, -16383, -32767,  -7332,  16383,
	-32767,  -7332,      0,      0,      0,      0,      0,      1,
	     1,      1,      2,      2,      2,      3,      3,      3,
	     3,      3,      3,      3,      2,      2,      2,      1,
	     1,      1,      0,      0,      0,      0,      0,      0,
	   -10,    -40,    -86,   -144,   -212,   -287,   -365,   -442,
	  -517,   -585,   -643,   -689,   -719,   -730,   -720,   -694,
	  -654,   -602,   -540,   -473,   -401,   -328,   -257,   -189,
	  -128,    -75,    -35,     -9,   1066,   1066,   1066,   1066,
	  1066,   1066,   1066,   1066,   1066,   1066,   1066,   1066,
	  1066,   1066,   1066,   1066,   1066,   1066,   1066,   1066,
	  1066,   1066,   1066,   1066,   1066,   1066,   1066,   1066,
	  1066, -32767, -32767, -32013, -32009, -31996, -31976, -31951,
	-31922, -31890, -31857, -31823, -31791, -31762, -31737, -31718,
	-31705, -31700, -31704, -31715, -31733, -31755, -31781, -31810,
	-31841, -31872, -31903, -31932, -31958, -31981, -31998, -32009,
	 24696,  16383,  -8313, -24696, -16383,  -8313, -16626,  21319,
	-16310,      0,      0,      2,      4,      6,      8,     10,
	    10,     10,     10,      9,      9,      8,      7,      6,
	     5,      4,      4,      3,      3,      5,      7,     10,
	    11,     10,      8,      5,      2,      0,      0,     15,
	    55,    114,    184,    257,    326,    371,    311,    249,
	   186,    122,     58,     -5,    -69,   -131,   -192,   -250,
	  -305,   -357,   -406,   -432,   -399,   -346,   -287,   -213,
	  -137,    -68,    -18,  16310,  16323,  16356,  16400,  16449,
	 16492,  16523,  16534,  16530,  16522,  16509,  16492,  16472,
	 16450,  16427,  16402,  16377,  16353,  16331,  16310,  16284,
	 16254,  16230,  16223,  16231,  16248,  16268,  16289,  16304,
};

static u16 anime_chuckya_5_tbl[] =
{
	    1,     0,     1,     0,     1,     1,
	    1,     0,     1,     2,     1,     0,
	   29,   281,    29,   310,    29,   339,
	    1,     0,     1,     0,     1,   280,
	    1,     0,     1,     0,     1,   279,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   278,
	    1,     0,     1,     0,    29,   119,
	    1,     0,     1,     0,    29,     3,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   275,     1,   276,     1,   277,
	   29,   154,    29,   183,    29,   212,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   148,     1,   149,     1,   150,
	    1,     0,    29,    32,    29,    61,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   272,     1,   273,     1,   274,
	    1,   241,     1,   242,    29,   243,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,   151,     1,   152,     1,   153,
	    1,     0,     1,     0,    29,    90,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_chuckya_5 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	29,
	/*joint*/	30,
	anime_chuckya_5_val,
	anime_chuckya_5_tbl,
	0,
};

ANIME *anime_chuckya[] =
{
	&anime_chuckya_0,
	&anime_chuckya_1,
	&anime_chuckya_2,
	&anime_chuckya_3,
	&anime_chuckya_4,
	&anime_chuckya_5,
};

#else /* SCRIPT */

extern Gfx gfx_chuckya_body[];
extern Gfx gfx_chuckya_armL[];
extern Gfx gfx_chuckya_armR[];
extern Gfx gfx_chuckya_handL[];
extern Gfx gfx_chuckya_handR[];
extern Gfx gfx_chuckya_antenna_end[];
extern Gfx gfx_chuckya_eyes[];
extern Gfx gfx_chuckya_base[];
extern Gfx gfx_chuckya_antenna[];
extern Gfx gfx_chuckya_back[];

S_SCRIPT s_chuckya[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 281, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, gfx_chuckya_back, 0, 0, 0),
							sJoint(LAYER_OPA_SURF, NULL, 113, -152, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, NULL, 74, 0, 0),
									sStart(),
										sJoint(LAYER_OPA_SURF, NULL, 96, 0, 0),
										sStart(),
											sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
											sStart(),
												sBillboard(0, 0, 0),
												sStart(),
													sGfx(LAYER_TEX_EDGE, gfx_chuckya_antenna_end),
												sEnd(),
											sEnd(),
										sEnd(),
									sEnd(),
									sJoint(LAYER_OPA_SURF, gfx_chuckya_antenna, 0, 0, 0),
								sEnd(),
							sEnd(),
							sJoint(LAYER_TEX_EDGE, gfx_chuckya_eyes, 0, 0, 0),
							sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
							sStart(),
								sBillboard(0, 0, 0),
								sStart(),
									sGfx(LAYER_TEX_EDGE, gfx_chuckya_body),
								sEnd(),
							sEnd(),
							sJoint(LAYER_OPA_SURF, NULL, 1, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, NULL, 209, 0, 0),
									sStart(),
										sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
										sStart(),
											sBillboard(0, 0, 0),
											sStart(),
												sGfx(LAYER_TEX_EDGE, gfx_chuckya_armL),
											sEnd(),
										sEnd(),
										sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
										sStart(),
											sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
											sStart(),
												sJoint(LAYER_OPA_SURF, NULL, 95, 0, 0),
												sStart(),
													sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
													sStart(),
														sBillboard(0, 0, 0),
														sStart(),
															sGfx(LAYER_TEX_EDGE, gfx_chuckya_handL),
														sEnd(),
													sEnd(),
												sEnd(),
											sEnd(),
										sEnd(),
									sEnd(),
								sEnd(),
							sEnd(),
							sJoint(LAYER_OPA_SURF, NULL, 1, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, NULL, 209, 0, 0),
									sStart(),
										sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
										sStart(),
											sBillboard(0, 0, 0),
											sStart(),
												sGfx(LAYER_TEX_EDGE, gfx_chuckya_armR),
											sEnd(),
										sEnd(),
										sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
										sStart(),
											sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
											sStart(),
												sJoint(LAYER_OPA_SURF, NULL, 95, 0, 0),
												sStart(),
													sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
													sStart(),
														sBillboard(0, 0, 0),
														sStart(),
															sGfx(LAYER_TEX_EDGE, gfx_chuckya_handR),
														sEnd(),
													sEnd(),
													sCallback(0, s_object_a_802A719C),
												sEnd(),
											sEnd(),
										sEnd(),
									sEnd(),
								sEnd(),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, gfx_chuckya_base, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
