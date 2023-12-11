#include <asm.h>
#include <regdef.h>

LEAF(sqrtf)
	sqrt.s  $f0, $f12
	j       ra
END(sqrtf)
