#include "face.h"

const char str_face_draw_801B5610[] = "drawshape";
const char str_face_draw_801B561C[] = "Draw_shape(): Bad colour";
const char str_face_draw_801B5638[] = "drawshape";
const char str_face_draw_801B5644[] = "drawshape2d";
const char str_face_draw_801B5650[] = "drawshape2d";
const char str_face_draw_801B565C[] = "draw_material() no active camera for phong";
const char str_face_draw_801B5688[] = "bad1\n";
const char str_face_draw_801B5690[] = "bad2 %x,%d,%d,%d\n";
const char str_face_draw_801B56A4[] = "draw_face";
const char str_face_draw_801B56B0[] = "NONAME";
const char str_face_draw_801B56B8[] = "NONAME";
const char str_face_draw_801B56C0[] = "%f,%f,%f\n";
const char str_face_draw_801B56CC[] = "Draw_Camera(): Zero view distance\n";
const char str_face_draw_801B56F0[] = "drawscene";
const char str_face_draw_801B56FC[] = "draw_scene()";
const char str_face_draw_801B570C[] = "draw1";
const char str_face_draw_801B5714[] = "draw1";
const char str_face_draw_801B571C[] = "drawobj";
const char str_face_draw_801B5724[] = "process_group";
const char str_face_draw_801B5734[] = "drawobj";
const char str_face_draw_801B573C[] = "drawscene";
const char str_face_draw_801B5748[] = "Draw_Group: Bad group definition!";
const char str_face_draw_801B576C[] = "Bad object!";
const char str_face_draw_801B5778[] = "updateshaders";
const char str_face_draw_801B5788[] = "updateshaders";
const char str_face_draw_801B5798[] = "Generated '%s' (%d) display list ok.(%d)\n";
const char str_face_draw_801B57C4[] = "Generated 'UNKNOWN' (%d) display list ok.(%d)\n";
const char str_face_draw_801B57F4[] = "made %d display lists\n";
const char str_face_draw_801B580C[] = "find_thisface_verts(): Vertex not found";
const char str_face_draw_801B5834[] = "map_vertices";
const char str_face_draw_801B5844[] = "UpdateView()";
const char str_face_draw_801B5854[] = "dlgen";
const char str_face_draw_801B585C[] = "dynamics";
const char str_face_draw_801B5868[] = "dynamics";
const char str_face_draw_801B5874[] = "dlgen";
const char str_face_draw_801B587C[] = "UpdateView(): Pick buffer too small";
const char str_face_draw_801B58A0[] = "J";
const char str_face_draw_801B58A4[] = "N";
const char str_face_draw_801B58A8[] = "P";
const char str_face_draw_801B58AC[] = "?";
const double face_draw_801B58B0 = 600;
const double face_draw_801B58B8 = 45;

extern void L80178F04(void);
extern void L80178F18(void);
extern void L80178F2C(void);
extern void L80178F40(void);
extern void L80178F54(void);
extern void L80178F68(void);
extern void L80178F7C(void);
extern void L80178F90(void);
extern void L80178FA4(void);
extern void L80178FB8(void);
extern void L80178FCC(void);
extern void L80178FE0(void);

void (*const face_draw_801B58C0[])(void) =
{
	L80178FE0,
	L80178F04,
	L80178F18,
	L80178F2C,
	L80178F40,
	L80178F54,
	L80178F68,
	L80178F7C,
	L80178F90,
	L80178FB8,
	L80178FCC,
	L80178FA4,
};

const double face_draw_801B58F0 = 0.1;
const double face_draw_801B58F8 = 0.1;
const double face_draw_801B5900 = 0.1;
const double face_draw_801B5908 = 90;
const float face_draw_801B5910 = 10000000;

BALIGN char _face_draw_bss[0x474-0x210];

COLOUR face_draw_801A8200 = {1, 1, 1};
COLOUR face_draw_801A820C = {1, 0, 0};
COLOUR face_draw_801A8218 = {0, 1, 0};
COLOUR face_draw_801A8224 = {0, 0, 1};
COLOUR face_draw_801A8230 = {0, 0, 6};
COLOUR face_draw_801A823C = {1, 0, 1};
COLOUR face_draw_801A8248 = {0, 0, 0};
COLOUR face_draw_801A8254 = {0.6F, 0.6F, 0.6F};
COLOUR face_draw_801A8260 = {0.4F, 0.4F, 0.4F};
COLOUR face_draw_801A826C = {1, 1, 0};

COLOUR face_draw_801A8278[] =
{
	{1, 1, 0},
};

COLOUR *face_draw_801A8284 = &face_draw_801A820C;
void *face_draw_801A8288 = NULL;
void *face_draw_801A828C = NULL;
int face_draw_801A8290 = 0;

COLOUR *face_draw_801A8294[] =
{
	&face_draw_801A8200,
	&face_draw_801A826C,
	&face_draw_801A820C,
	&face_draw_801A8248,
	&face_draw_801A8248,
};

COLOUR *face_draw_801A82A8[] =
{
	&face_draw_801A8200,
	&face_draw_801A8248,
};

float face_draw_801A82B0[4][4] =
{
	{1, 0, 0, 0},
	{0, 0, 0, 0},
	{0, 0, 1, 0},
	{0, 0, 0, 1},
};

float face_draw_801A82F0[4][4] =
{
	{1, 0, 0, 0},
	{0, 1, 0, 0},
	{0, 0, 1, 0},
	{0, 0, 0, 1},
};

int face_draw_801A8330 = 1;
int face_draw_801A8334 = 0;
int face_draw_801A8338 = 0;
