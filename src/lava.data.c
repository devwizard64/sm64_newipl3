#include <sm64.h>

const float lava_803382C0 = 10000;
const float lava_803382C4 = 6000;
const float lava_803382C8 = 3000;
const float lava_803382CC = 6000;
const float lava_803382D0 = 3000;

extern void L802E126C(void);
extern void L802E1274(void);
extern void L802E1294(void);
extern void L802E12B4(void);
extern void L802E12C8(void);
extern void L802E12DC(void);

void (*const lava_803382D4[])(void) =
{
	L802E126C,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E12DC,
	L802E1274,
	L802E1294,
	L802E12B4,
	L802E12C8,
};

BALIGN s16 lava_80361420[10];
Gfx *gfx_weather_lava;
s32 lava_80361438;
s32 lava_8036143C;

DALIGN s8 lava_803317A0 = 0;

Vtx vtx_weather_lava[] =
{
	{{{     0,      0,      0}, 0, {  1544,    964}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      0,      0}, 0, {   522,   -568}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     0,      0,      0}, 0, {  -498,    964}, {0xFF, 0xFF, 0xFF, 0xFF}}},
};
