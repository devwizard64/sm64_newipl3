#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>
#include <PR/rcp.h>
#include <PR/os.h>

.rdata

.globl __osRcpImTable
__osRcpImTable:
	.half 0x555, 0x556, 0x559, 0x55A, 0x565, 0x566, 0x569, 0x56A
	.half 0x595, 0x596, 0x599, 0x59A, 0x5A5, 0x5A6, 0x5A9, 0x5AA
	.half 0x655, 0x656, 0x659, 0x65A, 0x665, 0x666, 0x669, 0x66A
	.half 0x695, 0x696, 0x699, 0x69A, 0x6A5, 0x6A6, 0x6A9, 0x6AA
	.half 0x955, 0x956, 0x959, 0x95A, 0x965, 0x966, 0x969, 0x96A
	.half 0x995, 0x996, 0x999, 0x99A, 0x9A5, 0x9A6, 0x9A9, 0x9AA
	.half 0xA55, 0xA56, 0xA59, 0xA5A, 0xA65, 0xA66, 0xA69, 0xA6A
	.half 0xA95, 0xA96, 0xA99, 0xA9A, 0xAA5, 0xAA6, 0xAA9, 0xAAA

.text

.set noreorder

LEAF(osSetIntMask)
	mfc0    t1, C0_SR
	and     v0, t1, SR_IMASK|SR_IE
	lw      t2, PHYS_TO_K1(MI_INTR_MASK_REG)
	sll     t2, RCP_IMASKSHIFT
	or      v0, t2
	and     t0, a0, RCP_IMASK
	srl     t0, RCP_IMASKSHIFT-1
	lhu     t2, __osRcpImTable(t0)
	sw      t2, PHYS_TO_K1(MI_INTR_MASK_REG)
	and     t0, a0, SR_IMASK|SR_IE
	and     t1, ~SR_IMASK
	or      t1, t0
	mtc0    t1, C0_SR
	nop
	nop
	j       ra
	nop
END(osSetIntMask)