#ifndef SCRIPT

#include "l.h"

static u16 txt_butterfly_wing[] =
{
#include "wing.rgba16.h"
};

#include "r.h"

Gfx gfx_butterfly_l[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_butterfly_wing, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
#include "l.wing.h"
	gsSPTexture(0x8000, 0x8000, 1, 1, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_butterfly_r[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlock(txt_butterfly_wing, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
#include "r.wing.h"
	gsSPTexture(0x8000, 0x8000, 1, 1, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsSPEndDisplayList(),
};

static short anime_butterfly_0_val[] =
{
	     0,  13615,  10478,   4653,   1516,   3406,   7565,  11724,
	 13615,  19227,  22174,  27648,  30596,  28819,  24911,  21003,
	 19227,
};

static u16 anime_butterfly_0_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     8,     1,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     8,     9,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_butterfly_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	7,
	/*loop */	0,
	/*frame*/	8,
	/*joint*/	6,
	anime_butterfly_0_val,
	anime_butterfly_0_tbl,
	0,
};

static short anime_butterfly_1_val[] =
{
	     0,  14971,  14971,  14744,  14113,  13152,  11933,  10531,
	  9018,   7469,   5956,   4554,   3335,   2373,   1743,   1516,
	  1687,   2170,   2915,   3876,   5004,   6252,   7572,   8915,
	 10235,  11483,  12611,  13571,  14317,  14799,  14971,  17975,
	 17975,  18188,  18780,  19681,  20825,  22140,  23559,  25012,
	 26431,  27747,  28890,  29792,  30383,  30596,  30435,  29983,
	 29283,  28382,  27324,  26153,  24916,  23656,  22418,  21247,
	 20189,  19288,  18589,  18136,  17975,
};

static u16 anime_butterfly_1_tbl[] =
{
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,     1,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,    30,    31,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_butterfly_1 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	7,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	6,
	anime_butterfly_1_val,
	anime_butterfly_1_tbl,
	0,
};

ANIME *anime_butterfly[] =
{
	&anime_butterfly_0,
	&anime_butterfly_1,
};

#else /* SCRIPT */

extern Gfx gfx_butterfly_l[];
extern Gfx gfx_butterfly_r[];

S_SCRIPT s_butterfly[] =
{
	sShadow(25, 180, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_TEX_EDGE, gfx_butterfly_l, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sEnd(),
			sEnd(),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_TEX_EDGE, gfx_butterfly_r, 0, 0, 0),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
