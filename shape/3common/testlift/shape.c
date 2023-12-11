#ifndef SCRIPT

static Lights1 light_testlift[] =
{
	gdSPDefLight(0.25, 0xC8, 0xC8, 0x1E),
};

#include "testlift.h"

Gfx gfx_testlift[] =
{
	gsSPSetLights1(light_testlift[0]),
#include "testlift.shade.h"
	gsSPEndDisplayList(),
};

MAP map_testlift[] =
{
#include "map.h"
	MAP_END,
};

#endif /* SCRIPT */
