#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osProbeTLB)
	mfc0    t0, C0_ENTRYHI
	and     t1, t0, TLBHI_PIDMASK
	and     t2, a0, TLBHI_VPN2MASK
	or      t1, t2
	mtc0    t1, C0_ENTRYHI
	nop
	nop
	nop
	tlbp
	nop
	nop
	mfc0    t3, C0_INX
	and     t3, TLBINX_PROBE
	bnez    t3, 3f
	nop
	tlbr
	nop
	nop
	nop
	mfc0    t3, C0_PAGEMASK
	add     t3, 0x2000
	srl     t3, 1
	and     t4, t3, a0
	bnez    t4, 1f
	sub     t3, 1
	mfc0    v0, C0_ENTRYLO0
	b       2f
	nop
1:
	mfc0    v0, C0_ENTRYLO1
2:
	and     t5, v0, TLBLO_V
	beqz    t5, 3f
	nop
	and     v0, TLBLO_PFNMASK
	sll     v0, TLBLO_PFNSHIFT
	and     t5, a0, t3
	add     v0, t5
	b       4f
	nop
3:
	li      v0, -1
4:
	mtc0    t0, C0_ENTRYHI
	j       ra
	nop
END(__osProbeTLB)
