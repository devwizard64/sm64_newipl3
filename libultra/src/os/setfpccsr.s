#include <asm.h>
#include <regdef.h>
#include <sys/fpu.h>
#include <PR/R4300.h>

.set noreorder

LEAF(__osSetFpcCsr)
	cfc1    v0, fpc_csr
	ctc1    a0, fpc_csr
	j       ra
	nop
END(__osSetFpcCsr)
