#include <ultra64.h>
#include "osint.h"

void osCreateThread(
	OSThread *t, OSId id, void (*entry)(void *), void *arg, void *sp, OSPri p
)
{
	register u32 saveMask;
	OSIntMask mask;
	t->id = id;
	t->priority = p;
	t->next = NULL;
	t->queue = NULL;
	t->context.pc = (u32)(long)entry;
	t->context.a0 = (u64)(long)arg;
	t->context.sp = (u64)(long)sp - 16;
	t->context.ra = (u64)(long)__osCleanupThread;
	mask = OS_IM_ALL;
	t->context.sr = (mask & OS_IM_CPU) | SR_EXL;
	t->context.rcp = (mask & RCP_IMASK) >> RCP_IMASKSHIFT;
	t->context.fpcsr = FPCSR_FS|FPCSR_EV;
	t->fp = 0;
	t->state = OS_STATE_STOPPED;
	t->flags = 0;
	saveMask = __osDisableInt();
	t->tlnext = __osActiveQueue;
	__osActiveQueue = t;
	__osRestoreInt(saveMask);
}
