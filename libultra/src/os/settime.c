#include <ultra64.h>
#include "osint.h"

void osSetTime(OSTime ticks)
{
	__osCurrentTime = ticks;
}
