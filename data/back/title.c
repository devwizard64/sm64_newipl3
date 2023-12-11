#include <sm64.h>

static Vtx vtx_titlebg[] =
{
	{{{     0,     60,     -1}, 0, {     0,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     60,     -1}, 0, {  2528,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     80,     -1}, 0, {  2528,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     80,     -1}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     40,     -1}, 0, {     0,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     40,     -1}, 0, {  2528,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     60,     -1}, 0, {  2528,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     60,     -1}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     20,     -1}, 0, {     0,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     20,     -1}, 0, {  2528,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     40,     -1}, 0, {  2528,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     40,     -1}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      0,     -1}, 0, {     0,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,      0,     -1}, 0, {  2528,    608}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    80,     20,     -1}, 0, {  2528,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     20,     -1}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_titlebg_start[] =
{
	gsDPSetCombineMode(G_CC_DECALRGB, G_CC_DECALRGB),
	gsDPSetRenderMode(G_RM_AA_OPA_SURF, G_RM_AA_OPA_SURF2),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_vtx[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPVertex(vtx_titlebg, 16, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_0[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_1[] =
{
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_2[] =
{
	gsSP2Triangles( 8,  9, 10, 0,  8, 10, 11, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_3[] =
{
	gsSP2Triangles(12, 13, 14, 0, 12, 14, 15, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_titlebg_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsSPEndDisplayList(),
};

static u16 txt_titlebg_mario_0[] =
{
#include "title/mario.0.rgba16.h"
};

static u16 txt_titlebg_mario_1[] =
{
#include "title/mario.1.rgba16.h"
};

static u16 txt_titlebg_mario_2[] =
{
#include "title/mario.2.rgba16.h"
};

static u16 txt_titlebg_mario_3[] =
{
#include "title/mario.3.rgba16.h"
};

static u16 txt_titlebg_gameover_0[] =
{
#include "title/gameover.0.rgba16.h"
};

static u16 txt_titlebg_gameover_1[] =
{
#include "title/gameover.1.rgba16.h"
};

static u16 txt_titlebg_gameover_2[] =
{
#include "title/gameover.2.rgba16.h"
};

static u16 txt_titlebg_gameover_3[] =
{
#include "title/gameover.3.rgba16.h"
};

u16 *txt_titlebg_mario[] =
{
	txt_titlebg_mario_0,
	txt_titlebg_mario_1,
	txt_titlebg_mario_2,
	txt_titlebg_mario_3,
};

u16 *txt_titlebg_gameover[] =
{
	txt_titlebg_gameover_0,
	txt_titlebg_gameover_1,
	txt_titlebg_gameover_2,
	txt_titlebg_gameover_3,
};

UNUSED static long long align_0 = 0;
