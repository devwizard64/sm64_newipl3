#include <ultra64.h>
#include "osint.h"

OSTime osGetTime(void)
{
	u32 CurrentCount;
	u32 elapseCount;
	OSTime tmptime;
	register u32 savedMask;
	savedMask = __osDisableInt();
	CurrentCount = osGetCount();
	elapseCount = CurrentCount - __osBaseCounter;
	tmptime = __osCurrentTime;
	__osRestoreInt(savedMask);
	return tmptime + elapseCount;
}
