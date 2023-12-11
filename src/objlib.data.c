#include <sm64.h>

const char str_objlib_areainfo[] = "areainfo %d";
const float objlib_803377BC = -10000;
const float objlib_803377C0 = 15000;
const float objlib_803377C4 = -10000;
const float objlib_803377C8 = -0.1F;
const float objlib_803377CC = -41.684F;
const float objlib_803377D0 = 85.859F;
const double objlib_803377D8 = 0.0001;
const double objlib_803377E0 = 0.001;
const double objlib_803377E8 = -0.001;
const float objlib_803377F0 = -10000;
const float objlib_803377F4 = -11000;
const double objlib_803377F8 = 0.1;
const float objlib_80337800 = -10000;
const double objlib_80337808 = 0.1;
const float objlib_80337810 = -12000;
const float objlib_80337814 = 12000;
const float objlib_80337818 = -12000;
const float objlib_8033781C = 12000;
const float objlib_80337820 = -12000;
const float objlib_80337824 = 12000;
const float objlib_80337828 = 0.1F;
const float objlib_8033782C = 0.1F;
const float objlib_80337830 = 1500;

extern void L802A49B4(void);
extern void L802A4A28(void);
extern void L802A4A58(void);
extern void L802A4AAC(void);
extern void L802A4B30(void);

void (*const objlib_80337834[])(void) =
{
	L802A49B4,
	L802A4A28,
	L802A4A58,
	L802A4AAC,
	L802A4B30,
};

s32 objlib_80361270;

s8 objlib_80330000[] = {-8, 8, -4, 4};
s16 objlib_80330004[] = {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};
s8 objlib_80330014[] = {4, 6, 7, -1};
