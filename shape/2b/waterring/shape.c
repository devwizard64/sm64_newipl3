#ifndef SCRIPT

static Lights1 light_waterring[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_waterring[] =
{
#include "waterring.rgba16.h"
};

#include "waterring.h"

Gfx gfx_waterring[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsDPSetCombineMode(G_CC_DECALRGB_ENV, G_CC_DECALRGB_ENV),
	gsDPLoadTextureBlock(txt_waterring, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPTexture(0x1800, 0x07C0, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPSetLights1N(light_waterring[0]),
#include "waterring.shade.h"
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_TEXTURE_GEN),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPTexture(62*64, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

static short anime_waterring_0_val[] =
{
	     0, -16383,     11,    -11,    -75,   -173,   -298,   -444,
	  -604,   -770,   -937,  -1097,  -1243,  -1368,  -1466,  -1530,
	 -1553,  -1540,  -1502,  -1443,  -1364,  -1269,  -1159,  -1039,
	  -910,   -775,   -637,   -498,   -361,   -229,   -104,     10,
	   128,    259,    401,    550,    702,    853,   1001,   1140,
	  1268,   1381,   1476,   1547,   1593,   1609,   1597,   1563,
	  1508,   1436,   1348,   1247,   1135,   1014,    887,    756,
	   623,    490,    360,    236,    119,  -1564,  -1550,  -1508,
	 -1443,  -1358,  -1255,  -1139,  -1011,   -876,   -736,   -595,
	  -455,   -321,   -195,    -80,     33,    160,    295,    436,
	   581,    726,    868,   1004,   1132,   1249,   1352,   1438,
	  1504,   1547,   1564,   1552,   1510,   1442,   1351,   1242,
	  1118,    983,    840,    693,    545,    401,    264,    137,
	    24,    -84,   -202,   -326,   -455,   -586,   -717,   -846,
	  -971,  -1090,  -1200,  -1299,  -1386,  -1458,  -1513,  -1549,
	-16384, -16384, -16384, -16383, -16383, -16383, -16383, -16383,
	-16383, -16383, -16382, -16382, -16382, -16382, -16382, -16382,
	-16382, -16382, -16382, -16382, -16382, -16382, -16382, -16382,
	-16382, -16382, -16382, -16382, -16382, -16382, -16382, -16382,
	-16382, -16382, -16382, -16382, -16382, -16382, -16382, -16382,
	-16382, -16382, -16382, -16382, -16382, -16382, -16382, -16382,
	-16382, -16383, -16383, -16383, -16383, -16383, -16383, -16383,
	-16384, -16384, -16384,
};

static u16 anime_waterring_0_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     1,     1,     0,     1,     0,
	   59,     2,    59,    61,    59,   120,
};

static ANIME anime_waterring_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	59,
	/*joint*/	2,
	anime_waterring_0_val,
	anime_waterring_0_tbl,
	0,
};

ANIME *anime_waterring[] =
{
	&anime_waterring_0,
	NULL,
};

#else /* SCRIPT */

extern Gfx gfx_waterring[];

S_SCRIPT s_waterring[] =
{
	sScale(0.5),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
		sStart(),
			sCallback(0, s_objlib_8029D924),
			sJoint(LAYER_XLU_SURF, gfx_waterring, 0, 0, 0),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
