static Gfx gfx_shadow_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA, G_CC_MODULATERGBA),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_shadow_circle[] =
{
	gsSPDisplayList(gfx_shadow_start),
	gsDPLoadTextureBlock(txt_shadow_circle, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR, G_TX_MIRROR, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_shadow_square[] =
{
	gsSPDisplayList(gfx_shadow_start),
	gsDPLoadTextureBlock(txt_shadow_square, G_IM_FMT_IA, G_IM_SIZ_8b, 16, 16, 0, G_TX_MIRROR, G_TX_MIRROR, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_shadow_9[] =
{
	gsSP2Triangles( 0,  3,  4, 0,  0,  4,  1, 0),
	gsSP2Triangles( 1,  4,  2, 0,  2,  4,  5, 0),
	gsSP2Triangles( 3,  6,  4, 0,  4,  6,  7, 0),
	gsSP2Triangles( 4,  7,  8, 0,  4,  8,  5, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_shadow_4[] =
{
	gsSP2Triangles( 0,  2,  1, 0,  1,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_shadow_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPSetGeometryMode(G_CULL_BACK|G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
