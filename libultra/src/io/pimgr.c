#include <ultra64.h>
#include "osint.h"

static OSThread piThread;
static u64 piThreadStack[OS_PIM_STACKSIZE/8];
static OSMesgQueue piEventQueue;
static OSMesg piEventBuf[1];

OSDevMgr __osPiDevMgr = {0};

extern OSMesgQueue __osPiAccessQueue;
extern int __osPiAccessQueueEnabled;
extern void __osPiCreateAccessQueue(void);

void osCreatePiManager(
	OSPri pri, OSMesgQueue *cmdQ, OSMesg *cmdBuf, s32 cmdMsgCnt
)
{
	u32 savedMask;
	OSPri oldPri, myPri;
	if (__osPiDevMgr.active) return;
	osCreateMesgQueue(cmdQ, cmdBuf, cmdMsgCnt);
	osCreateMesgQueue(&piEventQueue, piEventBuf, 1);
	if (!__osPiAccessQueueEnabled) __osPiCreateAccessQueue();
	osSetEventMesg(OS_EVENT_PI, &piEventQueue, (OSMesg)0x22222222);
	oldPri = -1;
	myPri = osGetThreadPri(NULL);
	if (myPri < pri)
	{
		oldPri = myPri;
		osSetThreadPri(NULL, pri);
	}
	savedMask = __osDisableInt();
	__osPiDevMgr.active = 1;
	__osPiDevMgr.thread = &piThread;
	__osPiDevMgr.cmdQueue = cmdQ;
	__osPiDevMgr.evtQueue = &piEventQueue;
	__osPiDevMgr.acsQueue = &__osPiAccessQueue;
	__osPiDevMgr.dma = osPiRawStartDma;
	osCreateThread(
		&piThread, 0, __osDevMgrMain, &__osPiDevMgr,
		piThreadStack+OS_PIM_STACKSIZE/8, pri
	);
	osStartThread(&piThread);
	__osRestoreInt(savedMask);
	if (oldPri != -1) osSetThreadPri(NULL, oldPri);
}
