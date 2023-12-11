#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(osUnmapTLBAll)
	mfc0    t0, C0_ENTRYHI
	li      t1, NTLBENTRIES
	li      t2, K0BASE
	mtc0    t2, C0_ENTRYHI
	mtc0    zero, C0_ENTRYLO0
	mtc0    zero, C0_ENTRYLO1
1:
	mtc0    t1, C0_INX
	nop
	tlbwi
	nop
	nop
	sub     t1, 1
	bnezl   t1, 1b
	nop
	mtc0    t0, C0_ENTRYHI
	j       ra
	nop
END(osUnmapTLBAll)
