#include <sm64.h>

#include "file/shape.c"
#include "tile/shape.c"
#include "cursor/gfx.c"
#include "selfont/gfx.c"
#include "smfont/gfx.c"

UNUSED static long long align_course = 0;
#include "course/gfx.c"

MAP map_select[] =
{
#include "map.h"
	MAP_END,
};
