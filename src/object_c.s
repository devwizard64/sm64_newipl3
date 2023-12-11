.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

object_c_802F9730:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 10$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       12$
	nop
10$:
	jr      $ra
	move    $v0, $0
12$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802F9770:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00B8($t6)
	jal     ATAN2
	lwc1    $f14, 0x00B0($t6)
	subu    $v0, $0, $v0
	sll     $t7, $v0, 16
	move    $v0, $t7
	sra     $t8, $v0, 16
	b       15$
	move    $v0, $t8
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802F97BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $a0, 0x0002
	li      $a1, 0x0011
	li      $a2, 0x00A3
	jal     objlib_802A4BE4
	lh      $a3, 0x0022($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0002
	bne     $t6, $at, 17$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	jal     objlib_802A5498
	nop
17$:
	b       21$
	lw      $v0, 0x001C($sp)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802F9820:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f8, 0x0164($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f4, $f12
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f4, 0x016C($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f18, $f16, $f12
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802F9890:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	lw      $a0, 0x00C8($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t6)
	lh      $t7, 0x001E($sp)
	slt     $at, $v0, $t7
	beqz    $at, 21$
	nop
	b       25$
	li      $v0, 0x0001
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802F9904:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	beqz    $a1, 12$
	nop
	li      $at, 0x0001
	beq     $a1, $at, 29$
	nop
	li      $at, 0x0002
	beq     $a1, $at, 52$
	nop
	b       69$
	nop
12$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80361468)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, %lo(object_c_80361468)($at)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_8036146C)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, %lo(object_c_8036146C)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80361470)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, %lo(object_c_80361470)($at)
	b       69$
	nop
29$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80361468)
	lwc1    $f16, %lo(object_c_80361468)($at)
	lwc1    $f10, 0x00A0($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00AC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_8036146C)
	lwc1    $f6, %lo(object_c_8036146C)($at)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80361470)
	lwc1    $f16, %lo(object_c_80361470)($at)
	lwc1    $f10, 0x00A8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t1)
	b       69$
	nop
52$:
	lui     $at, %hi(object_c_80361468)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, %lo(object_c_80361468)($at)
	swc1    $f4, 0x00A0($t2)
	lui     $at, %hi(object_c_8036146C)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, %lo(object_c_8036146C)($at)
	swc1    $f6, 0x00A4($t3)
	lui     $at, %hi(object_c_80361470)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_c_80361470)($at)
	swc1    $f8, 0x00A8($t4)
	b       69$
	nop
69$:
	b       71$
	nop
71$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_802F9A28:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	sdc1    $f20, 0x0020($sp)
	lw      $t6, 0x0060($sp)
	beqz    $t6, 18$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	andi    $t1, $t0, 0x0080
	beqz    $t1, 249$
	nop
18$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	sw      $t3, 0x0058($sp)
	lw      $t4, 0x0058($sp)
	sw      $t4, 0x0054($sp)
	lw      $t5, 0x0060($sp)
	beqz    $t5, 36$
	nop
	lw      $t6, 0x0060($sp)
	li      $at, 0x43960000
	mtc1    $at, $f8
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	b       45$
	swc1    $f10, 0x0048($sp)
36$:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0104($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00B8($t8)
	swc1    $f16, 0x0048($sp)
45$:
	lw      $t9, 0x0054($sp)
	sw      $t9, 0x0050($sp)
	lw      $t0, 0x0054($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	li      $at, -0x0001
	lh      $t3, 0x0000($t2)
	bne     $t3, $at, 77$
	nop
	lw      $t4, 0x0060($sp)
	bnez    $t4, 62$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0104($t6)
62$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	andi    $t1, $t0, 0x0100
	beqz    $t1, 75$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	b       77$
	sw      $t3, 0x0054($sp)
75$:
	b       251$
	nop
77$:
	lw      $t4, 0x0054($sp)
	lwc1    $f6, 0x0064($sp)
	lh      $t5, 0x0002($t4)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($sp)
	lw      $t6, 0x0054($sp)
	lwc1    $f18, 0x0068($sp)
	lh      $t7, 0x0004($t6)
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0040($sp)
	lw      $t8, 0x0054($sp)
	lwc1    $f10, 0x006C($sp)
	lh      $t9, 0x0006($t8)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f16, 0x003C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	add.s   $f10, $f4, $f8
	mul.s   $f18, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f10, $f18
	swc1    $f0, 0x0038($sp)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f4, 0x0038($sp)
	sub.s   $f8, $f6, $f4
	swc1    $f8, 0x0048($sp)
	lwc1    $f16, 0x0064($sp)
	lwc1    $f10, 0x0044($sp)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0064($sp)
	lwc1    $f6, 0x0068($sp)
	lwc1    $f4, 0x0040($sp)
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0068($sp)
	lwc1    $f16, 0x006C($sp)
	lwc1    $f10, 0x003C($sp)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x006C($sp)
	lwc1    $f6, 0x0048($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f4, $f6
	nop
	bc1t    45$
	nop
	lwc1    $f8, 0x0048($sp)
	lwc1    $f16, 0x0038($sp)
	div.s   $f10, $f8, $f16
	swc1    $f10, 0x0038($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0064($sp)
	mul.s   $f4, $f18, $f6
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0064($sp)
	lwc1    $f10, 0x0040($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f8, 0x0068($sp)
	mul.s   $f6, $f10, $f18
	add.s   $f4, $f8, $f6
	swc1    $f4, 0x0068($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f8, 0x006C($sp)
	mul.s   $f18, $f16, $f10
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x006C($sp)
	lw      $t0, 0x0060($sp)
	beqz    $t0, 190$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0060($sp)
	la.u    $t5, o_13004AF4
	lw      $t2, 0x0088($t1)
	la.l    $t5, o_13004AF4
	li      $t4, 0x00E1
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t1, 0x0010($sp)
	jal     obj_make_off
	addu    $a0, $t2, $t3
	sw      $v0, 0x005C($sp)
	lw      $t6, 0x005C($sp)
	beqz    $t6, 188$
	nop
	lwc1    $f4, 0x0064($sp)
	lw      $t7, 0x005C($sp)
	swc1    $f4, 0x00A0($t7)
	lwc1    $f16, 0x0068($sp)
	lw      $t8, 0x005C($sp)
	swc1    $f16, 0x00A4($t8)
	lwc1    $f10, 0x006C($sp)
	lw      $t9, 0x005C($sp)
	swc1    $f10, 0x00A8($t9)
188$:
	b       249$
	nop
190$:
	lw      $t0, 0x0050($sp)
	lw      $t2, 0x0058($sp)
	beq     $t0, $t2, 208$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0104($t3)
	bnez    $t1, 204$
	nop
	lw      $t4, 0x0058($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t5, 0x0000($t4)
	sw      $t5, 0x0104($t6)
204$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0050($sp)
	sw      $t7, 0x0100($t8)
208$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x0064($sp)
	swc1    $f8, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0068($sp)
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x006C($sp)
	swc1    $f6, 0x00A8($t2)
	jal     object_c_802F9904
	li      $a0, 0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00B4($t3)
	lwc1    $f10, 0x00AC($t3)
	mul.s   $f16, $f4, $f4
	nop
	mul.s   $f8, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f16, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	lwc1    $f14, 0x00B0($t1)
	jal     ATAN2
	neg.s   $f14, $f14
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0108($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00B4($t5)
	jal     ATAN2
	lwc1    $f14, 0x00AC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x010C($t6)
249$:
	b       251$
	nop
251$:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0020($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_c_802F9E28:
	addiu   $sp, $sp, -0x0028
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    200$
	nop
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x001C($sp)
	swc1    $f8, 0x0020($sp)
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0080
	beqz    $t9, 24$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	b       52$
	swc1    $f10, 0x0020($sp)
24$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	bgez    $t1, 32$
	nop
	neg.s   $f16, $f12
	b       38$
	swc1    $f16, 0x001C($sp)
32$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	blez    $t3, 38$
	nop
	swc1    $f12, 0x001C($sp)
38$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	bgez    $t5, 46$
	nop
	neg.s   $f18, $f14
	b       52$
	swc1    $f18, 0x0024($sp)
46$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	blez    $t7, 52$
	nop
	swc1    $f14, 0x0024($sp)
52$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00D2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00D2($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0014($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0014($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	swc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f6, 0x0014($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00DA($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_cos)($at)
	swc1    $f18, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00DA($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	swc1    $f16, 0x0014($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0014($sp)
	mul.s   $f8, $f6, $f4
	nop
	mul.s   $f16, $f10, $f18
	add.s   $f6, $f8, $f16
	swc1    $f6, 0x0004($sp)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f18, $f4, $f10
	nop
	mul.s   $f6, $f8, $f16
	sub.s   $f4, $f18, $f6
	swc1    $f4, 0x000C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00D6($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	swc1    $f10, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00D6($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	swc1    $f8, 0x0014($sp)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f10, 0x0014($sp)
	mul.s   $f6, $f16, $f18
	nop
	mul.s   $f8, $f4, $f10
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0010($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0014($sp)
	mul.s   $f10, $f18, $f4
	nop
	mul.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0014($sp)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f18, 0x0014($sp)
	mul.s   $f16, $f6, $f10
	nop
	mul.s   $f4, $f8, $f18
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0000($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	lwc1    $f10, 0x0164($t2)
	sub.s   $f18, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x000C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x00DC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0000($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f18, 0x016C($t4)
	add.s   $f4, $f18, $f16
	sub.s   $f10, $f4, $f6
	swc1    $f10, 0x00A8($t4)
200$:
	b       202$
	nop
202$:
	jr      $ra
	addiu   $sp, $sp, 0x0028

object_c_802FA158:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 13$
	nop
	jal     objlib_802A3268
	nop
	sh      $v0, 0x001A($sp)
13$:
	lh      $a0, 0x001A($sp)
	jal     objlib_8029E5EC
	lh      $a1, 0x001E($sp)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	b       14$
	nop
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA1F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00C6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f4, $f12
	swc1    $f6, 0x00B8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00C6($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	neg.s   $f10, $f8
	mul.s   $f16, $f10, $f12
	swc1    $f16, 0x00B0($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802FA25C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	lh      $t6, 0x0000($a0)
	slt     $at, $a1, $t6
	bnez    $at, 10$
	nop
	b       18$
	sh      $a1, 0x0000($a0)
10$:
	lh      $t7, 0x0000($a0)
	slt     $at, $t7, $a2
	bnez    $at, 16$
	nop
	b       18$
	sh      $a2, 0x0000($a0)
16$:
	jr      $ra
	move    $v0, $0
18$:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

object_c_802FA2BC:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	c.le.s  $f4, $f6
	nop
	bc1f    11$
	nop
	lwc1    $f8, 0x0004($sp)
	b       22$
	swc1    $f8, 0x0000($a0)
11$:
	lwc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0008($sp)
	c.le.s  $f16, $f10
	nop
	bc1f    20$
	nop
	lwc1    $f18, 0x0008($sp)
	b       22$
	swc1    $f18, 0x0000($a0)
20$:
	b       26$
	move    $v0, $0
22$:
	b       26$
	li      $v0, 0x0001
	b       26$
	nop
26$:
	jr      $ra
	nop

object_c_802FA32C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_8029FEA4
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_8029FF04
	nop
	b       11$
	nop
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA39C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_802A0008
	lw      $a0, 0x001C($sp)
	b       12$
	nop
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA3DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 11$
	nop
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	b       15$
	li      $v0, 0x0001
11$:
	b       15$
	move    $v0, $0
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA428:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0048($t6)
	bgez    $t7, 13$
	sra     $t8, $t7, 16
	li      $at, 0xFFFF
	addu    $at, $at, $t7
	sra     $t8, $at, 16
13$:
	bgtz    $t8, 17$
	sw      $t8, 0x001C($sp)
	li      $t9, 0x0001
	sw      $t9, 0x001C($sp)
17$:
	lb      $a0, 0x0023($sp)
	jal     objlib_802A0050
	lw      $a1, 0x001C($sp)
	bnez    $v0, 27$
	nop
	lb      $a0, 0x0027($sp)
	jal     objlib_802A0050
	lw      $a1, 0x001C($sp)
	beqz    $v0, 31$
	nop
27$:
	jal     object_playsound
	lw      $a0, 0x0028($sp)
	b       35$
	li      $v0, 0x0001
31$:
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA4C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0024($sp)
	swc1    $f12, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     objlib_8029E714
	lh      $a3, 0x0026($sp)
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f10, 0x00A4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	b       28$
	lh      $v0, 0x001E($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA544:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    11$
	nop
	lwc1    $f8, 0x0008($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x0008($sp)
11$:
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0008($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f16, 0x0008($sp)
	mtc1    $0, $f4
	sub.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	c.le.s  $f4, $f18
	nop
	bc1f    29$
	nop
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0000($a0)
	b       33$
	li      $v0, 0x0001
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	jr      $ra
	nop

object_c_802FA5D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B8
	b       14$
	nop
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B0
	b       14$
	nop
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA660:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x00C4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00C6($t8)
	bne     $t9, $t0, 21$
	nop
	b       25$
	li      $v0, 0x0001
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA6D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00D2($t8)
	bne     $t9, $t0, 21$
	nop
	b       25$
	li      $v0, 0x0001
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x00D4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00D6($t8)
	bne     $t9, $t0, 21$
	nop
	b       25$
	li      $v0, 0x0001
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA7BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001A($sp)
	lh      $a2, 0x001E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x00D8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00D8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t0, 0x001A($sp)
	lh      $t9, 0x00DA($t8)
	bne     $t9, $t0, 21$
	nop
	b       25$
	li      $v0, 0x0001
21$:
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA830:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0000($t6)
	sh      $t7, 0x001C($sp)
	lh      $t9, 0x002A($sp)
	lh      $t0, 0x001C($sp)
	lwc1    $f8, 0x002C($sp)
	lw      $t8, 0x0020($sp)
	subu    $t1, $t9, $t0
	mtc1    $t1, $f4
	lh      $a2, 0x0032($sp)
	lh      $a0, 0x0000($t8)
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $a1, $f16
	jal     objlib_8029E530
	nop
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	jal     objlib_802A3674
	lh      $a0, 0x0000($t4)
	sh      $v0, 0x001E($sp)
	addiu   $a0, $sp, 0x001E
	lh      $a1, 0x0036($sp)
	jal     object_c_802FA25C
	lh      $a2, 0x003A($sp)
	lw      $t5, 0x0024($sp)
	lh      $a1, 0x002A($sp)
	lh      $a2, 0x001E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x0000($t5)
	lw      $t6, 0x0024($sp)
	sw      $v0, 0x0000($t6)
	lw      $t7, 0x0024($sp)
	lh      $t9, 0x002A($sp)
	lh      $t8, 0x0002($t7)
	xor     $v0, $t8, $t9
	b       48$
	sltiu   $v0, $v0, 0x0001
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA900:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t8, 0x0022($sp)
	lw      $t7, 0x00C8($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x0026($sp)
	addiu   $a0, $sp, 0x001E
	subu    $a1, $0, $t0
	jal     object_c_802FA25C
	move    $a2, $t0
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA7BC
	lh      $a1, 0x002A($sp)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FA964:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     randf
	nop
	lh      $t6, 0x001E($sp)
	lh      $t1, 0x001A($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	addu    $v0, $t0, $t1
	sll     $t2, $v0, 16
	move    $v0, $t2
	sra     $t3, $v0, 16
	b       25$
	move    $v0, $t3
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FA9D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     rand
	nop
	lh      $t6, 0x0022($sp)
	lh      $t8, 0x001E($sp)
	lh      $t0, 0x001A($sp)
	div     $0, $v0, $t6
	mfhi    $t7
	bnez    $t6, 15$
	nop
	break   7
15$:
	li      $at, -0x0001
	bne     $t6, $at, 21$
	li      $at, 0x80000000
	bne     $v0, $at, 21$
	nop
	break   6
21$:
	multu   $t7, $t8
	mflo    $t9
	addu    $v0, $t9, $t0
	sll     $t1, $v0, 16
	move    $v0, $t1
	sra     $t2, $v0, 16
	b       31$
	move    $v0, $t2
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAA64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     randsign
	nop
	lh      $t8, 0x001A($sp)
	sll     $t6, $v0, 16
	sra     $t7, $t6, 16
	multu   $t7, $t8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	mflo    $t9
	addu    $v0, $t9, $t1
	sll     $t2, $v0, 16
	move    $v0, $t2
	sra     $t3, $v0, 16
	b       21$
	move    $v0, $t3
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAAC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, 37$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0018($sp)
	lwc1    $f4, 0x002C($t8)
	lwc1    $f6, 0x0000($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($t8)
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(object_c_803389B0)
	lwc1    $f16, %lo(object_c_803389B0)($at)
	lwc1    $f10, 0x0000($t0)
	lui     $at, %hi(object_c_803389B4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	lwc1    $f6, %lo(object_c_803389B4)($at)
	lwc1    $f4, 0x0000($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    35$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
35$:
	b       76$
	nop
37$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x000B
	bnez    $at, 76$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0020($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 56$
	nop
	b       80$
	li      $v0, -0x0001
	b       76$
	nop
56$:
	lw      $t5, 0x0018($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0000($t5)
	c.eq.s  $f8, $f10
	nop
	bc1t    76$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x002C($t6)
	c.lt.s  $f16, $f18
	nop
	bc1f    76$
	nop
	mtc1    $0, $f4
	lw      $t7, 0x0018($sp)
	swc1    $f4, 0x0000($t7)
	b       80$
	li      $v0, 0x0001
76$:
	b       80$
	move    $v0, $0
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FAC18:
	addiu   $sp, $sp, -0x0008
	sw      $a3, 0x0014($sp)
	lw      $t6, 0x0000($a0)
	sw      $t6, 0x0004($sp)
	lwc1    $f4, 0x0000($a1)
	lw      $t7, 0x0000($a0)
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	nop
	addu    $t0, $t7, $t9
	sw      $t0, 0x0000($a0)
	lw      $t1, 0x0000($a0)
	beq     $t1, $a2, 34$
	nop
	lw      $t2, 0x0000($a0)
	lw      $t4, 0x0004($sp)
	subu    $t3, $t2, $a2
	subu    $t5, $t4, $a2
	multu   $t3, $t5
	mflo    $t6
	bgez    $t6, 42$
	nop
	lwc1    $f10, 0x0014($sp)
	lwc1    $f8, 0x0000($a1)
	neg.s   $f16, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    42$
	nop
	lwc1    $f18, 0x0000($a1)
	c.lt.s  $f18, $f10
	nop
	bc1f    42$
	nop
34$:
	sw      $a2, 0x0000($a0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($a1)
	b       69$
	li      $v0, 0x0001
	b       65$
	nop
42$:
	lw      $t8, 0x0000($a0)
	slt     $at, $t8, $a2
	bnez    $at, 49$
	nop
	lwc1    $f6, 0x0018($sp)
	neg.s   $f8, $f6
	swc1    $f8, 0x0018($sp)
49$:
	lwc1    $f16, 0x0000($a1)
	lwc1    $f18, 0x0018($sp)
	mtc1    $0, $f4
	mul.s   $f10, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    61$
	nop
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f6, $f8
	swc1    $f16, 0x0018($sp)
61$:
	lwc1    $f18, 0x0000($a1)
	lwc1    $f10, 0x0018($sp)
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x0000($a1)
65$:
	b       69$
	move    $v0, $0
	b       69$
	nop
69$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_802FAD34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	beqz    $t7, 15$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0000($t8)
	addiu   $t0, $t9, -0x0001
	b       20$
	sw      $t0, 0x0000($t8)
15$:
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA964
	lh      $a1, 0x0022($sp)
	lw      $t1, 0x0018($sp)
	sw      $v0, 0x0000($t1)
20$:
	lw      $t2, 0x0018($sp)
	lh      $t4, 0x0026($sp)
	lw      $t3, 0x0000($t2)
	slt     $at, $t4, $t3
	beqz    $at, 30$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       34$
	sw      $0, 0x00F0($t5)
30$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FADD4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0076($t6)
	beqz    $t7, 138$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0078($t8)
	sw      $t9, 0x003C($sp)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, 0x003C($sp)
	beq     $t0, $t1, 138$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x003C($sp)
	lwc1    $f6, 0x00A0($t3)
	lwc1    $f4, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0038($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x003C($sp)
	lwc1    $f16, 0x00A8($t5)
	lwc1    $f10, 0x00A8($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f12, 0x0038($sp)
	jal     ATAN2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x0032($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x01F8($t6)
	swc1    $f4, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	lwc1    $f6, 0x01F8($t7)
	swc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0028($sp)
	add.s   $f16, $f8, $f10
	div.s   $f18, $f8, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f10, $f4, $f6
	lwc1    $f8, 0x00A0($t8)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x00A8($t9)
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x001C($sp)
	lhu     $t0, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x002C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f8, 0x0020($sp)
	lui     $t3, %hi(object)
	mul.s   $f4, $f16, $f18
	lw      $t3, %lo(object)($t3)
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x00A0($t3)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x002C($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f8, 0x001C($sp)
	lui     $t7, %hi(object)
	mul.s   $f18, $f10, $f16
	lw      $t7, %lo(object)($t7)
	sub.s   $f4, $f8, $f18
	swc1    $f4, 0x00A8($t7)
	lhu     $t8, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0028($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f8, 0x0020($sp)
	lw      $t1, 0x003C($sp)
	mul.s   $f16, $f6, $f10
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x00A0($t1)
	lhu     $t2, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0028($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f16, 0x001C($sp)
	lw      $t5, 0x003C($sp)
	mul.s   $f10, $f4, $f6
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x00A8($t5)
	lw      $t6, 0x0040($sp)
	beqz    $t6, 138$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0032($sp)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t7)
	slti    $at, $v0, 0x4000
	beqz    $at, 138$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t8, 0x0032($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	lw      $t6, 0x0040($sp)
	subu    $t1, $t8, $t0
	addu    $t2, $t1, $t8
	addu    $t3, $t2, $at
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	sw      $t5, 0x0000($t6)
	b       142$
	li      $v0, 0x0001
138$:
	b       142$
	move    $v0, $0
	b       142$
	nop
142$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FB01C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 14$
	nop
	jal     objlib_802A3268
	nop
	lw      $t9, 0x0018($sp)
	b       36$
	sw      $v0, 0x0000($t9)
14$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 30$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x8000
	lw      $t8, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	addu    $t5, $t4, $at
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	b       36$
	sw      $t7, 0x0000($t8)
30$:
	jal     object_c_802FADD4
	lw      $a0, 0x0018($sp)
	bnez    $v0, 36$
	nop
	b       40$
	move    $v0, $0
36$:
	b       40$
	li      $v0, 0x0001
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB0CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     object_c_802FADD4
	move    $a0, $0
	lh      $a0, 0x001A($sp)
	jal     objlib_8029E5EC
	lh      $a1, 0x001E($sp)
	beqz    $v0, 15$
	nop
	b       19$
	move    $v0, $0
	b       17$
	nop
15$:
	b       19$
	li      $v0, 0x0001
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB128:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0184($t6)
	bgtz    $t7, 69$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01C4($t8)
	bnez    $t9, 17$
	nop
	li.u    $a0, 0x502C8081
	jal     objlib_802A37DC
	li.l    $a0, 0x502C8081
	b       30$
	nop
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01C4($t0)
	blez    $t1, 28$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     objlib_802A37DC
	lw      $a0, 0x01C4($t2)
	b       30$
	nop
28$:
	jal     objlib_802A37AC
	nop
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0198($t3)
	bgez    $t4, 43$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000830
	la.l    $a2, o_13000830
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0076
	b       49$
	nop
43$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x41A00000
	move    $a0, $t5
	jal     objlib_802A1B8C
	lw      $a1, 0x0198($t5)
49$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x41A00000
	move    $a0, $t6
	jal     objlib_802A1B8C
	lw      $a1, 0x0198($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0184($t7)
	bgez    $t8, 66$
	nop
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A05B4
	nop
	b       69$
	nop
66$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0184($t6)
	jal     object_c_802FB128
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0002
	beq     $s0, $at, 13$
	nop
	li      $at, 0x0005
	beq     $s0, $at, 13$
	nop
	b       31$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0065
	sw      $t6, 0x014C($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x42480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	b       49$
	nop
31$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0064
	sw      $t0, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t3)
	b       49$
	nop
49$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t6, $t5, $at
	sw      $t6, 0x008C($t4)
	lui     $a0, %hi(mario_obj)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(mario_obj)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB3A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50308081
	jal     object_playsound
	li.l    $a0, 0x50308081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0066
	sw      $t6, 0x014C($t7)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB3DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0040
	beqz    $t8, 37$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	lwc1    $f4, 0x0174($t9)
	lwc1    $f6, 0x00E4($t9)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    33$
	nop
	lwc1    $f12, 0x00A0($t9)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mov.s   $f20, $f0
	li      $at, 0x43160000
	lwc1    $f16, 0x00A4($t0)
	mtc1    $at, $f4
	sub.s   $f18, $f20, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    35$
	nop
33$:
	b       74$
	move    $v0, $0
35$:
	b       68$
	nop
37$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0800
	bnez    $t3, 68$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0008
	beqz    $t6, 66$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0128($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    63$
	nop
	li.u    $a0, 0x50324081
	jal     object_playsound
	li.l    $a0, 0x50324081
	b       66$
	nop
63$:
	li.u    $a0, 0x5029A081
	jal     object_playsound
	li.l    $a0, 0x5029A081
66$:
	b       74$
	move    $v0, $0
68$:
	jal     object_c_802FB128
	nop
	b       74$
	li      $v0, 0x0001
	b       74$
	nop
74$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A34A4
	lw      $a1, 0x0020($sp)
	jal     object_c_802FB3DC
	nop
	beqz    $v0, 17$
	nop
	b       112$
	li      $v0, 0x0001
	b       105$
	nop
17$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 105$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 44$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x014C($t2)
	beq     $t3, $t4, 42$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0024($sp)
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
42$:
	b       105$
	nop
44$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0028($sp)
	addu    $t3, $t1, $t2
	lbu     $t4, -0x0001($t3)
	sltiu   $at, $t4, 0x0009
	beqz    $at, 100$
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_c_803389B8)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_c_803389B8)($at)
	jr      $t4
	nop
.globl L802FB610
L802FB610:
	b       100$
	nop
.globl L802FB618
L802FB618:
	jal     object_c_802FB128
	nop
	b       100$
	nop
.globl L802FB628
L802FB628:
	jal     object_c_802FB288
	lw      $a0, 0x001C($sp)
	b       100$
	nop
.globl L802FB638
L802FB638:
	jal     object_c_802FB3A0
	nop
	b       100$
	nop
.globl L802FB648
L802FB648:
	jal     object_c_802FC414
	lw      $a0, 0x001C($sp)
	b       100$
	nop
.globl L802FB658
L802FB658:
	jal     object_c_8031126C
	nop
	b       100$
	nop
.globl L802FB668
L802FB668:
	jal     object_c_803020E4
	nop
	b       100$
	nop
.globl L802FB678
L802FB678:
	jal     object_c_802FF94C
	nop
	b       100$
	nop
.globl L802FB688
L802FB688:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0198($t6)
	jal     object_c_802FB3A0
	nop
	b       100$
	nop
100$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       112$
	lw      $v0, 0x001C($sp)
105$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       112$
	move    $v0, $0
	b       112$
	nop
112$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FB6E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	beqz    $t7, 12$
	nop
	jal     objlib_8029FEA4
	nop
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0A7B
	bnez    $t0, 26$
	nop
	lw      $t1, 0x014C($t8)
	li      $at, 0x0065
	bne     $t1, $at, 28$
	nop
	lw      $t2, 0x0154($t8)
	slti    $at, $t2, 0x0009
	bnez    $at, 28$
	nop
26$:
	jal     object_c_802FB128
	nop
28$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FB778:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $at, %hi(object_c_803389DC)
	lwc1    $f6, %lo(object_c_803389DC)($at)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	beqz    $t7, 18$
	nop
	jal     objlib_8029FEA4
	nop
18$:
	lui     $at, %hi(object_c_803389E0)
	lwc1    $f16, %lo(object_c_803389E0)($at)
	lwc1    $f10, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	mul.s   $f18, $f10, $f16
	lw      $a1, 0x0024($sp)
	addiu   $a0, $a0, 0x0030
	mfc1    $a2, $f18
	jal     object_c_802FA544
	nop
	beqz    $v0, 51$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f8, $f4, $f6
	lui     $t9, %hi(object)
	lwc1    $f10, 0x0030($t8)
	sub.s   $f20, $f8, $f10
	swc1    $f20, 0x0034($t8)
	lw      $t9, %lo(object)($t9)
	swc1    $f20, 0x002C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0010
	bnez    $at, 51$
	nop
	jal     object_c_802FB128
	nop
51$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       60$
	nop
60$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB87C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	slti    $at, $t7, 0x0064
	beqz    $at, 14$
	nop
	b       42$
	li      $v0, 0x0001
	b       40$
	nop
14$:
	jal     objlib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0064
	lw      $s0, 0x014C($t8)
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0066
	beq     $s0, $at, 34$
	nop
	b       38$
	nop
30$:
	jal     object_c_802FB6E8
	lwc1    $f12, 0x0028($sp)
	b       38$
	nop
34$:
	jal     object_c_802FB778
	lwc1    $f12, 0x0028($sp)
	b       38$
	nop
38$:
	b       42$
	move    $v0, $0
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FB938:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A34A4
	lw      $a1, 0x0020($sp)
	jal     object_c_802FB3DC
	nop
	beqz    $v0, 16$
	nop
	b       62$
	li      $v0, 0x0001
	b       55$
	nop
16$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 55$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 43$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x014C($t2)
	beq     $t3, $t4, 41$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0024($sp)
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
41$:
	b       55$
	nop
43$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x001C($sp)
	jal     object_c_802FB128
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       62$
	lw      $v0, 0x001C($sp)
55$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FBA40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_8029FEA4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, 19$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0018($sp)
	sw      $t8, 0x014C($t9)
	b       25$
	li      $v0, 0x0001
19$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       25$
	move    $v0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBAB4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0018($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    50$
	nop
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $at, %hi(object_c_803389E4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_c_803389E4)($at)
	b       96$
	swc1    $f4, 0x015C($t0)
50$:
	lui     $t1, %hi(object)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f8, 0x0164($t1)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0024($sp)
	lui     $t3, %hi(object)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x00A4($t4)
	lwc1    $f18, 0x0168($t3)
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x0020($sp)
	lui     $t5, %hi(object)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x00A8($t6)
	lwc1    $f8, 0x016C($t5)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	mul.s   $f16, $f18, $f18
	nop
	mul.s   $f8, $f4, $f4
	add.s   $f6, $f16, $f8
	mul.s   $f18, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f6, $f18
	swc1    $f0, 0x0018($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f4
	nop
	bc1f    96$
	nop
	lui     $at, %hi(object_c_803389E8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, %lo(object_c_803389E8)($at)
	swc1    $f8, 0x015C($t7)
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FBC4C
object_c_802FBC4C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $s0, 0x0144($t6)
	bne     $s0, $at, 32$
	sw      $s0, 0x00F8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F8($t8)
	lui     $at, %hi(object_c_803389EC)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_c_803389EC)($at)
	swc1    $f4, 0x00F4($t9)
	lui     $at, %hi(object_c_803389F0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, %lo(object_c_803389F0)($at)
	swc1    $f6, 0x019C($t0)
	lui     $at, %hi(object_c_803389F4)
	jal     object_set_scale
	lwc1    $f12, %lo(object_c_803389F4)($at)
	lui     $at, %hi(object_c_803389F8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, %lo(object_c_803389F8)($at)
	b       61$
	swc1    $f8, 0x00E4($t1)
32$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	slti    $at, $t3, 0x0002
	bnez    $at, 55$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, -0x0002
	sh      $t6, 0x01AE($t4)
	li      $at, 0x40800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t7)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       61$
	nop
55$:
	li      $at, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t8)
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FBD5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    17$
	nop
	li.u    $t7, 0x50342081
	li.l    $t7, 0x50342081
	b       20$
	sw      $t7, 0x001C($sp)
17$:
	li.u    $t8, 0x50350081
	li.l    $t8, 0x50350081
	sw      $t8, 0x001C($sp)
20$:
	lb      $a0, 0x0023($sp)
	lb      $a1, 0x0027($sp)
	jal     object_c_802FA428
	lw      $a2, 0x001C($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FBDD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    23$
	nop
	lw      $a0, 0x010C($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x3000
	beqz    $at, 23$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	b       27$
	li      $v0, 0x0001
23$:
	b       27$
	move    $v0, $0
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBE50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_c_802FA360
	li      $a0, 0x0007
	beqz    $v0, 25$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	jal     randsign
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $t9, $v0, 16
	sra     $t0, $t9, 16
	lw      $t3, 0x00C8($t2)
	sll     $t1, $t0, 13
	addu    $t4, $t1, $t3
	sw      $t4, 0x00FC($t2)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBECC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	lui     $at, %hi(object_c_803389FC)
	lwc1    $f8, %lo(object_c_803389FC)($at)
	mul.s   $f12, $f4, $f6
	nop
	mul.s   $f14, $f4, $f8
	jal     object_c_802FA5D0
	nop
	jal     object_c_802FA360
	li      $a0, 0x000B
	beqz    $v0, 29$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $v0, 0x01AC($t0)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBF58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	li      $a0, 0x0002
	jal     object_c_802FBD5C
	li      $a1, 0x0011
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	beqz    $t7, 18$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	addiu   $t0, $t9, -0x0001
	b       27$
	sh      $t0, 0x01AC($t8)
18$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 27$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FBFDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	mtc1    $0, $f12
	mul.s   $f14, $f4, $f6
	jal     object_c_802FA5D0
	nop
	jal     object_c_802FA360
	li      $a0, 0x000A
	beqz    $v0, 18$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC03C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	beqz    $t7, 17$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       42$
	sw      $v0, 0x0104($t9)
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338A00)
	lwc1    $f6, %lo(object_c_80338A00)($at)
	lwc1    $f4, 0x015C($t0)
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00FC($t1)
30$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00FC
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x00FC($t4)
42$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, 55$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 63$
	nop
	b       67$
	nop
55$:
	jal     object_c_802FBECC
	nop
	b       67$
	nop
59$:
	jal     object_c_802FBF58
	nop
	b       67$
	nop
63$:
	jal     object_c_802FBFDC
	nop
	b       67$
	nop
67$:
	jal     object_c_802FBDD4
	nop
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FC16C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	move    $a0, $0
	jal     object_c_802FBD5C
	li      $a1, 0x000B
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A04)
	lwc1    $f6, %lo(object_c_80338A04)($at)
	lwc1    $f4, 0x015C($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    27$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x0160($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x015C($t0)
27$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, 52$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    52$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, 50$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
50$:
	b       65$
	nop
52$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	li      $a1, 0x0400
	lw      $a0, 0x0160($t4)
	jal     objlib_8029E5EC
	addu    $a0, $a0, $at
	li      $at, 0x41880000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 38$
	nop
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	lwc1    $f14, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    38$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bgez    $t1, 29$
	andi    $t2, $t1, 0x0003
	beqz    $t2, 29$
	nop
	addiu   $t2, $t2, -0x0004
29$:
	bnez    $t2, 38$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002528
	la.l    $a2, o_13002528
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0096
	jal     objlib_8029EEB8
	li      $a3, 0x3F800000
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC338:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    28$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0200
	beqz    $t9, 21$
	nop
	jal     objlib_802A3268
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
21$:
	jal     object_c_802FA32C
	li      $a0, 0x0005
	lui     $at, %hi(object_c_80338A08)
	jal     object_c_802FC288
	lwc1    $f12, %lo(object_c_80338A08)($at)
	b       49$
	nop
28$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	beqz    $t2, 42$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01AC($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AC($t3)
	jal     objlib_8029FEA4
	nop
	b       49$
	nop
42$:
	jal     object_c_802FA360
	li      $a0, 0x0006
	beqz    $v0, 49$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A0C)
	lwc1    $f6, %lo(object_c_80338A0C)($at)
	lwc1    $f4, 0x002C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    55$
	nop
	li.u    $a0, 0x503EA081
	jal     object_playsound
	li.l    $a0, 0x503EA081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0x0003
	beq     $t1, $at, 43$
	nop
	li      $at, 0x0004
	beq     $t1, $at, 43$
	nop
	lui     $a0, %hi(mario_obj)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(mario_obj)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
43$:
	jal     objlib_802A04C0
	li      $a0, 0x00BF
	lui     $a0, %hi(object)
	la.u    $a2, o_13001F3C
	la.l    $a2, o_13001F3C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00BE
	jal     objlib_802A05B4
	nop
	b       57$
	nop
55$:
	jal     object_c_802FB128
	nop
57$:
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FC510:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0032
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 34$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 42$
	nop
	b       46$
	nop
28$:
	jal     object_c_802FBE50
	nop
	jal     object_c_802FBDD4
	nop
	b       46$
	nop
34$:
	jal     object_c_802FC03C
	nop
	b       46$
	nop
38$:
	jal     object_c_802FC16C
	nop
	b       46$
	nop
42$:
	jal     object_c_802FC338
	nop
	b       46$
	nop
46$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A10)
	lwc1    $f6, %lo(object_c_80338A10)($at)
	lwc1    $f4, 0x002C($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332858
	la.l    $a2, object_c_80332858
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	lw      $a1, 0x014C($t8)
	b       79$
	nop
65$:
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332850
	la.l    $a2, object_c_80332850
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	li      $a1, 0x0004
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, 79$
	nop
	jal     object_c_802FB128
	nop
79$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FC670:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(object_c_80338A14)
	lwc1    $f4, %lo(object_c_80338A14)($at)
	swc1    $f4, 0x002C($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	move    $a0, $0
	jal     object_c_802FBD5C
	li      $a1, 0x0006
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	beqz    $t7, 25$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0600
	jal     object_c_802FB0CC
	lw      $a0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       113$
	sw      $v0, 0x0104($t9)
25$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338A18)
	lwc1    $f8, %lo(object_c_80338A18)($at)
	lwc1    $f6, 0x015C($t0)
	c.le.s  $f8, $f6
	nop
	bc1f    38$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00FC($t1)
38$:
	la.u    $a0, o_13001F3C
	la.l    $a0, o_13001F3C
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x002C
	sw      $v0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	beqz    $t3, 54$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E694
	lw      $a1, 0x0028($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       79$
	sw      $v0, 0x00FC($t4)
54$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00FC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	bnez    $s0, 79$
	sw      $s0, 0x0104($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, 74$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	addiu   $t0, $t9, -0x0001
	b       79$
	sw      $t0, 0x0100($t8)
74$:
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00FC($t2)
79$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t1)
	c.lt.s  $f16, $f10
	nop
	bc1t    99$
	nop
	lw      $t3, 0x0028($sp)
	beqz    $t3, 106$
	nop
	lw      $a1, 0x0160($t1)
	li      $at, 0x8000
	lw      $a0, 0x00FC($t1)
	jal     objlib_802A11A8
	addu    $a1, $a1, $at
	slti    $at, $v0, 0x2000
	beqz    $at, 106$
	nop
99$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0600
	jal     objlib_8029E5EC
	lw      $a0, 0x00FC($t4)
	b       113$
	nop
106$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	li      $a1, 0x0600
	lw      $a0, 0x0160($t5)
	jal     objlib_8029E5EC
	addu    $a0, $a0, $at
113$:
	li      $at, 0x41A00000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	beqz    $v0, 162$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f4
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    162$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x00FC($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x0C00
	beqz    $at, 162$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00FC($t7)
	sw      $t9, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338A1C)
	lwc1    $f8, %lo(object_c_80338A1C)($at)
	lwc1    $f6, 0x00B8($t2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t2)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x002C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t1, 0x0014
	sh      $t1, 0x01AC($t4)
162$:
	b       164$
	nop
164$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FC914:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, 10$
	nop
	jal     objlib_802A05D4
	nop
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000B
	bnez    $at, 63$
	nop
	la.u    $a0, o_13001F3C
	la.l    $a0, o_13001F3C
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, 63$
	nop
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E2F8
	move    $a0, $t0
	li      $at, 0x43480000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    63$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0018($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    63$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F8($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B8($t5)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t5)
	jal     objlib_802A04C0
	li      $a0, 0x0068
	jal     objlib_802A0568
	lw      $a0, 0x001C($sp)
	b       114$
	nop
63$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    93$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 85$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	jal     object_c_802FA32C
	li      $a0, 0x0002
	b       87$
	nop
85$:
	jal     object_c_802FA32C
	li      $a0, 0x0005
87$:
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     object_c_802FC288
	nop
	b       114$
	nop
93$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	beqz    $t2, 107$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01AC($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AC($t3)
	jal     objlib_8029FEA4
	nop
	b       114$
	nop
107$:
	jal     object_c_802FA360
	li      $a0, 0x0006
	beqz    $v0, 114$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
114$:
	b       116$
	nop
116$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FCAF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	move    $a0, $0
	b       6$
	nop
6$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCB1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a2, 0x000F
	li      $a3, 0x0003
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 36$
	nop
	b       40$
	nop
28$:
	jal     object_c_802FC670
	nop
	b       40$
	nop
32$:
	jal     object_c_802FC914
	nop
	b       40$
	nop
36$:
	jal     object_c_802FCAF4
	nop
	b       40$
	nop
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, object_c_80332840
	la.u    $a2, object_c_80332850
	la.l    $a2, object_c_80332850
	la.l    $a0, object_c_80332840
	jal     object_c_802FB518
	lw      $a1, 0x014C($t7)
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FCC00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0032
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 34$
	nop
	li.u    $a0, 0x314D4081
	jal     object_playsound
	li.l    $a0, 0x314D4081
	lw      $t8, 0x0018($sp)
	bnez    $t8, 28$
	nop
	move    $a0, $0
	li      $a1, 0x0409
	jal     Na_BgmPlay
	move    $a2, $0
	jal     time_ctrl
	move    $a0, $0
	jal     time_ctrl
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	lw      $t1, 0x0068($t0)
	sw      $t9, 0x00F4($t1)
28$:
	jal     pl_demo_80257640
	move    $a0, $0
	jal     objlib_802A5498
	nop
	b       42$
	nop
34$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0033
	bnez    $at, 42$
	nop
	b       46$
	li      $v0, 0x0001
42$:
	b       46$
	move    $v0, $0
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCCC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FBE50
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	beqz    $t7, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01B0($t8)
	addiu   $t0, $t9, -0x0001
	b       33$
	sh      $t0, 0x01B0($t8)
15$:
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 33$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	jal     objlib_8029F4B4
	li      $a0, 0x0007
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FCD64:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332860+0x00)
	lh      $t7, 0x01AE($t6)
	sll     $t8, $t7, 4
	addu    $a0, $a0, $t8
	jal     object_c_802F97BC
	lh      $a0, %lo(object_c_80332860+0x00)($a0)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $at, 0x0001
	bne     $t9, $at, 58$
	nop
	lui     $at, %hi(object_8036125A)
	sh      $0, %lo(object_8036125A)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	la.u    $a0, o_130045D0
	jal     objlib_8029F95C
	la.l    $a0, o_130045D0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0068($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $a0, %hi(object_c_80332860+0x04)
	lh      $t5, 0x01AE($t4)
	sll     $t6, $t5, 4
	addu    $a0, $a0, $t6
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332860+0x04)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $s0, $v0
	lui     $t8, %hi(object)
	sw      $s0, 0x0100($t7)
	lw      $t8, %lo(object)($t8)
	sw      $s0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x008C($t0)
	ori     $t2, $t1, 0x0080
	sw      $t2, 0x008C($t0)
	b       69$
	nop
58$:
	lw      $t3, 0x002C($sp)
	li      $at, 0x0002
	bne     $t3, $at, 69$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x003C
	sh      $t5, 0x01B0($t6)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FCE94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13003A58
	la.l    $a0, o_13003A58
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0020
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	beqz    $t6, 88$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x0010
	jal     objlib_8029E714
	move    $a3, $0
	sh      $v0, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0024($sp)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x00C8($t9)
	lw      $t8, 0x00C8($t7)
	lwc1    $f6, 0x00B8($t7)
	subu    $t1, $t8, $t0
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $a1, 0x001E($sp)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t5)
	slti    $at, $v0, 0x4000
	beqz    $at, 71$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0020($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    69$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A20)
	lwc1    $f6, %lo(object_c_80338A20)($at)
	lwc1    $f4, 0x00B8($t6)
	lwc1    $f18, 0x0018($sp)
	mul.s   $f8, $f4, $f6
	c.lt.s  $f18, $f8
	nop
	bc1f    62$
	nop
	b       92$
	li      $v0, 0x0001
	b       69$
	nop
62$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B8($t9)
	sub.s   $f4, $f10, $f16
	swc1    $f4, 0x00B8($t9)
69$:
	b       88$
	nop
71$:
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f6, $f18
	nop
	bc1f    88$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x00B8($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    88$
	nop
	b       92$
	li      $v0, -0x0001
88$:
	b       92$
	move    $v0, $0
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FD014:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A24)
	lwc1    $f6, %lo(object_c_80338A24)($at)
	lwc1    $f4, 0x00B8($t6)
	li      $a0, 0x0009
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f8
	jal     objlib_8029F514
	nop
	li      $a0, 0x0002
	jal     object_c_802FBD5C
	li      $a1, 0x0011
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD068:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_c_802FCC00
	move    $a0, $0
	beqz    $v0, 216$
	nop
	li      $at, 0x43340000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	jal     objlib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, 23$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	b       216$
	sw      $t6, 0x014C($t7)
23$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0108($t8)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	trunc.w.s $f8, $f6
	mfc1    $t1, $f8
	nop
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t5)
	lw      $a0, 0x010C($t5)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     objlib_8029E5EC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x0150($t7)
	beqz    $s0, 67$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 71$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 199$
	nop
	b       216$
	nop
67$:
	jal     object_c_802FBECC
	nop
	b       216$
	nop
71$:
	jal     object_c_802FD014
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x00FC($t9)
	beqz    $t0, 97$
	nop
	lui     $at, %hi(object_c_80338A28)
	lwc1    $f18, %lo(object_c_80338A28)($at)
	lwc1    $f16, 0x015C($t8)
	c.lt.s  $f18, $f16
	nop
	bc1f    97$
	nop
	lw      $t1, 0x0104($t8)
	andi    $t2, $t1, 0x00FF
	slti    $at, $t2, 0x001C
	beqz    $at, 97$
	nop
	li      $at, 0x41000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       114$
	swc1    $f4, 0x00F4($t3)
97$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AE($t4)
	beqz    $t5, 108$
	nop
	li      $at, 0x40C00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	b       114$
	swc1    $f6, 0x00F4($t6)
108$:
	li      $at, 0x40800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t7)
114$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t9)
	lwc1    $f4, 0x002C($sp)
	lui     $at, %hi(object_c_80338A2C)
	mul.s   $f18, $f10, $f16
	lwc1    $f6, %lo(object_c_80338A2C)($at)
	mul.s   $f12, $f18, $f4
	nop
	mul.s   $f14, $f10, $f6
	jal     object_c_802FA5D0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t1, $t8, 0x0200
	beqz    $t1, 140$
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t2)
140$:
	jal     object_c_802FCE94
	nop
	sw      $v0, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	bnez    $t3, 152$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0400
	beqz    $t6, 197$
	nop
152$:
	lw      $t7, 0x0028($sp)
	bgez    $t7, 160$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t9)
160$:
	lw      $t0, 0x0028($sp)
	bnez    $t0, 170$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0104($t8)
	andi    $t2, $t1, 0x00FF
	slti    $at, $t2, 0x0008
	bnez    $at, 176$
	nop
170$:
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	b       182$
	swc1    $f18, 0x00B0($t3)
176$:
	li      $at, 0x42200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t4)
182$:
	li      $at, 0xC0C00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0150($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00EC($t9)
	jal     objlib_8029F4B4
	li      $a0, 0x000C
197$:
	b       216$
	nop
199$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t1, $t8, 0x0003
	beqz    $t1, 216$
	nop
	jal     object_c_802FA360
	li      $a0, 0x000D
	beqz    $v0, 214$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0150($t2)
214$:
	jal     object_c_802FCE94
	nop
216$:
	b       218$
	nop
218$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_802FD3E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	li.u    $a1, 0x3F7D70A4
	li.l    $a1, 0x3F7D70A4
	jal     objlib_8029F514
	li      $a0, 0x0009
	jal     objlib_8029FF04
	nop
	beqz    $v0, 26$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0005
	sw      $t6, 0x014C($t7)
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD464:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FBFDC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0006
	sw      $t8, 0x014C($t9)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FD4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0007
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	bnez    $t8, 65$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 63$
	nop
	jal     Na_BgmStop
	li      $a0, 0x0409
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00FC($t0)
	beqz    $t1, 52$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00FC($t3)
	bgez    $t4, 41$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sw      $0, 0x00FC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	lw      $t9, 0x0068($t8)
	b       50$
	sw      $t7, 0x0100($t9)
41$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_c_80332860+0x02)
	lh      $t1, 0x01AE($t0)
	lw      $t4, 0x0068($t0)
	sll     $t2, $t1, 4
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332860+0x02)($t3)
	sw      $t3, 0x0100($t4)
50$:
	b       57$
	nop
52$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0029
	lw      $t8, 0x0068($t6)
	sw      $t5, 0x0100($t8)
57$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0081
	lw      $t9, 0x008C($t7)
	and     $t1, $t9, $at
	sw      $t1, 0x008C($t7)
63$:
	b       121$
	nop
65$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0068($t2)
	lw      $t3, 0x0100($t0)
	blez    $t3, 93$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a0, 0x0002
	li      $a1, 0x0001
	lw      $t6, 0x0068($t4)
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	lw      $a3, 0x0100($t6)
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	beqz    $t5, 91$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x0001
	lw      $t1, 0x0068($t9)
	sw      $t8, 0x0100($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
91$:
	b       121$
	nop
93$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0068($t2)
	lw      $t3, 0x00FC($t0)
	beqz    $t3, 121$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t9, object_c_80332860+0x00
	la.l    $t9, object_c_80332860+0x00
	lh      $t6, 0x01AE($t4)
	sll     $t5, $t6, 4
	addu    $t8, $t5, $t9
	lh      $t2, 0x000C($t8)
	lh      $t1, 0x0008($t8)
	lh      $t7, 0x000A($t8)
	mtc1    $t2, $f8
	mtc1    $t1, $f4
	mtc1    $t7, $f6
	cvt.s.w $f8, $f8
	cvt.s.w $f12, $f4
	mfc1    $a2, $f8
	jal     object_b_802F2B88
	cvt.s.w $f14, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0068($t0)
	sw      $0, 0x00FC($t3)
121$:
	b       123$
	nop
123$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FD6AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x000A
	li      $a2, 0x000F
	li      $a3, 0x0003
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0007
	beqz    $at, 47$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338A30)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338A30)($at)
	jr      $t7
	nop
.globl L802FD708
L802FD708:
	jal     object_c_802FCCC8
	nop
	b       47$
	nop
.globl L802FD718
L802FD718:
	jal     object_c_802FCD64
	nop
	b       47$
	nop
.globl L802FD728
L802FD728:
	jal     object_c_802FD068
	nop
	b       47$
	nop
.globl L802FD738
L802FD738:
	jal     object_c_802FD3E4
	nop
	b       47$
	nop
.globl L802FD748
L802FD748:
	jal     object_c_802FD464
	nop
	b       47$
	nop
.globl L802FD758
L802FD758:
	jal     object_c_802FD4B0
	nop
	b       47$
	nop
47$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	beq     $t9, $t8, 69$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     objlib_8029E2F8
	lw      $a1, 0x0068($t0)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    69$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	lw      $t3, 0x0068($t2)
	sw      $t1, 0x00F8($t3)
69$:
	li      $at, 0x430C0000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FD7F8
object_c_802FD7F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5063B081
	li.l    $t6, 0x5063B081
	sw      $t6, 0x01C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	slti    $at, $t9, 0x0002
	bnez    $at, 18$
	nop
	jal     object_c_802FD6AC
	nop
	b       74$
	nop
18$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t0)
	mul.s   $f12, $f4, $f6
	jal     object_c_802FB87C
	nop
	beqz    $v0, 70$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x015C($t1)
	swc1    $f8, 0x0108($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0160($t2)
	sw      $t3, 0x010C($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x00F8($t4)
	beqz    $s0, 56$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 60$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 64$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 64$
	nop
	b       68$
	nop
56$:
	jal     object_c_802FCB1C
	nop
	b       68$
	nop
60$:
	jal     object_c_802FC510
	nop
	b       68$
	nop
64$:
	jal     object_c_802FD6AC
	nop
	b       68$
	nop
68$:
	b       74$
	nop
70$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t6)
74$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0600
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t7)
	b       81$
	nop
81$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FD950
object_c_802FD950:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	beqz    $t7, 48$
	nop
	lw      $t8, 0x0104($t6)
	bnez    $t8, 48$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	bnez    $t0, 22$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    48$
	nop
22$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0104($t2)
	jal     time_ctrl
	li      $a0, 0x0002
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	bnez    $t4, 48$
	nop
	jal     Na_Fanfare
	nop
	lui     $t5, %hi(object_8036125A)
	lh      $t5, %lo(object_8036125A)($t5)
	beqz    $t5, 44$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, -0x0001
	b       48$
	sw      $t7, 0x00FC($t6)
44$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0001
	sw      $t8, 0x00FC($t0)
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FDA28
object_c_802FDA28:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_c_802FB87C
	nop
	beqz    $v0, 271$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 20$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       269$
	nop
20$:
	jal     objlib_802A2320
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x001E
	li      $a2, 0x003C
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0110
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	slti    $at, $t0, 0x0002
	bnez    $at, 70$
	nop
	lw      $t4, 0x0068($t9)
	addiu   $t1, $t0, 0x001F
	li      $t2, 0x0001
	lw      $t5, 0x00F4($t4)
	sllv    $t3, $t2, $t1
	and     $t6, $t3, $t5
	bnez    $t6, 70$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t2, 0x0001
	lw      $t9, 0x0068($t7)
	lw      $t8, 0x0144($t7)
	lw      $t4, 0x00F4($t9)
	addiu   $t0, $t8, 0x001F
	sllv    $t1, $t2, $t0
	or      $t3, $t1, $t4
	sw      $t3, 0x00F4($t9)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t8, 0x0001
	li      $at, -0x0001
	lw      $t7, 0x0068($t5)
	lw      $t6, 0x0144($t5)
	lw      $t1, 0x00F4($t7)
	sllv    $t2, $t8, $t6
	xor     $t0, $t2, $at
	and     $t4, $t0, $t1
	sw      $t4, 0x00F4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t9, 0x0144($t3)
	addiu   $t8, $t9, -0x0001
	b       102$
	sw      $t8, 0x0144($t3)
70$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t2, 0x0068($t6)
	lwc1    $f4, 0x00FC($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    102$
	nop
	lw      $t0, 0x0144($t6)
	lw      $t5, 0x00F8($t2)
	addiu   $t1, $t0, 0x0001
	bne     $t5, $t1, 102$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	lw      $a0, 0x0068($t4)
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40400000
	mtc1    $at, $f10
	lw      $t9, 0x0068($t7)
	lwc1    $f8, 0x00FC($t9)
	mul.s   $f12, $f8, $f10
	jal     object_set_scale
	nop
102$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	lw      $t3, 0x0144($t8)
	sll     $t0, $t6, 11
	sll     $t2, $t3, 14
	addu    $t5, $t2, $t0
	sh      $t5, 0x001E($sp)
	lhu     $t1, 0x001E($sp)
	lui     $at, %hi(math_cos)
	lui     $t9, %hi(object)
	sra     $t4, $t1, 4
	sll     $t7, $t4, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x40C00000
	mtc1    $at, $f18
	lw      $t9, %lo(object)($t9)
	mul.s   $f4, $f16, $f18
	lw      $t8, 0x0068($t9)
	lwc1    $f6, 0x00A0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t9)
	lhu     $t3, 0x001E($sp)
	lui     $at, %hi(math_sin)
	lui     $t0, %hi(object)
	sra     $t6, $t3, 4
	sll     $t2, $t6, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lw      $t0, %lo(object)($t0)
	mul.s   $f18, $f10, $f16
	lw      $t5, 0x0068($t0)
	lwc1    $f4, 0x00A8($t5)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lw      $t4, 0x0068($t1)
	lw      $t8, 0x0144($t1)
	lw      $t7, 0x00F8($t4)
	lwc1    $f8, 0x00FC($t4)
	lwc1    $f6, 0x00A4($t4)
	subu    $t9, $t7, $t8
	sll     $t3, $t9, 4
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 3
	addiu   $t6, $t3, -0x00F0
	mtc1    $t6, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	add.s   $f8, $f6, $f4
	add.s   $f10, $f16, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f18, 0x00A4($t2)
	c.lt.s  $f18, $f6
	nop
	bc1f    178$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00A4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
178$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t7, 0x0144($t1)
	bnez    $t7, 188$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       191$
	sw      $t8, 0x0198($t9)
188$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0198($t3)
191$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332880
	la.u    $a2, object_c_80332890
	la.l    $a2, object_c_80332890
	la.l    $a0, object_c_80332880
	jal     object_c_802FB518
	lw      $a1, 0x014C($t6)
	beqz    $v0, 233$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x0068($t4)
	lw      $t5, 0x00F8($t2)
	addiu   $t0, $t5, -0x0001
	sw      $t0, 0x00F8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t7, 0x0144($t1)
	bnez    $t7, 221$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	lw      $t3, 0x0068($t9)
	sw      $t8, 0x0100($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, -0x0001
	sw      $t6, 0x0198($t4)
221$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t2, 0x0001
	li      $at, -0x0001
	lw      $t9, 0x0068($t5)
	lw      $t0, 0x0144($t5)
	lw      $t8, 0x00F4($t9)
	sllv    $t1, $t2, $t0
	xor     $t7, $t1, $at
	and     $t3, $t7, $t8
	b       267$
	sw      $t3, 0x00F4($t9)
233$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0068($t6)
	lw      $t2, 0x0100($t4)
	beqz    $t2, 261$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t7, %hi(object)
	lw      $t1, 0x00F8($t0)
	addiu   $t5, $t1, -0x0001
	sw      $t5, 0x00F8($t0)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	bgez    $t8, 259$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t9, 0x0068($t3)
	lw      $t6, 0x00F8($t9)
	addiu   $t4, $t6, -0x0001
	sw      $t4, 0x00F8($t9)
	jal     object_c_802FB128
	nop
259$:
	b       267$
	nop
261$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0144($t2)
	sll     $t5, $t1, 2
	addiu   $t0, $t5, 0x0014
	sw      $t0, 0x00F8($t2)
267$:
	jal     objlib_802A2348
	li      $a0, -0x004E
269$:
	b       275$
	nop
271$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F0($t8)
275$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41B00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($t3)
	mul.s   $f18, $f8, $f10
	swc1    $f18, 0x00DC($t3)
	b       284$
	nop
284$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FDEA8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    65$
	nop
	li      $t7, 0x0054
	sh      $t7, 0x002E($sp)
	sw      $0, 0x0030($sp)
14$:
	lw      $t8, 0x0030($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	subu    $a2, $0, $t8
	sll     $t9, $a2, 4
	subu    $t9, $t9, $a2
	lh      $t1, 0x002E($sp)
	sll     $t9, $t9, 3
	la.u    $t2, o_13004668
	la.l    $t2, o_13004668
	move    $a2, $t9
	addiu   $a2, $a2, 0x01E0
	sw      $t2, 0x0018($sp)
	move    $a1, $0
	move    $a3, $0
	move    $a0, $t8
	sw      $t0, 0x0010($sp)
	jal     obj_make_off
	sw      $t1, 0x0014($sp)
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	beqz    $t3, 40$
	nop
	lw      $a0, 0x0034($sp)
	jal     obj_set_scale
	li      $a1, 0x40400000
40$:
	li      $t4, 0x0055
	sh      $t4, 0x002E($sp)
	lw      $t5, 0x0030($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0005
	bnez    $at, 14$
	sw      $t6, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x001F
	sw      $t7, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0005
	sw      $t9, 0x00F8($t0)
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_802FDFC4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 13$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       231$
	nop
13$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338A4C)
	lwc1    $f6, %lo(object_c_80338A4C)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	b       231$
	swc1    $f8, 0x00B8($t1)
31$:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     objlib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	beqz    $t3, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	b       229$
	swc1    $f10, 0x00B8($t4)
47$:
	li      $at, 0x40A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, 108$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0065
	bnez    $at, 106$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13004668
	la.l    $t2, o_13004668
	lw      $a0, 0x00F8($t0)
	li      $t1, 0x0055
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t0, 0x0010($sp)
	sw      $v0, 0x0038($sp)
	lw      $t3, 0x0038($sp)
	beqz    $t3, 103$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x0001
	lw      $t5, 0x00F8($t4)
	lw      $t8, 0x00F4($t4)
	sllv    $t7, $t6, $t5
	or      $t9, $t7, $t8
	sw      $t9, 0x00F4($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t3)
	lw      $a0, 0x0038($sp)
	jal     obj_set_scale
	li      $a1, 0x0000
103$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
106$:
	b       111$
	nop
108$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
111$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	beqz    $t8, 125$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x0104($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       229$
	sw      $v0, 0x010C($t4)
125$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338A50)
	lwc1    $f6, %lo(object_c_80338A50)($at)
	lwc1    $f4, 0x015C($t1)
	c.le.s  $f6, $f4
	nop
	bc1f    138$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0160($t2)
	sw      $t0, 0x0104($t2)
138$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x0104
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	move    $s0, $v0
	bnez    $s0, 224$
	sw      $s0, 0x010C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0108($t6)
	beqz    $t5, 158$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0108($t7)
	addiu   $t9, $t8, -0x0001
	b       224$
	sw      $t9, 0x0108($t7)
158$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    179$
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0104($t1)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       224$
	sw      $v0, 0x0108($t0)
179$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	li      $at, 0x41200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	li      $at, 0x46800000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t6, $f18
	nop
	sw      $t6, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	bgez    $t5, 200$
	nop
	b       206$
	sw      $0, 0x003C($sp)
200$:
	lw      $t8, 0x003C($sp)
	slti    $at, $t8, 0x4001
	bnez    $at, 206$
	nop
	li      $t9, 0x4000
	sw      $t9, 0x003C($sp)
206$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x0160($t7)
	lw      $t1, 0x00C8($t7)
	subu    $t0, $t4, $t1
	sll     $t2, $t0, 16
	sra     $t3, $t2, 16
	blez    $t3, 218$
	nop
	lw      $t6, 0x003C($sp)
	subu    $t5, $0, $t6
	sw      $t5, 0x003C($sp)
218$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x0160($t8)
	addu    $t4, $t9, $t7
	sw      $t4, 0x0104($t8)
224$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0104($t1)
229$:
	jal     objlib_802A2348
	li      $a0, -0x004E
231$:
	b       233$
	nop
233$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FE37C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jal     objlib_802A184C
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_802FE3B0
object_c_802FE3B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5063C081
	li.l    $t6, 0x5063C081
	sw      $t6, 0x01C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 21$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 25$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 29$
	nop
	b       33$
	nop
21$:
	jal     object_c_802FDEA8
	nop
	b       33$
	nop
25$:
	jal     object_c_802FDFC4
	nop
	b       33$
	nop
29$:
	jal     object_c_802FE37C
	nop
	b       33$
	nop
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FE450:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 42$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A54)
	lwc1    $f6, %lo(object_c_80338A54)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    42$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0320
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t7)
	beqz    $v0, 42$
	nop
	li.u    $a0, 0x90490081
	jal     object_playsound
	li.l    $a0, 0x90490081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	li      $at, 0xC1400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t0)
42$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x8000
	sw      $t1, 0x00D8($t2)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FE520:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40000000
	jal     objlib_8029FF04
	nop
	beqz    $v0, 14$
	nop
	li.u    $a0, 0x50310081
	jal     object_playsound
	li.l    $a0, 0x50310081
14$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    41$
	nop
	move    $a0, $0
	jal     object_c_802FA7BC
	li      $a1, 0x09C4
	beqz    $v0, 39$
	nop
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t7)
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t8)
39$:
	b       222$
	nop
41$:
	jal     objlib_802A3F48
	nop
	beqz    $v0, 65$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	jal     objlib_802A184C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lui     $t1, %hi(object)
	lui     $t2, %hi(object)
	swc1    $f16, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f20, 0x00B0($t1)
	swc1    $f20, 0x00B8($t1)
	lw      $t2, %lo(object)($t2)
	swc1    $f20, 0x002C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       222$
	sw      $0, 0x00D8($t3)
65$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	beqz    $t5, 76$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, -0x0001
	b       140$
	sw      $t8, 0x00F4($t6)
76$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B0($t9)
	c.eq.s  $f18, $f4
	nop
	bc1t    125$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sw      $t1, 0x00FC($t0)
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f16, $f8, $f10
	lwc1    $f6, 0x00A4($t2)
	c.lt.s  $f6, $f16
	nop
	bc1f    117$
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA618
	nop
	beqz    $v0, 115$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B8($t4)
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x00B8($t4)
115$:
	b       123$
	nop
117$:
	li      $at, 0xC1200000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA618
	nop
123$:
	b       140$
	nop
125$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00EC($t5)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 140$
	nop
	jal     objlib_802A3268
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00FC($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x001E
	sw      $t9, 0x00F4($t1)
140$:
	jal     object_c_802F9770
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	bnez    $s0, 161$
	sw      $s0, 0x00F8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lw      $t3, 0x00F8($t2)
	lwc1    $f10, 0x00B8($t2)
	mtc1    $t3, $f18
	mul.s   $f16, $f10, $f6
	cvt.s.w $f4, $f18
	add.s   $f8, $f4, $f16
	trunc.w.s $f10, $f8
	mfc1    $t5, $f10
	nop
	sw      $t5, 0x00F8($t2)
161$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x008C
	jal     object_c_802FA660
	lw      $a0, 0x00F8($t7)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	lui     $at, %hi(math_cos)
	lui     $t5, %hi(object)
	sll     $t6, $t8, 5
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 5
	andi    $t9, $t6, 0xFFFF
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(object_c_80338A58)
	lwc1    $f18, %lo(object_c_80338A58)($at)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x04B0
	mul.s   $f4, $f6, $f18
	lw      $t2, 0x00FC($t5)
	trunc.w.s $f16, $f4
	mfc1    $t4, $f16
	jal     objlib_8029E5EC
	addu    $a0, $t4, $t2
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x3000
	li      $a2, 0x01F4
	jal     object_c_802FA900
	lw      $a0, 0x00FC($t7)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	sll     $t6, $t8, 2
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 3
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 4
	addu    $t6, $t6, $t8
	sll     $t6, $t6, 5
	andi    $t9, $t6, 0xFFFF
	sra     $t1, $t9, 4
	sll     $t0, $t1, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f8, $f10
	lw      $t2, 0x00D8($t4)
	trunc.w.s $f18, $f6
	mfc1    $t5, $f18
	nop
	addu    $t7, $t2, $t5
	sw      $t7, 0x00D8($t4)
222$:
	b       224$
	nop
224$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl object_c_802FE8B4
object_c_802FE8B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 46$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5062B081
	li.l    $t9, 0x5062B081
	sw      $t9, 0x01C4($t0)
	jal     objlib_802A2320
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x014C($t1)
	beqz    $s0, 26$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	b       34$
	nop
26$:
	jal     object_c_802FE450
	nop
	b       34$
	nop
30$:
	jal     object_c_802FE520
	nop
	b       34$
	nop
34$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t2)
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, object_c_80332898
	la.l    $a0, object_c_80332898
	jal     object_c_802FB938
	lw      $a1, 0x014C($t3)
46$:
	b       48$
	nop
48$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FE988:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li      $a1, 0x3FC00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 88$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A5C)
	lwc1    $f8, %lo(object_c_80338A5C)($at)
	lwc1    $f6, 0x015C($t7)
	c.le.s  $f8, $f6
	nop
	bc1t    32$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f6, $f10
	nop
	bc1f    50$
	nop
32$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0300
	jal     object_c_802FA748
	lw      $a0, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0300
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	beqz    $v0, 48$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
48$:
	b       88$
	nop
50$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	slti    $at, $t3, 0x0003
	beqz    $at, 65$
	nop
	jal     rand
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	andi    $t4, $v0, 0x0001
	addiu   $t5, $t4, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t5, $t7, 73$
	nop
65$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       88$
	sw      $t9, 0x014C($t0)
73$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t4, %hi(object_c_803328B8)
	lw      $t2, 0x00F4($t1)
	lw      $t6, 0x00C8($t1)
	sll     $t3, $t2, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_c_803328B8)($t4)
	addu    $t5, $t4, $t6
	sw      $t5, 0x00FC($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FEB00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A60)
	lwc1    $f6, %lo(object_c_80338A60)($at)
	lwc1    $f4, 0x015C($t6)
	c.le.s  $f6, $f4
	nop
	bc1t    18$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    133$
	nop
18$:
	li      $at, 0x41200000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     object_c_802FA748
	lw      $a0, 0x0160($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a0, 0x0160($t9)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t9)
	slti    $at, $v0, 0x2000
	beqz    $at, 131$
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43C80000
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f10, 0x00A4($t0)
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1t    62$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f8
	nop
	bc1f    131$
	nop
62$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	beqz    $t3, 86$
	nop
	jal     rand
	nop
	bgez    $v0, 74$
	andi    $t4, $v0, 0x0001
	beqz    $t4, 74$
	nop
	addiu   $t4, $t4, -0x0002
74$:
	beqz    $t4, 86$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $at, %hi(object_c_80338A64)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, %lo(object_c_80338A64)($at)
	b       131$
	swc1    $f10, 0x010C($t7)
86$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	li      $at, 0xC3480000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0104($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t2, 0x0106($t0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f18
	nop
	mul.s   $f6, $f16, $f18
	swc1    $f6, 0x00B8($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x0106($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f10
	neg.s   $f8, $f4
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t9)
	neg.s   $f6, $f18
	div.s   $f8, $f6, $f4
	swc1    $f8, 0x0100($t9)
131$:
	b       142$
	nop
133$:
	mtc1    $0, $f12
	lui     $at, %hi(object_c_80338A68)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338A68)($at)
	beqz    $v0, 142$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
142$:
	b       144$
	nop
144$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FED50:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    45$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00B0($t7)
	lwc1    $f10, 0x0100($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0800
	jal     objlib_8029E5EC
	lw      $a0, 0x00D4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0400
	jal     object_c_802FA6D4
	lw      $a0, 0x0104($t9)
	jal     randf
	nop
	li      $at, 0x40400000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	sll     $t4, $t3, 12
	addiu   $t5, $t4, -0x1000
	sw      $t5, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       108$
	sw      $0, 0x0154($t7)
45$:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0100
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x012C
	jal     object_c_802FA7BC
	lw      $a0, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00D8($t9)
	lw      $t0, 0x00C8($t9)
	bgez    $t1, 61$
	sra     $t2, $t1, 2
	addiu   $at, $t1, 0x0003
	sra     $t2, $at, 2
61$:
	subu    $t3, $t0, $t2
	sw      $t3, 0x00C8($t9)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t4)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f18, $f10, $f16
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f18
	nop
	bc1f    89$
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f12
	li      $at, 0x3F000000
	mtc1    $at, $f14
	jal     object_c_802FA618
	nop
	b       108$
	nop
89$:
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA618
	nop
	beqz    $v0, 108$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D8($t7)
	bnez    $t8, 105$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t0)
105$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0108($t2)
108$:
	b       110$
	nop
110$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FEF18:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x0160($t7)
	beqz    $v0, 65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	sw      $t9, 0x00C8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3F99999A
	li.u    $a2, 0x3F8CCCCD
	li.l    $a2, 0x3F8CCCCD
	li.l    $a1, 0x3F99999A
	jal     object_c_802FAAC8
	addiu   $a0, $a0, 0x010C
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, 63$
	nop
	lw      $t1, 0x002C($sp)
	bgez    $t1, 37$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       63$
	sw      $0, 0x014C($t2)
37$:
	mtc1    $0, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	sh      $v0, 0x002A($sp)
	li.u    $a0, 0x50558081
	jal     object_playsound
	li.l    $a0, 0x50558081
	addiu   $a0, $sp, 0x002A
	li      $a1, 0x0800
	jal     object_c_802FA25C
	li      $a2, 0x3000
	li      $at, 0x41C80000
	mtc1    $at, $f6
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lh      $t4, 0x002A($sp)
	li      $t3, 0x00CB
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x0026
	li      $a2, 0x0014
	li      $a3, 0x40200000
	swc1    $f6, 0x0014($sp)
	sw      $t4, 0x001C($sp)
	jal     object_c_8030CD30
	swc1    $f8, 0x0018($sp)
63$:
	b       68$
	nop
65$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_802FF040
object_c_802FF040:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 110$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5063B081
	li.l    $t9, 0x5063B081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t1)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     objlib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t4, $t3, 0x0200
	beqz    $t4, 36$
	nop
	jal     objlib_802A3268
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       48$
	sw      $v0, 0x00C8($t5)
36$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0078
	beqz    $t8, 48$
	nop
	li      $at, 0x40C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
48$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lw      $t4, 0x00F8($t3)
	lwc1    $f16, 0x00A4($t3)
	sll     $t5, $t4, 10
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x3FC00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 86$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 90$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 94$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 98$
	nop
	b       102$
	nop
86$:
	jal     object_c_802FE988
	nop
	b       102$
	nop
90$:
	jal     object_c_802FEB00
	nop
	b       102$
	nop
94$:
	jal     object_c_802FED50
	nop
	b       102$
	nop
98$:
	jal     object_c_802FEF18
	nop
	b       102$
	nop
102$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_803328A8
	la.l    $a0, object_c_803328A8
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
110$:
	b       112$
	nop
112$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FF214
object_c_802FF214:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 107$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338A6C)
	lwc1    $f6, %lo(object_c_80338A6C)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    105$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t4, 0x00010000
	lw      $t0, 0x0144($t9)
	andi    $t1, $t0, 0x00FC
	sra     $t2, $t1, 2
	addiu   $t3, $t2, 0x0003
	div     $0, $t4, $t3
	mflo    $t5
	sw      $t5, 0x0030($sp)
	bnez    $t3, 29$
	nop
	break   7
29$:
	li      $at, -0x0001
	bne     $t3, $at, 35$
	li      $at, 0x80000000
	bne     $t4, $at, 35$
	nop
	break   6
35$:
	li      $t6, 0x0100
	sh      $t6, 0x003A($sp)
	sw      $0, 0x0034($sp)
38$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x003A($sp)
	lw      $t8, 0x0188($t7)
	and     $t0, $t8, $t9
	bnez    $t0, 90$
	nop
	lhu     $t1, 0x0036($sp)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x002E($sp)
	lhu     $t6, 0x0036($sp)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x003A($sp)
	la.u    $t7, o_1300472C
	lw      $t2, 0x0144($t1)
	la.l    $t7, o_1300472C
	li      $t6, 0x00C0
	sra     $t5, $t3, 6
	andi    $t4, $t2, 0x0003
	or      $a0, $t4, $t5
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	lh      $a1, 0x002E($sp)
	move    $a2, $0
	lh      $a3, 0x002C($sp)
	jal     obj_make_off
	sw      $t1, 0x0010($sp)
90$:
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lh      $t2, 0x003A($sp)
	li      $at, 0xFFFF
	addu    $t0, $t8, $t9
	slt     $at, $t0, $at
	sll     $t3, $t2, 1
	sh      $t3, 0x003A($sp)
	bnez    $at, 38$
	sw      $t0, 0x0034($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t1, $t5, 0x0001
	sw      $t1, 0x014C($t4)
105$:
	b       119$
	nop
107$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x457A0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    119$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
119$:
	b       121$
	nop
121$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_802FF408
object_c_802FF408:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0003
	sw      $t8, 0x00F4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_803328D0+0x00)
	lw      $t0, 0x00F4($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(object_c_803328D0+0x00)($at)
	swc1    $f4, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object_c_803328D0+0x04)
	lw      $t3, 0x00F4($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(object_c_803328D0+0x04)($t5)
	sw      $t5, 0x01C4($t2)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_803328C0
	la.l    $a1, object_c_803328C0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(object_c_803328D0+0x08)
	lw      $t8, 0x00F4($t7)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t0, $t0, $t6
	lh      $t0, %lo(object_c_803328D0+0x08)($t0)
	mtc1    $t0, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x019C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t4, %hi(object_c_803328D0+0x0A)
	lw      $t9, 0x00F4($t1)
	sll     $t3, $t9, 2
	subu    $t3, $t3, $t9
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lb      $t4, %lo(object_c_803328D0+0x0A)($t4)
	sw      $t4, 0x0180($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338A70)
	lwc1    $f16, %lo(object_c_80338A70)($at)
	lwc1    $f10, 0x00F8($t5)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00E4($t5)
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF518:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x502F0081
	jal     object_playsound
	li.l    $a0, 0x502F0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338A74)
	lwc1    $f8, %lo(object_c_80338A74)($at)
	lwc1    $f6, 0x00F8($t9)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t9)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF584:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, 25$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a1, 0x0144($t8)
	lw      $a0, 0x0068($t8)
	andi    $t9, $a1, 0x00FC
	move    $a1, $t9
	sra     $t0, $a1, 2
	jal     obj_set_actorflag
	move    $a1, $t0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0068($t1)
	lw      $t2, 0x0144($t1)
	lw      $t7, 0x0188($t5)
	andi    $t3, $t2, 0x00FC
	sll     $t4, $t3, 6
	or      $t6, $t4, $t7
	sw      $t6, 0x0188($t5)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF600:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A78)
	lwc1    $f14, %lo(object_c_80338A78)($at)
	lwc1    $f4, 0x00F8($t6)
	lwc1    $f6, 0x010C($t6)
	mul.s   $f12, $f4, $f6
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338A7C)
	lwc1    $f10, %lo(object_c_80338A7C)($at)
	lwc1    $f8, 0x010C($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    30$
	nop
	li.u    $a2, 0x50200081
	li.l    $a2, 0x50200081
	li      $a0, 0x0002
	jal     object_c_802FA428
	li      $a1, 0x0011
30$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	beqz    $t9, 44$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0200
	jal     object_c_802FB0CC
	lw      $a0, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       147$
	sw      $v0, 0x0108($t1)
44$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338A80)
	lwc1    $f18, %lo(object_c_80338A80)($at)
	lwc1    $f16, 0x015C($t2)
	c.le.s  $f18, $f16
	nop
	bc1f    63$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sw      $t4, 0x0100($t3)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
63$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $s0, $v0
	bnez    $s0, 142$
	sw      $s0, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    102$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x010C($t8)
	c.le.s  $f8, $f10
	nop
	bc1f    92$
	nop
	jal     object_c_802FF518
	nop
92$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x0100($t9)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f16
	b       142$
	swc1    $f16, 0x010C($t1)
102$:
	lui     $at, %hi(object_c_80338A84)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, %lo(object_c_80338A84)($at)
	swc1    $f18, 0x010C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00FC($t4)
	beqz    $t3, 118$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00FC($t5)
	addiu   $t7, $t6, -0x0001
	b       142$
	sw      $t7, 0x00FC($t5)
118$:
	jal     rand
	nop
	andi    $t8, $v0, 0x0003
	beqz    $t8, 135$
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0100($t0)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       142$
	sw      $v0, 0x00FC($t9)
135$:
	jal     object_c_802FF518
	nop
	jal     object_c_802FAA64
	li      $a0, 0x6000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0100($t1)
142$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0100($t2)
147$:
	b       149$
	nop
149$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_802FF868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, 17$
	nop
	jal     object_c_802FF584
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0198($t8)
	jal     object_c_802FB128
	nop
	b       26$
	nop
17$:
	jal     object_c_802FF518
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0108($t1)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF8E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FADD4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       19$
	sw      $0, 0x014C($t9)
14$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     objlib_8029E5EC
	lw      $a0, 0x0100($t0)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_802FF94C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_802FF96C
object_c_802FF96C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FB87C
	lwc1    $f12, 0x00F8($t6)
	beqz    $v0, 104$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	beq     $t8, $t7, 23$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bnez    $t1, 23$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
23$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x001E
	li      $a2, 0x0032
	li      $a3, 0x0005
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x0104
	jal     objlib_802A2320
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338A88)
	lwc1    $f10, %lo(object_c_80338A88)($at)
	lwc1    $f4, 0x00B8($t3)
	lwc1    $f6, 0x00F8($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x0024($sp)
	bc1f    54$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
54$:
	move    $a0, $0
	jal     objlib_8029F514
	lw      $a1, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x014C($t4)
	beqz    $s0, 70$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 74$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 78$
	nop
	b       82$
	nop
70$:
	jal     object_c_802FF600
	nop
	b       82$
	nop
74$:
	jal     object_c_802FF868
	nop
	b       82$
	nop
78$:
	jal     object_c_802FF8E8
	nop
	b       82$
	nop
82$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t9, object_c_803328F4
	la.l    $t9, object_c_803328F4
	lw      $t6, 0x00F4($t5)
	la.u    $a0, object_c_803328C0
	la.l    $a0, object_c_803328C0
	andi    $t8, $t6, 0x0001
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	sll     $t7, $t7, 1
	addu    $a2, $t7, $t9
	jal     object_c_802FB518
	li      $a1, 0x0001
	beqz    $v0, 100$
	nop
	jal     object_c_802FF584
	nop
100$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       108$
	nop
104$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F0($t1)
108$:
	b       110$
	nop
110$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_802FFB38
object_c_802FFB38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       68$
	nop
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, 58$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	lw      $t4, 0x0068($t1)
	sll     $t3, $t2, 2
	lw      $t5, 0x00F4($t4)
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t6, $t3, $t5
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x001C($sp)
	lw      $t8, 0x0068($t7)
	lwc1    $f6, 0x0000($t0)
	lw      $t9, 0x0068($t8)
	lwc1    $f4, 0x00A0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x001C($sp)
	lw      $t1, 0x0068($t2)
	lwc1    $f16, 0x0004($t3)
	lw      $t4, 0x0068($t1)
	lwc1    $f10, 0x00A4($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t9, 0x001C($sp)
	lw      $t6, 0x0068($t5)
	lwc1    $f6, 0x0008($t9)
	lw      $t8, 0x0068($t6)
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t5)
	b       68$
	nop
58$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x0068($t0)
	lw      $t1, 0x01AC($t7)
	beqz    $t1, 68$
	nop
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_802FFC60:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338A8C)
	lwc1    $f6, %lo(object_c_80338A8C)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    76$
	nop
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_alloc
	li      $a1, 0x0064
	sw      $v0, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	beqz    $t7, 76$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x003C($sp)
	sw      $t8, 0x00F4($t9)
	sw      $0, 0x0038($sp)
25$:
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x003C($sp)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	jal     objlib_802A2ED4
	addu    $a0, $t1, $t2
	lw      $t3, 0x0038($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0005
	bnez    $at, 25$
	sw      $t4, 0x0038($sp)
	jal     objlib_802A184C
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130047E4
	la.l    $a2, o_130047E4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	beqz    $s0, 76$
	sw      $s0, 0x0068($t5)
	li      $t6, 0x0001
	sw      $t6, 0x0038($sp)
52$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_130047E4
	la.l    $t9, o_130047E4
	li      $t8, 0x0065
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0038($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	lw      $t0, 0x0038($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0005
	bnez    $at, 52$
	sw      $t1, 0x0038($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	jal     objlib_8029F694
	nop
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_802FFDAC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00B0($t7)
	b       19$
	swc1    $f8, 0x0024($sp)
15$:
	li      $at, 0xC1A00000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
19$:
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
21$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x00F4($t9)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t0, $t2
	addiu   $t4, $t3, -0x0014
	sw      $t4, 0x003C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x001C($sp)
	lw      $t6, 0x00F4($t5)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t9, $t6, $t8
	sw      $t9, 0x0038($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f18, 0x0024($sp)
	mtc1    $0, $f8
	lwc1    $f16, 0x0004($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($t1)
	lw      $t0, 0x0038($sp)
	lwc1    $f6, 0x0004($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    55$
	nop
	mtc1    $0, $f10
	lw      $t2, 0x0038($sp)
	swc1    $f10, 0x0004($t2)
55$:
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x003C($sp)
	lwc1    $f16, 0x0000($t3)
	lwc1    $f18, 0x0000($t4)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	lwc1    $f6, 0x0004($t5)
	lwc1    $f8, 0x0004($t7)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x003C($sp)
	lwc1    $f16, 0x0008($t6)
	lwc1    $f18, 0x0008($t8)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	add.s   $f18, $f8, $f16
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	swc1    $f0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x00FC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    110$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f16, 0x00FC($t1)
	div.s   $f18, $f16, $f4
	swc1    $f18, 0x0028($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0028($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0034($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x0030($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f10, 0x0028($sp)
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x002C($sp)
110$:
	lw      $t0, 0x003C($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0000($t0)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x0034($sp)
	lw      $t2, 0x003C($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0004($t2)
	add.s   $f8, $f6, $f10
	swc1    $f8, 0x0030($sp)
	lw      $t3, 0x003C($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f4, 0x0008($t3)
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f10, $f6, $f6
	nop
	mul.s   $f16, $f8, $f8
	add.s   $f4, $f10, $f16
	mul.s   $f6, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f4, $f6
	swc1    $f0, 0x0028($sp)
	lw      $t5, 0x001C($sp)
	li      $t7, 0x0005
	lui     $t4, %hi(object)
	subu    $t6, $t7, $t5
	mtc1    $t6, $f10
	lw      $t4, %lo(object)($t4)
	cvt.s.w $f16, $f10
	lwc1    $f8, 0x00F8($t4)
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    168$
	nop
	lwc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x0028($sp)
	div.s   $f16, $f10, $f8
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($sp)
168$:
	lwc1    $f10, 0x0034($sp)
	lw      $t8, 0x0038($sp)
	swc1    $f10, 0x0000($t8)
	lwc1    $f8, 0x0030($sp)
	lw      $t9, 0x0038($sp)
	swc1    $f8, 0x0004($t9)
	lwc1    $f16, 0x002C($sp)
	lw      $t1, 0x0038($sp)
	swc1    $f16, 0x0008($t1)
	lw      $t0, 0x001C($sp)
	addiu   $t2, $t0, 0x0001
	slti    $at, $t2, 0x0005
	bnez    $at, 21$
	sw      $t2, 0x001C($sp)
	b       184$
	nop
184$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_8030009C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43160000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F8($t6)
	swc1    $f4, 0x00FC($t6)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803000E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC0800000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	jal     object_c_8030009C
	nop
	move    $a0, $0
	jal     object_c_802FA660
	li      $a1, 0x0100
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0003
	beqz    $t9, 118$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x0160($t1)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t1)
	slti    $at, $v0, 0x0800
	beqz    $at, 101$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, 94$
	nop
	jal     objlib_802A0008
	move    $a0, $0
	beqz    $v0, 87$
	nop
	jal     objlib_8029FE6C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0029
	bnez    $at, 85$
	nop
	li.u    $a0, 0x303A0081
	jal     object_playsound
	li.l    $a0, 0x303A0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t7)
	li      $at, 0x43340000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	li      $at, 0x430C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t1)
	jal     object_c_802F9770
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x010C($t2)
85$:
	b       92$
	nop
87$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0154($t3)
92$:
	b       99$
	nop
94$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t6)
99$:
	b       116$
	nop
101$:
	li.u    $a0, 0x30390081
	jal     object_playsound
	li.l    $a0, 0x30390081
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t8)
116$:
	b       126$
	nop
118$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0190
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
126$:
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803002F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0400
	jal     object_c_802FA6D4
	lw      $a0, 0x010C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1t    66$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0108($t8)
	bne     $t9, $at, 36$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lui     $t1, %hi(object)
	swc1    $f8, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00B0($t1)
	swc1    $f10, 0x00B8($t1)
	li      $at, 0x41F00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0104($t2)
36$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x44610000
	mtc1    $at, $f18
	lwc1    $f4, 0x0100($t3)
	li      $at, 0x435C0000
	mtc1    $at, $f8
	sub.s   $f6, $f18, $f4
	c.lt.s  $f8, $f6
	swc1    $f6, 0x0024($sp)
	bc1f    52$
	nop
	li      $at, 0x435C0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
52$:
	li      $at, 0x435C0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	div.s   $f4, $f16, $f18
	lwc1    $f6, 0x00F8($t4)
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
	b       112$
	nop
66$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	lwc1    $f12, 0x0008($t7)
	jal     ATAN2
	lwc1    $f14, 0x0000($t7)
	sll     $s0, $v0, 16
	sra     $t8, $s0, 16
	move    $s0, $t8
	move    $a0, $s0
	jal     objlib_8029E5EC
	li      $a1, 0x1000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t9)
	c.eq.s  $f10, $f16
	nop
	bc1t    95$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	b       98$
	nop
95$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0150($t0)
98$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x0104($t1)
	swc1    $f18, 0x00FC($t1)
	lui     $t2, %hi(gfx_frame)
	lw      $t2, %lo(gfx_frame)($t2)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 112$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0104($t4)
	neg.s   $f4, $f6
	swc1    $f4, 0x00FC($t4)
112$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001E
	beqz    $at, 120$
	nop
	jal     objlib_8029FE6C
	nop
120$:
	b       122$
	nop
122$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803004F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t7)
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, 37$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, 37$
	nop
	li      $a0, 0x00AD
	jal     camera_8029000C
	move    $a1, $t8
	li      $at, 0x0001
	bne     $v0, $at, 37$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x01AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030059C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_8030009C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 113$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0110($t9)
	bnez    $t0, 46$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0320
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t1)
	beqz    $v0, 41$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x003D
	bnez    $at, 39$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0110($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0110($t4)
	li      $at, 0x43480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0128($t7)
39$:
	b       44$
	nop
41$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
44$:
	b       113$
	nop
46$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0110($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0110($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0110($t2)
	slti    $at, $t3, 0x0006
	beqz    $at, 80$
	nop
	li.u    $a0, 0x30390081
	jal     object_playsound
	li.l    $a0, 0x30390081
	jal     randsign
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t5, $v0, 13
	lw      $t4, 0x0160($t6)
	addu    $t7, $t5, $t4
	sw      $t7, 0x00C8($t6)
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	b       113$
	swc1    $f8, 0x00B0($t0)
80$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x0003
	sw      $t1, 0x01AC($t9)
	lui     $at, %hi(object_c_80338A90)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, %lo(object_c_80338A90)($at)
	swc1    $f10, 0x0164($t2)
	lui     $at, %hi(object_c_80338A94)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, %lo(object_c_80338A94)($at)
	swc1    $f16, 0x016C($t3)
	jal     objlib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00C8($t5)
	jal     objlib_802A1634
	nop
	li      $at, 0x41000000
	mtc1    $at, $f18
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x42480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t7)
113$:
	b       115$
	nop
115$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80300778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01B0($t6)
	bnez    $t7, 31$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0200
	beqz    $t0, 29$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x01B0($t2)
	jal     objlib_802A3268
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338A98)
	lwc1    $f6, %lo(object_c_80338A98)($at)
	lwc1    $f4, 0x00B8($t4)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t4)
29$:
	b       70$
	nop
31$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	andi    $t7, $t6, 0x0003
	beqz    $t7, 70$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x01AC($t9)
	lui     $at, %hi(object_c_80338A9C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, %lo(object_c_80338A9C)($at)
	swc1    $f10, 0x0164($t0)
	lui     $at, %hi(object_c_80338AA0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_c_80338AA0)($at)
	swc1    $f16, 0x016C($t1)
	jal     objlib_802A2748
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	jal     objlib_802A1634
	nop
	li      $at, 0x42480000
	mtc1    $at, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x42F00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803008A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 13$
	nop
	li      $t9, 0x0001
	lui     $at, %hi(camera_8033CBC8)
	sw      $t9, %lo(camera_8033CBC8)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x01AC($t1)
13$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803008EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	li      $at, -0x0001
	bne     $v0, $at, 15$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80300940:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01AC($t6)
	bnez    $t7, 28$
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    28$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lui     $t1, %hi(object)
	swc1    $f8, 0x00B0($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00B0($t1)
	b       286$
	swc1    $f10, 0x00B8($t1)
28$:
	jal     objlib_802A2320
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x01AC($t2)
	sltiu   $at, $t3, 0x0006
	beqz    $at, 82$
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(object_c_80338AA4)
	addu    $at, $at, $t3
	lw      $t3, %lo(object_c_80338AA4)($at)
	jr      $t3
	nop
.globl L803009E8
L803009E8:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x0150($t4)
	beqz    $s0, 52$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 56$
	nop
	b       60$
	nop
52$:
	jal     object_c_803000E4
	nop
	b       60$
	nop
56$:
	jal     object_c_803002F4
	nop
	b       60$
	nop
60$:
	b       82$
	nop
.globl L80300A38
L80300A38:
	jal     object_c_803004F0
	nop
	b       82$
	nop
.globl L80300A48
L80300A48:
	jal     object_c_8030059C
	nop
	b       82$
	nop
.globl L80300A58
L80300A58:
	jal     object_c_80300778
	nop
	b       82$
	nop
.globl L80300A68
L80300A68:
	jal     object_c_803008A8
	nop
	b       82$
	nop
.globl L80300A78
L80300A78:
	jal     object_c_803008EC
	nop
	b       82$
	nop
82$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0068($t5)
	lwc1    $f16, 0x00A0($t5)
	lw      $t6, 0x00F4($t5)
	lwc1    $f18, 0x00A0($t7)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f6, 0x00A4($t8)
	lw      $t0, 0x00F4($t8)
	lwc1    $f8, 0x00A4($t9)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lwc1    $f16, 0x00A8($t1)
	lw      $t3, 0x00F4($t1)
	lwc1    $f18, 0x00A8($t2)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x00F4($t4)
	lwc1    $f6, 0x0000($t7)
	lwc1    $f10, 0x0004($t7)
	lwc1    $f4, 0x0008($t7)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	add.s   $f18, $f8, $f16
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f6, $f18
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x0100($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f8
	lwc1    $f10, 0x00F8($t6)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f4, 0x0100($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    242$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f10, 0x0100($t8)
	div.s   $f8, $f18, $f10
	swc1    $f8, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x002C($sp)
	swc1    $f16, 0x0100($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0028($sp)
	lw      $t1, 0x00F4($t2)
	lwc1    $f4, 0x0000($t1)
	mul.s   $f18, $f4, $f6
	swc1    $f18, 0x0000($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0028($sp)
	lw      $t4, 0x00F4($t3)
	lwc1    $f10, 0x0004($t4)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0004($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0028($sp)
	lw      $t5, 0x00F4($t7)
	lwc1    $f4, 0x0008($t5)
	mul.s   $f18, $f4, $f6
	swc1    $f18, 0x0008($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x01AC($t6)
	bnez    $t9, 204$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	lw      $t2, 0x0068($t8)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f8, 0x00A0($t2)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F4($t1)
	lw      $t4, 0x0068($t1)
	lwc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x00A4($t4)
	add.s   $f18, $f4, $f6
	swc1    $f18, 0x00A4($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00F4($t7)
	lw      $t6, 0x0068($t7)
	lwc1    $f10, 0x0008($t5)
	lwc1    $f8, 0x00A8($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A8($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       240$
	sw      $t9, 0x0108($t0)
204$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x0068($t2)
	lwc1    $f4, 0x00A4($t8)
	swc1    $f4, 0x0024($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lwc1    $f6, 0x00A0($t3)
	lw      $t1, 0x0068($t3)
	lwc1    $f18, 0x0000($t4)
	sub.s   $f10, $f6, $f18
	swc1    $f10, 0x00A0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	lwc1    $f8, 0x00A4($t5)
	lw      $t7, 0x0068($t5)
	lwc1    $f16, 0x0004($t6)
	sub.s   $f4, $f8, $f16
	swc1    $f4, 0x00A4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0024($sp)
	lw      $t0, 0x0068($t9)
	lwc1    $f6, 0x00A4($t0)
	sub.s   $f10, $f6, $f18
	swc1    $f10, 0x00B0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x00F4($t2)
	lwc1    $f8, 0x00A8($t2)
	lw      $t4, 0x0068($t2)
	lwc1    $f16, 0x0008($t8)
	sub.s   $f4, $f8, $f16
	swc1    $f4, 0x00A8($t4)
240$:
	b       245$
	nop
242$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0108($t3)
245$:
	jal     object_c_802FFDAC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332900
	la.l    $a0, object_c_80332900
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, 286$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t5)
	li      $at, 0x43340000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	li      $at, 0x43960000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	li      $at, 0xC0800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, -0x3000
	sw      $t2, 0x010C($t4)
286$:
	b       288$
	nop
288$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80300DD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F6BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_free
	lw      $a1, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01AC($t8)
	beqz    $t9, 21$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80300E40
object_c_80300E40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 24$
	nop
	b       28$
	nop
16$:
	jal     object_c_802FFC60
	nop
	b       28$
	nop
20$:
	jal     object_c_80300940
	nop
	b       28$
	nop
24$:
	jal     object_c_80300DD4
	nop
	b       28$
	nop
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80300ECC
object_c_80300ECC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bnez    $t7, 26$
	nop
	jal     objlib_802A3754
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	beqz    $s0, 24$
	sw      $s0, 0x0100($t8)
	li.u    $a0, 0x3065C081
	jal     object_playsound
	li.l    $a0, 0x3065C081
	li      $at, 0xC28C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t9)
24$:
	b       76$
	nop
26$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41C80000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	beqz    $v0, 40$
	nop
	jal     objlib_802A3754
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       76$
	sw      $v0, 0x0100($t0)
40$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	li      $at, 0xC33E0000
	lwc1    $f6, 0x0104($t1)
	lwc1    $f8, 0x00FC($t1)
	mtc1    $at, $f18
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0104($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x0104($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    76$
	nop
	li      $at, 0xC33E0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	beq     $t5, $t4, 76$
	nop
	jal     Na_Solution
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	lw      $t8, 0x0068($t7)
	sw      $t6, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $t9, 0x0068($t9)
76$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lwc1    $f6, 0x0104($t0)
	c.eq.s  $f6, $f8
	nop
	bc1t    91$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x0104($t1)
	lwc1    $f16, 0x0168($t1)
	add.s   $f18, $f10, $f16
	b       152$
	swc1    $f18, 0x00A4($t1)
91$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	andi    $t5, $t3, 0xFF00
	bnez    $t5, 152$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t4)
	c.lt.s  $f6, $f4
	nop
	bc1f    114$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(object)
	sw      $0, 0x00F4($t7)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00F4($t6)
	b       148$
	sw      $t8, 0x0154($t6)
114$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	lw      $t1, 0x00F8($t9)
	lw      $t4, 0x00F4($t9)
	subu    $t2, $t0, $t1
	sll     $t3, $t2, 16
	sra     $t5, $t3, 16
	addu    $t7, $t4, $t5
	sw      $t7, 0x00F4($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     objlib_802A3674
	lw      $a0, 0x00F4($t8)
	li.u    $at, 0x00030001
	li.l    $at, 0x00030001
	slt     $at, $v0, $at
	bnez    $at, 148$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t0, 0x0154($t6)
	slti    $at, $t0, 0x00C8
	beqz    $at, 148$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     objlib_802A1B8C
	li      $a2, 0x41A00000
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_set_actorflag
	li      $a1, 0x0001
148$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	sw      $t2, 0x00F8($t1)
152$:
	b       154$
	nop
154$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80301148
object_c_80301148:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_1300478C
	jal     objlib_8029F95C
	la.l    $a0, o_1300478C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0068($t6)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80301180
object_c_80301180:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x01B0($t7)
	beqz    $t8, 30$
	nop
	li.u    $a0, 0x300F0081
	jal     objlib_802A37DC
	li.l    $a0, 0x300F0081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	move    $a0, $0
	li      $a1, 0x007F
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80301210
object_c_80301210:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	lw      $t9, 0x0068($t6)
	sll     $t8, $t7, 2
	lw      $t0, 0x00F8($t9)
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t1, $t8, $t0
	sw      $t1, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t3)
	lw      $t4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t5, 0x000C($t4)
	sw      $t5, 0x00D0($t7)
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x000E($t6)
	sw      $t9, 0x00D4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC2160000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t0)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0018($sp)
	lhu     $t2, 0x00D2($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x0028($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0018($sp)
	lhu     $t7, 0x00D2($t5)
	sra     $t6, $t7, 4
	sll     $t9, $t6, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0020($sp)
	lhu     $t0, 0x00D6($t8)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x002C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0020($sp)
	lhu     $t4, 0x00D6($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f16, 0x002C($sp)
	lui     $t9, %hi(object)
	lwc1    $f18, 0x0000($t6)
	lw      $t9, %lo(object)($t9)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t9)
	lw      $t8, 0x001C($sp)
	lwc1    $f8, 0x0028($sp)
	lui     $t0, %hi(object)
	lwc1    $f6, 0x0004($t8)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	lui     $t2, %hi(object)
	lwc1    $f18, 0x0008($t1)
	lw      $t2, %lo(object)($t2)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lwc1    $f6, 0x00A4($t3)
	lwc1    $f8, 0x00F4($t4)
	c.lt.s  $f6, $f8
	nop
	bc1f    130$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0xC1F00000
	mtc1    $at, $f18
	lwc1    $f10, 0x00A4($t5)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x00A4($t5)
	jal     objlib_802A0604
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00E8($t7)
	lwc1    $f6, 0x00A4($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    130$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00E8($t6)
	swc1    $f8, 0x00A4($t6)
130$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x001C($sp)
	lwc1    $f10, 0x00A4($t9)
	swc1    $f10, 0x0004($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $0
	lw      $t1, 0x0068($t0)
	jal     objlib_8029F514
	lw      $a1, 0x00FC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	lw      $t3, 0x0068($t2)
	lwc1    $f18, 0x00FC($t3)
	c.eq.s  $f18, $f16
	nop
	bc1f    152$
	nop
	jal     objlib_8029FE6C
	nop
152$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0004
	lw      $t5, 0x0068($t4)
	lw      $t7, 0x014C($t5)
	bne     $t7, $at, 163$
	nop
	jal     objlib_802A05B4
	nop
	b       169$
	nop
163$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332910
	la.l    $a0, object_c_80332910
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
169$:
	b       171$
	nop
171$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803014CC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $a0, %hi(object_heap)
	lw      $a0, %lo(object_heap)($a0)
	jal     heap_alloc
	li      $a1, 0x0050
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	beqz    $t6, 127$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0030($sp)
	sw      $t7, 0x00F8($t8)
	sw      $0, 0x0034($sp)
15$:
	lw      $t9, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	jal     objlib_802A2ED4
	addu    $a0, $t0, $t1
	lw      $t4, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0030($sp)
	sll     $t5, $t4, 2
	lwc1    $f4, 0x00A0($t2)
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t3, $t5
	swc1    $f4, 0x0000($t6)
	lw      $t9, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	sll     $t0, $t9, 2
	lwc1    $f6, 0x00A4($t7)
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t8, $t0
	swc1    $f6, 0x0004($t1)
	lw      $t3, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0030($sp)
	sll     $t5, $t3, 2
	lwc1    $f8, 0x00A8($t2)
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	addu    $t6, $t4, $t5
	swc1    $f8, 0x0008($t6)
	lw      $t0, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	sll     $t1, $t0, 2
	lw      $t9, 0x00D0($t7)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t8, $t1
	sh      $t9, 0x000C($t2)
	lw      $t6, 0x0034($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0030($sp)
	sll     $t7, $t6, 2
	lw      $t4, 0x00D4($t3)
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t0, $t5, $t7
	sh      $t4, 0x000E($t0)
	lw      $t8, 0x0034($sp)
	addiu   $t1, $t8, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, 15$
	sw      $t1, 0x0034($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t9, -0x0001
	sh      $t9, 0x0040($t2)
	li      $t3, 0x0001
	sw      $t3, 0x0034($sp)
83$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, o_130048E0
	la.l    $t7, o_130048E0
	li      $t5, 0x0058
	sw      $t5, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x0034($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	beqz    $t4, 116$
	nop
	la.u    $a1, 0x0500C874
	la.l    $a1, 0x0500C874
	lw      $a0, 0x002C($sp)
	jal     objlib_8029F59C
	move    $a2, $0
	lw      $t0, 0x0034($sp)
	li      $at, 0x001A
	lw      $t2, 0x002C($sp)
	sll     $t8, $t0, 2
	subu    $t8, $t8, $t0
	sll     $t8, $t8, 3
	subu    $t8, $t8, $t0
	div     $0, $t8, $at
	mfhi    $t1
	addiu   $t9, $t1, -0x0001
	sh      $t9, 0x0040($t2)
116$:
	lw      $t3, 0x0034($sp)
	addiu   $t6, $t3, 0x0001
	slti    $at, $t6, 0x0004
	bnez    $at, 83$
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t7)
	jal     objlib_8029F694
	nop
127$:
	b       129$
	nop
129$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_803016E0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x420C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0020($sp)
11$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x00F8($t8)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $t2, $t9, $t1
	addiu   $t3, $t2, -0x0014
	sw      $t3, 0x003C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0020($sp)
	lw      $t5, 0x00F8($t4)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t5, $t7
	sw      $t8, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	lw      $t9, 0x003C($sp)
	lwc1    $f10, 0x0000($t0)
	lwc1    $f16, 0x0000($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lw      $t1, 0x0038($sp)
	lw      $t2, 0x003C($sp)
	lwc1    $f4, 0x0004($t1)
	lwc1    $f6, 0x0004($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lw      $t3, 0x0038($sp)
	lw      $t4, 0x003C($sp)
	lwc1    $f10, 0x0008($t3)
	lwc1    $f16, 0x0008($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0034($sp)
	neg.s   $f12, $f12
	jal     ATAN2
	neg.s   $f14, $f14
	lw      $t6, 0x003C($sp)
	lh      $t5, 0x000E($t6)
	subu    $t7, $v0, $t5
	sh      $t7, 0x0028($sp)
	addiu   $a0, $sp, 0x0028
	li      $a1, -0x2000
	jal     object_c_802FA25C
	li      $a2, 0x2000
	lw      $t8, 0x003C($sp)
	lh      $t9, 0x0028($sp)
	lw      $t2, 0x0038($sp)
	lh      $t0, 0x000E($t8)
	addu    $t1, $t0, $t9
	sh      $t1, 0x000E($t2)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lw      $t3, 0x003C($sp)
	lh      $t4, 0x000C($t3)
	subu    $t6, $v0, $t4
	sh      $t6, 0x002A($sp)
	addiu   $a0, $sp, 0x002A
	li      $a1, -0x2000
	jal     object_c_802FA25C
	li      $a2, 0x2000
	lw      $t5, 0x003C($sp)
	lh      $t8, 0x002A($sp)
	lw      $t9, 0x0038($sp)
	lh      $t7, 0x000C($t5)
	addu    $t0, $t7, $t8
	sh      $t0, 0x000C($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lhu     $t2, 0x000C($t1)
	lw      $t6, 0x003C($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	lwc1    $f8, 0x0004($t6)
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0004($t1)
	lw      $t5, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x001C($sp)
	lhu     $t7, 0x000C($t5)
	sra     $t8, $t7, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t9, 0x0038($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0024($sp)
	lhu     $t2, 0x000E($t9)
	lw      $t6, 0x003C($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f10, 0x0000($t6)
	mul.s   $f6, $f4, $f8
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0000($t9)
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0024($sp)
	lhu     $t5, 0x000E($t1)
	lw      $t0, 0x003C($sp)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f10, 0x0008($t0)
	mul.s   $f8, $f18, $f4
	sub.s   $f6, $f10, $f8
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x0020($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0004
	bnez    $at, 11$
	sw      $t3, 0x0020($sp)
	b       148$
	nop
148$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_c_80301940:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338ABC)
	lwc1    $f6, %lo(object_c_80338ABC)($at)
	lwc1    $f4, 0x00B8($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x01AE($t7)
	slti    $at, $t8, 0x0002
	beqz    $at, 51$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x01AE($t9)
	bnez    $t0, 28$
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sh      $t1, 0x01AE($t2)
28$:
	lui     $t3, %hi(mario_obj)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, %lo(mario_obj)($t3)
	lwc1    $f16, 0x00A4($t4)
	lwc1    $f10, 0x00A4($t3)
	c.lt.s  $f10, $f16
	nop
	bc1t    45$
	nop
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0096
	beqz    $v0, 49$
	nop
45$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sh      $t5, 0x01AE($t6)
49$:
	b       204$
	nop
51$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80332938+4*-1)
	lw      $t8, 0x0184($t7)
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f12, %lo(object_c_80332938+4*-1)($at)
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	beqz    $t1, 73$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0110($t2)
	addiu   $t4, $t3, -0x0001
	b       137$
	sw      $t4, 0x0110($t2)
73$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338AC0)
	lwc1    $f4, %lo(object_c_80338AC0)($at)
	lwc1    $f18, 0x015C($t5)
	c.le.s  $f4, $f18
	nop
	bc1f    86$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sw      $t7, 0x010C($t6)
86$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x010C
	beqz    $v0, 99$
	nop
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       137$
	sw      $v0, 0x0110($t8)
99$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0184($t9)
	slti    $at, $t0, 0x0004
	beqz    $at, 110$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0160($t1)
	b       137$
	sw      $t3, 0x010C($t1)
110$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x0108($t4)
	beqz    $t2, 121$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0108($t5)
	addiu   $t6, $t7, -0x0001
	b       137$
	sw      $t6, 0x0108($t5)
121$:
	jal     randsign
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $t8, $v0, 16
	sra     $t9, $t8, 16
	lw      $t1, 0x00C8($t3)
	sll     $t0, $t9, 14
	addu    $t4, $t0, $t1
	sw      $t4, 0x010C($t3)
	li      $a0, 0x001E
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0108($t2)
137$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B8($t7)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sh      $t5, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001E($sp)
	jal     objlib_8029E5EC
	lw      $a0, 0x010C($t8)
	lh      $a1, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sll     $t0, $a1, 1
	move    $a1, $t0
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t9)
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0320
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x003C
	beqz    $at, 176$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t3)
	b       204$
	nop
176$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, object_c_80332920
	la.u    $a2, object_c_80332930
	la.l    $a2, object_c_80332930
	la.l    $a0, object_c_80332920
	jal     object_c_802FB518
	lw      $a1, 0x014C($t2)
	beqz    $v0, 204$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t6, 0x014C($t7)
	beq     $t6, $at, 196$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t8)
196$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0110($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t0)
204$:
	b       206$
	nop
206$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80301C88:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $t7, object_c_80332948
	la.l    $t7, object_c_80332948
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x001C
	lw      $t0, 0x0004($t7)
	sw      $at, 0x0000($t6)
	lw      $at, 0x0008($t7)
	sw      $t0, 0x0004($t6)
	sw      $at, 0x0008($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	beqz    $v0, 29$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a1, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0030
	b       35$
	nop
29$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0030($t1)
	lwc1    $f6, 0x0104($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($t1)
35$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($t2)
	c.le.s  $f16, $f10
	nop
	bc1f    112$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x001F
	bnez    $at, 110$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a0, 0x0002
	move    $a1, $0
	lw      $t9, 0x0184($t5)
	li      $a2, 0x00A2
	sll     $t8, $t9, 2
	addu    $a3, $sp, $t8
	jal     objlib_802A4BE4
	lw      $a3, 0x0014($a3)
	beqz    $v0, 110$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t1, %hi(object)
	li      $at, 0x0001
	lw      $t7, 0x0184($t6)
	addiu   $t0, $t7, -0x0001
	sw      $t0, 0x0184($t6)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bne     $t2, $at, 81$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
	jal     objlib_802A05B4
	nop
	b       110$
	nop
81$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00D4($t8)
	sw      $t7, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t6, 0x0184($t0)
	bne     $t6, $at, 110$
	nop
	li.u    $a0, 0x502F6081
	jal     object_playsound
	li.l    $a0, 0x502F6081
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t1)
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t2)
110$:
	b       115$
	nop
112$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
115$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t4)
	b       123$
	nop
123$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80301E84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    24$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t8, 0x00D0($t7)
	lwc1    $f8, 0x00B0($t7)
	mtc1    $t8, $f18
	mul.s   $f16, $f8, $f10
	cvt.s.w $f4, $f18
	sub.s   $f6, $f4, $f16
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	b       27$
	sw      $t0, 0x00D0($t7)
24$:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0190
27$:
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, 47$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	bnez    $t2, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D4($t5)
	sw      $t6, 0x00C8($t5)
47$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332920
	la.l    $a0, object_c_80332920
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80301F70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	bnez    $at, 39$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0014
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 17$
	nop
	li.u    $a0, 0x50744081
	jal     object_playsound
	li.l    $a0, 0x50744081
17$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 35$
	nop
	li      $at, 0x45000000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_b_802F2B88
	li      $a2, 0x0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
35$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t2)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302024:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 16$
	nop
	jal     Na_BgmStop
	li      $a0, 0x0416
	lui     $at, %hi(object_c_80338AC4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_c_80338AC4)($at)
	b       42$
	swc1    $f4, 0x00F4($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, 42$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f8, 0x00F4($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    35$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	b       40$
	sw      $t2, 0x014C($t3)
35$:
	jal     object_c_802F9770
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D0($t4)
40$:
	jal     objlib_802A2644
	nop
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803020E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50706081
	jal     object_playsound
	li.l    $a0, 0x50706081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	lui     $t9, %hi(object)
	swc1    $f4, 0x00B0($t8)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00B0($t9)
	swc1    $f6, 0x00B8($t9)
	lui     $at, %hi(object_c_80338AC8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, %lo(object_c_80338AC8)($at)
	swc1    $f8, 0x0104($t0)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80302154
object_c_80302154:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 12$
	nop
	jal     object_c_803014CC
	nop
	b       122$
	nop
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0005
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, 22$
	nop
	jal     object_c_80302024
	nop
	b       95$
	nop
22$:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $0
	jal     objlib_8029F514
	lw      $a1, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lwc1    $f4, 0x00FC($t1)
	c.eq.s  $f4, $f6
	nop
	bc1t    56$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	slti    $at, $t3, 0x0004
	bnez    $at, 48$
	nop
	li.u    $s0, 0x50712081
	b       50$
	li.l    $s0, 0x50712081
48$:
	li.u    $s0, 0x505C4081
	li.l    $s0, 0x505C4081
50$:
	move    $a0, $0
	li      $a1, 0x000D
	jal     object_c_802FA428
	move    $a2, $s0
	b       58$
	nop
56$:
	jal     objlib_8029FE6C
	nop
58$:
	jal     objlib_802A2320
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, -0x0001
	sltiu   $at, $t6, 0x0005
	beqz    $at, 93$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(object_c_80338ACC)
	addu    $at, $at, $t6
	lw      $t6, %lo(object_c_80338ACC)($at)
	jr      $t6
	nop
.globl L80302278
L80302278:
	jal     object_c_80301940
	nop
	b       93$
	nop
.globl L80302288
L80302288:
	jal     object_c_80301E84
	nop
	b       93$
	nop
.globl L80302298
L80302298:
	jal     object_c_80301C88
	nop
	b       93$
	nop
.globl L803022A8
L803022A8:
	jal     object_c_80301F70
	nop
	b       93$
	nop
.globl L803022B8
L803022B8:
	jal     object_c_80302024
	nop
	b       93$
	nop
93$:
	jal     objlib_802A2348
	li      $a0, -0x004E
95$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x00A0($t7)
	lw      $t8, 0x00F8($t7)
	swc1    $f8, 0x0000($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lw      $t0, 0x00F8($t9)
	swc1    $f10, 0x0004($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00A8($t1)
	lw      $t2, 0x00F8($t1)
	swc1    $f16, 0x0008($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	lw      $t5, 0x00F8($t3)
	sh      $t4, 0x000C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x00F8($t6)
	sh      $t7, 0x000E($t8)
	jal     object_c_803016E0
	nop
122$:
	b       124$
	nop
124$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302358:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, 27$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338AE0)
	lwc1    $f6, %lo(object_c_80338AE0)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    27$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F4($t0)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       31$
	move    $v0, $0
27$:
	b       31$
	li      $v0, 0x0001
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803023E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_c_80302358
	nop
	beqz    $v0, 159$
	nop
	jal     objlib_802A2320
	nop
	li      $at, 0xC1880000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0003
	beqz    $t9, 109$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x008C($t0)
	andi    $t2, $t1, 0x0008
	bnez    $t2, 47$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     object_c_802FA5D0
	nop
	beqz    $v0, 45$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t6)
45$:
	b       52$
	nop
47$:
	li      $at, 0x3F800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AE4)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338AE4)($at)
52$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	beqz    $t9, 66$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0080
	jal     object_c_802FB0CC
	lw      $a0, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       107$
	sw      $v0, 0x0100($t1)
66$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00F8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $s0, $v0
	bnez    $s0, 102$
	sw      $s0, 0x0100($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	beqz    $t5, 86$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x00F4($t3)
	addiu   $t6, $t7, -0x0001
	b       102$
	sw      $t6, 0x00F4($t3)
86$:
	jal     randsign
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t8, $v0, 16
	sra     $t9, $t8, 16
	lw      $t2, 0x00C8($t1)
	sll     $t0, $t9, 13
	addu    $t4, $t0, $t2
	sw      $t4, 0x00F8($t1)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F4($t5)
102$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0080
	jal     objlib_8029E5EC
	lw      $a0, 0x00F8($t7)
107$:
	b       120$
	nop
109$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00EC($t6)
	andi    $t8, $t3, 0x0200
	beqz    $t8, 120$
	nop
	jal     objlib_802A3268
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
120$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	la.u    $a0, object_c_80332954
	la.u    $a2, object_c_80332964
	la.l    $a2, object_c_80332964
	la.l    $a0, object_c_80332954
	jal     object_c_802FB518
	li      $a1, 0x0003
	beqz    $v0, 155$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338AE8)
	lwc1    $f8, %lo(object_c_80338AE8)($at)
	lwc1    $f6, 0x00B8($t2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338AEC)
	lwc1    $f18, %lo(object_c_80338AEC)($at)
	lwc1    $f16, 0x00B0($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00EC($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x00200000
	b       159$
	sw      $t5, 0x0130($t7)
155$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t6, 0x0100
	sw      $t6, 0x0130($t3)
159$:
	b       161$
	nop
161$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030267C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	jal     objlib_8029F4B4
	move    $a0, $0
	li      $at, 0xC2480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0138($t7)
	li      $at, 0x420C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x013C($t8)
	li      $at, 0xC2C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0140($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x006C($t1)
	bnez    $t2, 70$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0068($t8)
	lw      $t9, 0x00C8($t8)
	lw      $t1, 0x00C8($t0)
	lwc1    $f18, 0x00B8($t0)
	subu    $t2, $t9, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t8)
	li      $at, 0x41F00000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00EC($t5)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803027AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_80302358
	nop
	beqz    $v0, 83$
	nop
	jal     objlib_802A2320
	nop
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D0($t7)
	addiu   $t9, $t8, -0x2000
	sw      $t9, 0x00D0($t7)
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 51$
	nop
	li.u    $a0, 0x50591081
	jal     object_playsound
	li.l    $a0, 0x50591081
	jal     objlib_802A04C0
	li      $a0, 0x0056
	lui     $a0, %hi(object)
	la.u    $a1, 0x05016EAC
	la.l    $a1, 0x05016EAC
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029F59C
	move    $a2, $0
	li      $at, 0xC1880000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00DC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       62$
	sw      $0, 0x014C($t5)
51$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0200
	beqz    $t9, 62$
	nop
	jal     objlib_802A3268
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
62$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $a0, object_c_80332954
	la.l    $a0, object_c_80332954
	jal     object_c_802FB938
	lw      $a1, 0x014C($t0)
	beqz    $v0, 83$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	beq     $t2, $t1, 83$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00F4($t4)
	addiu   $t6, $t5, -0x0001
	sw      $t6, 0x00F4($t4)
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80302910
object_c_80302910:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 31$
	nop
	b       35$
	nop
19$:
	jal     object_c_803023E4
	nop
	b       35$
	nop
23$:
	jal     object_c_8030267C
	nop
	b       35$
	nop
27$:
	jal     object_c_803027AC
	nop
	b       35$
	nop
31$:
	jal     object_c_802FBA40
	move    $a0, $0
	b       35$
	nop
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803029B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    33$
	nop
	li      $at, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	la.u    $t9, o_13004988
	la.l    $t9, o_13004988
	li      $t8, 0x008E
	sw      $t8, 0x0018($sp)
	sw      $t9, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t7, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f8, 0x0010($sp)
	jal     objlib_8029F694
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302A54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	li      $at, 0xC0400000
	mtc1    $at, $f8
	b       19$
	swc1    $f8, 0x001C($sp)
15$:
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x001C($sp)
19$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f18, 0x00A4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x00A4($t7)
	add.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    40$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AF0)
	jal     object_c_802FA618
	lwc1    $f14, %lo(object_c_80338AF0)($at)
	b       45$
	nop
40$:
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338AF4)
	jal     object_c_802FA618
	lwc1    $f14, %lo(object_c_80338AF4)($at)
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80302B20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x015C($t6)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    17$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x001C($sp)
17$:
	la.u    $t7, player_data
	la.l    $t7, player_data
	lui     $at, %hi(object_c_80338AF8)
	lwc1    $f18, %lo(object_c_80338AF8)($at)
	lwc1    $f16, 0x0054($t7)
	li      $at, 0x41000000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	swc1    $f4, 0x0024($sp)
	bc1f    33$
	nop
	li      $at, 0x41000000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0024($sp)
33$:
	lui     $at, %hi(object_c_80338AFC)
	lwc1    $f16, %lo(object_c_80338AFC)($at)
	lwc1    $f10, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	li      $a2, 0x42200000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00B8
	li      $at, 0x43960000
	mtc1    $at, $f12
	jal     object_c_80302A54
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	beqz    $t0, 61$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	addiu   $t3, $t2, -0x0001
	b       66$
	sw      $t3, 0x0100($t1)
61$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0600
	jal     object_c_802FA748
	lw      $a0, 0x0160($t4)
66$:
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t6, $f10
	nop
	sh      $t6, 0x0022($sp)
	addiu   $a0, $sp, 0x0022
	li      $a1, 0x00C8
	jal     object_c_802FA25C
	li      $a2, 0x0FA0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0022($sp)
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t7)
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80302C84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	beqz    $t7, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, -0x0001
	b       69$
	sw      $t0, 0x00FC($t8)
15$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	slti    $at, $t2, 0x0003
	beqz    $at, 69$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    69$
	nop
	lw      $a0, 0x0160($t1)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t1)
	slti    $at, $v0, 0x4000
	beqz    $at, 69$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130049C8
	la.l    $a2, o_130049C8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0055
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, 69$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x001C($sp)
	sw      $t4, 0x006C($t5)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	la.u    $a1, 0x050157E4
	la.l    $a1, 0x050157E4
	lw      $a0, 0x001C($sp)
	jal     objlib_8029F59C
	move    $a2, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t8, $t0, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0001
	sw      $t2, 0x0150($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x001E
	sw      $t3, 0x00FC($t4)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80302DB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	li      $a0, 0x0003
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	beqz    $t7, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, -0x0001
	b       47$
	sw      $t0, 0x00FC($t8)
15$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x019C($t1)
	lwc1    $f4, 0x015C($t1)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f4
	nop
	bc1t    39$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f4, $f16
	nop
	bc1f    47$
	nop
	lw      $a0, 0x0160($t1)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t1)
	slti    $at, $v0, 0x2000
	beqz    $at, 47$
	nop
39$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x0150($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0014
	sw      $t4, 0x0100($t5)
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302E84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	jal     object_c_802FA39C
	li      $a1, 0x0002
	beqz    $v0, 13$
	nop
	li.u    $a0, 0x50222081
	jal     object_playsound
	li.l    $a0, 0x50222081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x006C($t6)
13$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 26$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80302F04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a0, 0x60028001
	jal     object_levelsound
	li.l    $a0, 0x60028001
	jal     objlib_802A2320
	nop
	jal     object_c_80302B20
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 21$
	nop
	jal     objlib_802A3268
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
21$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0028
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x00F8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x0150($t0)
	beqz    $s0, 41$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 49$
	nop
	b       53$
	nop
41$:
	jal     object_c_80302C84
	nop
	b       53$
	nop
45$:
	jal     object_c_80302DB0
	nop
	b       53$
	nop
49$:
	jal     object_c_80302E84
	nop
	b       53$
	nop
53$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_8033296C
	la.l    $a0, object_c_8033296C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, 66$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x006C($t2)
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303028
object_c_80303028:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 17$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 21$
	nop
	b       25$
	nop
17$:
	jal     object_c_803029B8
	nop
	b       25$
	nop
21$:
	jal     object_c_80302F04
	nop
	b       25$
	nop
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_803030A8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x0028($sp)
3$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_130049AC
	la.l    $t8, o_130049AC
	li      $t7, 0x008E
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	beqz    $t9, 22$
	nop
	jal     objlib_802A19AC
	lw      $a0, 0x002C($sp)
22$:
	lw      $t0, 0x0028($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0005
	bnez    $at, 3$
	sw      $t1, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, 57$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t6, o_130049AC
	la.l    $t6, o_130049AC
	li      $t5, 0x0057
	sw      $t5, 0x0014($sp)
	sw      $t6, 0x0018($sp)
	li      $a0, 0x0005
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t4, 0x0010($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A0($t7)
	swc1    $f4, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x00F8($t8)
57$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	b       63$
	nop
63$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803031B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    16$
	nop
	jal     objlib_8029F694
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030320C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338B00)
	lwc1    $f6, %lo(object_c_80338B00)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       157$
	sw      $t7, 0x014C($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	beqz    $t0, 78$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x002C($t1)
	lwc1    $f10, 0x0100($t1)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338B04)
	lwc1    $f4, %lo(object_c_80338B04)($at)
	lwc1    $f18, 0x0100($t2)
	lui     $t3, %hi(object)
	lui     $at, %hi(object_c_80338B08)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0100($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_c_80338B08)($at)
	lwc1    $f8, 0x0100($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    51$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t5, %hi(object)
	sw      $0, 0x0154($t4)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	b       76$
	sw      $t6, 0x00FC($t5)
51$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338B0C)
	lwc1    $f18, %lo(object_c_80338B0C)($at)
	lwc1    $f16, 0x0100($t7)
	c.lt.s  $f16, $f18
	nop
	bc1f    73$
	nop
	li.u    $a0, 0x60044001
	jal     object_levelsound
	li.l    $a0, 0x60044001
	li      $at, 0x42F00000
	mtc1    $at, $f4
	li      $a0, 0x000C
	li      $a1, 0x40400000
	li      $a2, 0x0000
	li      $a3, 0xC2480000
	jal     object_a_802C81B4
	swc1    $f4, 0x0010($sp)
	b       76$
	nop
73$:
	li.u    $a0, 0x40050001
	jal     object_levelsound
	li.l    $a0, 0x40050001
76$:
	b       153$
	nop
78$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3C449BA6
	li.l    $a2, 0x3C449BA6
	li      $a1, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	addiu   $t0, $t9, 0x00C8
	sh      $t0, 0x01AC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    116$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	bnez    $at, 114$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0001
	sw      $t4, 0x00FC($t6)
	lui     $at, %hi(object_c_80338B10)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_c_80338B10)($at)
	swc1    $f10, 0x0100($t5)
114$:
	b       119$
	nop
116$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
119$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x01AC($t9)
	lwc1    $f6, 0x0164($t9)
	sra     $t8, $t0, 4
	sll     $t1, $t8, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x01AC($t2)
	lwc1    $f4, 0x016C($t2)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0168($t5)
	swc1    $f8, 0x00F8($t5)
153$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t7)
157$:
	b       159$
	nop
159$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80303498:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sll     $t7, $t6, 11
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	beq     $t9, $t8, 44$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x0074($t1)
	bnez    $t2, 22$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       42$
	sw      $t3, 0x014C($t4)
22$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0068($t7)
	lwc1    $f6, 0x00A4($t9)
	swc1    $f6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0068($t8)
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x00D4($t2)
	sw      $t3, 0x00C8($t1)
42$:
	b       66$
	nop
44$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0144($t4)
	beqz    $t6, 64$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B14)
	lwc1    $f16, %lo(object_c_80338B14)($at)
	lwc1    $f10, 0x015C($t5)
	c.lt.s  $f16, $f10
	nop
	bc1f    62$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t7)
62$:
	b       66$
	nop
64$:
	jal     object_c_8030320C
	nop
66$:
	lhu     $t0, 0x001E($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	sra     $t8, $t0, 4
	sll     $t2, $t8, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x002C($t3)
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x00F4($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41400000
	mtc1    $at, $f6
	lwc1    $f8, 0x002C($t4)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f16, 0x00F8($t4)
	mul.s   $f10, $f8, $f6
	add.s   $f4, $f16, $f18
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x00A4($t4)
	b       99$
	nop
99$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80303634:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       20$
	nop
12$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A184C
	nop
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030369C
object_c_8030369C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 31$
	nop
	b       35$
	nop
19$:
	jal     object_c_803030A8
	nop
	b       35$
	nop
23$:
	jal     object_c_80303498
	nop
	b       35$
	nop
27$:
	jal     object_c_80303634
	nop
	b       35$
	nop
31$:
	jal     object_c_803031B4
	nop
	b       35$
	nop
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303744
object_c_80303744:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       138$
	nop
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338B18)
	lwc1    $f6, %lo(object_c_80338B18)($at)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x002C($t0)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3333
	lw      $t2, 0x0144($t1)
	lw      $t4, 0x0068($t1)
	multu   $t2, $at
	lw      $t5, 0x00D4($t4)
	mflo    $t3
	addu    $t6, $t3, $t5
	sh      $t6, 0x0022($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	lw      $t8, 0x0144($t7)
	sll     $t2, $t0, 11
	sll     $t9, $t8, 14
	addu    $t1, $t9, $t2
	sh      $t1, 0x0020($sp)
	jal     object_set_scale
	lwc1    $f12, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0005
	lw      $t3, 0x0144($t4)
	bne     $t3, $at, 65$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    65$
	nop
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	swc1    $f18, 0x0030($t5)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($t6)
	swc1    $f4, 0x0024($sp)
65$:
	lhu     $t7, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0024($sp)
	sra     $t8, $t7, 4
	sll     $t0, $t8, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x40000000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f4
	lwc1    $f6, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lhu     $t9, 0x0022($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0018($sp)
	sra     $t2, $t9, 4
	sll     $t1, $t2, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f10, $f16
	lwc1    $f8, 0x001C($sp)
	lw      $t3, 0x0068($t4)
	lwc1    $f4, 0x00F4($t3)
	add.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object_c_8033297C)
	lwc1    $f4, 0x0024($sp)
	lw      $t6, 0x0144($t5)
	lw      $t8, 0x0068($t5)
	lwc1    $f10, 0x001C($sp)
	addu    $t7, $t7, $t6
	lb      $t7, %lo(object_c_8033297C)($t7)
	lwc1    $f8, 0x00F8($t8)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f16, $f8, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t5)
	lhu     $t0, 0x0022($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0018($sp)
	sra     $t9, $t0, 4
	sll     $t2, $t9, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f4, $f8
	lwc1    $f18, 0x001C($sp)
	lw      $t3, 0x0068($t1)
	lwc1    $f6, 0x00A8($t3)
	add.s   $f16, $f10, $f6
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0068($t4)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00D4($t4)
138$:
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80303984
object_c_80303984:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 17$
	nop
	lui     $t8, %hi(first_msg)
	lb      $t8, %lo(first_msg)($t8)
	li      $at, 0x0001
	beq     $t8, $at, 15$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
15$:
	b       33$
	nop
17$:
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	la.u    $t1, o_13004988
	la.l    $t1, o_13004988
	li      $t0, 0x008E
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f4, 0x0010($sp)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80303A20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	li      $at, 0xC4080000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    52$
	nop
	lui     $at, %hi(object_c_80338B1C)
	lwc1    $f8, %lo(object_c_80338B1C)($at)
	c.lt.s  $f4, $f8
	nop
	bc1f    52$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    52$
	nop
	li      $at, 0xC4FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x00A8($t6)
	c.lt.s  $f6, $f18
	nop
	bc1f    52$
	nop
	li      $at, 0xC3310000
	mtc1    $at, $f4
	move    $t7, $0
	c.lt.s  $f18, $f4
	nop
	bc1f    39$
	nop
	li      $t7, 0x0001
39$:
	beqz    $t7, 52$
	nop
	beqz    $t7, 52$
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, 52$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80303B08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, 61$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	li      $at, 0x44E10000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00A0($t8)
	li      $at, 0x45160000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00A4($t9)
	li      $at, 0xC5160000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00A8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x4000
	sw      $t1, 0x00C4($t2)
	li      $at, 0x42700000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t3)
	li      $at, 0x447A0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00FC($t4)
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	la.u    $t7, o_13004988
	la.l    $t7, o_13004988
	li      $t6, 0x008E
	sw      $t6, 0x0018($sp)
	sw      $t7, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t5, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f18, 0x0010($sp)
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80303C14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x60028001
	jal     object_levelsound
	li.l    $a0, 0x60028001
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00D4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	beqz    $t0, 44$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42700000
	li      $a2, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338B20)
	lwc1    $f6, %lo(object_c_80338B20)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f6, $f4
	nop
	bc1f    39$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
39$:
	li      $t2, -0x3000
	sh      $t2, 0x001E($sp)
	li      $t3, -0x6000
	b       172$
	sh      $t3, 0x001C($sp)
44$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	lwc1    $f8, 0x00F8($t4)
	c.eq.s  $f8, $f10
	nop
	bc1t    161$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B24)
	lwc1    $f18, %lo(object_c_80338B24)($at)
	lwc1    $f16, 0x015C($t5)
	c.lt.s  $f18, $f16
	nop
	bc1f    70$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00C4($t6)
	sh      $t8, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0160($t7)
	b       159$
	sh      $t9, 0x001C($sp)
70$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00FC($t0)
	lwc1    $f6, 0x015C($t0)
	mov.s   $f12, $f4
	jal     ATAN2
	sub.s   $f14, $f6, $f4
	li      $t1, 0x4000
	subu    $t2, $t1, $v0
	sh      $t2, 0x001A($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	lw      $t5, 0x0160($t3)
	subu    $t6, $t4, $t5
	sll     $t8, $t6, 16
	sra     $t7, $t8, 16
	bgez    $t7, 92$
	nop
	lh      $t9, 0x001A($sp)
	subu    $t0, $0, $t9
	sh      $t0, 0x001A($sp)
92$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x001A($sp)
	lw      $t2, 0x0160($t1)
	addu    $t4, $t2, $t3
	sh      $t4, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	sh      $t6, 0x001E($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43480000
	li      $a2, 0x42480000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    159$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0104($t7)
	bnez    $t9, 130$
	nop
	move    $a0, $0
	li      $a1, 0x0F22
	jal     Na_BgmPlay
	move    $a2, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x0104($t1)
130$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    159$
	nop
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lw      $a1, 0x00D4($t2)
	jal     objlib_802A11A8
	lw      $a0, 0x00D4($t3)
	slti    $at, $v0, 0x7001
	bnez    $at, 159$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
159$:
	b       172$
	nop
161$:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0022
	beqz    $v0, 172$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x0100($t5)
172$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x07D0
	li      $a2, 0x0190
	jal     objlib_8029E530
	lh      $a0, 0x01AC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AC($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a0, 0x001E($sp)
	jal     object_c_802FA660
	lh      $a1, 0x01AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x07D0
	li      $a2, 0x0064
	jal     objlib_8029E530
	lh      $a0, 0x01AE($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $v0, 0x01AE($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a0, 0x001C($sp)
	jal     objlib_8029E5EC
	lh      $a1, 0x01AE($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F8($t3)
	jal     objlib_802A2644
	nop
	b       208$
	nop
208$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80303F64
object_c_80303F64:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 136$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0014
	li      $a2, 0x0028
	li      $a3, 0x0004
	jal     object_c_802FAD34
	addiu   $a0, $a0, 0x00F4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, 49$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x014C($t1)
	beqz    $s0, 35$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 43$
	nop
	b       47$
	nop
35$:
	jal     object_c_80303A20
	nop
	b       47$
	nop
39$:
	jal     object_c_80303B08
	nop
	b       47$
	nop
43$:
	jal     object_c_80303C14
	nop
	b       47$
	nop
47$:
	b       136$
	nop
49$:
	la.u    $t2, camdata
	la.l    $t2, camdata
	lui     $at, %hi(object_c_80338B28)
	lwc1    $f4, %lo(object_c_80338B28)($at)
	lwc1    $f6, 0x000C($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	la.u    $t3, camdata
	la.l    $t3, camdata
	lui     $at, %hi(object_c_80338B2C)
	lwc1    $f16, %lo(object_c_80338B2C)($at)
	lwc1    $f10, 0x000C($t3)
	c.lt.s  $f10, $f16
	nop
	bc1t    72$
	nop
	lwc1    $f18, 0x0034($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    76$
	nop
72$:
	jal     objlib_8029F6BC
	nop
	b       136$
	nop
76$:
	jal     objlib_8029F694
	nop
	la.u    $t4, camdata
	la.l    $t4, camdata
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x000C($t4)
	swc1    $f6, 0x00A0($t5)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0010($t6)
	swc1    $f8, 0x00A4($t7)
	la.u    $t8, camdata
	la.l    $t8, camdata
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0014($t8)
	swc1    $f10, 0x00A8($t9)
	la.u    $t0, camdata
	la.l    $t0, camdata
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0000($t0)
	swc1    $f16, 0x0164($t1)
	la.u    $t2, camdata
	la.l    $t2, camdata
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0008($t2)
	swc1    $f18, 0x016C($t3)
	jal     objlib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	subu    $t4, $0, $v0
	sw      $t4, 0x00D4($t5)
	jal     objlib_802A1634
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, camdata
	la.l    $t7, camdata
	lwc1    $f6, 0x0004($t7)
	lwc1    $f4, 0x00A4($t6)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00D0($t8)
	lui     $at, %hi(object_c_80338B30)
	lwc1    $f8, %lo(object_c_80338B30)($at)
	lwc1    $f10, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t9)
136$:
	b       138$
	nop
138$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_803041A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	sw      $0, 0x001C($sp)
	jal     objlib_8029F914
	lw      $a0, 0x0024($sp)
	sll     $t6, $v0, 2
	subu    $t6, $t6, $v0
	lui     $t7, %hi(obj_rootlist)
	lw      $t7, %lo(obj_rootlist)($t7)
	sll     $t6, $t6, 2
	addu    $t6, $t6, $v0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	beq     $t1, $t2, 45$
	nop
25$:
	lw      $t3, 0x0020($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, 38$
	nop
	lh      $t6, 0x0074($t3)
	beqz    $t6, 38$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0068($t8)
	lw      $t9, 0x0020($sp)
	sw      $t9, 0x001C($sp)
38$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x0020($sp)
	lw      $t2, 0x0018($sp)
	lw      $t4, 0x0020($sp)
	bne     $t2, $t4, 25$
	nop
45$:
	b       49$
	lw      $v0, 0x001C($sp)
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80304274:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(object_c_80361474)
	lw      $t6, %lo(object_c_80361474)($t6)
	sw      $t6, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, 36$
	nop
10$:
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, 30$
	nop
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(object_c_80338B34)
	lwc1    $f6, %lo(object_c_80338B34)($at)
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    30$
	nop
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    30$
	nop
	lw      $t1, 0x0020($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0020($sp)
30$:
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0068($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	bnez    $t5, 10$
	nop
36$:
	lw      $t6, 0x0020($sp)
	beqz    $t6, 89$
	nop
	jal     randf
	nop
	lw      $t7, 0x0020($sp)
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f0, $f16
	trunc.w.s $f6, $f18
	mfc1    $t9, $f6
	nop
	sw      $t9, 0x001C($sp)
	lui     $t0, %hi(object_c_80361474)
	lw      $t0, %lo(object_c_80361474)($t0)
	sw      $t0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t1, 0x0024($sp)
	beqz    $t1, 89$
	nop
57$:
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x00F4($t2)
	bnez    $t3, 83$
	nop
	lw      $t4, 0x0024($sp)
	lui     $at, %hi(object_c_80338B38)
	lwc1    $f8, %lo(object_c_80338B38)($at)
	lwc1    $f4, 0x015C($t4)
	c.lt.s  $f4, $f8
	nop
	bc1f    83$
	nop
	lwc1    $f10, 0x0028($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    83$
	nop
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	bne     $t5, $t6, 80$
	nop
	b       93$
	lw      $v0, 0x0024($sp)
80$:
	lw      $t7, 0x0020($sp)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0020($sp)
83$:
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0068($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	bnez    $t1, 57$
	nop
89$:
	b       93$
	move    $v0, $0
	b       93$
	nop
93$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803043F8
object_c_803043F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	bne     $t7, $t6, 15$
	nop
	la.u    $a0, o_13004A58
	jal     object_c_803041A0
	la.l    $a0, o_13004A58
	lui     $at, %hi(object_c_80361474)
	sw      $v0, %lo(object_c_80361474)($at)
	lui     $at, %hi(object_c_80361478)
	b       25$
	sw      $0, %lo(object_c_80361478)($at)
15$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	blez    $t9, 25$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F4($t0)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332984+0x03)
	sb      $t6, %lo(object_c_80332984+0x03)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332984+0x06)
	sb      $t7, %lo(object_c_80332984+0x06)($at)
	la.u    $a0, object_c_80332984+0x00
	jal     objlib_802A32AC
	la.l    $a0, object_c_80332984+0x00
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803044C0
object_c_803044C0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803044DC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 13$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	b       30$
	swc1    $f4, 0x0034($sp)
13$:
	la.u    $t8, player_data
	la.l    $t8, player_data
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    26$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	b       30$
	swc1    $f10, 0x0034($sp)
26$:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0034($sp)
30$:
	jal     object_c_80304274
	lwc1    $f12, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	move    $s0, $v0
	beqz    $s0, 134$
	sw      $s0, 0x00F4($t9)
	li.u    $a0, 0x90678081
	jal     object_playsound
	li.l    $a0, 0x90678081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	lw      $t2, 0x00F4($t1)
	sw      $t0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x00A0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object)
	lw      $t6, 0x00F4($t5)
	lwc1    $f20, 0x00A4($t6)
	swc1    $f20, 0x00E8($t5)
	lw      $t7, %lo(object)($t7)
	swc1    $f20, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	lwc1    $f4, 0x00A8($t9)
	swc1    $f4, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00F4($t0)
	lw      $t4, 0x0160($t2)
	sw      $t4, 0x00C8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1t    91$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0034($sp)
	c.lt.s  $f16, $f10
	nop
	bc1t    91$
	nop
	jal     randsign
	nop
	bgez    $v0, 111$
	nop
91$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t5)
	li      $at, 0x40400000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t9)
	move    $a0, $0
	jal     object_c_80304474
	li      $a1, 0x000A
	b       130$
	nop
111$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
	li      $at, 0xC0800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t4)
	move    $a0, $0
	jal     object_c_80304474
	li      $a1, 0x0014
130$:
	jal     objlib_8029F694
	nop
	jal     objlib_802A05D4
	nop
134$:
	b       136$
	nop
136$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_80304710:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42440000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    33$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t8)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 33$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803047AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, 40$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 36$
	nop
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	slti    $at, $v0, 0x4000
	beqz    $at, 36$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13004A78
	la.l    $a2, o_13004A78
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A1
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	beqz    $t8, 36$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x006C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	b       40$
	sw      $t1, 0x014C($t2)
36$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80304864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0003
	bnez    $v0, 12$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x4000
	beqz    $v0, 28$
	nop
12$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0005
	sw      $t6, 0x014C($t7)
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0xC0C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t9)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803048EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0008
	jal     object_c_802FA39C
	li      $a1, 0x000A
	beqz    $v0, 13$
	nop
	li.u    $a0, 0x50220081
	jal     object_playsound
	li.l    $a0, 0x50220081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x006C($t6)
13$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 21$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304958:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA32C
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f14
	jal     ATAN2
	lwc1    $f12, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	subu    $t7, $0, $v0
	sw      $t7, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    41$
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    41$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0006
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t2)
	li      $a0, -0x0050
	jal     object_c_80304474
	li      $a1, 0x000F
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304A14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x001E
	lw      $t8, 0x00F4($t7)
	sw      $t6, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	jal     objlib_802A05B4
	nop
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304A70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 16$
	nop
	jal     objlib_8029F6BC
	nop
	jal     object_c_80304A14
	nop
	b       22$
	nop
16$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC0800000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00B0
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80304AE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    14$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	b       44$
	nop
14$:
	jal     object_c_802FA32C
	li      $a0, 0x0004
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    44$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f16, 0x00E8($t8)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lui     $t2, %hi(object)
	swc1    $f6, 0x00E4($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00E4($t2)
	swc1    $f8, 0x00B0($t2)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80304BA8
object_c_80304BA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x50244081
	li.l    $t6, 0x50244081
	sw      $t6, 0x01C4($t7)
	jal     objlib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00E8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0008
	beqz    $at, 59$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_c_80338B3C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_c_80338B3C)($at)
	jr      $t0
	nop
.globl L80304C14
L80304C14:
	jal     object_c_803044DC
	nop
	b       59$
	nop
.globl L80304C24
L80304C24:
	jal     object_c_80304710
	nop
	b       59$
	nop
.globl L80304C34
L80304C34:
	jal     object_c_803047AC
	nop
	b       59$
	nop
.globl L80304C44
L80304C44:
	jal     object_c_80304864
	nop
	b       59$
	nop
.globl L80304C54
L80304C54:
	jal     object_c_803048EC
	nop
	b       59$
	nop
.globl L80304C64
L80304C64:
	jal     object_c_80304958
	nop
	b       59$
	nop
.globl L80304C74
L80304C74:
	jal     object_c_80304A70
	nop
	b       59$
	nop
.globl L80304C84
L80304C84:
	jal     object_c_80304AE0
	nop
	b       59$
	nop
59$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332998
	la.l    $a0, object_c_80332998
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	beqz    $v0, 152$
	nop
	lui     $t2, %hi(object_c_80361478)
	lw      $t2, %lo(object_c_80361478)($t2)
	beqz    $t2, 127$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_8036147C)
	lwc1    $f16, %lo(object_c_8036147C)($at)
	lwc1    $f10, 0x00A0($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80361480)
	lwc1    $f6, %lo(object_c_80361480)($at)
	lwc1    $f4, 0x00A4($t4)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80361484)
	lwc1    $f16, %lo(object_c_80361484)($at)
	lwc1    $f10, 0x00A8($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f18, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x0018($sp)
	lui     $at, %hi(object_c_80338B5C)
	lwc1    $f6, %lo(object_c_80338B5C)($at)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    125$
	nop
	lui     $t6, %hi(object_c_80361478)
	lw      $t6, %lo(object_c_80361478)($t6)
	li      $at, 0x0007
	bne     $t6, $at, 123$
	nop
	jal     Na_Solution
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003FDC
	la.l    $a2, o_13003FDC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00D4
123$:
	b       127$
	nop
125$:
	lui     $at, %hi(object_c_80361478)
	sw      $0, %lo(object_c_80361478)($at)
127$:
	lui     $t7, %hi(object_c_80361478)
	lw      $t7, %lo(object_c_80361478)($t7)
	lui     $at, %hi(object_c_80361478)
	addiu   $t8, $t7, 0x0001
	sw      $t8, %lo(object_c_80361478)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_8036147C)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, %lo(object_c_8036147C)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80361480)
	lwc1    $f18, 0x00A4($t0)
	swc1    $f18, %lo(object_c_80361480)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80361484)
	lwc1    $f16, 0x00A8($t1)
	swc1    $f16, %lo(object_c_80361484)($at)
	jal     object_c_80304A14
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x006C($t2)
152$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       156$
	nop
156$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80304E28:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x42A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t6)
	li      $at, 0xC2480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x013C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0140($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x006C($t0)
	bnez    $t1, 79$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x015C($t2)
	swc1    $f10, 0x0004($sp)
	li      $at, 0x44160000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    39$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0004($sp)
39$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B60)
	lwc1    $f8, %lo(object_c_80338B60)($at)
	lw      $t6, 0x0068($t5)
	lwc1    $f6, 0x0004($sp)
	lw      $t7, 0x00C8($t6)
	mul.s   $f10, $f6, $f8
	addiu   $t8, $t7, 0x01F4
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f4, $f18, $f10
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x00C8($t5)
	li      $at, 0x42200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t1)
	lui     $at, %hi(object_c_80338B64)
	lwc1    $f18, %lo(object_c_80338B64)($at)
	lwc1    $f16, 0x0004($sp)
	li      $at, 0x41000000
	mtc1    $at, $f4
	mul.s   $f10, $f16, $f18
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00EC($t3)
79$:
	b       81$
	nop
81$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_80304F74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x000B
	beqz    $t8, 16$
	nop
	la.u    $a0, object_c_803329B8
	jal     objlib_802A32AC
	la.l    $a0, object_c_803329B8
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
16$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80304FD4
object_c_80304FD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_803329A8
	la.l    $a0, object_c_803329A8
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	b       27$
	nop
19$:
	jal     object_c_80304E28
	nop
	b       27$
	nop
23$:
	jal     object_c_80304F74
	nop
	b       27$
	nop
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030505C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0088($t7)
	addiu   $t9, $t8, 0x0063
	sw      $t9, 0x0088($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030508C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0200
	bnez    $t0, 23$
	nop
	li      $a0, 0x0096
	jal     objlib_802A36A4
	li      $a1, 0x0028
	beqz    $v0, 23$
	nop
	jal     object_c_8030505C
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305100
object_c_80305100:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 69$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0188($t9)
	sra     $t1, $t0, 16
	andi    $t2, $t1, 0xFFFF
	andi    $t3, $t2, 0x000F
	sh      $t3, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0188($t4)
	sra     $t6, $t5, 16
	andi    $t7, $t6, 0xFFFF
	andi    $t8, $t7, 0x0070
	sra     $t9, $t8, 4
	sh      $t9, 0x01B0($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B0($t0)
	addiu   $t2, $t1, -0x0001
	sh      $t2, 0x01AC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_803329CC)
	lh      $t5, 0x01B0($t3)
	sll     $t6, $t5, 2
	addu    $a0, $a0, $t6
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_803329CC)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0218($t7)
	lh      $t8, 0x001E($sp)
	lui     $a0, %hi(object_c_803329DC)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_803329DC)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00FC($t4)
	lh      $t1, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t2, $t1, -0x0004
	sh      $t2, 0x01AE($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00C8($t3)
	sw      $t5, 0x0144($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lh      $t7, 0x01B0($t6)
	bne     $t7, $at, 69$
	nop
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t8)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030522C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sdc1    $f24, 0x0020($sp)
	sdc1    $f22, 0x0018($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	sw      $t7, 0x0100($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0088($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x00FC($t0)
	lh      $t2, 0x0002($t1)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f20, $f4
	swc1    $f20, 0x0164($t0)
	lw      $t3, %lo(object)($t3)
	swc1    $f20, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t6, %hi(object)
	lw      $t5, 0x00FC($t4)
	lh      $t7, 0x0004($t5)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f20, $f6
	swc1    $f20, 0x0168($t4)
	lw      $t6, %lo(object)($t6)
	swc1    $f20, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t2, %hi(object)
	lw      $t9, 0x00FC($t8)
	lh      $t1, 0x0006($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f20, $f8
	swc1    $f20, 0x016C($t8)
	lw      $t2, %lo(object)($t2)
	swc1    $f20, 0x00A8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0144($t0)
	sw      $t3, 0x00D4($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f10
	lui     $t7, %hi(object)
	lui     $t4, %hi(object)
	swc1    $f10, 0x00F4($t5)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(object)
	lui     $t9, %hi(object)
	lwc1    $f24, 0x00F4($t7)
	swc1    $f24, 0x00B4($t7)
	lw      $t4, %lo(object)($t4)
	mov.s   $f22, $f24
	mov.s   $f20, $f22
	swc1    $f22, 0x00B0($t4)
	lw      $t6, %lo(object)($t6)
	swc1    $f20, 0x00AC($t6)
	lw      $t9, %lo(object)($t9)
	swc1    $f20, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x01B2($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x01AC($t8)
	beqz    $t2, 82$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00D8($t3)
82$:
	li      $t0, 0x0001
	sw      $t0, 0x003C($sp)
84$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0164($t5)
	lw      $a2, 0x0168($t5)
	jal     object_c_802F9A28
	lw      $a3, 0x016C($t5)
	lw      $t7, 0x003C($sp)
	addiu   $t4, $t7, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, 84$
	sw      $t4, 0x003C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t9)
	b       102$
	nop
102$:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0010($sp)
	ldc1    $f22, 0x0018($sp)
	ldc1    $f24, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

object_c_803053DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 21$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0015
	bnez    $at, 19$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
19$:
	b       32$
	nop
21$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, 29$
	nop
	jal     object_c_8030505C
	nop
29$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80305474:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	bnez    $t7, 12$
	nop
	li.u    $a0, 0x400C0001
	jal     object_levelsound
	li.l    $a0, 0x400C0001
	b       20$
	nop
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AE($t8)
	bnez    $t9, 20$
	nop
	li.u    $a0, 0x40020001
	jal     object_levelsound
	li.l    $a0, 0x40020001
20$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0001
	lw      $t1, 0x0104($t0)
	bne     $t1, $at, 37$
	nop
	lw      $t2, 0x0188($t0)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	andi    $t5, $t4, 0x0100
	bnez    $t5, 37$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	b       228$
	sw      $t6, 0x014C($t7)
37$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, 78$
	nop
	lh      $t1, 0x01AC($t8)
	bnez    $t1, 78$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0001
	lw      $t2, 0x0104($t0)
	beq     $t2, $at, 54$
	nop
	li      $at, 0x0003
	bne     $t2, $at, 76$
	nop
54$:
	li.u    $a0, 0x303D0081
	jal     object_playsound
	li.l    $a0, 0x303D0081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0001
	lw      $t5, 0x0104($t4)
	bne     $t5, $at, 72$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       76$
	sw      $0, 0x014C($t6)
72$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t9)
76$:
	b       136$
	nop
78$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t1, 0x01AC($t8)
	bnez    $t1, 90$
	nop
	li      $at, 0x41200000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338B68)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338B68)($at)
	b       96$
	nop
90$:
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
96$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x43960000
	addiu   $a0, $t2, 0x00F4
	jal     object_c_802FA544
	lw      $a2, 0x00B8($t2)
	beqz    $v0, 136$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x0164($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	swc1    $f4, 0x0168($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A8($t6)
	swc1    $f6, 0x016C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0088($t7)
	addiu   $t8, $t9, 0x0001
	andi    $t1, $t8, 0xFFFF
	sw      $t1, 0x0088($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x0005
	lw      $a1, 0x0164($t0)
	lw      $a2, 0x0168($t0)
	jal     object_c_802F9A28
	lw      $a3, 0x016C($t0)
136$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a0, $0
	lw      $a1, 0x00A0($t2)
	lw      $a2, 0x00A4($t2)
	jal     object_c_802F9A28
	lw      $a3, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0108($t3)
	sw      $t4, 0x00C4($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x010C($t5)
	sw      $t6, 0x00C8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0188($t9)
	sra     $t1, $t8, 16
	andi    $t7, $t1, 0xFFFF
	andi    $t0, $t7, 0x0400
	bnez    $t0, 191$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00C8($t2)
	addiu   $t3, $t4, 0x4000
	sh      $t3, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a0, 0x001C($sp)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t6)
	li      $at, 0x0014
	div     $0, $v0, $at
	mflo    $t5
	sh      $t5, 0x001A($sp)
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00D4($t9)
	sh      $t8, 0x001E($sp)
	addiu   $a0, $sp, 0x001A
	li      $a1, 0x0064
	jal     object_c_802FA25C
	li      $a2, 0x01F4
	lh      $a0, 0x001C($sp)
	jal     object_c_802FA748
	lh      $a1, 0x001A($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001E($sp)
	lh      $t7, 0x00D6($t1)
	subu    $t2, $t7, $t0
	sw      $t2, 0x0118($t1)
191$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0188($t4)
	sra     $t6, $t3, 16
	andi    $t5, $t6, 0xFFFF
	andi    $t9, $t5, 0x0800
	beqz    $t9, 228$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a0, 0x00C4($t8)
	jal     objlib_802A11A8
	lw      $a1, 0x00D8($t8)
	li      $at, 0x0014
	div     $0, $v0, $at
	mflo    $t7
	sh      $t7, 0x0018($sp)
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00D8($t0)
	sh      $t2, 0x001E($sp)
	addiu   $a0, $sp, 0x0018
	li      $a1, 0x0064
	jal     object_c_802FA25C
	li      $a2, 0x01F4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0018($sp)
	jal     object_c_802FA7BC
	lw      $a0, 0x00C4($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x001E($sp)
	lh      $t3, 0x00DA($t4)
	subu    $t5, $t3, $t6
	sw      $t5, 0x011C($t4)
228$:
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0214($t9)
	beq     $t8, $t7, 239$
	nop
	jal     object_c_8030508C
	nop
	b       248$
	nop
239$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0011
	lh      $t1, 0x0002($t2)
	and     $t3, $t1, $at
	sh      $t3, 0x0002($t2)
248$:
	b       250$
	nop
250$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030586C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, 10$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
10$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803058A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A25B4
	nop
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	beq     $t7, $t8, 15$
	nop
	jal     object_c_8030508C
	nop
	b       18$
	nop
15$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80305904:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $0, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F8($t8)
	lw      $t9, 0x00D8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00D8($t8)
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t3)
	bne     $t4, $t5, 60$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	lw      $t7, 0x0160($t6)
	lw      $t0, 0x00D4($t6)
	lwc1    $f10, 0x015C($t6)
	li      $at, 0xC0800000
	subu    $t9, $t7, $t0
	andi    $t1, $t9, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t8, $t2, 2
	addu    $t4, $t8, $t3
	lwc1    $f8, 0x0000($t4)
	mtc1    $at, $f18
	lhu     $t0, 0x00CA($t6)
	mul.s   $f16, $f8, $f10
	li      $at, 0xC2480000
	sra     $t9, $t0, 4
	sll     $t1, $t9, 2
	addu    $t2, $t1, $t3
	mul.s   $f4, $f16, $f18
	lwc1    $f18, 0x0000($t2)
	lwc1    $f16, 0x00B8($t6)
	trunc.w.s $f6, $f4
	mul.s   $f4, $f16, $f18
	mfc1    $t7, $f6
	mtc1    $at, $f6
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x0024($sp)
60$:
	li      $at, 0x40C00000
	mtc1    $at, $f4
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lw      $a2, 0x0024($sp)
	li      $a3, 0x40A00000
	swc1    $f4, 0x0010($sp)
	addiu   $a0, $t5, 0x00D8
	addiu   $a1, $t5, 0x00F8
	jal     object_c_802FAC18
	swc1    $f6, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC2C80000
	li      $a2, 0x42C80000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00F8
	b       81$
	nop
81$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80305A58
object_c_80305A58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338B6C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338B6C)($at)
	jr      $t7
	nop
.globl L80305A90
L80305A90:
	jal     object_c_8030522C
	nop
	b       34$
	nop
.globl L80305AA0
L80305AA0:
	jal     object_c_803053DC
	nop
	b       34$
	nop
.globl L80305AB0
L80305AB0:
	jal     object_c_80305474
	nop
	b       34$
	nop
.globl L80305AC0
L80305AC0:
	jal     object_c_8030586C
	nop
	b       34$
	nop
.globl L80305AD0
L80305AD0:
	jal     object_c_803058A4
	nop
	b       34$
	nop
34$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	bnez    $t9, 43$
	nop
	jal     object_c_80305904
	nop
	b       80$
	nop
43$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B0($t0)
	bnez    $t1, 80$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x01B2($t2)
	bnez    $t3, 68$
	nop
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t5, 0x0214($t4)
	bne     $t5, $t2, 68$
	nop
	li      $at, 0xC1000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sh      $t7, 0x01B2($t8)
68$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x0110($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
80$:
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305BB0
object_c_80305BB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0068($t6)
	lh      $t7, 0x0146($t6)
	lh      $t9, 0x008A($t8)
	subu    $t0, $t7, $t9
	addiu   $t1, $t0, -0x0001
	sh      $t1, 0x001E($sp)
	lh      $t2, 0x001E($sp)
	blez    $t2, 16$
	nop
	slti    $at, $t2, 0x0006
	bnez    $at, 19$
	nop
16$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80305C14
object_c_80305C14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A00)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A00)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, 25$
	nop
	li      $at, 0x44FA0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0194($t2)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80305C90
object_c_80305C90:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sw      $t7, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F4($t8)
	lw      $t9, 0x00D0($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00D0($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     objlib_802A3634
	lwc1    $f12, 0x00F4($t3)
	li      $at, 0x41200000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    29$
	nop
	li.u    $a0, 0x400B0001
	jal     object_levelsound
	li.l    $a0, 0x400B0001
29$:
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0214($t4)
	bne     $t5, $t6, 85$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0160($t7)
	lw      $t9, 0x00C8($t7)
	lwc1    $f16, 0x015C($t7)
	subu    $t1, $t0, $t9
	andi    $t2, $t1, 0xFFFF
	sra     $t8, $t2, 4
	sll     $t3, $t8, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0028($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x00F4($t4)
	mul.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    66$
	nop
	lui     $at, %hi(object_c_80338B80)
	lwc1    $f18, %lo(object_c_80338B80)($at)
	lwc1    $f16, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	b       71$
	swc1    $f4, 0x0028($sp)
66$:
	lui     $at, %hi(object_c_80338B84)
	lwc1    $f8, %lo(object_c_80338B84)($at)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
71$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f16, 0x00F4($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00F4($t5)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC2480000
	li      $a2, 0x42480000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x00F4
	b       97$
	nop
85$:
	lui     $t6, %hi(object)
	li      $at, 0x40400000
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	mtc1    $at, $f8
	move    $a2, $0
	li      $a3, 0x40C00000
	addiu   $a0, $t6, 0x00D0
	addiu   $a1, $t6, 0x00F4
	swc1    $f6, 0x0010($sp)
	jal     object_c_802FAC18
	swc1    $f8, 0x0014($sp)
97$:
	b       99$
	nop
99$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80305E2C
object_c_80305E2C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A20+0x00)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A20+0x00)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	sw      $0, 0x0028($sp)
16$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_c_80332A20+0x08)
	la.u    $t4, o_13004B6C
	sw      $t0, 0x0010($sp)
	lw      $t1, 0x0144($t0)
	la.l    $t4, o_13004B6C
	sw      $t4, 0x0018($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332A20+0x08)($t3)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t3, 0x0014($sp)
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	beqz    $t5, 51$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A20+0x04)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A20+0x04)($a0)
	lw      $t9, 0x002C($sp)
	sw      $v0, 0x0218($t9)
51$:
	lw      $t0, 0x0028($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0004
	bnez    $at, 16$
	sw      $t1, 0x0028($sp)
	b       58$
	nop
58$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80305F24
object_c_80305F24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0068($t6)
	lw      $t7, 0x0144($t6)
	lw      $t0, 0x00D8($t9)
	sll     $t8, $t7, 14
	addu    $t1, $t8, $t0
	sh      $t1, 0x001A($sp)
	lhu     $t2, 0x001A($sp)
	lui     $at, %hi(math_cos)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x001C($sp)
	lw      $t7, 0x0068($t5)
	lhu     $t6, 0x00CA($t7)
	sra     $t9, $t6, 4
	sll     $t8, $t9, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	mul.s   $f18, $f10, $f16
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f10, 0x00A0($t7)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t5)
	lhu     $t0, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lui     $t3, %hi(object)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lw      $t3, %lo(object)($t3)
	mul.s   $f8, $f6, $f10
	lw      $t4, 0x0068($t3)
	lwc1    $f18, 0x00A4($t4)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x001C($sp)
	lw      $t9, 0x0068($t6)
	lhu     $t8, 0x00CA($t9)
	sra     $t7, $t8, 4
	sll     $t5, $t7, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	mul.s   $f10, $f4, $f6
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x00A8($t9)
	mul.s   $f16, $f8, $f18
	add.s   $f6, $f4, $f16
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t6)
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80306084
object_c_80306084:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 1
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E27C
	lw      $a0, %lo(object)($a0)
	swc1    $f0, 0x0034($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	bnez    $t2, 131$
	nop
	lwc1    $f16, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    131$
	nop
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lwc1    $f6, 0x00A4($t1)
	li      $at, 0x447A0000
	lwc1    $f4, 0x00A4($t3)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    131$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	beqz    $t5, 58$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, -0x0001
	b       131$
	sw      $t8, 0x00F8($t6)
58$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t2, o_13004BA8
	la.l    $t2, o_13004BA8
	li      $t0, 0x0054
	sw      $t0, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x07D0
	move    $a3, $0
	jal     obj_make_off
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	beqz    $t3, 131$
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	li      $at, 0x41E00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t5, 0x002C($sp)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0028($sp)
	lhu     $t8, 0x00CA($t7)
	lwc1    $f4, 0x00A0($t7)
	lw      $t0, 0x002C($sp)
	sra     $t6, $t8, 4
	sll     $t9, $t6, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A0($t0)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0028($sp)
	lhu     $t3, 0x00CA($t2)
	lwc1    $f18, 0x00A8($t2)
	lw      $t5, 0x002C($sp)
	sra     $t1, $t3, 4
	sll     $t4, $t1, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t5)
	la.u    $a2, o_13004BD4
	la.l    $a2, o_13004BD4
	lw      $a0, 0x002C($sp)
	jal     obj_make_here
	li      $a1, 0x0055
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t6)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00F8($t9)
131$:
	b       133$
	nop
133$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_803062A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332A48+0x03)
	sb      $t6, %lo(object_c_80332A48+0x03)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332A48+0x05)
	sb      $t7, %lo(object_c_80332A48+0x05)($at)
	lb      $t8, 0x0023($sp)
	lui     $at, %hi(object_c_80332A48+0x06)
	sb      $t8, %lo(object_c_80332A48+0x06)($at)
	la.u    $a0, object_c_80332A48+0x00
	jal     objlib_802A32AC
	la.l    $a0, object_c_80332A48+0x00
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80306304:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50288081
	jal     object_playsound
	li.l    $a0, 0x50288081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00EC($t8)
	li      $at, 0xC2200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80306364:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332A38
	la.l    $a1, object_c_80332A38
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	bnez    $t8, 18$
	nop
	lw      $t9, 0x00EC($t6)
	andi    $t0, $t9, 0x0008
	beqz    $t0, 33$
	nop
18$:
	li.u    $a0, 0x5029A081
	jal     object_makesound
	li.l    $a0, 0x5029A081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	b       158$
	sw      $t2, 0x014C($t3)
33$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t7, $t5, 0x0003
	beqz    $t7, 148$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0100($t8)
	bnez    $t6, 95$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0104($t1)
	lui     $t2, %hi(object)
	li      $at, 0x40400000
	add.s   $f8, $f4, $f6
	mtc1    $at, $f16
	swc1    $f8, 0x0104($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x0104($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    69$
	nop
	li.u    $a0, 0x502E8081
	jal     object_playsound
	li.l    $a0, 0x502E8081
	b       72$
	nop
69$:
	li.u    $a0, 0x5029A081
	jal     object_makesound
	li.l    $a0, 0x5029A081
72$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	sw      $t5, 0x00C8($t4)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
	li      $at, 0xC2200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t8)
95$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338B88)
	lwc1    $f8, %lo(object_c_80338B88)($at)
	lwc1    $f6, 0x0104($t6)
	li      $at, 0x41700000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x00FC($t6)
	sub.s   $f18, $f16, $f10
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00FC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338B8C)
	lwc1    $f16, %lo(object_c_80338B8C)($at)
	lwc1    $f8, 0x00FC($t9)
	lwc1    $f4, 0x00F8($t9)
	mul.s   $f10, $f8, $f16
	add.s   $f18, $f4, $f10
	swc1    $f18, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338B90)
	lwc1    $f8, %lo(object_c_80338B90)($at)
	lwc1    $f6, 0x00F8($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    130$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	b       146$
	sw      $t1, 0x014C($t2)
130$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338B94)
	lwc1    $f4, %lo(object_c_80338B94)($at)
	lwc1    $f16, 0x00F8($t3)
	c.lt.s  $f4, $f16
	nop
	bc1f    146$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_c_80338B98)
	lwc1    $f18, %lo(object_c_80338B98)($at)
	lwc1    $f10, 0x00FC($t5)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x00B0($t5)
146$:
	b       158$
	nop
148$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3C03126F
	li.l    $a2, 0x3C03126F
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0100($t4)
158$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f8, 0x00F8($t7)
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00F8($t8)
	swc1    $f10, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f18, 0x0104($t6)
	c.eq.s  $f18, $f6
	nop
	bc1f    183$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f8, 0x0024($sp)
	mul.s   $f4, $f8, $f16
	swc1    $f4, 0x0024($sp)
183$:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f18, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sub.s   $f20, $f10, $f18
	lui     $t0, %hi(object)
	swc1    $f20, 0x0034($t9)
	lw      $t0, %lo(object)($t0)
	swc1    $f20, 0x002C($t0)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       197$
	nop
197$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030668C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0019
	li      $a1, 0x003C
	jal     object_c_803062A8
	li      $a2, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x00F4($t7)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803066D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0065
	bnez    $at, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       61$
	nop
14$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0007
	beqz    $at, 33$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, 30$
	nop
	li      $a0, -0x0014
	li      $a1, 0x000A
	jal     object_c_803062A8
	li      $a2, 0x001E
30$:
	la.u    $a0, object_c_80332A5C
	jal     objlib_802A32AC
	la.l    $a0, object_c_80332A5C
33$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338B9C)
	lwc1    $f6, %lo(object_c_80338B9C)($at)
	lwc1    $f4, 0x0030($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    49$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338BA0)
	lwc1    $f10, %lo(object_c_80338BA0)($at)
	lwc1    $f8, 0x0030($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0030($t3)
49$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f4, 0x0030($t4)
	lui     $t5, %hi(object)
	sub.s   $f20, $f18, $f4
	swc1    $f20, 0x0034($t4)
	lw      $t5, %lo(object)($t5)
	swc1    $f20, 0x002C($t5)
	jal     objlib_802A31E0
	nop
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803067E8
object_c_803067E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 12$
	nop
	jal     object_c_803066D8
	nop
	b       47$
	nop
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0030($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t8)
	jal     objlib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $s0, 0x014C($t9)
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 43$
	nop
	b       47$
	nop
35$:
	jal     object_c_80306304
	nop
	b       47$
	nop
39$:
	jal     object_c_80306364
	nop
	b       47$
	nop
43$:
	jal     object_c_8030668C
	nop
	b       47$
	nop
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803068C0
object_c_803068C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       49$
	nop
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x00A4($t0)
	lwc1    $f6, 0x00E8($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    32$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x001C($sp)
32$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     objlib_8029F120
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x001C($sp)
	lw      $t3, 0x0068($t2)
	lwc1    $f4, 0x00E8($t3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $a0, $t4
	jal     objlib_8029F3A8
	lw      $a1, 0x0068($t4)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_8030699C
object_c_8030699C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A70)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A70)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, 21$
	nop
	li      $t2, 0x0004
	b       25$
	sw      $t2, 0x00F8($t0)
21$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x00F8($t4)
25$:
	lui     $t5, %hi(object_80361258)
	lh      $t5, %lo(object_80361258)($t5)
	lui     $t6, %hi(object_c_80332A78)
	lui     $t7, %hi(object)
	addu    $t6, $t6, $t5
	lbu     $t6, %lo(object_c_80332A78)($t6)
	lw      $t7, %lo(object)($t7)
	sw      $t6, 0x00FC($t7)
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80306A38
object_c_80306A38:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, 150$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	lw      $t9, 0x00FC($t7)
	slt     $at, $t9, $t8
	beqz    $at, 150$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	beqz    $t1, 35$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object)
	lw      $t3, 0x0104($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0104($t2)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	bnez    $t6, 33$
	nop
	li.u    $a0, 0x80590081
	jal     object_playsound
	li.l    $a0, 0x80590081
33$:
	b       148$
	nop
35$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x0100($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    120$
	nop
	lwc1    $f8, 0x00A4($t7)
	lwc1    $f10, 0x0168($t7)
	c.le.s  $f10, $f8
	nop
	bc1f    120$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x47800000
	mtc1    $at, $f10
	lw      $t9, 0x00F4($t8)
	lw      $t0, 0x00F8($t8)
	mtc1    $t9, $f16
	mtc1    $t0, $f4
	cvt.s.w $f18, $f16
	cvt.s.w $f6, $f4
	div.s   $f8, $f18, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f4, $f16
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x002C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00D8($t4)
	sw      $t2, 0x0028($sp)
	lw      $a0, 0x002C($sp)
	jal     object_c_802FA7BC
	li      $a1, 0x04B0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x00D8($t5)
	subu    $t9, $t6, $t7
	sw      $t9, 0x011C($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x011C($t8)
	bnez    $t0, 118$
	nop
	li.u    $a0, 0x80400081
	jal     object_playsound
	li.l    $a0, 0x80400081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F4($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t4, $t3, 0x0001
	div     $0, $t4, $t2
	mfhi    $t6
	sw      $t6, 0x00F4($t1)
	bnez    $t2, 97$
	nop
	break   7
97$:
	li      $at, -0x0001
	bne     $t2, $at, 103$
	li      $at, 0x80000000
	bne     $t4, $at, 103$
	nop
	break   6
103$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, 118$
	nop
	li      $a0, 0x0005
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0007
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
118$:
	b       148$
	nop
120$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f18, 0x0100($t8)
	add.s   $f8, $f18, $f6
	swc1    $f8, 0x0100($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lwc1    $f10, 0x00A4($t0)
	lwc1    $f16, 0x0100($t0)
	add.s   $f20, $f10, $f16
	swc1    $f20, 0x00A4($t0)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	c.le.s  $f4, $f20
	nop
	bc1f    148$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0168($t4)
	swc1    $f18, 0x00A4($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t2, 0x0006
	sw      $t2, 0x0104($t6)
148$:
	b       156$
	nop
150$:
	li      $at, 0xC0A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0100($t1)
156$:
	b       158$
	nop
158$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80306CC4
object_c_80306CC4:
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, 20$
	nop
	lui     $t7, %hi(object_80361258)
	lh      $t7, %lo(object_80361258)($t7)
	lui     $at, %hi(object_c_80332A7C)
	lui     $t9, %hi(object)
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(object_c_80332A7C)($at)
	lw      $t9, %lo(object)($t9)
	swc1    $f4, 0x0100($t9)
	lui     $at, %hi(object_c_80338BA4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, %lo(object_c_80338BA4)($at)
	b       25$
	swc1    $f6, 0x00F8($t0)
20$:
	lui     $at, %hi(object_c_80338BA8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, %lo(object_c_80338BA8)($at)
	swc1    $f8, 0x00F8($t1)
25$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80306D38
object_c_80306D38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	li      $at, 0x0003
	beq     $t6, $at, 119$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00FC($t7)
	swc1    $f4, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	beqz    $t9, 29$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x0108($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0108($t0)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0108($t3)
	bnez    $t4, 29$
	nop
	li.u    $a0, 0x30380081
	jal     object_playsound
	li.l    $a0, 0x30380081
29$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	beqz    $t6, 40$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0104($t7)
	addiu   $t9, $t8, -0x0001
	b       117$
	sw      $t9, 0x0104($t7)
40$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	lwc1    $f6, 0x00F4($t1)
	lwc1    $f8, 0x00F8($t1)
	mul.s   $f10, $f6, $f8
	c.lt.s  $f16, $f10
	nop
	bc1f    55$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00F4($t2)
	neg.s   $f4, $f18
	swc1    $f4, 0x00F4($t2)
55$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0100($t0)
	lwc1    $f8, 0x00F4($t0)
	lwc1    $f16, 0x00FC($t0)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00FC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	lwc1    $f4, 0x00FC($t3)
	c.eq.s  $f4, $f6
	nop
	bc1f    111$
	nop
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, 106$
	nop
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	mfhi    $t5
	beqz    $t5, 89$
	nop
	li      $at, 0x41500000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	b       95$
	swc1    $f8, 0x0100($t6)
89$:
	li      $at, 0x42280000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0100($t8)
95$:
	jal     rand
	nop
	andi    $t9, $v0, 0x0001
	bnez    $t9, 106$
	nop
	li      $a0, 0x0005
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0104($t7)
106$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0104($t1)
	addiu   $t0, $t2, 0x000F
	sw      $t0, 0x0108($t1)
111$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F8($t3)
	lwc1    $f18, 0x00FC($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00F8($t3)
117$:
	b       119$
	nop
119$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00F8($t4)
	trunc.w.s $f8, $f6
	mfc1    $t6, $f8
	nop
	sw      $t6, 0x00D8($t4)
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80306F48
object_c_80306F48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332A8C)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0001
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332A8C)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0218($t0)
	la.u    $a0, 0x07016840
	jal     segment_to_virtual
	la.l    $a0, 0x07016840
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00F4($t1)
	la.u    $a0, 0x07016904
	jal     segment_to_virtual
	la.l    $a0, 0x07016904
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F8($t2)
	lui     $t3, %hi(object_80361258)
	lh      $t3, %lo(object_80361258)($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $s0, %hi(object_c_80332A94)
	sll     $t4, $t3, 1
	addu    $s0, $s0, $t4
	lh      $s0, %lo(object_c_80332A94)($s0)
	lw      $t6, 0x00F8($t5)
	lui     $t7, %hi(object)
	sh      $s0, 0x0000($t6)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	sh      $s0, 0x0000($t8)
	lui     $at, %hi(object_c_80361488)
	sw      $0, %lo(object_c_80361488)($at)
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307010
object_c_80307010:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object_c_80361488)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(object_c_80361488)($t6)
	beq     $t6, $t7, 11$
	nop
	bnez    $t6, 88$
	nop
11$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80361488)
	sw      $t8, %lo(object_c_80361488)($at)
	li.u    $a0, 0x40080001
	jal     object_levelsound
	li.l    $a0, 0x40080001
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, 88$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x0104($t0)
	slt     $at, $t2, $t1
	beqz    $at, 60$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	beqz    $v0, 58$
	nop
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0007
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	jal     randsign
	nop
	mtc1    $v0, $f4
	li      $at, 0x42480000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
58$:
	b       72$
	nop
60$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0154($t7)
	slti    $at, $t6, 0x0006
	bnez    $at, 72$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x41200000
	addiu   $a0, $t8, 0x00FC
	jal     object_c_802FA544
	lw      $a1, 0x0100($t8)
72$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t4, %hi(object)
	lwc1    $f16, 0x00FC($t9)
	lw      $t3, 0x00F8($t9)
	trunc.w.s $f18, $f16
	mfc1    $s0, $f18
	nop
	sll     $t1, $s0, 16
	move    $s0, $t1
	sra     $t2, $s0, 16
	move    $s0, $t2
	sh      $s0, 0x0000($t3)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	sh      $s0, 0x0000($t5)
88$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_c_80338BAC)
	lwc1    $f8, %lo(object_c_80338BAC)($at)
	lw      $t6, 0x00F4($t7)
	lh      $t8, 0x0000($t6)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t7)
	b       101$
	nop
101$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803071B8
object_c_803071B8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $a0, %hi(object_c_80332A9C)
	lui     $t8, %hi(object)
	sll     $t7, $t6, 1
	addu    $a0, $a0, $t7
	lh      $a0, %lo(object_c_80332A9C)($a0)
	lw      $t8, %lo(object)($t8)
	bnez    $a0, 17$
	sw      $a0, 0x00F4($t8)
	li      $at, 0x437A0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00FC($t9)
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x4000
	lw      $t4, 0x00C8($t3)
	subu    $t6, $t5, $t4
	sw      $t6, 0x00C8($t3)
	b       32$
	nop
32$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_80307240:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	beqz    $t7, 59$
	nop
	lw      $t8, 0x0154($t6)
	slt     $at, $t7, $t8
	beqz    $at, 59$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	beqz    $t0, 23$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t3, $t2, -0x0001
	b       59$
	sw      $t3, 0x00F8($t1)
23$:
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, 49$
	nop
	jal     rand
	nop
	andi    $s0, $v0, 0xFFFF
	andi    $t5, $s0, 0x0003
	lui     $t6, %hi(object_c_80332AA4)
	addu    $t6, $t6, $t5
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lb      $t6, %lo(object_c_80332AA4)($t6)
	sw      $t6, 0x00F4($t8)
	jal     rand
	nop
	andi    $t7, $v0, 0x0001
	bnez    $t7, 49$
	nop
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00F8($t9)
49$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
	li      $at, 0xC1000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t3)
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80307348:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BB0)
	lwc1    $f6, %lo(object_c_80338BB0)($at)
	lwc1    $f4, 0x0100($t6)
	lui     $t7, %hi(object)
	mtc1    $0, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0100($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0100($t7)
	c.lt.s  $f16, $f10
	nop
	bc1f    40$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, 30$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	b       40$
	swc1    $f18, 0x0100($t3)
30$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	li      $at, 0x41E80000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t6)
40$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_803073F8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	swc1    $f4, 0x0100($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0100($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_80307434:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00FC($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    23$
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f8
	mtc1    $at, $f18
	lwc1    $f10, 0x0104($t6)
	sub.s   $f6, $f18, $f4
	sub.s   $f16, $f8, $f10
	mtc1    $0, $f10
	mul.s   $f8, $f16, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    48$
	nop
23$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC1000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0100($t7)
	c.lt.s  $f4, $f18
	nop
	bc1f    48$
	nop
	li      $at, 0x41000000
	mtc1    $at, $f16
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    48$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	b       107$
	swc1    $f6, 0x0100($t0)
48$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00FC($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    61$
	nop
	lui     $at, %hi(object_c_80338BB4)
	lwc1    $f4, %lo(object_c_80338BB4)($at)
	b       64$
	swc1    $f4, 0x001C($sp)
61$:
	lui     $at, %hi(object_c_80338BB8)
	lwc1    $f18, %lo(object_c_80338BB8)($at)
	swc1    $f18, 0x001C($sp)
64$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f10
	lwc1    $f16, 0x0100($t2)
	mul.s   $f8, $f16, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    79$
	nop
	lui     $at, %hi(object_c_80338BBC)
	lwc1    $f18, %lo(object_c_80338BBC)($at)
	lwc1    $f4, 0x001C($sp)
	mul.s   $f16, $f4, $f18
	swc1    $f16, 0x001C($sp)
79$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0100($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0100($t3)
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, 107$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f4, 0x0104($t5)
	lwc1    $f18, 0x00FC($t5)
	mul.s   $f16, $f4, $f18
	c.lt.s  $f16, $f6
	nop
	bc1f    107$
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0003
	bnez    $t6, 107$
	nop
	jal     object_c_803073F8
	nop
107$:
	b       109$
	nop
109$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803075F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, 24$
	nop
	li      $at, 0xC0A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    24$
	nop
	jal     object_c_803073F8
	nop
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80307670
object_c_80307670:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00FC($t6)
	swc1    $f4, 0x0104($t6)
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00FC($t7)
	lwc1    $f8, 0x0100($t7)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 31$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 43$
	nop
	b       47$
	nop
31$:
	jal     object_c_80307240
	nop
	b       47$
	nop
35$:
	jal     object_c_80307348
	nop
	b       47$
	nop
39$:
	jal     object_c_80307434
	nop
	b       47$
	nop
43$:
	jal     object_c_803075F8
	nop
	b       47$
	nop
47$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t9)
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       55$
	nop
55$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307760
object_c_80307760:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332AA8)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0002
	sra     $t9, $t8, 1
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332AA8)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0218($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(object_c_80332AB0)
	lw      $t3, 0x0144($t2)
	andi    $t4, $t3, 0x0001
	addu    $t5, $t5, $t4
	lb      $t5, %lo(object_c_80332AB0)($t5)
	mtc1    $t5, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t2)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803077E0
object_c_803077E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lui     $s0, %hi(object_80361258)
	lh      $s0, %lo(object_80361258)($s0)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 19$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 60$
	nop
	b       62$
	nop
19$:
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $t8, %hi(object_c_80332AB4)
	lui     $t9, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332AB4)($t8)
	lw      $t9, %lo(object)($t9)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F8($t9)
	b       62$
	nop
33$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x42480000
	addiu   $a0, $t0, 0x00F8
	jal     object_c_802FA544
	lw      $a1, 0x00FC($t0)
	beqz    $v0, 60$
	nop
	jal     rand
	nop
	jal     randsign
	andi    $s1, $v0, 0xFFFF
	li      $at, 0x43480000
	mtc1    $at, $f8
	li      $at, 0x0007
	div     $0, $s1, $at
	mfhi    $t1
	mtc1    $t1, $f10
	mtc1    $v0, $f4
	lui     $t2, %hi(object)
	cvt.s.w $f16, $f10
	lw      $t2, %lo(object)($t2)
	cvt.s.w $f6, $f4
	mul.s   $f18, $f8, $f16
	nop
	mul.s   $f10, $f6, $f18
	swc1    $f10, 0x00FC($t2)
60$:
	b       62$
	nop
62$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00F4($t3)
	lwc1    $f16, 0x00F8($t3)
	mul.s   $f4, $f8, $f16
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x0118($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D4($t6)
	b       79$
	nop
79$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl object_c_80307930
object_c_80307930:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332AB8)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332AB8)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A50000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t0)
	lui     $t1, %hi(object_80361258)
	lh      $t1, %lo(object_80361258)($t1)
	li      $at, 0x0003
	bne     $t1, $at, 32$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43A50000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803079C8
object_c_803079C8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	lw      $t8, 0x00FC($t6)
	slt     $at, $t8, $t7
	beqz    $at, 64$
	nop
	jal     objlib_802A2644
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a0, $t9, 0x00A4
	lw      $a1, 0x0168($t9)
	jal     object_c_802FA2BC
	lw      $a2, 0x00F4($t9)
	beqz    $v0, 64$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	xori    $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t3, %hi(object_80361258)
	lh      $t3, %lo(object_80361258)($t3)
	lw      $t6, 0x00F8($t5)
	lui     $s0, %hi(object_c_80332AC0+2*1)
	sll     $t4, $t3, 3
	andi    $t7, $t6, 0x0001
	sll     $t8, $t7, 2
	addu    $t9, $t4, $t8
	addu    $s0, $s0, $t9
	lh      $s0, %lo(object_c_80332AC0+2*1)($s0)
	bgez    $s0, 46$
	sw      $s0, 0x00FC($t5)
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0006
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00FC($t1)
46$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t2, %hi(object_80361258)
	lh      $t2, %lo(object_80361258)($t2)
	lw      $t6, 0x00F8($t3)
	lui     $t8, %hi(object_c_80332AC0+2*0)
	sll     $t0, $t2, 3
	sll     $t7, $t6, 2
	addu    $t4, $t0, $t7
	addu    $t8, $t8, $t4
	lh      $t8, %lo(object_c_80332AC0+2*0)($t8)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B0($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80307AE4
object_c_80307AE4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	beqz    $t9, 15$
	nop
	mtc1    $t9, $f4
	li      $at, 0x42C80000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	b       19$
	swc1    $f10, 0x0004($sp)
15$:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0004($sp)
19$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f18, 0x00A4($t0)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F8($t0)
	b       27$
	nop
27$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80307B58
object_c_80307B58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object_80361258)
	lh      $t7, %lo(object_80361258)($t7)
	lui     $t8, %hi(object_c_80332AE0)
	lui     $t6, %hi(object)
	addu    $t8, $t8, $t7
	lb      $t8, %lo(object_c_80332AE0)($t8)
	lw      $t6, %lo(object)($t6)
	mtc1    $t8, $f6
	lwc1    $f4, 0x00F4($t6)
	cvt.s.w $f8, $f6
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00B0($t6)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	li      $at, 0x0002
	bne     $t9, $at, 55$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x00FC($t0)
	slt     $at, $t2, $t1
	beqz    $at, 44$
	nop
	jal     randsign
	nop
	mtc1    $v0, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00F4($t3)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0006
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       55$
	sw      $0, 0x0154($t5)
44$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0005
	beqz    $at, 55$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t6)
55$:
	jal     objlib_802A2644
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a0, $t9, 0x00A4
	lw      $a1, 0x0168($t9)
	jal     object_c_802FA2BC
	lw      $a2, 0x00F8($t9)
	beqz    $v0, 70$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00F4($t0)
	neg.s   $f8, $f4
	swc1    $f8, 0x00F4($t0)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80307C88
object_c_80307C88:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_80361258)
	lh      $t9, %lo(object_80361258)($t9)
	lw      $t7, 0x0144($t6)
	lui     $t2, %hi(object_c_80332AE8)
	sll     $t0, $t9, 1
	sll     $t8, $t7, 3
	addu    $t1, $t8, $t0
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_c_80332AE8)($t2)
	sw      $t2, 0x00F4($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_80332AE4)
	lui     $t7, %hi(object)
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 1
	addu    $a0, $a0, $t5
	lh      $a0, %lo(object_c_80332AE4)($a0)
	sw      $a0, 0x0108($t3)
	lw      $t7, %lo(object)($t7)
	sw      $a0, 0x00FC($t7)
	b       26$
	nop
26$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80307CF8
object_c_80307CF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, 16$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0104($t0)
16$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, 88$
	nop
	lw      $a0, 0x00F8($t3)
	jal     object_c_802FA748
	li      $a1, 0x00C8
	beqz    $v0, 88$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	lw      $t7, 0x00F4($t5)
	slt     $at, $t7, $t6
	beqz    $at, 88$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	lw      $t1, 0x00FC($t8)
	addu    $t2, $t9, $t1
	sw      $t2, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
	lui     $t4, %hi(object_80361258)
	lh      $t4, %lo(object_80361258)($t4)
	li      $at, 0x0002
	bne     $t4, $at, 88$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0104($t3)
	bnez    $t5, 81$
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0003
	beqz    $t6, 69$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0108($t7)
	sw      $t9, 0x00FC($t7)
	li      $a0, 0x005A
	li      $a1, 0x003C
	jal     object_c_802FA9D8
	li      $a2, 0x0004
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       81$
	sw      $v0, 0x0104($t1)
69$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x0108($t2)
	subu    $t0, $0, $t8
	sw      $t0, 0x00FC($t2)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0003
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0104($t4)
81$:
	li      $a0, 0x000A
	li      $a1, 0x0014
	jal     object_c_802FA9D8
	li      $a2, 0x0003
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
88$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t9, 0x001C($sp)
	lw      $t6, 0x00D4($t5)
	subu    $t7, $t6, $t9
	sw      $t7, 0x0118($t5)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x0144($t1)
	bnez    $t8, 101$
	nop
	jal     object_map_load
	nop
101$:
	b       103$
	nop
103$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80307EA4
object_c_80307EA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361258)
	lh      $t6, %lo(object_80361258)($t6)
	lui     $t8, %hi(object_c_80332AF8)
	lui     $t9, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332AF8)($t8)
	lw      $t9, %lo(object)($t9)
	sw      $t8, 0x0114($t9)
	lui     $t0, %hi(object_80361258)
	lh      $t0, %lo(object_80361258)($t0)
	li      $at, 0x0002
	bne     $t0, $at, 57$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F8($t1)
	slt     $at, $t3, $t2
	beqz    $at, 39$
	nop
	jal     randsign
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00F4($t4)
	li      $a0, 0x001E
	li      $a1, 0x001E
	jal     object_c_802FA9D8
	li      $a2, 0x0004
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       57$
	sw      $0, 0x0154($t6)
39$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, 54$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0114($t9)
	lw      $t1, 0x00F4($t9)
	multu   $t0, $t1
	mflo    $t2
	sw      $t2, 0x0114($t9)
	b       57$
	nop
54$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0114($t3)
57$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80307FB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lb      $t6, 0x001B($sp)
	lui     $at, %hi(object_c_80332B10+0x01)
	sb      $t6, %lo(object_c_80332B10+0x01)($at)
	lb      $t7, 0x001F($sp)
	lui     $at, %hi(object_c_80332B10+0x03)
	sb      $t7, %lo(object_c_80332B10+0x03)($at)
	lb      $t8, 0x0023($sp)
	lui     $at, %hi(object_c_80332B10+0x04)
	sb      $t8, %lo(object_c_80332B10+0x04)($at)
	lb      $t9, 0x0027($sp)
	lui     $at, %hi(object_c_80332B10+0x06)
	sb      $t9, %lo(object_c_80332B10+0x06)($at)
	lb      $t0, 0x002B($sp)
	lui     $at, %hi(object_c_80332B10+0x0C)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, %lo(object_c_80332B10+0x0C)($at)
	la.u    $a0, object_c_80332B10+0x00
	jal     objlib_802A32AC
	la.l    $a0, object_c_80332B10+0x00
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030803C
object_c_8030803C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 23$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t9)
	li      $at, 0x41C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	b       47$
	sw      $t2, 0x01AC($t1)
23$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	beqz    $t4, 38$
	nop
	jal     save_get_flag
	nop
	li      $at, 0x00080000
	and     $t5, $v0, $at
	beqz    $t5, 38$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
38$:
	li      $at, 0xC3480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x010C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308110:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 34$
	nop
	move    $a0, $0
	jal     object_c_802FA39C
	li      $a1, 0x0005
	beqz    $v0, 34$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43190000
	mtc1    $at, $f6
	lwc1    $f4, 0x010C($t8)
	la.u    $t1, o_13004E08
	la.l    $t1, o_13004E08
	add.s   $f8, $f4, $f6
	li      $t0, 0x00A0
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	trunc.w.s $f10, $f8
	move    $a0, $0
	li      $a1, -0x0046
	move    $a3, $0
	mfc1    $a2, $f10
	jal     obj_make_off
	sw      $t8, 0x0010($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       64$
	sw      $v0, 0x00F8($t2)
34$:
	jal     objlib_802A0008
	li      $a0, 0x000A
	beqz    $v0, 43$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	b       64$
	sw      $t4, 0x006C($t3)
43$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 64$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	lwc1    $f16, 0x010C($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    60$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       64$
	sw      $t6, 0x014C($t7)
60$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t8)
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80308228:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    41$
	nop
	li.u    $a0, 0x502B0081
	jal     object_playsound
	li.l    $a0, 0x502B0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sw      $t0, 0x00C8($t9)
	li      $at, 0x42280000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	li      $t2, 0x000A
	sw      $t2, 0x0010($sp)
	li      $a0, 0x0008
	li      $a1, -0x000A
	li      $a2, 0x000F
	jal     object_c_80307FB8
	li      $a3, 0x0014
	jal     objlib_8029F694
	nop
	jal     objlib_802A05D4
	nop
	b       43$
	nop
41$:
	jal     objlib_8029F6BC
	nop
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803082EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, 13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	addiu   $t0, $t9, -0x0001
	b       84$
	sw      $t0, 0x0100($t8)
13$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	li      $at, 0x41C00000
	lwc1    $f4, 0x010C($t1)
	lwc1    $f6, 0x00FC($t1)
	mtc1    $at, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x010C($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x010C($t2)
	c.lt.s  $f16, $f10
	nop
	bc1f    59$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41C00000
	mtc1    $at, $f4
	lwc1    $f18, 0x010C($t3)
	lwc1    $f8, 0x00A4($t3)
	sub.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t3)
	li      $at, 0x41C00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x010C($t4)
	li      $t5, 0x000A
	sw      $t5, 0x0010($sp)
	li      $a0, 0x0008
	li      $a1, -0x0014
	li      $a2, 0x0014
	jal     object_c_80307FB8
	li      $a3, 0x000F
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x00FC($t9)
	b       84$
	swc1    $f18, 0x00B0($t9)
59$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f4, 0x00FC($t0)
	lui     $t8, %hi(object)
	mtc1    $0, $f16
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x00FC($t0)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00FC($t8)
	c.lt.s  $f10, $f16
	nop
	bc1f    84$
	nop
	li      $at, 0x423C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x0100($t3)
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80308454:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 178$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0600
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	lw      $t2, 0x00C8($t0)
	subu    $t3, $t1, $t2
	sh      $t3, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	beqz    $t4, 47$
	nop
	lh      $t5, 0x001E($sp)
	bgez    $t5, 33$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t6)
	sub.s   $f8, $f4, $f6
	b       40$
	swc1    $f8, 0x0108($t6)
33$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0108($t7)
40$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	lwc1    $f6, 0x0108($t8)
	add.s   $f8, $f4, $f6
	b       105$
	swc1    $f8, 0x0104($t8)
47$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t9)
	c.eq.s  $f10, $f16
	nop
	bc1t    105$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0104($t0)
	swc1    $f18, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	lwc1    $f4, 0x0104($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    75$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x447A0000
	li      $a2, 0x42A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
	b       81$
	nop
75$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC47A0000
	li      $a2, 0x42A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
81$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x0104($t2)
	lwc1    $f10, 0x0108($t2)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0018($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x0104($t3)
	mul.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    105$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	lui     $t5, %hi(object)
	swc1    $f10, 0x0108($t4)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x0108($t5)
	swc1    $f16, 0x0104($t5)
105$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lwc1    $f18, 0x0104($t6)
	c.eq.s  $f18, $f4
	nop
	bc1t    135$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     objlib_802A3674
	lw      $a0, 0x00D8($t7)
	slti    $at, $v0, 0x3001
	bnez    $at, 133$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0006
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t1, %hi(object)
	sw      $0, 0x00F8($t0)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	sw      $t2, 0x006C($t1)
	jal     objlib_802A05B4
	nop
133$:
	b       178$
	nop
135$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338BC0)
	lwc1    $f8, %lo(object_c_80338BC0)($at)
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    162$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
	li      $at, 0x43960000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	sw      $0, 0x00F8($t7)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	b       178$
	sw      $t9, 0x006C($t8)
162$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x003D
	bnez    $at, 178$
	nop
	lw      $a0, 0x0160($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x0800
	beqz    $at, 178$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t3)
178$:
	b       180$
	nop
180$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80308734:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC6800000
	li      $a2, 0x46800000
	jal     object_c_802FA2BC
	addiu   $a0, $a0, 0x0104
	beqz    $v0, 74$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x0108($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    72$
	nop
	li.u    $a0, 0x502A0081
	jal     object_playsound
	li.l    $a0, 0x502A0081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F0($t7)
	beqz    $t8, 67$
	nop
	jal     save_clr_flag
	li      $a0, 0x00080000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_13003DF8
	la.l    $t1, o_13003DF8
	li      $t0, 0x0088
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x0005
	li      $a2, 0x0069
	move    $a3, $0
	jal     obj_make_off
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, 64$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	bgez    $t4, 53$
	nop
	b       54$
	li      $s0, 0x4000
53$:
	li      $s0, -0x4000
54$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x00D4($t5)
	addu    $t7, $s0, $t6
	sw      $t7, 0x00C8($t8)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lw      $t9, 0x0034($sp)
	swc1    $f8, 0x00B8($t9)
64$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
67$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0108($t1)
72$:
	b       103$
	nop
74$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f18
	lwc1    $f16, 0x0104($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    90$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0108($t3)
	sub.s   $f8, $f4, $f6
	b       97$
	swc1    $f8, 0x0108($t3)
90$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42200000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0108($t4)
97$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0104($t5)
	lwc1    $f6, 0x0108($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t5)
103$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001E
	bnez    $at, 201$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x001E
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 118$
	nop
	li.u    $a0, 0x50744081
	jal     object_playsound
	li.l    $a0, 0x50744081
118$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lwc1    $f10, 0x00F4($t0)
	c.eq.s  $f10, $f16
	nop
	bc1t    164$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338BC4)
	lwc1    $f4, %lo(object_c_80338BC4)($at)
	lwc1    $f18, 0x00F4($t1)
	lui     $t2, %hi(object)
	mtc1    $0, $f10
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t1)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00F4($t2)
	c.le.s  $f8, $f10
	nop
	bc1f    162$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0188($t4)
	andi    $t6, $t5, 0xFF00
	bnez    $t6, 162$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x41A00000
	move    $a0, $t7
	jal     objlib_802A1B8C
	lw      $a1, 0x0198($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_set_actorflag
	li      $a1, 0x0001
162$:
	b       201$
	nop
164$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    201$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t0)
	li      $at, 0xC3480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x010C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00D8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	lui     $t4, %hi(object)
	swc1    $f10, 0x0108($t3)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0108($t4)
	swc1    $f16, 0x0104($t4)
201$:
	b       203$
	nop
203$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_80308A74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	jal     object_c_802FA39C
	li      $a1, 0x0007
	beqz    $v0, 18$
	nop
	li.u    $a0, 0x90444081
	jal     object_playsound
	li.l    $a0, 0x90444081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t7, %hi(object)
	sw      $0, 0x00F8($t6)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	b       25$
	sw      $t8, 0x006C($t7)
18$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 25$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308AF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0104($t6)
	lwc1    $f6, 0x0108($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	lwc1    $f10, 0x0104($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    24$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43160000
	mtc1    $at, $f4
	lwc1    $f18, 0x0108($t8)
	add.s   $f6, $f18, $f4
	b       31$
	swc1    $f6, 0x0108($t8)
24$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x0108($t9)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0108($t9)
31$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC3480000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x010C
	beqz    $v0, 44$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308BB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, 68$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0D48
	jal     objlib_8029E5EC
	lw      $a0, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0100($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0100($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	bnez    $t3, 66$
	nop
	li.u    $a0, 0x504C0081
	jal     object_playsound
	li.l    $a0, 0x504C0081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0110($t4)
	slti    $at, $t5, 0x02BD
	bnez    $at, 51$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x01AC($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x01AC($t6)
	li      $at, 0x41C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x001E
	sw      $t1, 0x0100($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       66$
	sw      $0, 0x0110($t2)
51$:
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	li      $at, 0x42480000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00EC($t5)
66$:
	b       103$
	nop
68$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0003
	beqz    $t6, 103$
	nop
	li.u    $a0, 0x502A0081
	jal     object_playsound
	li.l    $a0, 0x502A0081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0110($t0)
	beqz    $t1, 90$
	nop
	jal     objlib_802A1634
	nop
	trunc.w.s $f10, $f0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mfc1    $t2, $f10
	b       94$
	sw      $t2, 0x0110($t3)
90$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x02BC
	sw      $t4, 0x0110($t5)
94$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x000F
	sw      $t8, 0x0100($t6)
103$:
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80308D6C
object_c_80308D6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0008
	beqz    $at, 49$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338BC8)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338BC8)($at)
	jr      $t7
	nop
.globl L80308DB0
L80308DB0:
	jal     object_c_80308110
	nop
	b       49$
	nop
.globl L80308DC0
L80308DC0:
	jal     object_c_80308228
	nop
	b       49$
	nop
.globl L80308DD0
L80308DD0:
	jal     object_c_803082EC
	nop
	b       49$
	nop
.globl L80308DE0
L80308DE0:
	jal     object_c_80308454
	nop
	b       49$
	nop
.globl L80308DF0
L80308DF0:
	jal     object_c_80308A74
	nop
	b       49$
	nop
.globl L80308E00
L80308E00:
	jal     object_c_80308AF0
	nop
	b       49$
	nop
.globl L80308E10
L80308E10:
	jal     object_c_80308734
	nop
	b       49$
	nop
.globl L80308E20
L80308E20:
	jal     object_c_80308BB8
	nop
	b       49$
	nop
49$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x00D8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00DA($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	nop
	mul.s   $f12, $f8, $f10
	jal     objlib_802A3634
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f18, 0x00F4($t5)
	li      $at, 0x42200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	lwc1    $f10, 0x010C($t5)
	mov.s   $f20, $f0
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f20
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x00DC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t6)
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, object_c_80332B00
	la.l    $a0, object_c_80332B00
	jal     object_c_802FB938
	lw      $a1, 0x014C($t7)
	b       98$
	nop
98$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80308F08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2644
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x006C($t7)
	bne     $t8, $t6, 29$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x433E0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t1)
	li      $at, 0xC2180000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	lui     $t3, %hi(object)
	swc1    $f6, 0x0140($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0140($t3)
	swc1    $f8, 0x013C($t3)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80308F94:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x006C($t7)
	bnez    $t8, 69$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 62$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x015C($t2)
	swc1    $f4, 0x0004($sp)
	li      $at, 0x44480000
	mtc1    $at, $f8
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    29$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0004($sp)
29$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lw      $t4, 0x0068($t3)
	lwc1    $f16, 0x0004($sp)
	lw      $t5, 0x00C8($t4)
	mul.s   $f4, $f16, $f18
	addiu   $t6, $t5, 0x0FA0
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f10, $f8, $f4
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sw      $t8, 0x00C8($t3)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	lui     $at, %hi(object_c_80338BE8)
	lwc1    $f8, %lo(object_c_80338BE8)($at)
	lwc1    $f6, 0x0004($sp)
	li      $at, 0xC1A00000
	mtc1    $at, $f10
	mul.s   $f4, $f6, $f8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x00B0($t0)
62$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00EC($t4)
69$:
	b       71$
	nop
71$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_803090B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_c_80332B24
	la.l    $a0, object_c_80332B24
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 18$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x000B
	beqz    $t9, 31$
	nop
18$:
	li      $t0, 0x0003
	sw      $t0, 0x0010($sp)
	li      $a0, 0x0006
	move    $a1, $0
	li      $a2, 0x0005
	jal     object_c_80307FB8
	li      $a3, 0x000A
	li.u    $a0, 0x303C0081
	jal     object_makesound
	li.l    $a0, 0x303C0081
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
31$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       35$
	nop
35$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80309154
object_c_80309154:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 24$
	nop
	b       28$
	nop
16$:
	jal     object_c_80308F08
	nop
	b       28$
	nop
20$:
	jal     object_c_80308F94
	nop
	b       28$
	nop
24$:
	jal     object_c_803090B8
	nop
	b       28$
	nop
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803091E0
object_c_803091E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0380
	sra     $t1, $t0, 7
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	lui     $a0, %hi(object_c_80332B34)
	sll     $t3, $t2, 2
	addu    $a0, $a0, $t3
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B34)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0218($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t6, 0x0188($t5)
	sra     $t7, $t6, 16
	andi    $t8, $t7, 0xFFFF
	andi    $t9, $t8, 0x003F
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00F8($t5)
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0005
	bnez    $at, 39$
	nop
	slti    $at, $t0, 0x0007
	bnez    $at, 61$
	nop
39$:
	li      $at, 0x41700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 16
	andi    $t6, $t4, 0xFFFF
	andi    $t7, $t6, 0x0040
	beqz    $t7, 59$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t5, $t9, $at
	sw      $t5, 0x00C8($t8)
59$:
	b       87$
	nop
61$:
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0188($t1)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	andi    $t6, $t4, 0x0040
	beqz    $t6, 81$
	nop
	li      $at, 0xBF800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	b       87$
	swc1    $f4, 0x00F4($t7)
81$:
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t9)
87$:
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80309354
object_c_80309354:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, 33$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00FC($t8)
	lwc1    $f6, 0x0100($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0000
	lwc1    $f10, 0x00F8($t9)
	addiu   $a0, $t9, 0x00FC
	neg.s   $f16, $f10
	mfc1    $a1, $f16
	jal     object_c_802FA2BC
	nop
	beqz    $v0, 33$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0100($t0)
	neg.s   $f4, $f18
	swc1    $f4, 0x0100($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
33$:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	lwc1    $f6, 0x00F4($t2)
	c.eq.s  $f6, $f8
	nop
	bc1t    52$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	lwc1    $f16, 0x00FC($t3)
	lwc1    $f4, 0x0168($t3)
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	b       56$
	swc1    $f6, 0x00A4($t3)
52$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t4)
56$:
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309454
object_c_80309454:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332B54)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B54)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0218($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t7, %hi(object_c_80332B5C)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_c_80332B5C)($t7)
	sw      $t7, 0x0118($t2)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803094D0
object_c_803094D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_803094F8
object_c_803094F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001468
	jal     objlib_8029F95C
	la.l    $a0, o_13001468
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0068($t6)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309530
object_c_80309530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, 36$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x014C($t9)
	beq     $t0, $at, 17$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0100($t1)
17$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	beqz    $t3, 31$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t7, %hi(object_c_80332BDC)
	lw      $t5, 0x0144($t4)
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_c_80332BDC)($t7)
	b       34$
	sw      $t7, 0x00F4($t4)
31$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
34$:
	b       52$
	nop
36$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 52$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	xori    $t5, $t3, 0x0001
	sw      $t5, 0x00FC($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0100($t7)
52$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00F4($t4)
	beqz    $t8, 97$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	slti    $at, $t0, 0x003C
	beqz    $at, 68$
	nop
	li.u    $a0, 0x8055F011
	jal     object_levelsound
	li.l    $a0, 0x8055F011
	b       71$
	nop
68$:
	li.u    $a0, 0x8054F011
	jal     object_levelsound
	li.l    $a0, 0x8054F011
71$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t2, %hi(object)
	lw      $t3, 0x00F4($t1)
	addiu   $t5, $t3, -0x0001
	sw      $t5, 0x00F4($t1)
	lw      $t2, %lo(object)($t2)
	lw      $t6, 0x00F4($t2)
	bnez    $t6, 84$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00FC($t7)
84$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00F8($t4)
	slti    $at, $t8, 0x0009
	beqz    $at, 95$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x00F8($t9)
95$:
	b       114$
	nop
97$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	lw      $t1, 0x00F8($t5)
	addiu   $t2, $t1, -0x0002
	sw      $t2, 0x00F8($t5)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bgez    $t7, 114$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0001
	sw      $t8, 0x00FC($t0)
114$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a0, %hi(object_c_80332B64+0x00)
	lw      $t9, 0x0144($t3)
	lw      $t2, 0x00F8($t3)
	sll     $t1, $t9, 2
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	bgez    $t2, 126$
	sra     $t5, $t2, 1
	addiu   $at, $t2, 0x0001
	sra     $t5, $at, 1
126$:
	sll     $t6, $t5, 3
	addu    $t7, $t1, $t6
	addu    $a0, $a0, $t7
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332B64+0x00)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0218($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $a0, %hi(object_c_80332B64+0x04)
	lw      $t0, 0x0144($t8)
	lw      $t3, 0x00F8($t8)
	sll     $t9, $t0, 2
	addu    $t9, $t9, $t0
	sll     $t9, $t9, 3
	bgez    $t3, 146$
	sra     $t2, $t3, 1
	addiu   $at, $t3, 0x0001
	sra     $t2, $at, 1
146$:
	sll     $t5, $t2, 3
	addu    $t1, $t9, $t5
	addu    $a0, $a0, $t1
	jal     objlib_802A04C0
	lh      $a0, %lo(object_c_80332B64+0x04)($a0)
	b       153$
	nop
153$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803097A4
object_c_803097A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	andi    $t0, $t9, 0x0300
	sra     $t1, $t0, 8
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	beqz    $t2, 17$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       21$
	sw      $0, 0x010C($t3)
17$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x8000
	sw      $t4, 0x010C($t5)
21$:
	lw      $t6, 0x001C($sp)
	lui     $a0, %hi(object_c_80332BE4)
	sll     $t7, $t6, 2
	addu    $a0, $a0, $t7
	jal     segment_to_virtual
	lw      $a0, %lo(object_c_80332BE4)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0218($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t0, 0x0188($t9)
	sra     $t1, $t0, 16
	andi    $t2, $t1, 0xFFFF
	andi    $t3, $t2, 0x007F
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t9)
	lw      $t4, 0x001C($sp)
	li      $at, 0x0002
	bne     $t4, $at, 54$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x41400000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F4($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x00F4($t5)
54$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t0, $t8, 0xFFFF
	andi    $t1, $t0, 0x0080
	sw      $t1, 0x0108($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	sw      $t3, 0x0104($t2)
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_803098C0
object_c_803098C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 15$
	nop
	li      $at, 0xC0C00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       21$
	swc1    $f4, 0x00B0($t9)
15$:
	li      $at, 0x40C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t0)
21$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	lwc1    $f8, 0x00FC($t1)
	c.eq.s  $f8, $f10
	nop
	bc1t    107$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	beqz    $t3, 40$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0100($t4)
	addiu   $t6, $t5, -0x0001
	b       105$
	sw      $t6, 0x0100($t4)
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00F8($t7)
	lwc1    $f18, 0x00FC($t7)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0000
	addiu   $a0, $t8, 0x00F8
	jal     object_c_802FA2BC
	lw      $a2, 0x00F4($t8)
	bnez    $v0, 69$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    105$
	nop
	lui     $at, %hi(object_c_80338BEC)
	lwc1    $f16, %lo(object_c_80338BEC)($at)
	lwc1    $f10, 0x015C($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    105$
	nop
69$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0014
	sw      $t0, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B0($t2)
	c.lt.s  $f18, $f4
	nop
	bc1t    88$
	nop
	lwc1    $f6, 0x00FC($t2)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    94$
	nop
88$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00FC($t3)
	neg.s   $f16, $f10
	b       99$
	swc1    $f16, 0x00FC($t3)
94$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00FC($t5)
99$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x00D4($t6)
	lw      $t7, 0x010C($t6)
	addu    $t8, $t4, $t7
	sw      $t8, 0x00D4($t6)
105$:
	b       125$
	nop
107$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    121$
	nop
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t0)
121$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0014
	sw      $t1, 0x0100($t2)
125$:
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0108($t3)
	beqz    $t5, 139$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x00F8($t4)
	lwc1    $f16, 0x0168($t4)
	add.s   $f18, $f10, $f16
	b       161$
	swc1    $f18, 0x00A4($t4)
139$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A4($t7)
	lwc1    $f6, 0x00B0($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t8)
	addiu   $a0, $t8, 0x00A4
	sub.s   $f18, $f10, $f16
	mfc1    $a2, $f10
	mfc1    $a1, $f18
	jal     object_c_802FA2BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00F8($t6)
	jal     object_c_802F9820
	neg.s   $f12, $f12
161$:
	jal     object_c_802F9904
	li      $a0, 0x0001
	b       165$
	nop
165$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80309B64
object_c_80309B64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332BF0
	la.l    $a1, object_c_80332BF0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 41$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 27$
	nop
	li.u    $a0, 0x3064C081
	jal     object_playsound
	li.l    $a0, 0x3064C081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F8($t8)
27$:
	la.u    $t1, player_data
	la.l    $t1, player_data
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t3, $f10
	nop
	addiu   $t4, $t3, 0x03E8
	b       62$
	sw      $t4, 0x0118($t5)
41$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	lw      $t9, 0x0118($t7)
	addiu   $t0, $t9, -0x0032
	sw      $t0, 0x0118($t7)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0118($t8)
	slti    $at, $t1, 0x0190
	beqz    $at, 62$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0190
	sw      $t2, 0x0118($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
62$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object)
	li      $at, 0x00010000
	lw      $t6, 0x00F4($t5)
	lw      $t9, 0x0118($t5)
	addu    $t0, $t6, $t9
	sw      $t0, 0x00F4($t5)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	slt     $at, $t8, $at
	bnez    $at, 86$
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lbu     $t2, 0x00B3($t1)
	addiu   $t3, $t2, 0x0004
	sb      $t3, 0x00B3($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0xFFFF0000
	lw      $t6, 0x00F4($t4)
	addu    $t9, $t6, $at
	sw      $t9, 0x00F4($t4)
86$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00D4($t0)
	lw      $t7, 0x0118($t0)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00D4($t0)
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80309CEC
object_c_80309CEC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       116$
	nop
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00D4($t0)
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00C4($t3)
	addiu   $t5, $t4, 0x4000
	sw      $t5, 0x00C4($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00C4($t7)
	sw      $t8, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t1, %hi(object)
	mtc1    $0, $f16
	lwc1    $f4, 0x00F4($t0)
	lwc1    $f6, 0x00B8($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t0)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00F4($t1)
	c.lt.s  $f16, $f10
	nop
	bc1f    54$
	nop
	jal     objlib_802A31E0
	nop
	li      $at, 0xC0A00000
	mtc1    $at, $f12
	li      $at, 0x41900000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	b       116$
	nop
54$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	move    $a0, $t3
	jal     objlib_8029F120
	lw      $a1, 0x0068($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lw      $t2, 0x00F4($t5)
	beqz    $t2, 111$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1f    109$
	nop
	li      $at, 0x420C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_13004BA8
	la.l    $a2, o_13004BA8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0054
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 102$
	nop
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x00B8($t0)
	lui     $at, %hi(object_c_80338BF0)
	lwc1    $f16, %lo(object_c_80338BF0)($at)
	lw      $t1, 0x001C($sp)
	swc1    $f16, 0x0030($t1)
102$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0002
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
109$:
	b       116$
	nop
111$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
116$:
	b       118$
	nop
118$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80309ED4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13004F28
	la.l    $a2, o_13004F28
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x007F
	jal     objlib_8029F694
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x1C00
	lui     $t1, %hi(object)
	sw      $t9, 0x00FC($t0)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	sw      $t2, 0x00C4($t1)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80309F68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BF4)
	lwc1    $f6, %lo(object_c_80338BF4)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       90$
	sw      $t7, 0x014C($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, 90$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	beqz    $t2, 32$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, -0x0001
	b       90$
	sw      $t5, 0x00F4($t3)
32$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0080
	jal     object_c_802FA660
	lw      $a0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0100
	jal     object_c_802FA748
	lw      $a0, 0x0100($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0102($t8)
	lh      $t0, 0x00D6($t8)
	bne     $t9, $t0, 90$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	beqz    $t2, 59$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t3, $t5, -0x0001
	b       90$
	sw      $t3, 0x00F8($t4)
59$:
	li.u    $a0, 0x50254081
	jal     object_playsound
	li.l    $a0, 0x50254081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0046
	sw      $t6, 0x00F4($t7)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	andi    $t8, $v0, 0x0003
	sll     $t9, $t8, 10
	addiu   $t0, $t9, 0x1000
	sw      $t0, 0x00FC($t1)
	jal     rand
	nop
	li      $at, 0x0005
	div     $0, $v0, $at
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mfhi    $t2
	sll     $t5, $t2, 12
	lw      $t4, 0x00C8($t3)
	addu    $t6, $t5, $t4
	addiu   $t7, $t6, -0x2000
	sw      $t7, 0x0100($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x003C
	sw      $t8, 0x00F8($t9)
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030A0E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F6BC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030A11C
object_c_8030A11C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x435C0000
	mtc1    $at, $f12
	li      $at, 0x43960000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 22$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 26$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 30$
	nop
	b       34$
	nop
22$:
	jal     object_c_80309ED4
	nop
	b       34$
	nop
26$:
	jal     object_c_80309F68
	nop
	b       34$
	nop
30$:
	jal     object_c_8030A0E8
	nop
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030A1C0
object_c_8030A1C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	beq     $t7, $at, 30$
	nop
	la.u    $a0, 0x0700D20C
	jal     segment_to_virtual
	la.l    $a0, 0x0700D20C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, 24$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, -0x1DB0
	b       28$
	sw      $t1, 0x00D0($t2)
24$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
28$:
	b       48$
	nop
30$:
	la.u    $a0, 0x0700D240
	jal     segment_to_virtual
	la.l    $a0, 0x0700D240
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00FC($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	sh      $t1, 0x01B0($t0)
48$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	sw      $t3, 0x0100($t2)
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030A2A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338BF8)
	lwc1    $f6, %lo(object_c_80338BF8)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    41$
	nop
	lw      $t7, 0x0150($t6)
	beqz    $t7, 41$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	lh      $t2, 0x0002($t1)
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00A0($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00FC($t3)
	lh      $t5, 0x0004($t4)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00A4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	lh      $t8, 0x0006($t7)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	b       54$
	swc1    $f6, 0x00A8($t6)
41$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x442F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x01AC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    54$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
54$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030A390:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, 22$
	nop
	jal     objlib_802A0008
	li      $a0, 0x001E
	beqz    $v0, 20$
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
20$:
	b       43$
	nop
22$:
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 43$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0028($sp)
	lw      $t0, 0x014C($t9)
	beq     $t0, $t1, 41$
	nop
	lw      $t2, 0x0104($t9)
	andi    $t3, $t2, 0x00FF
	slti    $at, $t3, 0x0007
	bnez    $at, 41$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	b       43$
	nop
41$:
	jal     objlib_8029F4B4
	li      $a0, 0x0002
43$:
	jal     objlib_802A0008
	li      $a0, 0x0006
	beqz    $v0, 50$
	nop
	li.u    $a0, 0x30090081
	jal     object_playsound
	li.l    $a0, 0x30090081
50$:
	jal     objlib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, 59$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0028($sp)
	sw      $t4, 0x014C($t5)
59$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x0032
	lw      $a0, 0x00C4($t6)
	jal     objlib_8029E530
	lw      $a1, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $s0, $v0
	lui     $t8, %hi(object)
	sw      $s0, 0x00D0($t7)
	lw      $t8, %lo(object)($t8)
	sw      $s0, 0x00C4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0078
	jal     objlib_8029E5EC
	lw      $a0, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x2000
	li      $a2, 0x0064
	jal     object_c_802FA900
	lw      $a0, 0x010C($t1)
	li      $at, 0x41200000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338BFC)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338BFC)($at)
	jal     objlib_802A31E0
	nop
	b       92$
	nop
92$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030A514:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	sw      $t7, 0x0100($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
	jal     objlib_802A184C
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	sw      $0, 0x00D0($t9)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	sw      $t1, 0x00C4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t3, %hi(object)
	lh      $s0, 0x01B0($t2)
	sw      $s0, 0x00D4($t2)
	lw      $t3, %lo(object)($t3)
	sw      $s0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	lui     $t6, %hi(object)
	swc1    $f4, 0x00F8($t5)
	lw      $t7, %lo(object)($t7)
	lui     $t8, %hi(object)
	lwc1    $f22, 0x00F8($t7)
	swc1    $f22, 0x00B4($t7)
	lw      $t6, %lo(object)($t6)
	mov.s   $f20, $f22
	swc1    $f20, 0x00AC($t6)
	lw      $t8, %lo(object)($t8)
	swc1    $f20, 0x00B8($t8)
	li      $at, 0xC4480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t0)
	b       58$
	nop
58$:
	lw      $ra, 0x002C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

object_c_8030A614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    34$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0006
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t7)
	lui     $t8, %hi(object)
	mtc1    $0, $f4
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x00F4($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    32$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F4($t9)
32$:
	b       170$
	nop
34$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	lwc1    $f8, 0x00F4($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    77$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0006
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, 70$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f18
	lwc1    $f16, 0x01AC($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    70$
	nop
	li.u    $a0, 0x524A0081
	jal     object_playsound
	li.l    $a0, 0x524A0081
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	swc1    $f4, 0x0110($t3)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0110($t4)
	b       75$
	swc1    $f6, 0x00F8($t4)
70$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0110($t5)
75$:
	b       139$
	nop
77$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	lwc1    $f10, 0x0110($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    96$
	nop
	jal     object_c_802FA360
	li      $a0, 0x0005
	beqz    $v0, 94$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0110($t7)
94$:
	b       139$
	nop
96$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	lwc1    $f4, 0x0110($t8)
	c.eq.s  $f4, $f6
	nop
	bc1f    139$
	nop
	jal     objlib_8029F4B4
	move    $a0, $0
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 139$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x01AC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    131$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0004
	sw      $t0, 0x014C($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00F8($t1)
	swc1    $f16, 0x00B8($t1)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	b       139$
	nop
131$:
	li      $at, 0xC2480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0110($t3)
	jal     objlib_8029F4B4
	li      $a0, 0x0004
139$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x40800000
	addiu   $a0, $t4, 0x00F8
	jal     object_c_802FA544
	lw      $a1, 0x0110($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	mtc1    $0, $f16
	lwc1    $f4, 0x00F4($t5)
	lwc1    $f6, 0x00F8($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t5)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x00F4($t6)
	c.lt.s  $f10, $f16
	nop
	bc1f    170$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	lui     $t8, %hi(object)
	swc1    $f18, 0x00F8($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00F8($t8)
	swc1    $f4, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
170$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00CA($t0)
	lwc1    $f8, 0x00F4($t0)
	lwc1    $f16, 0x0164($t0)
	sra     $t1, $t2, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00CA($t4)
	lwc1    $f6, 0x00F4($t4)
	lwc1    $f10, 0x016C($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t4)
	b       198$
	nop
198$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030A93C
object_c_8030A93C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B2($t6)
	bnez    $t7, 46$
	nop
	lui     $at, %hi(object_c_80338C00)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_c_80338C00)($at)
	swc1    $f4, 0x01AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338C04)
	lwc1    $f8, %lo(object_c_80338C04)($at)
	lwc1    $f6, 0x015C($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    44$
	nop
	li      $t0, -0x0004
	sw      $t0, 0x002C($sp)
23$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t2, o_13004F78
	la.l    $t2, o_13004F78
	sw      $t2, 0x0018($sp)
	lw      $a0, 0x002C($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	jal     obj_make_off
	sw      $t1, 0x0010($sp)
	lw      $t3, 0x002C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, 23$
	sw      $t4, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sh      $t5, 0x01B2($t6)
44$:
	b       58$
	nop
46$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t7)
	c.lt.s  $f16, $f10
	nop
	bc1f    58$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x01B2($t8)
58$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0005
	beqz    $at, 90$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_c_80338C08)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_c_80338C08)($at)
	jr      $t0
	nop
.globl L8030AA54
L8030AA54:
	jal     object_c_8030A2A8
	nop
	b       90$
	nop
.globl L8030AA64
L8030AA64:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_c_8030A390
	lw      $a0, 0x014C($t1)
	b       90$
	nop
.globl L8030AA7C
L8030AA7C:
	jal     object_c_8030A514
	nop
.globl L8030AA84
L8030AA84:
	jal     object_c_8030A614
	nop
	b       90$
	nop
.globl L8030AA94
L8030AA94:
	jal     object_c_8030A390
	li      $a0, 0x0002
	b       90$
	nop
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030AABC
object_c_8030AABC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x01B2($t7)
	bnez    $t8, 13$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       140$
	nop
13$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t0, 0x0144($t9)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lw      $t2, 0x0068($t1)
	lhu     $t3, 0x00D2($t2)
	lwc1    $f10, 0x00A4($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	lui     $at, %hi(object_c_80338C1C)
	lwc1    $f6, %lo(object_c_80338C1C)($at)
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x001C($sp)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00D0($t7)
	bgez    $t8, 50$
	sra     $t9, $t8, 1
	addiu   $at, $t8, 0x0001
	sra     $t9, $at, 1
50$:
	andi    $t0, $t9, 0xFFFF
	sra     $t3, $t0, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x001C($sp)
	lw      $t2, 0x0068($t5)
	lhu     $t1, 0x00D6($t2)
	lwc1    $f18, 0x00A0($t2)
	sra     $t6, $t1, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x001C($sp)
	lw      $t9, 0x0068($t8)
	lhu     $t0, 0x00D6($t9)
	lwc1    $f16, 0x00A8($t9)
	sra     $t3, $t0, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f8, $f6, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0004
	lw      $t6, 0x0144($t1)
	bne     $t6, $at, 123$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x0068($t7)
	lw      $t5, 0x00F0($t2)
	beqz    $t5, 121$
	nop
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    121$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0068($t0)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t0)
	lui     $at, %hi(object_c_80338C20)
	lwc1    $f12, %lo(object_c_80338C20)($at)
	lui     $at, %hi(object_c_80338C24)
	li.u    $a2, 0x450B6000
	li.l    $a2, 0x450B6000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_c_80338C24)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0068($t9)
	sw      $0, 0x00F0($t8)
121$:
	b       140$
	nop
123$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332C00
	la.l    $a0, object_c_80332C00
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t2, 0x0144($t6)
	bne     $t2, $at, 140$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x015C($t5)
	lw      $t7, 0x0068($t5)
	swc1    $f10, 0x01AC($t7)
140$:
	b       142$
	nop
142$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030AD04:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	sh      $t7, 0x002E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x01B2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43B90000
	mtc1    $at, $f6
	nop
	mul.s   $f12, $f4, $f6
	jal     objlib_802A3634
	nop
	mov.s   $f20, $f0
	trunc.w.s $f8, $f20
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mfc1    $t5, $f8
	lh      $t3, 0x01B0($t2)
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	subu    $t8, $t3, $t7
	sh      $t8, 0x01B0($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lhu     $t3, 0x002E($sp)
	la.u    $t5, math_cos
	lhu     $t0, 0x01B0($t9)
	la.l    $t5, math_cos
	sra     $t7, $t3, 4
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	sll     $t8, $t7, 2
	addu    $t2, $t8, $t5
	addu    $t6, $t4, $t5
	lwc1    $f10, 0x0000($t6)
	lwc1    $f16, 0x0000($t2)
	li      $at, 0x43DC0000
	mtc1    $at, $f4
	sub.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lhu     $t7, 0x002E($sp)
	la.u    $t6, math_sin
	lhu     $t0, 0x01B0($t9)
	la.l    $t6, math_sin
	sra     $t8, $t7, 4
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	sll     $t5, $t8, 2
	addu    $t2, $t5, $t6
	addu    $t3, $t4, $t6
	lwc1    $f8, 0x0000($t3)
	lwc1    $f10, 0x0000($t2)
	li      $at, 0x43DC0000
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0028($sp)
	lhu     $t0, 0x00CA($t9)
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	sra     $t1, $t0, 4
	sll     $t4, $t1, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x00A0($t3)
	mul.s   $f10, $f6, $f8
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f18, 0x00A4($t3)
	add.s   $f12, $f10, $f16
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A8($t3)
	sub.s   $f14, $f18, $f4
	add.s   $f18, $f10, $f16
	mfc1    $a2, $f18
	jal     mario_set_pos
	nop
	b       97$
	nop
97$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030AE9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x26F4
	sh      $t8, 0x01B0($t9)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0100($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    46$
	nop
	lh      $t1, 0x01AC($t0)
	beqz    $t1, 46$
	nop
	li.u    $a0, 0x50376081
	jal     object_playsound
	li.l    $a0, 0x50376081
	la.u    $a0, 0x0600FBB8
	jal     segment_to_virtual
	la.l    $a0, 0x0600FBB8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0218($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       123$
	sw      $0, 0x0104($t6)
46$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 60$
	nop
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lw      $t1, 0x00D4($t0)
	sh      $t1, 0x001C($sp)
	li      $t2, 0x000A
	b       91$
	sh      $t2, 0x001A($sp)
60$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t3)
	mtc1    $at, $f12
	jal     ATAN2
	sub.s   $f14, $f10, $f16
	li      $t4, 0x4000
	subu    $t5, $t4, $v0
	sh      $t5, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	lh      $t8, 0x01AE($t6)
	subu    $t9, $t7, $t8
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	bgez    $t1, 83$
	nop
	lh      $t2, 0x0018($sp)
	subu    $t3, $0, $t2
	sh      $t3, 0x0018($sp)
83$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0018($sp)
	lh      $t5, 0x01AE($t4)
	addu    $t7, $t5, $t6
	sh      $t7, 0x001C($sp)
	li      $t8, 0x0005
	sh      $t8, 0x001A($sp)
91$:
	lh      $t9, 0x001A($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f14
	mtc1    $t9, $f18
	jal     object_c_802FA5D0
	cvt.s.w $f12, $f18
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x001C($sp)
	li      $at, 0x0032
	lw      $t2, 0x00C8($t0)
	li      $a2, 0x0005
	lw      $a0, 0x0104($t0)
	subu    $a1, $t1, $t2
	sll     $t3, $a1, 16
	move    $a1, $t3
	sra     $t4, $a1, 16
	move    $a1, $t4
	div     $0, $a1, $at
	mflo    $t5
	move    $a1, $t5
	jal     objlib_8029E530
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	lw      $t9, 0x0104($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00C8($t7)
123$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x001E($sp)
	lw      $t2, 0x00C8($t1)
	subu    $t4, $t2, $t3
	sw      $t4, 0x0118($t1)
	b       131$
	nop
131$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030B0B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x010C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x01B2($t9)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030B0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	jal     object_c_802FA39C
	li      $a1, 0x0023
	beqz    $v0, 65$
	nop
	jal     objlib_8029FE6C
	nop
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 55$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xC1880000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t9)
	c.eq.s  $f4, $f6
	nop
	bc1f    41$
	nop
	li      $at, 0x44430000
	mtc1    $at, $f10
	lwc1    $f8, 0x0100($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    41$
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0001
	bne     $v0, $at, 41$
	nop
	jal     object_c_8030B0B8
	li      $a0, 0x0001
	b       53$
	nop
41$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0100($t0)
	c.lt.s  $f18, $f16
	nop
	bc1f    53$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
53$:
	b       63$
	nop
55$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0097
	bnez    $at, 63$
	nop
	jal     object_c_8030B0B8
	move    $a0, $0
63$:
	b       70$
	nop
65$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01B0($t4)
	addiu   $t6, $t5, 0x0115
	sh      $t6, 0x01B0($t4)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030B220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, 0x0600F644
	jal     segment_to_virtual
	la.l    $a0, 0x0600F644
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0218($t6)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       47$
	sw      $0, 0x014C($t7)
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x010C($t8)
	beqz    $t9, 47$
	nop
	lh      $t0, 0x0040($t8)
	slti    $at, $t0, 0x004A
	beqz    $at, 47$
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, 45$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	addiu   $t3, $t2, 0x01CC
	sh      $t3, 0x01B2($t1)
	jal     objlib_802A0008
	li      $a0, 0x0049
	beqz    $v0, 41$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
41$:
	jal     object_c_8030AD04
	nop
	b       47$
	nop
45$:
	jal     objlib_8029FE6C
	nop
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030B2F4
object_c_8030B2F4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 210$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lw      $t0, 0x0160($t9)
	lw      $t1, 0x00C8($t9)
	lwc1    $f6, 0x015C($t9)
	subu    $t2, $t0, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0100($t9)
	jal     object_c_802F9904
	move    $a0, $0
	jal     objlib_802A2644
	nop
	jal     objlib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $v0, 0x01AE($t6)
	jal     objlib_802A1634
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t9, math_cos
	la.l    $t9, math_cos
	lw      $t0, 0x00C8($t8)
	lh      $t1, 0x01AE($t8)
	lhu     $t7, 0x01B0($t8)
	li      $at, 0x43DC0000
	subu    $t2, $t0, $t1
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	andi    $t3, $t2, 0xFFFF
	addu    $t2, $t1, $t9
	lwc1    $f18, 0x0000($t2)
	mtc1    $at, $f16
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	mul.s   $f4, $f16, $f18
	addu    $t6, $t5, $t9
	lwc1    $f10, 0x0000($t6)
	mul.s   $f6, $f10, $f4
	swc1    $f6, 0x0034($sp)
	lui     $at, %hi(object_c_80338C28)
	lwc1    $f8, %lo(object_c_80338C28)($at)
	lwc1    $f16, 0x0034($sp)
	lui     $at, %hi(object_c_80338C2C)
	lwc1    $f10, %lo(object_c_80338C2C)($at)
	add.s   $f18, $f8, $f16
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	add.s   $f4, $f10, $f16
	mfc1    $a1, $f18
	addiu   $a0, $a0, 0x00F4
	mfc1    $a2, $f4
	jal     object_c_802FA2BC
	nop
	beqz    $v0, 101$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x01AE($t3)
	lwc1    $f8, 0x00F4($t3)
	lwc1    $f10, 0x0164($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f18, $f6, $f8
	sub.s   $f16, $f10, $f18
	swc1    $f16, 0x00A0($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x01AE($t8)
	lwc1    $f6, 0x00F4($t8)
	lwc1    $f10, 0x016C($t8)
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	sub.s   $f18, $f10, $f8
	swc1    $f18, 0x00A8($t8)
101$:
	jal     objlib_802A3754
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x01AC($t9)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t2)
	bne     $t4, $t5, 144$
	nop
	li      $at, 0xC1880000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00F8($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    142$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t7, 0x01AC($t3)
	beqz    $t7, 136$
	nop
	li      $at, 0xC1700000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	b       142$
	swc1    $f10, 0x00FC($t0)
136$:
	li      $at, 0xC0C00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
142$:
	b       147$
	nop
144$:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0028($sp)
147$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00F8($t8)
	lwc1    $f4, 0x00FC($t8)
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x00F8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40400000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00FC
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f10, 0x00FC($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    177$
	nop
	lwc1    $f18, 0x00F8($t9)
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    177$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0028($sp)
	swc1    $f4, 0x00F8($t2)
177$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00F8($t4)
	lwc1    $f10, 0x0168($t4)
	add.s   $f8, $f6, $f10
	swc1    $f8, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x014C($t5)
	beqz    $s0, 196$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 200$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 204$
	nop
	b       208$
	nop
196$:
	jal     object_c_8030AE9C
	nop
	b       208$
	nop
200$:
	jal     object_c_8030B0F0
	nop
	b       208$
	nop
204$:
	jal     object_c_8030B220
	nop
	b       208$
	nop
208$:
	jal     object_c_802F9904
	li      $a0, 0x0001
210$:
	b       212$
	nop
212$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_c_8030B658
object_c_8030B658:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13005024
	la.l    $a0, o_13005024
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 22$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    22$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x001C($sp)
	b       26$
	sw      $t7, 0x0068($t8)
22$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F4($t0)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030B6D8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	beq     $t7, $t6, 111$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	bnez    $t9, 96$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     objlib_8029E27C
	lw      $a1, 0x0068($t0)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    94$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     objlib_8029E694
	lw      $a1, 0x0068($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $s0, $v0, 16
	sra     $t2, $s0, 16
	lw      $t4, 0x00D4($t3)
	move    $s0, $t2
	subu    $t5, $s0, $t4
	addiu   $t7, $t5, 0x2000
	sh      $t7, 0x0036($sp)
	lh      $t6, 0x0036($sp)
	andi    $t8, $t6, 0x4000
	beqz    $t8, 62$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t0, $t9, 0x00D8
	sw      $t0, 0x0100($t9)
	lh      $t1, 0x0036($sp)
	blez    $t1, 56$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x4000
	b       60$
	sw      $t2, 0x0104($t3)
56$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x4000
	sw      $t4, 0x0104($t5)
60$:
	b       78$
	nop
62$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $t6, $t7, 0x00D0
	sw      $t6, 0x0100($t7)
	lh      $t8, 0x0036($sp)
	bgez    $t8, 74$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x5000
	b       78$
	sw      $t0, 0x0104($t9)
74$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, -0x4000
	sw      $t1, 0x0104($t2)
78$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	bgez    $t4, 89$
	nop
	lui     $at, %hi(object_c_80338C30)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_c_80338C30)($at)
	b       94$
	swc1    $f6, 0x00F8($t5)
89$:
	lui     $at, %hi(object_c_80338C34)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, %lo(object_c_80338C34)($at)
	swc1    $f8, 0x00F8($t6)
94$:
	b       109$
	nop
96$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	li      $at, 0x40000000
	mtc1    $at, $f16
	lw      $a0, 0x0100($t7)
	lw      $a2, 0x0104($t7)
	li      $a3, 0x457A0000
	addiu   $a1, $t7, 0x00F8
	swc1    $f10, 0x0010($sp)
	jal     object_c_802FAC18
	swc1    $f16, 0x0014($sp)
109$:
	b       215$
	nop
111$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	beqz    $t0, 134$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    130$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	addiu   $t3, $t2, -0x0001
	sw      $t3, 0x00F4($t1)
130$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       215$
	sw      $0, 0x0154($t4)
134$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 183$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00D0($t8)
	bgez    $t0, 152$
	nop
	li.u    $a0, 0x305F0081
	jal     object_playsound
	li.l    $a0, 0x305F0081
	li      $at, 0x40800000
	mtc1    $at, $f6
	b       156$
	swc1    $f6, 0x0030($sp)
152$:
	li      $at, 0xC0800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0030($sp)
156$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x0164($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0164($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f4, 0x016C($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x016C($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f16, 0x0030($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f18, $f10, $f16
	lui     $t4, %hi(object)
	trunc.w.s $f4, $f18
	mfc1    $s1, $f4
	nop
	sw      $s1, 0x00D8($t1)
	lw      $t4, %lo(object)($t4)
	sw      $s1, 0x00D0($t4)
	b       190$
	nop
183$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t6, %hi(object)
	sw      $0, 0x00D8($t5)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x00D0($t6)
190$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0154($t8)
	slti    $at, $t0, 0x001F
	bnez    $at, 215$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F8($t3)
	li      $at, 0x43480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0028
	sw      $t4, 0x00F4($t5)
215$:
	li      $at, 0x42A00000
	mtc1    $at, $f12
	li      $at, 0x42F00000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	b       223$
	nop
223$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_c_8030BA68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0046
	beqz    $at, 60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0032
	beqz    $at, 22$
	nop
	li      $at, 0x40C00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	b       27$
	swc1    $f4, 0x00B0($t0)
22$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t1)
27$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t2)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40000000
	mtc1    $at, $f16
	li      $a2, -0x0FA0
	li      $a3, 0x43480000
	swc1    $f10, 0x0010($sp)
	addiu   $a0, $t3, 0x00D0
	addiu   $a1, $t3, 0x00F8
	jal     object_c_802FAC18
	swc1    $f16, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f18
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	move    $a2, $0
	li      $a3, 0x0000
	swc1    $f18, 0x0010($sp)
	addiu   $a0, $t4, 0x00D8
	addiu   $a1, $t4, 0x00FC
	jal     object_c_802FAC18
	swc1    $f4, 0x0014($sp)
	b       124$
	nop
60$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	beqz    $t6, 116$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t0, %hi(object)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, -0x0001
	sw      $t9, 0x00F4($t7)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, 95$
	nop
	li.u    $a0, 0x305D0081
	jal     object_playsound
	li.l    $a0, 0x305D0081
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sw      $t4, 0x00C8($t3)
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
	b       114$
	nop
95$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	slti    $at, $t6, 0x0015
	bnez    $at, 114$
	nop
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	andi    $t9, $t8, 0x0003
	bnez    $t9, 109$
	nop
	li.u    $a0, 0x315C0081
	jal     object_playsound
	li.l    $a0, 0x315C0081
109$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x00D4($t7)
	addiu   $t1, $t0, 0x2710
	sw      $t1, 0x00D4($t7)
114$:
	b       124$
	nop
116$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00EC($t2)
	andi    $t3, $t4, 0x0203
	beqz    $t3, 124$
	nop
	jal     object_c_802FB128
	nop
124$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332C10
	la.l    $a0, object_c_80332C10
	jal     object_c_802FB938
	lw      $a1, 0x014C($t5)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       134$
	nop
134$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_8030BC90
object_c_8030BC90:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 32$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	b       27$
	nop
19$:
	jal     object_c_8030B6D8
	nop
	b       27$
	nop
23$:
	jal     object_c_8030BA68
	nop
	b       27$
	nop
27$:
	li      $at, 0x41F00000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_c_802F9E28
	nop
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030BD2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    36$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0015
	bnez    $at, 34$
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    34$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	jal     objlib_802A05D4
	nop
34$:
	b       39$
	nop
36$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
39$:
	li      $at, 0x438C0000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030BDF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	li.u    $a2, 0x52564081
	li.l    $a2, 0x52564081
	move    $a0, $0
	jal     object_c_802FA428
	move    $a1, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    23$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
23$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0051
	bnez    $at, 45$
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 45$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t1)
	jal     objlib_802A05B4
	nop
	b       104$
	nop
45$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A0($t2)
	lwc1    $f16, 0x0164($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A8($t3)
	lwc1    $f6, 0x016C($t3)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x001C($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    93$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lwc1    $f18, 0x001C($sp)
	div.s   $f16, $f10, $f18
	swc1    $f16, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x0164($t4)
	add.s   $f18, $f10, $f8
	swc1    $f18, 0x00A0($t4)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f6, $f16, $f4
	lwc1    $f10, 0x016C($t5)
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t5)
93$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0190
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t6)
	li      $at, 0x40A00000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
104$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C20
	la.l    $a0, object_c_80332C20
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       114$
	nop
114$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030BFD0
object_c_8030BFD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 32$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	addiu   $t1, $t0, -0x4000
	sw      $t1, 0x00D4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, 24$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 28$
	nop
	b       32$
	nop
24$:
	jal     object_c_8030BD2C
	nop
	b       32$
	nop
28$:
	jal     object_c_8030BDF8
	nop
	b       32$
	nop
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030C06C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x3000
	beqz    $v0, 27$
	nop
	li.u    $a0, 0x502C8081
	jal     object_playsound
	li.l    $a0, 0x502C8081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	addiu   $t0, $t9, 0x7FFF
	sw      $t0, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	addiu   $t3, $t2, -0x7FFF
	sw      $t3, 0x00F8($t1)
	jal     objlib_802A04C0
	li      $a0, 0x0058
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	beqz    $v0, 64$
	nop
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, 23$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	b       64$
	swc1    $f4, 0x00B8($t8)
23$:
	li      $at, 0x40400000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0006
	bnez    $at, 64$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x07D0
	jal     object_c_802FA6D4
	lw      $a0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x000A
	bnez    $at, 64$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x07D0
	jal     object_c_802FA7BC
	lw      $a0, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	bnez    $at, 64$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a1, 0x40400000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
64$:
	jal     objlib_802A2644
	nop
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C210:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1f    38$
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x03E8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C4($t7)
	addiu   $t9, $t8, 0x7FFF
	sw      $t9, 0x00D0($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x03E8
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, 38$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
38$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C2C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0180($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0198($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0004
	bnez    $at, 25$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
25$:
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	jal     objlib_802A2644
	nop
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C364
object_c_8030C364:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 76$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x50155081
	li.l    $t9, 0x50155081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, 34$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 46$
	nop
	b       50$
	nop
34$:
	jal     object_c_8030C06C
	nop
	b       50$
	nop
38$:
	jal     object_c_8030C0F0
	nop
	b       50$
	nop
42$:
	jal     object_c_8030C210
	nop
	b       50$
	nop
46$:
	jal     object_c_8030C2C8
	nop
	b       50$
	nop
50$:
	la.u    $a0, object_c_80332C30
	la.l    $a0, object_c_80332C30
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0001
	lw      $t4, 0x014C($t3)
	beq     $t4, $at, 64$
	nop
	lw      $t5, 0x00EC($t3)
	andi    $t6, $t5, 0x0203
	beqz    $t6, 69$
	nop
64$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0198($t7)
	jal     object_c_802FB128
	nop
69$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t8)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t8)
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030C4B0
object_c_8030C4B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 39$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0029
	bnez    $at, 39$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x2000
	beqz    $v0, 39$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300506C
	la.l    $a2, o_1300506C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0059
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	beqz    $t1, 36$
	nop
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
	li.u    $a0, 0x502C8081
	jal     object_playsound
	li.l    $a0, 0x502C8081
36$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030C564:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 36$
	nop
	sw      $0, 0x002C($sp)
9$:
	lw      $t9, 0x002C($sp)
	la.u    $t1, object_c_80332C40
	la.l    $t1, object_c_80332C40
	sll     $t0, $t9, 2
	addu    $t2, $t0, $t1
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a1, 0x0000($t2)
	lh      $a2, 0x0002($t2)
	la.u    $t5, o_130050F4
	la.l    $t5, o_130050F4
	li      $t4, 0x0059
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a3, $0
	move    $a0, $t9
	jal     obj_make_off
	sw      $t3, 0x0010($sp)
	lw      $t6, 0x002C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, 9$
	sw      $t7, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030C60C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 19$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x3000
	beqz    $v0, 17$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F8($t9)
17$:
	b       32$
	nop
19$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x003D
	bnez    $at, 32$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C6A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 87$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	bgez    $t0, 39$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x001F
	bnez    $at, 27$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t4, %hi(object)
	sw      $0, 0x00F8($t3)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	b       37$
	sw      $t5, 0x00F4($t4)
27$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, 37$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F8($t9)
37$:
	b       85$
	nop
39$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	slti    $at, $t1, 0x0003
	bnez    $at, 82$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	bnez    $at, 72$
	nop
	la.u    $a0, o_130028FC
	jal     objlib_8029F95C
	la.l    $a0, o_130028FC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0068($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0001
	lw      $t7, 0x0068($t6)
	sw      $t4, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f4, 0x00A0($t9)
	swc1    $f4, 0x00A0($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	b       80$
	sw      $t0, 0x014C($t1)
72$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x001E
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 80$
	nop
	jal     Na_Solution
	nop
80$:
	b       85$
	nop
82$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
85$:
	b       91$
	nop
87$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t4)
91$:
	b       93$
	nop
93$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030C828:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0056
	bnez    $at, 11$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       23$
	sw      $t8, 0x014C($t9)
11$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lwc1    $f6, 0x00A0($t0)
	lwc1    $f4, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lwc1    $f10, 0x00A0($t3)
	swc1    $f10, 0x00A0($t2)
23$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030C894:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	slti    $at, $t7, 0x0003
	bnez    $at, 13$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       16$
	nop
13$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C8EC
object_c_8030C8EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338C38)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338C38)($at)
	jr      $t7
	nop
.globl L8030C924
L8030C924:
	jal     object_c_8030C564
	nop
	b       34$
	nop
.globl L8030C934
L8030C934:
	jal     object_c_8030C6A4
	nop
	b       34$
	nop
.globl L8030C944
L8030C944:
	jal     object_c_8030C60C
	nop
	b       34$
	nop
.globl L8030C954
L8030C954:
	jal     object_c_8030C828
	nop
	b       34$
	nop
.globl L8030C964
L8030C964:
	jal     object_c_8030C894
	nop
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030C98C
object_c_8030C98C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($t6)
	lui     $at, %hi(object_c_80338C4C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_c_80338C4C)($at)
	swc1    $f6, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0004
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, 25$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       227$
	nop
25$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, object_c_80332C4C
	la.l    $a0, object_c_80332C4C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t1)
	sw      $v0, 0x003C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00F8($t3)
	bnez    $t4, 42$
	nop
	lw      $t5, 0x014C($t2)
	li      $at, 0x0001
	bne     $t5, $at, 111$
	nop
42$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t6)
	c.lt.s  $f8, $f10
	nop
	bc1f    55$
	nop
	jal     objlib_802A05D4
	nop
	b       57$
	nop
55$:
	jal     objlib_802A05B4
	nop
57$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	lwc1    $f16, 0x00F4($t9)
	c.eq.s  $f16, $f18
	nop
	bc1f    72$
	nop
	li.u    $a0, 0x502C8081
	jal     object_playsound
	li.l    $a0, 0x502C8081
72$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42480000
	li      $a2, 0x41A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, 106$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t3, 0x00F4($t1)
	bltz    $t3, 104$
	nop
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x003D
	bnez    $at, 104$
	nop
	lw      $t2, 0x003C($sp)
	li      $at, 0x0001
	beq     $t2, $at, 100$
	nop
	li      $at, 0x0002
	beq     $t2, $at, 100$
	nop
	li      $at, 0x0006
	bne     $t2, $at, 104$
	nop
100$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
104$:
	b       109$
	nop
106$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
109$:
	b       209$
	nop
111$:
	jal     objlib_802A05B4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41A00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, 209$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	beqz    $t9, 209$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0068($t1)
	lw      $t3, 0x0144($t1)
	lw      $t4, 0x00F4($t0)
	bne     $t3, $t4, 145$
	nop
	li.u    $a0, 0x806AA081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x806AA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0068($t2)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, 0x0001
	b       206$
	sw      $t7, 0x00F4($t5)
145$:
	jal     rand
	nop
	andi    $t8, $v0, 0x0001
	sh      $t8, 0x0036($sp)
	la.u    $t9, player_data
	la.l    $t9, player_data
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0050($t9)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A8($t1)
	add.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sh      $t3, 0x0034($sp)
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x700E0081
	lh      $t4, 0x0034($sp)
	blez    $t4, 172$
	nop
	sh      $0, 0x0034($sp)
172$:
	lh      $t2, 0x0036($sp)
	lh      $t8, 0x0034($sp)
	lui     $a0, %hi(object)
	sll     $t6, $t2, 7
	subu    $t6, $t6, $t2
	sll     $t6, $t6, 2
	sll     $t9, $t2, 15
	addiu   $t1, $t9, 0x4000
	addiu   $t7, $t6, -0x08CA
	la.u    $a3, o_1300506C
	li      $t5, 0x037A
	sw      $t5, 0x0014($sp)
	la.l    $a3, o_1300506C
	sw      $t7, 0x0010($sp)
	sw      $t1, 0x0020($sp)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0059
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	jal     obj_make_abs
	sw      $t8, 0x0018($sp)
	sw      $v0, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	beqz    $t0, 201$
	nop
	lw      $t4, 0x0038($sp)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
201$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0001
	lw      $t5, 0x0068($t7)
	sw      $t6, 0x00F4($t5)
206$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
209$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x0068($t2)
	lwc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x00B8($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x016C($t1)
	lwc1    $f16, 0x00F4($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t1)
	li      $at, 0x428C0000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
227$:
	b       229$
	nop
229$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_8030CD30
object_c_8030CD30:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	la.u    $t8, o_13005158
	la.l    $t8, o_13005158
	sw      $t8, 0x001C($sp)
	li      $a0, 0x0001
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	lh      $a3, 0x003A($sp)
	sw      $t6, 0x0014($sp)
	swc1    $f4, 0x0010($sp)
	jal     objlib_8029EFFC
	sw      $t7, 0x0018($sp)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	beqz    $t9, 37$
	nop
	lwc1    $f6, 0x0044($sp)
	lw      $t0, 0x002C($sp)
	swc1    $f6, 0x00F4($t0)
	lwc1    $f8, 0x0048($sp)
	lw      $t1, 0x002C($sp)
	swc1    $f8, 0x00F8($t1)
	lw      $t2, 0x0040($sp)
	lw      $t3, 0x002C($sp)
	sw      $t2, 0x00FC($t3)
	lh      $t4, 0x004E($sp)
	lw      $t5, 0x002C($sp)
	sw      $t4, 0x00C4($t5)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030CDDC
object_c_8030CDDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80332C6C)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(object_c_80332C6C)($at)
	swc1    $f4, 0x00F4($t6)
	lui     $a0, %hi(object)
	la.u    $a1, object_c_80332C5C
	la.l    $a1, object_c_80332C5C
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0188($t1)
	sra     $t3, $t2, 16
	andi    $t4, $t3, 0xFFFF
	beqz    $t4, 47$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x008C($t5)
	ori     $t8, $t7, 0x4000
	sw      $t8, 0x008C($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0184($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t1, 0x0188($t6)
	andi    $t2, $t1, 0xFF00
	beqz    $t2, 43$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       47$
	sw      $0, 0x0198($t3)
43$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t4, 0x0002
	sw      $t4, 0x0198($t7)
47$:
	lui     $at, %hi(object_c_80361464)
	sw      $0, %lo(object_c_80361464)($at)
	lui     $at, %hi(object_c_80361460)
	sw      $0, %lo(object_c_80361460)($at)
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030CEC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	beqz    $t7, 41$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0104($t8)
	lw      $t9, 0x00C8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	addu    $t2, $t9, $t1
	sw      $t2, 0x00C8($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x43480000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0104
	jal     objlib_8029FF04
	nop
	beqz    $v0, 39$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object)
	lw      $t4, 0x0100($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0100($t3)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bnez    $t7, 39$
	nop
	li.u    $a0, 0x50744081
	jal     object_playsound
	li.l    $a0, 0x50744081
39$:
	b       152$
	nop
41$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338C50)
	lwc1    $f10, %lo(object_c_80338C50)($at)
	lwc1    $f8, 0x00F4($t0)
	li      $a1, 0x0000
	addiu   $a0, $t0, 0x00F8
	mul.s   $f16, $f8, $f10
	mfc1    $a2, $f16
	jal     object_c_802FA544
	nop
	beqz    $v0, 152$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00FC($t9)
	beqz    $t1, 102$
	nop
	lui     $t2, %hi(object_c_80361460)
	lw      $t2, %lo(object_c_80361460)($t2)
	lui     $at, %hi(object_c_80361460)
	addiu   $t8, $t2, -0x0001
	sw      $t8, %lo(object_c_80361460)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x0188($t5)
	sra     $t6, $t3, 16
	andi    $t7, $t6, 0xFFFF
	beqz    $t7, 100$
	nop
	lw      $t0, 0x0184($t5)
	bnez    $t0, 100$
	nop
	lui     $t9, %hi(object_c_80361464)
	lw      $t9, %lo(object_c_80361464)($t9)
	lui     $at, %hi(object_c_80361464)
	addiu   $t1, $t9, 0x0001
	sw      $t1, %lo(object_c_80361464)($at)
	li      $at, 0x0005
	bne     $t1, $at, 94$
	nop
	lui     $at, %hi(object_c_80338C54)
	lwc1    $f12, %lo(object_c_80338C54)($at)
	lui     $at, %hi(object_c_80338C58)
	li.u    $a2, 0xC5C4E000
	li.l    $a2, 0xC5C4E000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_c_80338C58)($at)
94$:
	jal     object_c_802FB128
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_set_actorflag
	li      $a1, 0x0001
100$:
	b       152$
	nop
102$:
	lui     $t2, %hi(object_c_80361460)
	lw      $t2, %lo(object_c_80361460)($t2)
	slti    $at, $t2, 0x0002
	beqz    $at, 150$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x0154($t8)
	slti    $at, $t4, 0x0065
	bnez    $at, 150$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    150$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f18, $f6
	nop
	bc1f    150$
	nop
	li.u    $a0, 0x50542081
	jal     object_playsound
	li.l    $a0, 0x50542081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0001
	sw      $t3, 0x00FC($t6)
	lui     $t7, %hi(object_c_80361460)
	lw      $t7, %lo(object_c_80361460)($t7)
	lui     $at, %hi(object_c_80361460)
	addiu   $t5, $t7, 0x0001
	sw      $t5, %lo(object_c_80361460)($at)
	jal     objlib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       152$
	sw      $t2, 0x00C8($t1)
150$:
	jal     objlib_8029F6BC
	nop
152$:
	jal     objlib_8029FEA4
	nop
	b       156$
	nop
156$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030D140:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     object_c_802FA32C
	li      $a0, 0x0004
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338C5C)
	lwc1    $f6, %lo(object_c_80338C5C)($at)
	lwc1    $f4, 0x00F4($t6)
	addiu   $a0, $t6, 0x00F8
	mul.s   $f8, $f4, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f8
	jal     object_c_802FA544
	nop
	beqz    $v0, 89$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0051
	bnez    $at, 33$
	nop
	li.u    $a0, 0x50334081
	jal     object_playsound
	li.l    $a0, 0x50334081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
	jal     objlib_8029F4B4
	move    $a0, $0
	b       87$
	nop
33$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0032
	beqz    $at, 46$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t2)
	b       87$
	nop
46$:
	jal     object_c_802F9730
	nop
	beqz    $v0, 87$
	nop
	jal     objlib_802A0008
	li      $a0, 0x0038
	beqz    $v0, 87$
	nop
	li.u    $a0, 0x50558081
	jal     object_playsound
	li.l    $a0, 0x50558081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t3)
	li      $at, 0x430C0000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	li      $at, 0x40200000
	li      $t6, 0x00CB
	mul.s   $f8, $f10, $f6
	li      $t7, 0x1000
	sw      $t7, 0x001C($sp)
	sw      $t6, 0x0010($sp)
	move    $a0, $0
	trunc.w.s $f4, $f18
	mtc1    $at, $f18
	li      $at, 0x41A00000
	trunc.w.s $f16, $f8
	mfc1    $a1, $f4
	mul.s   $f4, $f10, $f18
	mtc1    $at, $f6
	li      $at, 0x41700000
	mtc1    $at, $f8
	mfc1    $a2, $f16
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	mfc1    $a3, $f4
	jal     object_c_8030CD30
	nop
87$:
	b       102$
	nop
89$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f10, 0x00F4($t8)
	lwc1    $f16, 0x00F8($t8)
	div.s   $f4, $f10, $f18
	c.lt.s  $f4, $f16
	nop
	bc1f    102$
	nop
	jal     objlib_802A05D4
	nop
102$:
	b       104$
	nop
104$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030D2F0
object_c_8030D2F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 17$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 21$
	nop
	b       25$
	nop
17$:
	jal     object_c_8030CEC0
	nop
	b       25$
	nop
21$:
	jal     object_c_8030D140
	nop
	b       25$
	nop
25$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C5C
	la.l    $a0, object_c_80332C5C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	beqz    $v0, 72$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t2, %hi(object)
	lw      $t0, 0x0184($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0184($t9)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	bgez    $t3, 55$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	beqz    $t5, 53$
	nop
	lui     $t6, %hi(object_c_80361460)
	lw      $t6, %lo(object_c_80361460)($t6)
	lui     $at, %hi(object_c_80361460)
	addiu   $t7, $t6, -0x0001
	sw      $t7, %lo(object_c_80361460)($at)
53$:
	b       57$
	nop
55$:
	jal     objlib_8029F4B4
	li      $a0, 0x0002
57$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x000A
	sw      $t0, 0x0100($t1)
	li      $at, 0x45FA0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0104($t9)
	jal     objlib_802A05B4
	nop
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030D42C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3E4CCCCD
	li.u    $a2, 0x3B03126F
	li.l    $a2, 0x3B03126F
	li.l    $a1, 0x3E4CCCCD
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0097
	bnez    $at, 36$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    36$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0078
	bnez    $t9, 36$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $at, %hi(object_c_80338C60)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, %lo(object_c_80338C60)($at)
	swc1    $f8, 0x00F4($t2)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030D4D4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sw      $t7, 0x00C8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a1, 0x3E19999A
	li.u    $a2, 0x3DCCCCCD
	li.l    $a2, 0x3DCCCCCD
	li.l    $a1, 0x3E19999A
	jal     object_c_802FAAC8
	addiu   $a0, $a0, 0x00F4
	sw      $v0, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	beqz    $t8, 43$
	nop
	lw      $t9, 0x002C($sp)
	bgez    $t9, 25$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       43$
	sw      $0, 0x014C($t0)
25$:
	li.u    $a0, 0x50558081
	jal     object_playsound
	li.l    $a0, 0x50558081
	li      $at, 0x41A00000
	mtc1    $at, $f4
	li      $at, 0x41700000
	mtc1    $at, $f6
	li      $t1, 0x00CB
	li      $t2, 0x1000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0010($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	li      $a3, 0x40A00000
	swc1    $f4, 0x0014($sp)
	jal     object_c_8030CD30
	swc1    $f6, 0x0018($sp)
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030D598
object_c_8030D598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t6)
	li      $at, 0x42200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	jal     objlib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 25$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	b       33$
	nop
25$:
	jal     object_c_8030D42C
	nop
	b       33$
	nop
29$:
	jal     object_c_8030D4D4
	nop
	b       33$
	nop
33$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030D640
object_c_8030D640:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0xFFFF
	bnez    $t9, 57$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	blez    $t1, 19$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       55$
	nop
19$:
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	sub.s   $f6, $f0, $f4
	swc1    $f6, 0x002C($sp)
	lui     $at, %hi(object_c_80338C64)
	lwc1    $f8, %lo(object_c_80338C64)($at)
	lwc1    $f10, 0x002C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x0034($t2)
	add.s   $f4, $f18, $f16
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x0030($t2)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f18, 0x002C($sp)
	lui     $at, %hi(object_c_80338C68)
	lwc1    $f6, %lo(object_c_80338C68)($at)
	mul.s   $f16, $f10, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x0034($t3)
	sub.s   $f4, $f6, $f16
	mul.s   $f10, $f8, $f4
	swc1    $f10, 0x002C($t3)
	jal     rand
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00F0($t4)
55$:
	b       152$
	nop
57$:
	jal     objlib_802A2320
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li.u    $a2, 0x3F19999A
	li.l    $a2, 0x3F19999A
	addiu   $a0, $t5, 0x00F4
	jal     object_c_802FA544
	lw      $a1, 0x00F8($t5)
	beqz    $v0, 73$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t6)
73$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t7)
	jal     objlib_802A2348
	li      $a0, -0x004E
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80338C6C)
	lwc1    $f6, %lo(object_c_80338C6C)($at)
	lwc1    $f18, 0x002C($t8)
	la.u    $a2, o_13005158
	la.l    $a2, o_13005158
	mul.s   $f16, $f18, $f6
	move    $a0, $t8
	lw      $a1, 0x00FC($t8)
	mfc1    $a3, $f16
	jal     objlib_8029EEB8
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t1, 0x0100($t9)
	slt     $at, $t1, $t0
	beqz    $at, 125$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t5, o_130051AC
	la.l    $t5, o_130051AC
	lwc1    $f8, 0x00DC($t2)
	lwc1    $f10, 0x002C($t2)
	sw      $t2, 0x0014($sp)
	trunc.w.s $f4, $f8
	swc1    $f10, 0x0010($sp)
	lw      $t4, 0x00FC($t2)
	sw      $t5, 0x001C($sp)
	mfc1    $a2, $f4
	li      $a0, 0x0001
	move    $a1, $0
	move    $a3, $0
	jal     objlib_8029EFFC
	sw      $t4, 0x0018($sp)
	li      $a0, 0x0008
	jal     object_c_802FA964
	li      $a1, 0x000F
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0100($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
125$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332C74
	la.l    $a0, object_c_80332C74
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0104($t9)
	lwc1    $f6, 0x00F4($t9)
	add.s   $f16, $f18, $f6
	swc1    $f16, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338C70)
	lwc1    $f4, %lo(object_c_80338C70)($at)
	lwc1    $f8, 0x0104($t0)
	c.lt.s  $f4, $f8
	nop
	bc1t    150$
	nop
	lw      $t1, 0x00EC($t0)
	andi    $t3, $t1, 0x0278
	beqz    $t3, 152$
	nop
150$:
	jal     object_c_802FB128
	nop
152$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41700000
	mtc1    $at, $f18
	lwc1    $f10, 0x0030($t2)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x00DC($t2)
	b       161$
	nop
161$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_8030D8D4
object_c_8030D8D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2644
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3F19999A
	li.l    $a2, 0x3F19999A
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 16$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
16$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t6)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_c_8030D93C
s_object_c_8030D93C:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, 22$
	nop
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0008($a1)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0004($sp)
	lw      $t0, 0x0000($sp)
	lh      $t9, 0x01AC($t8)
	sh      $t9, 0x0018($t0)
	lw      $t1, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	lh      $t2, 0x01AE($t1)
	sh      $t2, 0x001A($t3)
	lw      $t4, 0x0004($sp)
	lw      $t6, 0x0000($sp)
	lh      $t5, 0x01B0($t4)
	sh      $t5, 0x001C($t6)
22$:
	b       26$
	move    $v0, $0
	b       26$
	nop
26$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_object_c_8030D9AC
s_object_c_8030D9AC:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, 20$
	nop
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0008($a1)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0004($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lh      $t9, 0x01B2($t8)
	lw      $t0, 0x0000($sp)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($t0)
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_8030DA14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	div.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x0154($t9)
	slt     $at, $t1, $t0
	beqz    $at, 62$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1f    62$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a1, $0
	li      $a2, 0x05DC
	jal     objlib_8029E530
	lw      $a0, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x0104($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0258
	li      $a2, 0x000F
	jal     objlib_8029E530
	lw      $a0, 0x0108($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0108($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0106($t6)
	bnez    $t7, 60$
	nop
	lw      $t8, 0x0108($t6)
	li      $at, 0x0258
	bne     $t8, $at, 60$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
60$:
	b       67$
	nop
62$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	addiu   $t4, $t3, 0x0190
	sw      $t4, 0x0100($t2)
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030DB38:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, -0x8000
	li      $a2, 0x0BB8
	jal     objlib_8029E530
	lw      $a0, 0x0104($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x0104($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x00A7
	li      $a2, 0x0014
	jal     objlib_8029E530
	lw      $a0, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0108($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lhu     $t1, 0x0106($t0)
	bne     $t1, $at, 34$
	nop
	lw      $t2, 0x0108($t0)
	li      $at, 0x00A7
	bne     $t2, $at, 34$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       72$
	sw      $0, 0x014C($t3)
34$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x010C($t4)
	slti    $at, $t5, 0x0003
	beqz    $at, 72$
	nop
	lw      $t6, 0x0154($t4)
	slti    $at, $t6, 0x0003
	bnez    $at, 72$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x010C($t7)
	li.u    $a0, 0x504D0081
	jal     object_playsound
	li.l    $a0, 0x504D0081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t2, o_1300521C
	la.l    $t2, o_1300521C
	li      $t0, 0x00B4
	sw      $t0, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0014
	li      $a3, 0x0028
	jal     obj_make_off
	sw      $t1, 0x0010($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, -0x001E
	sw      $t3, 0x00F4($t5)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030DC70
object_c_8030DC70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 206$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $t9, 0x5072C081
	li.l    $t9, 0x5072C081
	sw      $t9, 0x01C4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    55$
	nop
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x07D0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x00C6($t2)
	slti    $at, $t3, 0x2001
	bnez    $at, 38$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x2000
	b       48$
	sw      $t4, 0x00C4($t5)
38$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x00C6($t6)
	slti    $at, $t7, -0x2000
	beqz    $at, 48$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x2000
	sw      $t8, 0x00C4($t9)
48$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x07D0
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t0)
	b       63$
	nop
55$:
	move    $a0, $0
	jal     object_c_802FA660
	li      $a1, 0x0200
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x00C8
	sw      $t3, 0x00C8($t1)
63$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00C4($t4)
	sw      $t5, 0x00D0($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 77$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 81$
	nop
	b       85$
	nop
77$:
	jal     object_c_8030DA14
	nop
	b       85$
	nop
81$:
	jal     object_c_8030DB38
	nop
	b       85$
	nop
85$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x0102($t7)
	lwc1    $f18, 0x0164($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t7)
	lui     $t2, %hi(gfx_frame)
	lw      $t2, %lo(gfx_frame)($t2)
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	sll     $t3, $t2, 5
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 5
	andi    $t1, $t3, 0xFFFF
	sra     $t5, $t1, 4
	sll     $t4, $t5, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x0168($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x0102($t8)
	lwc1    $f10, 0x016C($t8)
	sra     $t0, $t9, 4
	sll     $t7, $t0, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0020
	sh      $t2, 0x01AE($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x00F4($t1)
	addiu   $t4, $t5, 0x00B4
	sh      $t4, 0x01B0($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lw      $t8, 0x0108($t6)
	lhu     $t9, 0x0106($t6)
	mtc1    $t8, $f4
	sra     $t0, $t9, 4
	sll     $t7, $t0, 2
	cvt.s.w $f6, $f4
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	addiu   $t2, $t8, 0x029A
	mtc1    $t2, $f10
	mul.s   $f8, $f18, $f6
	cvt.s.w $f16, $f10
	add.s   $f4, $f8, $f16
	trunc.w.s $f18, $f4
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x01B2($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t1, 0x01B2($t4)
	slti    $at, $t1, 0x03E9
	bnez    $at, 190$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lh      $t0, 0x01B2($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	addiu   $t7, $t0, -0x03E8
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	div.s   $f16, $f10, $f8
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x03E8
	b       196$
	sh      $t8, 0x01B2($t2)
190$:
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t3)
196$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_c_80332C84
	la.l    $a0, object_c_80332C84
	jal     object_c_802FB938
	lw      $a1, 0x014C($t6)
206$:
	b       208$
	nop
208$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_8030DFC4
object_c_8030DFC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0008
	bnez    $t8, 18$
	nop
	lw      $t9, 0x0154($t6)
	beqz    $t9, 21$
	nop
	lui     $at, %hi(object_c_80338C74)
	lwc1    $f6, %lo(object_c_80338C74)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    21$
	nop
18$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	lwc1    $f8, 0x00E4($t0)
	c.eq.s  $f8, $f10
	nop
	bc1f    90$
	nop
	jal     objlib_802A2320
	nop
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     object_c_802FA1F8
	nop
	la.u    $a0, object_c_80332C94
	la.l    $a0, object_c_80332C94
	jal     object_c_802FB938
	li      $a1, 0x0001
	beqz    $v0, 70$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338C78)
	lwc1    $f18, %lo(object_c_80338C78)($at)
	lwc1    $f16, 0x00B8($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t7)
	jal     objlib_802A05B4
	nop
	b       86$
	nop
70$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x014C($t8)
	beq     $t9, $at, 80$
	nop
	lw      $t6, 0x00EC($t8)
	andi    $t0, $t6, 0x0203
	beqz    $t0, 86$
	nop
80$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0001
	sw      $t2, 0x01C4($t3)
	jal     object_c_802FB128
	nop
86$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       92$
	nop
90$:
	jal     objlib_802A2644
	nop
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030E14C
object_c_8030E14C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_8030E16C
object_c_8030E16C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 104$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	bnez    $t0, 40$
	nop
	li.u    $a0, 0x500CA081
	jal     object_playsound
	li.l    $a0, 0x500CA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00FC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	jal     objlib_802A1634
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	swc1    $f0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x00F4($t7)
	beqz    $v0, 99$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, 97$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F8($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    73$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00F4($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00F4($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f10
	b       97$
	swc1    $f10, 0x00F8($t4)
73$:
	li.u    $a0, 0x50468081
	jal     object_playsound
	li.l    $a0, 0x50468081
	li      $at, 0x41300000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t5)
	li      $at, 0x428C0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t6)
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00EC($t8)
97$:
	b       102$
	nop
99$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
102$:
	b       121$
	nop
104$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B0($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    121$
	nop
	li      $at, 0xC1800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t3)
121$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00C8($t1)
	addiu   $t5, $t4, 0x4000
	sw      $t5, 0x00D4($t1)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       130$
	nop
130$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E384:
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	mtc1    $a0, $f10
	lwc1    $f6, 0x016C($t7)
	lwc1    $f4, 0x00A8($t6)
	cvt.s.w $f16, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f16
	nop
	bc1f    17$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       19$
	nop
17$:
	jr      $ra
	move    $v0, $0
19$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030E3E0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lh      $t6, 0x0032($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	subu    $at, $0, $t6
	sll     $a1, $at, 5
	subu    $a1, $a1, $at
	sll     $a1, $a1, 2
	addu    $a1, $a1, $at
	li      $at, 0x3FC00000
	mtc1    $at, $f4
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0038($sp)
	sll     $a1, $a1, 2
	move    $a2, $0
	li      $a3, 0x012C
	move    $a0, $t6
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	swc1    $f4, 0x0010($sp)
	jal     objlib_8029EFFC
	sw      $t9, 0x001C($sp)
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	beqz    $t0, 36$
	nop
	lw      $t1, 0x002C($sp)
	lh      $t3, 0x0032($sp)
	lw      $t2, 0x00D4($t1)
	sll     $t4, $t3, 14
	subu    $t5, $t2, $t4
	sw      $t5, 0x00D4($t1)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8030E488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 19$
	nop
	la.u    $a2, o_130052D0
	la.l    $a2, o_130052D0
	li      $a0, -0x0001
	jal     object_c_8030E3E0
	li      $a1, 0x0058
	la.u    $a2, o_130052D0
	la.l    $a2, o_130052D0
	li      $a0, 0x0001
	jal     object_c_8030E3E0
	li      $a1, 0x0059
	b       35$
	nop
19$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    35$
	nop
	li.u    $a0, 0x506D0081
	jal     object_playsound
	li.l    $a0, 0x506D0081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E52C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x00F8($t6)
	bne     $t7, $at, 78$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0006
	bnez    $at, 76$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, 28$
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
28$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f4, 0x0110($t5)
	c.eq.s  $f4, $f6
	nop
	bc1f    45$
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, 45$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	b       76$
	sw      $t6, 0x014C($t7)
45$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, 64$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	beqz    $v0, 62$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
62$:
	b       76$
	nop
64$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x005B
	bnez    $at, 76$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x43960000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
76$:
	b       81$
	nop
78$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E688:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0075
	beqz    $v0, 13$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030E6D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       188$
	sw      $t8, 0x014C($t9)
13$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01AC($t0)
	bnez    $t1, 188$
	nop
	lw      $t2, 0x0100($t0)
	bnez    $t2, 188$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	beqz    $t4, 91$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3CA3D70A
	li.l    $a2, 0x3CA3D70A
	li      $a1, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	beqz    $v0, 89$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	bgez    $t6, 60$
	nop
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, 58$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object)
	lw      $t8, 0x0104($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0104($t7)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0104($t1)
	bnez    $t0, 58$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0104($t3)
58$:
	b       65$
	nop
60$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0104($t4)
	addiu   $t6, $t5, -0x0001
	sw      $t6, 0x0104($t4)
65$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0104($t8)
	beqz    $t9, 89$
	nop
	li      $at, 0x0001
	beq     $t9, $at, 89$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t1, 0x00FC($t7)
	addiu   $t0, $t1, 0x0001
	sw      $t0, 0x00FC($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x00FC($t2)
	andi    $t3, $s0, 0x0001
	move    $s0, $t3
	bnez    $s0, 89$
	sw      $s0, 0x0100($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sw      $t5, 0x0100($t6)
89$:
	b       188$
	nop
91$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00FC($t4)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00FC($t4)
	jal     object_c_8030E384
	li      $a0, 0x0190
	beqz    $v0, 115$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, -0x0008
	sw      $t1, 0x0104($t0)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0110($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	b       188$
	swc1    $f6, 0x0108($t3)
115$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0002
	lw      $t5, 0x00F8($t2)
	bne     $t5, $at, 177$
	nop
	lw      $t6, 0x00FC($t2)
	li      $at, 0x0006
	div     $0, $t6, $at
	mfhi    $t8
	bnez    $t8, 177$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x0008
	sw      $t9, 0x0104($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0110($t1)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	andi    $s0, $v0, 0x0001
	beqz    $s0, 149$
	sw      $s0, 0x00FC($t0)
	li      $at, 0xBF800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	b       155$
	swc1    $f10, 0x0108($t7)
149$:
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0108($t3)
155$:
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A8($t5)
	swc1    $f18, 0x010C($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A8($t6)
	li      $at, 0x44C80000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	addiu   $a0, $t6, 0x010C
	add.s   $f16, $f4, $f10
	mfc1    $a1, $f8
	mfc1    $a2, $f16
	jal     object_c_802FA2BC
	nop
	b       188$
	nop
177$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x00FC($t8)
	andi    $t9, $s0, 0x0001
	move    $s0, $t9
	bnez    $s0, 188$
	sw      $s0, 0x0100($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t4, -0x0001
	sw      $t4, 0x0100($t1)
188$:
	b       190$
	nop
190$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030E9E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 30$
	nop
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0076
	beqz    $v0, 23$
	nop
	li      $at, 0xC4610000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li.u    $a2, 0xC5674000
	jal     object_b_802F2B88
	li.l    $a2, 0xC5674000
	b       28$
	nop
23$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0154($t8)
28$:
	b       41$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0079
	bnez    $at, 41$
	nop
	jal     Na_BgmStop
	li      $a0, 0x0416
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030EA9C
object_c_8030EA9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338C7C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338C7C)($at)
	jr      $t7
	nop
.globl L8030EAD4
L8030EAD4:
	jal     object_c_8030E488
	nop
	b       34$
	nop
.globl L8030EAE4
L8030EAE4:
	jal     object_c_8030E52C
	nop
	b       34$
	nop
.globl L8030EAF4
L8030EAF4:
	jal     object_c_8030E688
	nop
	b       34$
	nop
.globl L8030EB04
L8030EB04:
	jal     object_c_8030E6D4
	nop
	b       34$
	nop
.globl L8030EB14
L8030EB14:
	jal     object_c_8030E9E0
	nop
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030EB3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, 83$
	nop
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t6)
	slti    $at, $v0, 0x3000
	beqz    $at, 83$
	nop
	li.u    $a0, 0x935A0081
	jal     object_playsound
	li.l    $a0, 0x935A0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, 37$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x000C
	sw      $t3, 0x014C($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	b       53$
	swc1    $f4, 0x00B0($t5)
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0068($t7)
	lw      $t9, 0x00F8($t6)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x00F8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t8, 0x000F
	sw      $t8, 0x014C($t1)
	li      $at, 0x42480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
53$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338C90)
	lwc1    $f10, %lo(object_c_80338C90)($at)
	lwc1    $f8, 0x00B8($t3)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00D4($t4)
	addu    $t7, $t5, $at
	sw      $t7, 0x00C8($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00EC($t9)
	li      $at, 0xC0800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00E4($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0003
	sw      $t6, 0x00F0($t8)
	b       87$
	li      $v0, 0x0001
	b       85$
	nop
83$:
	b       87$
	move    $v0, $0
85$:
	b       87$
	nop
87$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030ECA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x50684081
	jal     object_playsound
	li.l    $a0, 0x50684081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	jal     object_a_802AE334
	nop
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030ECF8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	beqz    $t8, 93$
	nop
	lw      $t9, 0x00F4($t6)
	lui     $t1, %hi(object)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F4($t6)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0144($t1)
	lw      $t2, 0x00F4($t1)
	subu    $at, $0, $t3
	sll     $t4, $at, 2
	subu    $t4, $t4, $at
	slt     $at, $t4, $t2
	beqz    $at, 93$
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 43$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0068($t5)
	lw      $t8, 0x00F8($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t6)
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       91$
	sw      $v0, 0x0218($t1)
43$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a2, 0x41700000
	addiu   $a0, $t3, 0x00A0
	jal     object_c_802FA544
	lw      $a1, 0x0164($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	lwc1    $f6, 0x0164($t2)
	jal     objlib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x44350000
	mtc1    $at, $f8
	mov.s   $f20, $f0
	li      $at, 0x47000000
	div.s   $f10, $f20, $f8
	mtc1    $at, $f16
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lw      $t6, 0x0144($t0)
	sll     $t1, $t6, 2
	subu    $t1, $t1, $t6
	sll     $t1, $t1, 3
	addu    $t1, $t1, $t6
	sll     $t1, $t1, 3
	addiu   $t3, $t1, 0x0190
	mtc1    $t3, $f8
	mul.s   $f18, $f10, $f16
	cvt.s.w $f10, $f8
	trunc.w.s $f4, $f18
	lwc1    $f18, 0x0168($t0)
	mfc1    $t5, $f4
	nop
	andi    $t8, $t5, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t7, $t9, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0190
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t2)
91$:
	b       125$
	nop
93$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0144($t4)
	bgez    $t5, 105$
	nop
	la.u    $a0, 0x070284B0
	jal     segment_to_virtual
	la.l    $a0, 0x070284B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       111$
	sw      $v0, 0x0218($t8)
105$:
	la.u    $a0, 0x07028370
	jal     segment_to_virtual
	la.l    $a0, 0x07028370
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
111$:
	jal     objlib_8029FE6C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44350000
	mtc1    $at, $f10
	lw      $t6, 0x0144($t7)
	lwc1    $f18, 0x0164($t7)
	mtc1    $t6, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t7)
125$:
	b       127$
	nop
127$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030EF08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 119$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0104($t0)
	beqz    $t1, 35$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x0104($t3)
	beq     $t4, $at, 33$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x000A
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t7)
33$:
	b       117$
	nop
35$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x01AC($t9)
	bnez    $t0, 117$
	nop
	lw      $t1, 0x0100($t9)
	beqz    $t1, 117$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0068($t2)
	lw      $t3, 0x0144($t2)
	lw      $t5, 0x0100($t4)
	bne     $t3, $t5, 113$
	nop
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, 60$
	nop
	jal     rand
	nop
	andi    $t6, $v0, 0x0001
	beqz    $t6, 73$
	nop
60$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0160($t0)
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f6
	b       111$
	swc1    $f6, 0x00E4($t1)
73$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0008
	sw      $t2, 0x014C($t4)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lw      $t5, 0x0068($t3)
	mtc1    $0, $f18
	lwc1    $f10, 0x00A0($t6)
	lwc1    $f8, 0x00A0($t5)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    95$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x0800
	b       99$
	sw      $t7, 0x00C8($t8)
95$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0800
	sw      $t9, 0x00C8($t0)
99$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	lw      $t4, 0x0160($t1)
	addu    $t3, $t2, $t4
	sw      $t3, 0x00C8($t1)
	li      $at, 0xC0800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t5)
111$:
	b       117$
	nop
113$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
117$:
	b       126$
	nop
119$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f8, 0x0168($t8)
	lwc1    $f6, 0x0110($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t8)
126$:
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F118:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	lw      $t8, 0x0068($t6)
	sw      $t7, 0x01AC($t8)
	jal     object_c_802FA360
	li      $a0, 0x0004
	beqz    $v0, 59$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x00FC($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x003C
	sw      $t3, 0x0100($t4)
	la.u    $a0, 0x070282F8
	jal     segment_to_virtual
	la.l    $a0, 0x070282F8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0218($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F8($t7)
	beq     $t8, $at, 56$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0160($t9)
	sh      $t0, 0x001E($sp)
	addiu   $a0, $sp, 0x001E
	li      $a1, -0x3000
	jal     object_c_802FA25C
	li      $a2, 0x3000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	b       59$
	nop
56$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00C8($t4)
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030F21C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0005
	li.u    $a2, 0x524B0081
	li.l    $a2, 0x524B0081
	move    $a0, $0
	jal     object_c_802FA428
	move    $a1, $0
	jal     object_c_8030EB3C
	nop
	bnez    $v0, 130$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	bnez    $t8, 54$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F0($t9)
	slti    $at, $t0, 0x0003
	beqz    $at, 32$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t3, $t2, 0x0001
	b       52$
	sw      $t3, 0x00F0($t1)
32$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 52$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	lw      $t6, 0x00D4($t4)
	lw      $t0, 0x0144($t4)
	subu    $t7, $t5, $t6
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	multu   $t0, $t9
	mflo    $t2
	sh      $t2, 0x0026($sp)
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t1)
52$:
	b       130$
	nop
54$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	lw      $s0, 0x0100($t5)
	addiu   $t7, $t6, -0x0001
	beqz    $s0, 79$
	sw      $t7, 0x0100($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x00FC($t8)
	beqz    $t4, 71$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x00FC($t0)
	addiu   $t2, $t9, -0x0001
	sw      $t2, 0x00FC($t0)
71$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object_c_80332CB4)
	lw      $t1, 0x00FC($t3)
	addu    $t6, $t6, $t1
	lb      $t6, %lo(object_c_80332CB4)($t6)
	b       89$
	sw      $t6, 0x00F0($t3)
79$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x0005
	sw      $t7, 0x00FC($t5)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x0032
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0100($t8)
89$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0002
	lw      $t9, 0x0068($t4)
	lw      $t2, 0x00F8($t9)
	beq     $t2, $at, 130$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0154($t1)
	slti    $at, $t6, 0x000B
	bnez    $at, 130$
	nop
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lwc1    $f4, 0x00A8($t1)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t3)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    121$
	nop
	lw      $t7, 0x00EC($t1)
	andi    $t5, $t7, 0x0400
	beqz    $t5, 130$
	nop
121$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t4, 0x0068($t8)
	sw      $0, 0x0100($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t9)
130$:
	b       132$
	nop
132$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8030F440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0007
	jal     object_c_802FA39C
	li      $a1, 0x0001
	beqz    $v0, 44$
	nop
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0218($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x00F8($t8)
	beq     $t9, $at, 30$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	lw      $t4, 0x0068($t2)
	b       44$
	sw      $t3, 0x0100($t4)
30$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x0100($t6)
	bnez    $t7, 44$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	sw      $0, 0x01AC($t1)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F508:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0003
	beqz    $v0, 16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	sw      $t6, 0x014C($t7)
	la.u    $a0, 0x07028274
	jal     segment_to_virtual
	la.l    $a0, 0x07028274
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0218($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0003
	beqz    $t1, 27$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F58C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	move    $a0, $0
	beqz    $v0, 10$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000E
	sw      $t6, 0x014C($t7)
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F5CC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0100($t7)
	beqz    $t8, 10$
	nop
	lw      $t9, 0x00F8($t7)
	li      $at, 0x0002
	beq     $t9, $at, 19$
	nop
10$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	lw      $t4, 0x0068($t2)
	sw      $t3, 0x0100($t4)
19$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030F628:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FA360
	li      $a0, 0x0001
	beqz    $v0, 17$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x01AC($t7)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     objlib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x925B0081
	jal     object_makesound
	li.l    $a0, 0x925B0081
17$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, 31$
	nop
	li.u    $a0, 0x50684081
	jal     object_playsound
	li.l    $a0, 0x50684081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t1)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F6BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A1634
	nop
	swc1    $f0, 0x001C($sp)
	jal     objlib_802A2748
	nop
	sh      $v0, 0x001A($sp)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	mtc1    $0, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	swc1    $f8, 0x001C($sp)
	bc1f    20$
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x001C($sp)
20$:
	lhu     $t6, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f18, %lo(math_sin)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f18, $f4
	lwc1    $f8, 0x0164($t9)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($t9)
	lhu     $t0, 0x001A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x001C($sp)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f4, $f16, $f18
	lwc1    $f8, 0x016C($t3)
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t3)
	move    $a0, $0
	jal     object_c_802FA748
	li      $a1, 0x0190
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x41A00000
	addiu   $a0, $t4, 0x00A4
	jal     object_c_802FA544
	lw      $a1, 0x0168($t4)
	beqz    $v0, 91$
	nop
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    91$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D4($t5)
	bnez    $t6, 91$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t2, 0x0144($t9)
	lw      $t1, 0x0100($t0)
	subu    $t3, $t1, $t2
	sw      $t3, 0x0100($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0068($t4)
	lw      $t5, 0x0144($t4)
	lw      $t7, 0x01AC($t6)
	bne     $t5, $t7, 91$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $0, 0x01AC($t9)
91$:
	b       93$
	nop
93$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030F840:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_8030E384
	li      $a0, 0x0190
	bnez    $v0, 44$
	nop
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t7)
	lwc1    $f4, 0x00A8($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    44$
	nop
	lw      $t8, 0x0068($t6)
	lui     $at, %hi(object_c_80338C94)
	lwc1    $f6, %lo(object_c_80338C94)($at)
	lwc1    $f16, 0x00A8($t8)
	sub.s   $f18, $f4, $f16
	c.lt.s  $f6, $f18
	nop
	bc1t    44$
	nop
	lwc1    $f8, 0x00A0($t6)
	lwc1    $f10, 0x00A0($t8)
	jal     objlib_802A3634
	sub.s   $f12, $f8, $f10
	li      $at, 0x44610000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1t    44$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0200
	beqz    $t1, 68$
	nop
44$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f18, 0x0168($t3)
	li      $a2, 0x41A00000
	addiu   $a0, $t3, 0x00A4
	add.s   $f8, $f18, $f6
	mfc1    $a1, $f8
	jal     object_c_802FA544
	nop
	beqz    $v0, 66$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0007
	sw      $t4, 0x014C($t5)
66$:
	b       90$
	nop
68$:
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     object_c_802FA5D0
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f10, 0x0168($t7)
	li      $a2, 0x41A00000
	addiu   $a0, $t7, 0x00A4
	add.s   $f16, $f10, $f4
	mfc1    $a1, $f16
	jal     object_c_802FA544
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0FA0
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t6)
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030F9C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, 89$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, 83$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00E4($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	jal     object_c_8030ECA8
	nop
	li      $at, 0xC0800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	b       81$
	swc1    $f8, 0x00E4($t2)
31$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x00D4($t3)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t3)
	sh      $v0, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t4)
	c.lt.s  $f10, $f16
	nop
	bc1f    77$
	nop
	lh      $t5, 0x001E($sp)
	slti    $at, $t5, 0x2001
	bnez    $at, 77$
	nop
	slti    $at, $t5, 0x6000
	beqz    $at, 77$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0009
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	lw      $t0, 0x0160($t8)
	subu    $t1, $t9, $t0
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	bgez    $t3, 71$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x4000
	b       75$
	sw      $t4, 0x00C8($t5)
71$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x4000
	sw      $t6, 0x00C8($t7)
75$:
	b       81$
	nop
77$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
81$:
	b       89$
	nop
83$:
	li      $at, 0xC1A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00E4($t0)
89$:
	b       91$
	nop
91$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8030FB3C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0006
	bnez    $at, 52$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lwc1    $f4, 0x00A8($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1t    20$
	nop
	lw      $t9, 0x00EC($t6)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 52$
	nop
20$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0009
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	lwc1    $f4, 0x00A0($t5)
	lwc1    $f18, 0x00A0($t4)
	sub.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    46$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x4000
	b       50$
	sw      $t7, 0x00C8($t8)
46$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, -0x4000
	sw      $t6, 0x00C8($t9)
50$:
	b       58$
	nop
52$:
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t0)
58$:
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8030FC34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A8($t6)
	lwc1    $f6, 0x00A8($t7)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1t    18$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0400
	beqz    $t9, 27$
	nop
18$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	b       42$
	swc1    $f16, 0x00B8($t2)
27$:
	li      $at, 0x40A00000
	mtc1    $at, $f12
	lui     $at, %hi(object_c_80338C98)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338C98)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_c_80338C9C)
	lwc1    $f4, %lo(object_c_80338C9C)($at)
	lwc1    $f18, 0x00B8($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8030FCF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0104($t7)
	bltz    $t8, 11$
	nop
	lw      $t9, 0x0144($t6)
	lw      $t0, 0x0100($t7)
	bne     $t9, $t0, 30$
	nop
11$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000B
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x46800000
	mtc1    $at, $f6
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00D4($t3)
	lwc1    $f4, 0x0108($t4)
	mtc1    $t5, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	sub.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	b       77$
	sw      $t6, 0x00C8($t3)
30$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lw      $t9, 0x0068($t7)
	lw      $t0, 0x0144($t7)
	li      $at, 0x43340000
	lwc1    $f10, 0x0108($t9)
	mtc1    $t0, $f4
	lwc1    $f8, 0x00A0($t9)
	mul.s   $f16, $f6, $f10
	mtc1    $at, $f10
	cvt.s.w $f6, $f4
	add.s   $f18, $f8, $f16
	mul.s   $f8, $f6, $f10
	sub.s   $f16, $f18, $f8
	swc1    $f16, 0x0004($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0164($t1)
	lw      $t2, 0x0068($t1)
	sub.s   $f10, $f4, $f6
	lwc1    $f18, 0x0110($t2)
	mul.s   $f8, $f18, $f10
	add.s   $f16, $f8, $f6
	swc1    $f16, 0x00A0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lw      $t5, 0x0068($t4)
	lwc1    $f8, 0x0168($t4)
	lwc1    $f4, 0x0110($t5)
	mul.s   $f10, $f4, $f18
	add.s   $f6, $f10, $f8
	swc1    $f6, 0x00A4($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0068($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f16, 0x010C($t6)
	lwc1    $f10, 0x0110($t6)
	sub.s   $f18, $f16, $f4
	mul.s   $f8, $f10, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t8)
77$:
	b       79$
	nop
79$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_c_8030FE38:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F8($t7)
	beq     $t8, $at, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	lw      $t1, 0x0068($t9)
	sw      $t0, 0x0100($t1)
14$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x0104($t3)
	bne     $t4, $at, 31$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0005
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	lw      $t9, 0x0068($t7)
	b       106$
	sw      $t8, 0x01AC($t9)
31$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t3, 0x0100($t2)
	bne     $t1, $t3, 106$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0003
	beqz    $t6, 92$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC1700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00E4($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    70$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $0, 0x0100($t9)
	jal     object_c_8030ECA8
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	li      $at, 0xC1700000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	b       90$
	swc1    $f10, 0x00E4($t2)
70$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0068($t1)
	jal     objlib_802A3634
	lwc1    $f12, 0x0108($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B8($t4)
	li      $at, 0x42C80000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00EC($t6)
90$:
	b       106$
	nop
92$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B0($t7)
	c.le.s  $f6, $f8
	nop
	bc1f    106$
	nop
	li      $at, 0xC1A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t8)
106$:
	b       108$
	nop
108$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8030FFF8
object_c_8030FFF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, 17$
	nop
	jal     object_c_8030ECF8
	nop
	b       103$
	nop
17$:
	jal     objlib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, -0x0001
	sltiu   $at, $t1, 0x000F
	beqz    $at, 92$
	nop
	sll     $t1, $t1, 2
	lui     $at, %hi(object_c_80338CA0)
	addu    $at, $at, $t1
	lw      $t1, %lo(object_c_80338CA0)($at)
	jr      $t1
	nop
.globl L80310078
L80310078:
	jal     object_c_8030EF08
	nop
	b       92$
	nop
.globl L80310088
L80310088:
	jal     object_c_8030F118
	nop
	b       92$
	nop
.globl L80310098
L80310098:
	jal     object_c_8030F21C
	nop
	b       92$
	nop
.globl L803100A8
L803100A8:
	jal     object_c_8030F440
	nop
	b       92$
	nop
.globl L803100B8
L803100B8:
	jal     object_c_8030F6BC
	nop
	b       92$
	nop
.globl L803100C8
L803100C8:
	jal     object_c_8030F840
	nop
	b       92$
	nop
.globl L803100D8
L803100D8:
	jal     object_c_8030F9C0
	nop
	b       92$
	nop
.globl L803100E8
L803100E8:
	jal     object_c_8030FB3C
	nop
	b       92$
	nop
.globl L803100F8
L803100F8:
	jal     object_c_8030FC34
	nop
	b       92$
	nop
.globl L80310108
L80310108:
	jal     object_c_8030FCF4
	nop
	b       92$
	nop
.globl L80310118
L80310118:
	jal     object_c_8030FE38
	nop
	b       92$
	nop
.globl L80310128
L80310128:
	jal     object_c_8030F508
	nop
	b       92$
	nop
.globl L80310138
L80310138:
	jal     object_c_8030F58C
	nop
	b       92$
	nop
.globl L80310148
L80310148:
	jal     object_c_8030F5CC
	nop
	b       92$
	nop
.globl L80310158
L80310158:
	jal     object_c_8030F628
	nop
	b       92$
	nop
92$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, object_c_80332CA4
	la.l    $a0, object_c_80332CA4
	jal     object_c_802FB938
	lw      $a1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F8($t3)
	jal     objlib_802A2348
	li      $a0, -0x004E
103$:
	jal     object_map_load
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FC00000
	mtc1    $at, $f10
	lw      $t5, 0x0144($t4)
	mtc1    $t5, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($t4)
	b       117$
	nop
117$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803101DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(mario_obj)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_8029E27C
	lw      $a0, %lo(mario_obj)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00F4($t6)
	li      $at, 0x437A0000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $v0, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sh      $t9, 0x01B2($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x003C
	sh      $t0, 0x01AE($t1)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310258:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0006
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, 12$
	nop
	jal     object_c_802FA3DC
	li      $a0, 0x0005
	b       40$
	nop
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0005
	lw      $t9, 0x0178($t8)
	bne     $t9, $at, 31$
	nop
	jal     object_c_802FA3DC
	move    $a0, $0
	beqz    $v0, 29$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0009
	sh      $t0, 0x0040($t1)
29$:
	b       40$
	nop
31$:
	jal     objlib_802A0008
	li      $a0, 0x0009
	beqz    $v0, 38$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
38$:
	b       44$
	li      $v0, 0x0001
40$:
	b       44$
	move    $v0, $0
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310318:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AE($t6)
	blez    $t7, 55$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01B0($t8)
	slti    $at, $t9, -0x0190
	beqz    $at, 17$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       53$
	sh      $0, 0x01AE($t0)
17$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0178($t1)
	bnez    $t2, 33$
	nop
	jal     objlib_802A0008
	li      $a0, 0x0009
	beqz    $v0, 31$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
	jal     objlib_8029F4B4
	li      $a0, 0x0006
31$:
	b       50$
	nop
33$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object)
	lh      $t4, 0x01AE($t3)
	addiu   $t5, $t4, -0x0001
	sh      $t5, 0x01AE($t3)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AE($t6)
	bnez    $t7, 50$
	nop
	li      $a0, 0x003C
	jal     object_c_802FA964
	li      $a1, 0x003C
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	subu    $t8, $0, $v0
	sh      $t8, 0x01AE($t9)
50$:
	li      $a0, 0x0190
	jal     object_c_802FA660
	li      $a1, 0x000A
53$:
	b       87$
	nop
55$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0258
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t0)
	jal     object_c_80310258
	nop
	beqz    $v0, 87$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AE($t1)
	beqz    $t2, 75$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AE($t4)
	addiu   $t3, $t5, 0x0001
	b       87$
	sh      $t3, 0x01AE($t4)
75$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01B0($t6)
	slti    $at, $t7, -0x0063
	bnez    $at, 87$
	nop
	li      $a0, 0x003C
	jal     object_c_802FA964
	li      $a1, 0x003C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AE($t8)
87$:
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x03E8
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80310498
object_c_80310498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 12$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	b       39$
	sw      $t8, 0x00F0($t9)
12$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00A0($t0)
	swc1    $f4, 0x0104($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	swc1    $f6, 0x0108($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, 0x00A8($t2)
	swc1    $f8, 0x010C($t2)
	jal     save_get_flag
	nop
	li      $at, 0x00020000
	and     $t3, $v0, $at
	beqz    $t3, 35$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       39$
	sw      $t4, 0x00F0($t5)
35$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031054C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $0, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    65$
	nop
	lui     $at, %hi(object_c_80338CDC)
	lwc1    $f8, %lo(object_c_80338CDC)($at)
	swc1    $f8, 0x0018($sp)
	sw      $0, 0x0028($sp)
16$:
	lw      $t8, 0x0028($sp)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	lui     $at, %hi(object_c_80332CCC+4*0)
	addu    $at, $at, $t9
	lwc1    $f16, %lo(object_c_80332CCC+4*0)($at)
	lwc1    $f10, 0x00A0($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	lui     $at, %hi(object_c_80332CCC+4*2)
	addu    $at, $at, $t2
	lwc1    $f6, %lo(object_c_80332CCC+4*2)($at)
	lwc1    $f4, 0x00A8($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	swc1    $f0, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    58$
	nop
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	sw      $t3, 0x002C($sp)
58$:
	lw      $t4, 0x0028($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0003
	bnez    $at, 16$
	sw      $t5, 0x0028($sp)
	b       72$
	nop
65$:
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	mfhi    $t6
	sw      $t6, 0x002C($sp)
	nop
72$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x002C($sp)
	lh      $t9, 0x01AC($t8)
	jal     objlib_802A3674
	subu    $a0, $t7, $t9
	sll     $t0, $v0, 2
	subu    $t0, $t0, $v0
	sll     $t0, $t0, 3
	addu    $t0, $t0, $v0
	sll     $t0, $t0, 4
	mtc1    $t0, $f18
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	cvt.s.w $f16, $f18
	swc1    $f16, 0x00F8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x002C($sp)
	sh      $t2, 0x01AC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80332CCC+4*0)
	lh      $t5, 0x01AC($t4)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(object_c_80332CCC+4*0)($at)
	swc1    $f4, 0x0164($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_c_80332CCC+4*1)
	lh      $t7, 0x01AC($t8)
	lwc1    $f6, 0x00F8($t8)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	lwc1    $f8, %lo(object_c_80332CCC+4*1)($at)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0168($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80332CCC+4*2)
	lh      $t1, 0x01AC($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	lwc1    $f18, %lo(object_c_80332CCC+4*2)($at)
	swc1    $f18, 0x016C($t0)
	jal     objlib_802A1634
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	div.s   $f4, $f0, $f16
	swc1    $f4, 0x00FC($t3)
	b       134$
	nop
134$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80310774:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0030($sp)
	swc1    $f14, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	beqz    $t7, 41$
	nop
	lw      $t8, 0x0154($t6)
	slti    $at, $t8, 0x003D
	bnez    $at, 21$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1t    28$
	nop
21$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t1, 0x0110($t9)
	slt     $at, $t0, $t1
	bnez    $at, 41$
	nop
28$:
	jal     object_c_8031054C
	nop
	li      $a0, 0x012C
	jal     object_c_802FA964
	li      $a1, 0x012C
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0110($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       123$
	sw      $t3, 0x014C($t4)
41$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x00F4($t5)
	mov.s   $f12, $f8
	jal     ATAN2
	sub.s   $f14, $f10, $f8
	li      $t7, 0x4000
	subu    $t8, $t7, $v0
	sh      $t8, 0x002E($sp)
	lui     $at, %hi(object_c_80338CE0)
	lwc1    $f16, %lo(object_c_80338CE0)($at)
	swc1    $f16, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00C8($t6)
	lh      $t0, 0x01B2($t6)
	subu    $t1, $t9, $t0
	sll     $t2, $t1, 16
	sra     $t3, $t2, 16
	bgez    $t3, 66$
	nop
	lh      $t4, 0x002E($sp)
	subu    $t5, $0, $t4
	sh      $t5, 0x002E($sp)
66$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t6, 0x002E($sp)
	lh      $t8, 0x01B2($t7)
	addu    $t9, $t8, $t6
	sh      $t9, 0x01B2($t7)
	jal     object_c_80310318
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $a0, 0x01B2($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	lui     $at, %hi(object_c_80338CE4)
	lwc1    $f4, %lo(object_c_80338CE4)($at)
	lwc1    $f18, 0x0100($t2)
	move    $s0, $t1
	mtc1    $s0, $f10
	mul.s   $f6, $f18, $f4
	cvt.s.w $f8, $f10
	mul.s   $f16, $f6, $f8
	trunc.w.s $f18, $f16
	mfc1    $t4, $f18
	nop
	sh      $t4, 0x002E($sp)
	addiu   $a0, $sp, 0x002E
	li      $a1, 0x0190
	jal     object_c_802FA25C
	li      $a2, 0x02BC
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $a1, 0x002E($sp)
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f4, 0x0100($t8)
	c.lt.s  $f10, $f4
	nop
	bc1f    117$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
117$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x0028($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8031097C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44E10000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       58$
	sw      $0, 0x014C($t7)
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f10
	lwc1    $f8, 0x00FC($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    44$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	mtc1    $0, $f8
	lwc1    $f16, 0x00FC($t9)
	lwc1    $f18, 0x00B8($t9)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x00FC($t9)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00FC($t0)
	c.le.s  $f6, $f8
	nop
	bc1f    44$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x0168($t1)
	lwc1    $f16, 0x00F8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t1)
44$:
	jal     object_c_80310318
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0190
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3D4CCCCD
	li.l    $a2, 0x3D4CCCCD
	lw      $a1, 0x0018($sp)
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
58$:
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310A7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    32$
	nop
	jal     object_c_803101DC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    32$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
32$:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310B2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_803101DC
	nop
	jal     object_c_80310258
	nop
	beqz    $v0, 51$
	nop
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 51$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    51$
	nop
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00D4($t6)
	slti    $at, $v0, 0x0800
	beqz    $at, 51$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x01B0($t7)
	slti    $at, $t8, 0x0400
	beqz    $at, 51$
	nop
	li.u    $a0, 0x503F4081
	jal     object_playsound
	li.l    $a0, 0x503F4081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	sw      $t2, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	jal     objlib_8029F4B4
	li      $a0, 0x0003
51$:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x03E8
	jal     object_c_802FA748
	lw      $a0, 0x0160($t6)
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80310C3C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42700000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, 43$
	nop
	jal     objlib_802A0008
	li      $a0, 0x000B
	beqz    $v0, 21$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
21$:
	jal     object_c_802FA3DC
	move    $a0, $0
	beqz    $v0, 41$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F0($t8)
	beqz    $t9, 37$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       41$
	sw      $0, 0x0110($t1)
37$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
41$:
	b       157$
	nop
43$:
	lui     $t4, %hi(object)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A4($t5)
	lwc1    $f4, 0x00A4($t4)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, 61$
	nop
	jal     object_c_802FA3DC
	li      $a0, 0x0004
	b       78$
	nop
61$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    78$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    78$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0002
78$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x3000
	sh      $t9, 0x01B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	bnez    $t2, 157$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	bnez    $t4, 114$
	nop
	mtc1    $0, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $v0, 0x01B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	sh      $t7, 0x01B2($t6)
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    114$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
114$:
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $t2, $at, 157$
	nop
	li.u    $at, 0x00048000
	li.l    $at, 0x00048000
	and     $t3, $t2, $at
	bnez    $t3, 157$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t4)
	c.lt.s  $f10, $f16
	nop
	bc1f    157$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    157$
	nop
	li      $at, 0x42B40000
	mtc1    $at, $f6
	nop
	c.lt.s  $f18, $f6
	nop
	bc1f    157$
	nop
	jal     collision_8024CA68
	li      $a0, 0x0001
	beqz    $v0, 157$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t7)
157$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0258
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0258
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0258
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t0)
	b       174$
	nop
174$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_80310F04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	move    $a0, $0
	jal     object_c_802FA6D4
	li      $a1, 0x0320
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	li      $a1, 0x0320
	lw      $a0, 0x00C8($t6)
	jal     object_c_802FA748
	addu    $a0, $a0, $at
	move    $a0, $0
	jal     object_c_802FA7BC
	li      $a1, 0x0320
	jal     objlib_8029FF04
	nop
	beqz    $v0, 63$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0007
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t9)
	jal     object_c_802F9770
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	subu    $t0, $0, $v0
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00B0($t2)
	lwc1    $f10, 0x00B8($t2)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	swc1    $f0, 0x0100($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	swc1    $f18, 0x0164($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t5)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0168($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A8($t6)
	swc1    $f8, 0x016C($t6)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311018:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x42200000
	li      $a2, 0x41200000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0100
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x03E8
	jal     object_c_802FA660
	lh      $a0, 0x01B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x03E8
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0258
	jal     object_c_802FA158
	lh      $a0, 0x01B2($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x03E8
	jal     object_c_802FA748
	lw      $a0, 0x00C8($t9)
	beqz    $v0, 59$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00D0($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C4($t0)
	bnez    $v0, 59$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t2)
	lui     $at, %hi(object_c_80338CE8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, %lo(object_c_80338CE8)($at)
	swc1    $f4, 0x0168($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, -0x0064
	sh      $t4, 0x01AE($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0008
	sw      $t8, 0x008C($t6)
	jal     objlib_802A05D4
	nop
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031111C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012C
	beqz    $at, 16$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       78$
	nop
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, 62$
	nop
	li      $at, 0xC4FA0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0164($t0)
	li      $at, 0xC47A0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x016C($t1)
	lui     $at, %hi(object_c_80338CEC)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f8, %lo(object_c_80338CEC)($at)
	lui     $t3, %hi(object)
	swc1    $f8, 0x00F4($t2)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	swc1    $f10, 0x0168($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338CF0)
	lwc1    $f18, %lo(object_c_80338CF0)($at)
	lwc1    $f16, 0x00A4($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    56$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       60$
	nop
56$:
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_c_8031097C
	nop
60$:
	b       78$
	nop
62$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x0104($t7)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0108($t8)
	swc1    $f6, 0x0168($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x010C($t9)
	swc1    $f8, 0x016C($t9)
78$:
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_8031126C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lui     $t7, %hi(object)
	swc1    $f4, 0x00B0($t6)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00B0($t7)
	swc1    $f6, 0x00B8($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_8031129C
object_c_8031129C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A1634
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_c_802FA1B0
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01B0($t8)
	jal     objlib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x01B2($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0006
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 31$
	nop
	jal     object_c_80310F04
	nop
	b       170$
	nop
31$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x0100($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	sltiu   $at, $t4, 0x0008
	beqz    $at, L803113E0
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_c_80338CF4)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_c_80338CF4)($at)
	jr      $t4
	nop
.globl L80311358
L80311358:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42200000
	mtc1    $at, $f14
	jal     object_c_80310774
	nop
	b       L803113E0
	nop
.globl L80311378
L80311378:
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     object_c_8031097C
	nop
	b       L803113E0
	nop
.globl L80311390
L80311390:
	jal     object_c_80310A7C
	nop
	b       L803113E0
	nop
.globl L803113A0
L803113A0:
	jal     object_c_80310B2C
	nop
	b       L803113E0
	nop
.globl L803113B0
L803113B0:
	jal     object_c_80310C3C
	nop
	b       L803113E0
	nop
.globl L803113C0
L803113C0:
	jal     object_c_8031111C
	nop
	b       L803113E0
	nop
.globl L803113D0
L803113D0:
	jal     object_c_80311018
	nop
	b       L803113E0
	nop
.globl L803113E0
L803113E0:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332CBC
	la.u    $a2, object_c_80332CF0
	la.l    $a2, object_c_80332CF0
	la.l    $a0, object_c_80332CBC
	jal     object_c_802FB518
	lw      $a1, 0x014C($t5)
	beqz    $v0, 152$
	nop
	li.u    $a0, 0x50406081
	jal     object_playsound
	li.l    $a0, 0x50406081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x00F0($t6)
	bne     $t7, $at, 110$
	nop
	jal     save_clr_flag
	li      $a0, 0x00020000
	lui     $a0, %hi(object)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0088
	b       123$
	nop
110$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x00F0($t8)
	bne     $t9, $at, 123$
	nop
	lui     $at, %hi(object_c_80338D14)
	lwc1    $f12, %lo(object_c_80338D14)($at)
	li      $at, 0x43960000
	mtc1    $at, $f14
	li.u    $a2, 0xC4688000
	jal     object_b_802F2B88
	li.l    $a2, 0xC4688000
123$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0006
	sw      $t1, 0x014C($t2)
	li      $at, 0xC0000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x0160($t4)
	addu    $t6, $t5, $at
	sw      $t6, 0x00C8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0009
	lw      $t8, 0x008C($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t7)
	jal     objlib_802A05B4
	nop
	b       170$
	nop
152$:
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	beq     $t1, $at, 164$
	nop
	li.u    $at, 0x00048000
	li.l    $at, 0x00048000
	and     $t2, $t1, $at
	beqz    $t2, 168$
	nop
164$:
	jal     objlib_802A05B4
	nop
	b       170$
	nop
168$:
	jal     objlib_802A05D4
	nop
170$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x3000
	li      $a2, 0x0258
	jal     object_c_802FA900
	lh      $a0, 0x01B2($t3)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       180$
	nop
180$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_8031157C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 14$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    75$
	nop
14$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, 45$
	nop
	li.u    $a0, 0x30690081
	jal     object_playsound
	li.l    $a0, 0x30690081
	sw      $0, 0x001C($sp)
23$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13005354
	la.l    $a2, o_13005354
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0054
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0006
	bnez    $at, 23$
	sw      $t1, 0x001C($sp)
	li      $at, 0xC1A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0164($t2)
	lui     $at, %hi(object_c_80338D18)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_c_80338D18)($at)
	swc1    $f10, 0x016C($t3)
45$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     randf
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f18, $f0, $f16
	li      $t8, 0x1388
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	subu    $t9, $t8, $t6
	sw      $t9, 0x00C4($t0)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	li      $at, 0x42200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t2)
	jal     objlib_8029F694
	nop
75$:
	b       77$
	nop
77$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_c_803116C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x45FA0000
	mtc1    $at, $f6
	lw      $t8, 0x0068($t7)
	lwc1    $f4, 0x00A4($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    21$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       101$
	nop
21$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, 46$
	nop
	jal     objlib_802A1634
	nop
	swc1    $f0, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338D1C)
	lwc1    $f10, %lo(object_c_80338D1C)($at)
	lwc1    $f8, 0x00A4($t1)
	lwc1    $f12, 0x0018($sp)
	jal     ATAN2
	sub.s   $f14, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F8($t2)
	jal     objlib_802A2748
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       85$
	sw      $v0, 0x00FC($t3)
46$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $a0, $t4
	jal     objlib_8029E27C
	lw      $a1, 0x0068($t4)
	swc1    $f0, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x0018($sp)
	lw      $t6, 0x0068($t5)
	lwc1    $f16, 0x00A4($t5)
	lwc1    $f18, 0x00A4($t6)
	jal     ATAN2
	sub.s   $f14, $f16, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $t8
	jal     objlib_8029E694
	lw      $a1, 0x0068($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00FC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     objlib_8029E2F8
	lw      $a1, 0x0068($t0)
	lui     $at, %hi(object_c_80338D20)
	lwc1    $f4, %lo(object_c_80338D20)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t1)
85$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x008C
	jal     object_c_802FA660
	lw      $a0, 0x00F8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0320
	jal     objlib_8029E5EC
	lw      $a0, 0x00FC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x3000
	li      $a2, 0x0258
	jal     object_c_802FA900
	lw      $a0, 0x00FC($t4)
101$:
	jal     objlib_802A2644
	nop
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80311874
object_c_80311874:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 17$
	nop
	b       21$
	nop
13$:
	jal     object_c_8031157C
	nop
	b       21$
	nop
17$:
	jal     object_c_803116C0
	nop
	b       21$
	nop
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803118E4
object_c_803118E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, 0x0078
	lh      $t7, 0x00AA($t6)
	bne     $t7, $at, 22$
	nop
	li      $at, 0x41000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0144($t0)
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	lw      $t8, 0x00F4($t6)
	slt     $at, $t8, $t7
	beqz    $at, 30$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lwc1    $f4, 0x00A4($t6)
	mtc1    $0, $f10
	lwc1    $f6, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	c.le.s  $f8, $f10
	nop
	bc1f    30$
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 30$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_803119E4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_c_80332CF8)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $a0, $a0, $t8
	jal     object_c_802F97BC
	lh      $a0, %lo(object_c_80332CF8)($a0)
	sw      $v0, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $at, 0x0001
	bne     $t9, $at, 59$
	nop
	la.u    $a0, o_130053C4
	jal     objlib_8029F95C
	la.l    $a0, o_130053C4
	sw      $v0, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x0068($t1)
	la.u    $a0, o_130053DC
	jal     objlib_8029F95C
	la.l    $a0, o_130053DC
	sw      $v0, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0028($sp)
	sw      $t2, 0x0068($t3)
	la.u    $a0, 0x07023604
	jal     segment_to_virtual
	la.l    $a0, 0x07023604
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $s0, $v0
	lui     $t5, %hi(object)
	sw      $s0, 0x0100($t4)
	lw      $t5, %lo(object)($t5)
	sw      $s0, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0104($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x42700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	b       70$
	nop
59$:
	lw      $t0, 0x002C($sp)
	li      $at, 0x0002
	bne     $t0, $at, 70$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x003C
	sw      $t2, 0x00F4($t3)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80311B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_c_802FCC00
	li      $a0, 0x0001
	beqz    $v0, 16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	li      $at, 0x41A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
16$:
	li      $a0, 0x4000
	jal     objlib_8029E5EC
	li      $a1, 0x09C4
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311B7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	jal     objlib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	bne     $v0, $at, 16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x01B0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       126$
	sw      $t8, 0x014C($t9)
16$:
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0028($sp)
	li.u    $a0, 0x60050001
	jal     object_levelsound
	li.l    $a0, 0x60050001
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x002C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1t    45$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0104($t2)
	andi    $t4, $t3, 0x00FF
	slti    $at, $t4, 0x0023
	bnez    $at, 64$
	nop
45$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0104($t5)
	andi    $t7, $t6, 0x00FF
	slti    $at, $t7, 0x0023
	bnez    $at, 56$
	nop
	li      $at, 0x42700000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
56$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC3FA0000
	li      $a2, 0x42C80000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
	b       70$
	nop
64$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x447A0000
	li      $a2, 0x41F00000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0110
70$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x002C($sp)
	lui     $at, %hi(object_c_80338D24)
	lwc1    $f6, 0x0110($t8)
	lwc1    $f16, %lo(object_c_80338D24)($at)
	add.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0028($sp)
	jal     object_c_802FA2BC
	li      $a2, 0x43160000
	lui     $at, %hi(object_c_80338D28)
	lwc1    $f14, %lo(object_c_80338D28)($at)
	jal     object_c_802FA5D0
	lwc1    $f12, 0x002C($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	lw      $a0, 0x010C($t9)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     objlib_8029E5EC
	nop
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 126$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0003
	beqz    $t3, 126$
	nop
	li      $at, 0x40800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	la.u    $t6, o_13002528
	la.l    $t6, o_13002528
	li      $t5, 0x0096
	sw      $t5, 0x0018($sp)
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0064
	move    $a3, $0
	sw      $t4, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f16, 0x0010($sp)
126$:
	jal     objlib_802A0114
	nop
	beqz    $v0, 142$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, 140$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sh      $t9, 0x01B2($t0)
140$:
	b       145$
	nop
142$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
145$:
	b       147$
	nop
147$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80311DD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t6)
	c.eq.s  $f4, $f6
	nop
	bc1t    37$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, 35$
	nop
	lw      $t9, 0x00EC($t7)
	andi    $t0, $t9, 0x0200
	beqz    $t0, 35$
	nop
	li.u    $a0, 0x50684081
	jal     object_playsound
	li.l    $a0, 0x50684081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t2)
35$:
	b       45$
	nop
37$:
	jal     object_c_802FA360
	li      $a0, 0x0002
	beqz    $v0, 45$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x014C($t4)
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80311EA4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x01AC($t6)
	bnez    $t7, 68$
	nop
	move    $a0, $0
	jal     objlib_8029E5EC
	li      $a1, 0x00C8
	beqz    $v0, 56$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 54$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x01AE($t9)
	beqz    $t0, 50$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	beqz    $t2, 44$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0084
	sh      $t3, 0x01AC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       48$
	sh      $0, 0x01AE($t5)
44$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0038
	sh      $t6, 0x01AC($t7)
48$:
	b       54$
	nop
50$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0025
	sh      $t8, 0x01AC($t9)
54$:
	b       66$
	nop
56$:
	jal     objlib_8029F4B4
	move    $a0, $0
	jal     object_a_802BED7C
	li      $a0, 0x0001
	li      $at, 0x40800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
66$:
	b       109$
	nop
68$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01AC($t1)
	blez    $t2, 93$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	lh      $a3, 0x01AC($t3)
	sw      $v0, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	beqz    $t4, 91$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x0001
	sh      $t5, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
91$:
	b       109$
	nop
93$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AE($t8)
	beqz    $t9, 109$
	nop
	lui     $at, %hi(object_c_80338D2C)
	lwc1    $f12, %lo(object_c_80338D2C)($at)
	lui     $at, %hi(object_c_80338D30)
	li.u    $a2, 0xC5D3B000
	li.l    $a2, 0xC5D3B000
	lwc1    $f14, %lo(object_c_80338D30)($at)
	jal     objlib_802A5588
	li      $a3, 0x43480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x01AE($t0)
109$:
	b       111$
	nop
111$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80312070
object_c_80312070:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, 40$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_c_80338D34)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_c_80338D34)($at)
	jr      $t7
	nop
.globl L803120B0
L803120B0:
	jal     object_c_80311954
	nop
	b       40$
	nop
.globl L803120C0
L803120C0:
	jal     object_c_803119E4
	nop
	b       40$
	nop
.globl L803120D0
L803120D0:
	jal     object_c_80311B18
	nop
	b       40$
	nop
.globl L803120E0
L803120E0:
	jal     object_c_80311B7C
	nop
	b       40$
	nop
.globl L803120F0
L803120F0:
	jal     object_c_80311DD8
	nop
	b       40$
	nop
.globl L80312100
L80312100:
	jal     object_c_80311EA4
	nop
	b       40$
	nop
40$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     objlib_802A4F58
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t1, object_c_80332CF8
	la.l    $t1, object_c_80332CF8
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t2, $t0, $t1
	lwc1    $f12, 0x0004($t2)
	jal     objlib_802A390C
	lwc1    $f14, 0x0008($t2)
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80312168
object_c_80312168:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x01B0($t7)
	bnez    $t8, 23$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    34$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lwc1    $f10, 0x00A8($t6)
	mtc1    $0, $f18
	lwc1    $f8, 0x00A8($t9)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    34$
	nop
23$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x01B0($t1)
	bnez    $t2, 34$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	lw      $t5, 0x0068($t4)
	sh      $t3, 0x01AE($t5)
34$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80312200
object_c_80312200:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    14$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	lw      $t9, 0x0068($t8)
	sh      $t7, 0x01B2($t9)
14$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80312248
object_c_80312248:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 59$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	bnez    $t0, 57$
	nop
	sw      $0, 0x0030($sp)
14$:
	lw      $t1, 0x0030($sp)
	lui     $t3, %hi(object_c_80332D10+2*1)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_c_80332D10+2*1)($t3)
	sh      $t3, 0x002E($sp)
	lw      $t4, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a1, %hi(object_c_80332D10+2*0)
	la.u    $t8, o_13005414
	sll     $t5, $t4, 2
	addu    $a1, $a1, $t5
	la.l    $t8, o_13005414
	li      $t7, 0x003C
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	lh      $a1, %lo(object_c_80332D10+2*0)($a1)
	move    $a2, $0
	lh      $a3, 0x002E($sp)
	andi    $a0, $t4, 0x0001
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	beqz    $t9, 47$
	nop
	lh      $t0, 0x002E($sp)
	blez    $t0, 47$
	nop
	lw      $t2, 0x0034($sp)
	li      $t1, 0x8000
	sw      $t1, 0x00D4($t2)
47$:
	lw      $t3, 0x0030($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0006
	bnez    $at, 14$
	sw      $t4, 0x0030($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
57$:
	b       68$
	nop
59$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, 68$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_c_80312370:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 169$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	beqz    $t9, 51$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, -0x07D0
	li      $a2, 0x00C8
	jal     objlib_8029E530
	lw      $a0, 0x0114($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0114($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $a0, $0
	lw      $a1, 0x0114($t2)
	jal     object_c_802FA6D4
	subu    $a1, $0, $a1
	beqz    $v0, 47$
	nop
	li.u    $a0, 0x315B0081
	jal     object_playsound
	li.l    $a0, 0x315B0081
	jal     object_c_802F9904
	move    $a0, $0
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D4($t3)
	addiu   $t5, $t4, -0x4000
	sw      $t5, 0x00C8($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	jal     object_c_802F9820
	nop
	jal     object_a_802AE334
	nop
	jal     object_c_802F9904
	li      $a0, 0x0002
47$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       169$
	sw      $0, 0x0154($t6)
51$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x00D6($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00D6($t1)
	sra     $t4, $t2, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0028($sp)
	lui     $t3, %hi(mario_obj)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, %lo(mario_obj)($t3)
	lwc1    $f10, 0x00A0($t6)
	lwc1    $f8, 0x00A0($t3)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t7, %hi(mario_obj)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(mario_obj)($t7)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f18, 0x00A8($t7)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, 166$
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f18, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1t    123$
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	lw      $t2, 0x000C($t1)
	bne     $t2, $at, 166$
	nop
123$:
	lui     $t4, %hi(mario_obj)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, %lo(mario_obj)($t4)
	li      $at, 0x43480000
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00A4($t4)
	mtc1    $at, $f10
	sub.s   $f8, $f6, $f4
	c.lt.s  $f8, $f10
	nop
	bc1f    166$
	nop
	jal     objlib_802A3634
	lwc1    $f12, 0x001C($sp)
	li      $at, 0x430C0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    166$
	nop
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f16, 0x0018($sp)
	c.lt.s  $f16, $f6
	nop
	bc1f    166$
	nop
	li      $at, 0xC3E10000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f16
	nop
	bc1f    166$
	nop
	li.u    $a0, 0x315A0081
	jal     object_playsound
	li.l    $a0, 0x315A0081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t6)
166$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
169$:
	b       171$
	nop
171$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_8031262C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x4000
	lw      $t7, 0x00D0($t6)
	beq     $t7, $at, 24$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x03E8
	li      $a2, 0x00C8
	jal     objlib_8029E530
	lw      $a0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x4000
	jal     object_c_802FA6D4
	lw      $a1, 0x0114($t0)
	b       66$
	nop
24$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, 37$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       63$
	sw      $0, 0x00D8($t4)
37$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001F
	bnez    $at, 63$
	nop
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	andi    $t8, $t7, 0x0003
	bnez    $t8, 51$
	nop
	li.u    $a0, 0x315B0081
	jal     object_playsound
	li.l    $a0, 0x315B0081
51$:
	lui     $t9, %hi(gfx_frame)
	lw      $t9, %lo(gfx_frame)($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	andi    $t0, $t9, 0x0001
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 4
	addiu   $t2, $t1, -0x00C8
	sw      $t2, 0x00D8($t3)
63$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0114($t4)
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8031274C
object_c_8031274C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bnez    $t8, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       39$
	nop
14$:
	lui     $at, %hi(object_c_80338D4C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_c_80338D4C)($at)
	swc1    $f4, 0x0030($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x014C($t0)
	beqz    $s0, 29$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 33$
	nop
	b       37$
	nop
29$:
	jal     object_c_80312370
	nop
	b       37$
	nop
33$:
	jal     object_c_8031262C
	nop
	b       37$
	nop
37$:
	jal     object_map_load
	nop
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     object_c_802FA39C
	li      $a1, 0x0019
	beqz    $v0, 22$
	nop
	li.u    $a0, 0x30274081
	jal     object_playsound
	li.l    $a0, 0x30274081
	jal     object_a_802AE334
	nop
	jal     objlib_802A05D4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000A
	sw      $t6, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       57$
	sw      $0, 0x0154($t8)
22$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0097
	bnez    $at, 43$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    43$
	nop
	li.u    $a0, 0x30264081
	jal     object_playsound
	li.l    $a0, 0x30264081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       57$
	sw      $t1, 0x014C($t2)
43$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, 57$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, -0x0001
	sw      $t7, 0x00F4($t5)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     objlib_802A18DC
	nop
57$:
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_c_80312900:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0097
	bnez    $at, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       79$
	sw      $0, 0x014C($t8)
12$:
	jal     object_c_802F9730
	nop
	beqz    $v0, 73$
	nop
	li      $a0, 0x0001
	jal     object_c_802FA39C
	li      $a1, 0x0008
	beqz    $v0, 73$
	nop
	li      $t9, -0x2000
	sh      $t9, 0x002E($sp)
23$:
	lhu     $t0, 0x002E($sp)
	lui     $at, %hi(math_sin)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x002C($sp)
	lhu     $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	nop
	sh      $t9, 0x002A($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_130002E4
	la.l    $t2, o_130002E4
	li      $t1, 0x00A8
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	lh      $a1, 0x002C($sp)
	li      $a2, 0x001E
	lh      $a3, 0x002A($sp)
	jal     obj_make_off
	sw      $t0, 0x0010($sp)
	lh      $t3, 0x002E($sp)
	addiu   $t4, $t3, 0x0555
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	slti    $at, $t6, 0x2000
	bnez    $at, 23$
	sh      $t4, 0x002E($sp)
	b       79$
	nop
73$:
	jal     objlib_802A0008
	li      $a0, 0x001E
	beqz    $v0, 79$
	nop
	jal     objlib_802A05B4
	nop
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_c_80312A54
object_c_80312A54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0030($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	b       27$
	nop
19$:
	jal     object_c_80312804
	nop
	b       27$
	nop
23$:
	jal     object_c_80312900
	nop
	b       27$
	nop
27$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, object_c_80332D28
	la.l    $a0, object_c_80332D28
	jal     object_c_802FB938
	lw      $a1, 0x014C($t8)
	b       35$
	nop
35$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312AF4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x002C($sp)
3$:
	lw      $t6, 0x002C($sp)
	la.u    $t8, object_c_80332D48
	la.l    $t8, object_c_80332D48
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lh      $a1, 0x0000($t9)
	lh      $a3, 0x0002($t9)
	lui     $at, %hi(object_c_80338D50)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_c_80338D50)($at)
	la.u    $t2, o_130054A0
	la.l    $t2, o_130054A0
	li      $t1, 0x00A6
	sw      $t1, 0x0018($sp)
	sw      $t2, 0x001C($sp)
	move    $a0, $0
	move    $a2, $0
	sw      $t0, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lw      $t3, 0x002C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0004
	bnez    $at, 3$
	sw      $t4, 0x002C($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_80312B80:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	beqz    $t8, 32$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	lw      $t2, 0x0100($t0)
	slt     $at, $t2, $t1
	beqz    $at, 30$
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 30$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
30$:
	b       93$
	nop
32$:
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	andi    $t7, $t6, 0x0010
	beqz    $t7, 93$
	nop
	jal     object_c_80312AF4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, 93$
	nop
	lw      $a2, 0x00F4($t8)
	li.u    $a3, 0x3CA3D70A
	li      $t0, 0x0005
	li      $t1, 0x0032
	li      $t2, 0x00C8
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x3CA3D70A
	addiu   $a0, $t8, 0x01AC
	jal     object_c_802FA830
	addiu   $a1, $t8, 0x00C8
	beqz    $v0, 93$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0100($t3)
	beqz    $t4, 73$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	addiu   $t7, $t6, -0x0001
	b       93$
	sw      $t7, 0x0100($t5)
73$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 93$
	nop
	li.u    $a0, 0x504F0081
	jal     object_playsound
	li.l    $a0, 0x504F0081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t8)
	li      $at, 0x42A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x01AC($t1)
93$:
	b       95$
	nop
95$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312D0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0010
	bnez    $t8, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       96$
	sw      $0, 0x014C($t9)
13$:
	jal     object_c_80312AF4
	nop
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0200
	beqz    $t2, 41$
	nop
	jal     objlib_802A3268
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_c_80338D54)
	lwc1    $f6, %lo(object_c_80338D54)($at)
	lwc1    $f4, 0x00B8($t4)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, -0x0009
	lw      $t6, 0x008C($t5)
	and     $t7, $t6, $at
	sw      $t7, 0x008C($t5)
41$:
	mtc1    $0, $f12
	lui     $at, %hi(object_c_80338D58)
	jal     object_c_802FA5D0
	lwc1    $f14, %lo(object_c_80338D58)($at)
	beqz    $v0, 96$
	nop
	jal     objlib_8029FFA4
	nop
	beqz    $v0, 96$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	sw      $t9, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338D5C)
	lwc1    $f16, %lo(object_c_80338D5C)($at)
	lwc1    $f10, 0x015C($t0)
	c.le.s  $f16, $f10
	nop
	bc1f    69$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       82$
	sw      $t2, 0x00F4($t1)
69$:
	jal     rand
	nop
	andi    $s0, $v0, 0xFFFF
	bgez    $s0, 77$
	andi    $a0, $s0, 0x1FFF
	beqz    $a0, 77$
	nop
	addiu   $a0, $a0, -0x2000
77$:
	jal     object_c_802FAA64
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
82$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0100($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x008C($t7)
	ori     $t9, $t5, 0x0008
	sw      $t9, 0x008C($t7)
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80312EA8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0003
	bnez    $t8, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       147$
	sw      $0, 0x014C($t9)
13$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80338D60)
	lwc1    $f14, %lo(object_c_80338D60)($at)
	jal     object_c_802FA5D0
	lwc1    $f12, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80338D64)
	lwc1    $f6, %lo(object_c_80338D64)($at)
	lwc1    $f4, 0x00B8($t1)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	li      $a0, 0x0002
	jal     objlib_8029F514
	lw      $a1, 0x0024($sp)
	li.u    $a2, 0x504E0081
	li.l    $a2, 0x504E0081
	li      $a0, 0x0003
	jal     object_c_802FA428
	li      $a1, 0x000D
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	beqz    $t3, 48$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0400
	jal     object_c_802FB0CC
	lw      $a0, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       142$
	sw      $v0, 0x00F8($t5)
48$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D68)
	lwc1    $f16, %lo(object_c_80338D68)($at)
	lwc1    $f10, 0x015C($t6)
	c.le.s  $f16, $f10
	nop
	bc1f    67$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00F4($t7)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0100($t9)
67$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_c_802FB01C
	addiu   $a0, $a0, 0x00F4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	bnez    $s0, 142$
	sw      $s0, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x015C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    95$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0160($t2)
	sw      $t3, 0x00F4($t2)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       142$
	swc1    $f6, 0x00FC($t4)
95$:
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0100($t6)
	beqz    $t8, 112$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0100($t7)
	addiu   $t0, $t9, -0x0001
	b       142$
	sw      $t0, 0x0100($t7)
112$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 142$
	nop
	jal     rand
	nop
	andi    $t1, $v0, 0x0003
	beqz    $t1, 133$
	nop
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00F4($t3)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	b       142$
	sw      $v0, 0x0100($t2)
133$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0100($t5)
142$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x00F4($t6)
147$:
	b       149$
	nop
149$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_80313110
object_c_80313110:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $t6, 0x5072C081
	li.l    $t6, 0x5072C081
	sw      $t6, 0x01C4($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	jal     objlib_802A2320
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 27$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 35$
	nop
	b       39$
	nop
27$:
	jal     object_c_80312B80
	nop
	b       39$
	nop
31$:
	jal     object_c_80312D0C
	nop
	b       39$
	nop
35$:
	jal     object_c_80312EA8
	nop
	b       39$
	nop
39$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a0, object_c_80332D38
	la.l    $a0, object_c_80332D38
	jal     object_c_802FB938
	lw      $a1, 0x014C($t9)
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803131E8
object_c_803131E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a1, 0x0000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x002C
	beqz    $v0, 14$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
14$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_set_scale
	lwc1    $f12, 0x002C($t6)
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	li      $at, 0x0006
	lui     $t9, %hi(object)
	divu    $0, $t7, $at
	lw      $t9, %lo(object)($t9)
	mflo    $t8
	sw      $t8, 0x00F0($t9)
	nop
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_8031326C
object_c_8031326C:
	li      $at, 0x46000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_c_80313294
object_c_80313294:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	bgez    $t9, 18$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t0)
	add.s   $f8, $f4, $f6
	b       25$
	swc1    $f8, 0x00F8($t0)
18$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F8($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t1)
25$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00F4($t2)
	lwc1    $f6, 0x00F8($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00F4($t3)
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x00D8($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0004($sp)
	lw      $t7, 0x00D8($t6)
	subu    $t9, $t7, $t8
	sw      $t9, 0x011C($t6)
	b       46$
	nop
46$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_c_80313354
object_c_80313354:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0038($sp)
	sw      $0, 0x003C($sp)
5$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0038($sp)
	lw      $t8, 0x00F4($t7)
	and     $t0, $t8, $t9
	bnez    $t0, 105$
	nop
	lw      $t2, 0x003C($sp)
	lui     $t4, %hi(object_c_80332D58+2*0)
	lui     $t1, %hi(mario_obj)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_c_80332D58+2*0)($t4)
	lw      $t1, %lo(mario_obj)($t1)
	mtc1    $t4, $f6
	lwc1    $f4, 0x00A0($t1)
	cvt.s.w $f8, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t6, 0x003C($sp)
	lui     $t8, %hi(object_c_80332D58+2*1)
	lui     $t5, %hi(mario_obj)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(object_c_80332D58+2*1)($t8)
	lw      $t5, %lo(mario_obj)($t5)
	mtc1    $t8, $f18
	lwc1    $f16, 0x00A4($t5)
	cvt.s.w $f6, $f18
	sub.s   $f4, $f16, $f6
	swc1    $f4, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lui     $t2, %hi(object_c_80332D58+2*2)
	lui     $t9, %hi(mario_obj)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_c_80332D58+2*2)($t2)
	lw      $t9, %lo(mario_obj)($t9)
	mtc1    $t2, $f10
	lwc1    $f8, 0x00A8($t9)
	cvt.s.w $f18, $f10
	sub.s   $f16, $f8, $f18
	swc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x002C($sp)
	mul.s   $f4, $f6, $f6
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f18, $f4, $f8
	mul.s   $f6, $f16, $f16
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x0028($sp)
	lui     $at, %hi(object_c_80338D6C)
	lwc1    $f8, %lo(object_c_80338D6C)($at)
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    105$
	nop
	lui     $at, %hi(object_c_80338D70)
	lwc1    $f16, %lo(object_c_80338D70)($at)
	c.lt.s  $f4, $f16
	nop
	bc1f    105$
	nop
	lw      $t3, 0x003C($sp)
	la.u    $t5, object_c_80332D58+2*0
	la.l    $t5, object_c_80332D58+2*0
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t6, $t4, $t5
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x0000($t6)
	lh      $a2, 0x0002($t6)
	lh      $a3, 0x0004($t6)
	la.u    $t9, o_13005504
	la.l    $t9, o_13005504
	li      $t8, 0x003F
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a0, $t3
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	beqz    $v0, 105$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0038($sp)
	lw      $t1, 0x00F4($t0)
	or      $t3, $t1, $t2
	sw      $t3, 0x00F4($t0)
105$:
	lw      $t4, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x001F
	sll     $t7, $t6, 1
	sw      $t7, 0x0038($sp)
	bnez    $at, 5$
	sw      $t5, 0x003C($sp)
	b       115$
	nop
115$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_c_80313530
object_c_80313530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	beqz    $t7, 52$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0003
	bnez    $t9, 18$
	nop
	lui     $at, %hi(object_c_80338D74)
	lwc1    $f6, %lo(object_c_80338D74)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    52$
	nop
18$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0001
	li      $at, -0x0001
	lw      $t5, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t7, 0x00F4($t5)
	sllv    $t3, $t2, $t1
	xor     $t4, $t3, $at
	and     $t8, $t4, $t7
	sw      $t8, 0x00F4($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_c_80338D78)
	lwc1    $f10, %lo(object_c_80338D78)($at)
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    43$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       50$
	nop
43$:
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     objlib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x302E2081
	jal     object_makesound
	li.l    $a0, 0x302E2081
50$:
	b       97$
	nop
52$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	lwc1    $f16, 0x00E4($t6)
	c.eq.s  $f16, $f18
	nop
	bc1f    91$
	nop
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0214($t2)
	bne     $t1, $t3, 84$
	nop
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     objlib_802A18DC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x0010
	bnez    $at, 82$
	nop
	lui     $at, %hi(object_c_80338D7C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_c_80338D7C)($at)
	swc1    $f4, 0x00E4($t7)
82$:
	b       89$
	nop
84$:
	jal     objlib_802A184C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
89$:
	b       95$
	nop
91$:
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
95$:
	jal     object_map_load
	nop
97$:
	b       99$
	nop
99$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803136CC
object_c_803136CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_get_flag
	nop
	andi    $t6, $v0, 0x00A0
	bnez    $t6, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       28$
	nop
12$:
	li      $at, 0x42C80000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0208($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lw      $t9, 0x0144($t8)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00F8($t8)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_80313754
object_c_80313754:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, 30$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00FC($t8)
	lwc1    $f6, 0x00F4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0000
	addiu   $a0, $t9, 0x00FC
	jal     object_c_802FA2BC
	lw      $a2, 0x00F8($t9)
	beqz    $v0, 30$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00F4($t0)
	neg.s   $f16, $f10
	swc1    $f16, 0x00F4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
30$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     object_c_802F9820
	lwc1    $f12, 0x00FC($t2)
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_c_803137F4
object_c_803137F4:
	li      $at, 0x3F400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_c_8031381C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	andi    $t8, $t7, 0x0003
	sw      $t8, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	bnez    $t9, 19$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    111$
	nop
19$:
	lw      $t1, 0x002C($sp)
	bnez    $t1, 51$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
24$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13005598
	la.l    $t5, o_13005598
	li      $t4, 0x00BB
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t3, 0x0010($sp)
	lw      $t6, 0x0028($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, 24$
	sw      $t7, 0x0028($sp)
	jal     rand
	nop
	li      $at, 0x0003
	div     $0, $v0, $at
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mfhi    $t8
	sw      $t8, 0x0110($t9)
	nop
51$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0068($t0)
	lw      $t1, 0x0144($t0)
	lw      $t3, 0x0110($t2)
	bne     $t1, $t3, 63$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       74$
	sw      $t4, 0x0108($t5)
63$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0144($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 74$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, -0x0001
	sw      $t0, 0x0108($t2)
74$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x5555
	lw      $t5, 0x0144($t4)
	multu   $t5, $at
	mflo    $t6
	mtc1    $t6, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00FC($t4)
	move    $a0, $0
	jal     object_c_802FA964
	li      $a1, 0x5555
	mtc1    $v0, $f16
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	cvt.s.w $f18, $f16
	lwc1    $f4, 0x00FC($t7)
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x00C8($t7)
	li      $a0, 0x000F
	jal     object_c_802FA964
	li      $a1, 0x000F
	mtc1    $v0, $f10
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00F8($t0)
	jal     objlib_8029F694
	nop
111$:
	b       113$
	nop
113$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_c_803139F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D80)
	lwc1    $f6, %lo(object_c_80338D80)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    17$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       118$
	nop
17$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41000000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003C
	beqz    $at, 35$
	nop
	jal     objlib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       67$
	sw      $v0, 0x0104($t9)
35$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00FC($t0)
	trunc.w.s $f10, $f8
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x0104($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x006F
	bnez    $at, 67$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t3)
	c.lt.s  $f16, $f18
	nop
	bc1f    67$
	nop
	lw      $t5, 0x0108($t3)
	bltz    $t5, 67$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F8($t8)
67$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0168($t9)
	lwc1    $f8, 0x00E8($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    79$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00E8($t1)
	swc1    $f10, 0x0168($t1)
79$:
	li      $a0, 0x0032
	jal     object_c_802FA964
	li      $a1, 0x0032
	mtc1    $v0, $f18
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	cvt.s.w $f4, $f18
	lwc1    $f6, 0x0168($t2)
	lwc1    $f16, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	c.lt.s  $f16, $f8
	nop
	bc1f    98$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t0, -0x2000
	b       102$
	sw      $t0, 0x0100($t4)
98$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x2000
	sw      $t3, 0x0100($t5)
102$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0190
	jal     object_c_802FA660
	lw      $a0, 0x0100($t6)
	li      $a0, 0x0190
	jal     object_c_802FA964
	li      $a1, 0x0320
	sll     $s0, $v0, 16
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sra     $t7, $s0, 16
	move    $s0, $t7
	move    $a1, $s0
	jal     objlib_8029E5EC
	lw      $a0, 0x0104($t8)
118$:
	b       120$
	nop
120$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80313BE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, 136$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x010C($t8)
	bnez    $t9, 56$
	nop
	li      $at, 0x3FC00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	la.u    $t2, o_13002528
	la.l    $t2, o_13002528
	li      $t1, 0x0096
	sw      $t1, 0x0018($sp)
	sw      $t2, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0028
	move    $a3, $0
	sw      $t0, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t6, %hi(object_c_80332E24+0x00)
	lw      $t4, 0x0108($t3)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(object_c_80332E24+0x00)($t6)
	sw      $t6, 0x010C($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     objlib_802A04C0
	lw      $a0, 0x010C($t7)
	lui     $a0, %hi(object)
	jal     objlib_802A19AC
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00A4($t9)
	b       102$
	swc1    $f8, 0x0168($t9)
56$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_c_80332E24+0x08)
	lw      $t1, 0x0108($t0)
	lwc1    $f10, 0x00F4($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(object_c_80332E24+0x08)($at)
	c.le.s  $f16, $f10
	nop
	bc1f    102$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	beqz    $t5, 92$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a2, %hi(object_c_80332E24+0x04)
	lw      $t3, 0x0108($t6)
	move    $a0, $t6
	lw      $a1, 0x010C($t6)
	sll     $t7, $t3, 2
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 2
	addu    $a2, $a2, $t7
	jal     obj_make_here
	lw      $a2, %lo(object_c_80332E24+0x04)($a2)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       102$
	nop
92$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	li      $at, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0128($t0)
102$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_c_80332E24+0x08)
	lw      $t2, 0x0108($t1)
	lwc1    $f10, 0x00F4($t1)
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(object_c_80332E24+0x08)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	nop
	div.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00F4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0108($t5)
	bnez    $t6, 136$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x437A0000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t3)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00DC($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f8, 0x00DC($t7)
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t7)
136$:
	b       138$
	nop
138$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80313E1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_c_80332E14
	la.l    $a0, object_c_80332E14
	jal     object_c_802FB938
	li      $a1, -0x0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 20$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0200
	bnez    $t9, 20$
	nop
	lw      $t0, 0x0154($t6)
	slti    $at, $t0, 0x009E
	bnez    $at, 37$
	nop
20$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00A4($t1)
	lwc1    $f6, 0x00DC($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t1)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00CD
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       99$
	nop
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0079
	bnez    $at, 84$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x01AE($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f10, %lo(math_cos)($at)
	lui     $at, %hi(object_c_80338D84)
	lwc1    $f16, %lo(object_c_80338D84)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x001C($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    73$
	nop
	li      $at, 0x40900000
	mtc1    $at, $f10
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x01AC($t9)
	addiu   $t0, $t6, 0x2710
	b       78$
	sw      $t0, 0x01AC($t9)
73$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x01AC($t1)
	addiu   $t3, $t2, 0x0FA0
	sw      $t3, 0x01AC($t1)
78$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00F4($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t4)
84$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x0320
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t5)
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	li      $a1, 0x0320
99$:
	b       101$
	nop
101$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_c_80313FC0
object_c_80313FC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 21$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 25$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 33$
	nop
	b       37$
	nop
21$:
	jal     object_c_8031381C
	nop
	b       37$
	nop
25$:
	jal     object_c_803139F0
	nop
	b       37$
	nop
29$:
	jal     object_c_80313BE4
	nop
	b       37$
	nop
33$:
	jal     object_c_80313E1C
	nop
	b       37$
	nop
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F8($t8)
	jal     objlib_802A2348
	li      $a0, 0x004E
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_80314098:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_802A1634
	nop
	swc1    $f0, 0x0024($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     object_c_802FBAB4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	jal     object_c_802FA1B0
	lwc1    $f12, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $v0, 0x01AC($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40A00000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	beqz    $t9, 42$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     objlib_802A11A8
	lh      $a1, 0x01AE($t0)
	slti    $at, $v0, 0x0320
	beqz    $at, 40$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00FC($t1)
40$:
	b       114$
	nop
42$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_c_80338D88)
	lwc1    $f6, %lo(object_c_80338D88)($at)
	lwc1    $f4, 0x015C($t2)
	c.le.s  $f6, $f4
	nop
	bc1f    61$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0160($t3)
	sh      $t4, 0x01AE($t3)
	li      $a0, 0x0014
	jal     object_c_802FA964
	li      $a1, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
61$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x00EC($t6)
	andi    $t7, $s0, 0x0200
	move    $s0, $t7
	beqz    $s0, 74$
	sw      $s0, 0x00FC($t6)
	jal     objlib_802A3268
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       114$
	sh      $v0, 0x01AE($t8)
74$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x001F
	bnez    $at, 92$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    92$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       114$
	sw      $t1, 0x014C($t2)
92$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00F8($t4)
	beqz    $t3, 103$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00F8($t5)
	addiu   $t6, $t7, -0x0001
	b       114$
	sw      $t6, 0x00F8($t5)
103$:
	jal     object_c_802FAA64
	li      $a0, 0x2000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $v0, 0x01AE($t8)
	li      $a0, 0x0064
	jal     object_c_802FA964
	li      $a1, 0x0064
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00F8($t0)
114$:
	b       116$
	nop
116$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_c_8031427C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $at, %hi(object_c_80338D8C)
	jal     object_c_802FBAB4
	lwc1    $f12, %lo(object_c_80338D8C)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_c_80338D90)
	lwc1    $f6, %lo(object_c_80338D90)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    19$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       207$
	sw      $0, 0x014C($t7)
19$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	beqz    $t9, 124$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object)
	lw      $t1, 0x0100($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0100($t0)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0100($t3)
	bnez    $t4, 41$
	nop
	li.u    $a0, 0x50734081
	jal     object_playsound
	li.l    $a0, 0x50734081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       122$
	sw      $0, 0x014C($t5)
41$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	slti    $at, $t7, 0x000F
	beqz    $at, 52$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       122$
	sw      $t8, 0x00F0($t9)
52$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0014
	lw      $t2, 0x0100($t1)
	bne     $t2, $at, 104$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f12, 0x00A0($t0)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mov.s   $f20, $f0
	li      $at, 0x41A00000
	lwc1    $f8, 0x00A4($t3)
	mtc1    $at, $f16
	li      $t8, 0x2710
	sub.s   $f10, $f20, $f8
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t5, $f4
	nop
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	subu    $t9, $t8, $t7
	sh      $t9, 0x0026($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x0026($sp)
	lh      $t2, 0x01AC($t1)
	subu    $t3, $t2, $t0
	sh      $t3, 0x01AC($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x01AC($t4)
	sw      $t5, 0x00C4($t4)
	li      $at, 0x42200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F0($t7)
	b       122$
	nop
104$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	sh      $t2, 0x01AE($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0104($t0)
	sh      $t3, 0x01AC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0190
	jal     objlib_8029E5EC
	lh      $a0, 0x01AE($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a1, 0x0190
	jal     object_c_802FA660
	lh      $a0, 0x01AC($t5)
122$:
	b       207$
	nop
124$:
	lui     $t4, %hi(mario_obj)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $a1, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a0, 0x00D4($t4)
	slti    $at, $v0, 0x3000
	beqz    $at, 165$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x44480000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t8)
	mtc1    $at, $f12
	jal     ATAN2
	sub.s   $f14, $f8, $f10
	li      $t7, 0x4000
	subu    $t2, $t7, $v0
	sh      $t2, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00C8($t9)
	lw      $t0, 0x0160($t9)
	subu    $t1, $t3, $t0
	sll     $t5, $t1, 16
	sra     $t4, $t5, 16
	bgez    $t4, 157$
	nop
	lh      $t6, 0x0024($sp)
	subu    $t8, $0, $t6
	sh      $t8, 0x0024($sp)
157$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0024($sp)
	lw      $t2, 0x0160($t7)
	addu    $t3, $t2, $t9
	sh      $t3, 0x01AE($t7)
	b       169$
	nop
165$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sh      $t1, 0x01AE($t0)
169$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0104($t5)
	sh      $t4, 0x01AC($t5)
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	jal     object_c_802F9890
	li      $a1, 0x0BB8
	beqz    $v0, 201$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a0, 0x01AC($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C4($t6)
	slti    $at, $v0, 0x0BB8
	beqz    $at, 201$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x001E
	sw      $t8, 0x0100($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00F4($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t3, 0x0001
	b       207$
	sw      $t3, 0x00F0($t7)
201$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41A00000
	li      $a2, 0x3F000000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x00F4
207$:
	b       209$
	nop
209$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_c_803145D4
object_c_803145D4:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x2001
	lw      $t7, 0x0190($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0190($t6)
	li      $at, 0x42F00000
	mtc1    $at, $f12
	jal     object_c_802FA4C4
	move    $a1, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x1000
	beqz    $at, 56$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x0104($t1)
	lw      $a1, 0x00C4($t1)
	jal     objlib_802A11A8
	addiu   $a0, $a0, 0x0800
	slti    $at, $v0, 0x2000
	beqz    $at, 56$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F0($t2)
	beqz    $t3, 50$
	nop
	li      $at, 0x437A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f4, $f6
	nop
	bc1f    50$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0190($t4)
	ori     $t7, $t5, 0x2000
	sw      $t7, 0x0190($t4)
50$:
	li      $at, 0x42C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	b       62$
	swc1    $f8, 0x0200($t8)
56$:
	li      $at, 0x43160000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0200($t6)
62$:
	jal     objlib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 74$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 78$
	nop
	b       82$
	nop
74$:
	jal     object_c_80314098
	nop
	b       82$
	nop
78$:
	jal     object_c_8031427C
	nop
	b       82$
	nop
82$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t3, $t1, 0x0078
	beqz    $t3, 214$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x00EC($t2)
	andi    $t7, $t5, 0x0008
	beqz    $t7, 118$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002C14
	la.l    $a2, o_13002C14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A7
	sw      $v0, 0x0038($sp)
	lw      $t4, 0x0038($sp)
	beqz    $t4, 107$
	nop
	lw      $a0, 0x0038($sp)
	jal     obj_set_scale
	li      $a1, 0x40400000
107$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00B0($t8)
	swc1    $f16, 0x0108($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x010C($t6)
	b       180$
	nop
118$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40800000
	jal     object_c_802FA544
	addiu   $a0, $a0, 0x0108
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t0, %hi(object)
	li      $at, 0x3F800000
	lwc1    $f4, 0x010C($t9)
	lwc1    $f6, 0x0108($t9)
	mtc1    $at, $f16
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x010C($t9)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x010C($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    180$
	nop
	jal     rand
	nop
	sh      $v0, 0x0036($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x010C($t1)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x010C($t1)
	lhu     $t3, 0x0036($sp)
	lui     $at, %hi(math_cos)
	lui     $t8, %hi(object)
	sra     $t2, $t3, 4
	sll     $t5, $t2, 2
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43160000
	mul.s   $f16, $f8, $f10
	mtc1    $at, $f6
	lw      $t8, %lo(object)($t8)
	la.u    $t9, o_13000444
	mul.s   $f8, $f4, $f6
	la.l    $t9, o_13000444
	li      $t6, 0x00A4
	sw      $t6, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a0, $0
	trunc.w.s $f18, $f16
	li      $a2, 0x0064
	sw      $t8, 0x0010($sp)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f18
	mfc1    $a3, $f10
	jal     obj_make_off
	nop
180$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $a3, 0x3D4CCCCD
	li      $t1, 0x000A
	lh      $a2, 0x01AC($t0)
	li      $t3, 0x0032
	li      $t2, 0x07D0
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li.l    $a3, 0x3D4CCCCD
	addiu   $a0, $t0, 0x01B0
	jal     object_c_802FA830
	addiu   $a1, $t0, 0x00C4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $a3, 0x3D4CCCCD
	li      $t5, 0x000A
	lh      $a2, 0x01AE($t7)
	li      $t4, 0x0032
	li      $t8, 0x07D0
	sw      $t8, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	li.l    $a3, 0x3D4CCCCD
	addiu   $a0, $t7, 0x01B2
	jal     object_c_802FA830
	addiu   $a1, $t7, 0x00C8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	jal     object_c_802FA1F8
	lwc1    $f12, 0x00F4($t6)
	b       239$
	nop
214$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x00B0($t9)
	lwc1    $f4, 0x00B8($t9)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00F4($t0)
	jal     object_c_802F9770
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0190
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x01B0($t2)
239$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0190
	jal     object_c_802FA6D4
	lw      $a0, 0x00C4($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a0, object_c_80332E3C
	la.l    $a0, object_c_80332E3C
	jal     object_c_802FB938
	lw      $a1, 0x014C($t5)
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00E8($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f18, 0x00E8($t8)
	c.lt.s  $f4, $f18
	nop
	bc1f    271$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00E8($t6)
	swc1    $f6, 0x00A4($t6)
271$:
	b       273$
	nop
273$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop
