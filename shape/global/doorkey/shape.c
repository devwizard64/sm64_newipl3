#ifndef SCRIPT

static Lights1 light_doorkey[] =
{
	gdSPDefLight(0.25, 0xFF, 0xB2, 0x00),
};

#include "key.h"

Gfx gfx_doorkey[] =
{
	gsSPSetLights1N(light_doorkey[0]),
#include "key.key.h"
	gsSPEndDisplayList(),
};

static short anime_doorkey_1_val[] =
{
	     0,     -7,     -7,     -7,     -7,     -7,     -7,     -7,
	    -7,     -7,     -7,     -7,     -7,     -7,     -7,     -7,
	    -7,     -7,     -7,     -7,     -7,     -7,     -7,     -7,
	    -7,     -7,     -7,     -7,     -7,     -7,     -7,     -7,
	    -7,     -7,    -17,    -42,    -70,    -90,    -90,    -86,
	   -91,   -100,   -119,   -137,   -156,   -173,   -189,   -194,
	  -189,   -182,   -180,   -177,   -173,   -168,   -165,   -165,
	  -164,   -164,   -165,   -166,   -169,   -181,   -196,   -197,
	  -191,   -219,   -213,   -191,   -173,   -152,   -123,    -91,
	   -60,    -31,     -2,     26,     55,     84,    110,    132,
	   152,    168,    182,    195,    205,    215,    212,    193,
	   175,    167,    190,    191,    212,    232,    234,    228,
	   221,    214,    207,    200,    192,    181,    169,    158,
	   144,    140,    132,    112,     87,     62,     42,     32,
	    28,     25,     21,     18,     16,     13,     11,      9,
	     8,      6,      5,      4,      3,      2,      1,      1,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,    260,    260,    260,
	   260,    260,    260,    260,    260,    260,    260,    260,
	   260,    260,    260,    260,    260,    260,    260,    260,
	   260,    260,    260,    260,    260,    260,    260,    260,
	   260,    260,    260,    260,    260,    260,    264,    274,
	   289,    307,    339,    381,    422,    456,    448,    444,
	   440,    436,    432,    426,    427,    427,    416,    412,
	   411,    418,    421,    423,    424,    426,    427,    426,
	   421,    402,    373,    347,    334,    378,    472,    574,
	   675,    781,    895,    996,   1063,   1103,   1121,   1123,
	  1103,   1062,   1001,    921,    826,    716,    597,    475,
	   354,    240,    210,    190,    173,    163,    162,    184,
	   198,    213,    230,    245,    259,    272,    287,    302,
	   345,    353,    356,    371,    366,    376,    377,    355,
	   325,    295,    270,    257,    253,    250,    247,    245,
	   243,    241,    240,    239,    238,    237,    237,    237,
	   237,    237,    237,    238,    238,    239,    239,    240,
	   241,    242,    242,    243,    244,    244,    245,    245,
	   245,     30,     30,     30,     30,     30,     30,     30,
	    30,     30,     30,     30,     30,     30,     30,     30,
	    30,     30,     30,     30,     30,     30,     30,     30,
	    30,     30,     30,     30,     30,     30,     30,     30,
	    30,     30,     42,     68,     95,    110,     91,     56,
	    22,    -13,    -58,    -75,    -89,   -100,   -110,   -102,
	   -93,    -85,    -82,    -84,    -86,    -90,    -90,    -90,
	   -91,    -91,    -90,    -88,    -84,    -68,    -44,    -13,
	    -9,    -39,   -107,    -97,    -77,    -54,    -34,    -21,
	   -11,     -2,      5,     12,     16,     19,     21,     27,
	    36,     47,     59,     71,     83,     93,    103,    113,
	   123,    124,     93,     87,     68,     46,     31,     38,
	    54,     71,     89,    103,    110,     99,     82,     68,
	    79,     76,     73,     74,     76,     79,     81,     81,
	    80,     78,     77,     75,     74,     72,     70,     68,
	    66,     64,     62,     60,     58,     56,     54,     52,
	    50,     48,     46,     45,     43,     42,     40,     39,
	    38,     38,     37,     37,     37,     67,     67,     67,
	    67,     67,     67,     67,     67,     67,     67,     67,
	    67,     67,     67,     67,     67,     67,     67,     67,
	    67,     67,     67,     67,     67,     67,     67,     67,
	    67,     67,     67,     67,     67,     67,  -2523,  -7878,
	-12372, -14779, -14922, -12243,  -8402,  -4674,  -2332,  -2005,
	 -2918,  -4236,  -5126,  -5376,  -5359,  -5117,  -4181,  -3422,
	 -3490,  -3651,  -3883,  -4161,  -4460,  -4757,  -5028,  -5248,
	 -5257,  -5294,  -5597,  -6231,  -8013,  -1294,    827,    955,
	  1064,   1155,   1230,   1291,   1339,   1376,   1404,   1424,
	  1438,   1447,   1454,   1460,   1466,   1475,   1487,   1505,
	  1530,   1564,   1609,   1693,   1820,   1947,   2032,   2210,
	  1864,    651,   -866,  -2341,  -3423,  -4095,  -4741,  -5616,
	 -7722,  -6790,  -5338,  -3956,  -3236,  -3046,  -2863,  -2686,
	 -2515,  -2350,  -2192,  -2039,  -1893,  -1753,  -1618,  -1490,
	 -1367,  -1250,  -1139,  -1033,   -933,   -838,   -749,   -665,
	  -586,   -513,   -445,   -382,   -324,   -271,   -223,   -179,
	  -141,   -107,    -78,    -54,    -34,    -19,     -8,     -2,
	     0,    197,    197,    197,    197,    197,    197,    197,
	   197,    197,    197,    197,    197,    197,    197,    197,
	   197,    197,    197,    197,    197,    197,    197,    197,
	   197,    197,    197,    197,    197,    197,    197,    197,
	   197,    197,   1677,   4372,   5663,   2524,  -1294,  -2465,
	 -3017,  -3432,  -4194,  -5680,  -7549,  -9208, -10065,  -9406,
	 -7672,  -6003,  -4672,  -3780,  -3434,  -3152,  -2923,  -2736,
	 -2580,  -2445,  -2321,  -2196,  -2363,  -2493,  -1974,  -1387,
	 -1478,   -264,  -2740,  -2830,  -2895,  -2939,  -2963,  -2969,
	 -2959,  -2936,  -2902,  -2860,  -2810,  -2755,  -2699,  -2641,
	 -2586,  -2535,  -2490,  -2453,  -2427,  -2413,  -2414,  -2487,
	 -2648,  -2836,  -2995,  -3064,  -2985,  -2660,  -2099,  -1406,
	  -686,     80,    959,   1912,   3232,   3560,   3772,   3867,
	  3844,   3759,   3666,   3565,   3457,   3343,   3223,   3098,
	  2968,   2835,   2698,   2558,   2417,   2274,   2130,   1986,
	  1842,   1699,   1558,   1420,   1284,   1151,   1023,    899,
	   781,    668,    563,    464,    373,    290,    217,    153,
	    99,     57,     25,      6,      0, -13044, -13044, -13044,
	-13044, -13044, -13044, -13044, -13044, -13044, -13044, -13044,
	-13044, -13044, -13044, -13044, -13044, -13044, -13044, -13044,
	-13044, -13044, -13044, -13044, -13044, -13044, -13044, -13044,
	-13044, -13044, -13044, -13044, -13044, -13044, -16567, -23499,
	-28382, -26794, -23760, -23327, -23413, -23556, -23295, -22336,
	-20982, -19666, -18822, -18901, -19563, -20055, -19865, -19603,
	-19641, -19724, -19833, -19952, -20060, -20142, -20178, -20151,
	-19767, -18954, -17584, -16467, -17713, -17915, -17401, -15878,
	-14314, -12715, -11088,  -9438,  -7773,  -6099,  -4421,  -2748,
	 -1085,    561,   2185,   3780,   5339,   6856,   8324,   9737,
	 11088,  12372,  13582,  14368,  14525,  14260,  13783,  13301,
	 13021,  12825,  12564,  12399,  12492,  13046,  13964,  14955,
	 16220,  16784,  17285,  17649,  17798,  17812,  17820,  17822,
	 17819,  17812,  17800,  17784,  17764,  17740,  17713,  17683,
	 17651,  17616,  17579,  17541,  17501,  17460,  17418,  17376,
	 17333,  17291,  17249,  17208,  17168,  17130,  17093,  17058,
	 17026,  16996,  16969,  16946,  16926,  16910,  16898,  16890,
	 16888,
};

static u16 anime_doorkey_1_tbl[] =
{
	  140,     1,   140,   141,   140,   281,
	    1,     0,     1,     0,     1,     0,
	  140,   421,   140,   561,   140,   701,
};

static ANIME anime_doorkey_1 =
{
	/*flag */	ANIME_NOLOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	140,
	/*joint*/	2,
	anime_doorkey_1_val,
	anime_doorkey_1_tbl,
	0,
};

static short anime_doorkey_0_val[] =
{
	     0,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -26,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -26,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -26,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -26,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -26,    -26,    -26,    -26,    -26,    -26,    -26,    -26,
	   -34,    -55,    -84,   -116,   -147,   -171,   -185,   -193,
	  -199,   -207,   -212,   -216,   -220,   -224,   -227,   -230,
	  -231,   -230,   -224,   -215,   -203,   -192,   -185,   -186,
	  -192,   -190,   -173,   -148,   -122,    -96,    -72,    -51,
	   -31,    -13,      0,      4,      2,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,    239,    239,    239,
	   239,    239,    239,    239,    239,    239,    239,    239,
	   239,    239,    239,    239,    239,    239,    239,    239,
	   239,    239,    239,    239,    239,    239,    239,    239,
	   239,    239,    239,    239,    239,    239,    239,    239,
	   239,    239,    239,    239,    239,    239,    239,    239,
	   239,    239,    239,    239,    245,    261,    284,    310,
	   334,    355,    370,    383,    391,    389,    378,    363,
	   347,    331,    314,    296,    278,    260,    240,    217,
	   194,    176,    165,    162,    174,    216,    302,    419,
	   532,    642,    720,    748,    758,    761,    764,    766,
	   765,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,    764,    764,    764,    764,    764,    764,    764,
	   764,   -392,   -392,   -392,   -392,   -392,   -392,   -392,
	  -392,   -392,   -392,   -392,   -392,   -392,   -392,   -392,
	  -392,   -392,   -392,   -392,   -392,   -392,   -392,   -392,
	  -392,   -392,   -392,   -392,   -392,   -392,   -392,   -392,
	  -392,   -392,   -392,   -392,   -392,   -392,   -392,   -392,
	  -392,   -390,   -383,   -375,   -366,   -358,   -352,   -350,
	  -349,   -350,   -351,   -353,   -357,   -364,   -378,   -401,
	  -421,   -437,   -447,   -453,   -460,   -466,   -471,   -474,
	  -474,   -470,   -457,   -435,   -410,   -387,   -372,   -371,
	  -381,   -398,   -427,   -462,   -481,   -461,   -414,   -355,
	  -288,   -226,   -181,   -171,   -185,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197,   -197,   -197,   -197,
	  -197,   -197,   -197,   -197,   -197, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -31647, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -31647, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -31647, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -31647, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -31647, -31647, -31647, -31647,
	-31647, -31647, -31647, -31647, -32077,  32303,  30633,  28652,
	 26567,  24584,  22503,  20005,  17118,  12389,   9224,   9411,
	  9826,  10432,  11187,  12054,  12993,  13965,  14931,  15851,
	 16686,  17397,  17945,  18172,  18046,  17717,  17336,  17053,
	 17017,  17380,  18291,  21129,  25831,  30382, -32767, -32767,
	-32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
	-32767, -32767, -32767, -32767, -32767, -32767, -32767, -32767,
	-32767, -32767,  32416,  31924,  31315,  30610,  29834,  29009,
	 28158,  27303,  26469,  25677,  24951,  24314,  24298,  24575,
	 24575,  24575,  24575,  24575,  24575,  24575,  24575,  24575,
	 24575,  24575,  24575,  24575,  24575,  24575,  24575,  24575,
	 24575,  24575,  24575,  24575,  24575,  24575,  24575,  24575,
	 24575,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,  -2957,
	 -2682,  -2026,  -1241,   -580,   -296,   -641,  -3173,  -7213,
	 -9653,  -6814,  -3670,  -3751,  -3987,  -4353,  -4827,  -5384,
	 -5999,  -6650,  -7311,  -7960,  -8571,  -9120,  -9585,  -9942,
	-10208, -10420, -10615, -10829, -11098, -11460, -11950, -12925,
	-14353, -15688, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16383, -16383, -16383,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,  -4843,
	 -4843,  -4843,  -4843,  -4843,  -5013,  -5373,  -5703,  -5781,
	 -5385,  -4294,  -1277,   3632,   8769,  14979,  19169,  19727,
	 20108,  20330,  20408,  20360,  20202,  19952,  19625,  19240,
	 18812,  18359,  17897,  17367,  16698,  15894,  14959,  13894,
	 12704,  11391,   9959,   7645,   4450,   1520,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,   -350,   -842,  -1451,  -2156,  -2932,  -3757,
	 -4608,  -5463,  -6297,  -7089,  -7815,  -8452,  -8468,  -8191,
	 -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,
	 -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,
	 -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,  -8191,
	 -8191,
};

static u16 anime_doorkey_0_tbl[] =
{
	  140,     1,   140,   141,   140,   281,
	    1,     0,     1,     0,     1,     0,
	  140,   421,   140,   561,   140,   701,
};

static ANIME anime_doorkey_0 =
{
	/*flag */	ANIME_NOLOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	140,
	/*joint*/	2,
	anime_doorkey_0_val,
	anime_doorkey_0_tbl,
	0,
};

ANIME *anime_doorkey[] =
{
	&anime_doorkey_0,
	&anime_doorkey_1,
};

#else /* SCRIPT */

extern Gfx gfx_doorkey[];

S_SCRIPT s_bowserkey[] =
{
	sShadow(300, 155, SHADOW_CIRCLE4),
	sStart(),
		sScale(1),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_doorkey),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_doorkey[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sCallback(0, s_object_a_802BA2B0),
				sScale(1),
				sStart(),
					sGfx(LAYER_OPA_SURF, gfx_doorkey),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
