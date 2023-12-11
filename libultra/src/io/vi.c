#include <ultra64.h>
#ifdef sgi
#include <bstring.h>
#else
#include <string.h>
#endif
#include "viint.h"

static __OSViContext vi[2] = {0};
__OSViContext *__osViCurr = &vi[0];
__OSViContext *__osViNext = &vi[1];
u32 osViNtscEnabled = TRUE;
u32 osViClock = VI_NTSC_CLOCK;

void __osViInit(void)
{
#if REVISION > 199606
	osViNtscEnabled = osTvType;
#endif
	bzero(&vi, sizeof(vi));
	__osViCurr = &vi[0];
	__osViNext = &vi[1];
	__osViNext->retraceCount = 1;
	__osViCurr->retraceCount = 1;
#if REVISION > 199606
	if (osViNtscEnabled == OS_TV_NTSC)
#else
	if (osViNtscEnabled)
#endif
	{
		__osViNext->modep = &osViModeNtscLan1;
		osViClock = VI_NTSC_CLOCK;
	}
	else
	{
		__osViNext->modep = &osViModePalLan1;
#if REVISION > 199606
		osViClock = VI_MPAL_CLOCK;
#else
		osViClock = VI_PAL_CLOCK;
#endif
	}
	__osViNext->state = VI_STATE_BLACK;
	__osViNext->control = __osViNext->modep->comRegs.ctrl;
#if REVISION > 199606
	while (IO_READ(VI_CURRENT_REG) > 10);
	IO_WRITE(VI_CONTROL_REG, 0);
#endif
	__osViSwapContext();
}
