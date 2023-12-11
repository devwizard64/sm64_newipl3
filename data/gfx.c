#include <sm64.h>

#include "gfx/glbfont/texture.c"
#include "gfx/staff/texture.c"
#include "gfx/lgfont/texture.c"
#include "gfx/camera/texture.c"
#include "gfx/glbfont/table.c"
#include "gfx/lgfont/table.c"
#include "gfx/staff/table.c"
#include "gfx/camera/table.c"

#include "gfx/select.ja_jp.h"

#ifdef JAPANESE
#include "gfx/message.ja_jp.h"
#include "gfx/course.ja_jp.h"
#include "gfx/level.ja_jp.h"
#endif
#ifdef ENGLISH
#include "gfx/message.en_us.h"
#include "gfx/course.en_us.h"
#include "gfx/level.en_us.h"
#endif

#include "gfx/font.c"
#include "gfx/number.c"
#include "gfx/shadow/texture.c"
#include "gfx/wipe/texture.c"
#include "gfx/water/texture.c"

UNUSED static Lights1 light_unused = gdSPDefLights1(0x40, 0x40, 0x40, 0xFF, 0xFF, 0xFF, 40, 40, 40);

static Mtx mtx_identity = gdSPDefMatrix(
		1, 0, 0, 0,
		0, 1, 0, 0,
		0, 0, 1, 0,
		0, 0, 0, 1
	);

static Mtx mtx_ortho = gdSPDefMatrix(
		0.0062408447265625, 0, 0, 0,
		0, 0.008331298828125, 0, 0,
		0, 0, -1, 0,
		-1, -1, -1, 1
	);

Gfx gfx_quad0[] =
{
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_quad1[] =
{
	gsSP2Triangles( 4,  5,  6, 0,  4,  6,  7, 0),
	gsSPEndDisplayList(),
};

#include "gfx/shadow/gfx.c"
#include "gfx/wipe/gfx.c"
#include "gfx/back.c"
#include "gfx/water/gfx.c"
#include "gfx/minimap/gfx.c"
#include "gfx/wave.c"
