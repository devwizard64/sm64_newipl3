#include <ultra64.h>
#include "osint.h"
#include "viint.h"

void osViBlack(u8 active)
{
	register u32 saveMask;
	saveMask = __osDisableInt();
	if (active) __osViNext->state |= VI_STATE_BLACK;
	else        __osViNext->state &= ~VI_STATE_BLACK;
	__osRestoreInt(saveMask);
}
