#include <ultra64.h>
#include "osint.h"

s32 osJamMesg(OSMesgQueue *mq, OSMesg msg, s32 flags)
{
	register u32 saveMask;
	saveMask = __osDisableInt();
	while (MQ_IS_FULL(mq))
	{
		if (flags == OS_MESG_BLOCK)
		{
			__osRunningThread->state = OS_STATE_WAITING;
			__osEnqueueAndYield(&mq->fullqueue);
		}
		else
		{
			__osRestoreInt(saveMask);
			return -1;
		}
	}
	mq->first = (mq->first + mq->msgCount - 1) % mq->msgCount;
	mq->msg[mq->first] = msg;
	mq->validCount++;
	if (mq->mtqueue->next) osStartThread(__osPopThread(&mq->mtqueue));
	__osRestoreInt(saveMask);
	return 0;
}
