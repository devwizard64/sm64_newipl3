#include <ultra64.h>

static OSMesg piAccessBuf[1];
int __osPiAccessQueueEnabled = 0;
OSMesgQueue __osPiAccessQueue;

void __osPiCreateAccessQueue(void)
{
	__osPiAccessQueueEnabled = 1;
	osCreateMesgQueue(&__osPiAccessQueue, piAccessBuf, 1);
	osSendMesg(&__osPiAccessQueue, (OSMesg)0, OS_MESG_NOBLOCK);
}

void __osPiGetAccess(void)
{
	OSMesg dummyMesg;
	if (!__osPiAccessQueueEnabled) __osPiCreateAccessQueue();
	osRecvMesg(&__osPiAccessQueue, &dummyMesg, OS_MESG_BLOCK);
}

void __osPiRelAccess(void)
{
	osSendMesg(&__osPiAccessQueue, (OSMesg)0, OS_MESG_NOBLOCK);
}
