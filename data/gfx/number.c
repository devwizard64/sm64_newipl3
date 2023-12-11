static Vtx vtx_number[] =
{
	{{{   -32,    -32,      0}, 0, {     0,   1024}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    32,    -32,      0}, 0, {  1024,   1024}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{    32,     32,      0}, 0, {  1024,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   -32,     32,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

static Gfx gfx_number_start[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetLoadTile(G_IM_FMT_RGBA, G_IM_SIZ_16b),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetImageBlock(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_CLAMP, G_TX_CLAMP, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

static Gfx gfx_number_end[] =
{
	gsSPVertex(vtx_number, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPSetGeometryMode(G_LIGHTING),
	gsSPEndDisplayList(),
};

Gfx gfx_number_0[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_0, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_1[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_1, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_2[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_2, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_3[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_3, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_4[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_4, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_5[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_5, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_6[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_6, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_7[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_7, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_8[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_8, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};

Gfx gfx_number_9[] =
{
	gsSPDisplayList(gfx_number_start),
	gsDPLoadImageBlock(txt_glbfont_9, G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16),
	gsSPDisplayList(gfx_number_end),
	gsSPEndDisplayList(),
};
