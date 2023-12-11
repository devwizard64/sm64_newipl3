#include <sm64.h>

const float physics_80336670 = 1.1F;
const float physics_80336674 = 1.1F;

extern void L802554B0(void);
extern void L802554FC(void);
extern void L80255548(void);
extern void L80255594(void);
extern void L802555F4(void);
extern void L80255620(void);

void (*const physics_80336678[])(void) =
{
	L802554B0,
	L80255594,
	L802555F4,
	L80255594,
	L802554FC,
	L80255548,
	L80255548,
	L80255620,
	L80255620,
	L80255620,
	L80255620,
	L80255620,
	L802555F4,
};

const float physics_803366AC = 3.2F;
const float physics_803366B0 = 3.2F;
const float physics_803366B4 = 1.6F;
const float physics_803366B8 = -1500;
const float physics_803366BC = -3000;
const float physics_803366C0 = 10000;

s32 physics_8033B290;

s16 physics_8032DAF0[] = {12, 8, 4};

BGFACE physics_8032DAF8 =
{
	19, 0,
	0,
	0,
	0, 0,
	{0, 0, 0},
	{0, 0, 0},
	{0, 0, 0},
	0, 1, 0, 0,
	NULL,
};
