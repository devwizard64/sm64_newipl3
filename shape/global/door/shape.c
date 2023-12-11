#ifndef SCRIPT

static Lights1 light_door[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xFF, 0xFF, 0x00),
};

static u16 txt_door_a_face[] =
{
#include "a_face.rgba16.h"
};

static u16 txt_door_a_side[] =
{
#include "a_side.rgba16.h"
};

static u16 txt_door_b_face[] =
{
#include "b_face.rgba16.h"
};

static u16 txt_door_b_side[] =
{
#include "b_side.rgba16.h"
};

static u16 txt_door_d_face[] =
{
#include "d_face.rgba16.h"
};

static u16 txt_door_d_side[] =
{
#include "d_side.rgba16.h"
};

static u16 txt_door_e_face[] =
{
#include "e_face.rgba16.h"
};

static u16 txt_door_e_side[] =
{
#include "e_side.rgba16.h"
};

static u16 txt_door_f_face[] =
{
#include "f_face.rgba16.h"
};

static u16 txt_door_f_side[] =
{
#include "f_side.rgba16.h"
};

static u16 txt_door_star[] =
{
#include "star.rgba16.h"
};

static u16 txt_door_star1[] =
{
#include "star1.rgba16.h"
};

static u16 txt_door_star3[] =
{
#include "star3.rgba16.h"
};

static u16 txt_door_keyhole[] =
{
#include "keyhole.rgba16.h"
};

#include "ah.h"
#include "ahf.h"
#include "ahb.h"

static Gfx gfx_door_a_h_panel[] =
{
	gsDPLoadImageBlock(txt_door_a_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_door[0]),
#include "ah.a_side.h"
	gsDPLoadImageBlock(txt_door_a_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
#include "ah.a_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_a_h_knob_f[] =
{
	gsSPSetLights1N(light_door[1]),
#include "ahf.knob.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_a_h_knob_b[] =
{
	gsSPSetLights1N(light_door[1]),
#include "ahb.knob.h"
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_h[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_door_a_h_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPDisplayList(gfx_door_a_h_knob_f),
	gsSPDisplayList(gfx_door_a_h_knob_b),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_h_x[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsSPDisplayList(gfx_door_a_h_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPDisplayList(gfx_door_a_h_knob_f),
	gsSPEndDisplayList(),
};

#include "al.h"

static Vtx vtx_door_a_l_knob[] =
{
	{{{   492,    468,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   546,    412,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   492,    357,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   437,    412,   -152}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   492,    468,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   492,    357,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   546,    412,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   437,    412,    153}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
};

static Gfx gfx_door_a_l_panel[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_WRAP, G_TX_WRAP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_a_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPSetLights1N(light_door[0]),
#include "al.a_face.h"
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPVertex(vtx_door_a_l_knob, 8, 0),
	gsSP2Triangles( 4,  5,  6, 0,  4,  7,  5, 0),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_l[] =
{
	gsSPDisplayList(gfx_door_a_l_panel),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_a_l_x[] =
{
	gsSPDisplayList(gfx_door_a_l_panel),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Vtx vtx_door_star_h[] =
{
	{{{   441,    850,     64}, 0, {   992,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    850,     64}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    550,     64}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   441,    550,     64}, 0, {   992,    992}, {   0,    0,  127, 0xFF}}},
};

static Vtx vtx_door_star_l[] =
{
	{{{   441,    850,     59}, 0, {   992,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    850,     59}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   141,    550,     59}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   441,    550,     59}, 0, {   992,    992}, {   0,    0,  127, 0xFF}}},
};

static Gfx gfx_door_star_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPSetLights1N(light_door[0]),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_star_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_star_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star1_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star1_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star3_h[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_h, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

Gfx gfx_door_star3_l[] =
{
	gsSPDisplayList(gfx_door_star_start),
	gsDPLoadImageBlock(txt_door_star3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPVertex(vtx_door_star_l, 4, 0),
	gsSPBranchList(gfx_door_star_end),
};

static Vtx vtx_door_keyhole_h[] =
{
	{{{   595,    916,     59}, 0, {   478,      0}, {   0,    0,  127, 0xFF}}},
	{{{   405,    544,     59}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,     59}, 0, {   478,    992}, {   0,    0,  127, 0xFF}}},
	{{{   405,    916,     59}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,    -58}, 0, {   478,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    544,    -58}, 0, {     0,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    916,    -58}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   595,    916,    -58}, 0, {   478,      0}, {   0,    0, -127, 0xFF}}},
};

static Vtx vtx_door_keyhole_l[] =
{
	{{{   595,    916,     64}, 0, {   480,      0}, {   0,    0,  127, 0xFF}}},
	{{{   405,    544,     64}, 0, {     0,    992}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,     64}, 0, {   480,    992}, {   0,    0,  127, 0xFF}}},
	{{{   405,    916,     64}, 0, {     0,      0}, {   0,    0,  127, 0xFF}}},
	{{{   595,    544,    -63}, 0, {   480,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    544,    -63}, 0, {     0,    992}, {   0,    0, -127, 0xFF}}},
	{{{   405,    916,    -63}, 0, {     0,      0}, {   0,    0, -127, 0xFF}}},
	{{{   595,    916,    -63}, 0, {   480,      0}, {   0,    0, -127, 0xFF}}},
};

static Gfx gfx_door_keyhole_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_keyhole, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 32),
	gsSPSetLights1N(light_door[0]),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_keyhole_end[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  3,  1, 0),
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_door_keyhole_h[] =
{
	gsSPDisplayList(gfx_door_keyhole_start),
	gsSPVertex(vtx_door_keyhole_h, 8, 0),
	gsSPBranchList(gfx_door_keyhole_end),
};

Gfx gfx_door_keyhole_l[] =
{
	gsSPDisplayList(gfx_door_keyhole_start),
	gsSPVertex(vtx_door_keyhole_l, 8, 0),
	gsSPBranchList(gfx_door_keyhole_end),
};

#include "h.h"

static Gfx gfx_door_h_knob[] =
{
#include "h.knob.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_side[] =
{
	gsSPSetLights1N(light_door[0]),
#include "h.b_side.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_face[] =
{
#include "h.b_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_h_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_door_b_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_b_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_c_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_b_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_d_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_d_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_d_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_e_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_e_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_e_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_h_knob),
};

Gfx gfx_door_f_h[] =
{
	gsSPDisplayList(gfx_door_h_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPLoadImageBlock(txt_door_f_side, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPDisplayList(gfx_door_h_side),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_f_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_h_face),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_h_knob),
};

#include "l.h"

static Gfx gfx_door_l_panel[] =
{
	gsSPSetLights1N(light_door[0]),
#include "l.b_face.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_door_l_knob[] =
{
#include "l.knob.h"
	gsSPSetGeometryMode(G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

static Gfx gfx_door_l_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPClearGeometryMode(G_SHADING_SMOOTH),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_door_b_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_c_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_b_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_d_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_d_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_e_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_e_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_l_knob),
};

Gfx gfx_door_f_l[] =
{
	gsSPDisplayList(gfx_door_l_start),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 6, 0, 0),
	gsDPLoadImageBlock(txt_door_f_face, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 64),
	gsSPDisplayList(gfx_door_l_panel),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetLights1N(light_door[1]),
	gsSPBranchList(gfx_door_l_knob),
};

static short anime_door_0_val[] =
{
	     0,   -300,
};

static u16 anime_door_0_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_0 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	80,
	/*joint*/	4,
	anime_door_0_val,
	anime_door_0_tbl,
	0,
};

static short anime_door_1_val[] =
{
	     0,   -300,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      2,      6,      5,
	     3,      1,      0,      0,      0,     -1,     -2,     -1,
	     0,      2,      7,     13,     20,     27,     35,     43,
	    52,     61,     70,     79,     88,     97,    106,    115,
	   124,    133,    141,    149,    157,    164,    171,    177,
	   182,    187,    191,    195,    199,    202,    205,    207,
	   209,    210,    211,    211,    211,    209,    208,    205,
	   202,    198,    193,    187,    179,    168,    154,    138,
	   120,    102,     83,     64,     46,     28,     13,      0,
	    -7,     -9,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,    104,    645,   2051,
	  3499,   4019,   4484,   5417,   6475,   7595,   8718,   9781,
	 10722,  11481,  11994,  12360,  12716,  13061,  13393,  13713,
	 14018,  14307,  14580,  14836,  15073,  15290,  15487,  15662,
	 15814,  15941,  16044,  16121,  16171,  16192,  16184,  16146,
	 16076,  15974,  15974,  15974,  15974,  15974,  15974,  15974,
	 15974,  15974,  15974,  15974,  15974,  15974,  15974,  15974,
	 15974,  15974,  15974,  15974,  15532,  15089,  14647,  14205,
	 13762,  13320,  12878,  12435,   9326,   6217,   3108,      0,
	   302,    491,      0,      0,      0,      0,      0,      0,
	     0,      0,      0,      0,      0,      2,      6,      5,
	     3,      3,      5,      5,      5,      5,      5,      5,
	     7,     10,     15,     21,     28,     35,     43,     51,
	    60,     68,     77,     86,     95,    104,    113,    122,
	   131,    139,    148,    156,    163,    170,    177,    183,
	   188,    193,    197,    201,    204,    208,    211,    213,
	   215,    216,    217,    217,    217,    216,    214,    211,
	   208,    204,    199,    193,    185,    173,    159,    142,
	   124,    105,     86,     66,     47,     30,     13,      0,
	    -8,    -10,
};

static u16 anime_door_1_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	   80,     2,    80,    82,    80,   162,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_1 =
{
	/*flag */	ANIME_NOLOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	80,
	/*joint*/	4,
	anime_door_1_val,
	anime_door_1_tbl,
	0,
};

static ANIME anime_door_3 =
{
	/*flag */	ANIME_NOLOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	40,
	/*loop */	40,
	/*frame*/	80,
	/*joint*/	4,
	anime_door_1_val,
	anime_door_1_tbl,
	0,
};

static short anime_door_2_val[] =
{
	     0,   -300,      0,      0,      0,      0,      0,      0,
	     0,      0,      1,      3,      1,      0,     -9,    -33,
	   -63,    -90,   -104,    -97,    -58,     19,    165,    382,
	   641,    917,   1180,   1404,   1562,   1626,   1616,   1577,
	  1511,   1423,   1317,   1198,   1069,    934,    798,    665,
	   539,    424,    324,    244,    187,    148,    119,     99,
	    86,     79,     79,     83,     92,    103,    116,    131,
	   145,    159,    172,    182,    188,    190,    187,    179,
	   168,    154,    138,    120,    102,     83,     64,     46,
	    28,     13,      0,     -7,     -9,     -7,     -6,     -4,
	    -1,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,   1456,   3499,   4125,   4693,   5827,   7078,
	  8393,   9719,  11003,  12193,  13237,  14080,  14723,  15214,
	 15578,  15838,  16017,  16140,  16229,  16308,  16383,  16443,
	 16489,  16520,  16537,  16540,  16529,  16504,  16467,  16416,
	 16353,  16276,  16188,  16087,  15974,  15974,  15974,  15974,
	 15974,  15974,  15974,  15974,  15974,  15974,  15974,  15974,
	 15974,  15974,  15974,  15974,  15974,  15974,  15974,  15532,
	 15089,  14647,  14205,  13762,  13320,  12878,  12435,   9326,
	  6217,   3108,      0,    302,    491,    589,    616,    532,
	   311,      0,      0,      0,      0,      0,      0,      0,
	     0,      0,      1,      3,      1,      0,     -9,    -33,
	   -63,    -91,   -105,    -98,    -59,     19,    166,    384,
	   645,    922,   1187,   1413,   1572,   1636,   1627,   1587,
	  1521,   1433,   1327,   1207,   1078,    942,    806,    672,
	   546,    430,    330,    250,    193,    154,    125,    104,
	    91,     85,     85,     89,     98,    109,    122,    137,
	   152,    166,    178,    188,    194,    196,    193,    185,
	   173,    159,    142,    124,    105,     86,     66,     47,
	    30,     13,      0,     -8,    -10,     -9,     -8,     -5,
	    -2,      0,
};

static u16 anime_door_2_tbl[] =
{
	    1,     1,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
	   80,     2,    80,    82,    80,   162,
	    1,     0,     1,     0,     1,     0,
	    1,     0,     1,     0,     1,     0,
};

static ANIME anime_door_2 =
{
	/*flag */	ANIME_LOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	0,
	/*loop */	0,
	/*frame*/	80,
	/*joint*/	4,
	anime_door_2_val,
	anime_door_2_tbl,
	0,
};

static ANIME anime_door_4 =
{
	/*flag */	ANIME_NOLOOP|ANIME_XYZ,
	/*waist*/	0,
	/*start*/	40,
	/*loop */	40,
	/*frame*/	80,
	/*joint*/	4,
	anime_door_2_val,
	anime_door_2_tbl,
	0,
};

ANIME *anime_door[] =
{
	&anime_door_0,
	&anime_door_1,
	&anime_door_2,
	&anime_door_3,
	&anime_door_4,
	NULL,
};

#else /* SCRIPT */

extern Gfx gfx_door_a_h[];
extern Gfx gfx_door_a_h_x[];
extern Gfx gfx_door_a_l[];
extern Gfx gfx_door_a_l_x[];
extern Gfx gfx_door_star_h[];
extern Gfx gfx_door_star_l[];
extern Gfx gfx_door_star1_h[];
extern Gfx gfx_door_star1_l[];
extern Gfx gfx_door_star3_h[];
extern Gfx gfx_door_star3_l[];
extern Gfx gfx_door_keyhole_h[];
extern Gfx gfx_door_keyhole_l[];
extern Gfx gfx_door_b_h[];
extern Gfx gfx_door_c_h[];
extern Gfx gfx_door_d_h[];
extern Gfx gfx_door_e_h[];
extern Gfx gfx_door_f_h[];
extern Gfx gfx_door_b_l[];
extern Gfx gfx_door_c_l[];
extern Gfx gfx_door_d_l[];
extern Gfx gfx_door_e_l[];
extern Gfx gfx_door_f_l[];

S_SCRIPT s_door_a[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_a_noback[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h_x, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_l_x, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_b[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_b_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_b_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_c[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_c_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_c_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_d[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_d_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_d_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_e[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_e_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_e_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_door_f[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 3500),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_f_h, 0, 0, 0),
					sEnd(),
					sLOD(3500, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_f_l, 0, 0, 0),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_stardoor[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 1000),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_SURF, gfx_door_star_h),
						sEnd(),
					sEnd(),
					sLOD(1000, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_DECAL, gfx_door_star_l),
						sEnd(),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_stardoor1[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 1000),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_SURF, gfx_door_star1_h),
						sEnd(),
					sEnd(),
					sLOD(1000, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_DECAL, gfx_door_star1_l),
						sEnd(),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_stardoor3[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 1000),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_SURF, gfx_door_star3_h),
						sEnd(),
					sEnd(),
					sLOD(1000, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_XLU_DECAL, gfx_door_star3_l),
						sEnd(),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_keydoor[] =
{
	sPos(78, 0, 0),
	sStart(),
		sScale(0.25),
		sStart(),
			sJoint(LAYER_OPA_SURF, NULL, -300, 0, 0),
			sStart(),
				sStart(),
					sLOD(-2048, 1000),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_OPA_SURF, gfx_door_keyhole_l),
						sEnd(),
					sEnd(),
					sLOD(1000, 32767),
					sStart(),
						sJoint(LAYER_OPA_SURF, gfx_door_a_h, 0, 0, 0),
						sStart(),
							sGfx(LAYER_OPA_DECAL, gfx_door_keyhole_h),
						sEnd(),
					sEnd(),
				sEnd(),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
				sJoint(LAYER_OPA_SURF, NULL, 0, 0, 0),
			sEnd(),
		sEnd(),
	sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
