#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

LEAF(osMapTLB)
.set noreorder
	mfc0    t0, C0_ENTRYHI
	mtc0    a0, C0_INX
	mtc0    a1, C0_PAGEMASK
	lw      t1, 20(sp)
	beq     t1, -1, 7f
	li      t4, TLBLO_G
	li      t2, TLBLO_NONCOHRNT|TLBLO_D|TLBLO_V
	b       8f
	or      a2, t1
7:
	li      t2, TLBLO_NONCOHRNT|TLBLO_D|TLBLO_V|TLBLO_G
8:
	mtc0    a2, C0_ENTRYHI
	beq     a3, -1, 9f
	nop
	srl     t3, a3, 12-TLBLO_PFNSHIFT
	or      t3, t2
	mtc0    t3, C0_ENTRYLO0
	b       10f
	nop
9:
	mtc0    t4, C0_ENTRYLO0
10:
	lw      t3, 16(sp)
	beq     t3, -1, 11f
	nop
	srl     t3, 6
	or      t3, t2
	mtc0    t3, C0_ENTRYLO1
	b       12f
	nop
11:
	mtc0    t4, C0_ENTRYLO1
	bne     a3, -1, 12f
	nop
	li      t3, K0BASE
	mtc0    t3, C0_ENTRYHI
12:
	nop
	tlbwi
	nop
	nop
	nop
	nop
	mtc0    t0, C0_ENTRYHI
	j       ra
	nop
END(osMapTLB)
