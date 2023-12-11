#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(osGetCount)
	mfc0    v0, C0_COUNT
	j       ra
	nop
END(osGetCount)
