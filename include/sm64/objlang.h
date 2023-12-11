#ifndef __SM64_OBJLANG_H__
#define __SM64_OBJLANG_H__

#include <sm64/defshape.h>
#include <sm64/defobject.h>
#include <sm64/defobjlang.h>
#include <sm64/script_s.h>

#define oInit(type) \
	_C(O_CMD_INIT, type, 0)
#define oSleep(time) \
	_C(O_CMD_SLEEP, 0, time)
#define oCall(script) \
	_C(O_CMD_CALL, 0, 0); \
	_P(script)
#define oReturn() \
	_C(O_CMD_RETURN, 0, 0)
#define oJump(script) \
	_C(O_CMD_JUMP, 0, 0); \
	_P(script)
#define oFor(count) \
	_C(O_CMD_FOR, 0, count)
#define oFend() \
	_C(O_CMD_FEND, 0, 0)
#define oFcontinue() \
	_C(O_CMD_FCONTINUE, 0, 0)
#define oWhile() \
	_C(O_CMD_WHILE, 0, 0)
#define oWend() \
	_C(O_CMD_WEND, 0, 0)
#define oExit() \
	_C(O_CMD_EXIT, 0, 0)
#define oEnd() \
	_C(O_CMD_END, 0, 0)
#define oCallback(callback) \
	_C(O_CMD_CALLBACK, 0, 0); \
	_P(callback)
#define oAddF(mem, val) \
	_C(O_CMD_ADDF, mem, val)
#define oSetF(mem, val) \
	_C(O_CMD_SETF, mem, val)
#define oAddI(mem, val) \
	_C(O_CMD_ADDI, mem, val)
#define oSetI(mem, val) \
	_C(O_CMD_SETI, mem, val)
#define oSetFlag(mem, val) \
	_C(O_CMD_SETFLAG, mem, val)
#define oClrFlag(mem, val) \
	_C(O_CMD_CLRFLAG, mem, val)
#define oSetRandA(mem, add, shift) \
	_C(O_CMD_SETRANDA, mem, add); \
	_H(shift, 0)
#define oSetRandF(mem, add, mul) \
	_C(O_CMD_SETRANDF, mem, add); \
	_H(mul, 0)
#define oSetRandI(mem, add, mul) \
	_C(O_CMD_SETRANDI, mem, add); \
	_H(mul, 0)
#define oAddRandF(mem, add, mul) \
	_C(O_CMD_ADDRANDF, mem, add); \
	_H(mul, 0)
#define oAddRandA(mem, add, shift) \
	_C(O_CMD_ADDRANDA, mem, add); \
	_H(shift, 0)
/* 24 */
/* 25 */
/* 26 */
#define oShape(shape) \
	_C(O_CMD_SHAPE, 0, shape)
#define oMakeObj(shape, script) \
	_C(O_CMD_MAKEOBJ, 0, 0); \
	_W(shape); \
	_P(script)
#define oDestroy() \
	_C(O_CMD_DESTROY, 0, 0)
#define oGround() \
	_C(O_CMD_GROUND, 0, 0)
#define oMemAddF(mem, a, b) \
	_B(O_CMD_MEMADDF, mem, a, b)
#define oMemAddI(mem, a, b) \
	_B(O_CMD_MEMADDI, mem, a, b)
#define oBillboard() \
	_C(O_CMD_BILLBOARD, 0, 0)
#define oShapeHide() \
	_C(O_CMD_SHAPEHIDE, 0, 0)
#define oHit(radius, height) \
	_C(O_CMD_HIT, 0, 0); \
	_H(radius, height)
/* 36 */
#define oMemSleep(mem) \
	_C(O_CMD_MEMSLEEP, mem, 0)
#define oFor2(count) \
	_C(O_CMD_FOR2, count, 0)
#define oPtr(mem, ptr) \
	_C(O_CMD_PTR, mem, 0); \
	_P(ptr)
#define oAnime(anime) \
	_C(O_CMD_ANIME, anime, 0)
#define oMakeObjCode(shape, script, code) \
	_C(O_CMD_MAKEOBJCODE, 0, code); \
	_W(shape); \
	_P(script)
#define oMap(map) \
	_C(O_CMD_MAP, 0, 0); \
	_P(map)
#define oHitOff(radius, height, offset) \
	_C(O_CMD_HITOFF, 0, 0); \
	_H(radius, height); \
	_H(offset, 0)
#define oMakeChild(shape, script) \
	_C(O_CMD_MAKECHILD, 0, 0); \
	_W(shape); \
	_P(script)
#define oSavePos() \
	_C(O_CMD_SAVEPOS, 0, 0)
#define oDmg(radius, height) \
	_C(O_CMD_DMG, 0, 0); \
	_H(radius, height)
#define oHitCode(code) \
	_C(O_CMD_HITCODE, 0, 0); \
	_W(code)
#define oPhysics(radius, gravity, bounce, drag, friction, density) \
	_C(O_CMD_PHYSICS, 0, 0); \
	_H(radius, gravity); \
	_H(bounce, drag); \
	_H(friction, density); \
	_H(0, 0)
#define oHitFlag(flag) \
	_C(O_CMD_HITFLAG, 0, 0); \
	_W(flag)
#define oScale(scale) \
	_C(O_CMD_SCALE, 0, scale)
#define oMemClrParentFlag(mem, flag) \
	_C(O_CMD_MEMCLRPARENTFLAG, mem, 0); \
	_W(flag)
#define oInc(mem, period) \
	_C(O_CMD_INC, mem, period)
#define oShapeDisable() \
	_C(O_CMD_SHAPEDISABLE, 0, 0)
#define oSetS(mem, val) \
	_C(O_CMD_SETS, 0, 0); \
	_W(val)
#define oSplash(splash) \
	_C(O_CMD_SPLASH, 0, 0); \
	_P(splash)

#endif /* __SM64_OBJLANG_H__ */
