#include <ultra64.h>
#ifdef sgi
#include <bstring.h>
#else
#include <string.h>
#endif
#include "osint.h"

static OSTask tmp_task;

static OSTask *_VirtualToPhysicalTask(OSTask *intp)
{
	OSTask *tp = &tmp_task;
	bcopy(intp, tp, sizeof(OSTask));
	if (tp->t.ucode) tp->t.ucode = (u64 *)osVirtualToPhysical(tp->t.ucode);
	if (tp->t.ucode_data) tp->t.ucode_data =
		(u64 *)osVirtualToPhysical(tp->t.ucode_data);
	if (tp->t.dram_stack) tp->t.dram_stack =
		(u64 *)osVirtualToPhysical(tp->t.dram_stack);
	if (tp->t.output_buff) tp->t.output_buff =
		(u64 *)osVirtualToPhysical(tp->t.output_buff);
	if (tp->t.output_buff_size) tp->t.output_buff_size =
		(u64 *)osVirtualToPhysical(tp->t.output_buff_size);
	if (tp->t.data_ptr) tp->t.data_ptr =
		(u64 *)osVirtualToPhysical(tp->t.data_ptr);
	if (tp->t.yield_data_ptr) tp->t.yield_data_ptr =
		(u64 *)osVirtualToPhysical(tp->t.yield_data_ptr);
	return tp;
}

void osSpTaskLoad(OSTask *intp)
{
	OSTask *tp;
	tp = _VirtualToPhysicalTask(intp);
	if (tp->t.flags & OS_TASK_YIELDED)
	{
		tp->t.ucode_data = tp->t.yield_data_ptr;
		tp->t.ucode_data_size = tp->t.yield_data_size;
		intp->t.flags &= ~OS_TASK_YIELDED;
	}
	osWritebackDCache(tp, sizeof(OSTask));
	__osSpSetStatus(
		SP_CLR_TASKDONE|SP_CLR_YIELDED|SP_CLR_YIELD|SP_SET_INTR_BREAK
	);
	while (__osSpSetPc(SP_IMEM_START) == -1);
	while (__osSpRawStartDma(
		OS_WRITE, SP_DMEM_END+1-sizeof(OSTask), tp, sizeof(OSTask)
	) == -1);
	while (__osSpDeviceBusy());
	while (__osSpRawStartDma(
		OS_WRITE, SP_IMEM_START, tp->t.ucode_boot, tp->t.ucode_boot_size
	) == -1);
}

void osSpTaskStartGo(OSTask *tp)
{
	(void)tp;
	while (__osSpDeviceBusy());
	__osSpSetStatus(SP_SET_INTR_BREAK|SP_CLR_SSTEP|SP_CLR_BROKE|SP_CLR_HALT);
}
