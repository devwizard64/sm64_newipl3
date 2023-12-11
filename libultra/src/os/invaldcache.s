#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

LEAF(osInvalDCache)
	blez    a1, 3f
	li      t3, DCACHE_SIZE
	bgeu    a1, t3, 4f
	move    t0, a0
	addu    t1, a0, a1
	bgeu    t0, t1, 3f
	subu    t1, DCACHE_LINESIZE
	and     t2, t0, DCACHE_LINEMASK
	beqz    t2, 1f
	subu    t0, t2
.set noreorder
	cache   CACH_PD|C_HWBINV, (t0)
.set reorder
	bgeu    t0, t1, 3f
	addu    t0, DCACHE_LINESIZE
1:
	and     t2, t1, DCACHE_LINEMASK
	beqz    t2, 2f
	subu    t1, t2
.set noreorder
	cache   CACH_PD|C_HWBINV, DCACHE_LINESIZE(t1)
.set reorder
	bgtu    t0, t1, 3f
2:
.set noreorder
	cache   CACH_PD|C_HINV, (t0)
	bltu    t0, t1, 2b
	addu    t0, DCACHE_LINESIZE
.set reorder
3:
	j       ra
4:
	li      t0, K0BASE
	addu    t1, t0, t3
	subu    t1, DCACHE_LINESIZE
5:
.set noreorder
	cache   CACH_PD|C_IWBINV, (t0)
	bltu    t0, t1, 5b
	addu    t0, DCACHE_LINESIZE
.set reorder
	j       ra
END(osInvalDCache)
