#include <ultra64.h>
#include "osint.h"
#include "viint.h"

void osViSwapBuffer(void *frameBufPtr)
{
	u32 saveMask;
	saveMask = __osDisableInt();
	__osViNext->framep = frameBufPtr;
	__osViNext->state |= VI_STATE_FRAME;
	__osRestoreInt(saveMask);
}
