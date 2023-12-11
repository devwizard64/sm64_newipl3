#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

LEAF(osWritebackDCacheAll)
	li      t0, K0BASE
	li      t2, DCACHE_SIZE
	addu    t1, t0, t2
	subu    t1, DCACHE_LINESIZE
1:
.set noreorder
	cache   CACH_PD|C_IWBINV, (t0)
	bltu    t0, t1, 1b
	addu    t0, DCACHE_LINESIZE
.set reorder
	j       ra
END(osWritebackDCacheAll)
