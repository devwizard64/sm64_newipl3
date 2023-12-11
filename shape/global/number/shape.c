#ifndef SCRIPT

#else /* SCRIPT */

extern Gfx gfx_number_0[];
extern Gfx gfx_number_1[];
extern Gfx gfx_number_2[];
extern Gfx gfx_number_3[];
extern Gfx gfx_number_4[];
extern Gfx gfx_number_5[];
extern Gfx gfx_number_6[];
extern Gfx gfx_number_7[];
extern Gfx gfx_number_8[];
extern Gfx gfx_number_9[];

S_SCRIPT s_number[] =
{
	sEmpty(),
	sStart(),
		sSelect(10, s_objlib_8029DB48),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_number_0),
			sGfx(LAYER_TEX_EDGE, gfx_number_1),
			sGfx(LAYER_TEX_EDGE, gfx_number_2),
			sGfx(LAYER_TEX_EDGE, gfx_number_3),
			sGfx(LAYER_TEX_EDGE, gfx_number_4),
			sGfx(LAYER_TEX_EDGE, gfx_number_5),
			sGfx(LAYER_TEX_EDGE, gfx_number_6),
			sGfx(LAYER_TEX_EDGE, gfx_number_7),
			sGfx(LAYER_TEX_EDGE, gfx_number_8),
			sGfx(LAYER_TEX_EDGE, gfx_number_9),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
