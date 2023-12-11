#ifndef SCRIPT

static Lights1 light_goomba[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xB2, 0xB2, 0xB2),
	gdSPDefLight(0.25, 0x54, 0x2E, 0x10),
	gdSPDefLight(0.25, 0x61, 0x34, 0x13),
	gdSPDefLight(0.25, 0x77, 0x42, 0x20),
	gdSPDefLight(0.25, 0xDE, 0xB4, 0x4E),
};

static u16 txt_goomba_body[] =
{
#include "body.rgba16.h"
};

static u16 txt_goomba_head_open[] =
{
#include "head_open.rgba16.h"
};

static u16 txt_goomba_head_closed[] =
{
#include "head_closed.rgba16.h"
};

static Lights1 light_goomba_body[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "head.h"

static Gfx gfx_goomba_head[] =
{
	gsSPSetLights1N(light_goomba_body[0]),
#include "head.head.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_goomba_head_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_goomba_head_end[] =
{
	gsSPDisplayList(gfx_goomba_head),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_head_open[] =
{
	gsSPDisplayList(gfx_goomba_head_start),
	gsDPLoadImageBlock(txt_goomba_head_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPBranchList(gfx_goomba_head_end),
};

Gfx gfx_goomba_head_closed[] =
{
	gsSPDisplayList(gfx_goomba_head_start),
	gsDPLoadImageBlock(txt_goomba_head_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPBranchList(gfx_goomba_head_end),
};

#include "body.h"

static Gfx gfx_goomba_body_body[] =
{
	gsDPLoadImageBlock(txt_goomba_body, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "body.body.h"
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_goomba_body_body),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "footL.h"
#include "footR.h"
#include "head_old.h"
#include "body_old.h"

Gfx gfx_goomba_footL[] =
{
	gsSPSetLights1N(light_goomba[2]),
#include "footL.footL.h"
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_footR[] =
{
	gsSPSetLights1N(light_goomba[3]),
#include "footR.footR.h"
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_head_old[] =
{
	gsSPSetLights1N(light_goomba[4]),
#include "head_old.head_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_body_old[] =
{
	gsSPSetLights1N(light_goomba[5]),
#include "body_old.body_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_goomba_base[] =
{
	gsSPNumLights(NUMLIGHTS_1),
	gsSPEndDisplayList(),
};

static short anime_goomba_0_val[] =
{
	     0,     90,     89,     87,     84,     81,     78,     75,
	    73,     77,     81,     85,     87,     89,     91,     92,
	    91,     88,     85,     81,     78,     76,     74,     73,
	    74,     77,     80,     83,     86,     89,     90,  16383,
	     0,      7,     27,     59,     99,    146,    197,    250,
	   303,    354,    401,    442,    473,    494,    501,    485,
	   441,    377,    299,    216,    134,     61,      5,    -17,
	   -12,     -5,     -4,     -2,      0,      0,      0,    -46,
	  -178,   -380,   -640,   -944,  -1278,  -1628,  -1982,  -2325,
	 -2644,  -2925,  -3155,  -3320,  -3406,  -3363,  -3173,  -2871,
	 -2493,  -2075,  -1653,  -1262,   -938,   -691,   -498,   -348,
	  -218,   -106,    -29,      0, -31619, -31700, -31927, -32277,
	-32725,  32285,  31710,  31107,  30500,  29912,  29368,  28890,
	 28503,  28229,  28094,  28196,  28574,  29156,  29870,  30644,
	 31408,  32088,  32615, -32729,  32746, -32758, -32475, -32096,
	-31762, -31619, -32767, -32765, -32762, -32758, -32754, -32753,
	-32756, -32763,  32749,  32715,  32679,  32653,  32642,  32643,
	 32657,  32698,  32753, -32748, -32742, -32739, -32739, -32740,
	-32743, -32746, -32751, -32755, -32760, -32763, -32766, -32767,
	 29950,  29986,  30080,  30219,  30385,  30562,  30736,  30889,
	 31037,  31194,  31343,  31466,  31560,  31620,  31624,  31548,
	 31417,  31286,  31166,  31032,  30889,  30742,  30594,  30451,
	 30317,  30198,  30096,  30018,  29968,  29950,  -5216,  -5003,
	 -4436,  -3626,  -2683,  -1717,   -838,   -156,    270,    515,
	   662,    797,    916,    962,    932,    852,    696,    388,
	   -66,   -595,  -1178,  -1793,  -2417,  -3028,  -3606,  -4127,
	 -4571,  -4915,  -5137,  -5216, -16383, -16383,  -1773,  -1722,
	 -1582,  -1366,  -1090,   -769,   -418,    -52,    314,    665,
	   986,   1262,   1478,   1618,   1668,   1624,   1501,   1310,
	  1065,    776,    457,    119,   -224,   -561,   -880,  -1169,
	 -1415,  -1605,  -1729,  -1773,   1564,   1517,   1385,   1182,
	   923,    621,    291,    -52,   -396,   -726,  -1027,  -1287,
	 -1489,  -1621,  -1668,  -1627,  -1511,  -1332,  -1101,   -830,
	  -530,   -213,    109,    426,    726,    997,   1228,   1407,
	  1523,   1564,   -938,   -906,   -817,   -680,   -504,   -300,
	   -76,    156,    389,    613,    817,    992,   1130,   1219,
	  1251,   1223,   1145,   1023,    867,    683,    480,    265,
	    47,   -167,   -370,   -554,   -710,   -832,   -910,   -938,
	 16383,
};

static u16 anime_goomba_0_tbl[] =
{
	    1,     0,    30,     1,     1,     0,
	    1,     0,     1,    31,     1,     0,
	   30,   244,    30,   274,     1,   304,
	   30,   214,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   213,
	   30,    32,    30,    62,    30,    92,
	    1,     0,     1,     0,     1,   212,
	   30,   122,    30,   152,    30,   182,
};

static ANIME anime_goomba_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	7,
	anime_goomba_0_val,
	anime_goomba_0_tbl,
	0,
};

ANIME *anime_goomba[] =
{
	&anime_goomba_0,
};

UNUSED static long long align_goomba = 0;

#else /* SCRIPT */

extern Gfx gfx_goomba_head_open[];
extern Gfx gfx_goomba_head_closed[];
extern Gfx gfx_goomba_body[];
extern Gfx gfx_goomba_footL[];
extern Gfx gfx_goomba_footR[];
extern Gfx gfx_goomba_base[];

S_SCRIPT s_goomba[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, gfx_goomba_base, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sBillboard(0, 0, 0),
					sStart(),
						sGfx(LAYER_TEX_EDGE, gfx_goomba_body),
					sEnd(),
				sEnd(),
				sStart(),
					sSelect(2, s_objlib_8029DB48),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_goomba_head_open, 48, 0, 0),
						sJoint(LAYER_OPA_SURF, gfx_goomba_head_closed, 48, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -60, -16, 45),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_goomba_footL, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -60, -16, -45),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_goomba_footR, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
