#ifndef __SM64_PRGLANG_H__
#define __SM64_PRGLANG_H__

#include <sm64/segment.h>
#include <sm64/defaudio.h>
#include <sm64/defshape.h>
#include <sm64/defwipe.h>
#include <sm64/defscene.h>
#include <sm64/defgame.h>
#include <sm64/defstage.h>
#include <sm64/defprglang.h>
#include <sm64/script_s.h>

#define FALSE   0
#define TRUE    1

#define pExecute(seg, start, end, script) \
	_C(P_CMD_EXECUTE, 4*4, seg); \
	_P(start); \
	_P(end); \
	_P(script)
#define pChain(seg, start, end, script) \
	_C(P_CMD_CHAIN, 4*4, seg); \
	_P(start); \
	_P(end); \
	_P(script)
#define pExit() \
	_C(P_CMD_EXIT, 4*1, 0)
#define pSleep(x) \
	_C(P_CMD_SLEEP, 4*1, x)
#define pFreeze(x) \
	_C(P_CMD_FREEZE, 4*1, x)
#define pJump(script) \
	_C(P_CMD_JUMP, 4*2, 0); \
	_P(script)
#define pCall(script) \
	_C(P_CMD_CALL, 4*2, 0); \
	_P(script)
#define pReturn() \
	_C(P_CMD_RETURN, 4*1, 0)
#define pFor(count) \
	_C(P_CMD_FOR, 4*1, count)
#define pDone() \
	_C(P_CMD_DONE, 4*1, 0)
#define pRepeat() \
	_C(P_CMD_REPEAT, 4*1, 0)
#define pUntil(cmp, val) \
	_B(P_CMD_UNTIL, 4*2, P_CMP_##cmp, 0); \
	_W(val);
#define pJumpIf(cmp, val, script) \
	_B(P_CMD_JUMP_IF, 4*3, P_CMP_##cmp, 0); \
	_W(val); \
	_P(script)
#define pCallIf(cmp, val, script) \
	_B(P_CMD_CALL_IF, 4*3, P_CMP_##cmp, 0); \
	_W(val); \
	_P(script)
#define pIf(cmp, val) \
	_B(P_CMD_IF, 4*3, P_CMP_##cmp, 0); \
	_W(val)
#define pElse() \
	_C(P_CMD_ELSE, 4*1, 0)
#define pEndif() \
	_C(P_CMD_ENDIF, 4*1, 0)
#define pCallback(callback, arg) \
	_C(P_CMD_CALLBACK, 4*2, arg); \
	_P(callback)
#define pProcess(callback, arg) \
	_C(P_CMD_PROCESS, 4*2, arg); \
	_P(callback)
#define pSet(val) \
	_C(P_CMD_SET, 4*1, val)
#define pPush() \
	_C(P_CMD_PUSH, 4*1, 0)
#define pPull() \
	_C(P_CMD_PULL, 4*1, 0)
#define pLoadCode(addr, start, end) \
	_C(P_CMD_LOAD_CODE, 4*4, 0); \
	_P(addr); \
	_P(start); \
	_P(end)
#define pLoadData(seg, start, end) \
	_C(P_CMD_LOAD_DATA, 4*3, seg); \
	_P(start); \
	_P(end)
#define pLoadPres(seg, start, end) \
	_C(P_CMD_LOAD_PRES, 4*3, seg); \
	_P(start); \
	_P(end)
#define pLoadFace(arg) \
	_C(P_CMD_LOAD_FACE, 4*1, arg)
#define pLoadText(seg, start, end) \
	_C(P_CMD_LOAD_TEXT, 4*3, seg); \
	_P(start); \
	_P(end)
#define pStageInit() \
	_C(P_CMD_STAGE_INIT, 4*1, 0)
#define pStageExit() \
	_C(P_CMD_STAGE_EXIT, 4*1, 0)
#define pStageStart() \
	_C(P_CMD_STAGE_START, 4*1, 0)
#define pStageEnd() \
	_C(P_CMD_STAGE_END, 4*1, 0)
#define pSceneStart(scene, script) \
	_B(P_CMD_SCENE_START, 4*2, scene, 0); \
	_P(script)
#define pSceneEnd() \
	_C(P_CMD_SCENE_END, 4*1, 0)
#define pShapeGfx(shape, gfx, layer) \
	_C(P_CMD_SHAPE_GFX, 4*2, layer << 12 | (shape)); \
	_P(gfx)
#define pShapeScript(shape, script) \
	_C(P_CMD_SHAPE_SCRIPT, 4*2, shape); \
	_P(script)
#define pShapeScale(shape, gfx, layer, scale) \
	_C(P_CMD_SHAPE_SCALE, 4*2, layer << 12 | (shape)); \
	_P(gfx); \
	_F(scale)
#define pObj( \
	mask, shape, posx, posy, posz, angx, angy, angz, \
	a0, a1, flag, script \
) \
	_B(P_CMD_OBJECT, 4*6, mask, shape); \
	_H(posx, posy); \
	_H(posz, angx); \
	_H(angy, angz); \
	_C(a0, a1, flag); \
	_P(script)
#define pObject( \
	shape, posx, posy, posz, angx, angy, angz, \
	a0, a1, flag, script \
) \
	pObj(037, shape, posx, posy, posz, angx, angy, angz, a0, a1, flag, script)
#define pPlayer(shape, arg0, arg1, flag, script) \
	_B(P_CMD_PLAYER, 4*3, 0, shape); \
	_C(arg0, arg1, flag); \
	_P(script)
#define pMario() \
	pPlayer(S_MARIO, 0, 0, 1, o_mario)
#define pPort(index, stage, scene, port) \
	_B(P_CMD_PORT, 4*2, index, stage); \
	_B(scene, port, 0x00, 0)
#define pPortMid(index, stage, scene, port) \
	_B(P_CMD_PORT, 4*2, index, stage); \
	_B(scene, port, 0x80, 0)
#define pBGPort(index, stage, scene, port) \
	_B(P_CMD_BGPORT, 4*2, index, stage); \
	_B(scene, port, 0x00, 0)
#define pBGPortMid(index, stage, scene, port) \
	_B(P_CMD_BGPORT, 4*2, index, stage); \
	_B(scene, port, 0x80, 0)
#define pConnect(index, scene, offx, offy, offz) \
	_B(P_CMD_CONNECT, 4*3, index, scene); \
	_H(offx, offy); \
	_H(offz, 0)
#define pSceneOpen(scene) \
	_B(P_CMD_SCENE_OPEN, 4*1, scene, 0)
#define pSceneClose(scene) \
	_B(P_CMD_SCENE_CLOSE, 4*1, scene, 0)
#define pPlayerOpen(scene, angy, posx, posy, posz) \
	_B(P_CMD_PLAYER_OPEN, 4*3, scene, 0); \
	_H(angy, posx); \
	_H(posy, posz)
#define pPlayerClose() \
	_C(P_CMD_PLAYER_CLOSE, 4*1, 0)
#define pSceneProc() \
	_C(P_CMD_SCENE_PROC, 4*2, 0)
#define pMap(map) \
	_C(P_CMD_MAP, 4*2, 0); \
	_P(map)
#define pArea(area) \
	_C(P_CMD_AREA, 4*2, 0); \
	_P(area)
#define pMsg(type, msg) \
	_B(P_CMD_MSG, 4*1, type, msg)
#define pEnv(env) \
	_C(P_CMD_ENV, 4*1, env)
/* 50 */
#define pWipe(type, time, r, g, b) \
	_B(P_CMD_WIPE, 4*2, type, time); \
	_B(r, g, b, 0)
#define pViBlack(arg) \
	_B(P_CMD_VI_BLACK, 4*1, arg, 0)
#define pViGamma(arg) \
	_B(P_CMD_VI_GAMMA, 4*1, arg, 0)
#define pBgm(mode, bgm) \
	_C(P_CMD_BGM, 4*2, mode); \
	_H(bgm, 0)
#define pBgmPlay(bgm) \
	_C(P_CMD_BGM_PLAY, 4*1, bgm)
#define pAudFadeout(fadeout) \
	_C(P_CMD_AUD_FADEOUT, 4*1, fadeout)
#define pTag(tag) \
	_C(P_CMD_TAG, 4*2, 0); \
	_P(tag)
#define p58(a, b, c, d, e) \
	_C(P_CMD_58, 4*3, a); \
	_H(b, c); \
	_H(d, e)
#define pJet(index, mode, posx, posy, posz, arg) \
	_B(P_CMD_JET, 4*3, index, mode); \
	_H(posx, posy); \
	_H(posz, arg)
#define pStore(var) \
	_B(P_CMD_VAR, 4*1, 0, P_VAR_##var)
#define pLoad(var) \
	_B(P_CMD_VAR, 4*1, 1, P_VAR_##var)

#endif /* __SM64_PRGLANG_H__ */
