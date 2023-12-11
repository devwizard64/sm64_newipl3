#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osSetSR)
	mtc0    a0, C0_SR
	nop
	j       ra
	nop
END(__osSetSR)
