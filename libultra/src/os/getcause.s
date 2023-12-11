#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osGetCause)
	mfc0    v0, C0_CAUSE
	j       ra
	nop
END(__osGetCause)
