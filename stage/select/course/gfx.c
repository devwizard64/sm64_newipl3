static u16 txt_course_h[] =
{
#include "h.rgba16.h"
};

static u16 txt_course_l[] =
{
#include "l.rgba16.h"
};

static Vtx vtx_course_h[] =
{
	{{{   -32,      0,      0}, 0, {     0,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,      0,      0}, 0, {  4032,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,     32,      0}, 0, {  4032,      0}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{   -32,     32,      0}, 0, {     0,      0}, {0x00, 0x00, 0x7F, 0x00}}},
};

static Vtx vtx_course_l[] =
{
	{{{   -32,    -32,      0}, 0, {     0,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,    -32,      0}, 0, {  4032,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,      0,      0}, 0, {  4032,      0}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{   -32,      0,      0}, 0, {     0,      0}, {0x00, 0x00, 0x7F, 0x00}}},
};

Gfx gfx_course[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_course_h),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, 0, 0),
	gsSPVertex(vtx_course_h, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_course_l),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, 0, 0),
	gsSPVertex(vtx_course_l, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
