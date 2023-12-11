#ifdef SCRIPT

extern Gfx gfx_bobomb_body[];

S_SCRIPT s_ironball[] =
{
	sShadow(280, 200, SHADOW_CIRCLE4),
	sStart(),
		sScale(2.6),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_bobomb_body),
		sEnd(),
	sEnd(),
	sExit(),
};

S_SCRIPT s_ironball_noshadow[] =
{
	sEmpty(),
	sStart(),
		sScale(2.6),
		sStart(),
			sGfx(LAYER_TEX_EDGE, gfx_bobomb_body),
		sEnd(),
	sEnd(),
	sExit(),
};

#endif /* SCRIPT */
