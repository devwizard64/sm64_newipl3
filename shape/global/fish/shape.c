#ifndef SCRIPT

static Lights1 light_fish[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
};

static u16 txt_fish[] =
{
#include "fish.rgba16.h"
};

#include "body.h"

static Gfx gfx_fish_body_fish[] =
{
	gsDPLoadImageBlock(txt_fish, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_fish[0]),
#include "body.fish.h"
	gsSPEndDisplayList(),
};

Gfx gfx_fish_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_fish_body_fish),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

#include "tail.h"

static Gfx gfx_fish_tail_fish[] =
{
	gsDPLoadImageBlock(txt_fish, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_fish[0]),
#include "tail.fish.h"
	gsSPEndDisplayList(),
};

Gfx gfx_fish_tail[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_fish_tail_fish),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static short anime_fish_0_val[] =
{
	     0,    -15,    -15,    -14,    -12,     -9,     -6,     -3,
	     0,      2,      5,      8,     10,     12,     14,     14,
	    14,     13,     12,     10,      9,      6,      4,      2,
	     0,     -3,     -5,     -8,    -10,    -13,    -15, -16383,
	 -3082,  -2534,  -1289,     58,    912,   1322,   1722,   2098,
	  2436,   2721,   2940,   3078,   3121,   3054,   2863,   1933,
	   179,  -1622,  -2695,  -3073,  -3322,  -3461,  -3513,  -3496,
	 -3432,  -3340,  -3242,  -3157,  -3106,  -3110,  17948,  17955,
	 17966,  17961,  17923,  17834,  17674,  17424,  17097,  16721,
	 16326,  15941,  15594,  15314,  15131,  15054,  15061,  15136,
	 15264,  15427,  15610,  15797,  15998,  16230,  16486,  16759,
	 17042,  17327,  17607,  17876,
};

static u16 anime_fish_0_tbl[] =
{
	   30,     1,     1,     0,     1,     0,
	    1,    31,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,    62,
	    1,     0,     1,     0,    30,    32,
};

static ANIME anime_fish_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	3,
	anime_fish_0_val,
	anime_fish_0_tbl,
	0,
};

ANIME *anime_fish[] =
{
	&anime_fish_0,
	NULL,
};

#else /* SCRIPT */

extern Gfx gfx_fish_body[];
extern Gfx gfx_fish_tail[];

S_SCRIPT s_fish_shadow[] =
{
	sShadow(50, 155, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -16, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_fish_body, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_fish_tail, 97, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_fish[] =
{
	sScale(0.25),
	sStart(),
		sJoint(LAYER_OPA_SURF, NULL, -16, 0, 0),
		sStart(),
			sJoint(LAYER_OPA_SURF, gfx_fish_body, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_fish_tail, 97, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
