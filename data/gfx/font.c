UNUSED static long long align_font = 0;

Gfx gfx_print_copy_start[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_COPY),
	gsDPSetTexturePersp(G_TP_NONE),
	gsDPSetAlphaCompare(G_AC_THRESHOLD),
	gsDPSetBlendColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
	gsSPEndDisplayList(),
};

Gfx gfx_print_copy_char[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_print_copy_end[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

Gfx gfx_print_1cyc_start[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_NONE),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_AA_XLU_SURF, G_RM_AA_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPEndDisplayList(),
};

Gfx gfx_print_1cyc_char[] =
{
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 16, 16, 0, G_TX_WRAP, G_TX_WRAP, 4, 4, 0, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_print_1cyc_end[] =
{
	gsDPPipeSync(),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsSPEndDisplayList(),
};

static Vtx vtx_message_box[] =
{
	{{{     0,    -80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   130,    -80,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{   130,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_message_box[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATESE, G_CC_MODULATESE),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsSPVertex(vtx_message_box, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

static Vtx vtx_lgfont_char[] =
{
	{{{     0,      0,      0}, 0, {     0,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,     16,      0}, 0, {   480,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     16,      0}, 0, {   480,    256}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_lgfont_start[] =
{
	gsDPPipeSync(),
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATERGBA_ENV, G_CC_MODULATERGBA_ENV),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsSPEndDisplayList(),
};

Gfx gfx_lgfont_char[] =
{
	gsDPLoadTextureBlock_4bN(G_IM_FMT_IA, 16, 8, 0, G_TX_WRAP, G_TX_WRAP, 4, 3, 0, 0),
	gsSPVertex(vtx_lgfont_char, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_lgfont_end[] =
{
	gsDPPipeSync(),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetEnvColor(0xFF, 0xFF, 0xFF, 0xFF),
	gsSPSetGeometryMode(G_SHADING_SMOOTH|G_LIGHTING),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsSPEndDisplayList(),
};

static Vtx vtx_message_cursor[] =
{
	{{{     0,      0,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     8,      8,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,     16,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};

Gfx gfx_message_cursor[] =
{
	gsSPClearGeometryMode(G_LIGHTING),
	gsDPSetCombineMode(G_CC_MODULATESE, G_CC_MODULATESE),
	gsDPSetRenderMode(G_RM_XLU_SURF, G_RM_XLU_SURF2),
	gsDPSetTextureFilter(G_TF_POINT),
	gsSPVertex(vtx_message_cursor, 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPSetGeometryMode(G_LIGHTING),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_SURF, G_RM_AA_ZB_OPA_SURF2),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsSPEndDisplayList(),
};
