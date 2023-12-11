#include <ultra64.h>
#include "osint.h"

void osSetThreadPri(OSThread *t, OSPri p)
{
	register u32 saveMask;
	saveMask = __osDisableInt();
	if (!t) t = __osRunningThread;
	if (t->priority != p)
	{
		t->priority = p;
		if (t != __osRunningThread && t->state != OS_STATE_STOPPED)
		{
			__osDequeueThread(t->queue, t);
			__osEnqueueThread(t->queue, t);
		}
		if (__osRunningThread->priority < __osRunQueue->priority)
		{
			__osRunningThread->state = OS_STATE_RUNNABLE;
			__osEnqueueAndYield(&__osRunQueue);
		}
	}
	__osRestoreInt(saveMask);
}
