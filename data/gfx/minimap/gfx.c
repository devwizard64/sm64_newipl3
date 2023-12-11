static u8 txt_minimap_arrow[] =
{
#include "arrow.ia8.h"
};

Gfx gfx_minimap_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_NOOP2),
	gsSPPerspNormalize(0xFFFF),
	gsSPMatrix(&mtx_identity, G_MTX_PROJECTION|G_MTX_LOAD|G_MTX_NOPUSH),
	gsSPEndDisplayList(),
};

Gfx gfx_minimap_tile[] =
{
	gsSPMatrix(&mtx_identity, G_MTX_MODELVIEW|G_MTX_LOAD|G_MTX_NOPUSH),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 64, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 6, 5, 0, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_minimap_arrow[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsDPSetImageBlock(G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8, 0, G_TX_CLAMP, G_TX_CLAMP, 3, 3, 0, 0),
	gsDPLoadImageBlockT(txt_minimap_arrow, G_IM_FMT_IA, G_IM_SIZ_8b, 8, 8),
	gsSPEndDisplayList(),
};

Gfx gfx_minimap_end[] =
{
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
