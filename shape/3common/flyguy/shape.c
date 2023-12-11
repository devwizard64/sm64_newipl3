#ifndef SCRIPT

UNUSED static long long align_flyguy_start = 0;

static u16 txt_flyguy_cloth[] =
{
#include "cloth.rgba16.h"
};

static u16 txt_flyguy_face[] =
{
#include "face.rgba16.h"
};

static u16 txt_flyguy_propeller[] =
{
#include "propeller.ia16.h"
};

static Lights1 light_flyguy[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0x02, 0x7F, 0xCC),
	gdSPDefLight(0.25, 0xFF, 0xC8, 0x23),
	gdSPDefLight(0.25, 0xE8, 0xBD, 0x13),
	gdSPDefLight(0.25, 0xB2, 0x00, 0x00),
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
};

#include "footR.h"
#include "footL.h"
#include "shaft.h"

Gfx gfx_flyguy_footR[] =
{
	gsSPSetLights1N(light_flyguy[1]),
#include "footR.foot.h"
	gsSPEndDisplayList(),
};

Gfx gfx_flyguy_footL[] =
{
	gsSPSetLights1N(light_flyguy[1]),
#include "footL.foot.h"
	gsSPEndDisplayList(),
};

Gfx gfx_flyguy_shaft[] =
{
	gsSPSetLights1N(light_flyguy[2]),
#include "shaft.shaft.h"
	gsSPEndDisplayList(),
};

static Lights1 light_flyguy_propeller[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "propeller.h"

static Gfx gfx_flyguy_propeller_propeller[] =
{
	gsDPLoadImageBlock(txt_flyguy_propeller, G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_flyguy_propeller[0]),
#include "propeller.propeller.h"
	gsSPEndDisplayList(),
};

Gfx gfx_flyguy_propeller[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsDPSetLoadTile(G_IM_FMT_IA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_IA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_flyguy_propeller_propeller),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_CULL_BACK),
	gsSPEndDisplayList(),
};

static Lights1 light_flyguy_body[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.5, 0x00, 0x00, 0x00),
	gdSPDefLight(0.5, 0xC4, 0x00, 0x26),
};

#include "body.h"

static Gfx gfx_flyguy_body_face[] =
{
	gsDPLoadImageBlock(txt_flyguy_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_flyguy_body[0]),
#include "body.face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_flyguy_body_cloth[] =
{
	gsDPLoadImageBlock(txt_flyguy_cloth, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPSetLights1N(light_flyguy_body[1]),
#include "body.cloth_black.h"
	gsSPSetLights1N(light_flyguy_body[2]),
#include "body.cloth_red.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_flyguy_body_shade[] =
{
	gsSPSetLights1N(light_flyguy_body[1]),
#include "body.black.h"
	gsSPEndDisplayList(),
};

Gfx gfx_flyguy_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_flyguy_body_face),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPDisplayList(gfx_flyguy_body_cloth),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_flyguy_body_shade),
	gsSPEndDisplayList(),
};

static short anime_flyguy_0_val[] =
{
	     0,     80,     80,     79,     79,     78,     77,     76,
	    75,     74,     72,     71,     70,     68,     67,     66,
	    64,     63,     62,     61,     61,     60,     60,     60,
	    60,     60,     61,     61,     62,     63,     64,     65,
	    66,     68,     69,     70,     72,     73,     74,     75,
	    76,     77,     78,     79,     79,     80,     80,  15392,
	 16383,  15392, -27552, -27549, -27540, -27526, -27508, -27484,
	-27456, -27424, -27387, -27347, -27304, -27257, -27208, -27156,
	-27101, -27045, -26986, -26926, -26865, -26803, -26740, -26677,
	-26613, -26534, -26429, -26304, -26165, -26019, -25871, -25728,
	-25596, -25482, -25391, -25331, -25306, -25324, -25419, -25608,
	-25865, -26167, -26489, -26807, -27096, -27333, -27493, -27552,
	-27656, -27652, -27641, -27622, -27597, -27566, -27529, -27487,
	-27440, -27388, -27333, -27274, -27211, -27146, -27079, -27010,
	-26939, -26867, -26795, -26723, -26650, -26579, -26509, -26424,
	-26314, -26184, -26042, -25892, -25743, -25599, -25468, -25355,
	-25268, -25212, -25194, -25219, -25328, -25536, -25819, -26149,
	-26500, -26846, -27161, -27418, -27592, -27656,      0,  16990,
	-16990,      0, -16990,  16990,      0,  16990, -16990,      0,
	-16990,  16990,      0,  16990, -16990,      0, -16990,  16990,
	     0,  16990, -16990,      0, -16990,  16990,      0,  16990,
	-16990,      0, -16990,  16990,      0,  16990, -16990,      0,
	-16990,  16990,      0,  16990, -16990,      0, -16990,  16990,
	     0,  16990, -16990,      0,  16383,      0,  16990, -16990,
	     0, -16990,  16990,      0,  16990, -16990,      0, -16990,
	 16990,      0,  16990, -16990,      0, -16990,  16990,      0,
	 16990, -16990,      0, -16990,  16990,      0,  16990, -16990,
	     0, -16990,  16990,      0,  16990, -16990,      0, -16990,
	 16990,      0,  16990, -16990,      0, -16990,  16990,      0,
	 16990, -16990,      0,  16383, -16383, -16383, -16383,  14401,
	 14423,  14486,  14586,  14719,  14881,  15068,  15275,  15498,
	 15734,  15978,  16227,  16475,  16719,  16955,  17178,  17385,
	 17572,  17734,  17867,  17967,  18030,  18052,  18032,  17974,
	 17882,  17759,  17609,  17436,  17243,  17034,  16812,  16582,
	 16346,  16108,  15871,  15641,  15419,  15210,  15017,  14844,
	 14694,  14571,  14479,  14421,  14401,
};

static u16 anime_flyguy_0_tbl[] =
{
	    1,     0,    46,     1,     1,     0,
	    1,    47,     1,    48,     1,    49,
	    1,     0,     1,     0,    46,   239,
	    1,     0,     1,     0,     1,   238,
	    1,     0,     1,     0,    46,    50,
	    1,     0,     1,     0,     1,   237,
	    1,     0,     1,     0,    46,    96,
	    1,     0,     1,     0,     1,   236,
	   46,   189,     1,     0,     1,   235,
	   46,   142,     1,     0,     1,   188,
};

static ANIME anime_flyguy_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	46,
	/*joint*/	9,
	anime_flyguy_0_val,
	anime_flyguy_0_tbl,
	0,
};

ANIME *anime_flyguy[] =
{
	&anime_flyguy_0,
};

UNUSED static long long align_flyguy_end = 0;

#else /* SCRIPT */

extern Gfx gfx_flyguy_footR[];
extern Gfx gfx_flyguy_footL[];
extern Gfx gfx_flyguy_propeller[];
extern Gfx gfx_flyguy_body[];

S_SCRIPT s_flyguy[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_flyguy_body, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, -45, -20, -55),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_flyguy_footR, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, -45, -20, 55),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_flyguy_footL, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 250, 0, 0),
					sStart(),
						sJoint(LAYER_XLU_SURF, gfx_flyguy_propeller, 0, 0, 0),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
