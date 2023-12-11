#ifndef SCRIPT

static Lights1 light_blargg[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xFF, 0x36, 0x16),
	gdSPDefLight(0.25, 0xB2, 0xB2, 0xB2),
	gdSPDefLight(0.25, 0xFF, 0x2A, 0x1A),
	gdSPDefLight(0.25, 0xFF, 0x2E, 0x1F),
};

#include "upper_jaw.h"
#include "lower_jaw.h"
#include "body.h"

Gfx gfx_blargg_upper_jaw[] =
{
	gsSPSetLights1N(light_blargg[2]),
#include "upper_jaw.teeth.h"
	gsSPSetLights1N(light_blargg[1]),
#include "upper_jaw.upper_jaw.h"
	gsSPEndDisplayList(),
};

Gfx gfx_blargg_lower_jaw[] =
{
	gsSPSetLights1N(light_blargg[2]),
#include "lower_jaw.teeth.h"
	gsSPSetLights1N(light_blargg[3]),
#include "lower_jaw.lower_jaw.h"
	gsSPEndDisplayList(),
};

Gfx gfx_blargg_body[] =
{
	gsSPSetLights1N(light_blargg[4]),
#include "body.body.h"
	gsSPEndDisplayList(),
};

static short anime_blargg_1_val[] =
{
	     0,     22,     -4,    -71,   -159,   -248,   -320,   -353,
	  -340,   -296,   -234,   -167,   -107,    -69,    -44,    -19,
	     5,     28,     49,     66,     77,     82,     78,     66,
	    43,    -19,   -135,   -274,   -408,   -510,   -551,   -545,
	  -525,   -493,   -452,   -404,   -351,   -295,   -237,   -180,
	  -127,    -78,    -37,     -5,     15,     22,  16383, -30843,
	-30843, -30843, -30843, -30843, -30843, -30843, -30178, -28517,
	-26358, -24198, -22537, -21873, -21899, -21974, -22095, -22258,
	-22461, -22701, -22973, -23274, -23602, -23953, -24324, -24711,
	-25111, -25521, -25938, -26358, -26778, -27194, -27604, -28005,
	-28392, -28762, -29113, -29441, -29743, -30015, -30254, -30457,
	-30621, -30742, -30817, -30843, -32692,   3021,   3369,   4207,
	  5217,   6088,   6503,   6150,   4680,   2278,   -579,  -3413,
	 -5744,  -7096,  -7688,  -8078,  -8284,  -8327,  -8227,  -8005,
	 -7681,  -7276,  -6809,  -6302,  -5774,  -4513,  -2390,   -296,
	   879,   1271,   1613,   1908,   2159,   2369,   2543,   2684,
	  2794,   2879,   2940,   2982,   3009,   3022,   3027,   3026,
	  3022,   3021,  30401,  30401,  30401,  30401,  30401,  30401,
	 30401,  30019,  29057,  27795,  26509,  25477,  24977,  24891,
	 24909,  25018,  25211,  25476,  25802,  26181,  26600,  27051,
	 27523,  28005,  28711,  29734,  30884,  31973, -32722, -32325,
	-32261, -32290, -32398, -32572,  32734,  32466,  32172,  31863,
	 31553,  31255,  30983,  30748,  30564,  30444,  30401,
};

static u16 anime_blargg_1_tbl[] =
{
	    1,     0,    45,     1,     1,     0,
	    1,     0,     1,    46,     1,     0,
	    1,     0,     1,     0,    45,   138,
	    1,     0,     1,     0,    45,    93,
	    1,     0,     1,     0,     1,    92,
	    1,     0,     1,     0,    45,    47,
};

static ANIME anime_blargg_1 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	45,
	/*joint*/	5,
	anime_blargg_1_val,
	anime_blargg_1_tbl,
	0,
};

static short anime_blargg_0_val[] =
{
	     0,     22,     24,     28,     34,     42,     51,     61,
	    71,     82,     92,    101,    109,    115,    119,    120,
	   119,    116,    112,    107,    100,     92,     84,     76,
	    67,     58,     49,     41,     34,     28,     22,  16383,
	-30843, -32692,   3021,   3057,   3153,   3288,   3442,   3596,
	  3729,   3822,   3855,   3836,   3792,   3727,   3644,   3550,
	  3448,   3344,   3241,   3144,   3058,   2987,   2935,   2906,
	  2896,   2901,   2916,   2939,   2964,   2989,   3009,   3021,
	 30401,
};

static u16 anime_blargg_0_tbl[] =
{
	    1,     0,    30,     1,     1,     0,
	    1,     0,     1,    31,     1,     0,
	    1,     0,     1,     0,     1,    64,
	    1,     0,     1,     0,    30,    34,
	    1,     0,     1,     0,     1,    33,
	    1,     0,     1,     0,     1,    32,
};

static ANIME anime_blargg_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	5,
	anime_blargg_0_val,
	anime_blargg_0_tbl,
	0,
};

ANIME *anime_blargg[] =
{
	&anime_blargg_0,
	&anime_blargg_1,
};

#else /* SCRIPT */

extern Gfx gfx_blargg_upper_jaw[];
extern Gfx gfx_blargg_lower_jaw[];
extern Gfx gfx_blargg_body[];

S_SCRIPT s_blargg[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, gfx_blargg_body, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_blargg_lower_jaw, 306, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 6, 3, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_blargg_upper_jaw, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
