#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

LEAF(osWritebackDCache)
	blez    a1, 2f
	li      t3, DCACHE_SIZE
	bgeu    a1, t3, 3f
	move    t0, a0
	addu    t1, a0, a1
	bgeu    t0, t1, 2f
	subu    t1, DCACHE_LINESIZE
	and     t2, t0, DCACHE_LINEMASK
	subu    t0, t2
1:
.set noreorder
	cache   CACH_PD|C_HWB, (t0)
	bltu    t0, t1, 1b
	addu    t0, DCACHE_LINESIZE
.set reorder
2:
	j       ra
3:
	li      t0, K0BASE
	addu    t1, t0, t3
	subu    t1, DCACHE_LINESIZE
4:
.set noreorder
	cache   CACH_PD|C_IWBINV, (t0)
	bltu    t0, t1, 4b
	addu    t0, DCACHE_LINESIZE
.set reorder
	j       ra

END(osWritebackDCache)
