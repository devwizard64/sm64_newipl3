#ifndef SCRIPT

#include "horn.h"

static u16 txt_bully_horn[] =
{
#include "horn.rgba16.h"
};

static Gfx gfx_bully_horn_horn[] =
{
	gsDPLoadImageBlock(txt_bully_horn, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
#include "horn.horn.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_horn[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, 0, 0),
	gsSPDisplayList(gfx_bully_horn_horn),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static Lights1 light_bully[] =
{
	gdSPDefLight(0.25, 0x00, 0xE3, 0x00),
	gdSPDefLight(0.25, 0x00, 0xFF, 0x00),
	gdSPDefLight(0.25, 0xFF, 0xA5, 0x00),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
};

static u16 txt_bully_body_l[] =
{
#include "body_l.rgba16.h"
};

static u16 txt_bully_body_r[] =
{
#include "body_r.rgba16.h"
};

static u16 txt_bully_eye[] =
{
#include "eye.rgba16.h"
};

#include "shoeL.h"
#include "shoeR.h"
#include "eyes_old.h"
#include "body_old.h"

Gfx gfx_bully_shoeL[] =
{
	gsSPSetLights1N(light_bully[0]),
#include "shoeL.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_shoeR[] =
{
	gsSPSetLights1N(light_bully[1]),
#include "shoeR.shoe.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_eyes_old[] =
{
	gsSPSetLights1N(light_bully[4]),
#include "eyes_old.eye_old.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body_old[] =
{
	gsSPSetLights1N(light_bully[3]),
#include "body_old.body_old.h"
	gsSPEndDisplayList(),
};

#include "body.h"

static Gfx gfx_bully_body_body_l[] =
{
	gsDPLoadImageBlock(txt_bully_body_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body.body_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bully_body_body_r[] =
{
	gsDPLoadImageBlock(txt_bully_body_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body.body_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_bully_body_body_l),
	gsSPDisplayList(gfx_bully_body_body_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "body_big.h"

static Gfx gfx_bully_body_big_body_l[] =
{
	gsDPLoadImageBlock(txt_bully_body_l, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_big.body_l.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_bully_body_big_body_r[] =
{
	gsDPLoadImageBlock(txt_bully_body_r, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "body_big.body_r.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_body_big[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_bully_body_big_body_l),
	gsSPDisplayList(gfx_bully_body_big_body_r),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

#include "eyes.h"

static Gfx gfx_bully_eyes_eye[] =
{
	gsDPLoadImageBlock(txt_bully_eye, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "eyes.eye.h"
	gsSPEndDisplayList(),
};

Gfx gfx_bully_eyes[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_bully_eyes_eye),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

static short anime_bully_2_val[] =
{
	     0,    174,    174,    173,    171,    168,    164,    159,
	   152,    144,    157,    169,    177,    181,    179,    177,
	   174,    172,    171,    172,    173,    174,    174,      0,
	     0,      0,      0,      0,      0,      0,      0,      0,
	     0,     -1,     -1,      0,      3,      9,     14,     16,
	    14,     10,      5,      1,      0,  16383,      0,      0,
	     1,      2,      3,      4,      4,      4,      5,      5,
	     5,      6,      6,      6,      6,      6,      6,      5,
	     3,      2,      0,      0,      0,   -775,  -2529,  -4400,
	 -5527,  -5986,  -6416,  -6812,  -7165,  -7467,  -7710,  -7887,
	 -7991,  -8012,  -7944,  -7779,  -7509,  -6520,  -4632,  -2487,
	  -728,      0,  -5420,  -7426, -11920, -16611, -19209, -19860,
	-20261, -20445, -20447, -20301, -20042, -19704, -19321, -18927,
	-18558, -18247, -18028, -17764, -17366, -16945, -16611, -16475,
	-32767, -32767,  31790,  29598,  27296,  25987,  25578,  25237,
	 24966,  24763,  24630,  24567,  24575,  24652,  24801,  25020,
	 25311,  25674,  26667,  28458,  30461,  32093, -32767,  27868,
	 25769,  21069,  16162,  13444,  12762,  12342,  12149,  12145,
	 12296,  12566,  12918,  13318,  13728,  14113,  14437,  14665,
	 14941,  15358,  15799,  16148,  16291, -11646, -13265, -16857,
	-20528, -22383, -22562, -22496, -22222, -21778, -21202, -20533,
	-19808, -19067, -18346, -17684, -17119, -16689, -16440, -16351,
	-16363, -16414, -16444, -11750, -13347, -16891, -20512, -22339,
	-22513, -22443, -22167, -21724, -21151, -20485, -19765, -19028,
	-18313, -17656, -17095, -16668, -16423, -16340, -16357, -16412,
	-16444, -16305, -16305,  15574,  15504,  15319,  15063,  14776,
	 14329,  13746,  13302,  13272,  13655,  14226,  14919,  15672,
	 16421,  17101,  17649,  18001,  17974,  17572,  17014,  16518,
	 16305,
};

static u16 anime_bully_2_tbl[] =
{
	    1,     0,    22,     1,    22,    23,
	    1,     0,     1,    45,     1,     0,
	    1,     0,     1,     0,    22,   203,
	    1,     0,     1,     0,     1,   202,
	    1,     0,     1,     0,    22,   157,
	   22,    46,    22,    68,    22,    90,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   201,
	    1,     0,     1,     0,    22,   179,
	    1,   112,    22,   113,    22,   135,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_2 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	22,
	/*joint*/	13,
	anime_bully_2_val,
	anime_bully_2_tbl,
	0,
};

static short anime_bully_1_val[] =
{
	     0,    180,    177,    174,    176,    178,    180,    177,
	   174,    176,    179,  16383, -19083, -19111, -18868, -17507,
	-17165, -16893, -15488, -17178, -18341, -19038, -32767, -32767,
	 16291,  17086,  15637,  14167,  13998,  14100,  14232,  14918,
	 15736,  16256, -10082, -10957, -13091, -15747, -18188, -19677,
	-18474, -15840, -12842, -10270, -19573, -18597, -16269, -13490,
	-11162, -10186, -11477, -14402, -17534, -19449, -16305, -16305,
	 16305,
};

static u16 anime_bully_1_tbl[] =
{
	    1,     0,    10,     1,     1,     0,
	    1,     0,     1,    11,     1,     0,
	    1,     0,     1,     0,     1,    56,
	    1,     0,     1,     0,     1,    55,
	    1,     0,     1,     0,    10,    34,
	    1,     0,     1,     0,    10,    12,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    54,
	    1,     0,     1,     0,    10,    44,
	    1,    22,     1,    23,    10,    24,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_1 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	10,
	/*joint*/	13,
	anime_bully_1_val,
	anime_bully_1_tbl,
	0,
};

static short anime_bully_0_val[] =
{
	     0,    180,    179,    178,    176,    175,    174,    175,
	   175,    176,    177,    178,    179,    180,    179,    178,
	   177,    176,    175,    174,    175,    176,    178,    179,
	   180,  16383, -19083, -19100, -19125, -19121, -19048, -18868,
	-18203, -17507, -17279, -17170, -17112, -17042, -16893, -16546,
	-16063, -15643, -15488, -16204, -17178, -17735, -18253, -18682,
	-18975, -19083, -32767, -32767,  16291,  16440,  16756,  17038,
	 17086,  15637,  14734,  14167,  14005,  13967,  14004,  14065,
	 14100,  14088,  14072,  14102,  14232,  14489,  14839,  15234,
	 15624,  15962,  16201,  16291, -10082, -10245, -10702, -11397,
	-12279, -13294, -14389, -15511, -16608, -17626, -18512, -19214,
	-19677, -19739, -19354, -18647, -17742, -16765, -15840, -14693,
	-13196, -11697, -10543, -10082, -19573, -19388, -18878, -18106,
	-17139, -16042, -14879, -13717, -12620, -11653, -10881, -10371,
	-10186, -10405, -11004, -11900, -13007, -14241, -15518, -16752,
	-17859, -18755, -19354, -19573, -16305, -16305,  16305,
};

static u16 anime_bully_0_tbl[] =
{
	    1,     0,    24,     1,     1,     0,
	    1,     0,     1,    25,     1,     0,
	    1,     0,     1,     0,     1,   126,
	    1,     0,     1,     0,     1,   125,
	    1,     0,     1,     0,    24,    76,
	    1,     0,     1,     0,    24,    26,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,   124,
	    1,     0,     1,     0,    24,   100,
	    1,    50,     1,    51,    24,    52,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	24,
	/*joint*/	13,
	anime_bully_0_val,
	anime_bully_0_tbl,
	0,
};

static short anime_bully_3_val[] =
{
	     0,    174,    174,    174,    193,    208,    215,    211,
	   202,    189,    174,    174,    174,  16383, -16371, -16619,
	-16363, -13346, -15399, -18326, -20022, -19884, -19009, -17838,
	-16811, -16371, -32767, -32767,  16291,  16117,  16464,  19420,
	 17401,  14525,  12849,  12956,  13779,  14891,  15870,  16291,
	-13836, -14668, -16496, -18325, -19156, -16562, -13836, -14594,
	-16385, -17696, -17234, -16446, -13836, -14668, -16496, -18325,
	-19156, -16562, -13836, -14594, -16385, -17696, -17234, -16446,
	-16305, -16305,  13697,  14528,  16357,  18185,  19016,  16423,
	 13697,  14455,  16246,  17556,  17095,  16306,
};

static u16 anime_bully_3_tbl[] =
{
	    1,     0,    12,     1,     1,     0,
	    1,     0,     1,    13,     1,     0,
	    1,     0,     1,     0,    12,    66,
	    1,     0,     1,     0,     1,    65,
	    1,     0,     1,     0,    12,    40,
	    1,     0,     1,     0,    12,    14,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,    64,
	    1,     0,     1,     0,    12,    52,
	    1,    26,     1,    27,    12,    28,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_bully_3 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	12,
	/*joint*/	13,
	anime_bully_3_val,
	anime_bully_3_tbl,
	0,
};

ANIME *anime_bully[] =
{
	&anime_bully_0,
	&anime_bully_1,
	&anime_bully_2,
	&anime_bully_3,
};

#else /* SCRIPT */

extern Gfx gfx_bully_horn[];
extern Gfx gfx_bully_shoeL[];
extern Gfx gfx_bully_shoeR[];
extern Gfx gfx_bully_body[];
extern Gfx gfx_bully_body_big[];
extern Gfx gfx_bully_eyes[];

S_SCRIPT s_bully[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.375),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 75),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 146, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bully_shoeL, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, -75),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 146, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bully_shoeR, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, gfx_bully_body),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, gfx_bully_horn, 0, 0, 0),
					sJoint(LAYER_TEX_EDGE, gfx_bully_eyes, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_bigbully[] =
{
	sShadow(210, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.75),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 75),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 146, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bully_shoeL, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, -75),
					sStart(),
						sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 146, 0, 0),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_bully_shoeR, 0, 0, 0),
							sEnd(),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
					sStart(),
						sBillboard(0, 0, 0),
						sStart(),
							sGfx(LAYER_TEX_EDGE, gfx_bully_body_big),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, gfx_bully_horn, 0, 0, 0),
					sJoint(LAYER_TEX_EDGE, gfx_bully_eyes, 0, 0, 0),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
