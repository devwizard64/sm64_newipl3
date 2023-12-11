#ifndef __DYNLIST_H__
#define __DYNLIST_H__

#define dStart() \
	{0xD1D4, NULL, 0, {0, 0, 0}}
#define dSetNamesType(type) \
	{0, NULL, type, {0, 0, 0}}
#define dSetInitPos(x, y, z) \
	{1, NULL, 0, {x, y, z}}
#define dSetRelPos(x, y, z) \
	{2, NULL, 0, {x, y, z}}
#define dSetWorldPos(x, y, z) \
	{3, NULL, 0, {x, y, z}}
#define dSetNormal(x, y, z) \
	{4, NULL, 0, {x, y, z}}
#define dSetScale(x, y, z) \
	{5, NULL, 0, {x, y, z}}
#define dSetRotation(x, y, z) \
	{6, NULL, 0, {x, y, z}}
#define dSetObjFlags(flags) \
	{7, NULL, flags, {0, 0, 0}}
#define dSetFlags(flags) \
	{8, NULL, flags, {0, 0, 0}}
#define dClrFlags(flags) \
	{9, NULL, flags, {0, 0, 0}}
#define dSetFriction(x, y, z) \
	{10, NULL, 0, {x, y, z}}
#define dSetSpring(spring) \
	{11, NULL, 0, {spring, 0, 0}}
#define dCall(dynlist) \
	{12, dynlist, 0, {0, 0, 0}}
#define dSetColNum(num) \
	{13, NULL, num, {0, 0, 0}}
#define dMakeObj(type, name) \
	{15, (void *)(name), type, {0, 0, 0}}
#define dStartGroup(name) \
	{16, (void *)(name), 0, {0, 0, 0}}
#define dEndGroup(name) \
	{17, (void *)(name), 0, {0, 0, 0}}
#define dAddToGroup(name) \
	{18, (void *)(name), 0, {0, 0, 0}}
#define dSetType(type) \
	{19, NULL, type, {0, 0, 0}}
#define dSetMatGroup(name) \
	{20, (void *)(name), 0, {0, 0, 0}}
#define dSetNodeGroup(name) \
	{21, (void *)(name), 0, {0, 0, 0}}
#define dSetSkinShape(name) \
	{22, (void *)(name), 0, {0, 0, 0}}
#define dSetPlaneGroup(name) \
	{23, (void *)(name), 0, {0, 0, 0}}
#define dSetShapePtrPtr(ptr) \
	{24, ptr, 0, {0, 0, 0}}
#define dSetShapePtr(name) \
	{25, (void *)(name), 0, {0, 0, 0}}
#define dSetShapeOffset(x, y, z) \
	{26, NULL, 0, {x, y, z}}
#define dSetCofG(x, y, z) \
	{27, NULL, 0, {x, y, z}}
#define dLinkWith(name) \
	{28, (void *)(name), 0, {0, 0, 0}}
#define dLinkWithPtr(ptr) \
	{29, ptr, 0, {0, 0, 0}}
#define dUseObj(name) \
	{30, (void *)(name), 0, {0, 0, 0}}
#define dSetControlType(type) \
	{31, NULL, type, {0, 0, 0}}
#define dSetSkinWeight(vtx, weight) \
	{32, NULL, vtx, {weight, 0, 0}}
#define dSetAmbient(r, g, b) \
	{33, NULL, 0, {r, g, b}}
#define dSetDiffuse(r, g, b) \
	{34, NULL, 0, {r, g, b}}
#define dSetID(id) \
	{35, NULL, id, {0, 0, 0}}
#define dSetMaterial(mtl, id) \
	{36, mtl, id, {0, 0, 0}}
#define dMapMaterials(name) \
	{37, (void *)(name), 0, {0, 0, 0}}
#define dMapVertices(name) \
	{38, (void *)(name), 0, {0, 0, 0}}
#define dAttach(name) \
	{39, (void *)(name), 0, {0, 0, 0}}
#define dAttachTo(flags, name) \
	{40, (void *)(name), flags, {0, 0, 0}}
#define dSetAttOffset(x, y, z) \
	{41, NULL, 0, {x, y, z}}
#define dSetSuffix(suffix) \
	{43, suffix, 0, {0, 0, 0}}
#define dSetParmf(parm, f) \
	{44, NULL, parm, {f, 0, 0}}
#define dSetParmp(parm, p) \
	{45, p, parm, {0, 0, 0}}
#define dSetParmi(parm, i) \
	{45, (void *)(i), parm, {0, 0, 0}}
#define dStartChain(name) \
	{46, (void *)(name), 0, {0, 0, 0}}
#define dAddLink(name) \
	{47, (void *)(name), 0, {0, 0, 0}}
#define dEndChain(name) \
	{48, (void *)(name), 0, {0, 0, 0}}
#define dMakeVertex(x, y, z) \
	{49, NULL, 0, {x, y, z}}
#define dAddValPtr(name, flags, type, offset) \
	{50, (void *)(name), type, {offset, flags, 0}}
#define dUseTexture(id) \
	{52, NULL, id, {0, 0, 0}}
#define dSetTextureST(s, t) \
	{53, NULL, 0, {s, t, 0}}
#define dMakeNetFromShape(name) \
	{54, (void *)(name), 0, {0, 0, 0}}
#define dMakeNetFromShapePtrPtr(ptr) \
	{55, ptr, 0, {0, 0, 0}}
#define dEnd() \
	{58, NULL, 0, {0, 0, 0}}

#endif /* __DYNLIST_H__ */
