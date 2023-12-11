#include "face.h"

const char str_face_shape_801B8A60[] = "simpleg";
const char str_face_shape_801B8A68[] = "simple";
const char str_face_shape_801B8A70[] = "simpleg";
const char str_face_shape_801B8A78[] = "simpleg";
const char str_face_shape_801B8A80[] = "calc_facenormal";
const char str_face_shape_801B8A90[] = "make_face";
const char str_face_shape_801B8A9C[] = "NoName";
const char str_face_shape_801B8AA4[] = "getfloat";
const char str_face_shape_801B8AB0[] = "getfloat(): Unexpected EOL";
const char str_face_shape_801B8ACC[] = "getint";
const char str_face_shape_801B8AD4[] = "getint(): Unexpected EOL";
const char str_face_shape_801B8AF0[] = "max=%f\n";
const char str_face_shape_801B8AF8[] = "c=";
const char str_face_shape_801B8AFC[] = "get_3DG1_shape";
const char str_face_shape_801B8B0C[] = "Missing number of points";
const char str_face_shape_801B8B28[] = "Too many vertices in shape data";
const char str_face_shape_801B8B48[] = "Missing number of points in face";
const char str_face_shape_801B8B6C[] = "Too many faces in shape data";
const char str_face_shape_801B8B8C[] = "Too many points in a face(%d)";
const char str_face_shape_801B8BAC[] = "Too many points in a face(%d)";
const char str_face_shape_801B8BCC[] = "Too many vertices in shape data";
const char str_face_shape_801B8BEC[] = "Too many faces in shape data";
const char str_face_shape_801B8C0C[] = "Too many points in a face(%d)";
const char str_face_shape_801B8C2C[] = "Too many points in a face(%d)";
const char str_face_shape_801B8C4C[] = "rb";
const char str_face_shape_801B8C50[] = "Cant load shape '%s'";
const char str_face_shape_801B8C68[] = "Too many points in a face(%d)";
const char str_face_shape_801B8C88[] = "Loading %s...\n";
const char str_face_shape_801B8C98[] = ".ark";
const char str_face_shape_801B8CA0[] = "r";
const char str_face_shape_801B8CA4[] = "Cant open shape '%s'";
const char str_face_shape_801B8CBC[] = "3DG1";
const char str_face_shape_801B8CC4[] = "Num Vertices=%d\n";
const char str_face_shape_801B8CD8[] = "Num Faces=%d\n";
const char str_face_shape_801B8CE8[] = "\n";
const char str_face_shape_801B8CEC[] = "grid";
const char str_face_shape_801B8CF4[] = "grid: points=%d, faces=%d\n";
const char str_face_shape_801B8D10[] = "make_netfromshape(): null shape ptr";
const char str_face_shape_801B8D34[] = "mario face";
const char str_face_shape_801B8D40[] = "l";
const char str_face_shape_801B8D44[] = "mario face";
const char str_face_shape_801B8D50[] = "N228l";
const char str_face_shape_801B8D58[] = "N231l";
const char str_face_shape_801B8D60[] = "N1000l";
const char str_face_shape_801B8D68[] = "N167l";
const char str_face_shape_801B8D70[] = "N176l";
const char str_face_shape_801B8D78[] = "N131l";
const char str_face_shape_801B8D80[] = "N206l";
const char str_face_shape_801B8D88[] = "N215l";
const char str_face_shape_801B8D90[] = "N31l";
const char str_face_shape_801B8D98[] = "N65l";
const char str_face_shape_801B8DA0[] = "N185l";
const char str_face_shape_801B8DA8[] = "N194l";
const char str_face_shape_801B8DB0[] = "N158l";
const char str_face_shape_801B8DB8[] = "N15l";
const char str_face_shape_801B8DC0[] = "N149l";
const char str_face_shape_801B8DC8[] = "N6l";
const char str_face_shape_801B8DCC[] = "N112l";
const char str_face_shape_801B8DD4[] = "N96l";
const char str_face_shape_801B8DDC[] = "load_shapes2()";
const char str_face_shape_801B8DEC[] = "cube";

extern void L8019A1F4(void);
extern void L8019A220(void);
extern void L8019A2B0(void);
extern void L8019A308(void);
extern void L8019A368(void);
extern void L8019A418(void);
extern void L8019A474(void);
extern void L8019A48C(void);

void (*const face_shape_801B8DF4[])(void) =
{
	L8019A1F4,
	L8019A48C,
	L8019A220,
	L8019A2B0,
	L8019A308,
	L8019A368,
	L8019A474,
	L8019A418,
};

const float face_shape_801B8E14 = 810;
const float face_shape_801B8E18 = 750;
const float face_shape_801B8E1C = 661;
const float face_shape_801B8E20 = 0.4F;
const float face_shape_801B8E24 = 0.9F;

BALIGN char _face_shape_bss[0x1540-0x11E0];

void *face_shape_801A8470 = NULL;
void *face_shape_801A8474 = NULL;
void *face_shape_801A8478 = NULL;
void *face_shape_801A847C = NULL;
void *face_shape_801A8480 = NULL;
void *face_shape_231 = NULL;
void *face_shape_228 = NULL;

SRT face_shape_801A848C[] =
{
	{{1, 1, 1}, {0, 0, 0}, {0, 0, 0}},
};

DYNDATA face_shape_801A84B0 = {1, 4, face_shape_801A848C};

SRT face_shape_801A84BC[] =
{
	{{1, 1, 1}, {0, 0, 0}, {0, 0, 0}},
};

DYNDATA face_shape_801A84E0 = {1, 4, face_shape_801A84BC};

SRT face_shape_801A84EC[] =
{
	{{1, 1, 1}, {0, 0, 0}, {0, 0, 0}},
};

DYNDATA face_shape_801A8510 = {1, 4, face_shape_801A84EC};
void *face_shape_801A851C = NULL;
void *face_shape_801A8520 = NULL;
void *face_shape_801A8524 = NULL;
void *face_shape_801A8528 = NULL;
void *face_shape_801A852C = NULL;
void *face_shape_801A8530 = NULL;
void *face_shape_801A8534 = NULL;
void *face_shape_801A8538 = NULL;
void *face_shape_801A853C = NULL;
void *face_shape_801A8540 = NULL;
void *face_shape_801A8544 = NULL;
void *face_shape_801A8548 = NULL;
void *face_shape_801A854C = NULL;
void *face_shape_801A8550 = NULL;
void *face_shape_801A8554 = NULL;
void *face_shape_801A8558 = NULL;
void *face_shape_801A855C = NULL;
void *face_shape_801A8560 = NULL;
void *face_shape_801A8564 = NULL;
void *face_shape_801A8568 = NULL;
void *face_shape_801A856C = NULL;
void *face_shape_801A8570 = NULL;
void *face_shape_801A8574 = NULL;
void *face_shape_801A8578 = NULL;
void *face_shape_801A857C = NULL;
void *face_shape_801A8580 = NULL;
void *face_shape_801A8584 = NULL;
void *face_shape_801A8588 = NULL;
void *face_shape_801A858C = NULL;
void *face_shape_801A8590 = NULL;
void *face_shape_801A8594 = NULL;
void *face_shape_801A8598 = NULL;
void *face_shape_801A859C = NULL;
void *face_shape_801A85A0 = NULL;
void *face_shape_801A85A4 = NULL;
void *face_shape_801A85A8 = NULL;
void *face_shape_801A85AC = NULL;
void *face_shape_801A85B0 = NULL;

DYNLIST face_shape_801A85B4[] =
{
	dStart(),
	dStartGroup(str_face_shape_801B8A60),
	dMakeObj(1, str_face_shape_801B8A68),
	dSetType(3),
	dSetShapePtrPtr(&face_shape_801A8534),
	dEndGroup(str_face_shape_801B8A70),
	dUseObj(str_face_shape_801B8A78),
	dEnd(),
};

DYNLIST face_shape_801A8674[] =
{
	dStart(),
	dSetFlags(6144),
	dEnd(),
};

DYNLIST face_shape_801A86BC[] =
{
	dStart(),
	dCall(face_shape_801A8674),
	dSetFlags(1024),
	dSetFriction(0.04, 0.01, 0.01),
	dEnd(),
};

DYNLIST face_shape_801A8734[] =
{
	dStart(),
	dCall(face_shape_801A8674),
	dSetFriction(0.04, 0.01, 0.01),
	dEnd(),
};

DYNLIST face_shape_801A8794[] =
{
	dStart(),
	dCall(face_shape_801A8674),
	dSetFriction(0.005, 0.005, 0.005),
	dEnd(),
};

double face_shape_801A87F8 = 0;
