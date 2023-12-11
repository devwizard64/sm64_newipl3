#include <asm.h>
#include <regdef.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osSetCompare)
	mtc0    a0, C0_COMPARE
	j       ra
	nop
END(__osSetCompare)
