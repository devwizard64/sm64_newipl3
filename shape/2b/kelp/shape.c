#ifndef SCRIPT

static Lights1 light_kelp[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_kelp_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_kelp_1[] =
{
#include "1.rgba16.h"
};

static u16 txt_kelp_2[] =
{
#include "2.rgba16.h"
};

static u16 txt_kelp_3[] =
{
#include "3.rgba16.h"
};

#include "0.h"

static Gfx gfx_kelp_0_0[] =
{
	gsDPLoadImageBlock(txt_kelp_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_kelp[0]),
#include "0.0.h"
	gsSPEndDisplayList(),
};

Gfx gfx_kelp_0[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_kelp_0_0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

#include "1.h"

static Gfx gfx_kelp_1_1[] =
{
	gsDPLoadImageBlock(txt_kelp_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_kelp[0]),
#include "1.1.h"
	gsSPEndDisplayList(),
};

Gfx gfx_kelp_1[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_kelp_1_1),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

#include "2.h"

static Gfx gfx_kelp_2_2[] =
{
	gsDPLoadImageBlock(txt_kelp_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_kelp[0]),
#include "2.2.h"
	gsSPEndDisplayList(),
};

Gfx gfx_kelp_2[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_kelp_2_2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

#include "3.h"

static Gfx gfx_kelp_3_3[] =
{
	gsDPLoadImageBlock(txt_kelp_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_kelp[0]),
#include "3.3.h"
	gsSPEndDisplayList(),
};

Gfx gfx_kelp_3[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_kelp_3_3),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

static short anime_kelp_0_val[] =
{
	     0,  16383,   3650,   3558,   3301,   2909,   2414,   1844,
	  1231,    605,     -4,   -566,  -1051,  -1429,  -1668,  -1825,
	 -1975,  -2117,  -2251,  -2377,  -2495,  -2605,  -2705,  -2797,
	 -2879,  -2951,  -3014,  -3067,  -3109,  -3141,  -3162,  -3172,
	 -3171,  -3158,  -3133,  -3096,  -3047,  -2985,  -2910,  -2823,
	 -2722,  -2607,  -2390,  -2007,  -1493,   -885,   -220,    466,
	  1137,   1758,   2290,   2699,   2948,   3096,   3229,   3346,
	  3449,   3539,   3616,   3681,   3735,   3778,   3812,   3837,
	  3854,   3864,   3867,   3864,   3856,   3844,   3829,   3811,
	  3790,   3769,   3748,   3726,   3706,   3688,   3673,   3661,
	  3653,   3650,  -4589,  -4570,  -4515,  -4425,  -4304,  -4151,
	 -3971,  -3763,  -3532,  -3277,  -3003,  -2709,  -2399,  -2074,
	 -1736,  -1388,  -1031,   -666,   -297,     74,    447,    819,
	  1188,   1552,   1909,   2258,   2595,   2920,   3231,   3524,
	  3799,   4053,   4285,   4492,   4673,   4825,   4947,   5036,
	  5091,   5110,   5092,   5040,   4955,   4839,   4693,   4521,
	  4323,   4101,   3858,   3595,   3313,   3015,   2703,   2377,
	  2041,   1696,   1343,    985,    624,    260,   -102,   -464,
	  -822,  -1174,  -1520,  -1856,  -2181,  -2494,  -2792,  -3073,
	 -3337,  -3580,  -3802,  -3999,  -4172,  -4317,  -4433,  -4518,
	 -4571,  -4589,  -5632,  -5610,  -5547,  -5445,  -5307,  -5133,
	 -4927,  -4691,  -4427,  -4137,  -3824,  -3489,  -3136,  -2765,
	 -2380,  -1983,  -1576,  -1161,   -740,   -316,    108,    532,
	   953,   1368,   1775,   2172,   2557,   2927,   3281,   3615,
	  3929,   4218,   4483,   4719,   4925,   5098,   5237,   5339,
	  5402,   5423,   5403,   5343,   5246,   5114,   4948,   4752,
	  4526,   4273,   3996,   3696,   3375,   3035,   2679,   2308,
	  1925,   1532,   1130,    722,    310,   -104,   -518,   -930,
	 -1338,  -1740,  -2134,  -2517,  -2887,  -3244,  -3583,  -3904,
	 -4204,  -4482,  -4734,  -4960,  -5157,  -5322,  -5454,  -5552,
	 -5611,  -5632,  19616,  19603,  19562,  19497,  19408,  19296,
	 19164,  19013,  18843,  18658,  18457,  18242,  18015,  17778,
	 17531,  17276,  17015,  16748,  16478,  16206,  15934,  15662,
	 15392,  15126,  14864,  14610,  14363,  14125,  13898,  13684,
	 13483,  13297,  13127,  12976,  12844,  12732,  12643,  12578,
	 12538,  12524,  12537,  12575,  12638,  12722,  12829,  12955,
	 13099,  13262,  13439,  13632,  13838,  14056,  14284,  14522,
	 14768,  15020,  15278,  15540,  15804,  16070,  16336,  16600,
	 16862,  17120,  17372,  17618,  17856,  18084,  18302,  18508,
	 18701,  18879,  19041,  19185,  19312,  19418,  19503,  19565,
	 19603,  19616,
};

static u16 anime_kelp_0_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     1,     1,     0,
	    1,     0,     1,     0,    80,   242,
	    1,     0,     1,     0,    80,   162,
	    1,     0,     1,     0,    80,    82,
	    1,     0,     1,     0,    80,     2,
};

static ANIME anime_kelp_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	80,
	/*joint*/	5,
	anime_kelp_0_val,
	anime_kelp_0_tbl,
	0,
};

ANIME *anime_kelp[] =
{
	&anime_kelp_0,
};

#else /* SCRIPT */

extern Gfx gfx_kelp_0[];
extern Gfx gfx_kelp_1[];
extern Gfx gfx_kelp_2[];
extern Gfx gfx_kelp_3[];

S_SCRIPT s_kelp[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_TEX_EDGE, gfx_kelp_3, 0, 0, 0),
			sStart(),
				sJoint(LAYER_TEX_EDGE, gfx_kelp_2, 238, 0, 0),
				sStart(),
					sJoint(LAYER_TEX_EDGE, gfx_kelp_1, 317, 0, 0),
					sStart(),
						sJoint(LAYER_TEX_EDGE, gfx_kelp_0, 314, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
