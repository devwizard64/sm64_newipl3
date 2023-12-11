#include <sm64.h>

const double wave_80338170 = 614;
const double wave_80338178 = 614;
const double wave_80338180 = 6.283185307179586;
const double wave_80338188 = 127;
const double wave_80338190 = 614;

s16 wave_80361300;
f32 wave_80361304;
f32 wave_80361308;
f32 wave_8036130C;
s16 *wave_80361310;
f32 *wave_80361314;
WAVEDATA *wavedatap;
s8 wave_8036131C;

struct wave *wave_80331300[] =
{
	(void *)0x0702551C,
	NULL,
};

struct wave *wave_80331308[] =
{
	(void *)0x07023620,
	(void *)0x07023698,
	(void *)0x07023710,
	(void *)0x07023788,
	(void *)0x07023800,
	(void *)0x07023878,
	(void *)0x070238F0,
	(void *)0x07023968,
	(void *)0x070239E0,
	(void *)0x07023A58,
	(void *)0x07023AD0,
	(void *)0x07023B48,
	(void *)0x07023BC0,
	(void *)0x07023C38,
	NULL,
};

struct wave *wave_80331344[] =
{
	(void *)0x07012F00,
	NULL,
};

struct wave **wave_8033134C[] =
{
	wave_80331300,
	wave_80331308,
	wave_80331344,
};

DALIGN s16 wave_80331358 = 1;
DALIGN s16 wave_8033135C = 0;
