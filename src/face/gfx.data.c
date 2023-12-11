#include "face.h"

const char str_face_gfx_801B8E30[] = "%d\n";
const char str_face_gfx_801B8E34[] = "Vtx=%d/%d, Mtx=%d/%d, Light=%d/%d, Gfx=%d/%d\n";
const char str_face_gfx_801B8E64[] = "Gfx list overflow";
const char str_face_gfx_801B8E78[] = "Light list overflow";
const char str_face_gfx_801B8E8C[] = "Mtx list overflow";
const char str_face_gfx_801B8EA0[] = "Vtx list overflow";
const char str_face_gfx_801B8EB4[] = "Vp list overflow";
const char str_face_gfx_801B8EC8[] = "printf too long";
const char str_face_gfx_801B8ED8[] = "exit\n";
const char str_face_gfx_801B8EE0[] = "gd_allocblock(): Failed request: %dk (%d bytes)\n";
const char str_face_gfx_801B8F14[] = "gd_allocblock(): Heap usage: %dk (%d bytes) \n";
const char str_face_gfx_801B8F44[] = "exit";
const char str_face_gfx_801B8F4C[] = "gd_malloc(): Failed request: %dk (%d bytes)\n";
const char str_face_gfx_801B8F7C[] = "gd_malloc(): Heap usage: %dk (%d bytes) \n";
const char str_face_gfx_801B8FA8[] = "redstar";
const char str_face_gfx_801B8FB0[] = "silverstar";
const char str_face_gfx_801B8FBC[] = "sspark";
const char str_face_gfx_801B8FC4[] = "rspark";
const char str_face_gfx_801B8FCC[] = "updateshaders";
const char str_face_gfx_801B8FDC[] = "updateshaders";
const char str_face_gfx_801B8FEC[] = "childpos";
const char str_face_gfx_801B8FF8[] = "childpos";
const char str_face_gfx_801B9004[] = "netupd";
const char str_face_gfx_801B900C[] = "netupd";
const char str_face_gfx_801B9014[] = "drawshape2d";
const char str_face_gfx_801B9020[] = "drawshape2d";
const char str_face_gfx_801B902C[] = "drawshape";
const char str_face_gfx_801B9038[] = "drawobj";
const char str_face_gfx_801B9040[] = "drawscene";
const char str_face_gfx_801B904C[] = "camsearch";
const char str_face_gfx_801B9058[] = "move_animators";
const char str_face_gfx_801B9068[] = "move_nets";
const char str_face_gfx_801B9074[] = "move_animators";
const char str_face_gfx_801B9084[] = "move_nets";
const char str_face_gfx_801B9090[] = "drawshape";
const char str_face_gfx_801B909C[] = "drawobj";
const char str_face_gfx_801B90A4[] = "drawscene";
const char str_face_gfx_801B90B0[] = "camsearch";
const char str_face_gfx_801B90BC[] = "move_bones";
const char str_face_gfx_801B90C8[] = "move_bones";
const char str_face_gfx_801B90D4[] = "move_skin";
const char str_face_gfx_801B90E0[] = "move_skin";
const char str_face_gfx_801B90EC[] = "draw1";
const char str_face_gfx_801B90F4[] = "draw1";
const char str_face_gfx_801B90FC[] = "dynamics";
const char str_face_gfx_801B9108[] = "dynamics";
const char str_face_gfx_801B9114[] = "gdm_init";
const char str_face_gfx_801B9120[] = "gdm_setup";
const char str_face_gfx_801B912C[] = "total";
const char str_face_gfx_801B9134[] = "\ngdm stats:\n";
const char str_face_gfx_801B9144[] = "total";
const char str_face_gfx_801B914C[] = "gdm_maketestdl";
const char str_face_gfx_801B915C[] = "yoshi_scene";
const char str_face_gfx_801B9168[] = "mscene";
const char str_face_gfx_801B9170[] = "mscene";
const char str_face_gfx_801B9178[] = "car_scene";
const char str_face_gfx_801B9184[] = "gdm_maketestdl(): unknown dl";
const char str_face_gfx_801B91A4[] = "\n";
const char str_face_gfx_801B91A8[] = "dlgen";
const char str_face_gfx_801B91B0[] = "gdm_gettestdl(): DL number %d undefined";
const char str_face_gfx_801B91D8[] = "yoshi_scene";
const char str_face_gfx_801B91E4[] = "gdm_gettestdl(): DL number %d undefined";
const char str_face_gfx_801B920C[] = "yoshi_sh_l1";
const char str_face_gfx_801B9218[] = "gdm_gettestdl(): DL number %d undefined";
const char str_face_gfx_801B9240[] = "car_scene";
const char str_face_gfx_801B924C[] = "testnet2";
const char str_face_gfx_801B9258[] = "no memory for car DL\n";
const char str_face_gfx_801B9270[] = "gdm_gettestdl(): %d out of range";
const char str_face_gfx_801B9294[] = "no display list";
const char str_face_gfx_801B92A4[] = "dlgen";
const char str_face_gfx_801B92AC[] = "testnet2";
const char str_face_gfx_801B92B8[] = "gdm_getpos(): %d out of range";
const char str_face_gfx_801B92D8[] = "Out of DL mem\n";
const char str_face_gfx_801B92E8[] = "alloc_displaylist() too many display lists %d (MAX %d)";
const char str_face_gfx_801B9320[] = "gd_startdisplist(): Too many views to display";
const char str_face_gfx_801B9350[] = "gd_startdisplist(): Unknown memory area";
const char str_face_gfx_801B9378[] = "cant display no tris\n";
const char str_face_gfx_801B9390[] = "too many hilites";
const char str_face_gfx_801B93A4[] = "too many hilites";
const char str_face_gfx_801B93B8[] = "gd_shading(): Unknown shading model";
const char str_face_gfx_801B93DC[] = "gd_getproperty(): Unkown property";
const char str_face_gfx_801B9400[] = "Bad GD_OVERLAY parm";
const char str_face_gfx_801B9414[] = "Bad zbuf function";
const char str_face_gfx_801B9428[] = "gd_setproperty(): Unkown property";
const char str_face_gfx_801B944C[] = "%s CBuf";
const char str_face_gfx_801B9454[] = "Not enough DRAM for colour buffers\n";
const char str_face_gfx_801B9478[] = "%s ZBuf";
const char str_face_gfx_801B9480[] = "Not enough DRAM for Z buffer\n";
const char str_face_gfx_801B94A0[] = "gd_gentexture(): bad format";
const char str_face_gfx_801B94BC[] = "gd_gentexture(): bad size";
const char str_face_gfx_801B94D8[] = "Cant generate DL for texture";
const char str_face_gfx_801B94F8[] = "r";
const char str_face_gfx_801B94FC[] = "Cant load texture";
const char str_face_gfx_801B9510[] = "Cant allocate memory for texture";
const char str_face_gfx_801B9534[] = "Loaded texture '%s' (%d bytes)\n";
const char str_face_gfx_801B9554[] = "Generated '%s' (%d) display list ok.\n";
const char str_face_gfx_801B957C[] = "dlgen";
const char str_face_gfx_801B9584[] = "rcp";
const char str_face_gfx_801B9588[] = "dynamics";
const char str_face_gfx_801B9594[] = "1frame";
const char str_face_gfx_801B959C[] = "cpu";
const char str_face_gfx_801B95A0[] = "dlgen";
const char str_face_gfx_801B95A8[] = "dlgen";
const char str_face_gfx_801B95B0[] = "netupd";
const char str_face_gfx_801B95B8[] = "netupd";
const char str_face_gfx_801B95C0[] = "cpu";
const char str_face_gfx_801B95C4[] = "cpu";
const char str_face_gfx_801B95C8[] = "1frame";
const char str_face_gfx_801B95D0[] = "1frame";
const char str_face_gfx_801B95D8[] = "cpu";
const char str_face_gfx_801B95DC[] = "gd_init";
const char str_face_gfx_801B95E4[] = "total";
const char str_face_gfx_801B95EC[] = "Static DL";
const char str_face_gfx_801B95F8[] = "Static DL";
const char str_face_gfx_801B9604[] = "Dynamic DLs";
const char str_face_gfx_801B9610[] = "Dynamic DLs";
const char str_face_gfx_801B961C[] = "screenview2";
const char str_face_gfx_801B9628[] = "debugg";
const char str_face_gfx_801B9630[] = "FT %2.2f";
const char str_face_gfx_801B963C[] = "debugg";
const char str_face_gfx_801B9644[] = "debugg";
const char str_face_gfx_801B964C[] = "debugview";
const char str_face_gfx_801B9658[] = "memg%d\n";
const char str_face_gfx_801B9660[] = "%s  %%6.2fk";
const char str_face_gfx_801B966C[] = "memview";
const char str_face_gfx_801B9674[] = "menug";
const char str_face_gfx_801B967C[] = "menu0";
const char str_face_gfx_801B9684[] = "ITEM 1";
const char str_face_gfx_801B968C[] = "menu0";
const char str_face_gfx_801B9694[] = "menu1";
const char str_face_gfx_801B969C[] = "ITEM 2";
const char str_face_gfx_801B96A4[] = "menu1";
const char str_face_gfx_801B96AC[] = "menu2";
const char str_face_gfx_801B96B4[] = "ITEM 3";
const char str_face_gfx_801B96BC[] = "menu2";
const char str_face_gfx_801B96C4[] = "menug";
const char str_face_gfx_801B96CC[] = "menug";
const char str_face_gfx_801B96D4[] = "menuview";
const char str_face_gfx_801B96E0[] = "mouse";
const char str_face_gfx_801B96E8[] = "mouseg";
const char str_face_gfx_801B96F0[] = "mouseg";
const char str_face_gfx_801B96F8[] = "mouseg";
const char str_face_gfx_801B9700[] = "mouseview";
const char str_face_gfx_801B970C[] = "timerg";
const char str_face_gfx_801B9714[] = "bar1";
const char str_face_gfx_801B971C[] = "bar1";
const char str_face_gfx_801B9724[] = "bar2";
const char str_face_gfx_801B972C[] = "bar2";
const char str_face_gfx_801B9734[] = "bar3";
const char str_face_gfx_801B973C[] = "bar3";
const char str_face_gfx_801B9744[] = "bar4";
const char str_face_gfx_801B974C[] = "bar4";
const char str_face_gfx_801B9754[] = "bar5";
const char str_face_gfx_801B975C[] = "bar5";
const char str_face_gfx_801B9764[] = "bar6";
const char str_face_gfx_801B976C[] = "bar6";
const char str_face_gfx_801B9774[] = "tim%d\n";
const char str_face_gfx_801B977C[] = "timerg";
const char str_face_gfx_801B9784[] = "timerg";
const char str_face_gfx_801B978C[] = "timersview";
const char str_face_gfx_801B9798[] = "load_dynlist() ptr not found in any banks";
const char str_face_gfx_801B97C4[] = "load_dynlist() unkown bank";
const char str_face_gfx_801B97E0[] = "Not enough DRAM for DATA segment \n";
const char str_face_gfx_801B9804[] = "load_dynlist() too many TLBs";
const char str_face_gfx_801B9824[] = "making zones for net=";
const char str_face_gfx_801B983C[] = "%d/%d planes in zone %d\n";
const char str_face_gfx_801B9858[] = "plane=";
const char str_face_gfx_801B9860[] = "plane not in any zones\n";
const double face_gfx_801B9878 = 1e-07;

extern void L8019B714(void);
extern void L8019B770(void);
extern void L8019B804(void);
extern void L8019B8B8(void);
extern void L8019B8F0(void);
extern void L8019B93C(void);

void (*const face_gfx_801B9880[])(void) =
{
	L8019B8F0,
	L8019B714,
	L8019B93C,
	L8019B804,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B8B8,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B93C,
	L8019B770,
};

extern void L8019C6CC(void);
extern void L8019C6F0(void);
extern void L8019C708(void);
extern void L8019C764(void);
extern void L8019C7C0(void);
extern void L8019C7E4(void);

void (*const face_gfx_801B98D8[])(void) =
{
	L8019C6CC,
	L8019C6F0,
	L8019C708,
	L8019C764,
	L8019C7C0,
	L8019C7E4,
};

extern void L8019CA58(void);
extern void L8019CADC(void);
extern void L8019CB54(void);
extern void L8019CBF8(void);
extern void L8019CC7C(void);

void (*const face_gfx_801B98F0[])(void) =
{
	L8019CA58,
	L8019CADC,
	L8019CB54,
	L8019CB54,
	L8019CBF8,
	L8019CC7C,
};

const double face_gfx_801B9908 = 0.017453292522222223;
const double face_gfx_801B9910 = 127;
const double face_gfx_801B9918 = 127;
const double face_gfx_801B9920 = 127;
const double face_gfx_801B9928 = 127;
const double face_gfx_801B9930 = 127;
const double face_gfx_801B9938 = 127;
const double face_gfx_801B9940 = 127;
const double face_gfx_801B9948 = 127;
const double face_gfx_801B9950 = 127;
const double face_gfx_801B9958 = 127;
const double face_gfx_801B9960 = 127;
const double face_gfx_801B9968 = 127;
const double face_gfx_801B9970 = 0.1;
const double face_gfx_801B9978 = 0.1;
const double face_gfx_801B9980 = 0.1;

extern void L801A37E8(void);
extern void L801A3898(void);
extern void L801A38C4(void);
extern void L801A39BC(void);
extern void L801A3A30(void);
extern void L801A3AE0(void);
extern void L801A3B54(void);
extern void L801A3BD4(void);
extern void L801A3BDC(void);
extern void L801A3BE4(void);
extern void L801A3BEC(void);
extern void L801A3BF4(void);
extern void L801A3BFC(void);

void (*const face_gfx_801B9988[])(void) =
{
	L801A3AE0,
	L801A3BFC,
	L801A3BFC,
	L801A3BFC,
	L801A3BFC,
	L801A3BFC,
	L801A3BFC,
	L801A37E8,
	L801A3898,
	L801A39BC,
	L801A3BFC,
	L801A38C4,
	L801A3A30,
	L801A3BD4,
	L801A3BDC,
	L801A3BE4,
	L801A3BEC,
	L801A3BF4,
	L801A3B54,
};

const double face_gfx_801B99D8 = 0.1;

BALIGN char _face_gfx_bss[0x5108-0x1540];

int face_gfx_801A8800 = 0;
int face_gfx_801A8804 = 0;
int face_gfx_801A8808 = 0;
int face_gfx_801A880C = 0;
int face_gfx_801A8810 = 0;
float face_gfx_801A8814 = 0;
float face_gfx_801A8818 = 0;
float face_gfx_801A881C = 0;
float face_gfx_801A8820 = 0;
float face_gfx_801A8824 = 1;
size_t face_gfx_801A8828 = 1;
long face_gfx_801A882C = 0;
int face_gfx_801A8830 = 0;
void *face_gfx_801A8834 = NULL;
void *face_gfx_801A8838 = NULL;
void *face_gfx_801A883C = NULL;
int face_gfx_801A8840 = 0;
int face_gfx_801A8844 = 0;
void *face_gfx_801A8848 = NULL;
int face_gfx_801A884C = 1;
int face_gfx_801A8850 = 0;
int face_gfx_801A8854 = 10;
int face_gfx_801A8858 = 1;
VECTOR face_gfx_801A885C = {1, 1, 1};
void *face_gfx_801A8868 = NULL;
void *face_gfx_801A886C = NULL;
void *face_gfx_801A8870 = NULL;
void *face_gfx_801A8874 = NULL;
void *face_gfx_801A8878 = NULL;
unsigned int face_gfx_801A887C = 0;
int face_gfx_801A8880 = 0;
int face_gfx_801A8884 = 0;
void *face_gfx_801A8888 = NULL;
void *face_gfx_801A888C = NULL;
unsigned int face_gfx_801A8890 = 0;

extern DYNLIST dyn_ico1[];
extern DYNLIST dyn_spot[];
extern DYNLIST dyn_mario[];

BANK face_gfx_801A8894[] =
{
	{3, dyn_ico1},
	{3, dyn_spot},
	{3, dyn_mario},
	{-1, NULL},
};

UNUSED static Gfx align_hand_0 = gsSPEndDisplayList();

u16 txt_hand_0[] =
{
#include "hand.0.rgba16.h"
};

UNUSED static Gfx align_hand_1 = gsSPEndDisplayList();

u16 txt_hand_1[] =
{
#include "hand.1.rgba16.h"
};

static u16 txt_red_star_0[] =
{
#include "red_star.0.rgba16.h"
};

static u16 txt_red_star_1[] =
{
#include "red_star.1.rgba16.h"
};

static u16 txt_red_star_2[] =
{
#include "red_star.2.rgba16.h"
};

static u16 txt_red_star_3[] =
{
#include "red_star.3.rgba16.h"
};

static u16 txt_red_star_4[] =
{
#include "red_star.4.rgba16.h"
};

static u16 txt_red_star_5[] =
{
#include "red_star.5.rgba16.h"
};

static u16 txt_red_star_6[] =
{
#include "red_star.6.rgba16.h"
};

static u16 txt_red_star_7[] =
{
#include "red_star.7.rgba16.h"
};

static u16 txt_silver_star_0[] =
{
#include "silver_star.0.rgba16.h"
};

static u16 txt_silver_star_1[] =
{
#include "silver_star.1.rgba16.h"
};

static u16 txt_silver_star_2[] =
{
#include "silver_star.2.rgba16.h"
};

static u16 txt_silver_star_3[] =
{
#include "silver_star.3.rgba16.h"
};

static u16 txt_silver_star_4[] =
{
#include "silver_star.4.rgba16.h"
};

static u16 txt_silver_star_5[] =
{
#include "silver_star.5.rgba16.h"
};

static u16 txt_silver_star_6[] =
{
#include "silver_star.6.rgba16.h"
};

static u16 txt_silver_star_7[] =
{
#include "silver_star.7.rgba16.h"
};

static Vtx vtx_star[] =
{
	{{{   -64,      0,      0}, 0, {     0,    992}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    64,      0,      0}, 0, {   992,    992}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    64,    128,      0}, 0, {   992,      0}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{   -64,    128,      0}, 0, {     0,      0}, {0x00, 0x00, 0x7F, 0x00}}},
};

UNUSED static Mtx mtx_801B1908 = gdSPDefMatrix(
		16384, 0, 0, 0,
		0, 16384, 0, 0,
		0, 0, 16384, 0,
		0, 0, 0, 16384
	);

static Gfx gfx_star[] =
{
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsSPClearGeometryMode(G_TEXTURE_GEN|G_TEXTURE_GEN_LINEAR),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_CLAMP, G_TX_CLAMP, 5, 5, 0, 0),
	gsSPVertex(vtx_star, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0xFFFF, 0xFFFF, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_INTER, G_RM_NOOP2),
	gsSPEndDisplayList(),
};

static Gfx gfx_red_star_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_0),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_1),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_2),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_3),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_4),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_5),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_6),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_red_star_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_red_star_7),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_0[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_0),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_1[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_1),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_2[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_2),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_3[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_3),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_4[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_4),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_5[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_5),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_6[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_6),
	gsSPBranchList(gfx_star),
};

static Gfx gfx_silver_star_7[] =
{
	gsDPPipeSync(),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_silver_star_7),
	gsSPBranchList(gfx_star),
};

Gfx *gfx_red_star[] =
{
	gfx_red_star_0,
	gfx_red_star_0,
	gfx_red_star_1,
	gfx_red_star_1,
	gfx_red_star_2,
	gfx_red_star_2,
	gfx_red_star_3,
	gfx_red_star_3,
	gfx_red_star_4,
	gfx_red_star_4,
	gfx_red_star_5,
	gfx_red_star_5,
	gfx_red_star_6,
	gfx_red_star_6,
	gfx_red_star_7,
	gfx_red_star_7,
};

Gfx *gfx_silver_star[] =
{
	gfx_silver_star_0,
	gfx_silver_star_0,
	gfx_silver_star_1,
	gfx_silver_star_1,
	gfx_silver_star_2,
	gfx_silver_star_2,
	gfx_silver_star_3,
	gfx_silver_star_3,
	gfx_silver_star_4,
	gfx_silver_star_4,
	gfx_silver_star_5,
	gfx_silver_star_5,
	gfx_silver_star_6,
	gfx_silver_star_6,
	gfx_silver_star_7,
	gfx_silver_star_7,
};

static u16 txt_spark_0[] =
{
#include "spark.0.rgba16.h"
};

static u16 txt_spark_1[] =
{
#include "spark.1.rgba16.h"
};

static u16 txt_spark_2[] =
{
#include "spark.2.rgba16.h"
};

static u16 txt_spark_3[] =
{
#include "spark.3.rgba16.h"
};

static u16 txt_spark_4[] =
{
#include "spark.4.rgba16.h"
};

UNUSED static u16 txt_spark_5[] =
{
#include "spark.5.rgba16.h"
};

static Vtx vtx_spark[] =
{
	{{{   -32,      0,      0}, 0, {     0,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,      0,      0}, 0, {  1984,   1984}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{    32,     64,      0}, 0, {  1984,      0}, {0x00, 0x00, 0x7F, 0x00}}},
	{{{   -32,     64,      0}, 0, {     0,      0}, {0x00, 0x00, 0x7F, 0x00}}},
};

static Gfx gfx_spark[] =
{
	gsDPSetCombineMode(G_CC_MODULATERGBA_PRIM, G_CC_MODULATERGBA_PRIM),
	gsSPClearGeometryMode(G_TEXTURE_GEN|G_TEXTURE_GEN_LINEAR),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPLoadTextureBlockN(G_IM_FMT_RGBA, G_IM_SIZ_16b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, G_TX_NOMASK, G_TX_NOMASK, 0, 0),
	gsSPVertex(vtx_spark, 4, 0),
	gsSP2Triangles( 0,  1,  2, 0,  0,  2,  3, 0),
	gsSPTexture(0x0001, 0x0001, G_TX_NOLOD, G_TX_RENDERTILE, G_OFF),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetRenderMode(G_RM_AA_ZB_OPA_INTER, G_RM_NOOP2),
	gsSPEndDisplayList(),
};

static Gfx gfx_spark_red[] =
{
	gsDPSetPrimColor(0, 0, 0xFF, 0x00, 0x00, 0xFF),
	gsSPEndDisplayList(),
};

static Gfx gfx_spark_silver[] =
{
	gsDPSetPrimColor(0, 0, 0xFF, 0xFF, 0xFF, 0xFF),
	gsSPEndDisplayList(),
};

static Gfx gfx_red_spark_0[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_0),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_red_spark_1[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_1),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_red_spark_2[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_2),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_red_spark_3[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_3),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_red_spark_4[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_4),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_red_spark_5[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_red),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_4),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_0[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_0),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_1[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_1),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_2[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_2),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_3[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_3),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_4[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_4),
	gsSPBranchList(gfx_spark),
};

static Gfx gfx_silver_spark_5[] =
{
	gsDPPipeSync(),
	gsSPDisplayList(gfx_spark_silver),
	gsDPSetTextureImage(G_IM_FMT_RGBA, G_IM_SIZ_16b, 1, txt_spark_4),
	gsSPBranchList(gfx_spark),
};

Gfx *gfx_red_spark[] =
{
	gfx_red_spark_4,
	gfx_red_spark_4,
	gfx_red_spark_3,
	gfx_red_spark_3,
	gfx_red_spark_2,
	gfx_red_spark_2,
	gfx_red_spark_1,
	gfx_red_spark_1,
	gfx_red_spark_0,
	gfx_red_spark_0,
	gfx_red_spark_5,
	gfx_red_spark_5,
};

Gfx *gfx_silver_spark[] =
{
	gfx_silver_spark_4,
	gfx_silver_spark_4,
	gfx_silver_spark_3,
	gfx_silver_spark_3,
	gfx_silver_spark_2,
	gfx_silver_spark_2,
	gfx_silver_spark_1,
	gfx_silver_spark_1,
	gfx_silver_spark_0,
	gfx_silver_spark_0,
	gfx_silver_spark_5,
	gfx_silver_spark_5,
};

UNUSED static Gfx align_phong = gsSPEndDisplayList();

static u8 txt_phong[] =
{
#include "phong.ia8.h"
};

Gfx gfx_face_801B5290[] =
{
	gsSPSetGeometryMode(G_TEXTURE_GEN),
	gsSPTexture(62*32, 62*32, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsDPSetCombineMode(G_CC_HILITERGBA, G_CC_HILITERGBA),
	gsDPLoadTextureBlock(txt_phong, G_IM_FMT_IA, G_IM_SIZ_8b, 32, 32, 0, G_TX_WRAP, G_TX_WRAP, 5, 5, 0, 0),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

Gfx gfx_face_801B5300[] =
{
	gsSPClearGeometryMode(~0),
	gsSPSetGeometryMode(G_SHADE|G_SHADING_SMOOTH),
	gsSPEndDisplayList(),
};

Gfx gfx_face_801B5318[] =
{
	gsDPPipeSync(),
	gsDPSetCombineMode(G_CC_SHADE, G_CC_SHADE),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsDPSetTextureLOD(G_TL_TILE),
	gsDPSetTextureLUT(G_TT_NONE),
	gsDPSetTextureDetail(G_TD_CLAMP),
	gsDPSetTexturePersp(G_TP_PERSP),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsDPSetTextureConvert(G_TC_FILT),
	gsDPSetCombineKey(G_CK_NONE),
	gsDPSetAlphaCompare(G_AC_NONE),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsDPSetBlendMask(15),
	gsDPSetColorDither(G_CD_MAGICSQ),
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

int face_gfx_801B5398 = 0;
float face_gfx_801B539C = 1;
int face_gfx_801B53A0 = 0;

UNUSED static Gfx gfx_face_801B53A8[] =
{
	gsDPPipeSync(),
	gsSPEndDisplayList(),
};

static Vtx vtx_face_801B53B8[] =
{
	{{{    -8,      8,      0}, 0, {     0,      0}, {0x00, 0x00, 0x00, 0xFF}}},
	{{{     8,     -2,      0}, 0, {     0,      0}, {0x00, 0x00, 0x00, 0xFF}}},
	{{{     2,     -8,      0}, 0, {     0,      0}, {0x00, 0x00, 0x00, 0xFF}}},
	{{{    -6,      6,      0}, 0, {     0,      0}, {0xFF, 0xFF, 0xFF, 0xFF}}},
	{{{     7,     -3,      0}, 0, {     0,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
	{{{     3,     -7,      0}, 0, {     0,      0}, {0xFF, 0x00, 0x00, 0xFF}}},
};

UNUSED static Gfx gfx_face_801B5418[] =
{
	gsDPPipeSync(),
	gsDPSetRenderMode(G_RM_OPA_SURF, G_RM_OPA_SURF2),
	gsSPClearGeometryMode(~0),
	gsSPSetGeometryMode(G_SHADE|G_SHADING_SMOOTH),
	gsDPPipeSync(),
	gsSPVertex(&vtx_face_801B53B8[0], 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPVertex(&vtx_face_801B53B8[3], 3, 0),
	gsSP1Triangle( 0,  1,  2, 0),
	gsSPEndDisplayList(),
};

Gfx gfx_face_801B5468[] =
{
	gsDPPipeSync(),
	gsDPSetCycleType(G_CYC_1CYCLE),
	gsSPTexture(0x8000, 0x8000, G_TX_NOLOD, G_TX_RENDERTILE, G_ON),
	gsDPSetAlphaCompare(G_AC_THRESHOLD),
	gsDPSetBlendColor(0x00, 0x00, 0x00, 0x01),
	gsDPSetRenderMode(G_RM_AA_ZB_TEX_EDGE, G_RM_NOOP2),
	gsDPSetCombineMode(G_CC_DECALRGBA, G_CC_DECALRGBA),
	gsDPSetTextureFilter(G_TF_BILERP),
	gsDPSetTexturePersp(G_TP_NONE),
	gsSPEndDisplayList(),
};
