#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osDisableInt)
	mfc0    t0, C0_SR
	and     t1, t0, ~SR_IE
	mtc0    t1, C0_SR
	and     v0, t0, SR_IE
	nop
	j       ra
	nop
END(__osDisableInt)

LEAF(__osRestoreInt)
	mfc0    t0, C0_SR
	or      t0, a0
	mtc0    t0, C0_SR
	nop
	nop
	j       ra
	nop
END(__osRestoreInt)
