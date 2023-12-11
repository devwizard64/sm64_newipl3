Gfx gfx_back_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGB, G_CC_MODULATERGB),
	gsSPPerspNormalize(0xFFFF),
	gsSPMatrix(&mtx_identity, G_MTX_PROJECTION|G_MTX_LOAD|G_MTX_NOPUSH),
	gsSPEndDisplayList(),
};

Gfx gfx_back_tile[] =
{
	gsSPMatrix(&mtx_identity, G_MTX_MODELVIEW|G_MTX_LOAD|G_MTX_NOPUSH),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_back_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
