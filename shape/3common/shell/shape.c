#ifndef SCRIPT

static Lights1 light_shell_old[] =
{
	gdSPDefLight(0.25, 0x45, 0xCD, 0x1A),
	gdSPDefLight(0.25, 0xE4, 0x29, 0x1D),
	gdSPDefLight(0.25, 0x84, 0xC3, 0xE5),
	gdSPDefLight(0.25, 0xFA, 0xFF, 0xF8),
};

#include "shell_old.h"

static Gfx gfx_shell_old_top[] =
{
#include "shell_old.top.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_shell_old_bottom[] =
{
#include "shell_old.bottom.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_shell_old_side[] =
{
#include "shell_old.side.h"
	gsSPEndDisplayList(),
};

Gfx gfx_greenshell_old[] =
{
	gsDPPipeSync(),
	gsSPSetLights1(light_shell_old[0]),
	gsSPDisplayList(gfx_shell_old_top),
	gsSPSetLights1N(light_shell_old[2]),
	gsSPDisplayList(gfx_shell_old_bottom),
	gsSPSetLights1N(light_shell_old[3]),
	gsSPBranchList(gfx_shell_old_side),
};

Gfx gfx_redshell_old[] =
{
	gsDPPipeSync(),
	gsSPSetLights1N(light_shell_old[1]),
	gsSPDisplayList(gfx_shell_old_top),
	gsSPSetLights1N(light_shell_old[2]),
	gsSPDisplayList(gfx_shell_old_bottom),
	gsSPSetLights1N(light_shell_old[3]),
	gsSPBranchList(gfx_shell_old_side),
};

static Lights1 light_shell[] =
{
	gdSPDefLight(0.25, 0xFF, 0xFF, 0xFF),
	gdSPDefLight(0.25, 0xE0, 0xAE, 0x00),
};

static u16 txt_shell_bottom[] =
{
#include "bottom.rgba16.h"
};

static u16 txt_shell_top[] =
{
#include "top.rgba16.h"
};

#include "shell.h"

static Gfx gfx_shell_top[] =
{
	gsDPLoadImageBlock(txt_shell_top, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
	gsSPSetLights1N(light_shell[0]),
#include "shell.top.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_shell_bottom[] =
{
	gsDPLoadImageBlock(txt_shell_bottom, G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32),
#include "shell.bottom.h"
	gsSPEndDisplayList(),
};

static Gfx gfx_shell_shade[] =
{
	gsSPSetLights1N(light_shell[1]),
#include "shell.front.h"
	gsSPSetLights1N(light_shell[0]),
#include "shell.white.h"
	gsSPEndDisplayList(),
};

Gfx gfx_shell[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsSPDisplayList(gfx_shell_top),
	gsSPDisplayList(gfx_shell_bottom),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPDisplayList(gfx_shell_shade),
	gsSPEndDisplayList(),
};

#else /* SCRIPT */

extern Gfx gfx_greenshell_old[];
extern Gfx gfx_redshell_old[];
extern Gfx gfx_shell[];

S_SCRIPT s_shell[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(1),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_shell),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_redshell_old[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_redshell_old),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_greenshell_old[] =
{
	sShadow(70, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(0.25),
		sStart(),
			sGfx(LAYER_OPA_SURF, gfx_greenshell_old),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
