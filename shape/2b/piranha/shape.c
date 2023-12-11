#ifndef SCRIPT

UNUSED static long long align_piranha_start = 0;

static u16 txt_piranha[] =
{
#include "piranha.rgba16.h"
};

static Lights1 light_piranha_body[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "body.h"

static Gfx gfx_piranha_body_piranha[] =
{
	gsDPLoadImageBlock(txt_piranha, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_piranha_body[0]),
#include "body.piranha.h"
	gsSPEndDisplayList(),
};

Gfx gfx_piranha_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_piranha_body_piranha),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_piranha_fin[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "fin.h"

static Gfx gfx_piranha_fin_piranha[] =
{
	gsDPLoadImageBlock(txt_piranha, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_piranha_fin[0]),
#include "fin.piranha.h"
	gsSPEndDisplayList(),
};

Gfx gfx_piranha_fin[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_piranha_fin_piranha),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK),
	gsSPEndDisplayList(),
};

static Lights1 light_piranha_tail[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "tail.h"

static Gfx gfx_piranha_tail_piranha[] =
{
	gsDPLoadImageBlock(txt_piranha, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_piranha_tail[0]),
#include "tail.piranha.h"
	gsSPEndDisplayList(),
};

Gfx gfx_piranha_tail[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_piranha_tail_piranha),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static short anime_piranha_0_val[] =
{
	     0,     -5,     -3,     -1,      1,      3,      5,      7,
	     9,     10,     11,     11,     11,     10,      9,      7,
	     5,      3,      1,     -1,     -3,     -5,     -6,     -8,
	    -9,     -9,     -9,     -8,     -7,     -5,     -3,  16383,
	   378,    450,    496,    513,    498,    457,    394,    313,
	   217,    112,      0,   -113,   -224,   -330,   -426,   -507,
	  -570,   -611,   -625,   -611,   -570,   -507,   -426,   -330,
	  -224,   -113,      0,    112,    217,    313,   -970,  -1133,
	 -1239,  -1277,  -1244,  -1150,  -1006,   -820,   -602,   -361,
	  -106,    153,    409,    650,    868,   1054,   1198,   1292,
	  1325,   1292,   1198,   1054,    868,    650,    409,    153,
	  -106,   -361,   -602,   -820,   2967,   2978,   2986,   2988,
	  2986,   2980,   2969,   2957,   2941,   2924,   2907,   2889,
	  2871,   2854,   2839,   2826,   2816,   2809,   2807,   2809,
	  2816,   2826,   2839,   2854,   2871,   2889,   2907,   2924,
	  2941,   2957,    168,    707,   1229,   1717,   2155,   2525,
	  2810,   2993,   3058,   2974,   2738,   2376,   1912,   1373,
	   783,    168,   -446,  -1036,  -1575,  -2039,  -2401,  -2637,
	 -2721,  -2647,  -2440,  -2120,  -1707,  -1223,   -686,   -120,
	  1208,   1170,   1065,    903,    696,    455,    192,    -82,
	  -357,   -620,   -861,  -1068,  -1230,  -1335,  -1373,  -1340,
	 -1247,  -1104,   -920,   -704,   -464,   -211,     46,    299,
	   538,    755,    939,   1082,   1175,   1208,
};

static u16 anime_piranha_0_tbl[] =
{
	   30,     1,     1,     0,     1,     0,
	    1,     0,     1,    31,     1,     0,
	    1,     0,    30,   152,     1,     0,
	    1,     0,    30,   122,     1,     0,
	    1,     0,     1,     0,     1,     0,
	   30,    32,    30,    62,    30,    92,
};

static ANIME anime_piranha_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	5,
	anime_piranha_0_val,
	anime_piranha_0_tbl,
	0,
};

ANIME *anime_piranha[] =
{
	&anime_piranha_0,
};

UNUSED static long long align_piranha_end = 0;

#else /* SCRIPT */

extern Gfx gfx_piranha_body[];
extern Gfx gfx_piranha_fin[];
extern Gfx gfx_piranha_tail[];

S_SCRIPT s_piranha[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, gfx_piranha_body, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_piranha_tail, 160, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 32, 112, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_piranha_fin, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
