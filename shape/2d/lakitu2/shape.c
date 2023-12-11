#ifndef SCRIPT

UNUSED static u16 txt_lakitu2_unused[] =
{
#include "unused.rgba16.h"
};

static u16 txt_lakitu2_eyes_open[] =
{
#include "eyes_open.rgba16.h"
};

static u16 txt_lakitu2_eyes_closed[] =
{
#include "eyes_closed.rgba16.h"
};

static u16 txt_lakitu2_shell[] =
{
#include "shell.rgba16.h"
};

static u16 txt_lakitu2_mouth[] =
{
#include "mouth.rgba16.h"
};

static u16 txt_lakitu2_lens[] =
{
#include "lens.rgba16.h"
};

static Lights1 light_lakitu2_body[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.5, 0xF2, 0xAB, 0x00),
};

#include "body.h"

static Gfx gfx_lakitu2_body_shell[] =
{
	gsDPLoadImageBlock(txt_lakitu2_shell, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_lakitu2_body[0]),
#include "body.shell.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_lakitu2_body_skin[] =
{
	gsSPSetLights1N(light_lakitu2_body[1]),
#include "body.skin.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_body[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_lakitu2_body_shell),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_lakitu2_body_skin),
	gsSPEndDisplayList(),
};

static Lights1 light_lakitu2_mouth[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "mouth.h"

static Gfx gfx_lakitu2_mouth_mouth[] =
{
	gsDPLoadImageBlock(txt_lakitu2_mouth, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_lakitu2_mouth[0]),
#include "mouth.mouth.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_mouth[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_lakitu2_mouth_mouth),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

static Lights1 light_lakitu2_armR[] =
{
	gdSPDefLight(0.5, 0xF2, 0xAB, 0x00),
};

#include "armR.h"

Gfx gfx_lakitu2_armR[] =
{
	gsSPSetLights1N(light_lakitu2_armR[0]),
#include "armR.skin.h"
	gsSPEndDisplayList(),
};

static Lights1 light_lakitu2_armL[] =
{
	gdSPDefLight(0.5, 0xF2, 0xAB, 0x00),
};

#include "armL.h"

Gfx gfx_lakitu2_armL[] =
{
	gsSPSetLights1N(light_lakitu2_armL[0]),
#include "armL.skin.h"
	gsSPEndDisplayList(),
};

static Lights1 light_lakitu2_eyes[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
};

#include "eyes.h"

static Gfx gfx_lakitu2_eyes_eyes[] =
{
	gsSPSetLights1N(light_lakitu2_eyes[0]),
#include "eyes.eyes.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_lakitu2_eyes_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, 6, 5, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_lakitu2_eyes_end[] =
{
	gsSPDisplayList(gfx_lakitu2_eyes_eyes),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_eyes_open[] =
{
	gsSPDisplayList(gfx_lakitu2_eyes_start),
	gsDPLoadImageBlock(txt_lakitu2_eyes_open, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPBranchList(gfx_lakitu2_eyes_end),
};

Gfx gfx_lakitu2_eyes_closed[] =
{
	gsSPDisplayList(gfx_lakitu2_eyes_start),
	gsDPLoadImageBlock(txt_lakitu2_eyes_closed, G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32),
	gsSPBranchList(gfx_lakitu2_eyes_end),
};

static Lights1 light_lakitu2_camera[] =
{
	gdSPDefLight(0.5, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.5, 0x19, 0x19, 0x19),
	gdSPDefLight(0.5, 0x32, 0x44, 0x40),
	gdSPDefLight(0.5, 0x30, 0x30, 0x30),
};

#include "camera.h"

static Gfx gfx_lakitu2_camera_lens[] =
{
	gsDPLoadImageBlock(txt_lakitu2_lens, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPSetLights1N(light_lakitu2_camera[0]),
#include "camera.lens.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_lakitu2_camera_shade[] =
{
	gsSPSetLights1N(light_lakitu2_camera[1]),
#include "camera.camera1.h"
	gsSPSetLights1N(light_lakitu2_camera[2]),
#include "camera.camera2.h"
	gsSPSetLights1N(light_lakitu2_camera[3]),
#include "camera.camera3.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_camera[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPDisplayList(gfx_lakitu2_camera_lens),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_lakitu2_camera_shade),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Lights1 light_lakitu2_rod[] =
{
	gdSPDefLight(0.25, 0xCC, 0x7F, 0x33),
	gdSPDefLight(0.25, 0xA5, 0x4F, 0x1B),
	gdSPDefLight(0.25, 0x19, 0x19, 0x19),
	gdSPDefLight(0.25, 0xB2, 0xB2, 0xB2),
	gdSPDefLight(0.25, 0x00, 0x00, 0x00),
	gdSPDefLight(0.25, 0x34, 0xB2, 0x2C),
};

#include "rod0.h"
#include "rod1.h"
#include "rod2.h"

Gfx gfx_lakitu2_rod0[] =
{
	gsSPSetLights1N(light_lakitu2_rod[1]),
#include "rod0.rod1.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_rod1[] =
{
	gsSPSetLights1N(light_lakitu2_rod[4]),
#include "rod1.rod4.h"
	gsSPEndDisplayList(),
};

Gfx gfx_lakitu2_rod2[] =
{
	gsSPSetLights1N(light_lakitu2_rod[4]),
#include "rod2.rod4.h"
	gsSPEndDisplayList(),
};

static short anime_lakitu2_0_val[] =
{
	     0,    151,    -62,  16383,   -890,   5139, -30283,    410,
	 -4047, -30547,      0,      0,      0,      0,      0,      0,
	     0,      1,      2,      2,      3,      4,      4,      4,
	     5,      5,      5,      5,      5,      6,      6,      6,
	     6,      6,      6,      5,      4,      3,      1,      0,
	 -1773,  -1612,  -1378,  -1085,   -744,   -372,     19,    416,
	   804,   1171,   1501,   1782,   1999,   2140,   2190,   2147,
	  2025,   1834,   1587,   1294,    965,    612,    246,   -122,
	  -482,   -823,  -1133,  -1402,  -1619,  -1773,    154,    101,
	    64,     42,     34,     38,     53,     78,    110,    149,
	   194,    242,    292,    344,    395,    444,    490,    532,
	   567,    595,    614,    623,    620,    604,    573,    527,
	   463,    381,    278,    154,   1460,   1414,   1286,   1090,
	   839,    547,    228,   -104,   -437,   -756,  -1048,  -1299,
	 -1495,  -1623,  -1668,  -1628,  -1516,  -1343,  -1119,   -857,
	  -567,   -260,     51,    358,    648,    911,   1134,   1308,
	  1420,   1460, -16537, -16537, -16537, -16537, -16537, -16537,
	-16537, -16537, -16538, -16538, -16538, -16538, -16538, -16538,
	-16538, -16538, -16538, -16538, -16538, -16538, -16538, -16538,
	-16537, -16537, -16537, -16537, -16537, -16537, -16537, -16537,
	  1460,   1414,   1286,   1090,    839,    547,    228,   -104,
	  -437,   -756,  -1048,  -1299,  -1495,  -1623,  -1668,  -1628,
	 -1516,  -1343,  -1119,   -857,   -567,   -260,     51,    358,
	   648,    911,   1134,   1308,   1420,   1460, -16537, -16537,
	-16537, -16537, -16537, -16537, -16537, -16537, -16538, -16538,
	-16538, -16538, -16538, -16538, -16538, -16538, -16538, -16538,
	-16538, -16538, -16538, -16538, -16537, -16537, -16537, -16537,
	-16537, -16537, -16537, -16537,   1246,  -3880,  30440,    410,
	 -4047, -30547, -23861, -23861,    -54,   -400,  10051,  10058,
	 10077,  10107,  10145,  10189,  10237,  10288,  10339,  10388,
	 10433,  10472,  10503,  10524,  10533,  10528,  10512,  10486,
	 10452,  10412,  10367,  10319,  10271,  10223,  10178,  10137,
	 10102,  10074,  10057,  10051,  23653,
};

static u16 anime_lakitu2_0_tbl[] =
{
	    1,     0,     1,     1,     1,     2,
	    1,     0,     1,     3,     1,     0,
	    1,     0,     1,     0,     1,   260,
	    1,   228,     1,   229,    30,   230,
	    1,     0,     1,     0,     1,   227,
	    1,     4,     1,     5,     1,     6,
	    1,     0,     1,     0,     1,   226,
	    1,   223,     1,   224,     1,   225,
	    1,   220,     1,   221,     1,   222,
	    1,     0,    30,   160,    30,   190,
	   30,    10,    30,    40,    30,    70,
	    1,     0,    30,   100,    30,   130,
	    1,     7,     1,     8,     1,     9,
};

static ANIME anime_lakitu2_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	30,
	/*joint*/	12,
	anime_lakitu2_0_val,
	anime_lakitu2_0_tbl,
	0,
};

ANIME *anime_lakitu2[] =
{
	&anime_lakitu2_0,
};

#else /* SCRIPT */

extern Gfx gfx_lakitu2_body[];
extern Gfx gfx_lakitu2_mouth[];
extern Gfx gfx_lakitu2_armR[];
extern Gfx gfx_lakitu2_armL[];
extern Gfx gfx_lakitu2_eyes_open[];
extern Gfx gfx_lakitu2_eyes_closed[];
extern Gfx gfx_lakitu2_camera[];
extern Gfx gfx_lakitu2_rod0[];
extern Gfx gfx_lakitu2_rod1[];
extern Gfx gfx_lakitu2_rod2[];

S_SCRIPT s_lakitu2[] =
{
	sShadow(100, 150, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sStart(),
				sJoint(LAYER_OPA_SURF, gfx_lakitu2_body, 0, 0, 0),
				sStart(),
					sJoint(LAYER_OPA_SURF, gfx_lakitu2_mouth, 132, 0, 0),
					sStart(),
						sSelect(2, s_objlib_8029DB48),
						sStart(),
							sGfx(LAYER_TEX_EDGE, gfx_lakitu2_eyes_open),
							sGfx(LAYER_TEX_EDGE, gfx_lakitu2_eyes_closed),
						sEnd(),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 18, 72),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_lakitu2_armR, 0, 0, 0),
					sEnd(),
					sJoint(LAYER_OPA_SURF, NULL, 87, 18, -72),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_lakitu2_armL, 0, 0, 0),
						sStart(),
							sJoint(LAYER_OPA_SURF, NULL, 334, -214, -50),
							sStart(),
								sJoint(LAYER_OPA_SURF, gfx_lakitu2_rod2, 0, 0, 0),
								sStart(),
									sJoint(LAYER_OPA_SURF, gfx_lakitu2_camera, 191, 0, 0),
								sEnd(),
								sJoint(LAYER_OPA_SURF, gfx_lakitu2_rod1, 0, 0, 0),
							sEnd(),
						sEnd(),
						sJoint(LAYER_OPA_SURF, gfx_lakitu2_rod0, 0, 0, 0),
					sEnd(),
				sEnd(),
			sEnd(),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
