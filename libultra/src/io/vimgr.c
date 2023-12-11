#include <ultra64.h>
#include "osint.h"
#include "viint.h"

static OSThread viThread;
static u64 viThreadStack[OS_VIM_STACKSIZE/8];
static OSMesgQueue viEventQueue;
static OSMesg viEventBuf[5];
static OSIoMesg viRetraceMsg;
static OSIoMesg viCounterMsg;

OSDevMgr __osViDevMgr = {0};

static void viMgrMain(void *);

void osCreateViManager(OSPri pri)
{
	u32 savedMask;
	OSPri oldPri, myPri;
	if (__osViDevMgr.active) return;
	__osTimerServicesInit();
	osCreateMesgQueue(&viEventQueue, viEventBuf, 5);
	viRetraceMsg.hdr.type = OS_MESG_TYPE_VRETRACE;
	viRetraceMsg.hdr.pri = OS_MESG_PRI_NORMAL;
	viRetraceMsg.hdr.retQueue = NULL;
	viCounterMsg.hdr.type = OS_MESG_TYPE_COUNTER;
	viCounterMsg.hdr.pri = OS_MESG_PRI_NORMAL;
	viCounterMsg.hdr.retQueue = NULL;
	osSetEventMesg(OS_EVENT_VI, &viEventQueue, (OSMesg)&viRetraceMsg);
	osSetEventMesg(OS_EVENT_COUNTER, &viEventQueue, (OSMesg)&viCounterMsg);
	oldPri = -1;
	myPri = osGetThreadPri(NULL);
	if (myPri < pri)
	{
		oldPri = myPri;
		osSetThreadPri(NULL, pri);
	}
	savedMask = __osDisableInt();
	__osViDevMgr.active = 1;
	__osViDevMgr.thread = &viThread;
	__osViDevMgr.cmdQueue = &viEventQueue;
	__osViDevMgr.evtQueue = &viEventQueue;
	__osViDevMgr.acsQueue = NULL;
	__osViDevMgr.dma = NULL;
	osCreateThread(
		&viThread, 0, viMgrMain, &__osViDevMgr,
		viThreadStack+OS_VIM_STACKSIZE/8, pri
	);
	__osViInit();
	osStartThread(&viThread);
	__osRestoreInt(savedMask);
	if (oldPri != -1) osSetThreadPri(NULL, oldPri);
}

static void viMgrMain(void *arg)
{
	__OSViContext *vc;
	OSDevMgr *dm;
	OSIoMesg *mb = NULL;
	static u16 retrace;
	s32 first = 0;
	u32 Count;
	vc = __osViGetCurrentContext();
	retrace = vc->retraceCount;
	if (retrace == 0) retrace = 1;
	dm = arg;
	for (;;)
	{
		osRecvMesg(dm->evtQueue, (OSMesg *)&mb, OS_MESG_BLOCK);
		switch (mb->hdr.type)
		{
		case OS_MESG_TYPE_VRETRACE:
			__osViSwapContext();
			retrace--;
			if (retrace == 0)
			{
				vc = __osViGetCurrentContext();
				if (vc->msgq) osSendMesg(vc->msgq, vc->msg, OS_MESG_NOBLOCK);
				retrace = vc->retraceCount;
			}
			__osViIntrCount++;
			if (first)
			{
				Count = osGetCount();
				__osCurrentTime = (OSTime)Count;
				first = 0;
			}
			Count = __osBaseCounter;
			__osBaseCounter = osGetCount();
			Count = __osBaseCounter - Count;
			__osCurrentTime = __osCurrentTime + (OSTime)Count;
			break;
		case OS_MESG_TYPE_COUNTER:
			__osTimerInterrupt();
			break;
		default:
			break;
		}
	}
}
