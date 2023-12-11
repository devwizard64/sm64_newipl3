#include <ultra64.h>
#include "osint.h"

OSPri osGetThreadPri(OSThread *t)
{
	if (!t) t = __osRunningThread;
	return t->priority;
}
