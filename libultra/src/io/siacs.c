#include <ultra64.h>

static OSMesg siAccessBuf[1];
int __osSiAccessQueueEnabled = 0;
OSMesgQueue __osSiAccessQueue;

void __osSiCreateAccessQueue(void)
{
	__osSiAccessQueueEnabled = 1;
	osCreateMesgQueue(&__osSiAccessQueue, siAccessBuf, 1);
	osSendMesg(&__osSiAccessQueue, (OSMesg)0, OS_MESG_NOBLOCK);
}

void __osSiGetAccess(void)
{
	OSMesg dummyMesg;
	if (!__osSiAccessQueueEnabled) __osSiCreateAccessQueue();
	osRecvMesg(&__osSiAccessQueue, &dummyMesg, OS_MESG_BLOCK);
}

void __osSiRelAccess(void)
{
	osSendMesg(&__osSiAccessQueue, (OSMesg)0, OS_MESG_NOBLOCK);
}
