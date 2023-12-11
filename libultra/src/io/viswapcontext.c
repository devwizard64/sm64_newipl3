#include <ultra64.h>
#include "viint.h"

void __osViSwapContext(void)
{
	register OSViMode *vm;
	register __OSViContext *vc;
	u32 origin;
	u32 hStart;
	u32 nomValue;
	u32 field = 0;
	vc = __osViNext;
	vm = vc->modep;
	field = IO_READ(VI_CURRENT_REG) & 1;
	origin = osVirtualToPhysical(vc->framep) + vm->fldRegs[field].origin;
	if (vc->state & VI_STATE_X_SCALE)
	{
		vc->x.scale |= vm->comRegs.xScale & ~0xFFF;
	}
	else
	{
		vc->x.scale = vm->comRegs.xScale;
	}
	if (vc->state & VI_STATE_Y_SCALE)
	{
		nomValue = vm->fldRegs[field].yScale & 0xFFF;
		vc->y.scale = (float)vc->y.factor * nomValue;
		vc->y.scale |= vm->fldRegs[field].yScale & ~0xFFF;
	}
	else
	{
		vc->y.scale = vm->fldRegs[field].yScale;
	}
	hStart = vm->comRegs.hStart;
	if (vc->state & VI_STATE_BLACK) hStart = 0;
	if (vc->state & VI_STATE_REPEAT_LINE)
	{
		vc->y.scale = 0;
		origin = osVirtualToPhysical(vc->framep);
	}
	if (vc->state & VI_STATE_FADE)
	{
		vc->y.scale = vc->y.offset << 16 & (0x3FF << 16);
		origin = osVirtualToPhysical(vc->framep);
	}
	IO_WRITE(VI_ORIGIN_REG, origin);
	IO_WRITE(VI_WIDTH_REG, vm->comRegs.width);
	IO_WRITE(VI_BURST_REG, vm->comRegs.burst);
	IO_WRITE(VI_V_SYNC_REG, vm->comRegs.vSync);
	IO_WRITE(VI_H_SYNC_REG, vm->comRegs.hSync);
	IO_WRITE(VI_LEAP_REG, vm->comRegs.leap);
	IO_WRITE(VI_H_START_REG, hStart);
	IO_WRITE(VI_V_START_REG, vm->fldRegs[field].vStart);
	IO_WRITE(VI_V_BURST_REG, vm->fldRegs[field].vBurst);
	IO_WRITE(VI_V_INTR_REG, vm->fldRegs[field].vIntr);
	IO_WRITE(VI_X_SCALE_REG, vc->x.scale);
	IO_WRITE(VI_Y_SCALE_REG, vc->y.scale);
	IO_WRITE(VI_CONTROL_REG, vc->control);
	__osViNext = __osViCurr;
	__osViCurr = vc;
	*__osViNext = *__osViCurr;
}
