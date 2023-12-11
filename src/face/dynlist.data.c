#include "face.h"

const char str_face_dynlist_801B5FE0[] = "NullObj";
const char str_face_dynlist_801B5FE8[] = "proc_dynlist() not a valid dyn list";
const char str_face_dynlist_801B600C[] = "proc_dynlist(): unkown command";
const char str_face_dynlist_801B602C[] = "__%d";
const char str_face_dynlist_801B6034[] = "__%d";
const char str_face_dynlist_801B603C[] = "N%d";
const char str_face_dynlist_801B6040[] = "c%d";
const char str_face_dynlist_801B6044[] = "dMakeNetFromShape(\"%s\"): Undefined object";
const char str_face_dynlist_801B6070[] = "dMakeNetFromShapePtrPtr\n";
const char str_face_dynlist_801B608C[] = "dynlist";
const char str_face_dynlist_801B6094[] = "dMakeObj(): Cant allocate dynlist memory";
const char str_face_dynlist_801B60C0[] = "dynlist";
const char str_face_dynlist_801B60C8[] = "N%d";
const char str_face_dynlist_801B60CC[] = "U%d";
const char str_face_dynlist_801B60D0[] = "dMakeObj(\"%s\"): Object with same name already exists";
const char str_face_dynlist_801B6108[] = "dyn list obj name too long '%s'";
const char str_face_dynlist_801B6128[] = "dMakeObj(): Too many dynlist objects";
const char str_face_dynlist_801B6150[] = "N%d";
const char str_face_dynlist_801B6154[] = "dmakeobj() Car dynamics are missing!";
const char str_face_dynlist_801B617C[] = "dMakeObj(): Unkown object type";
const char str_face_dynlist_801B619C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B61C0[] = "dAttach(\"%s\"): Undefined object";
const char str_face_dynlist_801B61E0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6214[] = "dAttach()";
const char str_face_dynlist_801B6220[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6244[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6278[] = "dAttachTo()";
const char str_face_dynlist_801B6284[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B62B8[] = "dAttachTo()";
const char str_face_dynlist_801B62C4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B62E8[] = "dAttachTo(\"%s\"): Undefined object";
const char str_face_dynlist_801B630C[] = "animdata";
const char str_face_dynlist_801B6318[] = "no anim group";
const char str_face_dynlist_801B6328[] = "no animation data";
const char str_face_dynlist_801B633C[] = "cant allocate animation data";
const char str_face_dynlist_801B635C[] = "unknown anim type for allocation";
const char str_face_dynlist_801B6380[] = "cant allocate animation data";
const char str_face_dynlist_801B63A0[] = "animdata";
const char str_face_dynlist_801B63AC[] = "chk_shapegen";
const char str_face_dynlist_801B63BC[] = "chk_shapegen";
const char str_face_dynlist_801B63CC[] = "unsupported poly type";
const char str_face_dynlist_801B63E4[] = "unsupported vertex type";
const char str_face_dynlist_801B63FC[] = "shapegen() too many vertices";
const char str_face_dynlist_801B641C[] = "chk_shapegen() please set face group before mats";
const char str_face_dynlist_801B6450[] = "chk_shapegen";
const char str_face_dynlist_801B6460[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6484[] = "dSetNodeGroup(\"%s\"): Undefined group";
const char str_face_dynlist_801B64AC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B64E0[] = "dSetNodeGroup()";
const char str_face_dynlist_801B64F0[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6514[] = "dSetMatGroup(\"%s\"): Undefined group";
const char str_face_dynlist_801B6538[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B656C[] = "dSetMatGroup()";
const char str_face_dynlist_801B657C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B65A0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B65D4[] = "dSetTextureST()";
const char str_face_dynlist_801B65E4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6608[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B663C[] = "dUseTexture()";
const char str_face_dynlist_801B664C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6670[] = "dSetSkinShape(\"%s\"): Undefined object";
const char str_face_dynlist_801B6698[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B66CC[] = "dSetSkinShape()";
const char str_face_dynlist_801B66DC[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6700[] = "dMapMaterials(\"%s\"): Undefined group";
const char str_face_dynlist_801B6728[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B674C[] = "dMapVertices(\"%s\"): Undefined group";
const char str_face_dynlist_801B6770[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6794[] = "dSetPlaneGroup(\"%s\"): Undefined group";
const char str_face_dynlist_801B67BC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B67F0[] = "dSetPlaneGroup()";
const char str_face_dynlist_801B6804[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6828[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B685C[] = "dSetShapePtrPtr()";
const char str_face_dynlist_801B6870[] = "dSetShapePtr(\"%s\"): Undefined object";
const char str_face_dynlist_801B6898[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B68CC[] = "dSetShapePtr()";
const char str_face_dynlist_801B68DC[] = "dUseObj(\"%s\"): Undefined object";
const char str_face_dynlist_801B68FC[] = "dEndGroup(\"%s\"): Undefined group";
const char str_face_dynlist_801B6920[] = "dAddToGroup(\"%s\"): Undefined group";
const char str_face_dynlist_801B6944[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6968[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B699C[] = "dSetInitPos()";
const char str_face_dynlist_801B69AC[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B69D0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6A04[] = "dSetVelocity()";
const char str_face_dynlist_801B6A14[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6A38[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6A5C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6A90[] = "dSetTorque()";
const char str_face_dynlist_801B6AA0[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6AC4[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6AF8[] = "dGetInitPos()";
const char str_face_dynlist_801B6B08[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6B2C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6B60[] = "dGetInitRot()";
const char str_face_dynlist_801B6B70[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6B94[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6BC8[] = "dSetRelPos()";
const char str_face_dynlist_801B6BD8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6BFC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6C30[] = "dAddToRelPos()";
const char str_face_dynlist_801B6C40[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6C64[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6C98[] = "dGetRelPos()";
const char str_face_dynlist_801B6CA8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6CCC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6D00[] = "dGetAttObjGroup()";
const char str_face_dynlist_801B6D14[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6D38[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6D6C[] = "dGetAttToObj()";
const char str_face_dynlist_801B6D7C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6DA0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6DD4[] = "dGetScale()";
const char str_face_dynlist_801B6DE0[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6E04[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6E38[] = "dSetAttOffset()";
const char str_face_dynlist_801B6E48[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6E6C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6EA0[] = "dSetAttToOffset()";
const char str_face_dynlist_801B6EB4[] = "dSetAttOffset(): Object '%s' isnt attached to anything";
const char str_face_dynlist_801B6EEC[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6F10[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6F44[] = "dGetAttOffset()";
const char str_face_dynlist_801B6F54[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6F78[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B6FAC[] = "dGetAttFlags()";
const char str_face_dynlist_801B6FBC[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B6FE0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7014[] = "dSetWorldPos()";
const char str_face_dynlist_801B7024[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7048[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B707C[] = "dSetNormal()";
const char str_face_dynlist_801B708C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B70B0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B70E4[] = "dGetWorldPosPtr()";
const char str_face_dynlist_801B70F8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B711C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7150[] = "dGetWorldPos()";
const char str_face_dynlist_801B7160[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7184[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B71B8[] = "dSetScale()";
const char str_face_dynlist_801B71C4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B71E8[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B721C[] = "dSetRotation()";
const char str_face_dynlist_801B722C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7250[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7284[] = "dCofG()";
const char str_face_dynlist_801B728C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B72B0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B72E4[] = "dShapeOffset()";
const char str_face_dynlist_801B72F4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7318[] = "dAddValPtr(\"%s\"): Undefined object";
const char str_face_dynlist_801B733C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7370[] = "dAddValPtr()";
const char str_face_dynlist_801B7380[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B73A4[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B73D8[] = "dAddValProc()";
const char str_face_dynlist_801B73E8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B740C[] = "dLinkWithPtr";
const char str_face_dynlist_801B741C[] = "too many points";
const char str_face_dynlist_801B742C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7460[] = "dLinkWithPtr()";
const char str_face_dynlist_801B7470[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7494[] = "dLinkWith(\"%s\"): Undefined object";
const char str_face_dynlist_801B74B8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B74DC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7510[] = "dSetFlags()";
const char str_face_dynlist_801B751C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7540[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7574[] = "dClrFlags()";
const char str_face_dynlist_801B7580[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B75A4[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B75D8[] = "dSetParmf() - unsupported parm.";
const char str_face_dynlist_801B75F8[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B762C[] = "dSetParmf() - unsupported parm.";
const char str_face_dynlist_801B764C[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7680[] = "dSetParmf() - unsupported parm.";
const char str_face_dynlist_801B76A0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B76D4[] = "dSetParmf()";
const char str_face_dynlist_801B76E0[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7704[] = "Bad parm";
const char str_face_dynlist_801B7710[] = "Bad parm";
const char str_face_dynlist_801B771C[] = "dsetparmp() too many points";
const char str_face_dynlist_801B7738[] = "Bad parm";
const char str_face_dynlist_801B7744[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7778[] = "dSetParmp()";
const char str_face_dynlist_801B7784[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B77A8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B77CC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7800[] = "dSetType()";
const char str_face_dynlist_801B780C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7830[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7864[] = "dSetID()";
const char str_face_dynlist_801B7870[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7894[] = "dSetColNum: Unkown colour number";
const char str_face_dynlist_801B78B8[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B78EC[] = "dColourNum()";
const char str_face_dynlist_801B78FC[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7920[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7954[] = "dSetMaterial()";
const char str_face_dynlist_801B7964[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7988[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B79BC[] = "dFriction()";
const char str_face_dynlist_801B79C8[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B79EC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7A20[] = "dSetSpring()";
const char str_face_dynlist_801B7A30[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7A54[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7A88[] = "dSetAmbient()";
const char str_face_dynlist_801B7A98[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7ABC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7AF0[] = "dSetDiffuse()";
const char str_face_dynlist_801B7B00[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7B24[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7B58[] = "dControlType()";
const char str_face_dynlist_801B7B68[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7B8C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7BB0[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7BE4[] = "dGetMatrix()";
const char str_face_dynlist_801B7BF4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7C18[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7C4C[] = "dSetMatrix()";
const char str_face_dynlist_801B7C5C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7C80[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7CB4[] = "dSetRMatrix()";
const char str_face_dynlist_801B7CC4[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7CE8[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7D1C[] = "dGetRMatrixPtr()";
const char str_face_dynlist_801B7D30[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7D54[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7D88[] = "dSetIMatrix()";
const char str_face_dynlist_801B7D98[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7DBC[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7DF0[] = "dGetMatrixPtr()";
const char str_face_dynlist_801B7E00[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7E24[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7E58[] = "dGetIMatrixPtr()";
const char str_face_dynlist_801B7E6C[] = "proc_dynlist(): No current object";
const char str_face_dynlist_801B7E90[] = "%s: Object '%s'(%x) does not support this function.";
const char str_face_dynlist_801B7EC4[] = "dSetSkinWeight()";

extern void L80183BB0(void);
extern void L80183BCC(void);
extern void L80183BEC(void);
extern void L80183C0C(void);
extern void L80183C28(void);
extern void L80183C48(void);
extern void L80183C64(void);
extern void L80183C80(void);
extern void L80183C9C(void);
extern void L80183CB8(void);
extern void L80183CD4(void);
extern void L80183E08(void);
extern void L80183E24(void);
extern void L80183E40(void);
extern void L80183E5C(void);
extern void L80183E80(void);
extern void L80183EA4(void);
extern void L80183EC8(void);
extern void L80183EEC(void);
extern void L80183F10(void);
extern void L80183F24(void);
extern void L80183F48(void);
extern void L80183F6C(void);
extern void L80183F90(void);
extern void L80183FB0(void);
extern void L80183FD0(void);
extern void L80183FEC(void);
extern void L80184008(void);
extern void L80184024(void);
extern void L80184040(void);
extern void L80184060(void);
extern void L80184074(void);
extern void L80184090(void);
extern void L801840AC(void);
extern void L801840C8(void);
extern void L801840E4(void);
extern void L80184100(void);
extern void L8018411C(void);
extern void L80184138(void);
extern void L80184154(void);
extern void L80184178(void);
extern void L80184194(void);
extern void L801841B8(void);
extern void L801841DC(void);
extern void L801841F8(void);
extern void L80184218(void);
extern void L80184234(void);
extern void L80184254(void);
extern void L80184270(void);
extern void L8018428C(void);
extern void L801842AC(void);
extern void L801842C8(void);
extern void L801842E4(void);
extern void L80184300(void);

void (*const face_dynlist_801B7ED8[])(void) =
{
	L80183E40,
	L80183E5C,
	L80183E80,
	L80183EA4,
	L80183EC8,
	L80183EEC,
	L80183F24,
	L80184008,
	L80183FD0,
	L80183FEC,
	L80184154,
	L80184178,
	L80183E24,
	L80184138,
	L80184300,
	L80183BCC,
	L80183C48,
	L80183C64,
	L80183C80,
	L8018411C,
	L80184090,
	L80184074,
	L801840AC,
	L801840C8,
	L801840E4,
	L80184100,
	L80183F6C,
	L80183F48,
	L80183CB8,
	L80183E08,
	L80183C9C,
	L801841DC,
	L801841F8,
	L80184194,
	L801841B8,
	L80184218,
	L80184234,
	L80184254,
	L80184270,
	L80184024,
	L80184040,
	L80184060,
	L80184300,
	L80183BB0,
	L80183F90,
	L80183FB0,
	L80183BEC,
	L80183C28,
	L80183C0C,
	L80183F10,
	L80183CD4,
	L80184300,
	L801842AC,
	L8018428C,
	L801842C8,
	L801842E4,
};

extern void L80184C3C(void);
extern void L80184C50(void);
extern void L80184C70(void);
extern void L80184C90(void);
extern void L80184CB4(void);
extern void L80184CD4(void);
extern void L80184CF8(void);
extern void L80184D10(void);
extern void L80184D30(void);
extern void L80184D58(void);
extern void L80184D74(void);
extern void L80184DA8(void);
extern void L80184DC0(void);
extern void L80184DDC(void);
extern void L80184E04(void);
extern void L80184E1C(void);
extern void L80184E44(void);
extern void L80184E78(void);
extern void L80184E8C(void);

void (*const face_dynlist_801B7FB8[])(void) =
{
	L80184C3C,
	L80184C90,
	L80184C50,
	L80184C70,
	L80184CF8,
	L80184D58,
	L80184D74,
	L80184DA8,
	L80184D10,
	L80184DC0,
	L80184DDC,
	L80184E04,
	L80184E1C,
	L80184E44,
	L80184E78,
	L80184CD4,
	L80184D30,
	L80184E8C,
	L80184CB4,
};

const float face_dynlist_801B8004 = 0.1F;

extern void L801855E4(void);
extern void L801855F4(void);
extern void L80185604(void);
extern void L80185614(void);
extern void L80185624(void);
extern void L80185634(void);
extern void L80185644(void);
extern void L80185654(void);

void (*const face_dynlist_801B8008[])(void) =
{
	L80185644,
	L80185624,
	L80185634,
	L80185654,
	L80185654,
	L801855F4,
	L80185604,
	L80185614,
	L80185654,
	L80185654,
	L801855E4,
};

extern void L80188CD4(void);
extern void L80188D24(void);
extern void L80188D74(void);
extern void L80188E14(void);
extern void L80188E64(void);
extern void L801891AC(void);

void (*const face_dynlist_801B8034[])(void) =
{
	L80188E14,
	L801891AC,
	L80188CD4,
	L801891AC,
	L801891AC,
	L801891AC,
	L80188D74,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L80188E64,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L801891AC,
	L80188D24,
};

extern void L80189E74(void);
extern void L80189E94(void);
extern void L80189EB4(void);
extern void L80189F14(void);
extern void L80189F34(void);
extern void L80189F74(void);

void (*const face_dynlist_801B80B0[])(void) =
{
	L80189E94,
	L80189F74,
	L80189E74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F34,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F14,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189F74,
	L80189EB4,
};

BALIGN char _face_dynlist_bss[0x748-0x5E0];

void *face_dynlist_801A83E0 = NULL;
void *face_dynlist_801A83E4 = NULL;
BOX face_dynlist_801A83E8 = {0, 0, 0, 0, 0, 0};
int face_dynlist_801A8400 = 0;
