#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osGetSR)
	mfc0    v0, C0_SR
	j       ra
	nop
END(__osGetSR)
