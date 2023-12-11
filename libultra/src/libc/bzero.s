#include <asm.h>
#include <regdef.h>

.weakext bzero, _bzero
.weakext blkclr, _blkclr

LEAF(_bzero)
XLEAF(_blkclr)
	subu    v1, zero, a0
	blt     a1, 12, bytezero
	and     v1, 3
	subu    a1, v1
	beqz    v1, blkzero
	swl     zero, (a0)
	addu    a0, v1

blkzero:
	and     a3, a1, ~31
	subu    a1, a3
	beqz    a3, wordzero
	addu    a3, a0
1:
	sw      zero, 0(a0)
	sw      zero, 4(a0)
	sw      zero, 8(a0)
	sw      zero, 12(a0)
	sw      zero, 16(a0)
	sw      zero, 20(a0)
	sw      zero, 24(a0)
	sw      zero, 28(a0)
	addu    a0, 32
	bne     a0, a3, 1b

wordzero:
	and     a3, a1, ~3
	subu    a1, a3
	beqz    a3, bytezero
	addu    a3, a0
1:
	sw      zero, (a0)
	addu    a0, 4
	bne     a0, a3, 1b

bytezero:
	blez    a1, zerodone
	addu    a1, a0
1:
	sb      zero, (a0)
	addu    a0, 1
	bne     a0, a1, 1b

zerodone:
	j       ra
END(_bzero)
