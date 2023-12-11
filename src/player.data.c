#include <sm64.h>

const char str_player_ang[] = "ANG %d";
const char str_player_spd[] = "SPD %d";
const char str_player_sta[] = "STA %x";

extern void L80251818(void);
extern void L80251828(void);
extern void L80251838(void);
extern void L80251848(void);

void (*const player_80336438[])(void) =
{
	L80251838,
	L80251838,
	L80251838,
	L80251848,
	L80251848,
	L80251838,
	L80251828,
	L80251818,
};

extern void L80251818(void);
extern void L80251828(void);
extern void L80251838(void);
extern void L80251848(void);

void (*const player_80336458[])(void) =
{
	L80251838,
	L80251828,
	L80251818,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251828,
	L80251848,
	L80251848,
	L80251848,
	L80251838,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251848,
	L80251828,
	L80251838,
	L80251818,
};

extern void L802519A8(void);
extern void L802519B4(void);
extern void L802519C4(void);
extern void L802519D4(void);

void (*const player_803364EC[])(void) =
{
	L802519D4,
	L802519D4,
	L802519D4,
	L802519A8,
	L802519A8,
	L802519D4,
	L802519C4,
	L802519B4,
};

extern void L802519A8(void);
extern void L802519B4(void);
extern void L802519C4(void);
extern void L802519D4(void);
extern void L802519E4(void);
extern void L802519F4(void);

void (*const player_8033650C[])(void) =
{
	L802519D4,
	L802519C4,
	L802519B4,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519E4,
	L802519F4,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519D4,
	L802519A8,
	L802519B4,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519A8,
	L802519C4,
	L802519D4,
	L802519B4,
};

const float player_803365A0 = 0.9998477F;
const float player_803365A4 = 0.9848077F;
const float player_803365A8 = 0.9396926F;
const float player_803365AC = 0.7880108F;
const float player_803365B0 = 0.9998477F;
const float player_803365B4 = 0.9961947F;
const float player_803365B8 = 0.9848077F;
const float player_803365BC = 0.9659258F;
const float player_803365C0 = 0.9396926F;
const float player_803365C4 = 0.9659258F;
const float player_803365C8 = 0.9396926F;
const float player_803365CC = 0.8660254F;
const float player_803365D0 = 0.8660254F;

extern void L8025260C(void);
extern void L802526A4(void);
extern void L80252720(void);
extern void L80252760(void);
extern void L802527E4(void);
extern void L80252898(void);
extern void L802529A4(void);

void (*const player_803365D4[])(void) =
{
	L80252720,
	L8025260C,
	L802529A4,
	L802529A4,
	L802529A4,
	L802527E4,
	L80252760,
	L802529A4,
	L80252898,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L80252760,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802526A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L802529A4,
	L80252720,
};

const float player_80336658 = 0.8F;
const float player_8033665C = 0.8F;
const float player_80336660 = 0.8F;
const float player_80336664 = 0.6F;
const float player_80336668 = 0.4F;

s32 player_8033B280;

s8 player_8032DAA0[][6] =
{
	{0, 3, 1, 1, 1, 0},
	{3, 3, 3, 3, 1, 1},
	{5, 6, 5, 6, 3, 3},
	{7, 3, 7, 7, 3, 3},
	{4, 4, 4, 4, 3, 3},
	{0, 3, 1, 6, 3, 6},
	{3, 3, 3, 3, 6, 6},
};

u8 player_8032DACC[] =
{
	70, 50, 50, 60,
	70, 80, 80, 60,
	40, 20, 20, 30,
	50, 60, 60, 40,
};

u64 player_8032DAE0 = 0x4444449249255555;
