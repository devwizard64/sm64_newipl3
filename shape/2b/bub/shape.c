#ifndef SCRIPT

static Lights1 light_bub[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xFF, 0x75, 0x94),
};

static u16 txt_bub_goggles[] =
{
#include "goggles.rgba16.h"
};

static u16 txt_bub_fin[] =
{
#include "fin.rgba16.h"
};

static u16 txt_bub_eyes[] =
{
#include "eyes.rgba16.h"
};

static u16 txt_bub_scale[] =
{
#include "scale.rgba16.h"
};

#include "body.h"

static Gfx gfx_bub_body_goggles[] =
{
	gsDPLoadImageBlock(txt_bub_goggles, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_bub[0]),
#include "body.goggles.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bub_body_fin[] =
{
	gsDPLoadImageBlock(txt_bub_fin, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "body.fin.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bub_body_eyes[] =
{
	gsDPLoadImageBlock(txt_bub_eyes, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "body.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bub_body_scale[] =
{
	gsDPLoadImageBlock(txt_bub_scale, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
#include "body.scale.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bub_body_shade[] =
{
	gsSPSetLights1N(light_bub[1]),
#include "body.mouth.h"
	gsSPSetLights1N(light_bub[0]),
#include "body.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bub_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bub_body_goggles),
	gsSPDisplayList(gfx_bub_body_fin),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_bub_body_eyes),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_bub_body_scale),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_bub_body_shade),
	gsSPEndDisplayList(),
};

#include "tail.h"

static Gfx gfx_bub_tail_fin[] =
{
	gsDPLoadImageBlock(txt_bub_fin, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_bub[0]),
#include "tail.fin.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bub_tail[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bub_tail_fin),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#include "finL.h"

static Gfx gfx_bub_finL_fin[] =
{
	gsDPLoadImageBlock(txt_bub_fin, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_bub[0]),
#include "finL.fin.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bub_finL[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bub_finL_fin),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#include "finR.h"

static Gfx gfx_bub_finR_fin[] =
{
	gsDPLoadImageBlock(txt_bub_fin, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_bub[0]),
#include "finR.fin.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bub_finR[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bub_finR_fin),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static short anime_bub_0_val[] =
{
	     0,    -13,    -13,    -13,    -12,    -10,     -9,     -7,
	    -5,     -3,     -1,      1,      3,      5,      7,      9,
	    10,     11,     12,     13,     13,     13,     13,     12,
	    11,     10,      9,      8,      6,      5,      3,      1,
	     0,     -1,     -3,     -5,     -7,     -9,    -10,    -12,
	   -13, -16383,   5782,   5803,   5861,   5947,   6051,   6164,
	  6278,   6382,   6468,   6526,   6547,   6521,   6451,   6349,
	  6228,   6101,   5980,   5878,   5808,   5782,   5794,   5829,
	  5880,   5942,   6010,   6078,   6140,   6191,   6227,   6240,
	  6232,   6209,   6173,   6127,   6074,   6016,   5957,   5898,
	  5843,   5794,   6273,   6250,   6188,   6096,   5986,   5865,
	  5744,   5633,   5542,   5480,   5457,   5485,   5560,   5669,
	  5797,   5933,   6061,   6170,   6245,   6273,   6260,   6225,
	  6175,   6113,   6046,   5979,   5917,   5866,   5831,   5818,
	  5825,   5849,   5884,   5930,   5983,   6040,   6099,   6157,
	  6212,   6260,  -2186,  -2146,  -2037,  -1876,  -1681,  -1469,
	 -1257,  -1062,   -902,   -793,   -753,   -802,   -933,  -1124,
	 -1350,  -1588,  -1814,  -2005,  -2137,  -2186,  -2162,  -2099,
	 -2006,  -1892,  -1769,  -1645,  -1532,  -1438,  -1374,  -1349,
	 -1364,  -1406,  -1472,  -1556,  -1653,  -1758,  -1866,  -1973,
	 -2074,  -2162,  -5169,  -5201,  -5287,  -5411,  -5558,  -5713,
	 -5861,  -5985,  -6071,  -6103,  -6077,  -6006,  -5901,  -5774,
	 -5636,  -5498,  -5371,  -5266,  -5195,  -5169,  -5187,  -5238,
	 -5312,  -5402,  -5501,  -5599,  -5689,  -5764,  -5815,  -5835,
	 -5823,  -5789,  -5737,  -5670,  -5593,  -5509,  -5423,  -5338,
	 -5258,  -5187,   7400,   7376,   7312,   7219,   7109,   6993,
	  6882,   6789,   6725,   6701,   6721,   6774,   6852,   6947,
	  7051,   7154,   7249,   7327,   7381,   7400,   7387,   7351,
	  7298,   7234,   7164,   7095,   7030,   6977,   6941,   6927,
	  6935,   6959,   6996,   7044,   7099,   7158,   7220,   7280,
	  7337,   7387, -30790, -30841, -30978, -31176, -31411, -31659,
	-31894, -32092, -32229, -32281, -32239, -32126, -31959, -31756,
	-31535, -31315, -31112, -30945, -30832, -30790, -30819, -30898,
	-31015, -31158, -31313, -31467, -31610, -31728, -31808, -31839,
	-31821, -31767, -31685, -31580, -31458, -31326, -31190, -31056,
	-30930, -30819,  16383, -16300,  16383, -16300,  -3812,  -3745,
	 -3555,  -3254,  -2858,  -2378,  -1830,  -1227,   -583,     87,
	   771,   1456,   2126,   2768,   3369,   3913,   4389,   4781,
	  5077,   5261,   5250,   4997,   4549,   3951,   3250,   2492,
	  1722,    986,    331,   -197,   -662,  -1143,  -1626,  -2095,
	 -2535,  -2929,  -3263,  -3521,  -3687,  -3746,  16925,  16948,
	 17009,  17097,  17199,  17306,  17404,  17484,  17533,  17540,
	 17494,  17373,  17179,  16931,  16650,  16357,  16071,  15814,
	 15605,  15465,  15384,  15333,  15310,  15311,  15333,  15371,
	 15423,  15485,  15554,  15625,  15707,  15808,  15924,  16053,
	 16191,  16334,  16479,  16624,  16763,  16896,
};

static u16 anime_bub_0_tbl[] =
{
	   40,     1,     1,     0,     1,     0,
	    1,    41,     1,     0,     1,     0,
	    1,     0,     1,     0,    40,   326,
	    1,     0,     1,     0,    40,   286,
	    1,   284,     1,     0,     1,   285,
	   40,    42,    40,    82,    40,   122,
	    1,   282,     1,     0,     1,   283,
	   40,   162,    40,   202,    40,   242,
};

static ANIME anime_bub_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	40,
	/*joint*/	7,
	anime_bub_0_val,
	anime_bub_0_tbl,
	0,
};

ANIME *anime_bub[] =
{
	&anime_bub_0,
	NULL,
};

#else /* SCRIPT */

extern Gfx gfx_bub_body[];
extern Gfx gfx_bub_tail[];
extern Gfx gfx_bub_finL[];
extern Gfx gfx_bub_finR[];

S_SCRIPT s_bub[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, -13, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, gfx_bub_body, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_bub_tail, 135, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, -33, -86, -35),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_bub_finL, 0, 0, 0),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, -34, 71, -36),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_bub_finR, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
