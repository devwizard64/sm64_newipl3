#include "face.h"

const char str_face_object_801B5920[] = "joints";
const char str_face_object_801B5928[] = "bones";
const char str_face_object_801B5930[] = "groups";
const char str_face_object_801B5938[] = "particles";
const char str_face_object_801B5944[] = "shapes";
const char str_face_object_801B594C[] = "nets";
const char str_face_object_801B5954[] = "planes";
const char str_face_object_801B595C[] = "vertices";
const char str_face_object_801B5968[] = "cameras";
const char str_face_object_801B5970[] = "faces";
const char str_face_object_801B5978[] = "materials";
const char str_face_object_801B5984[] = "lights";
const char str_face_object_801B598C[] = "weights";
const char str_face_object_801B5994[] = "gadgets";
const char str_face_object_801B599C[] = "views";
const char str_face_object_801B59A4[] = "labels";
const char str_face_object_801B59AC[] = "animators";
const char str_face_object_801B59B8[] = "valptrs";
const char str_face_object_801B59C0[] = "zones";
const char str_face_object_801B59C8[] = "unkown";
const char str_face_object_801B59D0[] = "make_object";
const char str_face_object_801B59DC[] = "make_object() : Unkown object!";
const char str_face_object_801B59FC[] = "Cant allocate object '%s' memory!";
const char str_face_object_801B5A20[] = "links";
const char str_face_object_801B5A28[] = "Cant allocate link memory!";
const char str_face_object_801B5A44[] = "links";
const char str_face_object_801B5A4C[] = "Cant allocate link memory!";
const char str_face_object_801B5A68[] = "bad3\n";
const char str_face_object_801B5A70[] = "reset_plane";
const char str_face_object_801B5A7C[] = "NoName";
const char str_face_object_801B5A84[] = "NoName";
const char str_face_object_801B5A8C[] = "b%d ";
const char str_face_object_801B5A94[] = "j%d ";
const char str_face_object_801B5A9C[] = "g%d ";
const char str_face_object_801B5AA4[] = "p%d ";
const char str_face_object_801B5AAC[] = "net(no id) ";
const char str_face_object_801B5AB8[] = "c%d ";
const char str_face_object_801B5AC0[] = "v(no id) ";
const char str_face_object_801B5ACC[] = "pl%d ";
const char str_face_object_801B5AD4[] = "?%x ";
const char str_face_object_801B5ADC[] = "Made group no.%d\n";
const char str_face_object_801B5AF0[] = "make_group() NULL group ptr";
const char str_face_object_801B5B0C[] = "Made group no.%d from: ";
const char str_face_object_801B5B24[] = "%s";
const char str_face_object_801B5B28[] = "\n";
const char str_face_object_801B5B2C[] = "addto_group";
const char str_face_object_801B5B38[] = "Added ";
const char str_face_object_801B5B40[] = "%s";
const char str_face_object_801B5B44[] = " to ";
const char str_face_object_801B5B4C[] = "%s";
const char str_face_object_801B5B50[] = "\n";
const char str_face_object_801B5B54[] = "addto_groupfirst";
const char str_face_object_801B5B68[] = "\nDetails about: ";
const char str_face_object_801B5B7C[] = "Groups\n";
const char str_face_object_801B5B84[] = "Bones\n";
const char str_face_object_801B5B8C[] = "Joints\n";
const char str_face_object_801B5B94[] = "Particles\n";
const char str_face_object_801B5BA0[] = "Everything?\n";
const char str_face_object_801B5BB0[] = "Group %s: ";
const char str_face_object_801B5BBC[] = "groups ";
const char str_face_object_801B5BC4[] = "bones ";
const char str_face_object_801B5BCC[] = "joints ";
const char str_face_object_801B5BD4[] = "particles ";
const char str_face_object_801B5BE0[] = "cameras ";
const char str_face_object_801B5BEC[] = "nets ";
const char str_face_object_801B5BF4[] = "gadgets ";
const char str_face_object_801B5C00[] = "labels ";
const char str_face_object_801B5C08[] = "face ";
const char str_face_object_801B5C10[] = "vertex ";
const char str_face_object_801B5C18[] = "%s";
const char str_face_object_801B5C1C[] = "\n";
const char str_face_object_801B5C20[] = "Bone %s: ";
const char str_face_object_801B5C2C[] = "%s";
const char str_face_object_801B5C30[] = "\n";
const char str_face_object_801B5C34[] = "Joint %s: ";
const char str_face_object_801B5C40[] = "%s";
const char str_face_object_801B5C44[] = "\n";
const char str_face_object_801B5C48[] = "Too many objects to morph";
const char str_face_object_801B5C64[] = "move_animator(): Unkown animation data type";
const char str_face_object_801B5C90[] = "move_animators";
const char str_face_object_801B5CA0[] = "move_animators";
const char str_face_object_801B5CB0[] = "movement";
const float face_object_801B5CBC = 10000000;
const float face_object_801B5CC0 = 10000000;
const float face_object_801B5CC4 = 10000000;
const float face_object_801B5CC8 = -10000000;
const float face_object_801B5CCC = -10000000;
const float face_object_801B5CD0 = -10000000;

extern void L8017C154(void);
extern void L8017C168(void);
extern void L8017C17C(void);
extern void L8017C190(void);
extern void L8017C1A4(void);
extern void L8017C1B8(void);
extern void L8017C2D0(void);

void (*const face_object_801B5CD4[])(void) =
{
	L8017C17C,
	L8017C168,
	L8017C2D0,
	L8017C154,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C190,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C1A4,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C2D0,
	L8017C1B8,
};

extern void L8017C450(void);
extern void L8017C46C(void);
extern void L8017C488(void);
extern void L8017C4A4(void);
extern void L8017C4C0(void);
extern void L8017C4F8(void);
extern void L8017C688(void);

void (*const face_object_801B5D54[])(void) =
{
	L8017C488,
	L8017C46C,
	L8017C688,
	L8017C450,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C4A4,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C4C0,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C688,
	L8017C4F8,
};

const float face_object_801B5DD4 = 0.1F;
const float face_object_801B5DD8 = 5000;
const double face_object_801B5DE0 = 0.1;
const float face_object_801B5DE8 = 0.06F;

extern void L8017D8E0(void);
extern void L8017D900(void);
extern void L8017D920(void);
extern void L8017D940(void);
extern void L8017D960(void);
extern void L8017D9D0(void);

void (*const face_object_801B5DEC[])(void) =
{
	L8017D920,
	L8017D8E0,
	L8017D9D0,
	L8017D900,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D940,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D9D0,
	L8017D960,
};

const double face_object_801B5E70 = 1000;
const double face_object_801B5E78 = 1000;
const double face_object_801B5E80 = 0.01;
const double face_object_801B5E88 = 0.01;
const double face_object_801B5E90 = 0.01;
const float face_object_801B5E98 = 0.1F;

extern void L8017F9EC(void);
extern void L8017FA3C(void);
extern void L8017FBFC(void);
extern void L8017FDA4(void);
extern void L80180054(void);
extern void L80180410(void);
extern void L801805C4(void);
extern void L80180614(void);
extern void L8018066C(void);
extern void L801806C4(void);
extern void L80180730(void);

void (*const face_object_801B5E9C[])(void) =
{
	L8017F9EC,
	L801805C4,
	L80180054,
	L8018066C,
	L801806C4,
	L8017FA3C,
	L8017FBFC,
	L8017FDA4,
	L80180614,
	L80180730,
	L80180410,
};

const double face_object_801B5EC8 = 0.2;
const double face_object_801B5ED0 = 0.6;

BALIGN char _face_object_bss[0x574-0x480];

int face_object_801A8340[4] = {0};
float face_object_801A8350 = 0;
float face_object_801A8354 = 0;
