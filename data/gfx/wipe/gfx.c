Gfx gfx_wipe_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsSPMatrix(&mtx_identity, G_MTX_PROJECTION|G_MTX_LOAD|G_MTX_NOPUSH),
	gsSPMatrix(&mtx_ortho, G_MTX_PROJECTION|G_MTX_MUL|G_MTX_NOPUSH),
	gsSPMatrix(&mtx_identity, G_MTX_MODELVIEW|G_MTX_LOAD|G_MTX_NOPUSH),
	gsSPPerspNormalize(0xFFFF),
	gsSPEndDisplayList(),
};

Gfx gfx_wipe_end[] =
{
	gsDPPipeSync(),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsSPEndDisplayList(),
};

Gfx gfx_wipe_draw[] =
{
	gsSP2Triangles( 0,  4,  1, 0,  1,  4,  5, 0),
	gsSP2Triangles( 1,  5,  2, 0,  2,  5,  6, 0),
	gsSP2Triangles( 2,  6,  7, 0,  2,  7,  3, 0),
	gsSP2Triangles( 3,  4,  0, 0,  3,  7,  4, 0),
	gsSPEndDisplayList(),
};
