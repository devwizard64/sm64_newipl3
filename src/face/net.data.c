#include "face.h"

const char str_face_net_801B8730[] = "reset_net %d\n";
const char str_face_net_801B8740[] = "net scale: ";
const char str_face_net_801B874C[] = "net box: ";
const char str_face_net_801B8758[] = "childpos";
const char str_face_net_801B8764[] = "childpos";
const char str_face_net_801B8770[] = "move_bonesnet";
const char str_face_net_801B8780[] = "move_bones";
const char str_face_net_801B878C[] = "move_bones";
const char str_face_net_801B8798[] = "move_skin";
const char str_face_net_801B87A4[] = "move_skin";
const char str_face_net_801B87B0[] = "move_net(%d(%d)): Undefined net type";
const char str_face_net_801B87D8[] = "move_nets";
const char str_face_net_801B87E4[] = "move_nets";
const char str_face_net_801B87F0[] = "move_nets";
const char str_face_net_801B87FC[] = "Flags:%x\n";
const char str_face_net_801B8808[] = "World:";
const char str_face_net_801B8810[] = "Force:";
const char str_face_net_801B8818[] = "Vel:";
const char str_face_net_801B8820[] = "Rot:";
const char str_face_net_801B8828[] = "CollDisp:";
const char str_face_net_801B8834[] = "CollTorque:";
const char str_face_net_801B8840[] = "CollTorqueL:";
const char str_face_net_801B8850[] = "CollTorqueD:";
const char str_face_net_801B8860[] = "Torque:";
const char str_face_net_801B8868[] = "CofG:";
const char str_face_net_801B8870[] = "BoundBox:";
const char str_face_net_801B887C[] = "CollDispOff:";
const char str_face_net_801B888C[] = "CollMaxD: %f\n";
const char str_face_net_801B889C[] = "MaxRadius: %f\n";
const char str_face_net_801B88AC[] = "Matrix:";
const char str_face_net_801B88B4[] = "ShapePtr: %x (%s)\n";
const char str_face_net_801B88C8[] = "ShapePtr: NULL\n";
const char str_face_net_801B88D8[] = "Scale:";
const char str_face_net_801B88E0[] = "Mass: %f\n";
const char str_face_net_801B88EC[] = "NumModes: %d\n";
const char str_face_net_801B88FC[] = "NodeGroup: %x\n";
const char str_face_net_801B890C[] = "PlaneGroup: %x\n";
const char str_face_net_801B891C[] = "VertexGroup: %x\n";
const double face_net_801B8930 = 0.98;
const double face_net_801B8938 = 0.98;
const double face_net_801B8940 = 0.9;

extern void L80193730(void);
extern void L80193738(void);
extern void L8019374C(void);
extern void L80193778(void);
extern void L801937A4(void);
extern void L801937B8(void);
extern void L801937CC(void);

void (*const face_net_801B8948[])(void) =
{
	L80193730,
	L80193778,
	L801937A4,
	L8019374C,
	L801937B8,
	L801937CC,
	L80193738,
};

void *face_net_801BAC80;
int face_net_801BAC84;
int face_net_801BAC88;
