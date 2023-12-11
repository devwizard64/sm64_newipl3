#include <sm64.h>

#define CAM_WINDEMO(x1, x2, x3, x4, x5, x6, x7) \
{ \
	((x1) & 15) | ((x2) & 15) << 4, \
	((x3) & 15) | ((x4) & 15) << 4, \
	((x5) & 15) | ((x6) & 15) << 4, \
	((x7) & 15), \
}

#define CAM_PAUSE(a1, a2, a3, a4, b1, b2, b3, b4) \
( \
	((a1) & 1) << 0 | ((a2) & 1) << 1 | \
	((a3) & 1) << 2 | ((a4) & 1) << 3 | \
	((b1) & 1) << 4 | ((b2) & 1) << 5 | \
	((b3) & 1) << 6 | ((b4) & 1) << 7 \
)

extern void L8027F5CC(void);
extern void L8027F5EC(void);
extern void L8027F614(void);
extern void L8027F62C(void);
extern void L8027F6CC(void);
extern void L8027F76C(void);
extern void L8027F80C(void);
extern void L8027F834(void);
extern void L8027F89C(void);

void (*const camera_803370F0[])(void) =
{
	L8027F5CC,
	L8027F614,
	L8027F62C,
	L8027F6CC,
	L8027F76C,
	L8027F89C,
	L8027F89C,
	L8027F80C,
	L8027F5EC,
	L8027F834,
};

const float camera_80337118 = 0.07F;
const float camera_8033711C = 0.07F;

extern void L8027F8F0(void);
extern void L8027F908(void);
extern void L8027F920(void);
extern void L8027F938(void);
extern void L8027F950(void);
extern void L8027F968(void);
extern void L8027F980(void);
extern void L8027F9A8(void);
extern void L8027F9C0(void);
extern void L8027F9D8(void);

void (*const camera_80337120[])(void) =
{
	L8027F8F0,
	L8027F908,
	L8027F920,
	L8027F9D8,
	L8027F9C0,
	L8027F938,
	L8027F950,
	L8027F968,
	L8027F980,
	L8027F9A8,
};

const float camera_80337148 = 0.7F;
const float camera_8033714C = 0.4F;
const float camera_80337150 = 20000;
const float camera_80337154 = 20000;
const float camera_80337158 = 4508;
const float camera_8033715C = -3739;
const float camera_80337160 = 7050;
const float camera_80337164 = 2458;
const float camera_80337168 = -2458;
const float camera_8033716C = 0.9F;
const float camera_80337170 = 0.9F;
const float camera_80337174 = 5994;
const float camera_80337178 = -3945;
const float camera_8033717C = 0.9F;
const float camera_80337180 = 0.9F;
const float camera_80337184 = 0.3F;
const float camera_80337188 = 0.3F;
const float camera_8033718C = 0.3F;
const float camera_80337190 = 0.9F;
const float camera_80337194 = -11000;
const float camera_80337198 = 20000;
const float camera_8033719C = 1.6F;
const float camera_803371A0 = 5000;
const float camera_803371A4 = 5000;
const float camera_803371A8 = 20000;
const float camera_803371AC = 2047;
const float camera_803371B0 = 4508;
const float camera_803371B4 = -3739;
const float camera_803371B8 = 2458;
const float camera_803371BC = -2458;
const float camera_803371C0 = 10000;
const float camera_803371C4 = 1050;
const float camera_803371C8 = 0.8F;
const float camera_803371CC = 0.9F;
const float camera_803371D0 = 0.1F;
const float camera_803371D4 = 0.2F;
const float camera_803371D8 = -11000;
const float camera_803371DC = 375;
const float camera_803371E0 = 610;
const float camera_803371E4 = -11000;
const float camera_803371E8 = 20000;
const float camera_803371EC = 20000;
const float camera_803371F0 = -11000;
const float camera_803371F4 = 20000;
const float camera_803371F8 = 3790;
const float camera_803371FC = -2253;
const float camera_80337200 = 0.9F;
const float camera_80337204 = 0.7F;
const float camera_80337208 = 0.7F;
const float camera_8033720C = 0.7F;
const float camera_80337210 = -11000;
const float camera_80337214 = -11000;

extern void L80286C84(void);
extern void L80286C94(void);
extern void L80286CA4(void);
extern void L80286CB4(void);
extern void L80286CC4(void);
extern void L80286CD4(void);
extern void L80286CE4(void);
extern void L80286CF4(void);
extern void L80286D04(void);
extern void L80286D14(void);
extern void L80286D24(void);
extern void L80286D34(void);
extern void L80286D44(void);
extern void L80286D54(void);
extern void L80286D64(void);

void (*const camera_80337218[])(void) =
{
	L80286CD4,
	L80286CE4,
	L80286C84,
	L80286CF4,
	L80286D64,
	L80286C94,
	L80286D64,
	L80286CA4,
	L80286D34,
	L80286CB4,
	L80286D14,
	L80286D24,
	L80286D44,
	L80286CC4,
	L80286D64,
	L80286D04,
	L80286D54,
};

const float camera_8033725C = 0.3F;
const float camera_80337260 = 0.3F;
const float camera_80337264 = 0.8F;
const float camera_80337268 = 0.3F;

extern void L8028752C(void);
extern void L80287578(void);
extern void L8028758C(void);
extern void L802875A0(void);
extern void L80287664(void);
extern void L8028767C(void);
extern void L80287694(void);
extern void L802876B0(void);
extern void L802876C8(void);
extern void L802876EC(void);

void (*const camera_8033726C[])(void) =
{
	L802876B0,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876EC,
	L802876C8,
	L802875A0,
	L802876EC,
	L802876EC,
	L802876EC,
	L80287664,
	L802876EC,
	L80287694,
	L802876EC,
	L802876EC,
	L802876EC,
	L8028767C,
	L802876EC,
	L802876EC,
	L802876EC,
	L8028752C,
	L802876EC,
	L802876EC,
	L80287578,
	L8028758C,
};

const float camera_803372E0 = -6901;
const float camera_803372E4 = 2376;
const float camera_803372E8 = 4500;
const float camera_803372EC = 257;
const float camera_803372F0 = 2150;
const float camera_803372F4 = 0.6666667F;
const float camera_803372F8 = 0.16666667F;
const float camera_803372FC = 0.33333334F;
const float camera_80337300 = 0.16666667F;

extern void L802888B4(void);
extern void L802888D8(void);
extern void L802888FC(void);
extern void L80288920(void);
extern void L80288944(void);
extern void L80288968(void);

void (*const camera_80337304[])(void) =
{
	L802888B4,
	L80288920,
	L80288944,
	L802888FC,
	L80288968,
	L802888D8,
};

const float camera_8033731C = 0.04F;
const float camera_80337320 = 0.06F;
const float camera_80337324 = 0.1F;
const float camera_80337328 = 0.07F;
const float camera_8033732C = 0.07F;
const float camera_80337330 = 0.07F;
const float camera_80337334 = 0.02F;
const float camera_80337338 = 0.02F;

extern void L8028C658(void);
extern void L8028C668(void);
extern void L8028C678(void);
extern void L8028C688(void);
extern void L8028C698(void);
extern void L8028C6A8(void);

void (*const camera_8033733C[])(void) =
{
	L8028C678,
	L8028C698,
	L8028C6A8,
	L8028C688,
	L8028C668,
	L8028C658,
};

extern void L8028C724(void);
extern void L8028C734(void);
extern void L8028C744(void);
extern void L8028C754(void);
extern void L8028C764(void);

void (*const camera_80337354[])(void) =
{
	L8028C724,
	L8028C734,
	L8028C744,
	L8028C754,
	L8028C764,
};

const float camera_80337368 = 0.9F;
const float camera_8033736C = -11000;
const float camera_80337370 = 6343;
const float camera_80337374 = 7543;
const float camera_80337378 = 6043;
const float camera_8033737C = 6043;
const float camera_80337380 = -813;
const float camera_80337384 = 1103;
const float camera_80337388 = 1229;
const float camera_8033738C = 1229;
const float camera_80337390 = -2300;
const float camera_80337394 = -405;
const float camera_80337398 = -405;
const float camera_8033739C = -11000;
const float camera_803373A0 = 20000;
const float camera_803373A4 = -11000;
const float camera_803373A8 = 20000;
const float camera_803373AC = -11000;
const float camera_803373B0 = 20000;
const float camera_803373B4 = -11000;
const float camera_803373B8 = 20000;
const float camera_803373BC = 265;
const float camera_803373C0 = -0.1F;
const float camera_803373C4 = 0.2F;
const float camera_803373C8 = 0.2F;
const float camera_803373CC = 457;
const float camera_803373D0 = 307;
const float camera_803373D4 = 407;
const float camera_803373D8 = 0.05F;
const float camera_803373DC = 0.01F;
const float camera_803373E0 = 0.2F;
const float camera_803373E4 = 0.2F;
const float camera_803373E8 = 0.1F;
const float camera_803373EC = 0.2F;
const float camera_803373F0 = 0.2F;
const float camera_803373F4 = 0.05F;
const float camera_803373F8 = 0.8F;
const float camera_803373FC = 0.1F;
const float camera_80337400 = 0.1F;
const float camera_80337404 = -11000;
const float camera_80337408 = 0.02F;
const float camera_8033740C = 1250;
const float camera_80337410 = 0.1F;
const float camera_80337414 = 0.2F;
const float camera_80337418 = 0.7F;
const float camera_8033741C = 0.4F;
const float camera_80337420 = 0.7F;
const float camera_80337424 = 0.2F;
const float camera_80337428 = 0.1F;
const float camera_8033742C = 0.1F;
const float camera_80337430 = 0.1F;
const float camera_80337434 = 0.1F;
const float camera_80337438 = 0.1F;
const float camera_8033743C = 1.1F;

extern void L80297D60(void);
extern void L80297DA0(void);
extern void L80297E00(void);
extern void L80297E20(void);
extern void L80297E60(void);
extern void L80297EA0(void);
extern void L80297EC0(void);
extern void L80297F00(void);
extern void L80297F20(void);
extern void L80297F40(void);
extern void L80298024(void);

void (*const camera_80337440[])(void) =
{
	L80297E00,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297E60,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297D60,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297EA0,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297EC0,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297DA0,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297F00,
	L80298024,
	L80297E20,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297F20,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80298024,
	L80297F40,
};

const float camera_80337644 = 0.15F;
const float camera_80337648 = 0.1F;
const float camera_8033764C = 307;
const float camera_80337650 = 0.2F;
const float camera_80337654 = 0.9F;
const float camera_80337658 = -11000;
const float camera_8033765C = 0.7F;
const float camera_80337660 = 0.2F;
const float camera_80337664 = 0.02F;

extern void L8029956C(void);
extern void L802995B4(void);
extern void L802995FC(void);
extern void L80299644(void);
extern void L8029968C(void);
extern void L802996D4(void);
extern void L8029971C(void);
extern void L80299764(void);
extern void L802997AC(void);
extern void L802997F4(void);
extern void L8029983C(void);
extern void L80299884(void);
extern void L802998CC(void);
extern void L80299914(void);
extern void L8029995C(void);
extern void L802999A4(void);
extern void L802999EC(void);
extern void L80299A34(void);
extern void L80299A7C(void);
extern void L80299AC4(void);
extern void L80299B0C(void);
extern void L80299B54(void);
extern void L80299B9C(void);
extern void L80299BE4(void);
extern void L80299C2C(void);
extern void L80299C74(void);
extern void L80299CBC(void);
extern void L80299D04(void);
extern void L80299D4C(void);
extern void L80299D94(void);
extern void L80299DDC(void);
extern void L80299E24(void);
extern void L80299E6C(void);
extern void L80299EB4(void);
extern void L80299EFC(void);
extern void L80299F44(void);
extern void L80299F8C(void);
extern void L80299FD4(void);
extern void L8029A01C(void);
extern void L8029A064(void);
extern void L8029A0AC(void);
extern void L8029A0F4(void);
extern void L8029A13C(void);
extern void L8029A184(void);
extern void L8029A1CC(void);
extern void L8029A214(void);

void (*const camera_80337668[])(void) =
{
	L802996D4,
	L8029971C,
	L8029A214,
	L802997F4,
	L8029983C,
	L80299884,
	L8029A214,
	L8029A214,
	L8029A214,
	L8029968C,
	L80299764,
	L802997AC,
	L8029995C,
	L802999EC,
	L802999A4,
	L80299B54,
	L8029A214,
	L80299914,
	L8029A214,
	L80299C74,
	L80299CBC,
	L80299D04,
	L80299D4C,
	L80299DDC,
	L80299E24,
	L80299E6C,
	L80299EB4,
	L80299EFC,
	L80299F44,
	L8029A214,
	L802998CC,
	L80299C2C,
	L8029A0AC,
	L8029A13C,
	L8029A184,
	L80299A7C,
	L80299AC4,
	L80299B0C,
	L8029A1CC,
	L80299F8C,
	L8029A064,
	L8029A0F4,
	L802995FC,
	L8029956C,
	L80299644,
	L80299A34,
	L802995B4,
	L80299B9C,
	L80299BE4,
	L80299FD4,
	L8029A01C,
	L80299D94,
};

extern void L8029AAAC(void);
extern void L8029AABC(void);
extern void L8029AACC(void);
extern void L8029AADC(void);
extern void L8029AAEC(void);
extern void L8029AAFC(void);
extern void L8029AB0C(void);
extern void L8029AB1C(void);
extern void L8029AB2C(void);
extern void L8029AB3C(void);
extern void L8029AB4C(void);
extern void L8029AB5C(void);

void (*const camera_80337738[])(void) =
{
	L8029AAAC,
	L8029AADC,
	L8029AB5C,
	L8029AAFC,
	L8029AB0C,
	L8029AB1C,
	L8029AAEC,
	L8029AB5C,
	L8029AB2C,
	L8029AB3C,
	L8029AB4C,
	L8029AACC,
	L8029AABC,
};

const float camera_8033776C = 0.7F;
const float camera_80337770 = -554;
const float camera_80337774 = 3044;
const float camera_80337778 = -1314;
const float camera_8033777C = 0.7F;

extern void L8029C2FC(void);
extern void L8029C320(void);
extern void L8029C344(void);
extern void L8029C554(void);
extern void L8029C5EC(void);

void (*const camera_80337780[])(void) =
{
	L8029C320,
	L8029C2FC,
	L8029C344,
	L8029C5EC,
	L8029C554,
};

BALIGN PL_CAMERA pl_camera_data[2];
BALIGN char _camera_bss_48[0x178-0x48];
BALIGN CAMDATA camdata;
BALIGN char _camera_bss_238[0x328-0x238];
s16 camera_8033C848;
s16 camera_8033C84A;
BALIGN char _camera_bss_330[0x6A8-0x330];
int camera_8033CBC8;
int camera_8033CBCC;
CAMERA *camerap;

DALIGN s32 camera_8032DF20 = 0;
DALIGN OBJECT *camera_8032DF24 = NULL;
DALIGN s32 camera_8032DF28 = 0;
DALIGN s32 camera_8032DF2C = 0;
DALIGN OBJECT *camera_8032DF30 = NULL;
DALIGN s16 camera_8032DF34 = 0x0400;
DALIGN s32 camera_stagescene = 0;
DALIGN s32 camera_prevstage = 0;
DALIGN f32 camera_8032DF40 = 1000;
DALIGN f32 camera_8032DF44 = 800;
DALIGN f32 camera_8032DF48 = 0;
DALIGN f32 camera_8032DF4C = 800;
DALIGN u8 camera_8032DF50 = 0;
DALIGN u8 camera_8032DF54 = 0;
DALIGN u8 camera_8032DF58 = 0;
DALIGN u8 camera_8032DF5C = 0;
DALIGN PL_CAMERA *mario_cam = &pl_camera_data[0];
DALIGN PL_CAMERA *luigi_cam = &pl_camera_data[1];
DALIGN s32 camera_8032DF68 = 0;
VECF camera_8032DF6C = {646, 143, -1513};
VECF camera_8032DF78 = {646, 143, -1513};
VECF camera_8032DF84 = {646, 143, -1513};
VECF camera_8032DF90 = {646, 143, -1513};
VECF camera_8032DF9C = {646, 143, -1513};

int (*camera_8032DFA8[])(CAMERA *, VECF, VECF) =
{
	NULL,
	camera_80280810,
	camera_802816A0,
	camera_80282D78,
	camera_80283A68,
	camera_80282C0C,
	camera_80285808,
	camera_80283A68,
	camera_80283A18,
	camera_802850EC,
	camera_80285ED8,
	camera_802826A0,
	camera_80281904,
	camera_80282280,
	camera_80280970,
	camera_802850EC,
	camera_80283A68,
	camera_80284D74,
};

VECF camera_8032DFF0 = {0, 0, 0};
VECF camera_8032DFFC = {0, -150, -125};
u16 camera_8032E008[] = {14, 1, 2, 4, 16, 9, 17};
u8 camera_8032E018[] = {165, 143, 166, 167, 175};

CAMPOS campos_bbh_library_test[] =
{
	{1, {-3026, 912, -2148}, 600, 0.3},
	{0, {-4676, 917, -3802}, 600, 0.3},
};

CAMPOS campos_bbh_library[] =
{
	{1, {-929, 1619, -1490}, 50, 0},
	{0, {-2118, 1619, -1490}, 50, 0},
};

CAMCTL camctl_null[] =
{
	{0},
};

CAMCTL camctl_sl[] =
{
	{1, camera_8028DC1C, {1119, 3584, 1125}, {1177, 358, 358}, -0x1D27},
	{1, camera_8028DC70, {1119, 3584, 1125}, {4096, 4096, 4096}, -0x1D27},
	{0},
};

CAMCTL camctl_thi[] =
{
	{1, camera_8028DFB4, {-4609, -2969, 6448}, {100, 300, 300}, 0x0000},
	{1, camera_8028DFE8, {-4809, -2969, 6448}, {100, 300, 300}, 0x0000},
	{0},
};

CAMCTL camctl_hmc[] =
{
	{1, camera_8028DD48, {1996, 102, 0}, {205, 100, 205}, 0x0000},
	{1, camera_8028E098, {3350, -4689, 4800}, {600, 50, 600}, 0x0000},
	{1, camera_8028DE2C, {-3278, 1236, 1379}, {358, 200, 358}, 0x0000},
	{1, camera_8028DE5C, {-2816, 2055, -2560}, {358, 200, 358}, 0x0000},
	{1, camera_8028DE90, {-3532, 1543, -7040}, {358, 200, 358}, 0x0000},
	{1, camera_8028DEC4, {-972, 1543, -7347}, {358, 200, 358}, 0x0000},
	{0},
};

CAMCTL camctl_ssl[] =
{
	{1, camera_8028DEF8, {-2048, 1080, -1024}, {150, 150, 150}, 0x0000},
	{2, camera_8028DF24, {0, -104, -104}, {1248, 1536, 2950}, 0x0000},
	{2, camera_8028DF24, {0, 2500, 256}, {515, 5000, 515}, 0x0000},
	{3, camera_8028DF6C, {0, -1534, -2040}, {1000, 800, 1000}, 0x0000},
	{0},
};

CAMCTL camctl_rr[] =
{
	{1, camera_8028DA18, {-4197, 3819, -3087}, {1769, 1490, 342}, 0x0000},
	{1, camera_8028DBB4, {-4197, 3819, -3771}, {769, 490, 342}, 0x0000},
	{1, camera_8028DAEC, {-5603, 4834, -5209}, {300, 600, 591}, 0x0000},
	{1, camera_8028DB38, {-2609, 3730, -5463}, {300, 650, 577}, 0x0000},
	{1, camera_8028DA50, {-4196, 7343, -5155}, {4500, 1000, 4500}, 0x0000},
	{1, camera_8028DB38, {-4196, 6043, -5155}, {500, 300, 500}, 0x0000},
	{0},
	{1, camera_8028E01C, {2468, 2720, -4608}, {3263, 1696, 3072}, 0x0000},
	{-1, camera_8028E064, {0, 0, 0}, {0, 0, 0}, 0x0000},
	{0},
};

CAMCTL camctl_cotmc[] =
{
	{1, camera_8028DBF4, {0, 1500, 3500}, {550, 10000, 1500}, 0x0000},
	{0},
};

CAMCTL camctl_ccm[] =
{
	{2, camera_8028EC04, {-4846, 2061, 27}, {1229, 1342, 396}, 0x0000},
	{2, camera_8028EC2C, {-6412, -3917, -6246}, {307, 185, 132}, 0x0000},
	{0},
};

CAMCTL camctl_inside[] =
{
	{1, camera_8028E38C, {-1100, 657, -1346}, {300, 150, 300}, 0x0000},
	{1, camera_8028E298, {-1099, 657, -803}, {300, 150, 300}, 0x0000},
	{1, camera_8028E38C, {-2304, -264, -4072}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {-2304, 145, -1344}, {140, 150, 140}, 0x0000},
	{1, camera_8028E298, {-2304, 145, -802}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {2816, 1200, -256}, {100, 100, 100}, 0x0000},
	{1, camera_8028E38C, {256, -161, -4226}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {256, 145, -1344}, {140, 150, 140}, 0x0000},
	{1, camera_8028E298, {256, 145, -802}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {-1023, 44, -4870}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {-459, 145, -1020}, {140, 150, 140}, 0x6000},
	{1, camera_8028E298, {-85, 145, -627}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {-1589, 145, -1020}, {140, 150, 140}, -0x6000},
	{1, camera_8028E298, {-1963, 145, -627}, {140, 150, 140}, 0x0000},
	{1, camera_8028E3B8, {-2838, 657, -1659}, {200, 150, 150}, 0x2000},
	{1, camera_8028E3F0, {-2319, 512, -1266}, {300, 150, 300}, 0x2000},
	{1, camera_8028E38C, {844, 759, -1657}, {40, 150, 40}, -0x2000},
	{1, camera_8028E298, {442, 759, -1292}, {140, 150, 140}, -0x2000},
	{2, camera_8028E300, {-1000, 657, 1740}, {200, 300, 200}, 0x0000},
	{2, camera_8028E300, {-996, 1348, 1814}, {200, 300, 200}, 0x0000},
	{2, camera_8028E38C, {-946, 657, 2721}, {50, 150, 50}, 0x0000},
	{2, camera_8028E38C, {-996, 1348, 907}, {50, 150, 50}, 0x0000},
	{2, camera_8028E38C, {-997, 1348, 1450}, {140, 150, 140}, 0x0000},
	{1, camera_8028E38C, {-4942, 452, -461}, {140, 150, 140}, 0x4000},
	{1, camera_8028E38C, {-3393, 350, -793}, {140, 150, 140}, 0x4000},
	{1, camera_8028E298, {-2851, 350, -792}, {140, 150, 140}, 0x4000},
	{1, camera_8028E298, {803, 350, -228}, {140, 150, 140}, -0x4000},
	{1, camera_8028E298, {803, 350, -228}, {140, 150, 140}, -0x4000},
	{1, camera_8028E38C, {1345, 350, -229}, {140, 150, 140}, 0x4000},
	{1, camera_8028E38C, {-946, -929, 622}, {300, 150, 300}, 0x0000},
	{2, camera_8028E164, {-205, 1456, 2508}, {210, 928, 718}, 0x0000},
	{1, camera_8028E210, {-1027, -587, -718}, {318, 486, 577}, 0x0000},
	{1, camera_8028E0EC, {-1023, 376, 1830}, {300, 400, 300}, 0x0000},
	{3, camera_8028E098, {2485, -1689, -2659}, {600, 50, 600}, 0x0000},
	{0},
};

CAMCTL camctl_bbh[] =
{
	{1, camera_8028E974, {742, 0, 2369}, {200, 200, 200}, 0x0000},
	{1, camera_8028E55C, {741, 0, 1827}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {222, 0, 1458}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {222, 0, 639}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {435, 0, 222}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1613, 0, 222}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1827, 0, 1459}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {-495, 819, 1407}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {-495, 819, 640}, {250, 200, 200}, 0x0000},
	{1, camera_8028E524, {179, 819, 222}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1613, 819, 222}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1827, 819, 486}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1827, 819, 1818}, {200, 200, 200}, 0x0000},
	{1, camera_8028E594, {2369, 0, 1459}, {200, 200, 200}, 0x0000},
	{1, camera_8028E594, {3354, 0, 1347}, {200, 200, 200}, 0x0000},
	{1, camera_8028E594, {2867, 514, 1843}, {512, 102, 409}, 0x0000},
	{1, camera_8028E5CC, {3354, 0, 804}, {200, 200, 200}, 0x0000},
	{1, camera_8028E5CC, {1613, 0, -320}, {200, 200, 200}, 0x0000},
	{1, camera_8028E604, {435, 0, -320}, {200, 200, 200}, 0x0000},
	{1, camera_8028E63C, {-2021, 0, 803}, {200, 200, 200}, 0x0000},
	{1, camera_8028E63C, {-320, 0, 640}, {200, 200, 200}, 0x0000},
	{1, camera_8028E674, {-1536, 358, -254}, {716, 363, 102}, 0x0000},
	{1, camera_8028E6C4, {-1536, 358, -459}, {716, 363, 102}, 0x0000},
	{1, camera_8028E714, {-1560, 0, -1314}, {200, 200, 200}, 0x0000},
	{1, camera_8028E758, {-320, 0, 1459}, {200, 200, 200}, 0x0000},
	{1, camera_8028E758, {-2021, 0, 1345}, {200, 200, 200}, 0x0000},
	{1, camera_8028E9A0, {2369, 819, 486}, {200, 200, 200}, 0x0000},
	{1, camera_8028E9A0, {2369, 1741, 486}, {200, 200, 200}, 0x0000},
	{1, camera_8028E9D8, {2867, 1228, 1174}, {716, 414, 102}, 0x0000},
	{1, camera_8028EA60, {2867, 1228, 1378}, {716, 414, 102}, 0x0000},
	{1, camera_8028EA28, {2369, 819, 1818}, {200, 200, 200}, 0x0000},
	{1, camera_8028EAB0, {1829, 1741, 486}, {200, 200, 200}, 0x0000},
	{1, camera_8028EAB0, {741, 1741, 1587}, {200, 200, 200}, 0x0000},
	{1, camera_8028EAE8, {102, 2048, -191}, {100, 310, 307}, 0x0000},
	{1, camera_8028EB38, {409, 2048, -191}, {100, 310, 307}, 0x0000},
	{1, camera_8028EB88, {742, 1922, 2164}, {200, 200, 200}, 0x0000},
	{1, camera_8028E450, {587, 1322, 2677}, {1000, 400, 600}, 0x0000},
	{1, camera_8028E758, {-1037, 819, 1408}, {200, 200, 200}, 0x0000},
	{1, camera_8028E758, {-1970, 1024, 1345}, {200, 200, 200}, 0x0000},
	{1, camera_8028E604, {179, 819, -320}, {200, 200, 200}, 0x0000},
	{1, camera_8028E790, {1613, 819, -320}, {200, 200, 200}, 0x0000},
	{1, camera_8028E7C8, {2099, 1228, -819}, {102, 414, 716}, 0x0000},
	{1, camera_8028E818, {2304, 1228, -819}, {102, 414, 716}, 0x0000},
	{1, camera_8028E41C, {-1037, 819, 640}, {200, 200, 200}, 0x0000},
	{1, camera_8028E41C, {-1970, 1024, 803}, {200, 200, 200}, 0x0000},
	{1, camera_8028E524, {1827, 819, 1818}, {200, 200, 200}, 0x0000},
	{1, camera_8028E47C, {2355, -1112, -193}, {1228, 500, 1343}, 0x0000},
	{1, camera_8028E47C, {2355, -1727, 1410}, {1228, 500, 705}, 0x0000},
	{1, camera_8028E868, {0, -2457, 1827}, {250, 200, 250}, 0x0000},
	{1, camera_8028E868, {0, -2457, 2369}, {250, 200, 250}, 0x0000},
	{1, camera_8028E868, {0, -2457, 4929}, {250, 200, 250}, 0x0000},
	{1, camera_8028E868, {0, -2457, 4387}, {250, 200, 250}, 0x0000},
	{1, camera_8028E8A0, {1887, -2457, 204}, {250, 200, 250}, 0x0000},
	{1, camera_8028EBC0, {1272, -2457, 204}, {250, 200, 250}, 0x0000},
	{1, camera_8028EBC0, {-1681, -2457, 204}, {250, 200, 250}, 0x0000},
	{1, camera_8028E8A0, {-2296, -2457, 204}, {250, 200, 250}, 0x0000},
	{1, camera_8028E8CC, {-2939, -605, 5367}, {800, 100, 800}, 0x0000},
	{1, camera_8028E930, {-2939, -205, 5367}, {300, 100, 300}, 0x0000},
	{1, camera_8028E930, {-2332, -204, 4714}, {250, 200, 250}, 0x6000},
	{1, camera_8028E8A0, {-1939, -204, 4340}, {250, 200, 250}, 0x6000},
	{0},
};

CAMCTL *camctl_table[] =
{
	NULL,
	NULL,
	NULL,
	NULL,
	camctl_bbh,
	camctl_ccm,
	camctl_inside,
	camctl_hmc,
	camctl_ssl,
	NULL,
	camctl_sl,
	NULL,
	NULL,
	camctl_thi,
	NULL,
	camctl_rr,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	camctl_cotmc,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
};

CAMPATH campath_8032ED50[] =
{
	{ 0,   0, { 2122,  8762,  9114}},
	{ 0,   0, { 2122,  8762,  9114}},
	{ 1,   0, { 2122,  7916,  9114}},
	{ 1,   0, { 2122,  7916,  9114}},
	{ 2,   0, {  957,  5166,  8613}},
	{ 3,   0, {  589,  4338,  7727}},
	{ 4,   0, {  690,  3366,  6267}},
	{ 5,   0, {-1600,  2151,  4955}},
	{ 6,   0, {-1557,   232,  1283}},
	{ 7,   0, {-6962,  -295,  2729}},
	{ 8,   0, {-6979,   131,  3246}},
	{ 9,   0, {-6360,  -283,  4044}},
	{ 0,   0, {-5695,  -334,  5264}},
	{ 1,   0, {-5568,  -319,  7933}},
	{ 2,   0, {-3848,  -200,  6278}},
	{ 3,   0, { -965,  -263,  6092}},
	{ 4,   0, { 1607,  2465,  6329}},
	{ 5,   0, { 2824,   180,  3548}},
	{ 6,   0, { 1236,   136,   945}},
	{ 0,   0, {  448,   136,   564}},
	{ 0,   0, {  448,   136,   564}},
	{ 0,   0, {  448,   136,   564}},
	{-1,   0, {  448,   136,   564}},
};

CAMPATH campath_8032EE08[] =
{
	{ 0,  50, { 1753, 29800,  8999}},
	{ 0,  50, { 1753, 29800,  8999}},
	{ 1,  50, { 1753,  8580,  8999}},
	{ 1, 100, { 1753,  8580,  8999}},
	{ 2,  50, {  520,  5400,  8674}},
	{ 3,  50, {  122,  4437,  7875}},
	{ 4,  50, {  316,  3333,  6538}},
	{ 5,  36, {-1526,  2189,  5448}},
	{ 6,  50, {-1517,   452,  1731}},
	{ 7,  50, {-6659,  -181,  3109}},
	{ 8,  17, {-6649,   183,  3618}},
	{ 9,  20, {-6009,  -214,  4395}},
	{ 0,  50, {-5258,  -175,  5449}},
	{ 1,  36, {-5158,  -266,  7651}},
	{ 2,  26, {-3351,  -192,  6222}},
	{ 3,  25, { -483,  -137,  6060}},
	{ 4, 100, { 1833,  2211,  5962}},
	{ 5,  26, { 3022,   207,  3090}},
	{ 6,  20, { 1250,   197,   449}},
	{ 7,  50, {  248,   191,   227}},
	{ 7,   0, {   48,   191,   227}},
	{ 7,   0, {   48,   191,   227}},
	{-1,   0, {   48,   191,   227}},
};

CAMPATH campath_8032EEC0[] =
{
	{ 0,   0, { -785,   625,  4527}},
	{ 1,   0, { -785,   625,  4527}},
	{ 2,   0, {-1286,   644,  4376}},
	{ 3,   0, {-1286,   623,  4387}},
	{ 4,   0, {-1286,   388,  3963}},
	{ 5,   0, {-1286,   358,  4093}},
	{ 6,   0, {-1386,   354,  4159}},
	{ 7,   0, {-1477,   306,  4223}},
	{ 8,   0, {-1540,   299,  4378}},
	{ 9,   0, {-1473,   316,  4574}},
	{ 0,   0, {-1328,   485,  5017}},
	{ 0,   0, {-1328,   485,  5017}},
	{ 0,   0, {-1328,   485,  5017}},
	{-1,   0, {-1328,   485,  5017}},
};

CAMPATH campath_8032EF30[] =
{
	{ 0,  20, {-1248,   450,  4596}},
	{ 1,  59, {-1258,   485,  4606}},
	{ 2,  59, {-1379,   344,  4769}},
	{ 3,  20, {-1335,   366,  4815}},
	{ 4,  23, {-1315,   370,  4450}},
	{ 5,  40, {-1322,   333,  4591}},
	{ 6,  25, {-1185,   329,  4616}},
	{ 7,  21, {-1059,   380,  4487}},
	{ 8,  14, {-1086,   421,  4206}},
	{ 9,  21, {-1321,   346,  4098}},
	{ 0,   0, {-1328,   385,  4354}},
	{ 0,   0, {-1328,   385,  4354}},
	{ 0,   0, {-1328,   385,  4354}},
	{-1,   0, {-1328,   385,  4354}},
};

CAMPATH campath_8032EFA0[] =
{
	{ 0,   0, {  -86,   876,   640}},
	{ 1,   0, {  -86,   876,   610}},
	{ 2,   0, {  -66,   945,   393}},
	{ 3,   0, {  -80,   976,   272}},
	{ 4,   0, {  -66,  1306,   -36}},
	{ 5,   0, {  -70,  1869,  -149}},
	{ 6,   0, {  -10,  2093,  -146}},
	{ 7,   0, {  -10,  2530,  -248}},
	{ 8,   0, {  -10,  2530,  -263}},
	{ 9,   0, {  -10,  2530,  -273}},
};

CAMPATH campath_8032EFF0[] =
{
	{ 0,  50, {  -33,   889,    -7}},
	{ 1,  35, {  -33,   889,    -7}},
	{ 2,  31, {  -17,  1070,  -193}},
	{ 3,  25, {  -65,  1182,  -272}},
	{ 4,  20, {  -64,  1559,  -542}},
	{ 5,  25, {  -68,  2029,  -677}},
	{ 6,  25, {   -9,  2204,  -673}},
	{ 7,  25, {   -8,  2529,  -772}},
	{ 8,   0, {   -8,  2529,  -772}},
	{ 9,   0, {   -8,  2529,  -772}},
	{-1,   0, {   -8,  2529,  -772}},
};

CAMPATH campath_8032F048[] =
{
	{ 0,  50, {    1,   120, -1150}},
	{ 1,  50, {    1,   120, -1150}},
	{ 2,  40, {  118,   121, -1199}},
	{ 3,  40, {  147,    74, -1306}},
	{ 4,  40, {  162,    95, -1416}},
	{ 5,  40, {   25,   111, -1555}},
	{ 6,  40, { -188,   154, -1439}},
	{ 7,  40, { -203,   181, -1242}},
	{ 8,  40, {    7,   191, -1057}},
	{ 9,  40, {  262,   273, -1326}},
	{ 0,  40, {   -4,   272, -1627}},
	{ 1,  35, { -331,   206, -1287}},
	{ 2,  30, {  -65,   219,  -877}},
	{ 3,  25, {    6,   216,  -569}},
	{ 4,  25, {   -8,   157,    40}},
	{ 5,  25, {   -4,   106,   200}},
	{ 6,  25, {   -6,    72,   574}},
	{ 7,   0, {   -6,    72,   574}},
	{ 8,   0, {   -6,    72,   574}},
	{-1,   0, {   -6,    72,   574}},
};

CAMPATH campath_8032F0E8[] =
{
	{ 0,   0, { -130,  1111, -1815}},
	{ 1,   0, { -131,  1052, -1820}},
	{ 2,   0, { -271,  1008, -1651}},
	{ 3,   0, { -439,  1043, -1398}},
	{ 4,   0, { -433,  1040, -1120}},
	{ 5,   0, { -417,  1040, -1076}},
	{ 6,   0, { -417,  1040, -1076}},
	{ 7,   0, { -417,  1040, -1076}},
	{-1,   0, { -417,  1040, -1076}},
};

CAMPATH campath_8032F130[] =
{
	{ 0,  50, {  -37,  1020, -1332}},
	{ 1,  20, {  -36,  1012, -1330}},
	{ 2,  20, {  -24,  1006, -1215}},
	{ 3,  20, {   28,  1002, -1224}},
	{ 4,  24, {   45,  1013, -1262}},
	{ 5,  35, {   34,  1000, -1287}},
	{ 6,   0, {   34,  1000, -1287}},
	{ 7,   0, {   34,  1000, -1287}},
	{-1,   0, {   34,  1000, -1287}},
};

CAMPATH campath_8032F178[] =
{
	{ 0,  50, {  200,  1066, -1414}},
	{ 0,  50, {  200,  1066, -1414}},
	{ 0,  30, {  198,  1078, -1412}},
	{ 0,  33, {   15,  1231, -1474}},
	{ 0,  39, {  -94,  1381, -1368}},
	{ 0,   0, {  -92,  1374, -1379}},
	{ 0,   0, {  -92,  1374, -1379}},
	{-1,   0, {  -92,  1374, -1379}},
};

CAMPATH campath_8032F1B8[] =
{
	{ 0,  50, {  484,  1368,  -888}},
	{ 0,  72, {  479,  1372,  -892}},
	{ 0,  50, {  351,  1817,  -918}},
	{ 0,  50, {  351,  1922,  -598}},
	{ 0,   0, {  636,  2027,  -415}},
	{ 0,   0, {  636,  2027,  -415}},
	{-1,   0, {  636,  2027,  -415}},
};

VECF camera_8032F1F0 = {0, 40, -60};
VECF camera_8032F1FC = {0, 40, 60};
VECF camera_8032F208 = {0, 20, 120};

CAMPATH campath_8032F214[] =
{
	{ 0,  32, {   58,  -250,   346}},
	{ 1,  50, { -159,  -382,   224}},
	{ 2,  37, {    0,  -277,   237}},
	{ 3,  15, {    1,   -44,   245}},
	{ 4,  35, {    0,   -89,   228}},
	{ 5,  15, {   28,     3,   259}},
	{ 6,  25, {  -38,  -201,   371}},
	{ 7,  20, { -642,   118,   652}},
	{ 8,  25, {  103,   -90,   861}},
	{ 9,  25, {  294,   145,   579}},
	{10,  30, {  220,   -42,   500}},
	{11,  20, {   10,  -134,   200}},
	{12,  20, { -143,  -145,   351}},
	{13,  14, { -256,   -65,   528}},
	{14,  20, { -251,   -52,   459}},
	{15,  25, { -382,   520,   395}},
	{16,  25, { -341,   240,   653}},
	{17,   5, { -262,   700,   143}},
	{18,  15, { -760,    32,    27}},
	{19,  20, { -756,    -6,   -26}},
	{20,  20, { -613,     5,   424}},
	{21,  20, {  -22,  -100,   312}},
	{22,  25, {  212,    80,    61}},
	{23,  20, {  230,   -28,   230}},
	{24,  35, {  -83,   -51,   303}},
	{25,  17, {  126,    90,   640}},
	{26,   9, {  158,    95,   763}},
	{27,   8, {  113,   -25,  1033}},
	{28,  20, {   57,   -53,  1291}},
	{29,  15, {   73,   -34,  1350}},
	{30,   7, {    0,    96,  1400}},
	{31,   8, {  -59,   269,  1450}},
	{32,  15, {   57,  1705,  1500}},
	{ 0,  15, { -227,   511,  1550}},
	{-1,  15, { -227,   511,  1600}},
};

CAMPATH campath_8032F32C[] =
{
	{ 0,   0, {  -46,    87,   -15}},
	{ 1,   0, {  -38,    91,   -11}},
	{ 2,   0, {  -31,    93,   -13}},
	{ 3,   0, {  -50,    84,   -16}},
	{ 4,   0, {  -52,    83,   -17}},
	{ 5,   0, {  -10,    99,     3}},
	{ 6,   0, {  -54,    83,   -10}},
	{ 7,   0, {  -31,    85,   -40}},
	{ 8,   0, {  -34,    91,    19}},
	{ 9,   0, {   -9,    95,    28}},
	{10,   0, {   17,    72,    66}},
	{11,   0, {   88,    -7,    45}},
	{12,   0, {   96,    -6,   -26}},
	{13,   0, {   56,    -1,   -82}},
	{14,   0, {   40,    65,   -63}},
	{15,   0, {  -26,    -3,   -96}},
	{16,   0, {   92,    82,    19}},
	{17,   0, {   92,    32,    19}},
	{18,   0, {   92,    32,    19}},
	{19,   0, {   92,   102,    19}},
	{20,   0, {  -69,    59,   -70}},
	{21,   0, {  -77,   109,   -61}},
	{22,   0, {  -87,    59,   -46}},
	{23,   0, {  -99,    -3,    11}},
	{24,   0, {  -99,   -11,     5}},
	{25,   0, {  -97,    -6,    19}},
	{26,   0, {  -97,    22,    -7}},
	{27,   0, {  -98,   -11,   -13}},
	{28,   0, {  -97,   -11,    19}},
	{29,   0, {  -91,   -11,    38}},
	{30,   0, {  -76,   -11,    63}},
	{31,   0, {  -13,    33,    93}},
	{32,   0, {   51,   -11,    84}},
	{33,   0, {   51,   -11,    84}},
	{-1,   0, {   51,   -11,    84}},
};

CAMPATH campath_8032F444[] =
{
	{ 0,   0, {   -5,   975,  -917}},
	{ 0,   0, {   -5,   975,  -917}},
	{ 0,   0, {   -5,   975,  -917}},
	{ 0,   0, {  -76,  1067,   742}},
	{ 0,   0, { -105,  1576,  3240}},
	{ 0,   0, { -177,  1709,  5586}},
	{ 0,   0, { -177,  1709,  5586}},
	{ 0,   0, { -177,  1709,  5586}},
	{ 0,   0, { -177,  1709,  5586}},
};

CAMPATH campath_8032F48C[] =
{
	{ 0,  50, {   18,  1013, -1415}},
	{ 0, 100, {   17,  1037, -1412}},
	{ 0, 100, {   16,  1061, -1408}},
	{ 0, 100, {  -54,  1053,   243}},
	{ 0, 100, {  -84,  1575,  2740}},
	{ 0,  50, { -156,  1718,  5086}},
	{ 0,   0, { -156,  1718,  5086}},
	{ 0,   0, { -156,  1718,  5086}},
	{ 0,   0, { -156,  1718,  5086}},
};

CAMDEMO camdemo_8032F4D4[] =
{
	{camera_80290D90, 170},
	{camera_80290F8C, 70},
	{camera_80290E00, 75},
	{camera_80290F1C, 386},
	{camera_80291108, 139},
	{camera_80291354, 590},
	{camera_8029142C, 95},
	{camera_80291514, 425},
	{camera_802915D4, 236},
	{camera_80291774, 245},
	{camera_80291870, 0x7FFF},
	{camera_80291924, 0},
};

CAMDEMO camdemo_8032F534[] =
{
	{camera_80291CD0, 360},
	{camera_80292164, 0x7FFF},
};

CAMDEMO camdemo_8032F544[] =
{
	{camera_80290C1C, 1},
	{camera_80290C30, 0x7FFF},
};

CAMDEMO camdemo_8032F554[] =
{
	{camera_80299100, 1},
	{camera_802991A8, 0x7FFF},
};

CAMDEMO camdemo_8032F564[] =
{
	{camera_80297B84, 0x7FFF},
};

CAMDEMO camdemo_8032F56C[] =
{
	{camera_80297C40, 0x7FFF},
};

CAMDEMO camdemo_8032F574[] =
{
	{camera_80299100, 1},
	{camera_80299154, 30},
	{camera_802991F0, 1},
	{camera_802992CC, 50},
	{camera_80299360, 0},
};

CAMDEMO camdemo_8032F59C[] =
{
	{camera_80299100, 1},
	{camera_80299154, 20},
	{camera_802991F0, 1},
	{camera_802992CC, 50},
	{camera_80299360, 0},
};

CAMDEMO camdemo_8032F5C4[] =
{
	{camera_80299100, 1},
	{camera_80299154, 30},
	{camera_80299404, 0x7FFF},
};

CAMDEMO camdemo_8032F5DC[] =
{
	{camera_80299100, 1},
	{camera_80299154, 20},
	{camera_80299404, 0x7FFF},
};

CAMDEMO camdemo_8032F5F4[] =
{
	{camera_80298FE8, 1},
	{camera_80298D9C, 121},
	{camera_80298D44, 0},
};

CAMDEMO camdemo_8032F60C[] =
{
	{camera_80293C2C, 0x7FFF},
	{camera_80293CB0, 15},
	{camera_80293D5C, 0},
};

CAMDEMO camdemo_8032F624[] =
{
	{camera_802942F0, 0x7FFF},
	{camera_802943D4, 0},
};

CAMDEMO camdemo_8032F634[] =
{
	{camera_802984B4, 0x7FFF},
};

CAMDEMO camdemo_8032F63C[] =
{
	{camera_80298AF8, 118},
	{camera_80298CCC, 0},
};

CAMDEMO camdemo_8032F64C[] =
{
	{camera_80298AF8, 180},
	{camera_80298CCC, 0},
};

CAMDEMO camdemo_8032F65C[] =
{
	{camera_80298BA0, 1},
	{camera_80298C2C, 60},
	{camera_80298CCC, 0},
};

CAMDEMO camdemo_8032F674[] =
{
	{camera_80297A64, 0x7FFF},
	{camera_80297A38, 35},
	{camera_8029784C, 820},
	{camera_80297908, 270},
	{camera_8029762C, 0x7FFF},
};

CAMDEMO camdemo_8032F69C[] =
{
	{camera_80294A14, 170},
	{camera_80294A94, 0},
};

CAMDEMO camdemo_8032F6AC[] =
{
	{camera_80293E7C, 52},
	{camera_80293ED8, 0},
};

CAMDEMO camdemo_8032F6BC[] =
{
	{camera_80293F70, 73},
	{camera_80293ED8, 0},
};

CAMDEMO camdemo_8032F6CC[] =
{
	{camera_80295930, 90},
	{camera_80293ED8, 0},
};

CAMDEMO camdemo_8032F6DC[] =
{
	{camera_80290440, 0x7FFF},
	{camera_802957C8, 150},
	{camera_80295894, 0},
};

CAMDEMO camdemo_8032F6F4[] =
{
	{camera_80294C5C, 0x7FFF},
};

CAMDEMO camdemo_8032F6FC[] =
{
	{camera_80295418, 100},
	{camera_80293ED8, 0},
};

CAMDEMO camdemo_8032F70C[] =
{
	{camera_80294DB4, 0x7FFF},
};

CAMDEMO camdemo_8032F714[] =
{
	{camera_80294EE8, 0x7FFF},
};

CAMDEMO camdemo_8032F71C[] =
{
	{camera_80294FEC, 0x7FFF},
	{camera_80294FEC, 0x7FFF},
};

CAMDEMO camdemo_8032F72C[] =
{
	{camera_80295270, 0x7FFF},
};

CAMDEMO camdemo_8032F734[] =
{
	{camera_80293944, 180},
	{camera_8029386C, 0x7FFF},
	{camera_802938C8, 0},
};

CAMDEMO camdemo_8032F74C[] =
{
	{camera_802924B8, 0x7FFF},
};

CAMDEMO camdemo_8032F754[] =
{
	{camera_80293018, 0x7FFF},
};

CAMDEMO camdemo_8032F75C[] =
{
	{camera_80292A80, 0x7FFF},
};

CAMDEMO camdemo_8032F764[] =
{
	{camera_8029338C, 0x7FFF},
};

CAMDEMO camdemo_8032F76C[] =
{
	{camera_80296FA8, 0x7FFF},
};

CAMDEMO camdemo_8032F774[] =
{
	{camera_802983B4, 50},
	{camera_80298458, 0},
};

CAMDEMO camdemo_8032F784[] =
{
	{camera_802973B0, 200},
	{camera_80298458, 0},
};

CAMDEMO camdemo_8032F794[] =
{
	{camera_80296710, 190},
	{camera_802967C4, 0},
};

CAMDEMO camdemo_8032F7A4[] =
{
	{camera_802969F8, 120},
	{camera_802967C4, 0},
};

CAMDEMO camdemo_8032F7B4[] =
{
	{camera_802968A0, 163},
	{camera_802967C4, 0},
};

CAMDEMO camdemo_8032F7C4[] =
{
	{camera_80296B30, 120},
	{camera_802967C4, 0},
};

CAMDEMO camdemo_8032F7D4[] =
{
	{camera_80295E8C, 0x7FFF},
	{camera_80295FB0, 12},
	{camera_80295FD8, 0},
};

CAMDEMO camdemo_8032F7EC[] =
{
	{camera_80296160, 0x7FFF},
	{camera_802962C8, 15},
	{camera_802962F0, 0},
};

u8 camera_windemo_table[][4] =
{
	CAM_WINDEMO(4, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(0, 0, 0, 2, 2, 2, 4),
	CAM_WINDEMO(0, 0, 0, 0, 2, 0, 4),
	CAM_WINDEMO(2, 2, 2, 2, 2, 2, 4),
	CAM_WINDEMO(0, 0, 2, 2, 0, 0, 4),
	CAM_WINDEMO(2, 2, 2, 2, 2, 2, 4),
	CAM_WINDEMO(2, 2, 2, 2, 2, 2, 4),
	CAM_WINDEMO(2, 1, 2, 1, 2, 1, 4),
	CAM_WINDEMO(2, 0, 2, 2, 2, 2, 4),
	CAM_WINDEMO(2, 2, 2, 2, 2, 2, 4),
	CAM_WINDEMO(0, 2, 0, 2, 0, 2, 4),
	CAM_WINDEMO(2, 2, 1, 0, 2, 2, 4),
	CAM_WINDEMO(0, 0, 0, 0, 0, 0, 4),
	CAM_WINDEMO(1, 1, 1, 1, 2, 1, 4),
	CAM_WINDEMO(2, 2, 2, 2, 2, 2, 4),
	CAM_WINDEMO(0, 0, 0, 0, 0, 0, 4),
	CAM_WINDEMO(3, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(3, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(3, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(2, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(4, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(0, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(2, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(0, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(2, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(4, 4, 4, 4, 4, 4, 4),
	CAM_WINDEMO(4, 4, 4, 4, 4, 4, 4),
};

u8 camera_pause_table[] =
{
	CAM_PAUSE(0, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 1, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(0, 0, 0, 0, 1, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 0, 0, 0, 0),
	CAM_PAUSE(1, 0, 0, 0, 0, 0, 0, 0),
};

CAMPATH campath_battlefield_eye[] =
{
	{ 1,   0, { 5984,  3255,  4975}},
	{ 2,   0, { 4423,  3315,  1888}},
	{ 3,   0, {  776,  2740, -1825}},
	{ 4,   0, { -146,  3894, -3167}},
	{-1,   0, {  741,  4387, -5474}},
};

CAMPATH campath_battlefield_look[] =
{
	{ 0,  30, { 5817,  3306,  4507}},
	{ 0,  40, { 4025,  3378,  1593}},
	{ 0,  50, { 1088,  2652, -2205}},
	{ 0,  60, {  205,  3959, -3517}},
	{-1,  60, { 1231,  4400, -5649}},
};

CAMPATH campath_wf1_eye[] =
{
	{ 0,   0, { -301,  1399,  2643}},
	{ 0,   0, { -182,  2374,  4572}},
	{ 0,   0, { 4696,  3864,   413}},
	{ 0,   0, { 1738,  4891, -1516}},
	{-1,   0, { 1783,  4891, -1516}},
};

CAMPATH campath_wf1_look[] =
{
	{ 1,  30, { -249,  1484,  2153}},
	{ 2,  40, { -200,  2470,  4082}},
	{ 3,  40, { 4200,  3916,   370}},
	{ 4,  40, { 1523,  4976, -1072}},
	{-1,  40, { 1523,  4976, -1072}},
};

CAMPATH campath_jrb1_eye[] =
{
	{ 0,   0, { 5538, -4272,  2376}},
	{ 0,   0, { 5997, -3303,  2261}},
	{ 0,   0, { 6345, -3255,  2179}},
	{ 0,   0, { 6345, -3255,  2179}},
	{-1,   0, { 6694, -3203,  2116}},
};

CAMPATH campath_jrb1_look[] =
{
	{ 0,  50, { 5261, -4683,  2443}},
	{ 0,  50, { 5726, -3675,  2456}},
	{ 0,  50, { 6268, -2817,  2409}},
	{ 0,  50, { 6596, -2866,  2369}},
	{-1,  50, { 7186, -3153,  2041}},
};

CAMPATH campath_ccm2_eye[] =
{
	{ 0,   0, {-6324,  6745, -5626}},
	{ 1,   0, {-6324,  6745, -5626}},
	{ 2,   0, {-6108,  6762, -5770}},
	{ 3,   0, {-5771,  6787, -5962}},
	{-1,   0, {-5672,  6790, -5979}},
};

CAMPATH campath_ccm2_look[] =
{
	{ 0,  50, {-5911,  6758, -5908}},
	{ 1,  50, {-5911,  6758, -5908}},
	{ 2,  50, {-5652,  6814, -5968}},
	{ 3,  50, {-5277,  6801, -6043}},
	{-1,  50, {-5179,  6804, -6060}},
};

CAMPATH campath_bbh1_eye[] =
{
	{ 1,   0, { 1088,   341,  2447}},
	{ 2,   0, { 1338,   610,  2808}},
	{ 3,   0, { 2267,  1612,  2966}},
	{-1,   0, { 2296,  1913,  2990}},
};

CAMPATH campath_bbh1_look[] =
{
	{ 1,  50, { 1160,   263,  1958}},
	{ 2,  50, { 1034,   472,  2436}},
	{ 3,  50, { 1915,  1833,  2688}},
	{-1,  50, { 2134,  2316,  2742}},
};

CAMPATH campath_hmc1_eye[] =
{
	{ 1,   0, {-5952,  1807, -5882}},
	{ 2,   0, {-5623,  1749, -4863}},
	{ 3,   0, {-5472,  1955, -2520}},
	{ 4,   0, {-5544,  1187, -1085}},
	{-1,   0, {-5547,   391,  -721}},
};

CAMPATH campath_hmc1_look[] =
{
	{ 1, 210, {-5952,  1884, -6376}},
	{ 2,  58, {-5891,  1711, -5283}},
	{ 3,  30, {-5595,  1699, -2108}},
	{ 4,  31, {-5546,   794,  -777}},
	{-1,  31, {-5548,   -85,  -572}},
};

CAMPATH campath_thi3_eye[] =
{
	{ 1,   0, {-1411,  2474, -1276}},
	{ 2,   0, {-1606,  2479,  -434}},
	{-1,   0, {-1170,  2122,  1337}},
};

CAMPATH campath_thi3_look[] =
{
	{ 1,  50, {-1053,  2512,  -928}},
	{ 2,  50, {-1234,  2377,  -114}},
	{-1,  50, { -758,  2147,  1054}},
};

CAMPATH campath_lll2_eye[] =
{
	{ 0,   0, {-1445,  1094,  1617}},
	{ 0,   0, {-1509,   649,   871}},
	{ 0,   0, {-1133,   420,  -248}},
	{ 0,   0, { -778,   359, -1052}},
	{ 0,   0, { -565,   260, -1730}},
	{-1,   0, { 1274,   473,  -275}},
};

CAMPATH campath_lll2_look[] =
{
	{ 0,  50, {-1500,   757,  1251}},
	{ 0,  50, {-1401,   439,   431}},
	{ 0,  50, { -749,   270,  -532}},
	{ 0,  50, { -396,   270, -1363}},
	{ 0,  50, { -321,   143, -2151}},
	{-1,  50, { 1002,   460,  -694}},
};

CAMPATH campath_ssl1_eye[] =
{
	{ 0,   0, {-4262,  4658, -5015}},
	{ 0,   0, {-3274,  2963, -4661}},
	{ 0,   0, {-2568,   812, -6528}},
	{ 0,   0, { -414,   660, -7232}},
	{ 0,   0, { 1466,   660, -6898}},
	{-1,   0, { 2724,   660, -6298}},
};

CAMPATH campath_ssl1_look[] =
{
	{ 0,  50, {-4083,  4277, -4745}},
	{ 0,  50, {-2975,  2574, -4759}},
	{ 0,  50, {-2343,   736, -6088}},
	{ 0,  50, { -535,   572, -6755}},
	{ 0,  50, { 1311,   597, -6427}},
	{-1,  50, { 2448,   612, -5884}},
};

CAMPATH campath_ddd1_eye[] =
{
	{ 0,   0, { -874, -4933,   366}},
	{ 0,   0, {-1463, -4782,   963}},
	{ 0,   0, {-1893, -4684,  1303}},
	{ 0,   0, {-2818, -4503,  1583}},
	{ 0,   0, {-4095, -2924,   730}},
	{ 0,   0, {-4737, -1594,   -63}},
	{-1,   0, {-4681, -1084,  -623}},
};

CAMPATH campath_ddd1_look[] =
{
	{ 0,  50, {-1276, -4683,   622}},
	{ 0,  50, {-1858, -4407,  1097}},
	{ 0,  50, {-2324, -4332,  1318}},
	{ 0,  50, {-3138, -4048,  1434}},
	{ 0,  50, {-4353, -2444,   533}},
	{ 0,  50, {-4807, -1169,  -436}},
	{-1,  50, {-4665,  -664, -1007}},
};

CAMPATH campath_sl1_eye[] =
{
	{ 0,   0, {  939,  6654,  6196}},
	{ 0,   0, { 1873,  5160,  3714}},
	{ 0,   0, { 3120,  3564,  1314}},
	{-1,   0, { 2881,  4231,   573}},
};

CAMPATH campath_sl1_look[] =
{
	{ 0,  50, {  875,  6411,  5763}},
	{ 0,  50, { 1659,  4951,  3313}},
	{ 0,  50, { 2630,  3565,  1215}},
	{-1,  50, { 2417,  4056,   639}},
};

CAMPATH campath_wdw1_eye[] =
{
	{ 0,   0, { 3927,  2573,  3685}},
	{ 0,   0, { 2389,  2054,  1210}},
	{ 0,   0, { 2309,  2069,    22}},
	{-1,   0, { 2122,  2271,  -979}},
};

CAMPATH campath_wdw1_look[] =
{
	{ 0,  50, { 3637,  2460,  3294}},
	{ 0,  50, { 1984,  2067,   918}},
	{ 0,  50, { 1941,  2255,  -261}},
	{-1,  50, { 1779,  2587, -1158}},
};

CAMPATH campath_ttm1_eye[] =
{
	{ 0,   0, {  386,  2535,   644}},
	{ 0,   0, { 1105,  2576,   918}},
	{ 0,   0, { 3565,  2261,  2098}},
	{ 0,   0, { 6715, -2791,  4554}},
	{ 0,   0, { 3917, -3130,  3656}},
	{-1,   0, { 3917, -3130,  3656}},
};

CAMPATH campath_ttm1_look[] =
{
	{ 1,  50, {  751,  2434,   318}},
	{ 2,  50, {  768,  2382,   603}},
	{ 3,  60, { 3115,  2086,  1969}},
	{ 4,  30, { 6370, -3108,  4727}},
	{ 5,  50, { 4172, -3385,  4001}},
	{-1,  50, { 4172, -3385,  4001}},
};

CAMPATH campath_thi1_eye[] =
{
	{ 0,   0, { 6990, -1000, -4858}},
	{ 0,   0, { 7886, -1055,  2878}},
	{ 0,   0, { 1952, -1481, 10920}},
	{ 0,   0, {-1684,  -219,  2819}},
	{ 0,   0, {-2427,  -131,  2755}},
	{ 0,   0, {-3246,   416,  3286}},
	{-1,   0, {-3246,   416,  3286}},
};

CAMPATH campath_thi1_look[] =
{
	{ 1,  70, { 7022,  -965, -5356}},
	{ 2,  40, { 7799,  -915,  2405}},
	{ 3,  60, { 1878, -1137, 10568}},
	{ 4,  50, {-1931,  -308,  2394}},
	{ 5,  50, {-2066,  -386,  2521}},
	{ 6,  50, {-2875,   182,  3045}},
	{-1,  50, {-2875,   182,  3045}},
};

CAMPATH campath_ttc1_eye[] =
{
	{ 1,   0, {-1724,   277,  -994}},
	{ 2,   0, {-1720,   456,  -995}},
	{ 3,   0, {-1655,   810, -1014}},
	{-1,   0, {-1753,   883, -1009}},
};

CAMPATH campath_ttc1_look[] =
{
	{ 1,  50, {-1554,   742, -1063}},
	{ 2,  50, {-1245,   571, -1102}},
	{ 3,  50, {-1220,   603, -1151}},
	{-1,  50, {-1412,   520, -1053}},
};

CAMPATH campath_rr1_eye[] =
{
	{ 0,   0, {-1818,  4036,    97}},
	{ 0,   0, { -575,  3460,  -505}},
	{ 0,   0, { 1191,  3611, -1134}},
	{-1,   0, { 2701,  3777, -3686}},
};

CAMPATH campath_rr1_look[] =
{
	{ 0,  50, {-1376,  3885,   -81}},
	{ 0,  50, { -146,  3343,  -734}},
	{ 0,  50, { 1570,  3446, -1415}},
	{-1,  50, { 2794,  3627, -3218}},
};

CAMPATH campath_sa1_eye[] =
{
	{ 0,   0, { -295,  -396,  -585}},
	{ 1,   0, { -295,  -396,  -585}},
	{ 2,   0, { -292,  -856,  -573}},
	{ 3,   0, { -312,  -856,  -541}},
	{-1,   0, {  175,  -856,  -654}},
};

CAMPATH campath_sa1_look[] =
{
	{ 0,  50, { -175,  -594,  -142}},
	{ 1,  50, { -175,  -594,  -142}},
	{ 2,  50, { -195,  -956,   -92}},
	{ 3,  50, { -572,  -956,  -150}},
	{-1,  50, { -307,  -956,  -537}},
};

CAMPATH campath_cotmc1_eye[] =
{
	{ 0,   0, { -296,   495,  1607}},
	{ 0,   0, { -430,   541,   654}},
	{ 0,   0, { -466,   601,  -359}},
	{ 0,   0, { -217,   433, -1549}},
	{-1,   0, {  -95,   366, -2922}},
};

CAMPATH campath_cotmc1_look[] =
{
	{ 0,  50, { -176,   483,  2092}},
	{ 0,  50, { -122,   392,  1019}},
	{ 0,  50, { -268,   450,  -792}},
	{ 0,  50, { -172,   399, -2046}},
	{-1,  50, {  -51,   355, -3420}},
};

CAMPATH campath_ddd2_eye[] =
{
	{ 0,   0, { 4656,  2171,  5028}},
	{ 0,   0, { 4548,  1182,  4596}},
	{ 0,   0, { 5007,   813,  3257}},
	{ 0,   0, { 5681,   648,  1060}},
	{-1,   0, { 4644,   774,   113}},
};

CAMPATH campath_ddd2_look[] =
{
	{ 0,  50, { 4512,  2183,  4549}},
	{ 0,  50, { 4327,   838,  4308}},
	{ 0,  50, { 4774,   749,  2819}},
	{ 0,  50, { 5279,   660,   763}},
	{-1,  50, { 4194,   885,   -75}},
};

CAMPATH campath_ccm1_eye[] =
{
	{ 1,   0, { 1427, -1387,  5409}},
	{ 2,   0, {-1646, -1536,  4526}},
	{ 3,   0, {-3852, -1448,  3913}},
	{-1,   0, {-5199, -1366,  1886}},
};

CAMPATH campath_ccm1_look[] =
{
	{ 1,  50, {  958, -1481,  5262}},
	{ 2,  50, {-2123, -1600,  4391}},
	{ 3,  50, {-3957, -1401,  3426}},
	{-1,  50, {-4730, -1215,  1795}},
};
