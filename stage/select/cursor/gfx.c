static Vtx vtx_select_cursor[] =
{
	{{{     0,      0,      0}, 0, {     0,   1984}, {0x00, 0x00, 0x7F, 0xFF}}},
	{{{    32,      0,      0}, 0, {  1984,   1984}, {0x00, 0x00, 0x7F, 0xFF}}},
	{{{    32,     32,      0}, 0, {  1984,      0}, {0x00, 0x00, 0x7F, 0xFF}}},
	{{{     0,     32,      0}, 0, {     0,      0}, {0x00, 0x00, 0x7F, 0xFF}}},
};

static u16 txt_select_cursor_0[] =
{
#include "0.rgba16.h"
};

static u16 txt_select_cursor_1[] =
{
#include "1.rgba16.h"
};

static Gfx gfx_select_cursor[] =
{
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetRenderMode(G_RM_AA_TEX_EDGE, G_RM_AA_TEX_EDGE2),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, 0, 0),
	gsSPVertex(vtx_select_cursor, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};

Gfx gfx_select_cursor_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_select_cursor_0),
	gsSPBranchList(gfx_select_cursor),
};

Gfx gfx_select_cursor_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_select_cursor_1),
	gsSPBranchList(gfx_select_cursor),
};
