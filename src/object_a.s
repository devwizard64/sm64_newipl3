.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

object_a_802A5620:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00BC($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f18, 0x00BC($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A0($t4)
	lwc1    $f8, 0x00AC($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00A8($t5)
	lwc1    $f18, 0x00B4($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t5)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A56BC
object_a_802A56BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13000000
	jal     objlib_8029F95C
	la.l    $a0, o_13000000
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 130$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_803378B4)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_803378B4)($at)
	jr      $t7
	nop
.globl L802A5704
L802A5704:
	jal     objlib_802A05D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x00030000
	lw      $t9, 0x0134($t8)
	and     $t0, $t9, $at
	beqz    $t0, 31$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
31$:
	lw      $t3, 0x0018($sp)
	beqz    $t3, 41$
	nop
	lw      $t4, 0x014C($t3)
	beqz    $t4, 41$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
41$:
	b       130$
	nop
.globl L802A5768
L802A5768:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 54$
	nop
	lh      $t9, 0x00CA($t7)
	bltz    $t9, 54$
	nop
	li.u    $a0, 0x304EC081
	jal     object_playsound
	li.l    $a0, 0x304EC081
54$:
	jal     objlib_802A05B4
	nop
	li      $at, 0xC1000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00BC($t0)
	jal     object_a_802A5620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0010
	bnez    $at, 75$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
75$:
	b       130$
	nop
.globl L802A57F0
L802A57F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0154($t6)
	slti    $at, $t8, 0x001F
	bnez    $at, 88$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x014C($t7)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t7)
88$:
	b       130$
	nop
.globl L802A5824
L802A5824:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 101$
	nop
	lh      $t4, 0x00CA($t1)
	bltz    $t4, 101$
	nop
	li.u    $a0, 0x304FC081
	jal     object_playsound
	li.l    $a0, 0x304FC081
101$:
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00BC($t5)
	jal     object_a_802A5620
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t6, 0x0154($t3)
	slti    $at, $t6, 0x0010
	bnez    $at, 120$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
120$:
	b       130$
	nop
.globl L802A58A4
L802A58A4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	b       130$
	nop
130$:
	b       132$
	nop
132$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A58DC
object_a_802A58DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 32$
	nop
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t8)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	mul.s   $f18, $f0, $f16
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t9)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
32$:
	jal     objlib_802A2644
	nop
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A597C
object_a_802A597C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	li      $at, 0x41A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     objlib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, 25$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	b       44$
	sw      $t0, 0x014C($t1)
25$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0065
	beqz    $at, 39$
	nop
	lw      $t4, 0x00EC($t2)
	andi    $t5, $t4, 0x0200
	bnez    $t5, 39$
	nop
	lh      $t6, 0x0074($t2)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 44$
	nop
39$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A5A44
object_a_802A5A44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x001C($sp)
6$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00AA
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x000A
	bnez    $at, 6$
	sw      $t7, 0x001C($sp)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A5AA0
object_a_802A5AA0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033006C
	jal     objlib_802A3E30
	la.l    $a0, object_a_8033006C
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A5ACC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($t6)
	swc1    $f4, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130000AC
	la.l    $a2, o_130000AC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00AA
	sw      $v0, 0x001C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f8, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A4($t7)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0018($sp)
	lhu     $t9, 0x00CA($t8)
	lw      $t2, 0x001C($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f6
	lwc1    $f18, 0x00A0($t2)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f10, $f8, $f16
	add.s   $f4, $f18, $f10
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0018($sp)
	lhu     $t4, 0x00CA($t3)
	lw      $t7, 0x001C($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x42B40000
	mtc1    $at, $f8
	lwc1    $f4, 0x00A8($t7)
	mul.s   $f16, $f6, $f8
	nop
	mul.s   $f10, $f16, $f18
	add.s   $f6, $f4, $f10
	swc1    $f6, 0x00A8($t7)
	li.u    $a0, 0x50010081
	jal     object_playsound
	li.l    $a0, 0x50010081
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A5BD4
object_a_802A5BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     objlib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	bnez    $t9, 52$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     objlib_8029F3A8
	lw      $a1, 0x0068($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0030($t1)
	move    $a1, $0
	move    $a2, $0
	mul.s   $f8, $f4, $f6
	move    $a0, $t1
	trunc.w.s $f10, $f8
	mfc1    $a3, $f10
	jal     objlib_8029E8BC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x002C
	jal     objlib_802A2930
	li      $a2, 0x000F
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0006
	jal     objlib_802A2804
	li      $a2, 0x002C
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C4($t3)
	sw      $t4, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	lwc1    $f16, 0x0030($t5)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00DC($t5)
52$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0110($t7)
	beq     $t8, $at, 64$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0001
	b       79$
	sw      $t9, 0x00F0($t0)
64$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t4, $t2, 0x0001
	sw      $t4, 0x00F0($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x000F
	lw      $t5, 0x00F0($t3)
	bne     $t5, $at, 79$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $0, 0x0110($t7)
79$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lh      $t0, 0x0074($t9)
	bnez    $t0, 88$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A5D4C
object_a_802A5D4C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 11$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	b       15$
	swc1    $f4, 0x001C($sp)
11$:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
15$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0100($t8)
	bgez    $t9, 23$
	nop
	li      $t0, 0x1000
	b       25$
	sh      $t0, 0x0034($sp)
23$:
	li      $t1, -0x1000
	sh      $t1, 0x0034($sp)
25$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42C00000
	mtc1    $at, $f16
	lw      $t3, 0x0154($t2)
	addiu   $t4, $t3, 0x0001
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0040
	beqz    $at, 182$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	sh      $t8, 0x0036($sp)
	li      $at, 0x46800000
	mtc1    $at, $f4
	lwc1    $f6, 0x002C($sp)
	li      $t0, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, 80$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, 78$
	nop
	mfc1    $t0, $f10
	li      $at, 0x80000000
	b       84$
	or      $t0, $t0, $at
78$:
	b       84$
	li      $t0, -0x0001
80$:
	mfc1    $t0, $f10
	nop
	bltz    $t0, 78$
	nop
84$:
	lh      $t4, 0x0034($sp)
	ctc1    $t9, $31
	lui     $t5, %hi(object)
	mtc1    $t4, $f18
	lw      $t5, %lo(object)($t5)
	andi    $t1, $t0, 0xFFFF
	cvt.s.w $f4, $f18
	sra     $t2, $t1, 4
	lw      $t6, 0x00C8($t5)
	sll     $t3, $t2, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	mtc1    $t6, $f8
	mul.s   $f6, $f4, $f16
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f6
	trunc.w.s $f4, $f18
	mfc1    $t8, $f4
	nop
	sw      $t8, 0x00C8($t5)
	lh      $t9, 0x0036($sp)
	bgez    $t9, 116$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	bltz    $t1, 116$
	nop
	li.u    $a0, 0x906B0081
	jal     object_playsound
	li.l    $a0, 0x906B0081
116$:
	li      $at, 0x46800000
	mtc1    $at, $f16
	lwc1    $f8, 0x002C($sp)
	li      $t3, 0x0001
	mul.s   $f10, $f16, $f8
	cfc1    $t2, $31
	ctc1    $t3, $31
	nop
	cvt.w.s $f6, $f10
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 150$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t3, 0x0001
	sub.s   $f6, $f10, $f6
	ctc1    $t3, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 148$
	nop
	mfc1    $t3, $f6
	li      $at, 0x80000000
	b       154$
	or      $t3, $t3, $at
148$:
	b       154$
	li      $t3, -0x0001
150$:
	mfc1    $t3, $f6
	nop
	bltz    $t3, 148$
	nop
154$:
	andi    $t4, $t3, 0xFFFF
	sra     $t6, $t4, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_cos)($at)
	ctc1    $t2, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f4, $f18
	li      $at, 0xC0D00000
	sub.d   $f8, $f16, $f4
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.d   $f6, $f8, $f10
	trunc.w.d $f18, $f6
	mfc1    $t5, $f18
	nop
	sw      $t5, 0x00C4($t9)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     objlib_802A18DC
	nop
	b       493$
	nop
182$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0060
	beqz    $at, 401$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0040
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 197$
	nop
	li.u    $a0, 0x50140081
	jal     object_playsound
	li.l    $a0, 0x50140081
197$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42000000
	mtc1    $at, $f8
	lw      $t6, 0x0154($t4)
	addiu   $t7, $t6, -0x003F
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	div.s   $f10, $f4, $f8
	swc1    $f10, 0x0030($sp)
	li      $at, 0x46800000
	mtc1    $at, $f6
	lwc1    $f18, 0x002C($sp)
	li      $t5, 0x0001
	mul.s   $f16, $f6, $f18
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f4, $f16
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 242$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f4
	li      $t5, 0x0001
	sub.s   $f4, $f16, $f4
	ctc1    $t5, $31
	nop
	cvt.w.s $f4, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, 240$
	nop
	mfc1    $t5, $f4
	li      $at, 0x80000000
	b       246$
	or      $t5, $t5, $at
240$:
	b       246$
	li      $t5, -0x0001
242$:
	mfc1    $t5, $f4
	nop
	bltz    $t5, 240$
	nop
246$:
	lh      $t2, 0x0034($sp)
	ctc1    $t8, $31
	lui     $t3, %hi(object)
	mtc1    $t2, $f10
	lw      $t3, %lo(object)($t3)
	andi    $t9, $t5, 0xFFFF
	cvt.s.w $f6, $f10
	sra     $t0, $t9, 4
	lw      $t4, 0x00C8($t3)
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	mtc1    $t4, $f16
	mul.s   $f18, $f6, $f8
	cvt.s.w $f4, $f16
	add.s   $f10, $f4, $f18
	trunc.w.s $f6, $f10
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x00C8($t3)
	li      $at, 0x46800000
	mtc1    $at, $f8
	lwc1    $f16, 0x002C($sp)
	li      $t5, 0x0001
	mul.s   $f4, $f8, $f16
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 301$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t5, 0x0001
	sub.s   $f18, $f4, $f18
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, 299$
	nop
	mfc1    $t5, $f18
	li      $at, 0x80000000
	b       305$
	or      $t5, $t5, $at
299$:
	b       305$
	li      $t5, -0x0001
301$:
	mfc1    $t5, $f18
	nop
	bltz    $t5, 299$
	nop
305$:
	andi    $t9, $t5, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	ctc1    $t8, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f10
	li      $at, 0xC0D00000
	sub.d   $f16, $f8, $f6
	mtc1    $at, $f5
	mtc1    $0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.d   $f18, $f16, $f4
	trunc.w.d $f10, $f18
	mfc1    $t4, $f10
	nop
	sw      $t4, 0x00C4($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f4
	sub.s   $f16, $f8, $f6
	mul.s   $f18, $f16, $f4
	trunc.w.s $f10, $f18
	mfc1    $t3, $f10
	nop
	mtc1    $t3, $f8
	jal     objlib_802A18DC
	cvt.s.w $f12, $f8
	li      $at, 0x46800000
	mtc1    $at, $f6
	lwc1    $f16, 0x0030($sp)
	li      $t5, 0x0001
	mul.s   $f4, $f6, $f16
	cfc1    $t8, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f4
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 374$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t5, 0x0001
	sub.s   $f18, $f4, $f18
	ctc1    $t5, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, 372$
	nop
	mfc1    $t5, $f18
	li      $at, 0x80000000
	b       378$
	or      $t5, $t5, $at
372$:
	b       378$
	li      $t5, -0x0001
374$:
	mfc1    $t5, $f18
	nop
	bltz    $t5, 372$
	nop
378$:
	andi    $t9, $t5, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	ctc1    $t8, $31
	lui     $at, %hi(object_a_803378C8)
	ldc1    $f6, %lo(object_a_803378C8)($at)
	cvt.d.s $f8, $f10
	lui     $at, %hi(object_a_803378D0)
	mul.d   $f16, $f8, $f6
	ldc1    $f4, %lo(object_a_803378D0)($at)
	add.d   $f18, $f16, $f4
	cvt.s.d $f10, $f18
	swc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	mul.s   $f12, $f8, $f6
	jal     object_set_scale
	nop
	b       493$
	nop
401$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0154($t2)
	slti    $at, $t4, 0x0068
	beqz    $at, 409$
	nop
	b       493$
	nop
409$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x00A8
	beqz    $at, 490$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0068
	lw      $t8, 0x0154($t3)
	bne     $t8, $at, 459$
	nop
	jal     objlib_802A05B4
	nop
	jal     objlib_802A37AC
	nop
	lwc1    $f16, 0x001C($sp)
	lui     $at, %hi(object_a_803378D8)
	ldc1    $f18, %lo(object_a_803378D8)($at)
	cvt.d.s $f4, $f16
	lui     $t5, %hi(object)
	mul.d   $f10, $f4, $f18
	lw      $t5, %lo(object)($t5)
	cvt.s.d $f8, $f10
	swc1    $f8, 0x010C($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	beqz    $t0, 457$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f6, 0x00A4($t1)
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x00A4($t1)
	lui     $at, %hi(object_a_803378E0)
	lwc1    $f12, %lo(object_a_803378E0)($at)
	li      $at, 0x44FA0000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC3A00000
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       459$
	nop
457$:
	jal     objlib_802A5524
	nop
459$:
	lwc1    $f10, 0x001C($sp)
	lui     $at, %hi(object_a_803378E8)
	ldc1    $f18, %lo(object_a_803378E8)($at)
	cvt.d.s $f8, $f10
	lui     $t2, %hi(object)
	mul.d   $f6, $f18, $f8
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x010C($t2)
	cvt.d.s $f4, $f16
	sub.d   $f10, $f4, $f6
	cvt.s.d $f18, $f10
	swc1    $f18, 0x010C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	lwc1    $f8, 0x010C($t4)
	c.lt.s  $f8, $f16
	nop
	bc1f    484$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x010C($t6)
484$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_set_scale
	lwc1    $f12, 0x010C($t7)
	b       493$
	nop
490$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
493$:
	b       495$
	nop
495$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A6518
object_a_802A6518:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 34$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, 21$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x00C8
	b       25$
	sw      $t2, 0x00F4($t3)
21$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0078
	sw      $t4, 0x00F4($t5)
25$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0100($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0104($t8)
34$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x0800
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     objlib_8029E714
	li      $a3, 0x0400
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x001E($sp)
	lh      $t1, 0x00CA($t0)
	subu    $t2, $t9, $t1
	sh      $t2, 0x001C($sp)
	lh      $t3, 0x001C($sp)
	bnez    $t3, 64$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       106$
	sw      $0, 0x0100($t5)
64$:
	lh      $t6, 0x001C($sp)
	blez    $t6, 87$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0100($t7)
	blez    $t8, 79$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x001C($sp)
	lw      $t9, 0x00FC($t0)
	addu    $t2, $t9, $t1
	b       82$
	sw      $t2, 0x00FC($t0)
79$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00FC($t3)
82$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	b       106$
	sw      $t4, 0x0100($t5)
87$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0100($t6)
	bgez    $t7, 99$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t1, 0x001C($sp)
	lw      $t9, 0x00FC($t8)
	subu    $t2, $t9, $t1
	b       102$
	sw      $t2, 0x00FC($t8)
99$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
102$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, -0x0001
	sw      $t3, 0x0100($t4)
106$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00FC($t5)
	bnez    $t6, 115$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0078
	sw      $t7, 0x00F4($t9)
115$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $at, 0x00010001
	li.l    $at, 0x00010001
	lw      $t2, 0x00FC($t1)
	slt     $at, $t2, $at
	bnez    $at, 127$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t0)
127$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, 144$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0078
	sw      $t9, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
144$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00FC($t8)
	slti    $at, $t0, 0x1388
	beqz    $at, 191$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	lw      $t3, 0x0104($t4)
	bne     $t5, $t3, 160$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0110($t7)
160$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0108($t9)
	lw      $t8, 0x0104($t9)
	addiu   $t2, $t1, 0x0014
	bne     $t2, $t8, 185$
	nop
	jal     object_a_802A5ACC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t3, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t3, %lo(object)($t3)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0108($t3)
185$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	addiu   $t1, $t7, 0x0001
	b       207$
	sw      $t1, 0x0104($t6)
191$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f18
	mtc1    $at, $f6
	lui     $t0, %hi(object)
	mul.s   $f4, $f0, $f18
	lw      $t0, %lo(object)($t0)
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0108($t0)
207$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    220$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t3)
220$:
	b       222$
	nop
222$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A68A0
object_a_802A68A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	sh      $v0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $a1, 0x001E($sp)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t6)
	sh      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x00D4($t8)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t7)
	sh      $v0, 0x001A($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 62$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x001E
	sw      $t2, 0x0104($t3)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0108($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 58$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0100
	b       62$
	sw      $t0, 0x0118($t1)
58$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0100
	sw      $t2, 0x0118($t3)
62$:
	lh      $t4, 0x001C($sp)
	slti    $at, $t4, 0x0400
	beqz    $at, 91$
	nop
	lh      $t5, 0x001A($sp)
	slti    $at, $t5, 0x4001
	bnez    $at, 91$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t6)
	c.lt.s  $f10, $f16
	nop
	bc1f    84$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       89$
	sw      $t7, 0x014C($t8)
84$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0104($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0104($t9)
89$:
	b       101$
	nop
91$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00C8($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x001E
	sw      $t6, 0x0104($t7)
101$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0108($t8)
	lw      $t9, 0x0104($t8)
	addiu   $t1, $t0, 0x003C
	bne     $t1, $t9, 112$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x0110($t4)
112$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0108($t5)
	lw      $t2, 0x0104($t5)
	addiu   $t7, $t6, 0x0050
	slt     $at, $t7, $t2
	beqz    $at, 136$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sw      $t1, 0x0108($t9)
	jal     object_a_802A5ACC
	nop
136$:
	b       138$
	nop
138$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A6AD8
object_a_802A6AD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	addiu   $t8, $t7, 0x0001
	mtc1    $t8, $f4
	jal     object_set_scale
	cvt.s.w $f12, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 22$
	nop
	jal     objlib_802A184C
	nop
22$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_803378F0)
	lwc1    $f8, %lo(object_a_803378F0)($at)
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    35$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6B7C
object_a_802A6B7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330084
	la.l    $a1, object_a_80330084
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	la.u    $a0, object_a_80330074
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330074
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 32$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_803378F4)
	lwc1    $f6, %lo(object_a_803378F4)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f6, $f4
	nop
	bc1t    29$
	nop
	lh      $t9, 0x0074($t8)
	andi    $t0, $t9, 0x0008
	beqz    $t0, 32$
	nop
29$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
32$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6C20
object_a_802A6C20:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 16
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x0004($sp)
	lw      $t0, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01FC($t2)
	b       19$
	nop
19$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802A6C74
object_a_802A6C74:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 24$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002EA8
	la.l    $a2, o_13002EA8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0055
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x01FC($t8)
	lw      $t9, 0x001C($sp)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t9)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t9)
24$:
	jal     object_a_802C63E8
	nop
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A6CF4
object_a_802A6CF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361256)
	lh      $t6, %lo(object_80361256)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 20$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 16$
	nop
	lui     $t1, %hi(waterp)
	lw      $t1, %lo(waterp)($t1)
	li      $t0, 0x0BB8
	sh      $t0, 0x0024($t1)
16$:
	jal     objlib_8029F6BC
	nop
	b       22$
	nop
20$:
	jal     object_map_load
	nop
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6D64
object_a_802A6D64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361256)
	lh      $t6, %lo(object_80361256)($t6)
	andi    $t7, $t6, 0x0001
	bnez    $t7, 79$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	bnez    $t9, 49$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    47$
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t2, $at, 47$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	la.u    $a0, object_a_80330094
	jal     objlib_802A32AC
	la.l    $a0, object_a_80330094
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	li.u    $a0, 0x30008081
	jal     object_playsound
	li.l    $a0, 0x30008081
	jal     objlib_8029F6BC
	nop
47$:
	b       77$
	nop
49$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0032
	beqz    $at, 65$
	nop
	lui     $t8, %hi(waterp)
	lw      $t8, %lo(waterp)($t8)
	lh      $t9, 0x0024($t8)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0024($t8)
	li.u    $a0, 0x41160001
	jal     object_levelsound
	li.l    $a0, 0x41160001
	b       77$
	nop
65$:
	lui     $t1, %hi(object_80361256)
	lh      $t1, %lo(object_80361256)($t1)
	lui     $at, %hi(object_80361256)
	ori     $t2, $t1, 0x0001
	sh      $t2, %lo(object_80361256)($at)
	jal     Na_Solution
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t3, $t5, 0x0001
	sw      $t3, 0x014C($t4)
77$:
	b       90$
	nop
79$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 88$
	nop
	lui     $t0, %hi(waterp)
	lw      $t0, %lo(waterp)($t0)
	li      $t9, 0x02BC
	sh      $t9, 0x0024($t0)
88$:
	jal     objlib_8029F6BC
	nop
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A6EE4
object_a_802A6EE4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x00F0($t6)
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x428E0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	li      $at, 0x3F000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	la.u    $t1, o_130001AC
	la.l    $t1, o_130001AC
	li      $t0, 0x0056
	sw      $t0, 0x0018($sp)
	sw      $t1, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0047
	move    $a3, $0
	sw      $t9, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f10, 0x0010($sp)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0020
	beq     $t2, $at, 68$
	nop
	jal     save_get_flag
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t7, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 2
	addu    $t7, $t7, $t5
	lw      $t7, %lo(object_a_80330020)($t7)
	and     $t6, $t7, $s0
	beqz    $t6, 62$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
	lui     $at, %hi(object_a_803378F8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_a_803378F8)($at)
	b       66$
	swc1    $f16, 0x0030($t0)
62$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
66$:
	b       72$
	nop
68$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A7020
object_a_802A7020:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 21$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $a0, %hi(object_a_80330020)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $a0, $a0, $t8
	jal     save_set_flag
	lw      $a0, %lo(object_a_80330020)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	li.u    $a0, 0x30008081
	jal     object_playsound
	li.l    $a0, 0x30008081
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A708C
object_a_802A708C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	li.u    $a3, 0x3DCCCCCD
	li.l    $a3, 0x3DCCCCCD
	li      $a0, 0x0002
	li      $a1, 0x0004
	jal     objlib_802A3B40
	li      $a2, 0x3F000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0004
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 32$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
	jal     objlib_802A37AC
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x003C
	li      $a1, 0x008B
	jal     object_a_802AE0CC
	lw      $a3, 0x0144($t0)
32$:
	b       47$
	nop
34$:
	li      $a0, 0x0001
	li      $a1, 0x000C
	li      $a2, 0x00A1
	jal     objlib_802A4BE4
	move    $a3, $0
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	beqz    $t1, 47$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A7160
object_a_802A7160:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A7170
object_a_802A7170:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803300AC
	jal     objlib_802A3E30
	la.l    $a0, object_a_803300AC
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_a_802A719C
s_object_a_802A719C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, 29$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, 29$
	nop
	lui     $t0, %hi(s_camera)
	lw      $t0, %lo(s_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     objlib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     objlib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     objlib_8029F188
	lw      $a0, 0x006C($t2)
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl object_a_802A7230
object_a_802A7230:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42480000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_a_802A958C
	li      $a2, 0x0040
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7264
object_a_802A7264:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	bnez    $t9, 50$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(camera_8032DF30)
	sw      $t0, %lo(camera_8032DF30)($at)
	jal     objlib_8029F4B4
	li      $a0, 0x0005
	jal     objlib_802A184C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0184($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 48$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
48$:
	b       66$
	nop
50$:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0011
	beqz    $v0, 66$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x008C($t8)
	ori     $t0, $t9, 0x0400
	sw      $t0, 0x008C($t8)
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A7384:
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f12, $f8
	nop
	bc1f    15$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       17$
	nop
15$:
	jr      $ra
	move    $v0, $0
17$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A73D8
object_a_802A73D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f8, $f10
	nop
	bc1f    21$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0005
	sw      $t7, 0x014C($t8)
	jal     objlib_802A05B4
	nop
21$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	bnez    $t0, 43$
	nop
	jal     objlib_802A0008
	li      $a0, 0x000F
	beqz    $v0, 32$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
32$:
	jal     objlib_802A5288
	li      $a0, 0x0004
	beqz    $v0, 41$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0100($t1)
41$:
	b       87$
	nop
43$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0100($t4)
	bne     $t5, $at, 57$
	nop
	li      $a0, 0x000B
	jal     objlib_802A5248
	li      $a1, 0x0007
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	b       59$
	sw      $t6, 0x0100($t7)
57$:
	jal     objlib_8029F4B4
	li      $a0, 0x000B
59$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	bnez    $t9, 77$
	nop
	li      $at, 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $a1, 0x0100
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t2)
	b       87$
	nop
77$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0108($t1)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0108($t1)
87$:
	jal     objlib_802A52F8
	nop
	beqz    $v0, 95$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
95$:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, 106$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	jal     Na_BgmStop
	li      $a0, 0x0416
106$:
	b       108$
	nop
108$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7598
object_a_802A7598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 41$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0104($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 27$
	nop
	li.u    $a0, 0x501D8081
	jal     object_playsound
	li.l    $a0, 0x501D8081
27$:
	jal     objlib_802A5288
	move    $a0, $0
	beqz    $v0, 39$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
	li      $a0, 0x0001
	jal     objlib_802A5248
	move    $a1, $0
39$:
	b       148$
	nop
41$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, 119$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	jal     objlib_802A5358
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	lw      $t9, 0x00FC($t8)
	addu    $t0, $t9, $s0
	sw      $t0, 0x00FC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_0_fmt
	la.l    $a0, str_object_a_0_fmt
	jal     db_put_err
	lw      $a1, 0x00FC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00FC($t2)
	slti    $at, $t4, 0x000B
	bnez    $at, 88$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0003
	sw      $t5, 0x0088($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0023
	sw      $t9, 0x0108($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0801
	lw      $t1, 0x0134($t8)
	and     $t2, $t1, $at
	b       113$
	sw      $t2, 0x0134($t8)
88$:
	li      $at, 0x40400000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x0104($t5)
	slti    $at, $t3, 0x0015
	bnez    $at, 113$
	nop
	move    $a0, $0
	jal     objlib_8029E5EC
	li      $a1, 0x0400
	beqz    $v0, 113$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0150($t6)
	li      $a0, 0x0009
	jal     objlib_802A5248
	li      $a1, 0x0016
113$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, 0x0001
	b       148$
	sw      $t2, 0x0104($t0)
119$:
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	jal     objlib_802A0008
	li      $a0, 0x001F
	beqz    $v0, 134$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t8, 0x0002
	sw      $t8, 0x0088($t4)
	li.u    $a0, 0x501EA081
	jal     object_playsound
	li.l    $a0, 0x501EA081
	b       148$
	nop
134$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 148$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0801
	lw      $t9, 0x0134($t7)
	and     $t6, $t9, $at
	sw      $t6, 0x0134($t7)
148$:
	b       150$
	nop
150$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A7804
object_a_802A7804:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	jal     objlib_8029F4B4
	li      $a0, 0x000B
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0200
	lw      $a0, 0x00C8($t8)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_803378FC)
	lwc1    $f10, %lo(object_a_803378FC)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f8, $f10
	nop
	bc1f    36$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
36$:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, 47$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	jal     Na_BgmStop
	li      $a0, 0x0416
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A78D8
object_a_802A78D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 55$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 33$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0104($t0)
	li.u    $a0, 0x50168081
	jal     object_playsound
	li.l    $a0, 0x50168081
	li.u    $a0, 0x91424081
	jal     object_playsound
	li.l    $a0, 0x91424081
	jal     objlib_802A50FC
	li      $a0, 0x0001
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0008
	sw      $t1, 0x0130($t2)
	jal     objlib_802A05D4
	nop
33$:
	jal     objlib_802A5288
	li      $a0, 0x0002
	beqz    $v0, 42$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0104($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0104($t3)
42$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	slti    $at, $t7, 0x0004
	bnez    $at, 53$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
53$:
	b       92$
	nop
55$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, 78$
	nop
	jal     objlib_802A5288
	li      $a0, 0x000A
	beqz    $v0, 76$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t3, $t5, 0x0001
	sw      $t3, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0130($t7)
	jal     objlib_802A05B4
	nop
76$:
	b       92$
	nop
78$:
	jal     objlib_8029F4B4
	li      $a0, 0x000B
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0800
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	li      $at, 0x0001
	bne     $v0, $at, 92$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7A60
object_a_802A7A60:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0074
	beqz    $v0, 41$
	nop
	li.u    $a0, 0x5147C081
	jal     object_makesound
	li.l    $a0, 0x5147C081
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A05B4
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337900)
	li.u    $a2, 0xC58CA000
	li.l    $a2, 0xC58CA000
	lwc1    $f14, %lo(object_a_80337900)($at)
	jal     objlib_802A5588
	li      $a3, 0x43480000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0008
	sw      $t6, 0x014C($t7)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7B1C
object_a_802A7B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 10$
	nop
	jal     Na_BgmStop
	li      $a0, 0x0416
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7B5C
object_a_802A7B5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    53$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 51$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0184($t0)
	addiu   $t2, $t1, -0x0001
	sw      $t2, 0x0184($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t4)
	li.u    $a0, 0x50168081
	jal     object_playsound
	li.l    $a0, 0x50168081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0184($t5)
	beqz    $t6, 47$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	b       51$
	sw      $t7, 0x014C($t8)
47$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0007
	sw      $t9, 0x014C($t1)
51$:
	b       104$
	nop
53$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x0150($t2)
	bnez    $t0, 91$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 80$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t1, $t9, 0x0001
	b       89$
	sw      $t1, 0x0150($t8)
80$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x00EC($t2)
	andi    $t3, $t0, 0x0001
	beqz    $t3, 89$
	nop
	li.u    $a0, 0x50168081
	jal     object_playsound
	li.l    $a0, 0x50168081
89$:
	b       104$
	nop
91$:
	jal     objlib_802A5288
	li      $a0, 0x000A
	beqz    $v0, 99$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
99$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0150($t6)
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A7D14
object_a_802A7D14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 164$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337904)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337904)($at)
	jr      $t7
	nop
.globl L802A7D4C
L802A7D4C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 22$
	nop
	li.u    $a0, 0x50468081
	jal     object_playsound
	li.l    $a0, 0x50468081
22$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F8($t1)
	jal     objlib_802A52C4
	li      $a0, 0x0008
	jal     objlib_802A2748
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A4($t3)
	lwc1    $f6, 0x0168($t3)
	c.lt.s  $f4, $f6
	nop
	bc1f    47$
	nop
	li      $at, 0x42C80000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	b       59$
	swc1    $f8, 0x00B0($t4)
47$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x42C80000
	li      $a3, 0xC0800000
	addiu   $a0, $t5, 0x0164
	jal     object_a_802B3134
	addiu   $a1, $t5, 0x00A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
59$:
	b       164$
	nop
.globl L802A7E08
L802A7E08:
	jal     objlib_802A52C4
	li      $a0, 0x0008
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    112$
	nop
	lwc1    $f18, 0x00A4($t9)
	lwc1    $f4, 0x0168($t9)
	c.lt.s  $f18, $f4
	nop
	bc1f    112$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0168($t0)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t2)
	li      $at, 0xC0800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	jal     objlib_8029F4B4
	li      $a0, 0x0007
	li.u    $a0, 0x50168081
	jal     object_playsound
	li.l    $a0, 0x50168081
	jal     objlib_802A50FC
	li      $a0, 0x0001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0150($t5)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t5)
112$:
	b       164$
	nop
.globl L802A7EDC
L802A7EDC:
	jal     objlib_802A5288
	li      $a0, 0x0007
	beqz    $v0, 123$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0150($t6)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t6)
123$:
	b       164$
	nop
.globl L802A7F08
L802A7F08:
	li      $at, 0x44960000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, 136$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	jal     Na_BgmStop
	li      $a0, 0x0416
136$:
	li      $at, 0x43FA0000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 149$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
149$:
	b       164$
	nop
.globl L802A7F70
L802A7F70:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0080
	beqz    $v0, 162$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
162$:
	b       164$
	nop
164$:
	b       166$
	nop
166$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A7FBC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 13$
	nop
	jal     objlib_802A2348
	li      $a0, -0x004E
	b       15$
	nop
13$:
	jal     objlib_802A2644
	nop
15$:
	la.u    $a0, object_a_803300BC
	jal     objlib_802A3E30
	la.l    $a0, object_a_803300BC
	la.u    $a0, object_a_803300E0
	jal     object_stepsound
	la.l    $a0, object_a_803300E0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337918)
	lwc1    $f6, %lo(object_a_80337918)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    34$
	nop
	jal     objlib_8029F620
	nop
	b       36$
	nop
34$:
	jal     objlib_8029F66C
	nop
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8064
object_a_802A8064:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0034($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0004
	sw      $t8, 0x0190($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0124($t9)
	beqz    $s0, 32$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 41$
	nop
	b       56$
	nop
32$:
	jal     object_a_802A7FBC
	nop
	b       56$
	nop
36$:
	li      $a0, 0x0006
	jal     objlib_802A01D8
	li      $a1, 0x0001
	b       56$
	nop
41$:
	lwc1    $f12, 0x0034($sp)
	lwc1    $f14, 0x0030($sp)
	jal     objlib_802A0380
	li      $a2, 0x0004
	jal     objlib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t0)
	b       56$
	nop
56$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       61$
	nop
61$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A816C
object_a_802A816C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     objlib_802A04C0
	li      $a0, 0x0065
	jal     rand
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t0, o_1300029C
	la.l    $t0, o_1300029C
	li      $t9, 0x0066
	sw      $t9, 0x0014($sp)
	sw      $t0, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0061
	li      $a3, -0x004D
	jal     obj_make_off
	sw      $t8, 0x0010($sp)
	b       27$
	nop
27$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A81E8
object_a_802A81E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x43480000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A821C
object_a_802A821C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 76$
	nop
	b       78$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E2F8
	lw      $a0, 0x0068($t7)
	li      $at, 0x43960000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    34$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
34$:
	b       78$
	nop
36$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 60$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_130003BC
	la.l    $t5, o_130003BC
	li      $t4, 0x00A8
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0050
	li      $a3, 0x0078
	jal     obj_make_off
	sw      $t3, 0x0010($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31228081
	li.l    $a0, 0x31228081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
60$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	addiu   $t9, $t7, -0x0400
	sw      $t9, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00D0($t0)
	slti    $at, $t8, -0x4000
	beqz    $at, 76$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
76$:
	b       78$
	nop
78$:
	b       80$
	nop
80$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802A8370
object_a_802A8370:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A83A0
object_a_802A83A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	mtc1    $0, $f16
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	li      $at, 0x40100000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t1, 0x00F6($t0)
	mtc1    $0, $f4
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	neg.s   $f8, $f6
	li      $at, 0x40100000
	cvt.d.s $f10, $f8
	mtc1    $at, $f5
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	addiu   $t7, $t5, 0x0400
	sw      $t7, 0x00F4($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001E
	beqz    $at, 64$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	add.s   $f18, $f10, $f16
	b       82$
	swc1    $f18, 0x00A4($t6)
64$:
	jal     objlib_802A05D4
	nop
	li      $at, 0x40000000
	mtc1    $at, $f12
	li      $at, 0x41200000
	mtc1    $at, $f14
	jal     objlib_8029E398
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	jal     objlib_802A2644
	nop
82$:
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40000000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x00A0($t2)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A0($t2)
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40000000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, 0x00A8($t3)
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x0134($t0)
	andi    $t7, $t5, 0x8000
	bnez    $t7, 120$
	nop
	lw      $t4, 0x0154($t0)
	slti    $at, $t4, 0x00C9
	bnez    $at, 138$
	nop
120$:
	li.u    $a0, 0x300B0081
	jal     object_playsound
	li.l    $a0, 0x300B0081
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x0024($sp)
127$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130002E4
	la.l    $a2, o_130002E4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A8
	lw      $t8, 0x0024($sp)
	addiu   $t9, $t8, 0x0001
	slti    $at, $t9, 0x001E
	bnez    $at, 127$
	sw      $t9, 0x0024($sp)
138$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t1)
	c.lt.s  $f20, $f4
	nop
	bc1f    154$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
154$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       159$
	nop
159$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A8630
object_a_802A8630:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x45000000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00FC($t9)
	jal     randf
	nop
	li      $at, 0x45000000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x0100($t3)
	li.u    $a0, 0x300B0081
	jal     object_playsound
	li.l    $a0, 0x300B0081
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A86BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A870C
object_a_802A870C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40C00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t6)
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A4($t6)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40A00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A0($t7)
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t7)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x40A00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A8($t8)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t0, 0x00F6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337920)
	ldc1    $f8, %lo(object_a_80337920)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x3FF00000
	mul.d   $f16, $f6, $f8
	mtc1    $at, $f11
	nop
	add.d   $f18, $f16, $f10
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	lw      $t5, 0x00FC($t3)
	addu    $t6, $t4, $t5
	sw      $t6, 0x00F4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t8, 0x00FA($t7)
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337928)
	ldc1    $f16, %lo(object_a_80337928)($at)
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	mul.d   $f10, $f8, $f16
	mtc1    $at, $f19
	nop
	add.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x00F8($t2)
	lw      $t4, 0x0100($t2)
	addu    $t5, $t9, $t4
	sw      $t5, 0x00F8($t2)
	b       97$
	nop
97$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A88A4
object_a_802A88A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t8, 0x00F6($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337930)
	ldc1    $f8, %lo(object_a_80337930)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x3FF00000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	lw      $t3, 0x00FC($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00F4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t6, 0x00FA($t5)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337938)
	ldc1    $f10, %lo(object_a_80337938)($at)
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	mul.d   $f16, $f8, $f10
	mtc1    $at, $f19
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F8($t0)
	lw      $t2, 0x0100($t0)
	addu    $t3, $t7, $t2
	sw      $t3, 0x00F8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x00A4($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    86$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t6)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t6)
	lui     $t8, %hi(obj_freelist+0x60)
	lw      $t8, %lo(obj_freelist+0x60)($t8)
	beqz    $t8, 86$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D28
	la.l    $a2, o_13002D28
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A5
86$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x0134($t9)
	andi    $t7, $t5, 0x8000
	beqz    $t7, 95$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
95$:
	b       97$
	nop
97$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A8A38:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	mtc1    $0, $f16
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	li      $at, 0x40000000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	lw      $t2, 0x00FC($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00F4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t5, 0x00FA($t4)
	mtc1    $0, $f18
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	cvt.d.s $f8, $f6
	li      $at, 0x40000000
	mul.d   $f16, $f8, $f10
	mtc1    $at, $f19
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00F8($t9)
	lw      $t1, 0x0100($t9)
	addu    $t2, $t6, $t1
	sw      $t2, 0x00F8($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A8B18
object_a_802A8B18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40000000
	li      $a2, 0x40000000
	jal     objlib_8029F3D0
	li      $a3, 0x3F800000
	jal     randf
	nop
	li      $at, 0x45000000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00FC($t9)
	jal     randf
	nop
	li      $at, 0x45000000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x0100($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A2FC0
	li      $a1, 0x42C80000
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8BC0
object_a_802A8BC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x40800000
	jal     object_a_802A8A38
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x00A4($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    44$
	nop
	lw      $t9, 0x0154($t8)
	beqz    $t9, 44$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	la.u    $t0, o_13002D28
	la.l    $t0, o_13002D28
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t0, 0x0010($sp)
	li      $a0, 0x0005
	li      $a1, 0x0000
	jal     objlib_8029EE24
	li      $a3, 0x00A5
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A8C88
object_a_802A8C88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x40800000
	jal     object_a_802A8A38
	nop
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8CDC
object_a_802A8CDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	li      $at, 0x000F
	beq     $t6, $at, 10$
	nop
	li      $at, 0x0007
	bne     $t6, $at, 21$
	nop
10$:
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 21$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300046C
	la.l    $a2, o_1300046C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A4
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8D48
object_a_802A8D48:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000400
	la.l    $a2, o_13000400
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A4
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, 3$
	sw      $t7, 0x001C($sp)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A8D98
object_a_802A8D98:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A8DC0
object_a_802A8DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 42$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0164($t9)
	swc1    $f4, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0168($t0)
	swc1    $f6, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x016C($t1)
	swc1    $f8, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	sll     $t5, $t4, 8
	sll     $t6, $t5, 16
	sra     $t7, $t6, 16
	sw      $t7, 0x00C8($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
	jal     objlib_8029F620
	nop
	jal     objlib_802A05D4
	nop
42$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    83$
	nop
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t4, $t2, 0x8000
	beqz    $t4, 78$
	nop
	li      $at, 0x00800000
	and     $t5, $t2, $at
	bnez    $t5, 78$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t3, 0x0001
	sw      $t3, 0x010C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       81$
	sw      $t9, 0x00F8($t0)
78$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
81$:
	b       90$
	nop
83$:
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F66C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x010C($t4)
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A8F40
object_a_802A8F40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 10$
	nop
	li.u    $a0, 0x500DF081
	jal     object_playsound
	li.l    $a0, 0x500DF081
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	lw      $t0, 0x0154($t9)
	bgez    $t0, 25$
	sra     $t1, $t0, 1
	addiu   $at, $t0, 0x0001
	sra     $t1, $at, 1
25$:
	andi    $t2, $t1, 0x0001
	mtc1    $t2, $f10
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f16, $f10
	li      $at, 0x40000000
	mtc1    $at, $f8
	sub.d   $f4, $f16, $f18
	lwc1    $f16, 0x00A0($t9)
	cvt.s.d $f6, $f4
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00A0($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f8
	lw      $t4, 0x0154($t3)
	bgez    $t4, 46$
	sra     $t5, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $t5, $at, 1
46$:
	andi    $t6, $t5, 0x0001
	mtc1    $t6, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f6, $f4
	li      $at, 0x40000000
	mtc1    $at, $f18
	sub.d   $f16, $f6, $f8
	lwc1    $f6, 0x00A8($t3)
	cvt.s.d $f10, $f16
	mul.s   $f4, $f10, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A8($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0044
	bnez    $at, 111$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lw      $t1, 0x0154($t0)
	bgez    $t1, 73$
	sra     $t2, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t2, $at, 1
73$:
	andi    $t9, $t2, 0x0001
	mtc1    $t9, $f16
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f10, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	sub.d   $f6, $f10, $f18
	lwc1    $f10, 0x00A0($t0)
	cvt.s.d $f4, $f6
	mul.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	lw      $t5, 0x0154($t4)
	bgez    $t5, 94$
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
94$:
	andi    $t3, $t6, 0x0001
	mtc1    $t3, $f6
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f4, $f6
	li      $at, 0x40800000
	mtc1    $at, $f18
	sub.d   $f10, $f4, $f8
	lwc1    $f4, 0x00A8($t4)
	cvt.s.d $f16, $f10
	mul.s   $f6, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
111$:
	b       113$
	nop
113$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A9114
object_a_802A9114:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 10$
	nop
	li.u    $a0, 0x500EF081
	jal     object_playsound
	li.l    $a0, 0x500EF081
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0004
	beqz    $at, 59$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	lw      $t1, 0x0154($t0)
	bgez    $t1, 24$
	sra     $t2, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t2, $at, 1
24$:
	andi    $t3, $t2, 0x0001
	mtc1    $t3, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	cvt.d.w $f6, $f4
	li      $at, 0x40800000
	mtc1    $at, $f18
	sub.d   $f10, $f6, $f8
	lwc1    $f6, 0x00A0($t0)
	cvt.s.d $f16, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f18
	lw      $t5, 0x0154($t4)
	bgez    $t5, 45$
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
45$:
	andi    $t7, $t6, 0x0001
	mtc1    $t7, $f10
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.w $f16, $f10
	li      $at, 0x40800000
	mtc1    $at, $f8
	sub.d   $f6, $f16, $f18
	lwc1    $f16, 0x00A8($t4)
	cvt.s.d $f4, $f6
	mul.s   $f10, $f4, $f8
	add.s   $f18, $f16, $f10
	b       116$
	swc1    $f18, 0x00A8($t4)
59$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0006
	beqz    $at, 67$
	nop
	b       116$
	nop
67$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0016
	beqz    $at, 101$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t3)
	lw      $t7, 0x0144($t3)
	sra     $t5, $t0, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	sll     $t4, $t7, 8
	sll     $t8, $t4, 16
	li      $at, 0x46800000
	mtc1    $at, $f4
	sra     $t9, $t8, 16
	mtc1    $t9, $f16
	mul.s   $f8, $f6, $f4
	cvt.s.w $f10, $f16
	add.s   $f18, $f10, $f8
	trunc.w.s $f6, $f18
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x00C8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00F4($t0)
	addiu   $t6, $t5, 0x0400
	b       116$
	sw      $t6, 0x00F4($t0)
101$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x0154($t7)
	slti    $at, $t4, 0x001A
	beqz    $at, 109$
	nop
	b       116$
	nop
109$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t9, 0x0005
	sw      $t9, 0x014C($t1)
116$:
	b       118$
	nop
118$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A92FC
object_a_802A92FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 10$
	nop
	li.u    $a0, 0x500FF081
	jal     object_playsound
	li.l    $a0, 0x500FF081
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0004
	beqz    $at, 18$
	nop
	b       57$
	nop
18$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0014
	beqz    $at, 45$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0400
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x00F6($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	b       57$
	sw      $t0, 0x00C4($t5)
45$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x0019
	beqz    $at, 53$
	nop
	b       57$
	nop
53$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t2)
57$:
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A93F8
object_a_802A93F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F66C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x010C($t6)
	li      $t7, 0x0001
	lui     $at, %hi(object_8036125A)
	sh      $t7, %lo(object_8036125A)($at)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802A9440
object_a_802A9440:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802A9460
object_a_802A9460:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0004
	bnez    $at, 10$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
10$:
	b       12$
	nop
12$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802A9498
object_a_802A9498:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330140
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330140
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F8($t8)
15$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A94F8
object_a_802A94F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lh      $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 29$
	nop
	jal     objlib_8029F620
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     objlib_8029F120
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00C8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00C4($t6)
	b       31$
	sw      $t7, 0x00D0($t5)
29$:
	jal     objlib_8029F66C
	nop
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A958C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $s0, 0x0088($t7)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 25$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 53$
	nop
	b       74$
	nop
23$:
	b       74$
	nop
25$:
	lui     $a0, %hi(mario_obj)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_802A27B0
	lw      $a0, %lo(mario_obj)($a0)
	b       74$
	nop
32$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t0, 0x0030($sp)
	lw      $t9, 0x0134($t8)
	addiu   $t1, $t0, 0x0004
	or      $t2, $t9, $t1
	sw      $t2, 0x0134($t8)
	lwc1    $f4, 0x0028($sp)
	la.u    $t3, player_data
	la.l    $t3, player_data
	swc1    $f4, 0x0054($t3)
	lwc1    $f6, 0x002C($sp)
	la.u    $t4, player_data
	la.l    $t4, player_data
	swc1    $f6, 0x004C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sw      $0, 0x0088($t6)
	b       74$
	nop
53$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t0, 0x0134($t7)
	ori     $t9, $t0, 0x0044
	sw      $t9, 0x0134($t7)
	li      $at, 0x41200000
	mtc1    $at, $f8
	la.u    $t1, player_data
	la.l    $t1, player_data
	swc1    $f8, 0x0054($t1)
	li      $at, 0x41200000
	mtc1    $at, $f10
	la.u    $t2, player_data
	la.l    $t2, player_data
	swc1    $f10, 0x004C($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t3, 0x0068($t8)
	sw      $0, 0x0088($t3)
	b       74$
	nop
74$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lw      $t6, 0x00C8($t5)
	sw      $t6, 0x00C8($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0068($t0)
	lh      $t7, 0x0074($t9)
	bnez    $t7, 88$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
88$:
	b       90$
	nop
90$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A9708
object_a_802A9708:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42200000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     object_a_802A958C
	li      $a2, 0x0040
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802A973C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $t7, 0x00F8($t6)
	beq     $t7, $at, 88$
	nop
	jal     objlib_802A15AC
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f0
	nop
	bc1f    40$
	nop
	jal     objlib_802A1634
	nop
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    31$
	nop
	b       38$
	sw      $0, 0x001C($sp)
31$:
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
	jal     objlib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
38$:
	b       71$
	nop
40$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    69$
	nop
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	lh      $t2, 0x002E($sp)
	divu    $0, $t1, $t2
	mfhi    $t3
	bnez    $t2, 56$
	nop
	break   7
56$:
	bnez    $t3, 66$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0160($t4)
66$:
	li      $t5, 0x0002
	b       71$
	sw      $t5, 0x001C($sp)
69$:
	li      $t6, 0x0003
	sw      $t6, 0x001C($sp)
71$:
	lw      $t7, 0x0020($sp)
	beqz    $t7, 86$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802C6538
	addiu   $a0, $a0, 0x0160
	beqz    $v0, 86$
	nop
	li      $t8, 0x0004
	sw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x00F8($t0)
86$:
	b       90$
	nop
88$:
	li      $t1, 0x0004
	sw      $t1, 0x001C($sp)
90$:
	b       94$
	lw      $v0, 0x001C($sp)
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802A98C4:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x000C($sp)
	c.lt.s  $f6, $f4
	nop
	bc1f    24$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0010($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    22$
	nop
	lwc1    $f6, 0x000C($sp)
	swc1    $f6, 0x0000($a0)
22$:
	b       46$
	nop
24$:
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    44$
	nop
	lwc1    $f16, 0x0000($a0)
	lwc1    $f18, 0x0010($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lwc1    $f8, 0x000C($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    42$
	nop
	lwc1    $f10, 0x000C($sp)
	swc1    $f10, 0x0000($a0)
42$:
	b       46$
	nop
44$:
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
46$:
	b       50$
	lw      $v0, 0x0004($sp)
	b       50$
	nop
50$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802A9994
object_a_802A9994:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00FC($t8)
11$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	move    $s0, $t1
	beqz    $s0, 36$
	sw      $t1, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, 79$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 112$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 129$
	nop
	b       172$
	nop
36$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	jal     objlib_802A15AC
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    73$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	slti    $at, $t5, 0x0029
	beqz    $at, 67$
	nop
	lw      $a0, 0x00C8($t4)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t4)
	slti    $at, $v0, 0x1000
	beqz    $at, 71$
	nop
67$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x0150($t7)
71$:
	b       77$
	nop
73$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x0150($t9)
77$:
	b       172$
	nop
79$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41F00000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t0)
	slti    $at, $v0, 0x4001
	bnez    $at, 97$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x0150($t2)
97$:
	jal     objlib_802A15AC
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    110$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0003
	sw      $t3, 0x0150($t5)
110$:
	b       172$
	nop
112$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x00FC($t4)
	slti    $at, $t6, 0x0031
	bnez    $at, 127$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
127$:
	b       172$
	nop
129$:
	jal     objlib_802A1634
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    143$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	b       159$
	swc1    $f16, 0x00B8($t8)
143$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41200000
	li      $a2, 0x40800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	jal     objlib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0800
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t0)
159$:
	jal     objlib_802A15AC
	nop
	lui     $at, %hi(object_a_80337940)
	lwc1    $f18, %lo(object_a_80337940)($at)
	c.lt.s  $f0, $f18
	nop
	bc1f    170$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0150($t1)
170$:
	b       172$
	nop
172$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0028($sp)
	lw      $t3, 0x0150($t2)
	beq     $t3, $t5, 182$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	b       187$
	sw      $0, 0x00FC($t4)
182$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
187$:
	jal     objlib_8029F4B4
	li      $a0, 0x0004
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    201$
	nop
	li.u    $a0, 0x600A4001
	jal     object_levelsound
	li.l    $a0, 0x600A4001
201$:
	la.u    $a0, str_object_a_0_fg
	la.l    $a0, str_object_a_0_fg
	jal     db_put_err
	lw      $a1, 0x003C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $a0, str_object_a_0_sp
	la.l    $a0, str_object_a_0_sp
	lwc1    $f8, 0x00B8($t0)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     db_put_err
	nop
	b       216$
	nop
216$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802A9D08
object_a_802A9D08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 39$
	nop
	jal     objlib_802A5288
	move    $a0, $0
	beqz    $v0, 17$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
17$:
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x00FC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	b       140$
	swc1    $f18, 0x00B8($t5)
39$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, 117$
	nop
	jal     objlib_802A5358
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	move    $s0, $v0
	lw      $t0, 0x0100($t9)
	addu    $t8, $t0, $s0
	sw      $t8, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_1_fmt
	la.l    $a0, str_object_a_1_fmt
	jal     db_put_err
	lw      $a1, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0100($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, 80$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x0088($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0801
	lw      $t8, 0x0134($t0)
	and     $t9, $t8, $at
	b       115$
	sw      $t9, 0x0134($t0)
80$:
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x0800
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x00FC($t4)
	lw      $t6, 0x00FC($t4)
	slti    $t5, $s0, 0x0000
	move    $s0, $t5
	addiu   $t7, $t6, -0x0001
	beqz    $s0, 115$
	sw      $t7, 0x00FC($t4)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	bnez    $v0, 110$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, -0x0010
	beqz    $at, 115$
	nop
110$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0150($t0)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t0)
115$:
	b       140$
	nop
117$:
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	jal     objlib_802A0008
	li      $a0, 0x0012
	beqz    $v0, 140$
	nop
	li.u    $a0, 0x501EA081
	jal     object_playsound
	li.l    $a0, 0x501EA081
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t1, 0x0002
	sw      $t1, 0x0088($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0801
	lw      $t8, 0x0134($t4)
	and     $t9, $t8, $at
	sw      $t9, 0x0134($t4)
140$:
	b       142$
	nop
142$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802A9F54
object_a_802A9F54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	jal     objlib_8029F4B4
	li      $a0, 0x0004
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0065
	bnez    $at, 23$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802A9FC8
object_a_802A9FC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0279
	beqz    $t8, 19$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     objlib_802A1B8C
	li      $a2, 0x41A00000
	li.u    $a0, 0x516E0081
	jal     objlib_802A37DC
	li.l    $a0, 0x516E0081
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA02C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330198
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330198
	jal     objlib_802A2348
	li      $a0, -0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, 26$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t2)
	li.u    $a0, 0x501D8081
	jal     object_playsound
	li.l    $a0, 0x501D8081
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA0AC
object_a_802AA0AC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x002C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0004
	sw      $t8, 0x0190($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0124($t9)
	beqz    $s0, 36$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 45$
	nop
	b       51$
	nop
36$:
	jal     object_a_802AA02C
	nop
	b       51$
	nop
40$:
	li      $a0, 0x0002
	jal     objlib_802A01D8
	move    $a1, $0
	b       51$
	nop
45$:
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	jal     objlib_802A0380
	li      $a2, 0x0002
	b       51$
	nop
51$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $a0, str_object_a_1_md
	la.l    $a0, str_object_a_1_md
	jal     db_put_err
	lw      $a1, 0x014C($t1)
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AA1B8
object_a_802AA1B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	bne     $t7, $at, 42$
	nop
	jal     objlib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 40$
	nop
	la.u    $a0, o_13000624
	jal     objlib_802A14FC
	la.l    $a0, o_13000624
	beqz    $v0, 25$
	nop
	jal     Na_Solution
	nop
25$:
	li.u    $a0, 0x300F0081
	jal     object_makesound
	li.l    $a0, 0x300F0081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0008
	sw      $t8, 0x0130($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x0180($t1)
	li      $at, 0x42A00000
	mtc1    $at, $f12
	jal     objlib_802A4440
	move    $a1, $0
40$:
	b       44$
	nop
42$:
	jal     objlib_802A05B4
	nop
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 74$
	nop
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lw      $a1, 0x00C8($t7)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t6)
	slti    $at, $v0, 0x6001
	bnez    $at, 74$
	nop
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x000C($t8)
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	bne     $t9, $at, 29$
	nop
	b       78$
	li      $v0, 0x0001
29$:
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x00800380
	li.l    $at, 0x00800380
	bne     $t1, $at, 38$
	nop
	b       78$
	li      $v0, 0x0001
38$:
	la.u    $t2, player_data
	la.l    $t2, player_data
	lw      $t3, 0x000C($t2)
	li.u    $at, 0x00800457
	li.l    $at, 0x00800457
	bne     $t3, $at, 47$
	nop
	b       78$
	li      $v0, 0x0001
47$:
	la.u    $t4, player_data
	la.l    $t4, player_data
	lw      $t5, 0x000C($t4)
	li.u    $at, 0x0080045A
	li.l    $at, 0x0080045A
	bne     $t5, $at, 56$
	nop
	b       78$
	li      $v0, 0x0001
56$:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	bne     $t7, $at, 65$
	nop
	b       78$
	li      $v0, 0x0002
65$:
	la.u    $t8, player_data
	la.l    $t8, player_data
	lw      $t9, 0x000C($t8)
	li.u    $at, 0x03000886
	li.l    $at, 0x03000886
	bne     $t9, $at, 74$
	nop
	b       78$
	li      $v0, 0x0002
74$:
	b       78$
	move    $v0, $0
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AA3C8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0640
	sw      $t6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AA3F4
object_a_802AA3F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 139$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 181$
	nop
	b       185$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D0($t7)
	jal     object_a_802AA280
	move    $a0, $0
	beqz    $v0, 33$
	nop
	jal     object_a_802AA3C8
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
33$:
	jal     object_map_load
	nop
	b       185$
	nop
37$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	jal     object_map_load
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x00F8($t2)
	lhu     $t4, 0x00F6($t2)
	mtc1    $t3, $f4
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f6, $f4
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	neg.s   $f10, $f8
	mul.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sw      $t9, 0x00D0($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	slti    $at, $t8, 0x001F
	bnez    $at, 101$
	nop
	jal     object_a_802AA280
	move    $a0, $0
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	beqz    $t1, 101$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f8, 0x00A4($t4)
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	add.s   $f10, $f8, $f6
	lwc1    $f4, 0x00A4($t3)
	c.lt.s  $f10, $f4
	nop
	bc1f    98$
	nop
	lw      $t5, 0x0024($sp)
	li      $at, 0x0002
	bne     $t5, $at, 98$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x014C($t6)
	li.u    $a0, 0x315A4081
	jal     object_playsound
	li.l    $a0, 0x315A4081
	b       101$
	nop
98$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
101$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	beqz    $t8, 121$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F8($t1)
	addiu   $t4, $t3, -0x0008
	sw      $t4, 0x00F8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00F8($t5)
	bgez    $t7, 119$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
119$:
	b       123$
	nop
121$:
	jal     object_a_802AA3C8
	nop
123$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t2, 0x00F4($t6)
	andi    $t0, $t2, 0x7FFF
	bnez    $t0, 132$
	nop
	li.u    $a0, 0x315A4081
	jal     object_playsound
	li.l    $a0, 0x315A4081
132$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t3, 0x00F4($t8)
	addiu   $t4, $t3, 0x0400
	sw      $t4, 0x00F4($t8)
	b       185$
	nop
139$:
	jal     objlib_802A05B4
	nop
	jal     objlib_802A04C0
	li      $a0, 0x003A
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0114($t1)
	addiu   $t7, $t5, -0x0080
	sw      $t7, 0x0114($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00D0($t9)
	lw      $t2, 0x0114($t9)
	addu    $t0, $t6, $t2
	sw      $t0, 0x00D0($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	slti    $at, $t4, -0x4000
	beqz    $at, 177$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t8, -0x4000
	sw      $t8, 0x00D0($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x014C($t1)
	addiu   $t2, $t6, 0x0001
	sw      $t2, 0x014C($t1)
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x303D8081
	jal     object_playsound
	li.l    $a0, 0x303D8081
177$:
	jal     object_map_load
	nop
	b       185$
	nop
181$:
	jal     object_map_load
	nop
	b       185$
	nop
185$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0050($t0)
	b       190$
	nop
190$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AA700
object_a_802AA700:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	addiu   $t0, $t9, -0x4000
	sw      $t0, 0x00C8($t8)
12$:
	jal     object_a_802AA280
	move    $a0, $0
	beqz    $v0, 23$
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f12
	jal     objlib_802A4440
	move    $a1, $0
	li.u    $a0, 0x300F0081
	jal     object_makesound
	li.l    $a0, 0x300F0081
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA774
object_a_802AA774:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 23$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0118($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, 21$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
21$:
	b       39$
	nop
23$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0100
	sw      $t4, 0x0118($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x007F
	bnez    $at, 36$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
36$:
	li.u    $a0, 0x40080001
	jal     object_levelsound
	li.l    $a0, 0x40080001
39$:
	jal     objlib_802A2BC4
	nop
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA830
object_a_802AA830:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	sb      $t8, 0x001F($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 53$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $a1, %hi(object_a_803301A8+0x04)
	lw      $t2, 0x0144($t1)
	move    $a0, $t1
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $a1, $a1, $t3
	jal     objlib_802A44F4
	lw      $a1, %lo(object_a_803301A8+0x04)($a1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $t7, %hi(object_a_803301A8+0x08)
	lw      $t5, 0x0144($t4)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_a_803301A8+0x08)($t7)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0194($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object_a_803301A8+0x02)
	lui     $at, %hi(object_a_80337944)
	lw      $t9, 0x0144($t8)
	lwc1    $f16, %lo(object_a_80337944)($at)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_803301A8+0x02)($t1)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	mul.s   $f12, $f10, $f16
	jal     object_set_scale
	nop
53$:
	lb      $t2, 0x001F($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t3, $t2, 4
	sw      $t3, 0x0118($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	lw      $t4, 0x0118($t6)
	addu    $t8, $t7, $t4
	sw      $t8, 0x00D4($t6)
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AA948:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301C0
	la.l    $a1, object_a_803301C0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AA97C
object_a_802AA97C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 28$
	nop
	b       35$
	nop
19$:
	jal     object_a_802AA948
	nop
	b       35$
	nop
23$:
	li      $a0, -0x0001
	jal     objlib_802A01D8
	move    $a1, $0
	b       35$
	nop
28$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
	b       35$
	nop
35$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x00400000
	lw      $t8, 0x0134($t7)
	and     $t9, $t8, $at
	beqz    $t9, 47$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
47$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AAA60
object_a_802AAA60:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 54$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0188($t8)
	sra     $t0, $t9, 24
	andi    $t1, $t0, 0x00FF
	sh      $t1, 0x0006($sp)
	lhu     $t2, 0x0006($sp)
	bnez    $t2, 21$
	nop
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       48$
	swc1    $f4, 0x01F8($t3)
21$:
	lhu     $t4, 0x0006($sp)
	li      $at, 0x00FF
	bne     $t4, $at, 31$
	nop
	lui     $at, %hi(object_a_80337948)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_a_80337948)($at)
	b       48$
	swc1    $f6, 0x01F8($t5)
31$:
	lhu     $t6, 0x0006($sp)
	mtc1    $t6, $f8
	bgez    $t6, 40$
	cvt.d.w $f10, $f8
	li      $at, 0x41F00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	nop
	add.d   $f10, $f10, $f16
40$:
	li      $at, 0x40240000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x01F8($t7)
48$:
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x01FC($t8)
54$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       59$
	nop
59$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802AAB54
object_a_802AAB54:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 54$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0188($t8)
	sra     $t0, $t9, 24
	andi    $t1, $t0, 0x00FF
	sh      $t1, 0x0006($sp)
	lhu     $t2, 0x0006($sp)
	bnez    $t2, 21$
	nop
	li      $at, 0x42AA0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	b       48$
	swc1    $f4, 0x01F8($t3)
21$:
	lhu     $t4, 0x0006($sp)
	li      $at, 0x00FF
	bne     $t4, $at, 31$
	nop
	lui     $at, %hi(object_a_8033794C)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, %lo(object_a_8033794C)($at)
	b       48$
	swc1    $f6, 0x01F8($t5)
31$:
	lhu     $t6, 0x0006($sp)
	mtc1    $t6, $f8
	bgez    $t6, 40$
	cvt.d.w $f10, $f8
	li      $at, 0x41F00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	nop
	add.d   $f10, $f10, $f16
40$:
	li      $at, 0x40240000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x01F8($t7)
48$:
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x01FC($t8)
54$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       59$
	nop
59$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802AAC48
object_a_802AAC48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 52$
	nop
	jal     objlib_802A1308
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x002C($t8)
	swc1    $f4, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $s0, 0x0144($t9)
	beq     $s0, $at, 25$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 38$
	nop
	b       52$
	nop
25$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x00FE
	sw      $t0, 0x017C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0015
	sw      $t2, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00FC($t4)
	b       52$
	nop
38$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x00FE
	sw      $t5, 0x017C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x000D
	sw      $t7, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00FC($t0)
	b       52$
	nop
52$:
	jal     objlib_802A25B4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     objlib_802A079C
	lwc1    $f12, 0x012C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    73$
	nop
	li      $at, 0x42C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t3)
73$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0015
	bnez    $at, 82$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
82$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	beqz    $t7, 138$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	lw      $t0, 0x00F8($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x017C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	slti    $at, $t3, 0x0002
	beqz    $at, 102$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
102$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00FC($t4)
	beqz    $t5, 123$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t9, 0x00FE
	lui     $at, %hi(object_a_80337950)
	lw      $t7, 0x017C($t6)
	ldc1    $f4, %lo(object_a_80337950)($at)
	lwc1    $f8, 0x00F4($t6)
	subu    $t0, $t9, $t7
	mtc1    $t0, $f16
	cvt.d.s $f10, $f8
	cvt.d.w $f18, $f16
	div.d   $f6, $f18, $f4
	mul.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	b       136$
	swc1    $f18, 0x0024($sp)
123$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337958)
	ldc1    $f6, %lo(object_a_80337958)($at)
	lw      $t8, 0x017C($t1)
	lwc1    $f16, 0x00F4($t1)
	mtc1    $t8, $f4
	cvt.d.s $f18, $f16
	cvt.d.w $f8, $f4
	div.d   $f10, $f8, $f6
	mul.d   $f4, $f10, $f18
	cvt.s.d $f8, $f4
	swc1    $f8, 0x0024($sp)
136$:
	jal     object_set_scale
	lwc1    $f12, 0x0024($sp)
138$:
	b       140$
	nop
140$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AAE8C
object_a_802AAE8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lwc1    $f4, 0x0020($sp)
	lui     $at, %hi(object_a_803301D0+0x0C)
	swc1    $f4, %lo(object_a_803301D0+0x0C)($at)
	lwc1    $f6, 0x0020($sp)
	li      $at, 0x40340000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	lui     $at, %hi(object_a_803301D0+0x10)
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, %lo(object_a_803301D0+0x10)($at)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_803301D0+0x03)
	sb      $t6, %lo(object_a_803301D0+0x03)($at)
	lw      $t7, 0x0018($sp)
	bnez    $t7, 27$
	nop
	li      $t8, 0x0014
	lui     $at, %hi(object_a_803301D0+0x01)
	b       38$
	sb      $t8, %lo(object_a_803301D0+0x01)($at)
27$:
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x0015
	bnez    $at, 35$
	nop
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(object_a_803301D0+0x01)
	b       38$
	sb      $t0, %lo(object_a_803301D0+0x01)($at)
35$:
	li      $t1, 0x0004
	lui     $at, %hi(object_a_803301D0+0x01)
	sb      $t1, %lo(object_a_803301D0+0x01)($at)
38$:
	la.u    $a0, object_a_803301D0+0x00
	jal     objlib_802A32AC
	la.l    $a0, object_a_803301D0+0x00
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AAF48
object_a_802AAF48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0190($t6)
	andi    $t8, $t7, 0x0400
	bnez    $t8, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0188($t0)
	sw      $t1, 0x0188($t9)
14$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0024($sp)
	jal     objlib_802A3F24
	lw      $a0, 0x0024($sp)
	lui     $a0, %hi(file_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(file_index)($a0)
	move    $s0, $v0
	addiu   $a1, $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	and     $t6, $v0, $s0
	beqz    $t6, 35$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0079
35$:
	li.u    $a0, 0x8057FF91
	jal     object_playsound
	li.l    $a0, 0x8057FF91
	b       40$
	nop
40$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802AAFFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301E4
	la.l    $a1, object_a_803301E4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 19$
	nop
	lui     $a0, %hi(object)
	jal     obj_destroy
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AB060:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A8($t8)
	swc1    $f6, 0x016C($t9)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00A4($t0)
	swc1    $f8, 0x0168($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x437A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	swc1    $f4, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0164($t4)
	lwc1    $f8, 0x00A0($t4)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x016C($t5)
	lwc1    $f18, 0x00A8($t5)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f10, 0x0018($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	li      $at, 0x41B80000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	div.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t6)
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AB158:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802AB18C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0118($t6)
	slti    $at, $t7, 0x0401
	bnez    $at, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0118($t8)
	addiu   $t0, $t9, -0x0040
	sw      $t0, 0x0118($t8)
11$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AB1C8
object_a_802AB1C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 116$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 57$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	jal     objlib_802A4750
	li      $a0, 0x000A
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	ori     $t2, $t1, 0x0020
	sh      $t2, 0x0074($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0800
	sw      $t3, 0x0118($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, 36$
	nop
	jal     object_a_802AB060
	nop
	b       38$
	nop
36$:
	jal     object_a_802AB158
	nop
38$:
	jal     objlib_802A2748
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	li      $at, 0x42480000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0xC0800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00E4($t9)
	jal     objlib_802A37AC
	nop
57$:
	li.u    $a0, 0x40140011
	jal     object_levelsound
	li.l    $a0, 0x40140011
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	lwc1    $f8, 0x00B0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    114$
	nop
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f18, 0x0168($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    114$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x014C($t2)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x014C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	li      $at, 0x41A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
	li      $at, 0xBF800000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0190($t7)
	andi    $t9, $t8, 0x0400
	beqz    $t9, 112$
	nop
	jal     Na_StarAppear
	li      $a0, 0x0001
	b       114$
	nop
112$:
	jal     Na_StarAppear
	li      $a0, 0x0001
114$:
	b       211$
	nop
116$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t0, 0x014C($t1)
	bne     $t0, $at, 177$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0xC0800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t3)
	c.lt.s  $f10, $f16
	nop
	bc1f    137$
	nop
	li      $at, 0xC0800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t2)
137$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    169$
	nop
	lwc1    $f8, 0x00A4($t4)
	lwc1    $f10, 0x0168($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    169$
	nop
	li      $t5, 0x0001
	lui     $at, %hi(camera_8033CBC8)
	sw      $t5, %lo(camera_8033CBC8)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00E4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t1, $t9, 0x0001
	sw      $t1, 0x014C($t8)
169$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	b       211$
	nop
177$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t3, 0x014C($t0)
	bne     $t3, $at, 207$
	nop
	lui     $t2, %hi(camerap)
	lw      $t2, %lo(camerap)($t2)
	lbu     $t4, 0x0030($t2)
	bnez    $t4, 205$
	nop
	lui     $t5, %hi(camera_8032DF54)
	lbu     $t5, %lo(camera_8032DF54)($t5)
	bnez    $t5, 205$
	nop
	jal     objlib_802A4774
	li      $a0, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0021
	lh      $t7, 0x0074($t6)
	and     $t9, $t7, $at
	sh      $t9, 0x0074($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x014C($t1)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x014C($t1)
205$:
	b       211$
	nop
207$:
	jal     object_a_802AAFFC
	nop
	jal     object_a_802AB18C
	nop
211$:
	jal     objlib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00D4($t3)
	lw      $t4, 0x0118($t3)
	addu    $t5, $t2, $t4
	sw      $t5, 0x00D4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       224$
	nop
224$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB558
object_a_802AB558:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300080C
	la.l    $a2, o_1300080C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x007A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	sll     $t7, $t6, 24
	sw      $t7, 0x0188($t8)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x0400
	sw      $t9, 0x0190($t0)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AB5C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 23$
	nop
	li      $at, 0x00800000
	and     $t9, $t7, $at
	bnez    $t9, 23$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       30$
	li      $v0, 0x0001
23$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       30$
	move    $v0, $0
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB650
object_a_802AB650:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_coin
	jal     objlib_802A148C
	la.l    $a0, o_coin
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A4120
	nop
	jal     objlib_802A0604
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00E8($t6)
	jal     objlib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    29$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0075
29$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337960)
	lwc1    $f16, %lo(object_a_80337960)($at)
	lwc1    $f10, 0x00E8($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    41$
	nop
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

.globl object_a_802AB70C
object_a_802AB70C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AB5C8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F0($t6)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB748
object_a_802AB748:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F0($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F0($t6)
	li      $a0, 0x00C8
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 15$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
15$:
	jal     object_a_802AB5C8
	nop
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AB7A4
object_a_802AB7A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	li      $at, 0x41F00000
	mul.s   $f6, $f20, $f4
	mtc1    $at, $f8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x0110($t6)
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00B0($t6)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B8($t7)
	jal     rand
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	la.u    $a0, o_coin
	jal     objlib_802A148C
	la.l    $a0, o_coin
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A05B4
	nop
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AB860
object_a_802AB860:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A452C
	nop
	jal     objlib_802A2348
	li      $a0, -0x003E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01C0($t6)
	beqz    $t7, 51$
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 23$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
23$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0001
	lw      $t4, 0x0150($t3)
	bne     $t4, $at, 51$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0158($t5)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_80337968)
	ldc1    $f10, %lo(object_a_80337968)($at)
	lwc1    $f6, 0x0020($t6)
	cvt.d.s $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    51$
	nop
	lw      $t7, 0x001C($sp)
	lwc1    $f12, 0x0024($t7)
	jal     ATAN2
	lwc1    $f14, 0x001C($t7)
	sh      $v0, 0x001A($sp)
	lh      $a0, 0x001A($sp)
	jal     objlib_8029E5EC
	li      $a1, 0x0400
51$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 59$
	nop
	li.u    $a0, 0x38300081
	jal     object_playsound
	li.l    $a0, 0x38300081
59$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	lwc1    $f16, 0x00B0($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    69$
	nop
	jal     objlib_802A05D4
	nop
69$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 84$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x4800
	beqz    $t6, 84$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
84$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, 104$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x01B0($t0)
	slti    $at, $t1, 0x0005
	beqz    $at, 99$
	nop
	li.u    $a0, 0x30364081
	jal     object_playsound
	li.l    $a0, 0x30364081
99$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x01B0($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x01B0($t2)
104$:
	li      $a0, 0x0190
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 112$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
112$:
	jal     object_a_802AB5C8
	nop
	b       116$
	nop
116$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ABA40
object_a_802ABA40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 76$
	nop
	la.u    $a0, o_coin
	jal     objlib_802A148C
	la.l    $a0, o_coin
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A4120
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, 57$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	jal     objlib_802A0604
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A4($t1)
	lwc1    $f16, 0x00E8($t1)
	c.lt.s  $f10, $f16
	nop
	bc1t    46$
	nop
	lui     $at, %hi(object_a_80337970)
	lwc1    $f18, %lo(object_a_80337970)($at)
	c.lt.s  $f16, $f18
	nop
	bc1f    51$
	nop
46$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       55$
	nop
51$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00E8($t2)
	swc1    $f4, 0x00A4($t2)
55$:
	b       74$
	nop
57$:
	jal     objlib_802A0604
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A4($t3)
	lwc1    $f8, 0x00E8($t3)
	jal     objlib_802A3634
	sub.s   $f12, $f6, $f8
	li      $at, 0x437A0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    74$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0075
74$:
	b       96$
	nop
76$:
	jal     object_a_802AB5C8
	nop
	beqz    $v0, 91$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     objlib_802A3F24
	lw      $a0, 0x0144($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $s0, $v0
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00F4($t6)
	or      $t8, $t7, $s0
	sw      $t8, 0x00F4($t6)
91$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F0($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F0($t9)
96$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0002
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, 106$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
106$:
	b       108$
	nop
108$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802ABC04:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $s0, 0x0028($sp)
	li      $t6, 0x0001
	sw      $t6, 0x003C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0038($sp)
	addiu   $t8, $sp, 0x0040
	sw      $0, 0x0008($t8)
	addiu   $t9, $sp, 0x0040
	lw      $s0, 0x0008($t9)
	addiu   $t0, $sp, 0x0040
	sw      $s0, 0x0004($t9)
	sw      $s0, 0x0000($t0)
	lw      $t1, 0x0054($sp)
	andi    $t2, $t1, 0x0007
	sltiu   $at, $t2, 0x0005
	beqz    $at, 151$
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(object_a_80337974)
	addu    $at, $at, $t2
	lw      $t2, %lo(object_a_80337974)($at)
	jr      $t2
	nop
.globl L802ABC70
L802ABC70:
	lw      $t3, 0x0050($sp)
	addiu   $t6, $sp, 0x0040
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 5
	addiu   $t5, $t4, -0x0140
	sw      $t5, 0x0008($t6)
	lw      $t7, 0x0050($sp)
	slti    $at, $t7, 0x0005
	bnez    $at, 39$
	nop
	sw      $0, 0x003C($sp)
39$:
	b       151$
	nop
.globl L802ABCA8
L802ABCA8:
	sw      $0, 0x0038($sp)
	lw      $t8, 0x0050($sp)
	lui     $at, %hi(object_a_80337988)
	ldc1    $f8, %lo(object_a_80337988)($at)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 5
	mtc1    $t9, $f4
	addiu   $t1, $sp, 0x0040
	cvt.d.w $f6, $f4
	mul.d   $f10, $f6, $f8
	trunc.w.d $f16, $f10
	swc1    $f16, 0x0004($t1)
	lw      $t2, 0x0050($sp)
	slti    $at, $t2, 0x0005
	bnez    $at, 59$
	nop
	sw      $0, 0x003C($sp)
59$:
	b       151$
	nop
.globl L802ABCF8
L802ABCF8:
	lw      $t3, 0x0050($sp)
	lui     $at, %hi(math_sin)
	addiu   $t0, $sp, 0x0040
	sll     $t4, $t3, 13
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43960000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0050($sp)
	lui     $at, %hi(math_cos)
	addiu   $t8, $sp, 0x0040
	sll     $t2, $t1, 13
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43960000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x0008($t8)
	b       151$
	nop
.globl L802ABD88
L802ABD88:
	sw      $0, 0x0038($sp)
	lw      $t9, 0x0050($sp)
	lui     $at, %hi(math_cos)
	addiu   $t6, $sp, 0x0040
	sll     $t0, $t9, 13
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0050($sp)
	lui     $at, %hi(math_sin)
	addiu   $t4, $sp, 0x0040
	sll     $t8, $t7, 13
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f4
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x0004($t4)
	b       151$
	nop
.globl L802ABE20
L802ABE20:
	lw      $t5, 0x0050($sp)
	lui     $t7, %hi(object_a_80330204+2*0)
	addiu   $t8, $sp, 0x0040
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lh      $t7, %lo(object_a_80330204+2*0)($t7)
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0050($sp)
	lui     $t1, %hi(object_a_80330204+2*1)
	addiu   $t2, $sp, 0x0040
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_80330204+2*1)($t1)
	sw      $t1, 0x0008($t2)
	b       151$
	nop
151$:
	lw      $t3, 0x0054($sp)
	andi    $t4, $t3, 0x0010
	beqz    $t4, 156$
	nop
	sw      $0, 0x0038($sp)
156$:
	lw      $t5, 0x003C($sp)
	beqz    $t5, 177$
	nop
	addiu   $t6, $sp, 0x0040
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x0000($t6)
	lw      $a2, 0x0004($t6)
	lw      $a3, 0x0008($t6)
	la.u    $t9, o_130008D0
	la.l    $t9, o_130008D0
	li      $t8, 0x0074
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lw      $a0, 0x0050($sp)
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0038($sp)
	lw      $t1, 0x004C($sp)
	sw      $t0, 0x00F8($t1)
177$:
	b       179$
	nop
179$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl object_a_802ABEE4
object_a_802ABEE4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 8
	andi    $t9, $t8, 0x00FF
	sw      $t9, 0x00F4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802ABF0C
object_a_802ABF0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 68$
	nop
	b       73$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    50$
	nop
	sw      $0, 0x0024($sp)
26$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0024($sp)
	li      $t1, 0x0001
	lw      $t9, 0x00F4($t8)
	sllv    $t2, $t1, $t0
	and     $t3, $t9, $t2
	bnez    $t3, 40$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $a0, 0x0024($sp)
	jal     object_a_802ABC04
	lw      $a1, 0x0144($t4)
40$:
	lw      $t5, 0x0024($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0008
	bnez    $at, 26$
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t1, $t8, 0x0001
	sw      $t1, 0x014C($t7)
50$:
	b       73$
	nop
52$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337990)
	lwc1    $f10, %lo(object_a_80337990)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    66$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x014C($t9)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t9)
66$:
	b       73$
	nop
68$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
	b       73$
	nop
73$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $a1, 0x00F4($t5)
	move    $a0, $t5
	andi    $t6, $a1, 0x00FF
	jal     obj_set_actorflag
	move    $a1, $t6
	b       82$
	nop
82$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC068
object_a_802AC068:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A452C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 15$
	nop
	li.u    $a0, 0x30364081
	jal     object_playsound
	li.l    $a0, 0x30364081
15$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x005B
	beqz    $at, 25$
	nop
	lw      $t1, 0x00EC($t9)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 35$
	nop
25$:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803301F4
	la.l    $a1, object_a_803301F4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A05D4
	nop
	la.u    $a0, o_coin
	jal     objlib_802A148C
	la.l    $a0, o_coin
35$:
	jal     objlib_802A2348
	li      $a0, -0x001E
	jal     object_a_802AB5C8
	nop
	jal     objlib_802A4F04
	li      $a0, 0x0076
	beqz    $v0, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x0180($t4)
47$:
	li      $a0, 0x0190
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 55$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC15C
object_a_802AC15C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	jal     objlib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 23$
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0004
	bne     $t0, $at, 23$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0076
	lui     $at, %hi(object_a_80337994)
	jal     object_set_scale
	lwc1    $f12, %lo(object_a_80337994)($at)
23$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029F120
	lw      $a1, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $at, 0x0001
	lw      $t2, 0x0088($t1)
	bne     $t2, $at, 72$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x0026($sp)
	li      $at, 0x40400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
	lhu     $t7, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0020($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00AC($t0)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0020($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t4)
	li      $at, 0x420C0000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC294
object_a_802AC294:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330224
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330224
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC2C0
object_a_802AC2C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337998)
	jal     object_set_scale
	lwc1    $f12, %lo(object_a_80337998)($at)
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC2EC
object_a_802AC2EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130009E0
	la.l    $a2, o_130009E0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	sw      $v0, 0x002C($sp)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0024($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x002C($sp)
	div.s   $f10, $f6, $f8
	lwc1    $f4, 0x00A0($t6)
	mul.s   $f16, $f20, $f6
	sub.s   $f18, $f16, $f10
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f6, 0x0024($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x002C($sp)
	div.s   $f10, $f6, $f16
	lwc1    $f8, 0x00A8($t7)
	mul.s   $f4, $f20, $f6
	sub.s   $f18, $f4, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t7)
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AC3A8
object_a_802AC3A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 26$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x001E($sp)
	lui     $at, %hi(object_a_8033799C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_a_8033799C)($at)
	swc1    $f4, 0x00F4($t0)
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     objlib_8029F6E0
	li      $a3, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
26$:
	jal     objlib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803379A0)
	lwc1    $f8, %lo(object_a_803379A0)($at)
	lwc1    $f6, 0x00F4($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, db_work
	la.l    $t9, db_work
	lh      $t0, 0x0040($t9)
	lw      $t8, 0x0154($t7)
	addiu   $t1, $t0, 0x0006
	slt     $at, $t1, $t8
	beqz    $at, 56$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
56$:
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AC4A0
object_a_802AC4A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0024($sp)
3$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000ABC
	la.l    $a2, o_13000ABC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	sll     $t7, $t6, 1
	sll     $t8, $t7, 1
	lui     $t9, %hi(object_a_8033022C+2*0)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_8033022C+2*0)($t9)
	lw      $t1, 0x00C8($t0)
	lw      $t4, 0x001C($sp)
	li      $at, 0x8000
	addu    $t2, $t9, $t1
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0024($sp)
	lui     $t8, %hi(object_a_8033022C+2*1)
	lui     $at, %hi(math_sin)
	sll     $t6, $t5, 1
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lhu     $t8, %lo(object_a_8033022C+2*1)($t8)
	lw      $t1, 0x001C($sp)
	sra     $t0, $t8, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t1)
	lw      $t2, 0x0024($sp)
	lui     $t5, %hi(object_a_8033022C+2*1)
	lui     $at, %hi(math_cos)
	sll     $t3, $t2, 1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(object_a_8033022C+2*1)($t5)
	lw      $t8, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lw      $t0, 0x0024($sp)
	addiu   $t9, $t0, 0x0001
	slti    $at, $t9, 0x0006
	bnez    $at, 3$
	sw      $t9, 0x0024($sp)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC5B4
object_a_802AC5B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 26$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sh      $t9, 0x001E($sp)
	lui     $at, %hi(object_a_803379A4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_a_803379A4)($at)
	swc1    $f4, 0x00F4($t0)
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41F00000
	jal     objlib_8029F6E0
	li      $a3, 0x42DC0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t1, 0x001E($sp)
	sw      $t1, 0x00C8($t2)
26$:
	jal     objlib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803379A8)
	lwc1    $f8, %lo(object_a_803379A8)($at)
	lwc1    $f6, 0x00F4($t6)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t6)
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AC678
object_a_802AC678:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0024($sp)
3$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A34
	la.l    $a2, o_13000A34
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008B
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	sll     $t7, $t6, 1
	sll     $t8, $t7, 1
	lui     $t9, %hi(object_a_80330244+2*0)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_80330244+2*0)($t9)
	lw      $t1, 0x00C8($t0)
	lw      $t4, 0x001C($sp)
	li      $at, 0x8000
	addu    $t2, $t9, $t1
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t4)
	lw      $t5, 0x0024($sp)
	lui     $t8, %hi(object_a_80330244+2*1)
	lui     $at, %hi(math_sin)
	sll     $t6, $t5, 1
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lhu     $t8, %lo(object_a_80330244+2*1)($t8)
	lw      $t1, 0x001C($sp)
	sra     $t0, $t8, 4
	sll     $t9, $t0, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t1)
	lw      $t2, 0x0024($sp)
	lui     $t5, %hi(object_a_80330244+2*1)
	lui     $at, %hi(math_cos)
	sll     $t3, $t2, 1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(object_a_80330244+2*1)($t5)
	lw      $t8, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B8($t8)
	lw      $t0, 0x0024($sp)
	addiu   $t9, $t0, 0x0001
	slti    $at, $t9, 0x0007
	bnez    $at, 3$
	sw      $t9, 0x0024($sp)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AC78C
object_a_802AC78C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 31$
	nop
	lui     $at, %hi(object_a_803379AC)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_a_803379AC)($at)
	swc1    $f4, 0x00F4($t8)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t0)
	li      $at, 0x41600000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t1)
31$:
	jal     objlib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x00F0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_803379B0)
	lwc1    $f6, %lo(object_a_803379B0)($at)
	lwc1    $f4, 0x00F4($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t5)
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AC864
object_a_802AC864:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0008
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t7, 37$
	nop
8$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A78
	la.l    $a2, o_13000A78
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008B
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	sll     $t9, $t8, 16
	div     $0, $t9, $t0
	mflo    $t1
	sw      $t1, 0x00C8($t2)
	bnez    $t0, 25$
	nop
	break   7
25$:
	li      $at, -0x0001
	bne     $t0, $at, 31$
	li      $at, 0x80000000
	bne     $t9, $at, 31$
	nop
	break   6
31$:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x0020($sp)
	addiu   $t4, $t3, 0x0001
	slt     $at, $t4, $t5
	bnez    $at, 8$
	sw      $t4, 0x0024($sp)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802AC910:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 12$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AC958:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_door
	jal     segment_to_virtual
	la.l    $a0, o_door
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, 15$
	nop
	la.u    $t9, pl_camera_data
	la.l    $t9, pl_camera_data
	li      $t8, 0x0006
	b       19$
	sh      $t8, 0x001E($t9)
15$:
	la.u    $t1, pl_camera_data
	la.l    $t1, pl_camera_data
	li      $t0, 0x0005
	sh      $t0, 0x001E($t1)
19$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t3, pl_camera_data
	la.l    $t3, pl_camera_data
	sw      $t2, 0x0020($t3)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AC9D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A4F04
	li      $a0, 0x001F
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 21$
	nop
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(object_a_80330288)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     object_playsound
	lw      $a0, %lo(object_a_80330288)($a0)
	lui     $t0, %hi(object_flag)
	lw      $t0, %lo(object_flag)($t0)
	lui     $at, %hi(object_flag)
	ori     $t1, $t0, 0x0020
	sw      $t1, %lo(object_flag)($at)
21$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0046
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 33$
	nop
	lw      $t4, 0x001C($sp)
	lui     $a0, %hi(object_a_80330290)
	sll     $t5, $t4, 2
	addu    $a0, $a0, $t5
	jal     object_playsound
	lw      $a0, %lo(object_a_80330290)($a0)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802ACA6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A4F04
	li      $a0, 0x001F
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x001E
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 17$
	nop
	lw      $t8, 0x001C($sp)
	lui     $a0, %hi(object_a_80330290)
	sll     $t9, $t8, 2
	addu    $a0, $a0, $t9
	jal     object_playsound
	lw      $a0, %lo(object_a_80330290)($a0)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ACAC8
object_a_802ACAC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(object_a_80330260+4*0)
	li      $at, -0x0001
	sll     $t7, $t6, 3
	addu    $t8, $t8, $t7
	lw      $t8, %lo(object_a_80330260+4*0)($t8)
	beq     $t8, $at, 38$
	nop
11$:
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(object_a_80330260+4*0)
	sll     $t0, $t9, 3
	addu    $a0, $a0, $t0
	jal     objlib_802A0514
	lw      $a0, %lo(object_a_80330260+4*0)($a0)
	beqz    $v0, 27$
	nop
	jal     object_a_802AC958
	nop
	lw      $t1, 0x001C($sp)
	lui     $a0, %hi(object_a_80330260+4*1)
	sll     $t2, $t1, 3
	addu    $a0, $a0, $t2
	jal     objlib_8029FDB4
	lw      $a0, %lo(object_a_80330260+4*1)($a0)
27$:
	lw      $t3, 0x001C($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	lui     $t7, %hi(object_a_80330260+4*0)
	li      $at, -0x0001
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lw      $t7, %lo(object_a_80330260+4*0)($t7)
	bne     $t7, $at, 11$
	nop
38$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, 78$
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_803379B4)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_803379B4)($at)
	jr      $t9
	nop
.globl L802ACB90
L802ACB90:
	jal     objlib_8029F4B4
	move    $a0, $0
	b       78$
	nop
.globl L802ACBA0
L802ACBA0:
	jal     object_a_802AC910
	li      $a0, 0x0001
	jal     object_a_802AC9D0
	nop
	b       78$
	nop
.globl L802ACBB8
L802ACBB8:
	jal     object_a_802AC910
	li      $a0, 0x0002
	jal     object_a_802AC9D0
	nop
	b       78$
	nop
.globl L802ACBD0
L802ACBD0:
	jal     object_a_802AC910
	li      $a0, 0x0003
	jal     object_a_802ACA6C
	nop
	b       78$
	nop
.globl L802ACBE8
L802ACBE8:
	jal     object_a_802AC910
	li      $a0, 0x0004
	jal     object_a_802ACA6C
	nop
	b       78$
	nop
78$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	bnez    $t1, 85$
	nop
	jal     object_map_load
	nop
85$:
	jal     object_a_802ACE80
	nop
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ACC3C
object_a_802ACC3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	beqz    $t9, 25$
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lb      $t1, 0x0005($t0)
	sw      $t1, 0x00F8($t2)
25$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f18, 0x00A0($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t8, 0x00CA($t7)
	lwc1    $f16, 0x00A8($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t1)
	lw      $t2, 0x001C($sp)
	beqz    $t2, 70$
	nop
	lw      $t4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lb      $t5, 0x0005($t4)
	sw      $t5, 0x00FC($t6)
70$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t8, 0x00CA($t3)
	lwc1    $f10, 0x00A0($t3)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0xC3480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t7)
	lwc1    $f8, 0x00A8($t7)
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0xC3480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x001C
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t5)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 115$
	nop
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lb      $t9, 0x0005($t8)
	sw      $t9, 0x0100($t0)
115$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00F8($t3)
	blez    $t1, 139$
	nop
	slti    $at, $t1, 0x003C
	beqz    $at, 139$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(area_table+0)
	lw      $t7, 0x00F8($t2)
	lw      $t4, 0x00FC($t2)
	sll     $t5, $t7, 1
	addu    $at, $at, $t5
	sb      $t4, %lo(area_table+0)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(area_table+1)
	lw      $t9, 0x00F8($t6)
	lw      $t8, 0x0100($t6)
	sll     $t0, $t9, 1
	addu    $at, $at, $t0
	sb      $t8, %lo(area_table+1)($at)
139$:
	b       141$
	nop
141$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802ACE80
object_a_802ACE80:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	beqz    $t6, 93$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lw      $t8, 0x00F8($t7)
	bne     $t8, $t9, 16$
	nop
	li      $t0, 0x0001
	b       91$
	sw      $t0, 0x0004($sp)
16$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $t3, %hi(object_80361250)
	lh      $t3, %lo(object_80361250)($t3)
	lw      $t2, 0x00FC($t1)
	bne     $t2, $t3, 26$
	nop
	li      $t4, 0x0001
	b       91$
	sw      $t4, 0x0004($sp)
26$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	lw      $t6, 0x0100($t5)
	bne     $t6, $t7, 36$
	nop
	li      $t8, 0x0001
	b       91$
	sw      $t8, 0x0004($sp)
36$:
	lui     $t1, %hi(object_80361250)
	lh      $t1, %lo(object_80361250)($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t3, %hi(area_table+0)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lb      $t3, %lo(area_table+0)($t3)
	lw      $t0, 0x00FC($t9)
	bne     $t0, $t3, 50$
	nop
	li      $t4, 0x0001
	b       91$
	sw      $t4, 0x0004($sp)
50$:
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t9, %hi(area_table+0)
	sll     $t8, $t7, 1
	addu    $t9, $t9, $t8
	lb      $t9, %lo(area_table+0)($t9)
	lw      $t6, 0x0100($t5)
	bne     $t6, $t9, 64$
	nop
	li      $t1, 0x0001
	b       91$
	sw      $t1, 0x0004($sp)
64$:
	lui     $t3, %hi(object_80361250)
	lh      $t3, %lo(object_80361250)($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t5, %hi(area_table+1)
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lb      $t5, %lo(area_table+1)($t5)
	lw      $t0, 0x00FC($t2)
	bne     $t0, $t5, 78$
	nop
	li      $t7, 0x0001
	b       91$
	sw      $t7, 0x0004($sp)
78$:
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t2, %hi(area_table+1)
	sll     $t1, $t9, 1
	addu    $t2, $t2, $t1
	lb      $t2, %lo(area_table+1)($t2)
	lw      $t6, 0x0100($t8)
	bne     $t6, $t2, 91$
	nop
	li      $t3, 0x0001
	sw      $t3, 0x0004($sp)
91$:
	b       95$
	nop
93$:
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
95$:
	lw      $t0, 0x0004($sp)
	li      $at, 0x0001
	bne     $t0, $at, 109$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t7, 0x0002($t5)
	ori     $t8, $t7, 0x0001
	sh      $t8, 0x0002($t5)
	lui     $t9, %hi(object_80361254)
	lh      $t9, %lo(object_80361254)($t9)
	lui     $at, %hi(object_80361254)
	addiu   $t1, $t9, 0x0001
	sh      $t1, %lo(object_80361254)($at)
109$:
	lw      $t6, 0x0004($sp)
	bnez    $t6, 118$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0002
	lh      $t3, 0x0002($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0002($t2)
118$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0004($sp)
	sw      $t0, 0x0088($t7)
	b       124$
	nop
124$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802AD078
object_a_802AD078:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 21$
	nop
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sw      $t9, 0x00F4($t0)
21$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F4($t1)
	slt     $at, $t3, $t2
	beqz    $at, 31$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD10C
object_a_802AD10C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x0168($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    34$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x0168($t9)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
34$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AD1A4
object_a_802AD1A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 21$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_803379C8)
	lwc1    $f6, %lo(object_a_803379C8)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x500CA081
	jal     object_playsound
	li.l    $a0, 0x500CA081
21$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x000A
	bnez    $at, 31$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t2)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD238
object_a_802AD238:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 21$
	nop
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sw      $t9, 0x00F4($t0)
21$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	lw      $t3, 0x00F4($t1)
	slt     $at, $t3, $t2
	beqz    $at, 32$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD2D0
object_a_802AD2D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0144($t6)
	lw      $t7, 0x0154($t6)
	addiu   $t9, $t8, 0x0028
	slt     $at, $t9, $t7
	beqz    $at, 20$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	b       27$
	swc1    $f8, 0x00A4($t2)
20$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t3)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t3)
27$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AD34C
object_a_802AD34C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330298
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330298
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD378
object_a_802AD378:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 39$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 111$
	nop
	b       113$
	nop
19$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 37$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	jal     randsign
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sll     $t3, $v0, 7
	sw      $t3, 0x00F4($t4)
37$:
	b       113$
	nop
39$:
	jal     objlib_802A0604
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0006
	bnez    $at, 55$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	li.u    $a0, 0x302D8081
	jal     object_playsound
	li.l    $a0, 0x302D8081
55$:
	b       113$
	nop
57$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	slti    $at, $t2, 0x0400
	beqz    $at, 68$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0114($t0)
	addiu   $t4, $t3, 0x0080
	sw      $t4, 0x0114($t0)
68$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x011C($t5)
	slti    $at, $t6, -0x03FF
	bnez    $at, 83$
	nop
	slti    $at, $t6, 0x0400
	beqz    $at, 83$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	lw      $t7, 0x00F4($t8)
	addu    $t1, $t9, $t7
	sw      $t1, 0x011C($t8)
83$:
	li      $at, 0xC0400000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t2)
	jal     objlib_802A2BC4
	nop
	jal     objlib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x00E8($t3)
	lwc1    $f6, 0x00A4($t3)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f6, $f16
	nop
	bc1f    109$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x014C($t4)
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x014C($t4)
109$:
	b       113$
	nop
111$:
	b       113$
	nop
113$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t9, 0x0068($t6)
	lw      $t7, 0x014C($t9)
	bne     $t7, $at, 123$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AD580
object_a_802AD580:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x003C($sp)
	sw      $0, 0x0030($sp)
	sw      $0, 0x002C($sp)
	lw      $t8, 0x003C($sp)
	lui     $t0, %hi(object_a_803302AC+0x00)
	sw      $0, 0x0040($sp)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302AC+0x00)($t0)
	blez    $t0, 113$
	nop
18$:
	sw      $0, 0x0038($sp)
	sw      $0, 0x0034($sp)
	lw      $t1, 0x003C($sp)
	li      $at, 0x0003
	bne     $t1, $at, 39$
	nop
	lw      $t2, 0x003C($sp)
	la.u    $t4, object_a_803302AC+0x00
	la.l    $t4, object_a_803302AC+0x00
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t5, $t3, $t4
	lh      $t6, 0x0004($t5)
	lw      $t7, 0x0040($sp)
	lh      $t9, 0x0002($t5)
	multu   $t6, $t7
	mflo    $t8
	addu    $t0, $t8, $t9
	b       53$
	sw      $t0, 0x0038($sp)
39$:
	lw      $t1, 0x003C($sp)
	la.u    $t3, object_a_803302AC+0x00
	la.l    $t3, object_a_803302AC+0x00
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t4, $t2, $t3
	lh      $t6, 0x0004($t4)
	lw      $t7, 0x0040($sp)
	lh      $t8, 0x0002($t4)
	multu   $t6, $t7
	mflo    $t5
	addu    $t9, $t5, $t8
	sw      $t9, 0x0034($sp)
53$:
	la.u    $a0, o_13000C64
	jal     objlib_802A14FC
	la.l    $a0, o_13000C64
	beqz    $v0, 69$
	nop
	lw      $t0, 0x0040($sp)
	li      $at, 0x0003
	div     $0, $t0, $at
	mfhi    $t1
	bnez    $t1, 67$
	nop
	lw      $t2, 0x0030($sp)
	addiu   $t3, $t2, -0x0096
	sw      $t3, 0x0030($sp)
67$:
	li      $t6, 0x01C2
	sw      $t6, 0x002C($sp)
69$:
	lw      $t8, 0x003C($sp)
	lui     $t0, %hi(object_a_803302AC+0x06)
	lui     $t5, %hi(object)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302AC+0x06)($t0)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0030($sp)
	lw      $t4, 0x002C($sp)
	la.u    $t1, o_13000C04
	la.l    $t1, o_13000C04
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	lw      $a1, 0x0038($sp)
	lw      $a3, 0x0034($sp)
	sw      $t0, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	jal     obj_make_off
	addu    $a2, $t7, $t4
	sw      $v0, 0x0044($sp)
	lw      $t2, 0x003C($sp)
	lui     $a1, %hi(object_a_803302AC+0x08)
	lw      $a0, 0x0044($sp)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $a1, $a1, $t3
	jal     objlib_802A44F4
	lw      $a1, %lo(object_a_803302AC+0x08)($a1)
	lw      $t4, 0x003C($sp)
	lui     $t8, %hi(object_a_803302AC+0x00)
	lw      $t6, 0x0040($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $t8, $t8, $t5
	lh      $t8, %lo(object_a_803302AC+0x00)($t8)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0040($sp)
	slt     $at, $t7, $t8
	bnez    $at, 18$
	nop
113$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	b       119$
	nop
119$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl object_a_802AD76C
object_a_802AD76C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F6BC
	nop
	la.u    $a0, o_13000C64
	jal     objlib_802A14FC
	la.l    $a0, o_13000C64
	beqz    $v0, 13$
	nop
	jal     objlib_8029F694
	nop
	b       28$
	nop
13$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    28$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jal     objlib_8029F694
	nop
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD7F4
object_a_802AD7F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F694
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

.globl object_a_802AD828
object_a_802AD828:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13000C64
	jal     objlib_802A14FC
	la.l    $a0, o_13000C64
	bnez    $v0, 16$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    20$
	nop
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD890
object_a_802AD890:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803302DC
	jal     objlib_802A3E30
	la.l    $a0, object_a_803302DC
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AD8BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x30404081
	jal     object_playsound
	li.l    $a0, 0x30404081
	jal     objlib_802A50FC
	li      $a0, 0x0001
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AD8F0
object_a_802AD8F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0100($t7)
	bne     $t8, $at, 37$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, 35$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A4($t2)
	lwc1    $f8, 0x00FC($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    31$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       35$
	sw      $t3, 0x014C($t4)
31$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
35$:
	b       83$
	nop
37$:
	lui     $t7, %hi(mario_obj)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(mario_obj)($t7)
	lwc1    $f16, 0x00FC($t8)
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f16, $f10
	nop
	bc1t    51$
	nop
	lw      $t9, 0x0100($t8)
	li      $at, 0x0001
	bne     $t9, $at, 68$
	nop
51$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F8($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0214($t1)
	bne     $t2, $t3, 66$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
66$:
	b       83$
	nop
68$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F4($t6)
	swc1    $f4, 0x00A4($t6)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 83$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
83$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802ADA4C
object_a_802ADA4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40020001
	jal     object_levelsound
	li.l    $a0, 0x40020001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 16$
	nop
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 16$
	nop
	jal     object_a_802AD8BC
	nop
16$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x41200000
	li      $a2, 0x40000000
	jal     objlib_8029E3E8
	addiu   $a0, $a0, 0x00B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00B0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00F8($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    73$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F8($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0100($t1)
	beq     $t2, $at, 49$
	nop
	li      $at, 0x0001
	bne     $t2, $at, 54$
	nop
49$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	b       73$
	sw      $t3, 0x014C($t4)
54$:
	lui     $t5, %hi(mario_obj)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, %lo(mario_obj)($t5)
	lwc1    $f6, 0x00FC($t6)
	lwc1    $f4, 0x00A4($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    69$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	b       73$
	sw      $t7, 0x014C($t8)
69$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADB88
object_a_802ADB88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40020001
	jal     object_levelsound
	li.l    $a0, 0x40020001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 16$
	nop
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 16$
	nop
	jal     object_a_802AD8BC
	nop
16$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0xC1200000
	li      $a2, 0xC0000000
	jal     objlib_8029E3E8
	addiu   $a0, $a0, 0x00B0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A4($t8)
	lwc1    $f6, 0x00B0($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00F4($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    81$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00F4($t0)
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0100($t1)
	bne     $t2, $at, 51$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	b       81$
	sw      $t3, 0x014C($t4)
51$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0002
	lw      $t6, 0x0100($t5)
	bne     $t6, $at, 62$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	b       81$
	sw      $t7, 0x014C($t8)
62$:
	lui     $t9, %hi(mario_obj)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, %lo(mario_obj)($t9)
	lwc1    $f6, 0x00FC($t0)
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    77$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       81$
	sw      $t1, 0x014C($t2)
77$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADCE4
object_a_802ADCE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 17$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x306B8081
	jal     object_playsound
	li.l    $a0, 0x306B8081
17$:
	jal     objlib_802A0114
	nop
	bnez    $v0, 29$
	nop
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 29$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADD70
object_a_802ADD70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 17$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x306B8081
	jal     object_playsound
	li.l    $a0, 0x306B8081
17$:
	jal     objlib_802A0114
	nop
	bnez    $v0, 28$
	nop
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 28$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADDF8
object_a_802ADDF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t0, %hi(object_a_803302EC+2*2)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t9, $t8, 1
	addu    $t0, $t0, $t9
	lh      $t0, %lo(object_a_803302EC+2*2)($t0)
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	bnez    $t1, 48$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_803302EC+2*0)
	lw      $t3, 0x0144($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_a_803302EC+2*0)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0168($t7)
	swc1    $f8, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f10, 0x00F8($t8)
	lwc1    $f16, 0x00F4($t8)
	add.s   $f18, $f10, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x00FC($t8)
	la.u    $a0, o_13000CFC
	jal     objlib_802A14FC
	la.l    $a0, o_13000CFC
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       87$
	sw      $v0, 0x0100($t9)
48$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t5, %hi(object_a_803302EC+2*0)
	lw      $t1, 0x0144($t0)
	sll     $t3, $t1, 2
	subu    $t3, $t3, $t1
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lh      $t5, %lo(object_a_803302EC+2*0)($t5)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00F4($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_a_803302EC+2*1)
	lw      $t2, 0x0144($t6)
	sll     $t7, $t2, 2
	subu    $t7, $t7, $t2
	sll     $t8, $t7, 1
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803302EC+2*1)($t9)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00F8($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f4, 0x00F8($t1)
	lwc1    $f6, 0x00F4($t1)
	add.s   $f8, $f4, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x00FC($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x0100($t4)
87$:
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802ADF6C
object_a_802ADF6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330318
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330318
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADF98
object_a_802ADF98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x00020000
	lui     $a0, %hi(object)
	la.u    $a2, o_13000D6C
	la.l    $a2, o_13000D6C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008E
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802ADFD8
object_a_802ADFD8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 17$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00C8($t0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x41200000
17$:
	jal     objlib_802A2644
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t3, $t2, -0x002A
	sw      $t3, 0x017C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x00FE
	lui     $at, %hi(object_a_803379D0)
	lw      $t5, 0x017C($t4)
	ldc1    $f8, %lo(object_a_803379D0)($at)
	li      $at, 0x3FF00000
	subu    $t7, $t6, $t5
	mtc1    $t7, $f4
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.w $f6, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	div.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	jal     object_set_scale
	lwc1    $f12, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	slti    $at, $t9, 0x0002
	beqz    $at, 55$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE0CC
object_a_802AE0CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lh      $t6, 0x0022($sp)
	sw      $0, 0x0018($sp)
	blez    $t6, 85$
	nop
10$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000DB4
	la.l    $a2, o_13000DB4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	lh      $a1, 0x0026($sp)
	sw      $v0, 0x001C($sp)
	lh      $t7, 0x002E($sp)
	lw      $t8, 0x001C($sp)
	sw      $t7, 0x00F0($t8)
	lw      $t9, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	jal     rand
	nop
	lw      $t0, 0x001C($sp)
	sw      $v0, 0x00C8($t0)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x00C8($t1)
	sw      $t2, 0x00D4($t1)
	jal     rand
	nop
	lw      $t3, 0x001C($sp)
	sw      $v0, 0x00D0($t3)
	li      $at, 0x42480000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	lw      $t4, 0x001C($sp)
	swc1    $f0, 0x00B0($t4)
	lh      $t5, 0x0026($sp)
	li      $at, 0x008A
	beq     $t5, $at, 50$
	nop
	li      $at, 0x0038
	bne     $t5, $at, 61$
	nop
50$:
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0F00
	sw      $t6, 0x0114($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x0500
	sw      $t8, 0x0118($t9)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t0, 0x001C($sp)
	b       76$
	swc1    $f10, 0x00B8($t0)
61$:
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f16
	lw      $t4, 0x001C($sp)
	add.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sll     $t3, $t1, 7
	sw      $t3, 0x0114($t4)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lw      $t5, 0x001C($sp)
	swc1    $f6, 0x00B8($t5)
76$:
	lw      $a0, 0x001C($sp)
	jal     obj_set_scale
	lw      $a1, 0x0028($sp)
	lw      $t6, 0x0018($sp)
	lh      $t8, 0x0022($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t8
	bnez    $at, 10$
	sw      $t7, 0x0018($sp)
85$:
	b       87$
	nop
87$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE238
object_a_802AE238:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x0164($t6)
	jal     bg_check_water
	lwc1    $f14, 0x016C($t6)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x00A4($t7)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0164($t8)
	add.s   $f10, $f0, $f8
	swc1    $f10, 0x00A0($t8)
	li      $at, 0x43160000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x016C($t9)
	add.s   $f18, $f0, $f16
	swc1    $f18, 0x00A8($t9)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x43480000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t1, $f16
	nop
	sw      $t1, 0x017C($t2)
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE304
object_a_802AE304:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x8000
	jal     object_a_802AE334
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE334
object_a_802AE334:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033032C
	jal     objlib_802A32AC
	la.l    $a0, object_a_8033032C
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE360
object_a_802AE360:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x4000
	la.u    $a0, object_a_80330340
	jal     objlib_802A32AC
	la.l    $a0, object_a_80330340
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802AE394:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002528
	la.l    $a2, o_13002528
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0096
	jal     objlib_8029EEB8
	li      $a3, 0x3F800000
	sw      $v0, 0x001C($sp)
	la.u    $t6, object_a_80330354
	la.l    $t6, object_a_80330354
	lh      $t7, 0x0000($t6)
	lw      $t8, 0x001C($sp)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B8($t8)
	la.u    $t9, object_a_80330354
	la.l    $t9, object_a_80330354
	lh      $t0, 0x0002($t9)
	lw      $t1, 0x001C($sp)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00B0($t1)
	la.u    $t2, object_a_80330354
	la.l    $t2, object_a_80330354
	lh      $t3, 0x0004($t2)
	lw      $t4, 0x001C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00E4($t4)
	la.u    $t5, object_a_80330354
	la.l    $t5, object_a_80330354
	lh      $t6, 0x0006($t5)
	lw      $a0, 0x001C($sp)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f4, $f4
	mfc1    $a1, $f4
	jal     objlib_802A2FC0
	nop
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802AE45C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	xor     $t9, $a0, $at
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00E0($t7)
	and     $t0, $t8, $t9
	sw      $t0, 0x00E0($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AE48C
object_a_802AE48C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802AE45C
	li      $a0, 0x00010000
	la.u    $a0, object_a_8033035C
	jal     objlib_802A32AC
	la.l    $a0, object_a_8033035C
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AE4C0
object_a_802AE4C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
5$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13000E70
	la.l    $a2, o_13000E70
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008E
	sw      $v0, 0x0018($sp)
	lh      $t6, 0x0026($sp)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x00C8($t7)
	lh      $t8, 0x0022($sp)
	lw      $t9, 0x0018($sp)
	sw      $t8, 0x00C4($t9)
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0003
	bnez    $at, 5$
	sw      $t1, 0x001C($sp)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE534
object_a_802AE534:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $t6, 0x01F4
	sh      $t6, 0x002E($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 144$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0064
	sw      $t9, 0x017C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	bnez    $t2, 104$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x44610000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t9, 0x002E($sp)
	li      $at, 0x8000
	lw      $t4, 0x00C8($t3)
	mtc1    $t9, $f8
	lwc1    $f18, 0x00A0($t3)
	addu    $t5, $t4, $at
	andi    $t6, $t5, 0xFFFF
	cvt.s.w $f10, $f8
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mov.s   $f20, $f0
	add.s   $f10, $f6, $f20
	lwc1    $f8, 0x00A4($t0)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t8, 0x002E($sp)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	mtc1    $t8, $f4
	lwc1    $f10, 0x00A8($t1)
	addu    $t4, $t2, $at
	andi    $t5, $t4, 0xFFFF
	cvt.s.w $f6, $f4
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f8, $f16, $f6
	add.s   $f18, $f10, $f8
	swc1    $f18, 0x00A8($t1)
	li      $at, 0x457A0000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mov.s   $f20, $f0
	lw      $t3, 0x00C8($t9)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f16, $f4
	add.s   $f6, $f16, $f20
	trunc.w.s $f10, $f6
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x00C8($t9)
	jal     randf
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f8
	li      $at, 0x42480000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f18, $f4
	b       139$
	swc1    $f16, 0x00B8($t4)
104$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x44160000
	lh      $t6, 0x002E($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	addiu   $t7, $t6, -0x00C8
	mtc1    $t7, $f10
	lwc1    $f6, 0x00A4($t5)
	cvt.s.w $f8, $f10
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x00A4($t5)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	li      $at, 0x42480000
	mtc1    $at, $f10
	mul.s   $f16, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f6, $f16, $f10
	swc1    $f6, 0x00B0($t8)
	jal     rand
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t3)
139$:
	lui     $a0, %hi(object)
	jal     objlib_802A19AC
	lw      $a0, %lo(object)($a0)
	jal     object_set_scale
	lwc1    $f12, 0x0028($sp)
144$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x0009
	bnez    $at, 153$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
153$:
	jal     randf
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	lw      $t4, 0x00D0($t9)
	mov.s   $f20, $f0
	mul.s   $f16, $f4, $f20
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f18, $f16
	add.s   $f4, $f8, $f10
	trunc.w.s $f18, $f4
	mfc1    $t7, $f18
	nop
	sw      $t7, 0x00D0($t9)
	jal     randf
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lw      $t8, 0x00D4($t5)
	mov.s   $f20, $f0
	mul.s   $f8, $f6, $f20
	mtc1    $t8, $f4
	nop
	cvt.s.w $f18, $f4
	add.s   $f10, $f16, $f8
	add.s   $f6, $f18, $f10
	trunc.w.s $f16, $f6
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x00D4($t5)
	jal     objlib_802A2644
	nop
	b       197$
	nop
197$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AE85C
object_a_802AE85C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 15$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
15$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 37$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	sw      $0, 0x001C($sp)
26$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00AA
	lw      $t9, 0x001C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x000A
	bnez    $at, 26$
	sw      $t0, 0x001C($sp)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AE908
object_a_802AE908:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 57$
	nop
	b       77$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 33$
	nop
	jal     objlib_802A3F24
	li      $a0, 0x0001
	lui     $a0, %hi(file_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(file_index)($a0)
	move    $s0, $v0
	addiu   $a1, $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	and     $t9, $v0, $s0
	beqz    $t9, 33$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0079
33$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $a0, $t0
	jal     objlib_8029F120
	lw      $a1, 0x0068($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	move    $a0, $t1
	jal     objlib_802A5228
	lw      $a1, 0x0068($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, 55$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
55$:
	b       77$
	nop
57$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
	li.u    $a2, 0x3F333333
	li.l    $a2, 0x3F333333
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	lui     $at, %hi(object_a_803379D8)
	lwc1    $f12, %lo(object_a_803379D8)($at)
	li      $at, 0xC4960000
	mtc1    $at, $f14
	li.u    $a2, 0x44A28000
	jal     object_b_802F2B88
	li.l    $a2, 0x44A28000
	b       77$
	nop
77$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D4($t8)
	addiu   $t0, $t9, 0x0400
	sw      $t0, 0x00D4($t8)
	b       84$
	nop
84$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AEA6C
object_a_802AEA6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	beqz    $t7, 11$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
11$:
	jal     object_map_load
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEAB8
object_a_802AEAB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0088($t6)
	beq     $t7, $at, 12$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
12$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x00C8($t0)
	jal     object_map_load
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEB1C
object_a_802AEB1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0009
	beqz    $t8, 16$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEB74
object_a_802AEB74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F6BC
	nop
	b       6$
	nop
6$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEB9C
object_a_802AEB9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330370
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330370
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEBC8
object_a_802AEBC8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	cvt.d.s $f6, $f4
	lui     $at, %hi(object_a_803379E0)
	add.d   $f10, $f6, $f8
	ldc1    $f16, %lo(object_a_803379E0)($at)
	lui     $at, %hi(object_a_803379E8)
	ldc1    $f4, %lo(object_a_803379E8)($at)
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0080
	sw      $t2, 0x00F4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AEC40
object_a_802AEC40:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00F6($t6)
	lwc1    $f16, 0x00A4($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_803379F0)
	ldc1    $f8, %lo(object_a_803379F0)($at)
	cvt.d.s $f6, $f4
	cvt.d.s $f18, $f16
	mul.d   $f10, $f6, $f8
	sub.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00A4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0100
	sw      $t2, 0x00F4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AECA8
object_a_802AECA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     objlib_8029F0E0
	lw      $a1, 0x0068($t6)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AECDC
object_a_802AECDC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 33$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 17$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
17$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00F6($t1)
	lwc1    $f4, 0x00A4($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40E00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	b       48$
	swc1    $f6, 0x00A4($t1)
33$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lhu     $t6, 0x00F6($t5)
	lwc1    $f4, 0x00A4($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	sub.s   $f18, $f4, $f16
	swc1    $f18, 0x00A4($t5)
48$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t2, $t0, 0x0100
	sw      $t2, 0x00F4($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802AEDC0
object_a_802AEDC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E27C
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x015C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x000A
	beqz    $at, 51$
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_803379F8)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_803379F8)($at)
	jr      $t9
	nop
.globl L802AEE34
L802AEE34:
	lui     $a0, %hi(object)
	la.u    $a2, o_130010B8
	la.l    $a2, o_130010B8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
	b       51$
	nop
.globl L802AEE68
L802AEE68:
	b       51$
	nop
.globl L802AEE70
L802AEE70:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	b       51$
	nop
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEEA4
object_a_802AEEA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x428C0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0800
	sw      $t2, 0x00F4($t0)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AEF1C
object_a_802AEF1C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 22$
	nop
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x00F0($t0)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A2FC0
	li      $a1, 0x41200000
22$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0144($t1)
	bne     $t2, $at, 50$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40C00000
	mtc1    $at, $f16
	lw      $t4, 0x0154($t3)
	lwc1    $f10, 0x00B8($t3)
	li      $at, 0x40590000
	mtc1    $t4, $f4
	sub.s   $f18, $f10, $f16
	mtc1    $0, $f16
	mtc1    $at, $f17
	cvt.s.w $f6, $f4
	li      $at, 0x40000000
	mtc1    $at, $f19
	mul.s   $f8, $f18, $f6
	mtc1    $0, $f18
	cvt.d.s $f10, $f8
	div.d   $f4, $f10, $f16
	add.d   $f6, $f4, $f18
	cvt.s.d $f8, $f6
	b       72$
	swc1    $f8, 0x001C($sp)
50$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40340000
	mtc1    $at, $f5
	lw      $t6, 0x0154($t5)
	lwc1    $f10, 0x00B8($t5)
	mtc1    $0, $f4
	mtc1    $t6, $f6
	cvt.d.s $f16, $f10
	li      $at, 0x40590000
	cvt.d.w $f8, $f6
	mtc1    $0, $f6
	sub.d   $f18, $f16, $f4
	mtc1    $0, $f16
	mtc1    $at, $f17
	li      $at, 0x3FF00000
	mul.d   $f10, $f18, $f8
	mtc1    $at, $f7
	div.d   $f4, $f10, $f16
	add.d   $f18, $f4, $f6
	cvt.s.d $f8, $f18
	swc1    $f8, 0x001C($sp)
72$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, 138$
	nop
	li      $at, 0x43480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x01FC($t9)
	li      $at, 0x43160000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0208($t0)
	li      $at, 0xC1E00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t1)
	jal     objlib_802A0604
	nop
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f8, $f6, $f18
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f4, 0x00E8($t2)
	sub.s   $f16, $f10, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    125$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t3)
	li      $at, 0x41C80000
	mtc1    $at, $f18
	lwc1    $f10, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f18, $f10
	lwc1    $f16, 0x00E8($t4)
	add.s   $f4, $f16, $f8
	swc1    $f4, 0x00A4($t4)
125$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_80337A20)
	ldc1    $f10, %lo(object_a_80337A20)($at)
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x0110($t6)
	mtc1    $t7, $f6
	nop
	cvt.d.w $f18, $f6
	div.d   $f16, $f18, $f10
	trunc.w.d $f8, $f16
	b       143$
	swc1    $f8, 0x0018($sp)
138$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0110($t0)
	sw      $t1, 0x0018($sp)
143$:
	jal     object_set_scale
	lwc1    $f12, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0004
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, 158$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x00B8($t4)
	add.s   $f18, $f4, $f6
	b       160$
	swc1    $f18, 0x00A4($t4)
158$:
	jal     objlib_802A2644
	nop
160$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x0154($t5)
	slt     $at, $t7, $t6
	beqz    $at, 170$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
170$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       175$
	nop
175$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802AF1E8
object_a_802AF1E8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 33$
	nop
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0004
	bne     $t8, $at, 17$
	nop
	lui     $t9, %hi(object_80361264)
	lh      $t9, %lo(object_80361264)($t9)
	li      $at, 0x0001
	bne     $t9, $at, 31$
	nop
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
31$:
	b       127$
	nop
33$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, 118$
	nop
	li      $t6, 0x0090
	sw      $t6, 0x0030($sp)
	li      $at, 0x42BE0000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0038($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, 53$
	nop
	li      $t9, 0x0091
	sw      $t9, 0x0030($sp)
53$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t2, 0x0144($t0)
	bne     $t2, $at, 63$
	nop
	li      $at, 0x42480000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0038($sp)
63$:
	li      $t3, 0x0001
	sw      $t3, 0x0034($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x003C
	beqz    $at, 74$
	nop
	li      $t5, 0x000F
	b       92$
	sw      $t5, 0x0034($sp)
74$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x004A
	beqz    $at, 87$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x004B
	lw      $t9, 0x0154($t8)
	subu    $t2, $t0, $t9
	b       92$
	sw      $t2, 0x0034($sp)
87$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x014C($t3)
92$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0034($sp)
	sw      $t5, 0x0110($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0030($sp)
	la.u    $t0, o_13001124
	lw      $a0, 0x0144($t7)
	la.l    $t0, o_13001124
	sw      $t0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t7, 0x0010($sp)
	jal     obj_make_off
	sw      $t8, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lwc1    $f16, 0x0038($sp)
	lw      $t9, 0x003C($sp)
	swc1    $f16, 0x00B8($t9)
	li.u    $a0, 0x60048001
	jal     object_levelsound
	li.l    $a0, 0x60048001
	b       127$
	nop
118$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0154($t2)
	slti    $at, $t1, 0x003D
	bnez    $at, 127$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
127$:
	b       129$
	nop
129$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802AF3FC
object_a_802AF3FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, -0x0080
	sw      $t8, 0x00C8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0080
	sw      $t9, 0x0118($t0)
	jal     object_a_802AF1E8
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AF448
object_a_802AF448:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	jal     objlib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 20$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 55$
	nop
	b       87$
	nop
20$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, 42$
	nop
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x00F0($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t5)
42$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0001
	beqz    $t6, 53$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
53$:
	b       87$
	nop
55$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, 72$
	nop
	li      $at, 0x42480000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t4)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
72$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0052
	beqz    $t6, 85$
	nop
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0065
	bnez    $at, 85$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
85$:
	b       87$
	nop
87$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x0154($t1)
	slti    $at, $t9, 0x012D
	bnez    $at, 96$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
96$:
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       103$
	nop
103$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AF5F8
object_a_802AF5F8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 79$
	nop
	b       108$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    29$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
29$:
	b       108$
	nop
31$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001184
	la.l    $a2, o_13001184
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	sw      $v0, 0x002C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x000A
	li      $at, 0x3FE00000
	lw      $t1, 0x0154($t0)
	mtc1    $at, $f17
	mtc1    $0, $f16
	subu    $t3, $t2, $t1
	mtc1    $t3, $f8
	nop
	cvt.d.w $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0028($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f6
	mfc1    $a2, $f6
	mfc1    $a3, $f6
	jal     objlib_8029F3D0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	bnez    $t5, 66$
	nop
	jal     objlib_802A05F0
	lw      $a0, 0x002C($sp)
66$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000B
	bnez    $at, 77$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
77$:
	b       108$
	nop
79$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0154($t2)
	bnez    $t1, 95$
	nop
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f10, $f0, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00F4($t5)
95$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00F4($t6)
	lw      $t7, 0x0154($t6)
	addiu   $t0, $t9, 0x0064
	slt     $at, $t0, $t7
	beqz    $at, 106$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
106$:
	b       108$
	nop
108$:
	b       110$
	nop
110$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AF7C4
object_a_802AF7C4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0046
	sh      $t6, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t0)
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	li      $at, 0x0003
	divu    $0, $t1, $at
	mfhi    $t2
	beqz    $t2, 30$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x017C($t3)
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x017C($t3)
30$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t9, 0x001E($sp)
	lw      $t8, 0x0154($t6)
	slt     $at, $t9, $t8
	beqz    $at, 42$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x017C($t7)
	addiu   $t1, $t0, -0x0005
	sw      $t1, 0x017C($t7)
42$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x017C($t2)
	bgtz    $t4, 50$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
50$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x001E($sp)
	lw      $t3, 0x0154($t5)
	slt     $at, $t3, $t6
	beqz    $at, 124$
	nop
	jal     objlib_802A0114
	nop
	bnez    $v0, 124$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, object_a_80330380
	la.l    $t8, object_a_80330380
	lwc1    $f8, 0x0000($t8)
	lwc1    $f10, 0x00F4($t9)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t0, object_a_80330380
	la.l    $t0, object_a_80330380
	lwc1    $f18, 0x0004($t0)
	lwc1    $f4, 0x00F4($t1)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t7, object_a_80330380
	la.l    $t7, object_a_80330380
	lwc1    $f8, 0x0008($t7)
	lwc1    $f10, 0x00F4($t2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t4, object_a_80330380
	la.l    $t4, object_a_80330380
	lwc1    $f18, 0x000C($t4)
	lwc1    $f4, 0x00F4($t5)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x015C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    106$
	nop
	lwc1    $f16, 0x0028($sp)
	c.lt.s  $f10, $f16
	nop
	bc1t    119$
	nop
106$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f18, $f4
	nop
	bc1f    124$
	nop
	lwc1    $f6, 0x0020($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    124$
	nop
119$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0010
	sw      $t0, 0x0134($t8)
124$:
	b       126$
	nop
126$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802AF9CC
object_a_802AF9CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a2, o_13001254
	la.l    $a2, o_13001254
	li      $a1, 0x0094
	move    $a0, $t6
	jal     objlib_8029EEB8
	lw      $a3, 0x002C($t6)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFA0C
object_a_802AFA0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 36$
	nop
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f6, $f0, $f4
	mtc1    $0, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x00B8($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	li      $at, 0x41000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x002C($t1)
	swc1    $f6, 0x00F4($t1)
36$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00C8($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A4($t6)
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFAE4
object_a_802AFAE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 51$
	nop
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     objlib_8029F6E0
	li      $a3, 0xC1F00000
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f6, $f0, $f4
	mtc1    $0, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x00B8($t8)
	jal     randf
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	li      $at, 0x46000000
	mtc1    $at, $f4
	lw      $t0, 0x00C8($t9)
	lui     $t4, %hi(object)
	mul.s   $f6, $f0, $f4
	addiu   $t1, $t0, 0x7000
	mtc1    $t1, $f8
	lw      $t4, %lo(object)($t4)
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $t3, $f18
	nop
	sw      $t3, 0x00C8($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
51$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	lw      $t8, 0x0118($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00C8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	lwc1    $f6, 0x00B0($t0)
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t0)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFBF8
object_a_802AFBF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	beqz    $t7, 23$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 23$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001214
	la.l    $a2, o_13001214
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0094
23$:
	lui     $t1, %hi(object)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lw      $t1, %lo(object)($t1)
	sw      $t1, 0x006C($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0028
	li      $a2, -0x0078
	jal     objlib_8029E8BC
	move    $a3, $0
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lw      $t4, 0x00F4($t3)
	andi    $t5, $t4, 0x0800
	bnez    $t5, 53$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0801
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00E0($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x00E0($t7)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	sw      $0, 0x006C($t0)
53$:
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFCE4
object_a_802AFCE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0018($sp)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AFD1C
object_a_802AFD1C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	la.u    $a0, object_a_80330390
	li.u    $a1, 0x50244081
	li.l    $a1, 0x50244081
	la.l    $a0, object_a_80330390
	jal     objlib_802A4360
	move    $a2, $0
	beqz    $v0, 18$
	nop
	jal     objlib_8029FDB4
	li      $a0, 0x0001
18$:
	jal     objlib_802A2320
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 30$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 75$
	nop
	b       106$
	nop
30$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x40800000
	li      $a2, 0x3F800000
	jal     object_a_802A98C4
	addiu   $a0, $a0, 0x00B8
	jal     objlib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    51$
	nop
	jal     objlib_802A2748
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       68$
	sw      $v0, 0x0160($t0)
51$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f8, $f6
	nop
	bc1f    68$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0160($t2)
68$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t3)
	b       106$
	nop
75$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t7, $t5, $at
	sw      $t7, 0x008C($t4)
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0154($t6)
	slti    $at, $t9, 0x0015
	bnez    $at, 104$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x008C($t2)
	ori     $t5, $t3, 0x0008
	sw      $t5, 0x008C($t2)
104$:
	b       106$
	nop
106$:
	jal     objlib_802A2348
	li      $a0, -0x003C
	b       110$
	nop
110$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802AFEE8
object_a_802AFEE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802AFF30
object_a_802AFF30:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 70$
	nop
	b       92$
	nop
19$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
31$:
	b       92$
	nop
33$:
	li.u    $a0, 0x40020001
	jal     object_levelsound
	li.l    $a0, 0x40020001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x008D
	bnez    $at, 48$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	b       55$
	sw      $t7, 0x014C($t5)
48$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
55$:
	b       92$
	nop
57$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0154($t9)
	slti    $at, $t1, 0x003D
	bnez    $at, 68$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x014C($t2)
	addiu   $t3, $t0, 0x0001
	sw      $t3, 0x014C($t2)
68$:
	b       92$
	nop
70$:
	li.u    $a0, 0x40020001
	jal     object_levelsound
	li.l    $a0, 0x40020001
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0154($t4)
	slti    $at, $t6, 0x008D
	bnez    $at, 83$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       90$
	sw      $0, 0x014C($t7)
83$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t5)
90$:
	b       92$
	nop
92$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0003
	lw      $t9, 0x0068($t8)
	lw      $t1, 0x014C($t9)
	bne     $t1, $at, 102$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
102$:
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B00E4
object_a_802B00E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0110($t6)
	lwc1    $f6, 0x010C($t6)
	div.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 22$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	b       57$
	nop
22$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0154($t0)
	slt     $at, $t2, $t1
	beqz    $at, 34$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
34$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x010C($t6)
	neg.s   $f18, $f16
	swc1    $f18, 0x00B8($t6)
	b       57$
	nop
41$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0024($sp)
	lw      $t8, 0x0154($t7)
	slt     $at, $t9, $t8
	beqz    $at, 51$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
51$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x010C($t1)
	swc1    $f4, 0x00B8($t1)
	b       57$
	nop
57$:
	jal     objlib_802A1308
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f8, 0x00AC($t2)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x00A8($t4)
	lwc1    $f18, 0x00B4($t4)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0003
	lw      $t3, 0x0068($t5)
	lw      $t6, 0x014C($t3)
	bne     $t6, $at, 81$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B0244:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lh      $a1, 0x0022($sp)
	jal     obj_make_here
	lw      $a2, 0x0024($sp)
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	lw      $t8, 0x00FC($t6)
	lw      $t0, 0x00F8($t6)
	multu   $t7, $t8
	mflo    $t9
	addu    $t1, $t0, $t9
	sh      $t1, 0x001E($sp)
	lh      $t2, 0x001E($sp)
	lw      $t3, 0x0018($sp)
	sw      $t2, 0x00C8($t3)
	lhu     $t5, 0x001E($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f4, 0x0100($t4)
	lw      $t6, 0x0018($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A0($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x00F4($t9)
	lwc1    $f18, 0x00A4($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f10, $f18, $f6
	swc1    $f10, 0x00A4($t0)
	lhu     $t4, 0x001E($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f8, 0x0100($t3)
	lw      $t8, 0x0018($sp)
	mul.s   $f4, $f8, $f16
	lwc1    $f18, 0x00A8($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0018($sp)
	lwc1    $f10, 0x0104($t6)
	swc1    $f10, 0x0110($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0018($sp)
	lwc1    $f8, 0x0108($t1)
	swc1    $f8, 0x010C($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x00F4($t0)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t0)
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B039C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0008
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x2000
	sw      $t9, 0x00FC($t0)
	li      $at, 0x44300000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0100($t1)
	li      $at, 0x43BE0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0104($t2)
	li      $at, 0x40400000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0108($t3)
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001318
	la.l    $a1, o_13001318
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001368
	la.l    $a1, o_13001368
	jal     object_a_802B0244
	li      $a0, 0x002D
	la.u    $a1, o_13001340
	la.l    $a1, o_13001340
	jal     object_a_802B0244
	li      $a0, 0x002F
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B04B4
object_a_802B04B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x0024($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E2F8
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x015C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 31$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 49$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 58$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 76$
	nop
	b       81$
	nop
31$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0168($t9)
	lwc1    $f6, 0x0024($sp)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f6
	nop
	bc1f    47$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
47$:
	b       81$
	nop
49$:
	jal     object_a_802B039C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	b       81$
	nop
58$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f4, 0x0168($t6)
	lwc1    $f18, 0x0024($sp)
	sub.s   $f10, $f4, $f8
	c.lt.s  $f18, $f10
	nop
	bc1f    74$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
74$:
	b       81$
	nop
76$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
	b       81$
	nop
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B0614
object_a_802B0614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A0604
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 57$
	nop
	jal     randf
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	li      $at, 0x40B00000
	sub.d   $f8, $f4, $f6
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x0114($t9)
	jal     randf
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	li      $at, 0x40B00000
	sub.d   $f8, $f4, $f6
	mtc1    $at, $f11
	mtc1    $0, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x011C($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x00F8($t3)
	jal     randf
	nop
	li      $at, 0x44800000
	mtc1    $at, $f4
	li      $at, 0x44C00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x00FC($t6)
57$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x00A4($t7)
	lwc1    $f4, 0x00E8($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    68$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
68$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337A28)
	lwc1    $f8, %lo(object_a_80337A28)($at)
	lwc1    $f6, 0x00E8($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    80$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
80$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0065
	bnez    $at, 89$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
89$:
	lui     $t1, %hi(obj_prevcount)
	lh      $t1, %lo(obj_prevcount)($t1)
	slti    $at, $t1, 0x00D5
	bnez    $at, 97$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
97$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	lw      $t4, 0x0114($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00D0($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	lw      $t8, 0x011C($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D8($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0xC0400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC1000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    131$
	nop
	li      $at, 0xC1000000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
131$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B8($t4)
	c.lt.s  $f16, $f10
	nop
	bc1f    149$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_a_80337A30)
	ldc1    $f6, %lo(object_a_80337A30)($at)
	lwc1    $f18, 0x00B8($t5)
	cvt.d.s $f4, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       154$
	swc1    $f10, 0x00B8($t5)
149$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t2)
154$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t0, math_sin
	la.l    $t0, math_sin
	lhu     $t8, 0x00CA($t7)
	lhu     $t3, 0x00F6($t7)
	sra     $t9, $t8, 4
	sra     $t4, $t3, 4
	lw      $t8, 0x00F8($t7)
	sll     $t5, $t4, 2
	sll     $t6, $t9, 2
	addu    $t1, $t6, $t0
	addu    $t2, $t5, $t0
	lwc1    $f4, 0x0000($t2)
	lwc1    $f18, 0x0000($t1)
	mtc1    $t8, $f8
	mul.s   $f6, $f18, $f4
	lwc1    $f18, 0x00A0($t7)
	cvt.s.w $f10, $f8
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00CA($t9)
	lhu     $t4, 0x00F6($t9)
	lw      $t2, 0x00F8($t9)
	sra     $t1, $t6, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_cos)($at)
	sra     $t5, $t4, 4
	sll     $t0, $t5, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	lwc1    $f6, %lo(math_sin)($at)
	mtc1    $t2, $f18
	mul.s   $f10, $f8, $f6
	lwc1    $f8, 0x00A8($t9)
	cvt.s.w $f16, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x00A8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00F4($t8)
	lw      $t6, 0x00FC($t8)
	addu    $t1, $t7, $t6
	sw      $t1, 0x00F4($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x00A4($t3)
	lwc1    $f10, 0x00B0($t3)
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x00A4($t3)
	b       212$
	nop
212$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0974
object_a_802B0974:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	li      $at, -0x2001
	lw      $t7, 0x00E0($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00E0($t6)
	lui     $t9, %hi(stage_index)
	lh      $t9, %lo(stage_index)($t9)
	li      $at, 0x0005
	beq     $t9, $at, 16$
	nop
	li      $at, 0x000A
	bne     $t9, $at, 19$
	nop
16$:
	li      $t0, 0x0001
	b       20$
	sw      $t0, 0x0024($sp)
19$:
	sw      $0, 0x0024($sp)
20$:
	lw      $t1, 0x0024($sp)
	beqz    $t1, 70$
	nop
	jal     randf
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    68$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130013A8
	la.l    $a2, o_130013A8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x009E
	sw      $v0, 0x002C($sp)
	jal     randf
	nop
	swc1    $f0, 0x0020($sp)
	lwc1    $f8, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f8
	mfc1    $a2, $f8
	mfc1    $a3, $f8
	jal     objlib_8029F3D0
	nop
	jal     rand
	nop
	lw      $t2, 0x002C($sp)
	sw      $v0, 0x00C8($t2)
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lw      $t3, 0x002C($sp)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x00B8($t3)
	jal     randf
	nop
	li      $at, 0x41700000
	mtc1    $at, $f18
	lw      $t4, 0x002C($sp)
	mul.s   $f4, $f0, $f18
	swc1    $f4, 0x00B0($t4)
68$:
	b       132$
	nop
70$:
	jal     randf
	nop
	lui     $at, %hi(object_a_80337A38)
	ldc1    $f8, %lo(object_a_80337A38)($at)
	cvt.d.s $f6, $f0
	c.lt.d  $f6, $f8
	nop
	bc1f    132$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130013C4
	la.l    $a2, o_130013C4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A2
	sw      $v0, 0x002C($sp)
	jal     randf
	nop
	li      $at, 0x40400000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0020($sp)
	lw      $a0, 0x002C($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     objlib_8029F3D0
	nop
	jal     rand
	nop
	lw      $t5, 0x002C($sp)
	sw      $v0, 0x00C8($t5)
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lw      $t7, 0x002C($sp)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t7)
	jal     randf
	nop
	li      $at, 0x41700000
	mtc1    $at, $f16
	lw      $t8, 0x002C($sp)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B0($t8)
	jal     rand
	nop
	lw      $t6, 0x002C($sp)
	sw      $v0, 0x00D0($t6)
	jal     rand
	nop
	lw      $t9, 0x002C($sp)
	sw      $v0, 0x00D8($t9)
	jal     rand
	nop
	lw      $t0, 0x002C($sp)
	sw      $v0, 0x00D4($t0)
132$:
	b       134$
	nop
134$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802B0B9C:
	andi    $a0, $a0, 0xFFFF
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slt     $at, $a1, $t8
	beqz    $at, 14$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       16$
	nop
14$:
	jr      $ra
	move    $v0, $0
16$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B0BEC
object_a_802B0BEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	sltiu   $at, $t8, 0x0005
	beqz    $at, 75$
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(object_a_80337A40)
	addu    $at, $at, $t8
	lw      $t8, %lo(object_a_80337A40)($at)
	jr      $t8
	nop
.globl L802B0C3C
L802B0C3C:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	andi    $t1, $t0, 0x0003
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t9)
	b       77$
	nop
.globl L802B0C5C
L802B0C5C:
	move    $a0, $0
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, 38$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
38$:
	b       77$
	nop
.globl L802B0C8C
L802B0C8C:
	li      $a0, 0x4000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, 50$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
50$:
	b       77$
	nop
.globl L802B0CBC
L802B0CBC:
	li      $a0, 0x8000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, 62$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
62$:
	b       77$
	nop
.globl L802B0CEC
L802B0CEC:
	li      $a0, 0xC000
	jal     object_a_802B0B9C
	li      $a1, 0x003C
	beqz    $v0, 73$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t4)
73$:
	b       77$
	nop
75$:
	b       77$
	nop
77$:
	jal     objlib_802A2644
	nop
	jal     object_map_load
	nop
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0D48
object_a_802B0D48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 34$
	nop
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x40A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t8)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	li      $at, 0x40A00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t9)
	jal     rand
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
34$:
	jal     objlib_802A2644
	nop
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B0DF0
object_a_802B0DF0:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x004C($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0048($sp)
	lw      $t8, 0x004C($sp)
	lh      $t9, 0x0040($t8)
	sw      $t9, 0x0040($sp)
	lw      $t0, 0x004C($sp)
	lw      $t1, 0x003C($t0)
	lh      $t2, 0x0008($t1)
	addiu   $t3, $t2, -0x0002
	sw      $t3, 0x003C($sp)
	lw      $a0, 0x004C($sp)
	li      $a1, 0x0000
	li      $a2, 0x42900000
	jal     objlib_8029F6E0
	li      $a3, 0x43340000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $s0, 0x014C($t4)
	beqz    $s0, 36$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 53$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 252$
	nop
	b       281$
	nop
36$:
	jal     objlib_8029F66C
	nop
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0048($sp)
	lw      $t5, 0x004C($sp)
	li      $at, 0x0001
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, 51$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
51$:
	b       281$
	nop
53$:
	lw      $t0, 0x004C($sp)
	lwc1    $f8, 0x015C($t0)
	lwc1    $f10, 0x019C($t0)
	c.lt.s  $f8, $f10
	nop
	bc1f    248$
	nop
	jal     objlib_8029F620
	nop
	lw      $t1, 0x004C($sp)
	li      $at, 0x0001
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, 241$
	nop
	lw      $t3, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $t3, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t4, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $t4, $f16
	li      $at, 0x40800000
	mtc1    $at, $f8
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0030($sp)
	lw      $t5, 0x0040($sp)
	lwc1    $f4, 0x0034($sp)
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    156$
	nop
	lw      $t6, 0x0040($sp)
	lwc1    $f10, 0x0034($sp)
	li      $at, 0x46800000
	mtc1    $t6, $f6
	mtc1    $at, $f18
	li      $t9, 0x0001
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	cfc1    $t8, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 134$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t9, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, 132$
	nop
	mfc1    $t9, $f6
	li      $at, 0x80000000
	b       138$
	or      $t9, $t9, $at
132$:
	b       138$
	li      $t9, -0x0001
134$:
	mfc1    $t9, $f6
	nop
	bltz    $t9, 132$
	nop
138$:
	andi    $t7, $t9, 0xFFFF
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x40800000
	mtc1    $at, $f10
	ctc1    $t8, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       239$
	swc1    $f8, 0x0048($sp)
156$:
	lw      $t2, 0x0040($sp)
	lwc1    $f18, 0x0030($sp)
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    235$
	nop
	lw      $t3, 0x003C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	mtc1    $t3, $f4
	lw      $t4, 0x0040($sp)
	li      $at, 0x40800000
	cvt.s.w $f6, $f4
	mtc1    $t4, $f4
	mtc1    $at, $f16
	li      $at, 0x46800000
	li      $t6, 0x0001
	div.s   $f10, $f6, $f8
	cvt.s.w $f6, $f4
	mtc1    $at, $f4
	add.s   $f18, $f10, $f16
	lwc1    $f10, 0x0030($sp)
	sub.s   $f8, $f6, $f18
	div.s   $f16, $f8, $f10
	mul.s   $f6, $f16, $f4
	cfc1    $t5, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f6
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 213$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f6, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 211$
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       217$
	or      $t6, $t6, $at
211$:
	b       217$
	li      $t6, -0x0001
213$:
	mfc1    $t6, $f18
	nop
	bltz    $t6, 211$
	nop
217$:
	andi    $t8, $t6, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t7, $t9, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40800000
	mtc1    $at, $f10
	ctc1    $t5, $31
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f6
	cvt.d.s $f4, $f16
	add.d   $f18, $f4, $f6
	cvt.s.d $f8, $f18
	b       239$
	swc1    $f8, 0x0048($sp)
235$:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0048($sp)
239$:
	b       246$
	nop
241$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
246$:
	b       250$
	nop
248$:
	jal     objlib_8029F66C
	nop
250$:
	b       281$
	nop
252$:
	jal     objlib_8029F66C
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0048($sp)
	sw      $0, 0x0044($sp)
258$:
	la.u    $t3, o_13001448
	la.l    $t3, o_13001448
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t3, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     objlib_8029EE24
	li      $a3, 0x00A8
	lw      $t4, 0x0044($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x000F
	bnez    $at, 258$
	sw      $t5, 0x0044($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0048($sp)
	b       281$
	nop
281$:
	jal     object_set_scale
	lwc1    $f12, 0x0048($sp)
	b       285$
	nop
285$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl object_a_802B1278
object_a_802B1278:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 153$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337A54)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337A54)($at)
	jr      $t7
	nop
.globl L802B12B0
L802B12B0:
	jal     objlib_802A04C0
	li      $a0, 0x00CF
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, 49$
	nop
	la.u    $t1, player_data
	la.l    $t1, player_data
	lw      $t2, 0x000C($t1)
	andi    $t3, $t2, 0x2000
	bnez    $t3, 49$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E27C
	lw      $a0, %lo(object)($a0)
	lui     $at, %hi(object_a_80337A68)
	ldc1    $f6, %lo(object_a_80337A68)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    49$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
49$:
	b       153$
	nop
.globl L802B1344
L802B1344:
	li.u    $a3, 0x3E4CCCCD
	li.l    $a3, 0x3E4CCCCD
	li      $a0, 0x0002
	li      $a1, 0x0003
	jal     objlib_802A3B40
	li      $a2, 0x3FC00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 72$
	nop
	li.u    $a0, 0x803EC081
	jal     object_playsound
	li.l    $a0, 0x803EC081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	jal     objlib_802A50FC
	li      $a0, 0x0001
72$:
	b       153$
	nop
.globl L802B13A0
L802B13A0:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, 124$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, 96$
	nop
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t5, 0x0214($t4)
	beq     $t5, $t2, 96$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	b       124$
	sw      $t8, 0x014C($t6)
96$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0168
	beqz    $at, 109$
	nop
	li.u    $a0, 0x8054F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8054F011
	b       114$
	nop
109$:
	li.u    $a0, 0x8055F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8055F011
114$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0154($t1)
	slti    $at, $t3, 0x0191
	bnez    $at, 124$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0004
	sw      $t4, 0x014C($t5)
124$:
	b       153$
	nop
.globl L802B1470
L802B1470:
	li.u    $a2, 0x3E4CCCCD
	li.l    $a2, 0x3E4CCCCD
	li      $a0, 0x0002
	li      $a1, 0x0003
	jal     objlib_802A3B40
	li      $a3, 0x3FC00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t7, 0x0154($t2)
	bne     $t7, $at, 141$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
141$:
	b       153$
	nop
.globl L802B14B4
L802B14B4:
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 151$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t9)
151$:
	b       153$
	nop
153$:
	b       155$
	nop
155$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B14F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x002C($sp)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x002C($sp)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f8, 0x00A8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f12, 0x0020($sp)
	lw      $a2, 0x0018($sp)
	addiu   $a3, $sp, 0x0024
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t4)
	swc1    $f0, 0x001C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x00A4($t5)
	jal     objlib_802A3634
	sub.s   $f12, $f16, $f18
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f0, $f4
	nop
	bc1f    53$
	nop
	b       57$
	li      $v0, 0x0001
	b       55$
	nop
53$:
	b       57$
	move    $v0, $0
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B15E8
object_a_802B15E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303A0
	la.l    $a1, object_a_803303A0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 67$
	nop
	la.u    $t7, player_data
	la.l    $t7, player_data
	lw      $t8, 0x0004($t7)
	li      $at, 0x80000000
	and     $t9, $t8, $at
	beqz    $t9, 67$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	sh      $v0, 0x001C($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lh      $a0, 0x001C($sp)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x4001
	bnez    $at, 67$
	nop
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x2000
	andi    $t4, $t3, 0xC000
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	sw      $t6, 0x00C8($t7)
	li      $at, 0x41000000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, 67$
	nop
	li      $at, 0x40800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	li.u    $a0, 0x40178001
	jal     object_levelsound
	li.l    $a0, 0x40178001
67$:
	jal     objlib_802A2644
	nop
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B1714:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0144($t9)
	beqz    $s0, 26$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 43$
	nop
	b       49$
	nop
26$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0198($t0)
	b       49$
	nop
31$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0198($t2)
	b       49$
	nop
37$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0005
	sw      $t3, 0x0198($t4)
	b       49$
	nop
43$:
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       49$
	nop
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B17F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303B0
	la.l    $a1, object_a_803303B0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A04C0
	li      $a0, 0x0082
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 57$
	nop
	jal     objlib_8029F66C
	nop
	jal     objlib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 25$
	nop
	jal     object_a_802B1714
	nop
25$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, 36$
	nop
	la.u    $a0, o_130014AC
	jal     objlib_8029F95C
	la.l    $a0, o_130014AC
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00F4($t2)
36$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	beqz    $t4, 55$
	sw      $t4, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $at, 0x0002
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, 55$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	jal     objlib_8029F620
	nop
	jal     objlib_8029F694
	nop
55$:
	b       115$
	nop
57$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 96$
	nop
	jal     objlib_802A05D4
	nop
	li      $a0, 0x0168
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 73$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
73$:
	jal     objlib_802A51AC
	nop
	beqz    $v0, 92$
	nop
	jal     objlib_802A37AC
	nop
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	li.u    $a0, 0x3041C081
	jal     object_playsound
	li.l    $a0, 0x3041C081
92$:
	jal     object_map_load
	nop
	b       115$
	nop
96$:
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F66C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	beqz    $t9, 115$
	sw      $t9, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	lw      $t0, 0x014C($t7)
	bnez    $t0, 115$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
115$:
	b       117$
	nop
117$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B19D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, 0x07018528
	la.l    $a1, 0x07018528
	jal     objlib_802A44F4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 48$
	nop
	jal     objlib_8029F66C
	nop
	jal     objlib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, 27$
	nop
	la.u    $a0, o_130014AC
	jal     objlib_8029F95C
	la.l    $a0, o_130014AC
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00F4($t0)
27$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	beqz    $t2, 46$
	sw      $t2, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li      $at, 0x0002
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, 46$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
	jal     objlib_8029F620
	nop
	jal     objlib_8029F694
	nop
46$:
	b       60$
	nop
48$:
	jal     objlib_802A05D4
	nop
	li      $a0, 0x0168
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 58$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
58$:
	jal     object_map_load
	nop
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B1AE0
object_a_802B1AE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 11$
	nop
	jal     object_a_802B17F4
	nop
	b       13$
	nop
11$:
	jal     object_a_802B19D8
	nop
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B1B2C
object_a_802B1B2C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303B0
	la.l    $a1, object_a_803303B0
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A04C0
	li      $a0, 0x0082
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 16$
	nop
	jal     object_a_802B1714
	nop
16$:
	jal     objlib_802A51AC
	nop
	beqz    $v0, 27$
	nop
	li      $at, 0x42380000
	mtc1    $at, $f12
	jal     objlib_802A4440
	li      $a1, 0x0001
	li.u    $a0, 0x3041C081
	jal     object_makesound
	li.l    $a0, 0x3041C081
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_mario_copyparentpos
s_mario_copyparentpos:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, 33$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x001C($sp)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t8, 0x001C($sp)
	bne     $t8, $t9, 33$
	nop
	lw      $t0, 0x006C($t8)
	beqz    $t0, 33$
	nop
	lui     $t1, %hi(s_camera)
	lw      $t1, %lo(s_camera)($t1)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     objlib_8029DE80
	lw      $a2, 0x0034($t1)
	lw      $t2, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     objlib_8029DCD4
	lw      $a1, 0x006C($t2)
	lw      $t3, 0x001C($sp)
	jal     objlib_8029F188
	lw      $a0, 0x006C($t3)
33$:
	b       37$
	move    $v0, $0
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl object_a_802B1C54
object_a_802B1C54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x43480000
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
	lw      $t1, 0x00C8($t0)
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lw      $s0, 0x0088($t3)
	beqz    $s0, 39$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 43$
	nop
	b       67$
	nop
39$:
	b       67$
	nop
41$:
	b       67$
	nop
43$:
	li.u    $a0, 0x505D4081
	jal     object_playsound
	li.l    $a0, 0x505D4081
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t5, 0x0134($t4)
	ori     $t6, $t5, 0x0004
	sw      $t6, 0x0134($t4)
	li      $at, 0xC2340000
	mtc1    $at, $f10
	la.u    $t7, player_data
	la.l    $t7, player_data
	swc1    $f10, 0x0054($t7)
	li      $at, 0x42BE0000
	mtc1    $at, $f16
	la.u    $t8, player_data
	la.l    $t8, player_data
	swc1    $f16, 0x004C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	sw      $0, 0x0088($t1)
	b       67$
	nop
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B1D7C
object_a_802B1D7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     objlib_8029FE6C
	nop
10$:
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(object_a_803303C0+2*0)
	li      $at, -0x0001
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803303C0+2*0)($t9)
	bne     $t9, $at, 24$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
	b       54$
	nop
24$:
	lw      $t4, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_803303C0+2*0)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_a_803303C0+2*0)($t6)
	lw      $t3, 0x0154($t2)
	slt     $at, $t3, $t6
	beqz    $at, 49$
	nop
	lw      $t7, 0x001C($sp)
	lui     $t9, %hi(object_a_803303C0+2*1)
	li      $a0, 0x0002
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_803303C0+2*1)($t9)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f6, $f6
	mfc1    $a1, $f6
	jal     objlib_8029F514
	nop
	b       54$
	nop
49$:
	lw      $t0, 0x001C($sp)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x001C($sp)
	b       10$
	nop
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B1E6C
object_a_802B1E6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    16$
	nop
	jal     objlib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x0160($t6)
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0097
	bnez    $at, 55$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x012E
	li      $at, 0x43180000
	lw      $t0, 0x0154($t9)
	mtc1    $at, $f10
	subu    $t2, $t1, $t0
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337A70)
	ldc1    $f6, %lo(object_a_80337A70)($at)
	lwc1    $f18, 0x00F4($t3)
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    53$
	nop
	lui     $at, %hi(object_a_80337A78)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_a_80337A78)($at)
	swc1    $f8, 0x00F4($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
53$:
	b       61$
	nop
55$:
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t7)
61$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $0
	jal     objlib_8029F514
	lw      $a1, 0x00F4($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F4($t1)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44800000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t0)
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x001A($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a2, 0x001A($sp)
	lw      $a0, 0x00C8($t3)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00C8($t4)
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B1FF4
object_a_802B1FF4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 16$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x0088($t0)
16$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 29$
	nop
	li      $a0, 0x0001
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0014
	sh      $t3, 0x0076($t4)
29$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 37$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B20A0
object_a_802B20A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     objlib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t7)
	c.lt.s  $f20, $f4
	nop
	bc1f    34$
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    34$
	nop
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       38$
	sw      $t8, 0x014C($t9)
34$:
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F6BC
	nop
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B2154:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_803303E8
	jal     objlib_802A3E30
	la.l    $a0, object_a_803303E8
	jal     objlib_802A2348
	li      $a0, -0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0078
	beqz    $t8, 21$
	nop
	li      $at, 0xC1700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       26$
	swc1    $f4, 0x00DC($t9)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00DC($t0)
26$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40400000
	mtc1    $at, $f10
	lwc1    $f8, 0x00B8($t1)
	c.lt.s  $f10, $f8
	nop
	bc1f    38$
	nop
	li.u    $a0, 0x60064001
	jal     object_levelsound
	li.l    $a0, 0x60064001
38$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	beqz    $t3, 50$
	nop
	lw      $t4, 0x00EC($t2)
	andi    $t5, $t4, 0x0078
	beqz    $t5, 50$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
50$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, 67$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t4)
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2278
object_a_802B2278:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 36$
	nop
	b       40$
	nop
23$:
	jal     object_a_802B2154
	nop
	b       40$
	nop
27$:
	move    $a0, $0
	jal     objlib_802A01D8
	move    $a1, $0
	b       40$
	nop
32$:
	jal     objlib_802A0474
	nop
	b       40$
	nop
36$:
	jal     objlib_802A0474
	nop
	b       40$
	nop
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       45$
	nop
45$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B2340
object_a_802B2340:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object_8036125C)
	lh      $t6, %lo(object_8036125C)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 34$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $at, %hi(object_a_80337A7C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, %lo(object_a_80337A7C)($at)
	swc1    $f10, 0x00A0($t9)
	lui     $at, %hi(object_a_80337A80)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_a_80337A80)($at)
	swc1    $f16, 0x00A8($t0)
	lui     $at, %hi(object_a_80337A84)
	lwc1    $f12, %lo(object_a_80337A84)($at)
	lui     $at, %hi(object_a_80337A88)
	li.u    $a2, 0x45B3B000
	li.l    $a2, 0x45B3B000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_a_80337A88)($at)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B23E0
object_a_802B23E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337A8C)
	jal     object_set_scale
	lwc1    $f12, %lo(object_a_80337A8C)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 28$
	nop
	jal     objlib_802A3754
	nop
	beqz    $v0, 26$
	nop
	jal     objlib_802A37AC
	nop
	li      $a0, 0x0014
	li      $a1, 0x0038
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	move    $a3, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
26$:
	b       37$
	nop
28$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0008
	bnez    $at, 37$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
37$:
	jal     object_map_load
	nop
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2494
object_a_802B2494:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     objlib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	move    $a0, $t7
	jal     objlib_8029F0C8
	lw      $a1, 0x0068($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x0168($t9)
	sub.s   $f18, $f10, $f16
	c.le.s  $f4, $f18
	swc1    $f18, 0x0018($sp)
	bc1f    43$
	nop
	lwc1    $f6, 0x0018($sp)
	li      $at, 0x40240000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	li      $at, 0x3FF00000
	div.d   $f16, $f8, $f10
	mtc1    $at, $f19
	mtc1    $0, $f18
	nop
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	b       58$
	swc1    $f6, 0x001C($sp)
43$:
	lwc1    $f8, 0x0018($sp)
	neg.s   $f10, $f8
	swc1    $f10, 0x0018($sp)
	lwc1    $f16, 0x0018($sp)
	lui     $at, %hi(object_a_80337A90)
	ldc1    $f4, %lo(object_a_80337A90)($at)
	cvt.d.s $f18, $f16
	li      $at, 0x3FF00000
	div.d   $f6, $f18, $f4
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	sub.d   $f10, $f8, $f6
	cvt.s.d $f16, $f10
	swc1    $f16, 0x001C($sp)
58$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x3F800000
	lw      $a2, 0x001C($sp)
	jal     objlib_8029F3D0
	li      $a3, 0x3F800000
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B25AC
object_a_802B25AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A04C0
	li      $a0, 0x00B5
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 35$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001634
	la.l    $a2, o_13001634
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00B6
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002A48
	la.l    $a2, o_13002A48
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00B7
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
35$:
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0214($t0)
	bne     $t1, $t2, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       54$
	sw      $t3, 0x0110($t4)
47$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0110($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0168($t6)
	swc1    $f4, 0x00A4($t6)
54$:
	jal     physics_802550B0
	nop
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B26A4
object_a_802B26A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 47$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x00F8($t8)
	lw      $t0, 0x00F8($t8)
	slti    $t9, $s0, 0x0000
	move    $s0, $t9
	addiu   $t1, $t0, -0x0001
	beqz    $s0, 22$
	sw      $t1, 0x00F8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
22$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	lw      $t7, 0x00F4($t5)
	slt     $at, $t7, $t6
	beqz    $at, 45$
	nop
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f4
	li      $at, 0x41700000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t8, $t1, 0x0001
	sw      $t8, 0x0150($t0)
45$:
	b       70$
	nop
47$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	andi    $t2, $t4, 0x0002
	beqz    $t2, 70$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0150($t5)
	jal     randf
	nop
	li      $at, 0x42700000
	mtc1    $at, $f16
	li      $at, 0x41F00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F8($t9)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B27D8
object_a_802B27D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0279
	beqz    $t8, 13$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B2824:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A04C0
	li      $a0, 0x0081
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $a0, %hi(object)
	la.u    $a1, object_a_803303F8
	la.l    $a1, object_a_803303F8
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	la.u    $a0, object_a_80330408
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330408
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B288C
object_a_802B288C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 43$
	nop
	b       51$
	nop
19$:
	jal     object_a_802B2824
	nop
	b       51$
	nop
23$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A04C0
	li      $a0, 0x0082
	li      $a0, -0x0001
	jal     objlib_802A01D8
	move    $a1, $0
	b       51$
	nop
35$:
	li      $at, 0x42200000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     objlib_802A0380
	li      $a2, 0x0001
	b       51$
	nop
43$:
	jal     objlib_802A0474
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	b       51$
	nop
51$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00400000
	lw      $t0, 0x0134($t9)
	and     $t1, $t0, $at
	beqz    $t1, 65$
	nop
	li.u    $a0, 0x3041C081
	jal     object_makesound
	li.l    $a0, 0x3041C081
	li      $at, 0x42380000
	mtc1    $at, $f12
	jal     objlib_802A4440
	li      $a1, 0x0001
65$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       70$
	nop
70$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B29B8
object_a_802B29B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330410
	la.l    $a1, object_a_80330410
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 126$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337A98)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337A98)($at)
	jr      $t7
	nop
.globl L802B2A04
L802B2A04:
	jal     objlib_802A05B4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x0088($t9)
	beqz    $t0, 46$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
	li      $at, 0x42700000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t4)
	jal     Na_Solution
	nop
	b       51$
	nop
46$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $a0, $t5
	jal     objlib_8029F0E0
	lw      $a1, 0x0068($t5)
51$:
	b       126$
	nop
.globl L802B2A8C
L802B2A8C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00D0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D8($t7)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, -0x004E
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 78$
	nop
	li.u    $a0, 0x305E0081
	jal     object_playsound
	li.l    $a0, 0x305E0081
78$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t1, $t3, 0x0052
	beqz    $t1, 89$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
89$:
	b       126$
	nop
.globl L802B2B24
L802B2B24:
	jal     objlib_802A05D4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 109$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
109$:
	b       126$
	nop
.globl L802B2B74
L802B2B74:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0154($t0)
	slti    $at, $t2, 0x0065
	bnez    $at, 122$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t5, $t1, 0x0001
	sw      $t5, 0x014C($t3)
122$:
	b       126$
	nop
.globl L802B2BA8
L802B2BA8:
	b       126$
	nop
126$:
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B2BC8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0030($sp)
	li      $t7, 0x00010000
	div     $0, $t7, $t6
	mflo    $t8
	sh      $t8, 0x002A($sp)
	bnez    $t6, 14$
	nop
	break   7
14$:
	li      $at, -0x0001
	bne     $t6, $at, 20$
	li      $at, 0x80000000
	bne     $t7, $at, 20$
	nop
	break   6
20$:
	lw      $t9, 0x0030($sp)
	sw      $0, 0x002C($sp)
	blez    $t9, 69$
	nop
24$:
	lw      $t0, 0x002C($sp)
	lh      $t1, 0x002A($sp)
	lui     $t3, %hi(object_a_80361280)
	lh      $t3, %lo(object_a_80361280)($t3)
	multu   $t0, $t1
	lw      $t8, 0x0034($sp)
	lui     $at, %hi(math_sin)
	addiu   $t1, $t0, 0x0001
	mtc1    $t8, $f6
	move    $a0, $0
	sw      $0, 0x0014($sp)
	cvt.s.w $f8, $f6
	mflo    $t2
	addu    $t4, $t3, $t2
	andi    $t5, $t4, 0xFFFF
	sra     $t7, $t5, 4
	sll     $t6, $t7, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t6
	mul.s   $f10, $f4, $f8
	lwc1    $f18, %lo(math_cos)($at)
	lw      $t3, 0x0038($sp)
	lui     $t4, %hi(object)
	mul.s   $f6, $f18, $f8
	lw      $t4, %lo(object)($t4)
	multu   $t1, $t3
	la.u    $t5, o_13002AF0
	la.l    $t5, o_13002AF0
	sw      $t5, 0x0018($sp)
	trunc.w.s $f16, $f10
	sw      $t4, 0x0010($sp)
	trunc.w.s $f4, $f6
	mfc1    $a1, $f16
	mflo    $a2
	mfc1    $a3, $f4
	jal     obj_make_off
	nop
	lw      $t7, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $t9
	bnez    $at, 24$
	sw      $t8, 0x002C($sp)
69$:
	lw      $t1, 0x003C($sp)
	lui     $t0, %hi(object_a_80361280)
	lh      $t0, %lo(object_a_80361280)($t0)
	sll     $t3, $t1, 8
	lui     $at, %hi(object_a_80361280)
	addu    $t6, $t0, $t3
	sh      $t6, %lo(object_a_80361280)($at)
	b       78$
	nop
78$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B2D10
object_a_802B2D10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D4($t9)
	addiu   $t1, $t0, 0x0200
	sw      $t1, 0x00D4($t9)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 33$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	lw      $t4, 0x0068($t3)
	sw      $t2, 0x0088($t4)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2DAC
object_a_802B2DAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41D00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    22$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x00DC($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00DC($t7)
22$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	andi    $t0, $t9, 0xFFFF
	beqz    $t0, 38$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	andi    $t3, $t2, 0xF800
	sw      $t3, 0x00D8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	addiu   $t6, $t5, 0x0800
	sw      $t6, 0x00D8($t4)
38$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 54$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00AC($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B4($t2)
54$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00D4($t3)
	addiu   $t5, $t1, 0x0800
	sw      $t5, 0x00D4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0154($t6)
	slti    $at, $t4, 0x005B
	beqz    $at, 69$
	nop
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 92$
	nop
69$:
	jal     objlib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 92$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	lw      $t2, 0x0068($t0)
	sw      $t9, 0x0134($t2)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B2F34
object_a_802B2F34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029F120
	lw      $a1, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 60$
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x0068($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t6, 0x00C8($t5)
	sh      $t6, 0x0026($sp)
	li      $at, 0x40400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0020($sp)
	lhu     $t7, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0020($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00AC($t0)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0020($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B4($t4)
	li      $at, 0x42200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t5)
60$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D8($t9)
	addiu   $t1, $t0, 0x0200
	sw      $t1, 0x00D8($t9)
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B3064
object_a_802B3064:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029F120
	lw      $a1, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0088($t9)
	beqz    $t0, 25$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
25$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	addiu   $t5, $t4, 0x0200
	sw      $t5, 0x00D8($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00D4($t6)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B3108
object_a_802B3108:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330420
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330420
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B3134:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0008($t8)
	lwc1    $f16, 0x0008($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0030($sp)
	swc1    $f16, 0x00B0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x0034($sp)
	swc1    $f18, 0x00E4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0xC0000000
	mtc1    $at, $f4
	lwc1    $f8, 0x00E4($t3)
	lwc1    $f10, 0x0030($sp)
	li      $at, 0x3F800000
	div.s   $f6, $f4, $f8
	mtc1    $at, $f18
	mul.s   $f16, $f6, $f10
	sub.s   $f4, $f16, $f18
	trunc.w.s $f8, $f4
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x001C($sp)
	lui     $t7, %hi(object)
	mtc1    $t6, $f10
	lw      $t7, %lo(object)($t7)
	cvt.s.w $f16, $f10
	div.s   $f18, $f6, $f16
	swc1    $f18, 0x00B8($t7)
	b       67$
	lw      $v0, 0x0018($sp)
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B3250:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B329C
object_a_802B329C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	mtc1    $0, $f4
	addiu   $t6, $sp, 0x0028
	addiu   $t7, $sp, 0x0028
	swc1    $f4, 0x0008($t6)
	lwc1    $f20, 0x0008($t7)
	addiu   $t8, $sp, 0x0028
	swc1    $f20, 0x0004($t7)
	swc1    $f20, 0x0000($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	bnez    $t0, 52$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 34$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0400
	sw      $t3, 0x0118($t4)
	li.u    $a0, 0x8057FF91
	jal     object_playsound
	li.l    $a0, 0x8057FF91
34$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0047
	bnez    $at, 45$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
45$:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	b       183$
	nop
52$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 169$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, 80$
	nop
	li.u    $a0, 0x30730081
	jal     object_playsound
	li.l    $a0, 0x30730081
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0028
	li      $a2, 0x42A00000
	li      $a3, 0xC0000000
	jal     object_a_802B3134
	addiu   $a1, $a1, 0x00A0
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0108($t4)
80$:
	jal     objlib_802A2644
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	bnez    $t6, 120$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t8)
	lwc1    $f8, 0x0168($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    118$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0168($t9)
	swc1    $f10, 0x00A4($t9)
	li      $at, 0x42700000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
	li.u    $a0, 0x30740081
	jal     object_playsound
	li.l    $a0, 0x30740081
118$:
	b       162$
	nop
120$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    162$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t4)
	lwc1    $f8, 0x00A4($t4)
	add.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    162$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0168($t5)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x00A4($t5)
	jal     object_a_802B3250
	nop
	li      $t6, 0x0001
	lui     $at, %hi(camera_8033CBC8)
	sw      $t6, %lo(camera_8033CBC8)($at)
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	li.u    $a0, 0x30740081
	jal     object_playsound
	li.l    $a0, 0x30740081
162$:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	b       183$
	nop
169$:
	jal     objlib_802A05D4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0134($t2)
	andi    $t1, $t3, 0x8000
	beqz    $t1, 183$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
183$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0118($t5)
	slti    $at, $t6, 0x0401
	bnez    $at, 194$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x0118($t9)
	addiu   $t8, $t7, -0x0100
	sw      $t8, 0x0118($t9)
194$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x00D4($t0)
	lw      $t3, 0x0118($t0)
	addu    $t1, $t2, $t3
	sw      $t1, 0x00D4($t0)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	li      $at, 0x42DC0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00DC($t4)
	b       212$
	nop
212$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802B3600
object_a_802B3600:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0118($t6)
	slti    $at, $t7, 0x0401
	bnez    $at, 17$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0118($t8)
	addiu   $t0, $t9, -0x0100
	sw      $t0, 0x0118($t8)
17$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	lw      $t3, 0x0118($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00D4($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, -0x4000
	sw      $t5, 0x00D8($t6)
	li      $at, 0x43250000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	bnez    $t0, 87$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t2, 0x0154($t8)
	bnez    $t2, 49$
	nop
	li      $at, 0x428C0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
49$:
	li      $a0, 0x0003
	li      $a1, 0x00C8
	li      $a2, 0x0050
	jal     object_a_802B2BC8
	li      $a3, -0x003C
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t1, 0x00EC($t4)
	andi    $t5, $t1, 0x0002
	beqz    $t5, 76$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t9, $t7, 0x0001
	b       85$
	sw      $t9, 0x014C($t6)
76$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t2, $t8, 0x0001
	beqz    $t2, 85$
	nop
	li.u    $a0, 0x38378081
	jal     object_playsound
	li.l    $a0, 0x38378081
85$:
	b       104$
	nop
87$:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_8033042C
	la.l    $a1, object_a_8033042C
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0134($t3)
	andi    $t1, $t4, 0x8000
	beqz    $t1, 104$
	nop
	lui     $a0, %hi(object)
	jal     obj_destroy
	lw      $a0, %lo(object)($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0134($t5)
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B37B8
object_a_802B37B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	mtc1    $at, $f11
	mul.s   $f6, $f20, $f4
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	jal     object_set_scale
	cvt.s.d $f12, $f16
	b       17$
	nop
17$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B3810
object_a_802B3810:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00F8($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B3830
object_a_802B3830:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	sw      $t8, 0x00C8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00EC($t1)
	jal     objlib_802A184C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B38B8
object_a_802B38B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x001E($sp)
	lh      $t7, 0x001E($sp)
	slti    $at, $t7, 0x2000
	beqz    $at, 31$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	lui     $at, %hi(object_a_80337AAC)
	lwc1    $f8, %lo(object_a_80337AAC)($at)
	c.lt.s  $f6, $f8
	nop
	bc1f    31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B394C
object_a_802B394C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0028
	beqz    $at, 14$
	nop
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       105$
	swc1    $f4, 0x00B8($t8)
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0032
	beqz    $at, 44$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bgez    $t2, 28$
	andi    $t3, $t2, 0x0001
	beqz    $t3, 28$
	nop
	addiu   $t3, $t3, -0x0002
28$:
	beqz    $t3, 36$
	nop
	li      $at, 0x40400000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       42$
	swc1    $f6, 0x00B8($t4)
36$:
	li      $at, 0xC0400000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t5)
42$:
	b       105$
	nop
44$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0047
	bnez    $at, 52$
	nop
	jal     objlib_802A2320
	nop
52$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130017F4
	la.l    $a2, o_130017F4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0096
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f18, $f16
	nop
	bc1f    78$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0100
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t0)
78$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0032
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 89$
	nop
	li.u    $a0, 0x501A5081
	jal     object_playsound
	li.l    $a0, 0x501A5081
	jal     objlib_802A50FC
	li      $a0, 0x0001
89$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0097
	beqz    $at, 99$
	nop
	lw      $t5, 0x00EC($t3)
	andi    $t6, $t5, 0x0200
	beqz    $t6, 105$
	nop
99$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jal     objlib_802A37AC
	nop
105$:
	b       107$
	nop
107$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3B08
object_a_802B3B08:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B3B24
object_a_802B3B24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 15$
	nop
	li      $at, 0xC1F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     objlib_802A05B4
	nop
15$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D0($t9)
	addiu   $t1, $t0, 0x1000
	sw      $t1, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D8($t2)
	addiu   $t4, $t3, 0x1000
	sw      $t4, 0x00D8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	lwc1    $f6, 0x00A4($t5)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x005B
	bnez    $at, 41$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3BE0
object_a_802B3BE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033043C
	jal     objlib_802A3E30
	la.l    $a0, object_a_8033043C
	jal     objlib_802A54D8
	nop
	beqz    $v0, 13$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3C2C
object_a_802B3C2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	jal     objlib_802A05D4
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lw      $t8, 0x001C($sp)
	li      $at, 0x0013
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, 21$
	nop
	lw      $t1, 0x001C($sp)
	li      $t0, -0x0001
	b       38$
	sw      $t0, 0x009C($t1)
21$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 35$
	nop
	lw      $t2, 0x001C($sp)
	sw      $0, 0x009C($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       38$
	sw      $t3, 0x014C($t4)
35$:
	lw      $t6, 0x001C($sp)
	li      $t5, -0x0001
	sw      $t5, 0x009C($t6)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B3CDC
object_a_802B3CDC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, 9$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
9$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B3D10
object_a_802B3D10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0013
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 17$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x0001
	lw      $t1, 0x0068($t0)
	sw      $t9, 0x009C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
17$:
	jal     objlib_802A05B4
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3D74
object_a_802B3D74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330450
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330450
	li      $at, 0x42B40000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0138($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, 23$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	lw      $t2, 0x0068($t1)
	sw      $t0, 0x009C($t2)
23$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B3DF4
object_a_802B3DF4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00CA($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0024($sp)
	lw      $t2, 0x0034($sp)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00CA($t2)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0020($sp)
	la.u    $a0, 0x0605784C
	jal     segment_to_virtual
	la.l    $a0, 0x0605784C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0034($sp)
	li      $at, 0x0006
	lw      $t7, 0x0178($t6)
	bne     $t7, $at, 157$
	nop
	lw      $t8, 0x0034($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lh      $t9, 0x0040($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t1, $f4
	nop
	sw      $t1, 0x0030($sp)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	lw      $t3, 0x003C($t2)
	lh      $t4, 0x0008($t3)
	bne     $t4, $t5, 50$
	nop
	sw      $0, 0x0030($sp)
50$:
	lw      $t6, 0x0030($sp)
	slti    $at, $t6, 0x002E
	bnez    $at, 157$
	nop
	slti    $at, $t6, 0x0055
	beqz    $at, 157$
	nop
	li.u    $a0, 0x60000001
	jal     object_levelsound
	li.l    $a0, 0x60000001
	lw      $t8, 0x0030($sp)
	lw      $t7, 0x001C($sp)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t0, $t9, 1
	addu    $t1, $t7, $t0
	lh      $t2, 0x0000($t1)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	lw      $t3, 0x001C($sp)
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	sll     $t6, $t5, 1
	addu    $t8, $t3, $t6
	lh      $t9, 0x0004($t8)
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0024($sp)
	mul.s   $f6, $f18, $f4
	lw      $t7, 0x0034($sp)
	lui     $t0, %hi(object)
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x00A0($t7)
	lw      $t0, %lo(object)($t0)
	add.s   $f18, $f6, $f16
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x00A0($t0)
	lw      $t2, 0x0030($sp)
	lw      $t1, 0x001C($sp)
	lw      $t8, 0x0034($sp)
	sll     $t4, $t2, 2
	addu    $t4, $t4, $t2
	sll     $t5, $t4, 1
	addu    $t3, $t1, $t5
	lh      $t6, 0x0002($t3)
	lwc1    $f16, 0x00A4($t8)
	lui     $t9, %hi(object)
	mtc1    $t6, $f10
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f6, $f10
	add.s   $f4, $f6, $f16
	swc1    $f4, 0x00A4($t9)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x0020($sp)
	mul.s   $f10, $f18, $f8
	lw      $t7, 0x0034($sp)
	lui     $t0, %hi(object)
	mul.s   $f4, $f6, $f16
	lwc1    $f8, 0x00A8($t7)
	lw      $t0, %lo(object)($t0)
	sub.s   $f18, $f10, $f4
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x00A8($t0)
	lw      $t4, 0x0030($sp)
	lw      $t2, 0x001C($sp)
	lui     $t9, %hi(object)
	sll     $t1, $t4, 2
	addu    $t1, $t1, $t4
	sll     $t5, $t1, 1
	addu    $t3, $t2, $t5
	lh      $t6, 0x0008($t3)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t6, 0x0C00
	sw      $t8, 0x00C4($t9)
	lw      $t0, 0x0030($sp)
	lw      $t7, 0x001C($sp)
	lw      $t3, 0x0034($sp)
	sll     $t4, $t0, 2
	addu    $t4, $t4, $t0
	sll     $t1, $t4, 1
	addu    $t2, $t7, $t1
	lh      $t5, 0x0006($t2)
	lh      $t6, 0x00CA($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addu    $t8, $t6, $t5
	sw      $t8, 0x00C8($t9)
	lw      $t0, 0x0030($sp)
	andi    $t4, $t0, 0x0001
	bnez    $t4, 157$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A74
	la.l    $a2, o_13001A74
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
157$:
	b       159$
	nop
159$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802B4080
object_a_802B4080:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	move    $a0, $t6
	jal     objlib_8029F0E0
	lw      $a1, 0x0068($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x014C($t8)
	bne     $t9, $at, 31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000B
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, 25$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       29$
	sw      $0, 0x0130($t3)
25$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x00800000
	sw      $t4, 0x0130($t5)
29$:
	b       48$
	nop
31$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0008
	sw      $t6, 0x0130($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x017C($t9)
	slti    $at, $t0, 0x0064
	beqz    $at, 46$
	nop
	jal     objlib_802A05B4
	nop
	b       48$
	nop
46$:
	jal     objlib_802A05D4
	nop
48$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x0124($t2)
	beqz    $t3, 56$
	nop
	jal     objlib_802A05B4
	nop
56$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4184:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 22$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130011D0
	la.l    $a2, o_130011D0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0068
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x001C($sp)
	lwc1    $f4, 0x00E8($t8)
	swc1    $f4, 0x00A4($t9)
	b       26$
	li      $v0, 0x0001
22$:
	b       26$
	move    $v0, $0
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B41FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 29$
	nop
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0000($t9)
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	slti    $at, $t3, 0x0004
	beqz    $at, 29$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A1930
	li      $a1, 0x0008
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42700000
	li.u    $a0, 0x50030081
	jal     object_playsound
	li.l    $a0, 0x50030081
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x000F
	jal     objlib_802A0008
	li      $a0, 0x0015
	beqz    $v0, 14$
	nop
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
14$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 22$
	nop
	b       26$
	li      $v0, 0x0001
	b       24$
	nop
22$:
	b       26$
	move    $v0, $0
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     objlib_8029F4B4
	li      $a0, 0x000D
	jal     objlib_8029FF04
	nop
	beqz    $v0, 18$
	nop
	b       22$
	li      $v0, 0x0001
	b       20$
	nop
18$:
	b       22$
	move    $v0, $0
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B4368:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x000E
	jal     objlib_802A0008
	li      $a0, 0x0014
	beqz    $v0, 13$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
13$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 21$
	nop
	b       25$
	li      $v0, 0x0001
	b       23$
	nop
21$:
	b       25$
	move    $v0, $0
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B43DC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	bnez    $t7, 10$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	b       35$
	sw      $t8, 0x014C($t9)
10$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0088($t0)
	bne     $t1, $at, 21$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0006
	b       35$
	sw      $t2, 0x014C($t3)
21$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0144($t4)
	bne     $t5, $at, 32$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	b       35$
	sw      $t6, 0x014C($t7)
32$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
35$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B4478
object_a_802B4478:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     objlib_8029F4B4
	li      $a0, 0x000C
	jal     object_a_802B43DC
	nop
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B44BC
object_a_802B44BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 18$
	nop
	jal     object_a_802B4288
	nop
	beqz    $v0, 16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
16$:
	b       50$
	nop
18$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, 35$
	nop
	jal     object_a_802B4300
	nop
	beqz    $v0, 33$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
33$:
	b       50$
	nop
35$:
	jal     object_a_802B4368
	nop
	beqz    $v0, 50$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0088($t6)
	bne     $t7, $at, 48$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0088($t9)
48$:
	jal     object_a_802B43DC
	nop
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B459C:
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t7, 0x0052($t6)
	beqz    $t7, 18$
	nop
	la.u    $t8, db_work
	la.l    $t8, db_work
	lh      $t9, 0x0054($t8)
	lui     $t1, %hi(object_a_8033045C)
	lui     $t2, %hi(object)
	andi    $t0, $t9, 0x000F
	addu    $t1, $t1, $t0
	lb      $t1, %lo(object_a_8033045C)($t1)
	lw      $t2, %lo(object)($t2)
	sw      $t1, 0x014C($t2)
	la.u    $t3, db_work
	la.l    $t3, db_work
	sh      $0, 0x0052($t3)
18$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B45F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0110($t6)
	bnez    $t7, 46$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 36$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AB0)
	lwc1    $f6, %lo(object_a_80337AB0)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    30$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000F
	b       34$
	sw      $t2, 0x014C($t3)
30$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0011
	sw      $t4, 0x014C($t5)
34$:
	b       40$
	nop
36$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000E
	sw      $t6, 0x014C($t7)
40$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0110($t8)
	addiu   $t0, $t9, 0x0001
	b       76$
	sh      $t0, 0x0110($t8)
46$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0110($t1)
	lui     $t2, %hi(demop)
	lw      $t2, %lo(demop)($t2)
	bnez    $t2, 72$
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(object_a_80337AB8)
	ldc1    $f16, %lo(object_a_80337AB8)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    66$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	b       70$
	sw      $t3, 0x014C($t4)
66$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x000E
	sw      $t5, 0x014C($t6)
70$:
	b       76$
	nop
72$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x000E
	sw      $t7, 0x014C($t9)
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B473C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0110($t6)
	bnez    $t7, 89$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 79$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AC0)
	lwc1    $f6, %lo(object_a_80337AC0)($at)
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    45$
	nop
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    39$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0010
	b       43$
	sw      $t2, 0x014C($t3)
39$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0009
	sw      $t4, 0x014C($t5)
43$:
	b       77$
	nop
45$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0007
	sw      $t6, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f4, 0x00FC($t8)
	c.lt.s  $f18, $f4
	nop
	bc1f    77$
	nop
	lui     $at, %hi(object_a_80337AC4)
	lwc1    $f6, %lo(object_a_80337AC4)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    77$
	nop
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    77$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000D
	sw      $t9, 0x014C($t0)
77$:
	b       83$
	nop
79$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000E
	sw      $t1, 0x014C($t2)
83$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0110($t3)
	addiu   $t5, $t4, 0x0001
	b       96$
	sh      $t5, 0x0110($t3)
89$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0110($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x000E
	sw      $t7, 0x014C($t8)
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B48D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	swc1    $f0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 72$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    52$
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(object_a_80337AC8)
	ldc1    $f16, %lo(object_a_80337AC8)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    33$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0009
	b       50$
	sw      $t0, 0x014C($t1)
33$:
	lwc1    $f18, 0x001C($sp)
	lui     $at, %hi(object_a_80337AD0)
	ldc1    $f6, %lo(object_a_80337AD0)($at)
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    46$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0008
	b       50$
	sw      $t2, 0x014C($t3)
46$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x000F
	sw      $t4, 0x014C($t5)
50$:
	b       70$
	nop
52$:
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    66$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	b       70$
	sw      $t6, 0x014C($t7)
66$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sw      $t8, 0x014C($t9)
70$:
	b       76$
	nop
72$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x000E
	sw      $t0, 0x014C($t1)
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B4A1C:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000D
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B4A3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $s0, 0x0110($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	b       39$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0106($t7)
	bnez    $t8, 22$
	nop
	jal     object_a_802B48D4
	nop
	b       24$
	nop
22$:
	jal     object_a_802B4A1C
	nop
24$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sh      $t9, 0x0110($t0)
	b       39$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0110($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000E
	sw      $t2, 0x014C($t3)
	b       39$
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

object_a_802B4AF4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    42$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t6)
	lwc1    $f8, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    42$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	lui     $t8, %hi(object)
	swc1    $f4, 0x00A8($t7)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A8($t8)
	swc1    $f6, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t9)
	add.s   $f8, $f10, $f16
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t1)
42$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B4BAC
object_a_802B4BAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A5288
	li      $a0, 0x000C
	beqz    $v0, 9$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
9$:
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B4BE8
object_a_802B4BE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01B0($t6)
	jal     objlib_8029F4B4
	li      $a0, 0x000C
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, 29$
	nop
	jal     object_a_802B45F4
	nop
	b       41$
	nop
29$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, 39$
	nop
	jal     object_a_802B473C
	nop
	b       41$
	nop
39$:
	jal     object_a_802B4A3C
	nop
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B4CA4
object_a_802B4CA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 15$
	nop
	li.u    $a0, 0x50080081
	jal     object_playsound
	li.l    $a0, 0x50080081
15$:
	jal     objlib_802A5288
	li      $a0, 0x0006
	beqz    $v0, 22$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B4D14
object_a_802B4D14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x00C8($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t6)
	sh      $v0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, 17$
	nop
	li      $t9, 0x0400
	b       37$
	sh      $t9, 0x001A($sp)
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0184($t0)
	slti    $at, $t1, 0x0003
	bnez    $at, 26$
	nop
	li      $t2, 0x0400
	b       37$
	sh      $t2, 0x001A($sp)
26$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0002
	lw      $t4, 0x0184($t3)
	bne     $t4, $at, 35$
	nop
	li      $t5, 0x0300
	b       37$
	sh      $t5, 0x001A($sp)
35$:
	li      $t6, 0x0200
	sh      $t6, 0x001A($sp)
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x001A($sp)
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t7)
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	bnez    $t9, 62$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F8($t0)
	jal     object_a_802B4288
	nop
	beqz    $v0, 60$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
60$:
	b       117$
	nop
62$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x0150($t4)
	bne     $t5, $at, 110$
	nop
	jal     object_a_802B4300
	nop
	beqz    $v0, 108$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00020000
	lw      $t0, 0x00F4($t9)
	and     $t2, $t0, $at
	beqz    $t2, 99$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x00F8($t3)
	slti    $at, $t1, 0x0005
	bnez    $at, 97$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $at, 0xFFFDFFFF
	li.l    $at, 0xFFFDFFFF
	lw      $t5, 0x00F4($t4)
	and     $t7, $t5, $at
	sw      $t7, 0x00F4($t4)
97$:
	b       108$
	nop
99$:
	lh      $t8, 0x0018($sp)
	slti    $at, $t8, 0x2000
	beqz    $at, 108$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0150($t6)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t6)
108$:
	b       117$
	nop
110$:
	jal     object_a_802B4368
	nop
	beqz    $v0, 117$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
117$:
	b       119$
	nop
119$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B4F00
object_a_802B4F00:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0150($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 49$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 100$
	nop
	b       122$
	nop
16$:
	jal     objlib_802A05B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x001E
	sw      $t8, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, 33$
	nop
	li.u    $a0, 0x90668081
	jal     object_playsound
	li.l    $a0, 0x90668081
33$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	bnez    $t3, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0160($t7)
	sw      $t8, 0x00C8($t7)
47$:
	b       122$
	nop
49$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	lw      $s0, 0x00F8($t9)
	addiu   $t1, $t0, -0x0001
	beqz    $s0, 62$
	sw      $t1, 0x00F8($t9)
	li      $at, 0x42C80000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	b       70$
	swc1    $f4, 0x00B8($t2)
62$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0002
	sw      $t3, 0x0150($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0160($t6)
	sw      $t4, 0x00C8($t6)
70$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $a0, 0x00C8($t8)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t8)
	slti    $at, $v0, 0x4001
	bnez    $at, 98$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43FA0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f8, $f6
	nop
	bc1f    98$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x0150($t1)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	sw      $t2, 0x00C8($t9)
	li.u    $a0, 0x90668081
	jal     object_playsound
	li.l    $a0, 0x90668081
98$:
	b       122$
	nop
100$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t5, 0x00FF
	sh      $t5, 0x01AC($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x00FF
	lw      $t8, 0x017C($t6)
	bne     $t8, $at, 118$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
118$:
	jal     objlib_802A05D4
	nop
	b       122$
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

.globl object_a_802B5104
object_a_802B5104:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x000B
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	slti    $at, $t8, 0x0019
	bnez    $at, 50$
	nop
	slti    $at, $t8, 0x0024
	beqz    $at, 50$
	nop
	li.u    $a0, 0x60000001
	jal     object_levelsound
	li.l    $a0, 0x60000001
	lw      $t9, 0x002C($sp)
	li      $at, 0x0023
	bne     $t9, $at, 37$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13001984
	la.l    $t2, o_13001984
	li      $t1, 0x0090
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	li      $a0, 0x0001
	move    $a1, $0
	li      $a2, 0x0190
	li      $a3, 0x0064
	jal     obj_make_off
	sw      $t0, 0x0010($sp)
	b       50$
	nop
37$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13001984
	la.l    $t5, o_13001984
	li      $t4, 0x0090
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0190
	li      $a3, 0x0064
	jal     obj_make_off
	sw      $t3, 0x0010($sp)
50$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 57$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
57$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x00020000
	lw      $t8, 0x00F4($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x00F4($t7)
	b       65$
	nop
65$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B5218
object_a_802B5218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 29$
	nop
	li      $at, 0xC3C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	li      $at, 0x42C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lh      $t1, 0x0112($t0)
	addu    $t2, $t1, $at
	sw      $t2, 0x00C8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sh      $t3, 0x01B0($t4)
29$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	bnez    $t6, 45$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0019
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       113$
	sw      $0, 0x00F8($t1)
45$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t0, 0x0150($t2)
	bne     $t0, $at, 84$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0019
	jal     objlib_8029FEA4
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, 82$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x001A
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x0150($t8)
82$:
	b       113$
	nop
84$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, 113$
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 111$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t3, 0x0184($t0)
	bne     $t3, $at, 105$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	b       108$
	sw      $t4, 0x014C($t5)
105$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
108$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x01B0($t9)
111$:
	b       113$
	nop
113$:
	b       115$
	nop
115$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B53F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	jal     objlib_802A0008
	li      $a0, 0x000B
	beqz    $v0, 12$
	nop
	b       16$
	li      $v0, 0x0001
	b       14$
	nop
12$:
	b       16$
	move    $v0, $0
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B5444:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 60$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42700000
	jal     objlib_8029F4B4
	li      $a0, 0x0008
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0040($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A1930
	li      $a1, 0x0007
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, 56$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337AD8)
	lwc1    $f10, %lo(object_a_80337AD8)($at)
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    51$
	nop
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t6, 0x0134($t5)
	ori     $t7, $t6, 0x0002
	b       56$
	sw      $t7, 0x0134($t5)
51$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0001
	sw      $t0, 0x0134($t8)
56$:
	b       64$
	li      $v0, 0x0001
	b       62$
	nop
60$:
	b       64$
	move    $v0, $0
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B5554:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 26$
	nop
	lw      $t8, 0x00F4($t6)
	li      $at, 0x00010000
	and     $t9, $t8, $at
	beqz    $t9, 26$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00FC($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    26$
	nop
	li      $at, 0x42700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t1)
26$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B55CC
object_a_802B55CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 46$
	nop
	jal     object_a_802B53F4
	nop
	beqz    $v0, 44$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, 28$
	nop
	lw      $t0, 0x00F4($t8)
	li      $at, 0x00010000
	and     $t1, $t0, $at
	beqz    $t1, 28$
	nop
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	b       34$
	swc1    $f4, 0x00B0($t2)
28$:
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
34$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	jal     object_a_802B5554
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
44$:
	b       109$
	nop
46$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t8, 0x0150($t9)
	bne     $t8, $at, 102$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, 65$
	nop
	lw      $t2, 0x00F4($t0)
	li      $at, 0x00010000
	and     $t3, $t2, $at
	beqz    $t3, 65$
	nop
	jal     object_a_802B4AF4
	nop
65$:
	jal     object_a_802B5444
	nop
	beqz    $v0, 100$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li.u    $at, 0xFFFEFFFF
	li.l    $at, 0xFFFEFFFF
	lw      $t6, 0x00F4($t4)
	and     $t7, $t6, $at
	sw      $t7, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0150($t9)
	addiu   $t1, $t8, 0x0001
	sw      $t1, 0x0150($t9)
	jal     object_a_802B4184
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t2, 0x0144($t0)
	bne     $t2, $at, 98$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t3, 0x0013
	sw      $t3, 0x014C($t6)
98$:
	b       100$
	nop
100$:
	b       109$
	nop
102$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 109$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
109$:
	b       111$
	nop
111$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B5798
object_a_802B5798:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, object_a_8033046C
	la.l    $t6, object_a_8033046C
	lh      $t7, 0x0000($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	la.u    $t8, object_a_80330470
	la.l    $t8, object_a_80330470
	lh      $t9, 0x0000($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, 43$
	nop
	jal     object_a_802B53F4
	nop
	beqz    $v0, 41$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0018($sp)
	swc1    $f18, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
41$:
	b       67$
	nop
43$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0150($t8)
	bne     $t9, $at, 60$
	nop
	jal     object_a_802B5444
	nop
	beqz    $v0, 58$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
58$:
	b       67$
	nop
60$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 67$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B58BC
object_a_802B58BC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 16$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
16$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $s0, 0x0150($t0)
	beqz    $s0, 26$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 49$
	nop
	b       61$
	nop
26$:
	jal     objlib_8029F4B4
	li      $a0, 0x0017
	jal     objlib_8029FF04
	nop
	beqz    $v0, 37$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F8($t1)
37$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	blez    $t5, 47$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
47$:
	b       61$
	nop
49$:
	jal     objlib_8029F4B4
	li      $a0, 0x0018
	jal     objlib_8029FF04
	nop
	beqz    $v0, 59$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000B
	sw      $t9, 0x014C($t0)
59$:
	b       61$
	nop
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B59CC
object_a_802B59CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(hud+0x06)
	lh      $t6, %lo(hud+0x06)($t6)
	slti    $at, $t6, 0x0004
	beqz    $at, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	b       26$
	sh      $t7, 0x0108($t8)
12$:
	jal     randf
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	li      $at, 0x3F800000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t0, $f16
	nop
	sh      $t0, 0x0108($t1)
26$:
	jal     objlib_8029F4B4
	li      $a0, 0x0016
	jal     objlib_802A0008
	li      $a0, 0x0005
	beqz    $v0, 47$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f18
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $t2, 0x0090
	li      $t3, 0x1000
	sw      $t3, 0x001C($sp)
	sw      $t2, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x00C8
	li      $a2, 0x00B4
	li      $a3, 0x40E00000
	swc1    $f18, 0x0014($sp)
	jal     object_c_8030CD30
	swc1    $f4, 0x0018($sp)
47$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 56$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
56$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	lh      $t9, 0x0108($t7)
	slt     $at, $t8, $t9
	bnez    $at, 66$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B5AEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 20$
	nop
	jal     objlib_802A5288
	li      $a0, 0x000F
	beqz    $v0, 18$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0150($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0150($t8)
18$:
	b       39$
	nop
20$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0150($t1)
	bne     $t2, $at, 37$
	nop
	jal     objlib_802A5288
	li      $a0, 0x000E
	beqz    $v0, 35$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
35$:
	b       39$
	nop
37$:
	jal     objlib_8029F4B4
	li      $a0, 0x000C
39$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t0, 0x001E($sp)
	lw      $t9, 0x00C8($t7)
	addu    $t8, $t9, $t0
	sw      $t8, 0x00C8($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0018($sp)
	lw      $t2, 0x0154($t1)
	slt     $at, $t2, $t4
	bnez    $at, 61$
	nop
	b       65$
	li      $v0, 0x0001
	b       63$
	nop
61$:
	b       65$
	move    $v0, $0
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B5C00
object_a_802B5C00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x003F
	jal     object_a_802B5AEC
	li      $a1, 0x0200
	beqz    $v0, 10$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B5C40
object_a_802B5C40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
13$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x0150($t9)
	beqz    $s0, 29$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 42$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 145$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 92$
	nop
	b       186$
	nop
29$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F8($t0)
	jal     objlib_802A5288
	li      $a0, 0x0012
	beqz    $v0, 40$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x0150($t2)
40$:
	b       186$
	nop
42$:
	li      $at, 0x42480000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	jal     objlib_802A5288
	li      $a0, 0x0013
	beqz    $v0, 85$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x00F8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F8($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, 67$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x0150($t0)
67$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	slti    $at, $t2, 0x0002
	bnez    $at, 85$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x0160($t3)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t3)
	slti    $at, $v0, 0x2001
	bnez    $at, 85$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x0150($t6)
85$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t4)
	b       186$
	nop
92$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	jal     objlib_8029F4B4
	li      $a0, 0x0015
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	la.u    $t0, o_13002528
	la.l    $t0, o_13002528
	li      $t9, 0x0096
	sw      $t9, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	move    $a0, $0
	li      $a1, 0x0064
	li      $a2, -0x0032
	move    $a3, $0
	sw      $t8, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f8, 0x0010($sp)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	la.u    $t3, o_13002528
	la.l    $t3, o_13002528
	li      $t2, 0x0096
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	move    $a0, $0
	li      $a1, -0x0064
	li      $a2, -0x0032
	move    $a3, $0
	sw      $t1, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f10, 0x0010($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0xBF800000
	jal     objlib_8029E3E8
	addiu   $a0, $a0, 0x00B8
	beqz    $v0, 141$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x0150($t6)
141$:
	jal     objlib_8029FEA4
	nop
	b       186$
	nop
145$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	jal     objlib_8029F4B4
	li      $a0, 0x0014
	jal     objlib_8029FF04
	nop
	beqz    $v0, 182$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, 165$
	nop
	li      $t9, 0x000A
	b       167$
	sw      $t9, 0x0034($sp)
165$:
	li      $t0, 0x001E
	sw      $t0, 0x0034($sp)
167$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0034($sp)
	lw      $t2, 0x00F8($t1)
	slt     $at, $t3, $t2
	beqz    $at, 177$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
177$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x00F8($t6)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x00F8($t6)
182$:
	jal     objlib_8029FEA4
	nop
	b       186$
	nop
186$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 196$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x014C($t2)
196$:
	b       198$
	nop
198$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_a_802B5F6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_130037EC
	la.l    $a0, o_130037EC
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 24$
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    24$
	nop
	lw      $t7, 0x001C($sp)
	li      $at, 0x00200000
	lw      $t8, 0x0134($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0134($t7)
	b       28$
	li      $v0, 0x0001
24$:
	b       28$
	move    $v0, $0
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B5FEC
object_a_802B5FEC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
11$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	bnez    $t0, 40$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 38$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
38$:
	b       47$
	nop
40$:
	jal     objlib_802A5288
	move    $a0, $0
	beqz    $v0, 47$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
47$:
	jal     object_a_802B5F6C
	nop
	beqz    $v0, 70$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0184($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0184($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0184($t2)
	bgtz    $t3, 66$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0004
	b       70$
	sw      $t4, 0x014C($t6)
66$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x000C
	sw      $t7, 0x014C($t5)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B611C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	bnez    $t8, 25$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0168($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t1)
25$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B6190
object_a_802B6190:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01C0($t6)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	beqz    $t8, 17$
	nop
	lb      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 17$
	nop
	li      $t1, 0x0001
	b       18$
	sw      $t1, 0x002C($sp)
17$:
	sw      $0, 0x002C($sp)
18$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00010000
	lw      $t3, 0x00F4($t2)
	or      $t4, $t3, $at
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, 40$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 76$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 109$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 212$
	nop
	b       230$
	nop
40$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 51$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D8($t9)
51$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	addiu   $t3, $t1, 0x0800
	sw      $t3, 0x00D0($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00D8($t4)
	addiu   $t5, $t2, 0x0800
	sw      $t5, 0x00D8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, 72$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x0150($t9)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0150($t9)
72$:
	jal     object_a_802B611C
	nop
	b       230$
	nop
76$:
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	jal     objlib_802A0008
	li      $a0, 0x000B
	beqz    $v0, 105$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t2, 0x0112($t0)
	sw      $t2, 0x00C8($t0)
	li      $at, 0x43160000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x00FF
	sh      $t4, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x0150($t8)
	addiu   $t3, $t1, 0x0001
	b       107$
	sw      $t3, 0x0150($t8)
105$:
	jal     object_a_802B611C
	nop
107$:
	b       230$
	nop
109$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x0168($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    166$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x012C($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337ADC)
	lwc1    $f18, %lo(object_a_80337ADC)($at)
	lwc1    $f16, 0x00FC($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    160$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00E8($t5)
	lwc1    $f6, 0x0168($t5)
	jal     objlib_802A3634
	sub.s   $f12, $f4, $f6
	li      $at, 0x42C80000
	mtc1    $at, $f8
	nop
	c.lt.s  $f0, $f8
	nop
	bc1f    152$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0000
	li      $a2, 0xC0A00000
	jal     objlib_8029E3E8
	addiu   $a0, $a0, 0x00B8
	b       158$
	nop
152$:
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     objlib_8029E398
	nop
158$:
	b       166$
	nop
160$:
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x40000000
	mtc1    $at, $f14
	jal     objlib_8029E398
	nop
166$:
	jal     object_a_802B5444
	nop
	beqz    $v0, 208$
	nop
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x012C($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t1, $t7, 0x0001
	sw      $t1, 0x0150($t6)
	lw      $t3, 0x002C($sp)
	bnez    $t3, 188$
	nop
	jal     object_a_802B4184
	nop
	b       198$
	nop
188$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0002
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, 198$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x000D
	sw      $t2, 0x014C($t0)
198$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0001
	lw      $t4, 0x0144($t5)
	bne     $t4, $at, 208$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t7, 0x0013
	sw      $t7, 0x014C($t1)
208$:
	jal     object_a_802B4AF4
	nop
	b       230$
	nop
212$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 228$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $at, 0xFFFEFFFF
	li.l    $at, 0xFFFEFFFF
	lw      $t8, 0x00F4($t3)
	and     $t9, $t8, $at
	sw      $t9, 0x00F4($t3)
	jal     objlib_8029FEA4
	nop
228$:
	b       230$
	nop
230$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, str_object_a_1_sp
	la.l    $a0, str_object_a_1_sp
	lwc1    $f16, 0x00B8($t2)
	trunc.w.s $f18, $f16
	mfc1    $a1, $f18
	jal     db_put_err
	nop
	b       241$
	nop
241$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B6568
object_a_802B6568:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a1, object_a_80330474
	la.l    $a1, object_a_80330474
	jal     objlib_802A40B8
	lw      $a0, 0x0154($t6)
	beqz    $v0, 13$
	nop
	li.u    $a0, 0x50030081
	jal     object_playsound
	li.l    $a0, 0x50030081
13$:
	jal     objlib_802A5288
	li      $a0, 0x000A
	beqz    $v0, 20$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B65D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 17$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001714
	la.l    $a2, o_13001714
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x007A
	lui     $at, %hi(camera_8032DF30)
	b       28$
	sw      $v0, %lo(camera_8032DF30)($at)
17$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130016E4
	la.l    $a2, o_130016E4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00CC
	lui     $at, %hi(camera_8032DF30)
	sw      $v0, %lo(camera_8032DF30)($at)
	li.u    $a0, 0x80610081
	jal     object_playsound
	li.l    $a0, 0x80610081
28$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t0, %hi(camera_8032DF30)
	lw      $t0, %lo(camera_8032DF30)($t0)
	lw      $t9, 0x0118($t8)
	sw      $t9, 0x0118($t0)
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6670:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 16$
	nop
	li      $at, 0xC3C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       22$
	swc1    $f4, 0x00B8($t8)
16$:
	li      $at, 0xC3480000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
22$:
	li      $at, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lh      $t2, 0x0112($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6730:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x01B0($t7)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802B41FC
	addiu   $a0, $a0, 0x00F8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 19$
	nop
	li.u    $a0, 0x50030081
	jal     object_playsound
	li.l    $a0, 0x50030081
19$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 35$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B67D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_802A5288
	li      $a0, 0x0011
	beqz    $v0, 28$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    28$
	nop
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $a1, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t7)
	slti    $at, $v0, 0x6001
	bnez    $at, 28$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
28$:
	jal     objlib_8029FEA4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F8($t9)
	b       37$
	lw      $v0, 0x001C($sp)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B6878:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337AE0)
	ldc1    $f8, %lo(object_a_80337AE0)($at)
	lwc1    $f4, 0x002C($t6)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    17$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0118($t7)
	addiu   $t9, $t8, 0x0080
	sw      $t9, 0x0118($t7)
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337AE8)
	ldc1    $f18, %lo(object_a_80337AE8)($at)
	lwc1    $f10, 0x002C($t0)
	cvt.d.s $f16, $f10
	c.lt.d  $f18, $f16
	nop
	bc1f    46$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337AF0)
	ldc1    $f8, %lo(object_a_80337AF0)($at)
	lwc1    $f4, 0x002C($t1)
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x002C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337AF8)
	ldc1    $f6, %lo(object_a_80337AF8)($at)
	lwc1    $f18, 0x0034($t2)
	cvt.d.s $f4, $f18
	sub.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       66$
	swc1    $f10, 0x0034($t2)
46$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337B00)
	ldc1    $f4, %lo(object_a_80337B00)($at)
	lwc1    $f16, 0x0030($t3)
	cvt.d.s $f18, $f16
	sub.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0030($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t5)
66$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	lwc1    $f18, 0x0030($t6)
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f6
	nop
	bc1f    79$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0004($sp)
79$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00C8($t9)
	lw      $t0, 0x0118($t9)
	addu    $t1, $t7, $t0
	sw      $t1, 0x00C8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	slti    $at, $t3, 0x0003
	bnez    $at, 96$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
96$:
	b       100$
	lw      $v0, 0x0004($sp)
	b       100$
	nop
100$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802B6A10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	mtc1    $0, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6A78:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, 52$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	bnez    $t9, 23$
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
23$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $a2, %hi(object_a_80330478)
	li      $a0, 0x0002
	lw      $t4, 0x0144($t3)
	li      $a1, 0x0012
	move    $a3, $0
	sll     $t5, $t4, 1
	addu    $a2, $a2, $t5
	jal     objlib_802A4960
	lh      $a2, %lo(object_a_80330478)($a2)
	beqz    $v0, 50$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
	li.u    $a0, 0x80600081
	jal     object_playsound
	li.l    $a0, 0x80600081
	move    $a0, $0
	jal     Na_SeqUnmute
	li      $a1, 0x003C
	move    $a0, $0
	jal     Na_SeqFadeout
	li      $a1, 0x0001
50$:
	b       69$
	nop
52$:
	jal     object_a_802B6878
	nop
	beqz    $v0, 69$
	nop
	jal     object_a_802B6A10
	nop
	li      $a0, 0x0014
	li      $a1, 0x0074
	li      $a2, 0x3F800000
	jal     object_a_802AE0CC
	move    $a3, $0
	jal     object_a_802B65D0
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	li      $t9, 0x0001
	sw      $t9, 0x001C($sp)
69$:
	b       73$
	lw      $v0, 0x001C($sp)
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802B6BAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	slti    $at, $t7, 0x0002
	beqz    $at, 57$
	nop
	lui     $t8, %hi(hud+0x04)
	lh      $t8, %lo(hud+0x04)($t8)
	slti    $at, $t8, 0x0078
	beqz    $at, 17$
	nop
	li      $t9, 0x0079
	b       19$
	sw      $t9, 0x001C($sp)
17$:
	li      $t0, 0x00A3
	sw      $t0, 0x001C($sp)
19$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	bnez    $t2, 33$
	nop
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x00F8($t3)
33$:
	li      $a0, 0x0002
	li      $a1, 0x0012
	lw      $a2, 0x001C($sp)
	jal     objlib_802A4960
	move    $a3, $0
	beqz    $v0, 55$
	nop
	jal     objlib_802A04C0
	li      $a0, 0x0069
	move    $a0, $0
	jal     Na_SeqUnmute
	li      $a1, 0x003C
	move    $a0, $0
	jal     Na_SeqFadeout
	li      $a1, 0x0001
	jal     object_a_802B65D0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F8($t6)
55$:
	b       73$
	nop
57$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	slti    $at, $t0, 0x0005
	bnez    $at, 69$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t4, $t2, -0x0004
	b       73$
	sw      $t4, 0x017C($t1)
69$:
	jal     object_a_802B6A10
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0020($sp)
73$:
	b       77$
	lw      $v0, 0x0020($sp)
	b       77$
	nop
77$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B6CF0
object_a_802B6CF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	sltiu   $at, $t7, 0x000C
	beqz    $at, L802B6E28
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337B08)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337B08)($at)
	jr      $t7
	nop
.globl L802B6D28
L802B6D28:
	jal     object_a_802B6670
	nop
	b       L802B6E28
	nop
.globl L802B6D38
L802B6D38:
	jal     object_a_802B6730
	nop
	b       L802B6E28
	nop
.globl L802B6D48
L802B6D48:
	jal     object_a_802B67D4
	nop
	beqz    $v0, 50$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, 40$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	b       50$
	sw      $t1, 0x0150($t2)
40$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	ori     $t5, $t4, 0x0080
	sh      $t5, 0x0074($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
50$:
	b       L802B6E28
	nop
.globl L802B6DC0
L802B6DC0:
	jal     object_a_802B6A78
	nop
	beqz    $v0, 61$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0150($t9)
61$:
	b       L802B6E28
	nop
.globl L802B6DEC
L802B6DEC:
	b       L802B6E28
	nop
.globl L802B6DF4
L802B6DF4:
	jal     object_a_802B6BAC
	nop
	beqz    $v0, 74$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0150($t2)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t2)
74$:
	b       L802B6E28
	nop
.globl L802B6E20
L802B6E20:
	b       L802B6E28
	nop
.globl L802B6E28
L802B6E28:
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B6E40:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0112($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x0006($sp)
	lhu     $t9, 0x0006($sp)
	mtc1    $a1, $f6
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	cvt.s.w $f8, $f6
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t3, $f16
	nop
	sw      $t3, 0x0114($a0)
	lhu     $t4, 0x0006($sp)
	mtc1    $a1, $f4
	lui     $at, %hi(math_sin)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f8, $f4
	addu    $at, $at, $t6
	lwc1    $f18, %lo(math_sin)($at)
	neg.s   $f6, $f18
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sw      $t8, 0x011C($a0)
	b       38$
	nop
38$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802B6EE0
object_a_802B6EE0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001920
	jal     objlib_8029F95C
	la.l    $a0, o_13001920
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x0112($t6)
	addu    $t8, $t7, $at
	sh      $t8, 0x002A($sp)
	lw      $t9, 0x002C($sp)
	bnez    $t9, 19$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       135$
	sw      $0, 0x014C($t0)
19$:
	sw      $0, 0x0020($sp)
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lui     $t4, %hi(object_a_80330480+2*2)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_a_80330480+2*2)($t4)
	beqz    $t4, 121$
	nop
31$:
	lw      $t7, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	lui     $t9, %hi(object_a_80330480+2*2)
	addu    $t9, $t9, $t8
	lh      $t9, %lo(object_a_80330480+2*2)($t9)
	lw      $t6, 0x0154($t5)
	slt     $at, $t6, $t9
	beqz    $at, 109$
	nop
	lw      $t0, 0x0020($sp)
	lui     $t2, %hi(object_a_80330480+2*1)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 1
	addu    $t2, $t2, $t1
	lh      $t2, %lo(object_a_80330480+2*1)($t2)
	sh      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	lui     $t5, %hi(object_a_80330480+2*0)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t5, $t5, $t4
	lh      $t5, %lo(object_a_80330480+2*0)($t5)
	blez    $t5, 79$
	nop
	lw      $t7, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	lui     $t6, %hi(object_a_80330480+2*2)
	addu    $t6, $t6, $t8
	lh      $t6, %lo(object_a_80330480+2*2)($t6)
	lw      $t0, 0x0154($t9)
	lh      $t3, 0x0028($sp)
	subu    $t1, $t6, $t0
	addiu   $t2, $t1, -0x0001
	multu   $t2, $t3
	mflo    $t4
	sh      $t4, 0x0028($sp)
	b       95$
	nop
79$:
	lw      $t8, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	lui     $t6, %hi(object_a_80330480+2*(3*-1+2))
	addu    $t6, $t6, $t9
	lh      $t6, %lo(object_a_80330480+2*(3*-1+2))($t6)
	lw      $t7, 0x0154($t5)
	lh      $t1, 0x0028($sp)
	subu    $t0, $t7, $t6
	multu   $t0, $t1
	mflo    $t2
	sh      $t2, 0x0028($sp)
	nop
95$:
	lw      $a0, 0x002C($sp)
	jal     object_a_802B6E40
	lh      $a1, 0x0028($sp)
	lh      $t3, 0x0028($sp)
	beqz    $t3, 106$
	nop
	lw      $a1, 0x002C($sp)
	li.u    $a0, 0x41150001
	li.l    $a0, 0x41150001
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
106$:
	sw      $0, 0x001C($sp)
	b       121$
	nop
109$:
	lw      $t4, 0x0020($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lui     $t7, %hi(object_a_80330480+2*2)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t7, $t7, $t9
	lh      $t7, %lo(object_a_80330480+2*2)($t7)
	bnez    $t7, 31$
	nop
121$:
	lw      $t6, 0x001C($sp)
	beqz    $t6, 135$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	lw      $t1, 0x002C($sp)
	sw      $0, 0x0114($t1)
	lw      $t2, 0x002C($sp)
	sw      $0, 0x011C($t2)
	lw      $t3, 0x002C($sp)
	sw      $0, 0x00D0($t3)
	lw      $t4, 0x002C($sp)
	sw      $0, 0x00D8($t4)
135$:
	jal     objlib_8029FEA4
	nop
	b       139$
	nop
139$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802B711C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 44$
	nop
	li      $at, 0x0013
	beq     $t7, $at, 44$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x0168($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    22$
	nop
	jr      $ra
	li      $v0, 0x0001
22$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 44$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lh      $t3, 0x01B8($t2)
	bne     $t3, $at, 36$
	nop
	jr      $ra
	li      $v0, 0x0001
36$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x000A
	lh      $t5, 0x01B8($t4)
	bne     $t5, $at, 44$
	nop
	jr      $ra
	li      $v0, 0x0001
44$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802B71E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0214($t6)
	beqz    $t7, 10$
	sw      $t7, 0x0020($sp)
	move    $a0, $0
	jal     ride_proc
	lw      $a1, 0x0020($sp)
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x010E($t8)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_803304C8
	jal     objlib_802A3E30
	la.l    $a0, object_a_803304C8
	jal     objlib_802A2348
	li      $a0, -0x004E
	jal     object_a_802B711C
	nop
	beqz    $v0, 28$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
28$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t1)
	lwc1    $f14, 0x00A4($t1)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t1)
	swc1    $f0, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	beqz    $t2, 48$
	nop
	lw      $t3, 0x002C($t2)
	beqz    $t3, 48$
	nop
	lw      $t4, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x002C($t4)
	b       51$
	sw      $t5, 0x0214($t6)
48$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0214($t7)
51$:
	la.u    $a0, object_a_80330518
	jal     object_stepsound
	la.l    $a0, object_a_80330518
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B72D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFDFFFF
	li.l    $at, 0xFFFDFFFF
	lw      $t7, 0x00F4($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00F4($t6)
	jal     objlib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $s0, 0x010E($t9)
	beqz    $s0, 25$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 51$
	nop
	b       53$
	nop
25$:
	li.u    $a0, 0x50050081
	jal     object_playsound
	li.l    $a0, 0x50050081
	li      $a0, 0x0003
	jal     objlib_802A01D8
	li      $a1, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x010E($t0)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x010E($t0)
	b       53$
	nop
38$:
	jal     objlib_8029FF04
	nop
	beqz    $v0, 49$
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x010E($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x010E($t3)
49$:
	b       53$
	nop
51$:
	b       53$
	nop
53$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00EC($t7)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00C4($t8)
	sh      $t6, 0x010A($t9)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x0118($t1)
	sh      $t2, 0x010C($t0)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00C8($t4)
	sw      $t5, 0x00C8($t3)
	b       76$
	nop
76$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802B7418:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x010E($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A0380
	li      $a2, 0x0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337B38)
	ldc1    $f8, %lo(object_a_80337B38)($at)
	lh      $t8, 0x010C($t7)
	lui     $at, %hi(object_a_80337B40)
	ldc1    $f16, %lo(object_a_80337B40)($at)
	mtc1    $t8, $f4
	nop
	cvt.d.w $f6, $f4
	div.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    34$
	nop
	lwc1    $f10, 0x001C($sp)
	neg.s   $f16, $f10
	swc1    $f16, 0x001C($sp)
34$:
	li      $at, 0x42B40000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    49$
	nop
	lwc1    $f6, 0x001C($sp)
	li      $at, 0x40040000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x001C($sp)
49$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x001C($sp)
	lhu     $t0, 0x010A($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x001C($sp)
	lhu     $t4, 0x010A($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	neg.s   $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00B0($t3)
	jal     objlib_802A05B4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	lw      $t0, 0x006C($t8)
	sw      $t7, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x006C($t1)
	sw      $0, 0x0154($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t4, 0x006C($t9)
	sw      $0, 0x0150($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0150($t6)
	b       95$
	nop
95$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B75A4
object_a_802B75A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A8($t6)
	lwc1    $f8, 0x00A0($t6)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	mtc1    $0, $f4
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f8, 0x00A0($t8)
	sub.s   $f12, $f16, $f18
	jal     ATAN2
	sub.s   $f14, $f4, $f8
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $v0, 0x0112($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x00C8($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t0)
	sh      $v0, 0x0026($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x00C8($t1)
	jal     objlib_802A11A8
	lh      $a1, 0x0112($t1)
	sh      $v0, 0x0024($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0100
	lw      $t3, 0x00F4($t2)
	and     $t4, $t3, $at
	sw      $t4, 0x00F4($t2)
	lh      $t5, 0x0026($sp)
	slti    $at, $t5, 0x2000
	beqz    $at, 54$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	ori     $t8, $t7, 0x0002
	sw      $t8, 0x00F4($t6)
54$:
	lh      $t9, 0x0024($sp)
	slti    $at, $t9, 0x3800
	beqz    $at, 63$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	ori     $t3, $t1, 0x0004
	sw      $t3, 0x00F4($t0)
63$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f6, 0x00FC($t4)
	c.lt.s  $f6, $f10
	nop
	bc1f    77$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x00F4($t2)
	ori     $t7, $t5, 0x0010
	sw      $t7, 0x00F4($t2)
77$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337B48)
	lwc1    $f18, %lo(object_a_80337B48)($at)
	lwc1    $f16, 0x015C($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    91$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x00F4($t6)
	ori     $t1, $t9, 0x0008
	sw      $t1, 0x00F4($t6)
91$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $s0, 0x0124($t3)
	beqz    $s0, 107$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 111$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 115$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 119$
	nop
	b       123$
	nop
107$:
	jal     object_a_802B71E4
	nop
	b       123$
	nop
111$:
	jal     object_a_802B72D4
	nop
	b       123$
	nop
115$:
	jal     object_a_802B7418
	nop
	b       123$
	nop
119$:
	jal     object_a_802B7418
	nop
	b       123$
	nop
123$:
	jal     objlib_802A4F58
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0004
	lw      $t4, 0x014C($t0)
	beq     $t4, $at, 174$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x017C($t5)
	lh      $t2, 0x01AC($t5)
	beq     $t7, $t2, 174$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x01AC($t8)
	lw      $t1, 0x017C($t8)
	slt     $at, $t1, $t9
	beqz    $at, 161$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x017C($t6)
	addiu   $t0, $t3, 0x0014
	sw      $t0, 0x017C($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	slti    $at, $t5, 0x0100
	bnez    $at, 159$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t7, 0x00FF
	sw      $t7, 0x017C($t2)
159$:
	b       174$
	nop
161$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	addiu   $t1, $t9, -0x0014
	sw      $t1, 0x017C($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t0, 0x017C($t3)
	bgez    $t0, 174$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x017C($t6)
174$:
	b       176$
	nop
176$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B7878
object_a_802B7878:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sh      $t6, 0x0110($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x017C($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x00FF
	sh      $t0, 0x01AC($t1)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0021
	bne     $t2, $at, 22$
	nop
	li      $t3, 0x0001
	b       31$
	sw      $t3, 0x001C($sp)
22$:
	lui     $t4, %hi(stage_index)
	lh      $t4, %lo(stage_index)($t4)
	li      $at, 0x0022
	bne     $t4, $at, 30$
	nop
	li      $t5, 0x0002
	b       31$
	sw      $t5, 0x001C($sp)
30$:
	sw      $0, 0x001C($sp)
31$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0144($t7)
	lw      $t8, 0x001C($sp)
	lui     $t9, %hi(object_a_803305F0)
	lui     $t0, %hi(object)
	addu    $t9, $t9, $t8
	lb      $t9, %lo(object_a_803305F0)($t9)
	lw      $t0, %lo(object)($t0)
	sh      $t9, 0x01B2($t0)
	lw      $t1, 0x001C($sp)
	lui     $t2, %hi(object_a_803305F4)
	lui     $t3, %hi(object)
	addu    $t2, $t2, $t1
	lb      $t2, %lo(object_a_803305F4)($t2)
	lw      $t3, %lo(object)($t3)
	sw      $t2, 0x0184($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A1930
	li      $a1, 0x0004
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AE($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01B0($t7)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_object_a_802B798C
s_object_a_802B798C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, 29$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, 29$
	nop
	lui     $t0, %hi(s_camera)
	lw      $t0, %lo(s_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     objlib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     objlib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     objlib_8029F188
	lw      $a0, 0x006C($t2)
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_a_802B7A20:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $a0, 0x00C8($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x0160($t6)
	sh      $v0, 0x001A($sp)
	lw      $t7, 0x0024($sp)
	lh      $t8, 0x001E($t7)
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	sltiu   $at, $t9, 0x000A
	beqz    $at, L802B7C24
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_80337B4C)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_80337B4C)($at)
	jr      $t9
	nop
.globl L802B7A78
L802B7A78:
	lh      $t0, 0x001A($sp)
	slti    $at, $t0, 0x2001
	bnez    $at, 40$
	nop
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0118($t1)
	blez    $t2, 33$
	nop
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0005
	sh      $t3, 0x001E($t4)
33$:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0118($t5)
	bgez    $t6, 40$
	nop
	lw      $t8, 0x0024($sp)
	li      $t7, 0x0003
	sh      $t7, 0x001E($t8)
40$:
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x01AE($t9)
	slti    $at, $t0, 0x0033
	bnez    $at, 48$
	nop
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0001
	sh      $t1, 0x001E($t2)
48$:
	b       131$
	nop
.globl L802B7AE8
L802B7AE8:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x01AE($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, 58$
	nop
	lw      $t6, 0x0024($sp)
	li      $t5, 0x0002
	sh      $t5, 0x001E($t6)
58$:
	b       131$
	nop
.globl L802B7B10
L802B7B10:
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x01AE($t7)
	slti    $at, $t8, 0x0003
	bnez    $at, 68$
	nop
	lw      $t0, 0x0024($sp)
	li      $t9, 0x0009
	sh      $t9, 0x001E($t0)
68$:
	b       131$
	nop
.globl L802B7B38
L802B7B38:
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x01AE($t1)
	slti    $at, $t2, 0x0003
	bnez    $at, 77$
	nop
	lw      $t3, 0x0024($sp)
	sh      $0, 0x001E($t3)
77$:
	b       131$
	nop
.globl L802B7B5C
L802B7B5C:
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x01AE($t4)
	slti    $at, $t5, 0x0003
	bnez    $at, 93$
	nop
	lw      $t7, 0x0024($sp)
	li      $t6, 0x0006
	sh      $t6, 0x001E($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0118($t8)
	bgtz    $t9, 93$
	nop
	lw      $t0, 0x0024($sp)
	sh      $0, 0x001E($t0)
93$:
	b       131$
	nop
.globl L802B7B9C
L802B7B9C:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0118($t1)
	bgtz    $t2, 102$
	nop
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0005
	sh      $t3, 0x001E($t4)
102$:
	b       131$
	nop
.globl L802B7BC0
L802B7BC0:
	lw      $t5, 0x0020($sp)
	lh      $t6, 0x01AE($t5)
	slti    $at, $t6, 0x0003
	bnez    $at, 118$
	nop
	lw      $t8, 0x0024($sp)
	li      $t7, 0x0004
	sh      $t7, 0x001E($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0118($t9)
	bltz    $t0, 118$
	nop
	lw      $t1, 0x0024($sp)
	sh      $0, 0x001E($t1)
118$:
	b       131$
	nop
.globl L802B7C00
L802B7C00:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0118($t2)
	bltz    $t3, 127$
	nop
	lw      $t5, 0x0024($sp)
	li      $t4, 0x0003
	sh      $t4, 0x001E($t5)
127$:
	b       131$
	nop
.globl L802B7C24
L802B7C24:
	lw      $t6, 0x0024($sp)
	sh      $0, 0x001E($t6)
131$:
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	lh      $t8, 0x001E($t7)
	beq     $t8, $t9, 139$
	nop
	lw      $t1, 0x0020($sp)
	li      $t0, -0x0001
	sh      $t0, 0x01AE($t1)
139$:
	b       141$
	nop
141$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl s_object_a_802B7C64
s_object_a_802B7C64:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0038($sp)
	li      $at, 0x0001
	bne     $t8, $at, 47$
	nop
	lui     $t9, %hi(s_hand)
	lw      $t9, %lo(s_hand)($t9)
	beqz    $t9, 23$
	nop
	lui     $t0, %hi(s_hand)
	lw      $t0, %lo(s_hand)($t0)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x002C($sp)
23$:
	lw      $t2, 0x002C($sp)
	lh      $t3, 0x01B0($t2)
	move    $s0, $t3
	beqz    $s0, 33$
	sh      $t3, 0x0036($sp)
	li      $at, 0x0001
	beq     $s0, $at, 38$
	nop
	b       43$
	nop
33$:
	lw      $a0, 0x002C($sp)
	jal     object_a_802B7A20
	lw      $a1, 0x0028($sp)
	b       43$
	nop
38$:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0002
	sh      $t4, 0x001E($t5)
	b       43$
	nop
43$:
	lw      $t6, 0x002C($sp)
	lh      $t7, 0x01AE($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x01AE($t6)
47$:
	b       51$
	move    $v0, $0
	b       51$
	nop
51$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl s_object_a_802B7D44
s_object_a_802B7D44:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $0, 0x002C($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x0001
	bne     $t6, $at, 65$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0034($sp)
	sw      $t8, 0x0020($sp)
	lui     $t9, %hi(s_hand)
	lw      $t9, %lo(s_hand)($t9)
	beqz    $t9, 23$
	nop
	lui     $t0, %hi(s_hand)
	lw      $t0, %lo(s_hand)($t0)
	lw      $t1, 0x001C($t0)
	sw      $t1, 0x0024($sp)
23$:
	lw      $t2, 0x0024($sp)
	li      $at, 0x00FF
	lw      $t3, 0x017C($t2)
	bne     $t3, $at, 34$
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	ori     $t7, $t6, 0x0100
	b       39$
	sh      $t7, 0x0002($t4)
34$:
	lw      $t8, 0x0020($sp)
	lh      $t9, 0x0002($t8)
	andi    $t0, $t9, 0x00FF
	ori     $t1, $t0, 0x0500
	sh      $t1, 0x0002($t8)
39$:
	jal     gfx_alloc
	li      $a0, 0x0010
	sw      $v0, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0024($sp)
	lh      $t5, 0x01B2($t3)
	beqz    $t5, 58$
	nop
	lw      $t6, 0x0028($sp)
	addiu   $t7, $t6, 0x0008
	sw      $t7, 0x0028($sp)
	sw      $t6, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t4, 0xB6000000
	sw      $t4, 0x0000($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x00020000
	sw      $t0, 0x0004($t1)
58$:
	lw      $t8, 0x0028($sp)
	sw      $t8, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	li      $t2, 0xB8000000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0018($sp)
	sw      $0, 0x0004($t5)
65$:
	b       69$
	lw      $v0, 0x002C($sp)
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B7E68
object_a_802B7E68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13001850
	jal     objlib_8029F95C
	la.l    $a0, o_13001850
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $a1, %hi(object_a_803305F8+0x00)
	lw      $t8, 0x0144($t7)
	move    $a0, $t7
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $a1, $a1, $t9
	jal     objlib_802A44F4
	lw      $a1, %lo(object_a_803305F8+0x00)($a1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	beqz    $t1, 28$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B7EF0
object_a_802B7EF0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x0000($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, 25$
	nop
	lw      $t1, 0x0000($sp)
	li      $at, 0x000D
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, 25$
	nop
	lw      $t3, 0x00F4($t1)
	li      $at, 0x00010000
	and     $t4, $t3, $at
	beqz    $t4, 25$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
25$:
	lw      $t7, 0x0000($sp)
	li      $at, 0x0001
	lw      $t8, 0x0184($t7)
	bne     $t8, $at, 41$
	nop
	lw      $t9, 0x014C($t7)
	li      $at, 0x0003
	beq     $t9, $at, 37$
	nop
	lw      $t0, 0x0124($t7)
	beqz    $t0, 41$
	nop
37$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0001
	sw      $t2, 0x0150($t1)
41$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	bnez    $t4, 50$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	b       73$
	sw      $0, 0x00FC($t5)
50$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t8, 0x004C($t6)
	lw      $t0, 0x0144($t7)
	lw      $t3, 0x00FC($t7)
	addiu   $t9, $t8, 0x0014
	addiu   $t2, $t0, -0x0001
	multu   $t9, $t2
	mflo    $t1
	slt     $at, $t1, $t3
	beqz    $at, 68$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
68$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00FC($t6)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x00FC($t6)
73$:
	b       75$
	nop
75$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802B8024
object_a_802B8024:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	beqz    $t9, 14$
	nop
	li      $at, 0x0016
	bne     $t9, $at, 17$
	nop
14$:
	li.u    $a0, 0x31628081
	jal     object_playsound
	li.l    $a0, 0x31628081
17$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0016
	beqz    $at, 36$
	nop
	jal     camera_8027F8B8
	li      $a0, 0x000A
	li      $at, 0x41000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	b       42$
	swc1    $f6, 0x00E4($t3)
36$:
	li      $at, 0xC0800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t4)
42$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	andi    $t7, $t6, 0x0001
	bnez    $t7, 199$
	nop
	slti    $at, $t6, 0x000E
	beqz    $at, 199$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	la.u    $t8, db_work
	la.l    $t8, db_work
	lw      $t2, 0x0144($t1)
	lui     $t4, %hi(object_a_803305F8+0x08)
	lh      $t9, 0x0042($t8)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lh      $t4, %lo(object_a_803305F8+0x08)($t4)
	sll     $t0, $t9, 8
	addu    $t5, $t0, $t4
	sh      $t5, 0x0022($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0154($t7)
	bgez    $t6, 73$
	sra     $t8, $t6, 1
	addiu   $at, $t6, 0x0001
	sra     $t8, $at, 1
73$:
	subu    $t9, $0, $t8
	sll     $t1, $t9, 3
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 4
	addu    $t1, $t1, $t9
	sll     $t1, $t1, 1
	addiu   $t2, $t1, 0x06CC
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t3, 0x0022($sp)
	lui     $t1, %hi(object_a_803305F8+0x04)
	lw      $t8, 0x0144($t6)
	addiu   $t0, $t3, 0x14B0
	andi    $t4, $t0, 0xFFFF
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t1, $t1, $t9
	sra     $t5, $t4, 4
	lh      $t1, %lo(object_a_803305F8+0x04)($t1)
	sll     $t7, $t5, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	lwc1    $f4, 0x001C($sp)
	mtc1    $t1, $f8
	mul.s   $f6, $f18, $f4
	cvt.s.w $f10, $f8
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t2, 0x0022($sp)
	lui     $t1, %hi(object_a_803305F8+0x06)
	lw      $t8, 0x0144($t7)
	addiu   $t3, $t2, 0x14B0
	andi    $t0, $t3, 0xFFFF
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t1, $t1, $t9
	sra     $t4, $t0, 4
	lh      $t1, %lo(object_a_803305F8+0x06)($t1)
	sll     $t5, $t4, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x001C($sp)
	mtc1    $t1, $f6
	mul.s   $f8, $f18, $f4
	cvt.s.w $f10, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t7)
	lui     $at, %hi(object_a_80337B74)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, %lo(object_a_80337B74)($at)
	swc1    $f18, 0x00A4($t6)
	li      $a0, 0x0004
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x0022($sp)
	lui     $t7, %hi(object_a_803305F8+0x04)
	lw      $t9, 0x0144($t8)
	addiu   $t3, $t2, -0x14B0
	andi    $t0, $t3, 0xFFFF
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	addu    $t7, $t7, $t1
	sra     $t4, $t0, 4
	lh      $t7, %lo(object_a_803305F8+0x04)($t7)
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f6, 0x001C($sp)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x00A0($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0022($sp)
	lui     $t7, %hi(object_a_803305F8+0x06)
	lw      $t9, 0x0144($t5)
	addiu   $t2, $t6, -0x14B0
	andi    $t3, $t2, 0xFFFF
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	addu    $t7, $t7, $t1
	sra     $t0, $t3, 4
	lh      $t7, %lo(object_a_803305F8+0x06)($t7)
	sll     $t4, $t0, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f6, 0x001C($sp)
	mtc1    $t7, $f8
	mul.s   $f10, $f4, $f6
	cvt.s.w $f16, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	li      $a0, 0x0004
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
199$:
	jal     objlib_802A2644
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x0154($t8)
	slti    $at, $t6, 0x012D
	bnez    $at, 210$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
210$:
	b       212$
	nop
212$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B8384
object_a_802B8384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_8033067C
	jal     objlib_802A3E30
	la.l    $a0, object_a_8033067C
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B83B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300127C
	la.l    $a2, o_1300127C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	jal     objlib_8029EEB8
	li      $a3, 0x3F800000
	jal     randf
	nop
	lui     $at, %hi(object_a_80337B78)
	ldc1    $f6, %lo(object_a_80337B78)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    27$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000940
	la.l    $a2, o_13000940
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0074
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B8434:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slt     $at, $a0, $t7
	beqz    $at, 8$
	nop
	jr      $ra
	li      $v0, 0x0001
8$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lh      $t9, 0x01B8($t8)
	bne     $t9, $at, 16$
	nop
	jr      $ra
	li      $v0, 0x0001
16$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000A
	lh      $t1, 0x01B8($t0)
	bne     $t1, $at, 24$
	nop
	jr      $ra
	li      $v0, 0x0001
24$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B84AC
object_a_802B84AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	jal     randf
	nop
	lui     $at, %hi(object_a_80337B80)
	ldc1    $f16, %lo(object_a_80337B80)($at)
	cvt.d.s $f10, $f0
	c.lt.d  $f10, $f16
	nop
	bc1f    33$
	nop
	li      $at, 0x42A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	b       39$
	swc1    $f18, 0x00B0($t0)
33$:
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t1)
39$:
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t2)
	li      $at, 0xBF800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t3)
	jal     randf
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f0, $f10
	swc1    $f16, 0x00F4($t4)
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B85B0
object_a_802B85B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t1)
	li      $at, 0x40E00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t2)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B8654:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t8, %hi(gfx_frame)
	lw      $t8, %lo(gfx_frame)($t8)
	lw      $t7, 0x00F8($t6)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0x003F
	sll     $t1, $t0, 10
	sw      $t1, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lhu     $t8, 0x0006($sp)
	la.u    $t6, math_sin
	lhu     $t3, 0x00CA($t2)
	la.l    $t6, math_sin
	sra     $t9, $t8, 4
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	sll     $t0, $t9, 2
	addu    $t1, $t0, $t6
	addu    $t7, $t5, $t6
	lwc1    $f4, 0x0000($t7)
	lwc1    $f6, 0x0000($t1)
	li      $at, 0x40800000
	mtc1    $at, $f10
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t2)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lhu     $t8, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t3)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f6, %lo(math_cos)($at)
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x40800000
	mtc1    $at, $f18
	mul.s   $f10, $f6, $f8
	lwc1    $f4, 0x00A8($t3)
	mul.s   $f16, $f10, $f18
	add.s   $f6, $f4, $f16
	swc1    $f6, 0x00A8($t3)
	b       54$
	nop
54$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802B8734
object_a_802B8734:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	li      $at, 0xC0800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t7)
21$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	bnez    $t9, 80$
	nop
	jal     objlib_802A05B4
	nop
	jal     object_a_802B8654
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 78$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
	la.u    $a0, o_13001AE8
	jal     objlib_802A14FC
	la.l    $a0, o_13001AE8
	beqz    $v0, 52$
	nop
	li      $at, 0x41000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	b       63$
	swc1    $f10, 0x00F4($t6)
52$:
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	li      $at, 0x40C00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00F4($t7)
63$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t0)
78$:
	b       117$
	nop
80$:
	jal     objlib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41200000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t1)
	lw      $t2, 0x0154($t1)
	li      $at, 0x40A00000
	mul.s   $f10, $f6, $f8
	mtc1    $t2, $f18
	mtc1    $at, $f16
	cvt.s.w $f4, $f18
	add.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    117$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337B88)
	ldc1    $f10, %lo(object_a_80337B88)($at)
	lwc1    $f6, 0x00F4($t4)
	cvt.d.s $f8, $f6
	sub.d   $f16, $f8, $f10
	cvt.s.d $f4, $f16
	swc1    $f4, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f6
	lwc1    $f18, 0x00F4($t5)
	c.le.s  $f18, $f6
	nop
	bc1f    117$
	nop
	jal     object_a_802B83B0
	nop
117$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f10
	lwc1    $f8, 0x0030($t6)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00DC($t6)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330698
	la.l    $a1, object_a_80330698
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       135$
	nop
135$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8960
object_a_802B8960:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42A00000
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x00F0($t9)
	li      $at, 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t0)
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B89EC
object_a_802B89EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f4, 0x00F4($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	slti    $at, $t9, 0x0801
	bnez    $at, 32$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C4($t0)
	addiu   $t2, $t1, -0x0200
	sw      $t2, 0x00C4($t0)
32$:
	jal     objlib_802A31E0
	nop
	jal     objlib_802A0604
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t3)
	c.lt.s  $f4, $f18
	nop
	bc1f    48$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
48$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00A4($t4)
	lwc1    $f8, 0x00E8($t4)
	c.lt.s  $f6, $f8
	nop
	bc1f    70$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00E8($t5)
	swc1    $f10, 0x00A4($t5)
	lui     $a0, %hi(object)
	la.u    $a2, o_13001AA4
	la.l    $a2, o_13001AA4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	sw      $v0, 0x0018($sp)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B8B1C
object_a_802B8B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	jal     rand
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, 32$
	nop
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f16, $f0, $f10
	b       40$
	swc1    $f16, 0x00B8($t2)
32$:
	jal     randf
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f18
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f4, $f0, $f18
	swc1    $f4, 0x00B8($t3)
40$:
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f0, $f6
	swc1    $f8, 0x00B0($t4)
	li      $at, 0xBF800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t5)
	jal     randf
	nop
	li      $at, 0x42800000
	mtc1    $at, $f16
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t7, $f4
	nop
	sw      $t7, 0x00F8($t8)
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8C38
object_a_802B8C38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     object_a_802B8654
	nop
	jal     object_a_802B8434
	li      $a0, 0x0384
	beqz    $v0, 15$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
15$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_803306A8)
	lw      $t7, 0x0144($t6)
	lwc1    $f4, 0x00B0($t6)
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(object_a_803306A8)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    35$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_a_803306A8)
	lw      $t0, 0x0144($t9)
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(object_a_803306A8)($at)
	swc1    $f8, 0x00B0($t9)
35$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00EC($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 63$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, 54$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13001AE8
	la.l    $a2, o_13001AE8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	b       60$
	nop
54$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A0C
	la.l    $a2, o_13001A0C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
60$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
63$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41600000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($t7)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t7)
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B8D68
object_a_802B8D68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42A00000
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	li      $at, 0x40E00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	li      $at, 0x420C0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t1)
	jal     randf
	nop
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f0
	lui     $t2, %hi(object)
	mul.d   $f8, $f4, $f6
	lw      $t2, %lo(object)($t2)
	cvt.s.d $f10, $f8
	swc1    $f10, 0x00FC($t2)
	li      $at, 0x3F800000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00E4($t3)
	jal     randf
	nop
	li      $at, 0x42800000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f4, $f0, $f18
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x00F8($t6)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B8E7C
object_a_802B8E7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    26$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	lwc1    $f8, 0x00F4($t7)
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F4($t7)
26$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t8)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0015
	bnez    $at, 104$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, 69$
	nop
	sw      $0, 0x002C($sp)
46$:
	li      $at, 0x40A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	la.u    $t5, o_130019C8
	la.l    $t5, o_130019C8
	li      $t4, 0x0090
	sw      $t4, 0x0018($sp)
	sw      $t5, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t3, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f6, 0x0010($sp)
	lw      $t6, 0x002C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0003
	bnez    $at, 46$
	sw      $t7, 0x002C($sp)
	b       101$
	nop
69$:
	li      $at, 0x41000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	la.u    $t0, o_130019C8
	la.l    $t0, o_130019C8
	li      $t9, 0x0091
	sw      $t9, 0x0018($sp)
	sw      $t0, 0x001C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t8, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f8, 0x0010($sp)
	li      $at, 0x41000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	la.u    $t3, o_130019C8
	la.l    $t3, o_130019C8
	li      $t2, 0x0091
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	li      $a0, 0x0002
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $t1, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f10, 0x0010($sp)
101$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802B9034
object_a_802B9034:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F0($t8)
	li      $at, 0x41F00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x002C($t1)
	swc1    $f18, 0x00F4($t1)
	jal     randf
	nop
	li      $at, 0x42800000
	mtc1    $at, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x00F8($t4)
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B90EC
object_a_802B90EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 13$
	nop
	la.u    $a0, o_13001850
	jal     objlib_8029F95C
	la.l    $a0, o_13001850
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x0100($t8)
13$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0100($t9)
	sw      $t0, 0x001C($sp)
	li      $at, 0x41700000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	li      $at, 0xBF800000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0158($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t3)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330688
	la.l    $a1, object_a_80330688
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A2320
	nop
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     object_a_802B8434
	li      $a0, 0x012C
	beqz    $v0, 49$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
49$:
	lw      $t4, 0x001C($sp)
	beqz    $t4, 70$
	nop
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x0124($t5)
	bnez    $t6, 70$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E27C
	lw      $a1, 0x001C($sp)
	li      $at, 0x43960000
	mtc1    $at, $f8
	nop
	c.lt.s  $f0, $f8
	nop
	bc1f    70$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B921C
object_a_802B921C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 21$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t9)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0010
	beqz    $at, 71$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	andi    $t4, $t3, 0x0001
	bnez    $t4, 69$
	nop
	sw      $0, 0x0018($sp)
34$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001A30
	la.l    $a2, o_13001A30
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0091
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	li      $at, 0x5555
	lw      $t5, 0x001C($sp)
	multu   $t7, $at
	lw      $t6, 0x00C8($t5)
	mflo    $t8
	addu    $t9, $t6, $t8
	sw      $t9, 0x00C8($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f6, 0x00F8($t0)
	swc1    $f6, 0x002C($t1)
	lw      $t2, 0x0018($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0003
	bnez    $at, 34$
	sw      $t3, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	lwc1    $f8, 0x00F8($t4)
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	sub.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F8($t4)
69$:
	b       74$
	nop
71$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802B935C
object_a_802B935C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 141$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 169$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 212$
	nop
	b       238$
	nop
19$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 82$
	nop
	jal     randsign
	nop
	sll     $t9, $v0, 11
	mtc1    $t9, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0100($t0)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x00F4($t1)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f18, $f0, $f16
	trunc.w.s $f4, $f18
	mfc1    $t3, $f4
	nop
	andi    $t4, $t3, 0x00FE
	sw      $t4, 0x00F8($t5)
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f0, $f6
	swc1    $f8, 0x0024($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    79$
	nop
	li      $at, 0x43000000
	mtc1    $at, $f12
	jal     objlib_802A2F14
	nop
	trunc.w.s $f18, $f0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mfc1    $t7, $f18
	b       82$
	sw      $t7, 0x0114($t8)
79$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0114($t9)
82$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00F8($t1)
	lw      $t2, 0x0154($t1)
	addiu   $t4, $t3, 0x003C
	slt     $at, $t2, $t4
	bnez    $at, 102$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
102$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F8($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t1, $t0, 0x003C
	bgez    $t1, 111$
	sra     $t3, $t1, 1
	addiu   $at, $t1, 0x0001
	sra     $t3, $at, 1
111$:
	slt     $at, $t9, $t3
	beqz    $at, 121$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x00D0($t2)
	lw      $t6, 0x0114($t2)
	addu    $t7, $t4, $t6
	b       127$
	sw      $t7, 0x00D0($t2)
121$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x00D0($t5)
	lw      $t0, 0x0114($t5)
	subu    $t1, $t8, $t0
	sw      $t1, 0x00D0($t5)
127$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00D2($t9)
	lwc1    $f10, 0x00B8($t9)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_sin)($at)
	neg.s   $f18, $f16
	mul.s   $f4, $f10, $f18
	swc1    $f4, 0x00B0($t9)
	b       238$
	nop
141$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00C8($t7)
	lwc1    $f16, 0x0100($t7)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f8, $f16
	trunc.w.s $f18, $f10
	mfc1    $t0, $f18
	nop
	sw      $t0, 0x00C8($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x000F
	lw      $t5, 0x0154($t1)
	bne     $t5, $at, 167$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t6, $t4, 0x0001
	sw      $t6, 0x014C($t3)
167$:
	b       238$
	nop
169$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00F8($t9)
	lw      $t2, 0x0154($t9)
	addiu   $t0, $t8, 0x003C
	slt     $at, $t2, $t0
	bnez    $at, 185$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t1, 0x014C($t7)
	addiu   $t5, $t1, 0x0001
	sw      $t5, 0x014C($t7)
185$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00F8($t4)
	lw      $t6, 0x0154($t4)
	addiu   $t9, $t3, 0x003C
	bgez    $t9, 194$
	sra     $t8, $t9, 1
	addiu   $at, $t9, 0x0001
	sra     $t8, $at, 1
194$:
	slt     $at, $t6, $t8
	beqz    $at, 204$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t0, 0x00D0($t2)
	lw      $t1, 0x0114($t2)
	subu    $t5, $t0, $t1
	b       210$
	sw      $t5, 0x00D0($t2)
204$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x00D0($t7)
	lw      $t3, 0x0114($t7)
	addu    $t9, $t4, $t3
	sw      $t9, 0x00D0($t7)
210$:
	b       238$
	nop
212$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00C8($t6)
	lwc1    $f8, 0x0100($t6)
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f16, $f6, $f8
	trunc.w.s $f10, $f16
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x00C8($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x000F
	lw      $t2, 0x0154($t5)
	bne     $t2, $at, 236$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
236$:
	b       238$
	nop
238$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00D2($t3)
	lwc1    $f18, 0x00B8($t3)
	sra     $t7, $t9, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	neg.s   $f6, $f4
	mul.s   $f8, $f18, $f6
	swc1    $f8, 0x00B0($t3)
	jal     objlib_802A2644
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0068($t0)
	lw      $t6, 0x014C($t1)
	bne     $t6, $at, 262$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
262$:
	b       264$
	nop
264$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B9790
object_a_802B9790:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 69$
	nop
	b       74$
	nop
16$:
	lui     $t7, %hi(object_80361250)
	lh      $t7, %lo(object_80361250)($t7)
	li      $at, 0x000F
	beq     $t7, $at, 24$
	nop
	li      $at, 0x0007
	bne     $t7, $at, 52$
	nop
24$:
	sw      $0, 0x0038($sp)
25$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t0, o_13001B2C
	la.l    $t0, o_13001B2C
	li      $t9, 0x00B9
	sw      $t9, 0x0014($sp)
	sw      $t0, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x012C
	move    $a2, $0
	li      $a3, -0x00C8
	jal     obj_make_off
	sw      $t8, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x003C($sp)
	jal     objlib_802A2FC0
	li      $a1, 0x43480000
	lw      $t1, 0x0038($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x000F
	bnez    $at, 25$
	sw      $t2, 0x0038($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
52$:
	b       74$
	nop
54$:
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	li      $at, 0x000F
	beq     $t6, $at, 67$
	nop
	li      $at, 0x0007
	beq     $t6, $at, 67$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
67$:
	b       74$
	nop
69$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	b       74$
	nop
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_a_802B98D4:
	lwc1    $f4, 0x0000($a1)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($a1)
	swc1    $f6, 0x0004($a0)
	lwc1    $f8, 0x0008($a1)
	swc1    $f8, 0x0008($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B98FC
object_a_802B98FC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 11$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0041
	sw      $t8, 0x0144($t9)
11$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	sw      $t2, 0x003C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0188($t3)
	sra     $t5, $t4, 24
	andi    $t6, $t5, 0x00FF
	sw      $t6, 0x0034($sp)
	sw      $0, 0x0030($sp)
25$:
	lw      $t7, 0x0030($sp)
	bnez    $t7, 38$
	nop
	lw      $t8, 0x0034($sp)
	lui     $t0, %hi(object_a_803306B4+0x00)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(object_a_803306B4+0x00)($t0)
	subu    $t1, $0, $t0
	b       46$
	sw      $t1, 0x0038($sp)
38$:
	lw      $t2, 0x0034($sp)
	lui     $t4, %hi(object_a_803306B4+0x00)
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(object_a_803306B4+0x00)($t4)
	sw      $t4, 0x0038($sp)
46$:
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x003C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	multu   $t5, $t6
	la.u    $t9, o_13001B88
	la.l    $t9, o_13001B88
	li      $t8, 0x00CA
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	move    $a1, $0
	lw      $a3, 0x0038($sp)
	move    $a0, $t5
	sw      $t7, 0x0010($sp)
	mflo    $a2
	jal     obj_make_off
	nop
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x0034($sp)
	lui     $at, %hi(object_a_803306B4+0x10)
	lw      $t2, 0x002C($sp)
	sll     $t1, $t0, 2
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(object_a_803306B4+0x10)($at)
	swc1    $f4, 0x01AC($t2)
	lw      $t3, 0x0034($sp)
	lw      $a0, 0x002C($sp)
	la.u    $t6, object_a_803306B4+0x00
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addiu   $t5, $t4, 0x0004
	la.l    $t6, object_a_803306B4+0x00
	addu    $a1, $t5, $t6
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x002C
	lw      $t7, 0x0030($sp)
	addiu   $t8, $t7, 0x0001
	slti    $at, $t8, 0x0002
	bnez    $at, 25$
	sw      $t8, 0x0030($sp)
	b       91$
	nop
91$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_a_802B9A78:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00C4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slt     $at, $a2, $t1
	beqz    $at, 28$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
28$:
	b       30$
	nop
30$:
	jr      $ra
	nop

object_a_802B9AF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t7, 0x001E($sp)
	sw      $t7, 0x0114($t8)
	jal     objlib_802A3674
	lh      $a0, 0x001E($sp)
	li      $t9, 0x8000
	div     $0, $t9, $v0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mflo    $t0
	lw      $t2, 0x0154($t1)
	bnez    $v0, 24$
	nop
	break   7
24$:
	li      $at, -0x0001
	bne     $v0, $at, 30$
	li      $at, 0x80000000
	bne     $t9, $at, 30$
	nop
	break   6
30$:
	addiu   $t3, $t2, 0x0001
	bne     $t0, $t3, 37$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0018($sp)
	sw      $t4, 0x014C($t5)
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0018($sp)
	sw      $t6, 0x00F8($t7)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802B9BB4
object_a_802B9BB4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0144($t7)
	sw      $t8, 0x00FC($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802B9BD8
object_a_802B9BD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x01AC($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f6, $f8
	nop
	bc1f    22$
	nop
	li.u    $a0, 0x400D0001
	jal     object_levelsound
	li.l    $a0, 0x400D0001
22$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	sltiu   $at, $t0, 0x0005
	beqz    $at, 76$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_a_80337B90)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_a_80337B90)($at)
	jr      $t0
	nop
.globl L802B9C60
L802B9C60:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, 44$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	b       48$
	sw      $t3, 0x014C($t4)
44$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
48$:
	b       76$
	nop
.globl L802B9CA0
L802B9CA0:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a0, 0x0002
	li      $a1, 0x41200000
	jal     object_a_802B9A78
	lw      $a2, 0x00FC($t7)
	b       76$
	nop
.globl L802B9CC0
L802B9CC0:
	li      $a0, 0x0003
	jal     object_a_802B9AF8
	li      $a1, 0x0200
	b       76$
	nop
.globl L802B9CD4
L802B9CD4:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a0, 0x0004
	li      $a1, 0xC1200000
	jal     object_a_802B9A78
	lw      $a2, 0x00FC($t8)
	b       76$
	nop
.globl L802B9CF4
L802B9CF4:
	li      $a0, 0x0001
	jal     object_a_802B9AF8
	li      $a1, -0x0200
	b       76$
	nop
76$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     objlib_802A3674
	lw      $a0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	lw      $t1, 0x00C4($t0)
	addu    $t2, $t1, $s0
	sw      $t2, 0x00C4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     objlib_802A3674
	lw      $a0, 0x0114($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	move    $s0, $v0
	lw      $t5, 0x00D0($t4)
	addu    $t6, $t5, $s0
	sw      $t6, 0x00D0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	sw      $t8, 0x00D4($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00C4($t9)
	beqz    $t1, 145$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	jal     objlib_802A3604
	lw      $a0, 0x0114($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	move    $s0, $v0
	mtc1    $s0, $f16
	lhu     $t3, 0x00C6($t0)
	lui     $at, %hi(math_sin)
	cvt.s.w $f18, $f16
	sra     $t5, $t3, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f6, 0x0024($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     objlib_802A3604
	lw      $a0, 0x0114($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $s0, $v0
	mtc1    $s0, $f10
	lhu     $t7, 0x00C6($t8)
	lui     $at, %hi(math_cos)
	cvt.s.w $f18, $f10
	sra     $t9, $t7, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	lwc1    $f6, 0x0024($sp)
	mul.s   $f4, $f16, $f18
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t8)
145$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x00F8($t2)
	bne     $t3, $at, 164$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x8000
	lw      $t0, 0x00D0($t6)
	and     $t4, $t0, $at
	sw      $t4, 0x00D0($t6)
	jal     objlib_802A2644
	nop
	b       166$
	nop
164$:
	jal     objlib_802A2644
	nop
166$:
	jal     object_map_load
	nop
	b       170$
	nop
170$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802B9E94
object_a_802B9E94:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(wave_8036131C)
	lb      $t6, %lo(wave_8036131C)($t6)
	andi    $t7, $t6, 0x0002
	beqz    $t7, 14$
	nop
	la.u    $a0, 0x0707768C
	jal     segment_to_virtual
	la.l    $a0, 0x0707768C
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       20$
	sw      $v0, 0x0218($t8)
14$:
	la.u    $a0, 0x070775B4
	jal     segment_to_virtual
	la.l    $a0, 0x070775B4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0218($t9)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802B9EFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, 138$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337BA4)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337BA4)($at)
	jr      $t7
	nop
.globl L802B9F34
L802B9F34:
	jal     objlib_802A3754
	nop
	beqz    $v0, 25$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x014C($t8)
	jal     objlib_802A37AC
	nop
25$:
	b       138$
	nop
.globl L802B9F68
L802B9F68:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0004
	beqz    $at, 41$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t3)
	sub.s   $f8, $f4, $f6
	b       46$
	swc1    $f8, 0x00A4($t3)
41$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
46$:
	b       138$
	nop
.globl L802B9FBC
L802B9FBC:
	la.u    $a0, o_13001C04
	jal     objlib_8029F95C
	la.l    $a0, o_13001C04
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, 65$
	nop
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x014C($t9)
	slti    $at, $t0, 0x0002
	beqz    $at, 65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t1, 0x014C($t8)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t8)
65$:
	b       138$
	nop
.globl L802BA008
L802BA008:
	la.u    $a0, o_13001C04
	jal     objlib_8029F95C
	la.l    $a0, o_13001C04
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, 88$
	nop
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x014C($t5)
	slti    $at, $t6, 0x0002
	bnez    $at, 88$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x014C($t4)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x014C($t4)
	jal     save_set_flag
	li      $a0, 0x0200
	jal     Na_Solution
	nop
88$:
	b       138$
	nop
.globl L802BA064
L802BA064:
	li.u    $a0, 0x41160001
	jal     object_levelsound
	li.l    $a0, 0x41160001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x012C
	beqz    $at, 129$
	nop
	la.u    $t2, water_table
	la.l    $t2, water_table
	lw      $t8, 0x0008($t2)
	lui     $at, %hi(object_a_80337BBC)
	lwc1    $f14, %lo(object_a_80337BBC)($at)
	mtc1    $t8, $f10
	li      $a2, 0x40A00000
	jal     objlib_8029E494
	cvt.s.w $f12, $f10
	trunc.w.s $f16, $f0
	la.u    $t6, water_table
	la.l    $t6, water_table
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x0008($t6)
	la.u    $t7, water_table
	la.l    $t7, water_table
	lw      $t9, 0x0000($t7)
	lui     $at, %hi(object_a_80337BC0)
	lwc1    $f14, %lo(object_a_80337BC0)($at)
	mtc1    $t9, $f18
	li      $a2, 0x40A00000
	jal     objlib_8029E494
	cvt.s.w $f12, $f18
	trunc.w.s $f4, $f0
	la.u    $t1, water_table
	la.l    $t1, water_table
	mfc1    $t0, $f4
	b       134$
	sw      $t0, 0x0000($t1)
129$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t8, 0x014C($t2)
	addiu   $t3, $t8, 0x0001
	sw      $t3, 0x014C($t2)
134$:
	b       138$
	nop
.globl L802BA11C
L802BA11C:
	b       138$
	nop
138$:
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BA13C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 20$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	la.u    $t0, water_table
	la.l    $t0, water_table
	li      $t9, -0x0992
	sw      $t9, 0x0008($t0)
	la.u    $t2, water_table
	la.l    $t2, water_table
	li      $t1, -0x0992
	sw      $t1, 0x0000($t2)
20$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BA19C
object_a_802BA19C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_get_flag
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F8($t8)
11$:
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA1E0
object_a_802BA1E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	beqz    $t7, 11$
	nop
	jal     object_a_802BA13C
	nop
	b       13$
	nop
11$:
	jal     object_a_802B9EFC
	nop
13$:
	la.u    $t8, water_table
	la.l    $t8, water_table
	lui     $t0, %hi(waterp)
	lw      $t0, %lo(waterp)($t0)
	lw      $t9, 0x0008($t8)
	sh      $t9, 0x0024($t0)
	la.u    $t1, water_table
	la.l    $t1, water_table
	lui     $t3, %hi(waterp)
	lw      $t3, %lo(waterp)($t3)
	lw      $t2, 0x0000($t1)
	sh      $t2, 0x000C($t3)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA25C
object_a_802BA25C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_get_flag
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, 15$
	nop
	lui     $t8, %hi(waterp)
	lw      $t8, %lo(waterp)($t8)
	li      $t7, -0x0320
	sh      $t7, 0x000C($t8)
	lui     $t0, %hi(waterp)
	lw      $t0, %lo(waterp)($t0)
	li      $t9, -0x0320
	sh      $t9, 0x0018($t0)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_object_a_802BA2B0
s_object_a_802BA2B0:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	li      $at, 0x0001
	bne     $a0, $at, 12$
	nop
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t8, 0x0008($a1)
	lwc1    $f4, 0x00F4($t7)
	swc1    $f4, 0x0018($t8)
12$:
	b       16$
	move    $v0, $0
	b       16$
	nop
16$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BA2F8
object_a_802BA2F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     objlib_8029F4B4
	move    $a0, $0
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x0026
	beqz    $at, 17$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	b       73$
	swc1    $f4, 0x00F4($t9)
17$:
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0031
	beqz    $at, 27$
	nop
	lui     $at, %hi(object_a_80337BC4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_a_80337BC4)($at)
	b       73$
	swc1    $f6, 0x00F4($t1)
27$:
	lw      $t2, 0x001C($sp)
	slti    $at, $t2, 0x003A
	beqz    $at, 47$
	nop
	lw      $t3, 0x001C($sp)
	lui     $at, %hi(object_a_80337BC8)
	lwc1    $f16, %lo(object_a_80337BC8)($at)
	addiu   $t4, $t3, -0x0035
	mtc1    $t4, $f8
	lui     $at, %hi(object_a_80337BD0)
	ldc1    $f6, %lo(object_a_80337BD0)($at)
	cvt.s.w $f10, $f8
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f18, $f10, $f16
	cvt.d.s $f4, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	b       73$
	swc1    $f10, 0x00F4($t5)
47$:
	lw      $t6, 0x001C($sp)
	slti    $at, $t6, 0x003B
	beqz    $at, 57$
	nop
	lui     $at, %hi(object_a_80337BD8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, %lo(object_a_80337BD8)($at)
	b       73$
	swc1    $f16, 0x00F4($t7)
57$:
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x003C
	beqz    $at, 67$
	nop
	lui     $at, %hi(object_a_80337BDC)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, %lo(object_a_80337BDC)($at)
	b       73$
	swc1    $f18, 0x00F4($t9)
67$:
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t0)
73$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0097
	bnez    $at, 82$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
82$:
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BA458
object_a_802BA458:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lw      $t8, 0x001C($sp)
	slti    $at, $t8, 0x0026
	beqz    $at, 18$
	nop
	lui     $at, %hi(object_a_80337BE0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, %lo(object_a_80337BE0)($at)
	b       74$
	swc1    $f4, 0x00F4($t9)
18$:
	lw      $t0, 0x001C($sp)
	slti    $at, $t0, 0x0034
	beqz    $at, 38$
	nop
	lw      $t1, 0x001C($sp)
	lui     $at, %hi(object_a_80337BE4)
	lwc1    $f10, %lo(object_a_80337BE4)($at)
	addiu   $t2, $t1, -0x002A
	mtc1    $t2, $f6
	lui     $at, %hi(object_a_80337BE8)
	ldc1    $f4, %lo(object_a_80337BE8)($at)
	cvt.s.w $f8, $f6
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       74$
	swc1    $f8, 0x00F4($t3)
38$:
	lw      $t4, 0x001C($sp)
	slti    $at, $t4, 0x005E
	beqz    $at, 48$
	nop
	lui     $at, %hi(object_a_80337BF0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_a_80337BF0)($at)
	b       74$
	swc1    $f10, 0x00F4($t5)
48$:
	lw      $t6, 0x001C($sp)
	slti    $at, $t6, 0x0065
	beqz    $at, 69$
	nop
	lw      $t7, 0x001C($sp)
	li      $t8, 0x0065
	lui     $at, %hi(object_a_80337BF4)
	subu    $t9, $t8, $t7
	mtc1    $t9, $f16
	lwc1    $f4, %lo(object_a_80337BF4)($at)
	lui     $at, %hi(object_a_80337BF8)
	cvt.s.w $f18, $f16
	ldc1    $f10, %lo(object_a_80337BF8)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f18, $f4
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	b       74$
	swc1    $f18, 0x00F4($t0)
69$:
	lui     $at, %hi(object_a_80337C00)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, %lo(object_a_80337C00)($at)
	swc1    $f4, 0x00F4($t1)
74$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x008B
	bnez    $at, 83$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BA5BC
object_a_802BA5BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_get_flag
	nop
	andi    $t6, $v0, 0x0200
	beqz    $t6, 11$
	nop
	jal     objlib_802A04C0
	move    $a0, $0
	b       13$
	nop
11$:
	jal     object_map_load
	nop
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BA608
object_a_802BA608:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	sh      $t7, 0x001A($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00E8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	bnez    $t1, 38$
	nop
	lw      $t2, 0x001C($sp)
	lh      $t3, 0x0000($t2)
	bnez    $t3, 36$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0004
	bnez    $at, 36$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
36$:
	b       104$
	nop
38$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, 104$
	nop
	lw      $t1, 0x001C($sp)
	beqz    $t1, 104$
	nop
	lh      $t2, 0x0000($t1)
	li      $at, 0x00F4
	beq     $t2, $at, 57$
	nop
	li      $at, 0x00F5
	beq     $t2, $at, 57$
	nop
	li      $at, 0x00F6
	bne     $t2, $at, 104$
	nop
57$:
	la.u    $a0, o_13001C7C
	jal     objlib_802A14FC
	la.l    $a0, o_13001C7C
	beqz    $v0, 98$
	nop
	lhu     $t3, 0x001A($sp)
	slti    $at, $t3, 0x0AAA
	beqz    $at, 70$
	nop
	li      $t4, 0x0003
	lui     $at, %hi(object_80361258)
	b       98$
	sh      $t4, %lo(object_80361258)($at)
70$:
	lhu     $t5, 0x001A($sp)
	slti    $at, $t5, 0x6AA4
	beqz    $at, 78$
	nop
	li      $t7, 0x0001
	lui     $at, %hi(object_80361258)
	b       98$
	sh      $t7, %lo(object_80361258)($at)
78$:
	lhu     $t8, 0x001A($sp)
	li      $at, 0x954C
	slt     $at, $t8, $at
	beqz    $at, 87$
	nop
	li      $t6, 0x0002
	lui     $at, %hi(object_80361258)
	b       98$
	sh      $t6, %lo(object_80361258)($at)
87$:
	lhu     $t9, 0x001A($sp)
	li      $at, 0xF546
	slt     $at, $t9, $at
	beqz    $at, 95$
	nop
	lui     $at, %hi(object_80361258)
	b       98$
	sh      $0, %lo(object_80361258)($at)
95$:
	li      $t0, 0x0003
	lui     $at, %hi(object_80361258)
	sh      $t0, %lo(object_80361258)($at)
98$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	b       104$
	sw      $t3, 0x014C($t1)
104$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	slti    $at, $t5, 0x0002
	beqz    $at, 112$
	nop
	jal     objlib_802A2BC4
	nop
112$:
	b       114$
	nop
114$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BA7E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 28$
	nop
	jal     objlib_802A3F48
	nop
	beqz    $v0, 18$
	nop
	jal     objlib_802A188C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       28$
	sw      $0, 0x014C($t8)
18$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0078
	beqz    $t1, 28$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t3)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BA868:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 15$
	nop
	lui     $a0, %hi(mario)
	jal     collision_8024C8FC
	lw      $a0, %lo(mario)($a0)
	beqz    $v0, 15$
	nop
	b       19$
	li      $v0, 0x0001
15$:
	b       19$
	move    $v0, $0
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BA8C4:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, 29$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, 29$
	nop
	lui     $t0, %hi(s_camera)
	lw      $t0, %lo(s_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     objlib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     objlib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     objlib_8029F188
	lw      $a0, 0x006C($t2)
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_a_802BA958:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	bnez    $t8, 44$
	nop
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sw      $t0, 0x0150($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x00F4($t2)
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f4
	li      $at, 0x40000000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sh      $t4, 0x00F6($t5)
44$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $s0, 0x0150($t6)
	beq     $s0, $at, 61$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 72$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 96$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 119$
	nop
	b       130$
	nop
61$:
	jal     objlib_8029F4B4
	li      $a0, 0x0009
	jal     objlib_8029FF04
	nop
	beqz    $v0, 70$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
70$:
	b       130$
	nop
72$:
	jal     objlib_8029F4B4
	li      $a0, 0x0004
	jal     objlib_8029FF04
	nop
	beqz    $v0, 83$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x00F4($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x00F4($t8)
83$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x00F6($t1)
	lh      $t2, 0x00F4($t1)
	sll     $t4, $t3, 1
	slt     $at, $t2, $t4
	bnez    $at, 94$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0150($t5)
94$:
	b       130$
	nop
96$:
	jal     objlib_8029F4B4
	li      $a0, 0x0005
	jal     objlib_8029FF04
	nop
	beqz    $v0, 107$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x00F4($t6)
	addiu   $t9, $t7, 0x0001
	sh      $t9, 0x00F4($t6)
107$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t8, 0x00F4($t0)
	lh      $t1, 0x00F6($t0)
	slt     $at, $t8, $t1
	bnez    $at, 117$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0150($t3)
117$:
	b       130$
	nop
119$:
	jal     objlib_8029F4B4
	li      $a0, 0x000A
	jal     objlib_8029FF04
	nop
	beqz    $v0, 128$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0150($t2)
128$:
	b       130$
	nop
130$:
	b       132$
	nop
132$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BAB7C
object_a_802BAB7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	jal     object_a_802BA868
	nop
	beqz    $v0, 59$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    29$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    29$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	b       57$
	sw      $t7, 0x014C($t8)
29$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x442F0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t9)
	c.le.s  $f10, $f16
	nop
	bc1f    57$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    57$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	slti    $at, $v0, 0x1001
	bnez    $at, 57$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
57$:
	b       72$
	nop
59$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    72$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
72$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lh      $t7, 0x01AC($t6)
	bne     $t7, $at, 82$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
82$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0003
	lh      $t1, 0x01AC($t0)
	bne     $t1, $at, 152$
	nop
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x00C8($t2)
	li      $at, 0x8000
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t5)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, 109$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	b       148$
	sw      $t6, 0x014C($t7)
109$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x00C8($t8)
	addiu   $t0, $t9, 0x4000
	sw      $t0, 0x00C8($t1)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, 129$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	b       148$
	sw      $t2, 0x014C($t3)
129$:
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00C8($t4)
	addiu   $t6, $t5, -0x4000
	sw      $t6, 0x00C8($t7)
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     object_a_802B14F4
	nop
	beqz    $v0, 148$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
148$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0004
	sh      $t0, 0x01AC($t1)
152$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x0144($t2)
	bne     $t3, $at, 171$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_a_80337C04)
	lwc1    $f16, %lo(object_a_80337C04)($at)
	lwc1    $f8, 0x00A4($t4)
	c.lt.s  $f8, $f16
	nop
	bc1f    171$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0007
	sw      $t5, 0x014C($t6)
171$:
	b       173$
	nop
173$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BAE40
object_a_802BAE40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	move    $a0, $0
	jal     objlib_802A2748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337C08)
	lwc1    $f8, %lo(object_a_80337C08)($at)
	lwc1    $f6, 0x00A4($t8)
	c.lt.s  $f8, $f6
	nop
	bc1f    27$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BAEC4
object_a_802BAEC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	jal     objlib_802A3F48
	nop
	beqz    $v0, 13$
	nop
	jal     objlib_802A188C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BAF10
object_a_802BAF10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BA958
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t8)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BAF64
object_a_802BAF64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 18$
	nop
	jal     randf
	nop
	li      $at, 0x40400000
	mtc1    $at, $f4
	li      $at, 0x40000000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
18$:
	jal     objlib_8029F4B4
	li      $a0, 0x000B
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0800
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, 32$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
32$:
	jal     object_a_802BA868
	nop
	beqz    $v0, 51$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t2)
	c.lt.s  $f18, $f16
	nop
	bc1f    49$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
49$:
	b       64$
	nop
51$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    64$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BB07C
object_a_802BB07C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sh      $t9, 0x001A($sp)
	jal     object_a_802BA868
	nop
	beqz    $v0, 19$
	nop
	sw      $0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0160($t0)
	sh      $t1, 0x001A($sp)
19$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, 35$
	nop
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	li      $at, 0x43AF0000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0110($t4)
35$:
	jal     objlib_8029F4B4
	move    $a0, $0
	lh      $a0, 0x001A($sp)
	jal     objlib_8029E5EC
	li      $a1, 0x0800
	li      $at, 0x41A00000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337C0C)
	jal     objlib_8029FE00
	lwc1    $f14, %lo(object_a_80337C0C)($at)
	lw      $t5, 0x001C($sp)
	beqz    $t5, 62$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x015C($t6)
	lwc1    $f18, 0x0110($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
60$:
	b       74$
	nop
62$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x015C($t9)
	lwc1    $f6, 0x0110($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    74$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
74$:
	lw      $t2, 0x001C($sp)
	beqz    $t2, 125$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    125$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t6, $t5, 0x0200
	beqz    $t6, 105$
	nop
	jal     objlib_802A404C
	li      $a0, 0x000A
	beqz    $v0, 105$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	b       125$
	sw      $t0, 0x00C8($t9)
105$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, 125$
	nop
	jal     objlib_802A404C
	li      $a0, 0x000A
	beqz    $v0, 125$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x00C8($t6)
125$:
	b       127$
	nop
127$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BB288
object_a_802BB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     objlib_802A05B4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	bnez    $t8, 52$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 34$
	nop
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	li      $at, 0x42340000
	mul.s   $f8, $f20, $f6
	mtc1    $at, $f10
	li      $a1, 0x0008
	jal     objlib_802A0198
	add.s   $f12, $f8, $f10
	b       50$
	nop
34$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0053
	beqz    $t3, 50$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0150($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t7)
50$:
	b       69$
	nop
52$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t8)
	jal     objlib_8029F4B4
	li      $a0, 0x0007
	jal     objlib_802A05D4
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 69$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BB3B8
object_a_802BB3B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0020($sp)
	sh      $0, 0x001E($sp)
	la.u    $a0, o_13000F14
	jal     objlib_8029F95C
	la.l    $a0, o_13000F14
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	beqz    $t6, 25$
	nop
	lw      $t7, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E27C
	lw      $a1, 0x0068($t7)
	swc1    $f0, 0x0020($sp)
	lw      $t8, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E694
	lw      $a1, 0x0068($t8)
	sh      $v0, 0x001E($sp)
25$:
	jal     objlib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x008C($t9)
	ori     $t1, $t0, 0x0080
	sw      $t1, 0x008C($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	sltiu   $at, $t3, 0x0008
	beqz    $at, 242$
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(object_a_80337C10)
	addu    $at, $at, $t3
	lw      $t3, %lo(object_a_80337C10)($at)
	jr      $t3
	nop
.globl L802BB468
L802BB468:
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t4, object_a_803306DC
	la.l    $t4, object_a_803306DC
	sw      $t4, 0x00FC($t5)
	jal     objlib_802A2C5C
	move    $a0, $0
	li      $at, -0x0001
	beq     $v0, $at, 72$
	nop
	li      $at, 0x41200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x010C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00E8($t8)
	b       82$
	swc1    $f8, 0x00A4($t8)
72$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x0150($t1)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0150($t1)
82$:
	b       242$
	nop
.globl L802BB508
L802BB508:
	jal     objlib_8029F4B4
	li      $a0, 0x0005
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t3)
	li      $at, 0x43480000
	mtc1    $at, $f12
	li      $at, 0x41F00000
	mtc1    $at, $f14
	jal     objlib_802A47A0
	li      $a2, 0x7FFF
	beqz    $v0, 105$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t6, $t5, 0x0001
	b       L802BB564
	sw      $t6, 0x0150($t4)
105$:
	b       242$
	nop
.globl L802BB564
L802BB564:
	jal     objlib_8029F4B4
	li      $a0, 0x000A
	li      $a0, 0x0003
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0050
	beqz    $v0, 121$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0150($t7)
121$:
	b       242$
	nop
.globl L802BB5A4
L802BB5A4:
	jal     objlib_8029F4B4
	move    $a0, $0
	lh      $a0, 0x001E($sp)
	jal     objlib_8029E5EC
	li      $a1, 0x0400
	beqz    $v0, 141$
	nop
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0150($t2)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0150($t2)
141$:
	b       242$
	nop
.globl L802BB5F4
L802BB5F4:
	li      $at, 0x425C0000
	mtc1    $at, $f12
	jal     objlib_802A0198
	li      $a1, 0x0008
	li      $at, 0x42100000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t4, 0x0150($t6)
	addiu   $t8, $t4, 0x0001
	sw      $t8, 0x0150($t6)
	b       242$
	nop
.globl L802BB638
L802BB638:
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    172$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
172$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00EC($t7)
	andi    $t1, $t9, 0x0001
	beqz    $t1, 200$
	nop
	jal     Na_Solution
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0005
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0150($t3)
	addiu   $t5, $t2, 0x0001
	sw      $t5, 0x0150($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t4, 0x0020
	sh      $t4, 0x01B0($t8)
	lw      $t0, 0x0024($sp)
	li      $t6, 0x0001
	lw      $t7, 0x0068($t0)
	sw      $t6, 0x0088($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t9)
200$:
	b       242$
	nop
.globl L802BB6E0
L802BB6E0:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t5, $t2, 0x0800
	sw      $t5, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x01B0($t3)
	addiu   $t8, $t4, -0x0001
	sh      $t8, 0x01B0($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t6, 0x01B0($t0)
	bgez    $t6, 226$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x0150($t7)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x0150($t7)
	lw      $t1, 0x0024($sp)
	li      $t5, 0x0002
	lw      $t4, 0x0068($t1)
	sw      $t5, 0x0088($t4)
226$:
	b       242$
	nop
.globl L802BB748
L802BB748:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337C30)
	lwc1    $f18, %lo(object_a_80337C30)($at)
	lwc1    $f16, 0x00A4($t8)
	c.lt.s  $f16, $f18
	nop
	bc1f    240$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
240$:
	b       242$
	nop
242$:
	b       244$
	nop
244$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BB798:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_803307A0
	jal     objlib_802A3E30
	la.l    $a0, object_a_803307A0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0004
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 16$
	nop
	li      $at, 0x0007
	bne     $t7, $at, 19$
	nop
16$:
	li      $t8, -0x0058
	b       21$
	sw      $t8, 0x001C($sp)
19$:
	li      $t9, -0x0014
	sw      $t9, 0x001C($sp)
21$:
	jal     objlib_802A2348
	lw      $a0, 0x001C($sp)
	jal     object_a_802BA7E0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0078
	bnez    $t2, 34$
	nop
	la.u    $a0, object_a_80330738
	jal     object_stepsound
	la.l    $a0, object_a_80330738
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BB838:
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	li      $at, 0x0032
	divu    $0, $t6, $at
	mfhi    $t7
	sltiu   $at, $t7, 0x0007
	beqz    $at, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       16$
	sw      $t8, 0x00F0($t9)
13$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F0($t0)
16$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802BB888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC2C80000
	mtc1    $at, $f10
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0168($t6)
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    92$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $s0, 0x01AC($t7)
	beqz    $s0, 30$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 74$
	nop
	li      $at, 0x0006
	beq     $s0, $at, 76$
	nop
	b       90$
	nop
30$:
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, 41$
	nop
	jal     msg_open_prompt
	li      $a0, 0x004F
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sh      $t8, 0x01AC($t9)
41$:
	b       90$
	nop
43$:
	lui     $t0, %hi(msg_answer)
	lw      $t0, %lo(msg_answer)($t0)
	beqz    $t0, 72$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t1, %hi(msg_answer)
	lw      $t1, %lo(msg_answer)($t1)
	li      $at, 0x0001
	bne     $t1, $at, 64$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0190($t2)
	ori     $t4, $t3, 0x0040
	sw      $t4, 0x0190($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	b       72$
	sh      $t5, 0x01AC($t6)
64$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sh      $t7, 0x01AC($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x003C
	sh      $t9, 0x01AE($t0)
72$:
	b       90$
	nop
74$:
	b       90$
	nop
76$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $s0, 0x01AE($t1)
	lh      $t4, 0x01AE($t1)
	slti    $t3, $s0, 0x0000
	move    $s0, $t3
	addiu   $t2, $t4, -0x0001
	beqz    $s0, 88$
	sh      $t2, 0x01AE($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x01AC($t5)
88$:
	b       90$
	nop
90$:
	b       102$
	nop
92$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
102$:
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBA3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lhu     $t7, 0x01AC($t6)
	sltiu   $at, $t7, 0x0008
	beqz    $at, L802BBB80
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337C34)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337C34)($at)
	jr      $t7
	nop
.globl L802BBA74
L802BBA74:
	jal     collision_8024CA68
	li      $a0, 0x0002
	beqz    $v0, 28$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0007
	sh      $t8, 0x01AC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B2($t0)
	ori     $t2, $t1, 0x0001
	b       28$
	sh      $t2, 0x01B2($t0)
28$:
	b       L802BBB80
	nop
.globl L802BBAB4
L802BBAB4:
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x0064
	jal     objlib_802A4960
	move    $a3, $0
	beqz    $v0, 46$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0190($t3)
	ori     $t5, $t4, 0x0040
	sw      $t5, 0x0190($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sh      $t6, 0x01AC($t7)
46$:
	b       L802BBB80
	nop
.globl L802BBAFC
L802BBAFC:
	b       L802BBB80
	nop
.globl L802BBB04
L802BBB04:
	li      $a0, 0x0002
	li      $a1, 0x0012
	li      $a2, 0x0065
	jal     objlib_802A4960
	move    $a3, $0
	beqz    $v0, 71$
	nop
	jal     collision_8024CAF8
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0002
	lh      $t9, 0x01B2($t8)
	and     $t1, $t9, $at
	sh      $t1, 0x01B2($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0005
	sh      $t2, 0x01AC($t0)
71$:
	b       L802BBB80
	nop
.globl L802BBB60
L802BBB60:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x01AC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	b       L802BBB80
	nop
.globl L802BBB80
L802BBB80:
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BBB98
object_a_802BBB98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 23$
	nop
	jal     save_get_flag
	nop
	li      $at, 0x00040000
	and     $t8, $v0, $at
	beqz    $t8, 23$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sh      $t9, 0x01AC($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x01B2($t1)
	ori     $t3, $t2, 0x0001
	sh      $t3, 0x01B2($t1)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BBC0C
object_a_802BBC0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 26$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 48$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 48$
	nop
	b       52$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01AE($t7)
	jal     object_a_802BB798
	nop
	b       52$
	nop
26$:
	li      $a0, 0x000C
	jal     objlib_802A01D8
	move    $a1, $0
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x0144($t8)
	bne     $t9, $at, 44$
	nop
	jal     object_a_802BBA3C
	nop
	b       46$
	nop
44$:
	jal     object_a_802BB888
	nop
46$:
	b       52$
	nop
48$:
	jal     objlib_802A0474
	nop
	b       52$
	nop
52$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x01B2($t0)
	andi    $t2, $t1, 0x0001
	beqz    $t2, 63$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	b       66$
	sw      $t3, 0x00F0($t4)
63$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F0($t5)
66$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a0, str_object_a_mode
	la.l    $a0, str_object_a_mode
	jal     db_put_err
	lw      $a1, 0x014C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a0, str_object_a_action
	la.l    $a0, str_object_a_action
	jal     db_put_err
	lw      $a1, 0x0124($t8)
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBD6C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t7, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	sll     $t8, $t7, 1
	addu    $t9, $t6, $t8
	lh      $s0, 0x0000($t9)
	beq     $s0, $at, 97$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 138$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 24$
	nop
	b       146$
	nop
24$:
	lw      $t1, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	lui     $t5, %hi(object)
	sll     $t2, $t1, 1
	addu    $t3, $t0, $t2
	lh      $t4, 0x0004($t3)
	lw      $t5, %lo(object)($t5)
	sw      $t4, 0x00C8($t5)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t8, $t6, 1
	addu    $t9, $t7, $t8
	lh      $t1, 0x0006($t9)
	mtc1    $at, $f8
	lui     $t0, %hi(object)
	mtc1    $t1, $f4
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t0)
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 55$
	nop
	lw      $t2, 0x002C($sp)
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x002C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0154($t4)
55$:
	b       146$
	nop
57$:
	lw      $t6, 0x002C($sp)
	lw      $t5, 0x0028($sp)
	lui     $t1, %hi(object)
	sll     $t7, $t6, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0004($t8)
	lw      $t1, %lo(object)($t1)
	sw      $t9, 0x00C8($t1)
	lw      $t2, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t3, $t2, 1
	addu    $t4, $t0, $t3
	lh      $t6, 0x0006($t4)
	mtc1    $at, $f4
	lui     $t5, %hi(object)
	mtc1    $t6, $f16
	lw      $t5, %lo(object)($t5)
	cvt.s.w $f18, $f16
	div.s   $f6, $f18, $f4
	swc1    $f6, 0x00B8($t5)
	lw      $t1, 0x002C($sp)
	lw      $t9, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sll     $t2, $t1, 1
	addu    $t0, $t9, $t2
	lh      $t3, 0x0002($t0)
	lw      $t8, 0x0154($t7)
	slt     $at, $t3, $t8
	beqz    $at, 95$
	nop
	lw      $t4, 0x002C($sp)
	addiu   $t6, $t4, 0x0004
	sw      $t6, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0154($t5)
95$:
	b       146$
	nop
97$:
	lw      $t1, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x42C80000
	sll     $t9, $t1, 1
	addu    $t2, $t7, $t9
	lh      $t0, 0x0004($t2)
	lh      $t8, 0x0006($t2)
	mtc1    $at, $f16
	mtc1    $t0, $f8
	mtc1    $t8, $f4
	lui     $a0, %hi(object)
	cvt.s.w $f10, $f8
	mtc1    $at, $f8
	lw      $a0, %lo(object)($a0)
	cvt.s.w $f6, $f4
	addiu   $a0, $a0, 0x00B8
	div.s   $f18, $f10, $f16
	div.s   $f10, $f6, $f8
	mfc1    $a1, $f18
	mfc1    $a2, $f10
	jal     objlib_8029E3E8
	nop
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sll     $t1, $t5, 1
	addu    $t7, $t6, $t1
	lh      $t9, 0x0002($t7)
	lw      $t4, 0x0154($t3)
	slt     $at, $t9, $t4
	beqz    $at, 136$
	nop
	lw      $t0, 0x002C($sp)
	addiu   $t2, $t0, 0x0004
	sw      $t2, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
136$:
	b       146$
	nop
138$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	sw      $0, 0x002C($sp)
	b       146$
	nop
146$:
	b       150$
	lw      $v0, 0x002C($sp)
	b       150$
	nop
150$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BBFD8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 26$
	nop
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	slti    $at, $t7, 0x4000
	beqz    $at, 21$
	nop
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x0000($t8)
	addu    $t1, $t9, $t0
	b       24$
	sw      $t1, 0x0000($t8)
21$:
	lw      $t3, 0x0018($sp)
	li      $t2, 0x4000
	sw      $t2, 0x0000($t3)
24$:
	b       38$
	nop
26$:
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0000($t4)
	blez    $t5, 36$
	nop
	lw      $t6, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	lw      $t7, 0x0000($t6)
	subu    $t0, $t7, $t9
	b       38$
	sw      $t0, 0x0000($t6)
36$:
	lw      $t1, 0x0018($sp)
	sw      $0, 0x0000($t1)
38$:
	lw      $t8, 0x0018($sp)
	lw      $t5, 0x0024($sp)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x0002($t8)
	mtc1    $t5, $f6
	lw      $t7, 0x001C($sp)
	sra     $t3, $t2, 4
	cvt.s.w $f8, $f6
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($t7)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	beqz    $t0, 58$
	nop
	li      $at, 0x4000
	bne     $t0, $at, 62$
	nop
58$:
	b       66$
	li      $v0, 0x0001
	b       64$
	nop
62$:
	b       66$
	move    $v0, $0
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC0F0
object_a_802BC0F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	b       28$
	sw      $t1, 0x014C($t9)
16$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $a0, %hi(object_a_80330828)
	lw      $t3, 0x0144($t2)
	lw      $a1, 0x00F8($t2)
	sll     $t4, $t3, 2
	addu    $a0, $a0, $t4
	jal     object_a_802BBD6C
	lw      $a0, %lo(object_a_80330828)($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00F8($t5)
28$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, str_object_a_number
	la.l    $a0, str_object_a_number
	jal     db_put
	lw      $a1, 0x00F8($t6)
	jal     objlib_802A2644
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x0400
	li      $a3, -0x0050
	addiu   $a0, $t7, 0x0104
	jal     object_a_802BBFD8
	addiu   $a1, $t7, 0x0108
	beqz    $v0, 65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	addiu   $t1, $t0, 0x0800
	sw      $t1, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t3, 0x00F6($t9)
	lwc1    $f10, 0x0100($t9)
	sra     $t4, $t3, 4
	sll     $t2, $t4, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40000000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x0100($t9)
65$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x0100($t5)
	lwc1    $f4, 0x0168($t5)
	lwc1    $f10, 0x0108($t5)
	add.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A4($t5)
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC22C
object_a_802BC22C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x007C
	li      $a3, -0x006E
	addiu   $a0, $t6, 0x0104
	jal     object_a_802BBFD8
	addiu   $a1, $t6, 0x0108
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00DC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0108($t8)
	lwc1    $f8, 0x0168($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t8)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC294
object_a_802BC294:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F4($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00F8($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00FC($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	lw      $a3, 0x001C($sp)
	jal     objlib_8029F6E0
	lw      $a0, 0x0068($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0068($t0)
	lwc1    $f10, 0x00A4($t1)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0003
	lw      $t3, 0x0068($t2)
	lw      $t4, 0x014C($t3)
	bne     $t4, $at, 39$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BC348:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lhu     $t6, 0x0032($sp)
	lui     $at, %hi(math_sin)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lhu     $t9, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, 33$
	nop
	li      $t4, 0x0004
	b       35$
	sw      $t4, 0x0020($sp)
33$:
	li      $t5, 0x0003
	sw      $t5, 0x0020($sp)
35$:
	lw      $t6, 0x0020($sp)
	sw      $0, 0x0024($sp)
	blez    $t6, 101$
	nop
39$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001DCC
	la.l    $a2, o_13001DCC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	sw      $v0, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x00F4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t8)
	lw      $t9, 0x002C($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t9)
	lw      $t0, 0x002C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f4, 0x00FC($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t0)
	lw      $a0, 0x002C($sp)
	li      $a1, 0x40C00000
	li      $a2, 0x40C00000
	jal     objlib_8029F3D0
	li      $a3, 0x40C00000
	lhu     $t1, 0x0032($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43160000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x001C($sp)
	lhu     $t4, 0x0032($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0018($sp)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43160000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t7, 0x0024($sp)
	lw      $t9, 0x0020($sp)
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $t9
	bnez    $at, 39$
	sw      $t8, 0x0024($sp)
101$:
	b       103$
	nop
103$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BC4F4
object_a_802BC4F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337C54)
	lwc1    $f6, %lo(object_a_80337C54)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
13$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BC538
object_a_802BC538:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BC348
	move    $a0, $0
	jal     object_a_802BC348
	li      $a0, -0x8000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00C8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC590
object_a_802BC590:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0100
	sw      $t6, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	lw      $t0, 0x0118($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x00C8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x45480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    23$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
23$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BC5FC
object_a_802BC5FC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BC618
object_a_802BC618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330830
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330830
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 12$
	nop
	jal     object_map_load
	nop
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC660
object_a_802BC660:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 14$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t9)
	lwc1    $f4, 0x00A4($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x40400000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A4($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t5, $t4, 0x0400
	sw      $t5, 0x00F4($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	bne     $t8, $at, 44$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BC728
object_a_802BC728:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 65$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 80$
	nop
	b       85$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337C58)
	lwc1    $f6, %lo(object_a_80337C58)($at)
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    63$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0038($sp)
27$:
	lw      $a1, 0x0038($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t9, $a1, 2
	addu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $a1
	sll     $t9, $t9, 2
	la.u    $t2, o_13001E04
	la.l    $t2, o_13001E04
	move    $a1, $t9
	li      $t1, 0x0035
	sw      $t1, 0x0014($sp)
	addiu   $a1, $a1, -0x0258
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t0, 0x0010($sp)
	sw      $v0, 0x003C($sp)
	lw      $t3, 0x0038($sp)
	lw      $t5, 0x003C($sp)
	sll     $t4, $t3, 12
	sw      $t4, 0x00F4($t5)
	lw      $t6, 0x0038($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, 27$
	sw      $t7, 0x0038($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
63$:
	b       85$
	nop
65$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337C5C)
	lwc1    $f10, %lo(object_a_80337C5C)($at)
	lwc1    $f8, 0x015C($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    78$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
78$:
	b       85$
	nop
80$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	b       85$
	nop
85$:
	b       87$
	nop
87$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802BC898
object_a_802BC898:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A0604
	nop
	jal     objlib_802A1308
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A8($t7)
	lwc1    $f16, 0x00B4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t7)
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337C60)
	lwc1    $f14, %lo(object_a_80337C60)($at)
	jal     objlib_802A0E68
	li      $a2, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0033
	beqz    $t0, 33$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BC934:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13001E4C
	la.l    $a2, o_13001E4C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(object_a_80337C64)
	lwc1    $f6, %lo(object_a_80337C64)($at)
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	jal     rand
	nop
	lw      $t9, 0x001C($sp)
	sll     $t7, $v0, 16
	sra     $t8, $t7, 16
	sw      $t8, 0x00C8($t9)
	jal     randf
	nop
	li      $at, 0x42200000
	mtc1    $at, $f10
	li      $at, 0x41A00000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lw      $t0, 0x001C($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t0)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $at, 0x41200000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lw      $t1, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t1)
	jal     randf
	nop
	li      $at, 0x40180000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	li      $at, 0x40080000
	mul.d   $f6, $f18, $f4
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     objlib_8029F3D0
	nop
	jal     randf
	nop
	lui     $at, %hi(object_a_80337C68)
	ldc1    $f6, %lo(object_a_80337C68)($at)
	cvt.d.s $f4, $f0
	c.lt.d  $f4, $f6
	nop
	bc1f    74$
	nop
	li.u    $a0, 0x300C8081
	jal     object_playsound
	li.l    $a0, 0x300C8081
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BCA74
object_a_802BCA74:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x457A0000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0194($t6)
	li      $at, 0x45FA0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x019C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x014C($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, 140$
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_a_80337C70)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_a_80337C70)($at)
	jr      $t9
	nop
.globl L802BCADC
L802BCADC:
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0214($t0)
	bne     $t1, $t2, 38$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
38$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x0118($t7)
	b       140$
	nop
.globl L802BCB24
L802BCB24:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 7
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t4, $t2, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43800000
	mtc1    $at, $f10
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	sub.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sw      $t3, 0x0118($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0081
	bnez    $at, 74$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
74$:
	b       140$
	nop
.globl L802BCBA4
L802BCBA4:
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x0214($t2)
	beq     $t4, $t5, 88$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t8, 0x014C($t3)
	addiu   $t6, $t8, 0x0001
	sw      $t6, 0x014C($t3)
88$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0081
	bnez    $at, 99$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t9, 0x014C($t1)
	addiu   $t2, $t9, 0x0001
	sw      $t2, 0x014C($t1)
99$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0118($t4)
	jal     object_a_802BC934
	nop
	b       140$
	nop
.globl L802BCC1C
L802BCC1C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x0154($t5)
	sll     $t6, $t8, 7
	andi    $t3, $t6, 0xFFFF
	sra     $t7, $t3, 4
	sll     $t0, $t7, 2
	addu    $at, $at, $t0
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43800000
	mtc1    $at, $f10
	nop
	mul.s   $f18, $f8, $f10
	trunc.w.s $f16, $f18
	mfc1    $t2, $f16
	nop
	sw      $t2, 0x0118($t5)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x0154($t1)
	slti    $at, $t4, 0x0081
	bnez    $at, 133$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
133$:
	b       140$
	nop
.globl L802BCC90
L802BCC90:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	b       140$
	nop
140$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0118($t3)
	subu    $t0, $0, $t7
	sw      $t0, 0x0118($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x00C8($t9)
	lw      $t5, 0x0118($t9)
	addu    $t1, $t2, $t5
	sw      $t1, 0x00C8($t9)
	b       153$
	nop
153$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCCE8:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a2, 0x014C($t6)
	beqz    $a2, 14$
	nop
	li      $at, 0x0001
	beq     $a2, $at, 21$
	nop
	li      $at, 0x0002
	beq     $a2, $at, 40$
	nop
	b       44$
	nop
14$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
	b       44$
	nop
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00F6($t0)
	lwc1    $f4, 0x00A4($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f6, $f12
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	addu    $t6, $t5, $a1
	sw      $t6, 0x00F4($t4)
	b       44$
	nop
40$:
	b       44$
	nop
	b       44$
	nop
44$:
	b       46$
	nop
46$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BCDA8
object_a_802BCDA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337C84)
	lwc1    $f4, %lo(object_a_80337C84)($at)
	swc1    $f4, 0x001C($sp)
	li      $t6, 0x0100
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00C8($t7)
	beqz    $t8, 17$
	nop
	lwc1    $f12, 0x001C($sp)
	jal     object_a_802BCCE8
	lw      $a1, 0x0018($sp)
	b       38$
	nop
17$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00F6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x44000000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00D0($t9)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	addiu   $t7, $t6, 0x0100
	sw      $t7, 0x00F4($t5)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BCE58
object_a_802BCE58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	li      $t6, 0x0100
	sw      $t6, 0x0018($sp)
	lwc1    $f12, 0x001C($sp)
	jal     object_a_802BCCE8
	lw      $a1, 0x0018($sp)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCE9C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $sp, 0x0018
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x0018
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x0004($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t1, $sp, 0x0018
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0008($t1)
	lwc1    $f10, 0x0034($sp)
	addiu   $t2, $sp, 0x0024
	swc1    $f10, 0x0000($t2)
	lwc1    $f16, 0x0038($sp)
	addiu   $t3, $sp, 0x0024
	swc1    $f16, 0x0004($t3)
	lwc1    $f18, 0x003C($sp)
	addiu   $t4, $sp, 0x0024
	swc1    $f18, 0x0008($t4)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	addiu   $a2, $sp, 0x0018
	jal     mtxf_stand
	move    $a3, $0
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BCF40
object_a_802BCF40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $t6, 0x021C
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F4($t8)
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00FC($t0)
	lw      $a0, 0x001C($sp)
	li      $a1, 0x0000
	li      $a2, 0x3F800000
	jal     object_a_802BCE9C
	li      $a3, 0x0000
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BCFC4:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	c.le.s  $f14, $f12
	nop
	bc1f    19$
	nop
	sub.s   $f4, $f12, $f14
	lwc1    $f6, 0x0010($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    14$
	nop
	b       17$
	swc1    $f12, 0x0004($sp)
14$:
	lwc1    $f8, 0x0010($sp)
	add.s   $f10, $f14, $f8
	swc1    $f10, 0x0004($sp)
17$:
	b       31$
	nop
19$:
	lwc1    $f18, 0x0010($sp)
	sub.s   $f16, $f12, $f14
	neg.s   $f4, $f18
	c.lt.s  $f4, $f16
	nop
	bc1f    28$
	nop
	b       31$
	swc1    $f12, 0x0004($sp)
28$:
	lwc1    $f6, 0x0010($sp)
	sub.s   $f8, $f14, $f6
	swc1    $f8, 0x0004($sp)
31$:
	b       35$
	lwc1    $f0, 0x0004($sp)
	b       35$
	nop
35$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BD058
object_a_802BD058:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0014($sp)
	sw      $0, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $t6, 0x021C
	sw      $t7, 0x0034($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, 132$
	nop
	addiu   $a0, $sp, 0x0048
	addiu   $a1, $sp, 0x0044
	jal     mario_get_pos
	addiu   $a2, $sp, 0x0040
	lui     $t1, %hi(mario_obj)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, %lo(mario_obj)($t1)
	addiu   $t3, $sp, 0x0064
	lwc1    $f6, 0x00A0($t2)
	lwc1    $f4, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t3)
	lui     $t4, %hi(mario_obj)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, %lo(mario_obj)($t4)
	addiu   $t6, $sp, 0x0064
	lwc1    $f16, 0x00A4($t5)
	lwc1    $f10, 0x00A4($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t6)
	lui     $t7, %hi(mario_obj)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(mario_obj)($t7)
	addiu   $t9, $sp, 0x0064
	lwc1    $f6, 0x00A8($t8)
	lwc1    $f4, 0x00A8($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t9)
	lw      $a0, 0x0034($sp)
	addiu   $a1, $sp, 0x0058
	jal     objlib_8029F200
	addiu   $a2, $sp, 0x0064
	lui     $t0, %hi(mario_obj)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(mario_obj)($t0)
	lwc1    $f16, 0x00A0($t1)
	lwc1    $f10, 0x00A0($t0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0078($sp)
	lui     $t2, %hi(mario_obj)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, %lo(mario_obj)($t2)
	lwc1    $f8, 0x00A8($t3)
	lwc1    $f6, 0x00A8($t2)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0074($sp)
	lwc1    $f16, 0x007C($sp)
	lwc1    $f4, 0x0078($sp)
	lwc1    $f10, 0x0074($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f8, $f18, $f6
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	swc1    $f0, 0x0070($sp)
	lwc1    $f4, 0x0070($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f4, $f18
	nop
	bc1t    108$
	nop
	lwc1    $f10, 0x0070($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f8, $f10
	div.d   $f16, $f6, $f8
	cvt.s.d $f4, $f16
	swc1    $f4, 0x0070($sp)
	lwc1    $f18, 0x007C($sp)
	lwc1    $f10, 0x0070($sp)
	mul.s   $f6, $f18, $f10
	swc1    $f6, 0x007C($sp)
	lwc1    $f8, 0x0078($sp)
	lwc1    $f16, 0x0070($sp)
	mul.s   $f4, $f8, $f16
	swc1    $f4, 0x0078($sp)
	lwc1    $f18, 0x0074($sp)
	lwc1    $f10, 0x0070($sp)
	mul.s   $f6, $f18, $f10
	b       118$
	swc1    $f6, 0x0074($sp)
108$:
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0078($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0074($sp)
118$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x010C($t4)
	bne     $t5, $at, 127$
	nop
	lw      $t6, 0x003C($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x003C($sp)
127$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	b       145$
	sw      $t8, 0x010C($t9)
132$:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x007C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0078($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0074($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x010C($t0)
145$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x007C($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x0078($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	swc1    $f0, 0x00F8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li.u    $a2, 0x3C23D70A
	li.l    $a2, 0x3C23D70A
	lwc1    $f12, 0x0074($sp)
	jal     object_a_802BCFC4
	lwc1    $f14, 0x00FC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x00FC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x00F4($t7)
	lw      $a2, 0x00F8($t7)
	jal     object_a_802BCE9C
	lw      $a3, 0x00FC($t7)
	lw      $t8, 0x003C($sp)
	beqz    $t8, 217$
	nop
	lw      $a0, 0x0034($sp)
	addiu   $a1, $sp, 0x004C
	jal     objlib_8029F200
	addiu   $a2, $sp, 0x0064
	addiu   $t9, $sp, 0x004C
	addiu   $t0, $sp, 0x0058
	lwc1    $f16, 0x0000($t0)
	lwc1    $f8, 0x0000($t9)
	lwc1    $f18, 0x0048($sp)
	sub.s   $f4, $f8, $f16
	add.s   $f10, $f18, $f4
	swc1    $f10, 0x0048($sp)
	addiu   $t1, $sp, 0x004C
	addiu   $t2, $sp, 0x0058
	lwc1    $f8, 0x0004($t2)
	lwc1    $f6, 0x0004($t1)
	lwc1    $f18, 0x0044($sp)
	sub.s   $f16, $f6, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0044($sp)
	addiu   $t3, $sp, 0x004C
	addiu   $t4, $sp, 0x0058
	lwc1    $f6, 0x0008($t4)
	lwc1    $f10, 0x0008($t3)
	lwc1    $f18, 0x0040($sp)
	sub.s   $f8, $f10, $f6
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0040($sp)
	lwc1    $f12, 0x0048($sp)
	lwc1    $f14, 0x0044($sp)
	jal     mario_set_pos
	lw      $a2, 0x0040($sp)
217$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0034($sp)
	sw      $t5, 0x0050($t6)
	b       223$
	nop
223$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

object_a_802BD3E4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002DB0
	la.l    $a2, o_13002DB0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A3
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    35$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002C60
	la.l    $a2, o_13002C60
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x00A4
	jal     objlib_8029EEB8
	li      $a3, 0x3FC00000
	sw      $v0, 0x0018($sp)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lw      $t7, 0x0018($sp)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x00B0($t7)
	lw      $a0, 0x0018($sp)
	jal     objlib_802A308C
	li      $a1, 0x42DC0000
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BD488
object_a_802BD488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 47$
	nop
	jal     rand
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B0($t9)
	li      $at, 0xC0800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t0)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t2, $f18
	nop
	sw      $t2, 0x00F0($t3)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42DC0000
	li      $at, 0x40800000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t4)
47$:
	jal     objlib_802A0604
	nop
	jal     objlib_802A2644
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f6, 0x00E8($t5)
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f6
	nop
	bc1t    63$
	nop
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x000B
	bnez    $at, 66$
	nop
63$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
66$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337C88)
	ldc1    $f18, %lo(object_a_80337C88)($at)
	lwc1    $f10, 0x00F8($t7)
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t8)
	b       81$
	nop
81$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BD5DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13001F68
	la.l    $a2, o_13001F68
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0090
	lw      $t6, 0x001C($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0002
	bnez    $at, 3$
	sw      $t7, 0x001C($sp)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BD62C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BD680
object_a_802BD680:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330840
	la.l    $a1, object_a_80330840
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 51$
	nop
	b       138$
	nop
23$:
	jal     objlib_802A2320
	nop
	jal     objlib_802A452C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, 38$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
38$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D4($t3)
	addiu   $t5, $t4, 0x1000
	sw      $t5, 0x00D4($t3)
	jal     objlib_802A2348
	li      $a0, -0x0014
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
	b       138$
	nop
51$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A064C
	nop
	sw      $v0, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t7)
	jal     objlib_802A3634
	sub.s   $f12, $f20, $f4
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	c.lt.s  $f0, $f6
	nop
	bc1f    81$
	nop
	jal     object_a_802BD3E4
	nop
	b       115$
	nop
81$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A4($t8)
	lwc1    $f10, 0x00E8($t8)
	jal     objlib_802A3634
	sub.s   $f12, $f8, $f10
	li      $at, 0x40A00000
	mtc1    $at, $f16
	nop
	c.lt.s  $f0, $f16
	nop
	bc1f    111$
	nop
	lw      $t9, 0x0034($sp)
	beqz    $t9, 105$
	nop
	lh      $t1, 0x0000($t9)
	li      $at, 0x0001
	bne     $t1, $at, 105$
	nop
	jal     object_a_802BD5DC
	nop
	b       109$
	nop
105$:
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
109$:
	b       115$
	nop
111$:
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_a_802BD62C
	nop
115$:
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x00C8($t2)
	sw      $t0, 0x00D4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x00400000
	lw      $t3, 0x0134($t5)
	and     $t6, $t3, $at
	beqz    $t6, 136$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A37AC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
136$:
	b       138$
	nop
138$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       143$
	nop
143$:
	lw      $ra, 0x0024($sp)
	ldc1    $f20, 0x0018($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

object_a_802BD8D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337C90)
	lwc1    $f6, %lo(object_a_80337C90)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    13$
	nop
	jal     objlib_802A50FC
	li      $a0, 0x0001
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BD91C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x47000000
	mtc1    $at, $f16
	addiu   $t8, $t7, 0x0001
	mtc1    $t8, $f4
	li      $t0, 0x0001
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f4, $f18
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, 48$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f4
	li      $t0, 0x0001
	sub.s   $f4, $f18, $f4
	ctc1    $t0, $31
	nop
	cvt.w.s $f4, $f4
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, 46$
	nop
	mfc1    $t0, $f4
	li      $at, 0x80000000
	b       52$
	or      $t0, $t0, $at
46$:
	b       52$
	li      $t0, -0x0001
48$:
	mfc1    $t0, $f4
	nop
	bltz    $t0, 46$
	nop
52$:
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	ctc1    $t9, $31
	lui     $at, %hi(object_a_80337C98)
	ldc1    $f10, %lo(object_a_80337C98)($at)
	cvt.d.s $f8, $f6
	lwc1    $f18, 0x0168($t6)
	mul.d   $f16, $f10, $f8
	li      $at, 0x40080000
	cvt.d.s $f4, $f18
	mtc1    $at, $f11
	mtc1    $0, $f10
	add.d   $f6, $f4, $f16
	add.d   $f8, $f6, $f10
	cvt.s.d $f18, $f8
	swc1    $f18, 0x00A4($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x001C($sp)
	swc1    $f16, 0x00C0($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0022($sp)
	lw      $t8, 0x00D0($t7)
	addu    $t0, $t8, $t9
	sw      $t0, 0x00D0($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x00D2($t1)
	bgez    $t2, 94$
	nop
	lh      $t3, 0x0026($sp)
	subu    $t6, $0, $t3
	sh      $t6, 0x0026($sp)
94$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t8, 0x0026($sp)
	lw      $t5, 0x00D8($t4)
	addu    $t9, $t5, $t8
	sw      $t9, 0x00D8($t4)
	jal     objlib_802A31E0
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0007
	lw      $t7, 0x0154($t0)
	bne     $t7, $at, 116$
	nop
	jal     objlib_802A3A88
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x014C($t1)
	li.u    $a0, 0x30468081
	jal     object_playsound
	li.l    $a0, 0x30468081
116$:
	b       118$
	nop
118$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDB04
object_a_802BDB04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42800000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0800
	jal     object_a_802BD91C
	move    $a3, $0
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDB3C
object_a_802BDB3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2800000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, -0x0800
	jal     object_a_802BD91C
	move    $a3, $0
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDB74
object_a_802BDB74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	move    $a2, $0
	jal     object_a_802BD91C
	li      $a3, 0x0800
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDBAC
object_a_802BDBAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42800000
	mtc1    $at, $f14
	mtc1    $0, $f12
	move    $a2, $0
	jal     object_a_802BD91C
	li      $a3, -0x0800
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDBE4
object_a_802BDBE4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 14$
	nop
	jal     object_a_802BD8D0
	nop
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0168($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0014
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, 32$
	nop
	jal     objlib_802A3A88
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x014C($t2)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDC7C
object_a_802BDC7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0014
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 13$
	nop
	jal     objlib_802A3A88
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x014C($t8)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDCC8
object_a_802BDCC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0014
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 13$
	nop
	jal     objlib_802A3A88
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x014C($t8)
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDD14
object_a_802BDD14:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object_a_803308CC)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(object_a_803308CC)($t9)
	sw      $t9, 0x001C($sp)
	jal     objlib_802A3A4C
	lw      $a0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x014C($t0)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BDD68
object_a_802BDD68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_803308D8
	jal     objlib_802A3E30
	la.l    $a0, object_a_803308D8
	jal     object_map_load
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BDD9C
object_a_802BDD9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0008
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    23$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BDE10:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, 46$
	nop
	jal     Na_SeqPull
	li      $a0, 0x0032
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x4000
	beqz    $t2, 38$
	nop
	li.u    $a0, 0x90116081
	jal     object_playsound
	li.l    $a0, 0x90116081
	sw      $0, 0x001C($sp)
22$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130000F8
	la.l    $a2, o_130000F8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00AA
	lw      $t3, 0x001C($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0014
	bnez    $at, 22$
	sw      $t4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0005
	b       42$
	sw      $t5, 0x014C($t6)
38$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
42$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       47$
	sw      $0, 0x0134($t9)
46$:
	sw      $0, 0x0018($sp)
47$:
	b       51$
	lw      $v0, 0x0018($sp)
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BDEEC
object_a_802BDEEC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x8000
	sw      $t6, 0x0130($t7)
	jal     objlib_8029F4B4
	li      $a0, 0x0008
	li      $at, 0x437A0000
	mtc1    $at, $f12
	li      $at, 0x43480000
	mtc1    $at, $f14
	jal     objlib_802A19C8
	nop
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A19F0
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0180($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    44$
	nop
	jal     object_a_802BE49C
	nop
	beqz    $v0, 42$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
42$:
	b       74$
	nop
44$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t2)
	c.lt.s  $f8, $f10
	nop
	bc1f    62$
	nop
	li      $a0, 0x000B
	move    $a1, $0
	li      $a2, 0x00FF
	jal     Na_SeqPush
	li      $a3, 0x03E8
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       74$
	sw      $0, 0x00F4($t3)
62$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F4($t4)
	bnez    $t5, 74$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F4($t6)
	jal     Na_SeqPull
	li      $a0, 0x0032
74$:
	jal     object_a_802BDE10
	nop
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE034
object_a_802BE034:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x0180($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 13$
	nop
	jal     Na_SeqPull
	li      $a0, 0x0032
13$:
	jal     object_a_802BDE10
	nop
	bnez    $v0, 27$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x000B
	bnez    $at, 27$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BE0B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 9$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
9$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BE0EC
object_a_802BE0EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	jal     objlib_8029FF04
	nop
	beqz    $v0, 17$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0006
	sw      $t7, 0x014C($t8)
17$:
	jal     object_a_802BE0B8
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE150
object_a_802BE150:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 16$
	nop
	li.u    $a0, 0x50744081
	jal     object_playsound
	li.l    $a0, 0x50744081
	li      $at, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	lwc1    $f6, 0x00F8($t9)
	c.lt.s  $f8, $f6
	nop
	bc1f    34$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CA0)
	ldc1    $f18, %lo(object_a_80337CA0)($at)
	lwc1    $f10, 0x00F8($t0)
	cvt.d.s $f16, $f10
	sub.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	b       45$
	swc1    $f6, 0x00F8($t0)
34$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F8($t1)
	jal     objlib_802A5524
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0007
	sw      $t2, 0x014C($t3)
45$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t4)
	jal     object_a_802BE0B8
	nop
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE234
object_a_802BE234:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44960000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0008
	sw      $t7, 0x014C($t8)
13$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BE278
object_a_802BE278:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 14$
	nop
	lui     $at, %hi(object_a_80337CA8)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, %lo(object_a_80337CA8)($at)
	swc1    $f4, 0x00F8($t8)
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	lwc1    $f6, 0x00F8($t9)
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    35$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CB0)
	ldc1    $f4, %lo(object_a_80337CB0)($at)
	lwc1    $f16, 0x00F8($t0)
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	b       44$
	swc1    $f8, 0x00F8($t0)
35$:
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
44$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t3)
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE350
object_a_802BE350:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x001C($sp)
	jal     objlib_802A05D4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0008
	sw      $t8, 0x0130($t9)
	jal     objlib_8029F4B4
	move    $a0, $0
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A19C8
	nop
	li      $at, 0x43160000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A19F0
	nop
	la.u    $a1, object_a_803308F8
	la.l    $a1, object_a_803308F8
	jal     objlib_802A40B8
	lw      $a0, 0x001C($sp)
	beqz    $v0, 35$
	nop
	li.u    $a0, 0x90105081
	jal     object_playsound
	li.l    $a0, 0x90105081
35$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t0)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    61$
	nop
	jal     objlib_8029FF04
	nop
	beqz    $v0, 61$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
61$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0134($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, 77$
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lw      $t9, 0x0004($t8)
	andi    $t0, $t9, 0x0004
	beqz    $t0, 77$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t2)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE49C:
	la.u    $t6, player_data
	la.l    $t6, player_data
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    11$
	nop
	jr      $ra
	li      $v0, 0x0001
11$:
	la.u    $t7, player_data
	la.l    $t7, player_data
	li      $at, 0x41200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t7)
	c.lt.s  $f10, $f8
	nop
	bc1f    22$
	nop
	jr      $ra
	li      $v0, 0x0001
22$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BE50C
object_a_802BE50C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0006
	jal     objlib_8029FF04
	nop
	beqz    $v0, 14$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
14$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	jal     object_a_802BE49C
	nop
	beqz    $v0, 31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BE5A0
object_a_802BE5A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330900
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330900
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0018
	bne     $t6, $at, 25$
	nop
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $at, %hi(object_a_80337CB8)
	lwc1    $f6, %lo(object_a_80337CB8)($at)
	lwc1    $f4, 0x00A4($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    23$
	nop
	jal     objlib_8029F6BC
	nop
	b       25$
	nop
23$:
	jal     objlib_8029F694
	nop
25$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BE628:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lh      $a1, 0x0022($sp)
	jal     obj_make_here
	lw      $a2, 0x0024($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lw      $t7, 0x001C($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lw      $t8, 0x001C($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	lb      $t9, 0x0033($sp)
	lw      $t0, 0x001C($sp)
	sw      $t9, 0x014C($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x001C($sp)
	sw      $t1, 0x010C($t2)
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x001C($sp)
	sw      $t3, 0x0110($t4)
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE6D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0028($sp)
	sw      $0, 0x0024($sp)
4$:
	lw      $t6, 0x0024($sp)
	la.u    $t8, object_a_80330AAC
	la.l    $t8, object_a_80330AAC
	sll     $t7, $t6, 3
	addu    $t9, $t7, $t8
	lb      $t0, 0x0001($t9)
	lwc1    $f8, 0x0028($sp)
	li      $at, 0x41200000
	mtc1    $t0, $f4
	mtc1    $at, $f16
	lb      $t1, 0x0002($t9)
	cvt.s.w $f6, $f4
	lb      $t2, 0x0003($t9)
	mtc1    $t1, $f4
	lbu     $a0, 0x0000($t9)
	sw      $t2, 0x0010($sp)
	lw      $t3, 0x0004($t9)
	mul.s   $f10, $f6, $f8
	la.u    $a1, o_13002038
	la.l    $a1, o_13002038
	sw      $t3, 0x0014($sp)
	cvt.s.w $f6, $f4
	div.s   $f18, $f10, $f16
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	mfc1    $a2, $f18
	div.s   $f18, $f10, $f16
	mfc1    $a3, $f18
	jal     object_a_802BE628
	nop
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x000E
	bnez    $at, 4$
	sw      $t5, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x014C($t6)
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BE79C
object_a_802BE79C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 58$
	nop
	b       60$
	nop
16$:
	li      $at, 0x43F00000
	mtc1    $at, $f12
	jal     object_a_802BE6D4
	nop
	b       60$
	nop
22$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 56$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    56$
	nop
	sw      $0, 0x002C($sp)
36$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130009A4
	la.l    $a2, o_130009A4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0074
	sw      $v0, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0005
	bnez    $at, 36$
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
56$:
	b       60$
	nop
58$:
	b       60$
	nop
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BE8A8
object_a_802BE8A8:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BE8B8
object_a_802BE8B8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802BE8F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0110($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, 18$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	lw      $t3, 0x0068($t2)
	sw      $t1, 0x00F4($t3)
18$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0108($t4)
	bnez    $t5, 52$
	nop
	lw      $t6, 0x001C($sp)
	jal     objlib_8029FDB4
	lb      $a0, 0x0000($t6)
	lw      $t7, 0x001C($sp)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x0110($t0)
	lw      $t2, 0x001C($sp)
	li      $at, -0x0001
	lb      $t1, 0x0000($t2)
	bne     $t1, $at, 48$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00F4($t4)
	ori     $t6, $t5, 0x0002
	sw      $t6, 0x00F4($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	sw      $t8, 0x0110($t7)
48$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0108($t0)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802BE9DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	beqz    $at, 35$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bgez    $t9, 20$
	andi    $t0, $t9, 0x0001
	beqz    $t0, 20$
	nop
	addiu   $t0, $t0, -0x0002
20$:
	beqz    $t0, 27$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	b       33$
	swc1    $f4, 0x0100($t1)
27$:
	li      $at, 0xC0C00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0100($t2)
33$:
	b       72$
	nop
35$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0014
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 44$
	nop
	li.u    $a0, 0x90192081
	jal     object_playsound
	li.l    $a0, 0x90192081
44$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0020($sp)
	lw      $t6, 0x0154($t5)
	addiu   $t8, $t7, 0x0014
	slt     $at, $t6, $t8
	beqz    $at, 65$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x00FC($t9)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00FC($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x0104($t0)
	add.s   $f6, $f18, $f4
	b       72$
	swc1    $f6, 0x0104($t0)
65$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0108($t3)
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEB14
object_a_802BEB14:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0018
	beqz    $at, 9$
	nop
	b       12$
	sw      $0, 0x0004($sp)
9$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0108($t8)
12$:
	b       14$
	nop
14$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802BEB54
object_a_802BEB54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2F00000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0004
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEB8C
object_a_802BEB8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f12
	mtc1    $0, $f14
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0005
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEBC4
object_a_802BEBC4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0xC2F00000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0006
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEBFC
object_a_802BEBFC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x42F00000
	mtc1    $at, $f14
	mtc1    $0, $f12
	li      $a2, 0x0004
	jal     object_a_802BE9DC
	li      $a3, 0x0003
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BEC34
object_a_802BEC34:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802BE8F4
	nop
	la.u    $a0, object_a_80330B1C
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B1C
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00FC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x0100($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x0104($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BECB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x47800000
	mtc1    $at, $f8
	lw      $t7, 0x0048($t6)
	mtc1    $0, $f16
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	c.eq.s  $f10, $f16
	swc1    $f10, 0x001C($sp)
	bc1f    23$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x001C($sp)
23$:
	lwc1    $f4, 0x001C($sp)
	lh      $a0, 0x0022($sp)
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     objlib_802A0050
	nop
	bnez    $v0, 39$
	nop
	lwc1    $f8, 0x001C($sp)
	lh      $a0, 0x0026($sp)
	trunc.w.s $f10, $f8
	mfc1    $a1, $f10
	jal     objlib_802A0050
	nop
	beqz    $v0, 43$
	nop
39$:
	jal     object_playsound
	lw      $a0, 0x0028($sp)
	b       47$
	li      $v0, 0x0001
43$:
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BED7C
object_a_802BED7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0178($t6)
	bnez    $t7, 22$
	nop
	lw      $t8, 0x0020($sp)
	bnez    $t8, 15$
	nop
	li.u    $t9, 0x50020081
	li.l    $t9, 0x50020081
	b       18$
	sw      $t9, 0x001C($sp)
15$:
	li.u    $t0, 0x50098081
	li.l    $t0, 0x50098081
	sw      $t0, 0x001C($sp)
18$:
	li      $a0, 0x0001
	li      $a1, 0x000B
	jal     object_a_802BECB0
	lw      $a2, 0x001C($sp)
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BEDEC
object_a_802BEDEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_130020E8
	la.l    $a0, o_130020E8
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0024
	sw      $v0, 0x001C($sp)
	la.u    $a0, o_130020E0
	la.l    $a0, o_130020E0
	jal     objlib_8029FC9C
	li      $a1, 0x447A0000
	beqz    $v0, 67$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 46$
	nop
	jal     objlib_8029F4B4
	move    $a0, $0
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     objlib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f6
	nop
	c.lt.s  $f6, $f0
	nop
	bc1f    39$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0150($t0)
39$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t1)
	b       65$
	nop
46$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	jal     objlib_802A15AC
	nop
	li      $at, 0x442F0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    65$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0150($t3)
65$:
	b       74$
	nop
67$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	jal     objlib_8029F4B4
	li      $a0, 0x0003
74$:
	lw      $t5, 0x001C($sp)
	beqz    $t5, 98$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    98$
	nop
	lw      $t6, 0x0124($t5)
	beqz    $t6, 98$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lw      $t0, 0x001C($sp)
	li      $t9, 0x0001
	sw      $t9, 0x0088($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x001C($sp)
	sw      $t1, 0x006C($t2)
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BEF8C
object_a_802BEF8C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0150($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 76$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 112$
	nop
	b       140$
	nop
16$:
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 72$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0188($t7)
	sra     $t9, $t8, 16
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x006C($t1)
	lw      $t3, 0x0188($t2)
	sra     $t4, $t3, 16
	andi    $t5, $t4, 0x00FF
	sw      $t5, 0x0028($sp)
	lw      $t6, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	bne     $t6, $t7, 42$
	nop
	li      $t8, 0x003A
	b       44$
	sw      $t8, 0x0024($sp)
42$:
	li      $t9, 0x003B
	sw      $t9, 0x0024($sp)
44$:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	lw      $a3, 0x0024($sp)
	beqz    $v0, 70$
	nop
	lw      $t0, 0x0024($sp)
	li      $at, 0x003A
	bne     $t0, $at, 60$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       64$
	sw      $t1, 0x0150($t2)
60$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x0150($t4)
64$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x006C($t5)
	lw      $t7, 0x0190($t6)
	ori     $t8, $t7, 0x0040
	sw      $t8, 0x0190($t6)
70$:
	b       74$
	nop
72$:
	jal     objlib_8029F4B4
	move    $a0, $0
74$:
	b       140$
	nop
76$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x006C($t9)
	lw      $t1, 0x0124($t0)
	bnez    $t1, 110$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0041
	lw      $t4, 0x0190($t2)
	lw      $t3, 0x006C($t2)
	sll     $t5, $t4, 2
	addu    $t7, $t3, $t5
	lw      $t8, 0x0088($t7)
	and     $t6, $t8, $at
	sw      $t6, 0x0088($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $a1, o_130020E0
	la.l    $a1, o_130020E0
	jal     objlib_802A14C4
	lw      $a0, 0x006C($t9)
	lui     $at, %hi(object_a_80337CBC)
	lwc1    $f12, %lo(object_a_80337CBC)($at)
	lui     $at, %hi(object_a_80337CC0)
	li.u    $a2, 0x459FA000
	li.l    $a2, 0x459FA000
	lwc1    $f14, %lo(object_a_80337CC0)($at)
	jal     objlib_802A5588
	li      $a3, 0x43480000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
110$:
	b       140$
	nop
112$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x006C($t2)
	lw      $t3, 0x0124($t4)
	bnez    $t3, 138$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, -0x0041
	lw      $t6, 0x0190($t5)
	lw      $t8, 0x006C($t5)
	sll     $t7, $t6, 2
	addu    $t9, $t8, $t7
	lw      $t0, 0x0088($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x0088($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a1, o_130020D8
	la.l    $a1, o_130020D8
	jal     objlib_802A14C4
	lw      $a0, 0x006C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t3)
138$:
	b       140$
	nop
140$:
	b       142$
	nop
142$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BF1D8
object_a_802BF1D8:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x002C($sp)
	la.u    $a0, o_130020E8
	la.l    $a0, o_130020E8
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0028
	sw      $v0, 0x0024($sp)
	li      $at, 0x40800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    24$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x002C($sp)
24$:
	lw      $t7, 0x0024($sp)
	beqz    $t7, 49$
	nop
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    49$
	nop
	lw      $t8, 0x0124($t7)
	beqz    $t8, 49$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0001
	sw      $t1, 0x0088($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0024($sp)
	b       108$
	sw      $t3, 0x006C($t4)
49$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $s0, 0x0150($t5)
	beqz    $s0, 62$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 80$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 94$
	nop
	b       108$
	nop
62$:
	li      $at, 0x43960000
	mtc1    $at, $f12
	li      $at, 0x42C80000
	mtc1    $at, $f14
	jal     objlib_802A48BC
	nop
	beqz    $v0, 78$
	nop
	lw      $t6, 0x002C($sp)
	bnez    $t6, 78$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0150($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0150($t7)
78$:
	b       108$
	nop
80$:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0039
	beqz    $v0, 92$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
92$:
	b       108$
	nop
94$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43E10000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t3)
	c.lt.s  $f18, $f16
	nop
	bc1f    106$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0150($t4)
106$:
	b       108$
	nop
108$:
	jal     objlib_802A0008
	li      $a0, 0x0001
	beqz    $v0, 115$
	nop
	li.u    $a0, 0x502D0081
	jal     object_playsound
	li.l    $a0, 0x502D0081
115$:
	b       117$
	nop
117$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802BF3C0
object_a_802BF3C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0400
	sh      $t8, 0x0074($t6)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330B38
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B38
	jal     objlib_802A2348
	li      $a0, -0x004E
	jal     object_a_802BED7C
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BF424:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A0154
	nop
	beqz    $v0, 14$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sw      $t7, 0x0100($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BF474
object_a_802BF474:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 20$
	nop
	la.u    $a0, o_13002088
	jal     objlib_8029F998
	la.l    $a0, o_13002088
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    20$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x001C($sp)
20$:
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lwc1    $f6, 0x0104($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lw      $a0, 0x0160($t0)
	lw      $a1, 0x0110($t0)
	addu    $a0, $a0, $at
	jal     objlib_8029E5EC
	addiu   $a1, $a1, 0x0600
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0108($t1)
	lwc1    $f16, 0x015C($t1)
	add.s   $f6, $f18, $f4
	c.lt.s  $f6, $f16
	nop
	bc1f    51$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
51$:
	jal     object_a_802BF424
	nop
	lw      $t3, 0x001C($sp)
	beqz    $t3, 60$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x014C($t5)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BF57C
object_a_802BF57C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F4B4
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lwc1    $f4, 0x0104($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x0110($t7)
	lw      $a0, 0x0160($t7)
	jal     objlib_8029E5EC
	addiu   $a1, $a1, 0x0600
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x0108($t8)
	lwc1    $f10, 0x015C($t8)
	add.s   $f4, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    31$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
31$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337CC4)
	lwc1    $f8, %lo(object_a_80337CC4)($at)
	lwc1    $f6, 0x015C($t0)
	c.lt.s  $f8, $f6
	nop
	bc1f    43$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
43$:
	jal     object_a_802BF424
	nop
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BF648
object_a_802BF648:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0006
	bnez    $at, 33$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0006
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 17$
	nop
	li.u    $a0, 0x501F4081
	jal     object_playsound
	li.l    $a0, 0x501F4081
17$:
	jal     objlib_8029F4B4
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001A
	bnez    $at, 33$
	nop
	jal     objlib_802A0154
	nop
	bnez    $v0, 33$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x014C($t3)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BF6E4
object_a_802BF6E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0015
	bnez    $at, 25$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     objlib_8029F4B4
	li      $a0, 0x0002
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0029
	bnez    $at, 25$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0100($t1)
	sw      $t2, 0x014C($t1)
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BF760
object_a_802BF760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	jal     objlib_8029F4B4
	li      $a0, 0x0003
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 51$
	nop
	jal     randf
	nop
	li      $at, 0x44800000
	mtc1    $at, $f4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sw      $t9, 0x0110($t0)
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x0108($t1)
	jal     randf
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x0104($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	la.u    $a0, o_13002088
	jal     objlib_8029F998
	la.l    $a0, o_13002088
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f0, $f4
	nop
	bc1f    51$
	nop
	li      $t4, 0x0001
	sw      $t4, 0x001C($sp)
51$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t5)
	c.lt.s  $f6, $f8
	nop
	bc1f    73$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f16
	lwc1    $f10, 0x0108($t5)
	add.s   $f18, $f10, $f16
	c.lt.s  $f18, $f6
	nop
	bc1f    73$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       88$
	sw      $t6, 0x014C($t7)
73$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x0108($t8)
	lwc1    $f4, 0x015C($t8)
	add.s   $f16, $f8, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    88$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
88$:
	lw      $t1, 0x001C($sp)
	beqz    $t1, 95$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t3)
95$:
	jal     objlib_802A3F48
	nop
	beqz    $v0, 101$
	nop
	jal     objlib_802A184C
	nop
101$:
	b       103$
	nop
103$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802BF90C
object_a_802BF90C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002088
	jal     objlib_8029F95C
	la.l    $a0, o_13002088
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 58$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    24$
	nop
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	b       29$
	swc1    $f8, 0x00B8($t8)
24$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t9)
29$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E2F8
	lw      $a1, 0x001C($sp)
	swc1    $f0, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E694
	lw      $a1, 0x001C($sp)
	sh      $v0, 0x0022($sp)
	li      $at, 0x43480000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    51$
	nop
	lh      $a0, 0x0022($sp)
	jal     objlib_8029E5EC
	li      $a1, 0x0400
	b       56$
	nop
51$:
	lh      $a0, 0x0022($sp)
	li      $at, 0x8000
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	addu    $a0, $a0, $at
56$:
	jal     objlib_8029F4B4
	move    $a0, $0
58$:
	jal     object_a_802BF424
	nop
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802BFA14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0088($t6)
	beqz    $t7, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0005
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0088($t0)
14$:
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330B44
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B44
	jal     objlib_802A2348
	li      $a0, -0x004E
	jal     object_a_802BED7C
	move    $a0, $0
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802BFA88
object_a_802BFA88:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0124($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 56$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 62$
	nop
	b       66$
	nop
19$:
	jal     object_a_802BFA14
	nop
	b       66$
	nop
23$:
	move    $a0, $0
	jal     objlib_802A01D8
	move    $a1, $0
	la.u    $a0, o_130020D8
	jal     objlib_802A14FC
	la.l    $a0, o_130020D8
	beqz    $v0, 36$
	nop
	lui     $a0, %hi(object)
	la.u    $a1, o_130020E8
	la.l    $a1, o_130020E8
	jal     objlib_802A14C4
	lw      $a0, %lo(object)($a0)
36$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t7, %hi(gfx_frame)
	lw      $t7, %lo(gfx_frame)($t7)
	li      $at, 0x001E
	divu    $0, $t7, $at
	mfhi    $t8
	bnez    $t8, 54$
	nop
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	li.u    $a0, 0x90450081
	li.l    $a0, 0x90450081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
54$:
	b       66$
	nop
56$:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     objlib_802A0380
	move    $a2, $0
	b       66$
	nop
62$:
	jal     objlib_802A0474
	nop
	b       66$
	nop
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_object_a_802BFBAC
s_object_a_802BFBAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	bne     $t6, $at, 67$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	sh      $0, 0x001E($t9)
	lui     $t0, %hi(gfx_frame)
	lw      $t0, %lo(gfx_frame)($t0)
	li      $at, 0x0032
	divu    $0, $t0, $at
	mfhi    $t1
	sw      $t1, 0x001C($sp)
	nop
	lw      $t2, 0x001C($sp)
	slti    $at, $t2, 0x002B
	beqz    $at, 30$
	nop
	lw      $t3, 0x0020($sp)
	b       49$
	sh      $0, 0x001E($t3)
30$:
	lw      $t4, 0x001C($sp)
	slti    $at, $t4, 0x002D
	beqz    $at, 38$
	nop
	lw      $t6, 0x0020($sp)
	li      $t5, 0x0001
	b       49$
	sh      $t5, 0x001E($t6)
38$:
	lw      $t7, 0x001C($sp)
	slti    $at, $t7, 0x002F
	beqz    $at, 46$
	nop
	lw      $t9, 0x0020($sp)
	li      $t8, 0x0002
	b       49$
	sh      $t8, 0x001E($t9)
46$:
	lw      $t1, 0x0020($sp)
	li      $t0, 0x0001
	sh      $t0, 0x001E($t1)
49$:
	la.u    $a0, o_13002088
	jal     segment_to_virtual
	la.l    $a0, o_13002088
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x020C($t2)
	bne     $v0, $t3, 67$
	nop
	lw      $t4, 0x0024($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t4)
	c.lt.s  $f6, $f4
	nop
	bc1f    67$
	nop
	lw      $t6, 0x0020($sp)
	li      $t5, 0x0003
	sh      $t5, 0x001E($t6)
67$:
	b       71$
	move    $v0, $0
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802BFCD8
object_a_802BFCD8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0144($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 31$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 55$
	nop
	b       67$
	nop
19$:
	li      $t7, 0x00B9
	sh      $t7, 0x0036($sp)
	li      $t8, 0x0014
	sw      $t8, 0x0038($sp)
	lui     $at, %hi(object_a_80337CC8)
	lwc1    $f4, %lo(object_a_80337CC8)($at)
	swc1    $f4, 0x0030($sp)
	la.u    $t9, anime_fish
	la.l    $t9, anime_fish
	sw      $t9, 0x002C($sp)
	b       67$
	nop
31$:
	li      $t0, 0x00B9
	sh      $t0, 0x0036($sp)
	li      $t1, 0x0005
	sw      $t1, 0x0038($sp)
	lui     $at, %hi(object_a_80337CCC)
	lwc1    $f6, %lo(object_a_80337CCC)($at)
	swc1    $f6, 0x0030($sp)
	la.u    $t2, anime_fish
	la.l    $t2, anime_fish
	sw      $t2, 0x002C($sp)
	b       67$
	nop
43$:
	li      $t3, 0x0067
	sh      $t3, 0x0036($sp)
	li      $t4, 0x0014
	sw      $t4, 0x0038($sp)
	lui     $at, %hi(object_a_80337CD0)
	lwc1    $f8, %lo(object_a_80337CD0)($at)
	swc1    $f8, 0x0030($sp)
	la.u    $t5, anime_piranha
	la.l    $t5, anime_piranha
	sw      $t5, 0x002C($sp)
	b       67$
	nop
55$:
	li      $t6, 0x0067
	sh      $t6, 0x0036($sp)
	li      $t7, 0x0005
	sw      $t7, 0x0038($sp)
	lui     $at, %hi(object_a_80337CD4)
	lwc1    $f10, %lo(object_a_80337CD4)($at)
	swc1    $f10, 0x0030($sp)
	la.u    $t8, anime_piranha
	la.l    $t8, anime_piranha
	sw      $t8, 0x002C($sp)
	b       67$
	nop
67$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x015C($t9)
	c.lt.s  $f16, $f18
	nop
	bc1t    80$
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0014
	bne     $t0, $at, 113$
	nop
80$:
	lw      $t1, 0x0038($sp)
	sw      $0, 0x003C($sp)
	blez    $t1, 109$
	nop
84$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002178
	la.l    $a2, o_13002178
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	lh      $a1, 0x0036($sp)
	sw      $v0, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0144($t2)
	sw      $t3, 0x0144($t4)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     objlib_8029F59C
	move    $a2, $0
	lw      $a0, 0x0028($sp)
	jal     objlib_802A2FC0
	li      $a1, 0x442F0000
	lw      $t5, 0x003C($sp)
	lw      $t7, 0x0038($sp)
	addiu   $t6, $t5, 0x0001
	slt     $at, $t6, $t7
	bnez    $at, 84$
	sw      $t6, 0x003C($sp)
109$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
113$:
	b       115$
	nop
115$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802BFEB8
object_a_802BFEB8:
	lui     $t6, %hi(stage_index)
	lh      $t6, %lo(stage_index)($t6)
	li      $at, 0x0014
	beq     $t6, $at, 22$
	nop
	lui     $t7, %hi(mario_obj)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, %lo(mario_obj)($t7)
	li      $at, 0x44FA0000
	lwc1    $f6, 0x00A4($t8)
	lwc1    $f4, 0x00A4($t7)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    22$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
22$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BFF20
object_a_802BFF20:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802BFF3C
object_a_802BFF3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330B5C
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B5C
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802BFF68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0014
	bne     $t8, $at, 42$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f8, 0x00F8($t9)
	jal     objlib_802A3634
	sub.s   $f12, $f6, $f8
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    28$
	nop
	li      $t0, 0x000A
	sw      $t0, 0x0020($sp)
28$:
	lw      $t2, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $t2, $f16
	lwc1    $f12, 0x00A4($t1)
	cvt.s.w $f16, $f16
	lwc1    $f14, 0x00F8($t1)
	mfc1    $a2, $f16
	jal     objlib_8029E494
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       77$
	swc1    $f0, 0x00A4($t3)
42$:
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sub.s   $f6, $f18, $f4
	lwc1    $f8, 0x010C($t4)
	lwc1    $f16, 0x00A4($t4)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    77$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	add.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    77$
	nop
	lw      $t6, 0x0020($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $t6, $f18
	lwc1    $f12, 0x00A4($t5)
	cvt.s.w $f18, $f18
	lwc1    $f14, 0x00F8($t5)
	mfc1    $a2, $f18
	jal     objlib_8029E494
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C00B4
object_a_802C00B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000A
	beqz    $at, 21$
	nop
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40000000
	b       24$
	nop
21$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
24$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, 73$
	nop
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f10
	li      $at, 0x40400000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00B8($t2)
	lui     $t3, %hi(stage_index)
	lh      $t3, %lo(stage_index)($t3)
	li      $at, 0x0014
	bne     $t3, $at, 54$
	nop
	jal     randf
	nop
	li      $at, 0x442F0000
	mtc1    $at, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f0, $f6
	b       62$
	swc1    $f8, 0x00FC($t4)
54$:
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f10
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x00FC($t5)
62$:
	jal     randf
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	li      $at, 0x43480000
	mtc1    $at, $f6
	mul.s   $f4, $f0, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0104($t6)
73$:
	lui     $t7, %hi(object)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A4($t8)
	lwc1    $f10, 0x00FC($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t0)
	lwc1    $f4, 0x00A4($t0)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    123$
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    108$
	nop
	mtc1    $0, $f6
	lwc1    $f8, 0x001C($sp)
	sub.s   $f4, $f6, $f8
	swc1    $f4, 0x001C($sp)
108$:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    119$
	nop
	jal     object_a_802BFF68
	li      $a0, 0x0002
	b       121$
	nop
119$:
	jal     object_a_802BFF68
	li      $a0, 0x0004
121$:
	b       144$
	nop
123$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f18, 0x00F4($t1)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x00A4($t1)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    144$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t2)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t2)
144$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f4, 0x0104($t3)
	lwc1    $f8, 0x015C($t3)
	add.s   $f16, $f4, $f10
	c.lt.s  $f8, $f16
	nop
	bc1f    159$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
159$:
	b       161$
	nop
161$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C0348
object_a_802C0348:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A4($t9)
	lwc1    $f10, 0x00FC($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	bnez    $t1, 90$
	nop
	jal     randf
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x0110($t2)
	jal     randf
	nop
	li      $at, 0x44800000
	mtc1    $at, $f8
	mtc1    $at, $f16
	lui     $t5, %hi(object)
	mul.s   $f10, $f0, $f8
	lw      $t5, %lo(object)($t5)
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sw      $t4, 0x0100($t5)
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f6
	li      $at, 0x41000000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0108($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x44160000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    70$
	nop
	li      $t9, 0x0001
	b       83$
	sw      $t9, 0x0018($sp)
70$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337CD8)
	ldc1    $f18, %lo(object_a_80337CD8)($at)
	lwc1    $f10, 0x015C($t8)
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	cvt.d.s $f16, $f10
	mtc1    $0, $f6
	div.d   $f4, $f16, $f18
	div.d   $f8, $f6, $f4
	trunc.w.d $f10, $f8
	swc1    $f10, 0x0018($sp)
83$:
	lw      $t1, 0x0018($sp)
	sll     $t2, $t1, 7
	subu    $t2, $t2, $t1
	sw      $t2, 0x0018($sp)
	li.u    $a0, 0x30090081
	jal     object_playsound
	li.l    $a0, 0x30090081
90$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0014
	beqz    $at, 101$
	nop
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40800000
	b       104$
	nop
101$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
104$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00B8($t5)
	lwc1    $f18, 0x0108($t5)
	c.lt.s  $f16, $f18
	nop
	bc1f    122$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f6, 0x00B8($t6)
	mtc1    $0, $f8
	cvt.d.s $f4, $f6
	add.d   $f10, $f4, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00B8($t6)
122$:
	lui     $t7, %hi(object)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f18, 0x00FC($t7)
	add.s   $f4, $f18, $f6
	swc1    $f4, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x8000
	lw      $a0, 0x0160($t8)
	lw      $a1, 0x0100($t8)
	jal     objlib_8029E5EC
	addu    $a0, $a0, $at
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42480000
	mtc1    $at, $f16
	lwc1    $f10, 0x00F4($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    174$
	nop
	lwc1    $f6, 0x001C($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    159$
	nop
	mtc1    $0, $f10
	lwc1    $f16, 0x001C($sp)
	sub.s   $f8, $f10, $f16
	swc1    $f8, 0x001C($sp)
159$:
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	c.lt.s  $f18, $f6
	nop
	bc1f    170$
	nop
	jal     object_a_802BFF68
	li      $a0, 0x0002
	b       172$
	nop
170$:
	jal     object_a_802BFF68
	li      $a0, 0x0004
172$:
	b       195$
	nop
174$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f4, 0x00F4($t1)
	sub.s   $f16, $f4, $f10
	swc1    $f16, 0x00A4($t1)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    195$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f6, 0x00A4($t2)
	sub.s   $f10, $f6, $f4
	swc1    $f10, 0x00A4($t2)
195$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f8, 0x0110($t3)
	lwc1    $f16, 0x015C($t3)
	add.s   $f6, $f8, $f18
	c.lt.s  $f6, $f16
	nop
	bc1f    210$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
210$:
	b       212$
	nop
212$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C06A8
object_a_802C06A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	jal     randf
	nop
	li      $at, 0x41E00000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	jal     randf
	nop
	li      $at, 0x43960000
	mtc1    $at, $f10
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f16, $f0, $f10
	swc1    $f16, 0x010C($t9)
	jal     randf
	nop
	lui     $at, %hi(object_a_80337CE0)
	ldc1    $f4, %lo(object_a_80337CE0)($at)
	mov.s   $f20, $f0
	cvt.d.s $f18, $f20
	lui     $at, %hi(object_a_80337CE8)
	mul.d   $f6, $f18, $f4
	ldc1    $f8, %lo(object_a_80337CE8)($at)
	add.d   $f10, $f6, $f8
	jal     object_set_scale
	cvt.s.d $f12, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
	b       43$
	nop
43$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C0768
object_a_802C0768:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x0014
	bne     $t8, $at, 24$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00F4($t9)
24$:
	li      $at, 0x41F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0128($t0)
	jal     objlib_802A1F3C
	nop
	lui     $t1, %hi(stage_index)
	lh      $t1, %lo(stage_index)($t1)
	li      $at, 0x0020
	beq     $t1, $at, 53$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337CF0)
	lwc1    $f10, %lo(object_a_80337CF0)($at)
	lwc1    $f8, 0x00F4($t2)
	c.lt.s  $f8, $f10
	nop
	bc1f    51$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       76$
	nop
51$:
	b       59$
	nop
53$:
	li      $at, 0x447A0000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t3)
59$:
	la.u    $a0, object_a_80330B68
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B68
	jal     objlib_802A2644
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0002
	lw      $t5, 0x0068($t4)
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, 74$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C08A8
object_a_802C08A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, 23$
	nop
	jal     objlib_802A3CFC
	nop
	beqz    $v0, 21$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
21$:
	b       123$
	nop
23$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x014C($t2)
	bne     $t3, $at, 57$
	nop
	li      $at, 0xC1A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x00A4($t5)
	lwc1    $f10, 0x00B0($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t5)
	li.u    $a0, 0x400D0001
	jal     object_levelsound
	li.l    $a0, 0x400D0001
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0085
	bnez    $at, 55$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x014C($t8)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t8)
55$:
	b       123$
	nop
57$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t2, 0x014C($t9)
	bne     $t2, $at, 76$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x006F
	bnez    $at, 74$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
74$:
	b       123$
	nop
76$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0003
	lw      $t1, 0x014C($t0)
	bne     $t1, $at, 116$
	nop
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	lwc1    $f6, 0x00B0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	li.u    $a0, 0x400D0001
	jal     object_levelsound
	li.l    $a0, 0x400D0001
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f16, 0x0168($t2)
	c.le.s  $f16, $f10
	nop
	bc1f    114$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x0168($t3)
	swc1    $f18, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x014C($t4)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t4)
114$:
	b       123$
	nop
116$:
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 123$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C0AAC
object_a_802C0AAC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_a_80337CF4)
	lwc1    $f6, %lo(object_a_80337CF4)($at)
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    35$
	nop
	lw      $t9, 0x0018($sp)
	sw      $0, 0x001C($sp)
	blez    $t9, 31$
	nop
19$:
	lui     $a0, %hi(object)
	la.u    $a2, o_1300220C
	la.l    $a2, o_1300220C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0064
	lw      $t0, 0x001C($sp)
	lw      $t2, 0x0018($sp)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t1, $t2
	bnez    $at, 19$
	sw      $t1, 0x001C($sp)
31$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C0B50
object_a_802C0B50:
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	li      $at, 0x44FA0000
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    17$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
17$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C0BA4
object_a_802C0BA4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C0BC4
object_a_802C0BC4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C0BE0
object_a_802C0BE0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, object_a_80330B74
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B74
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C0C0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sub.s   $f10, $f6, $f8
	lwc1    $f16, 0x0104($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    44$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f8
	nop
	add.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	c.lt.s  $f4, $f18
	nop
	bc1f    44$
	nop
	lw      $t0, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $t0, $f6
	lwc1    $f12, 0x00A4($t9)
	cvt.s.w $f6, $f6
	lwc1    $f14, 0x00F8($t9)
	mfc1    $a2, $f6
	jal     objlib_8029E494
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       44$
	swc1    $f0, 0x00A4($t1)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C0CD4
object_a_802C0CD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00FC($t6)
	jal     randf
	nop
	li      $at, 0x43960000
	mtc1    $at, $f8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f10, $f0, $f8
	swc1    $f10, 0x0104($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C0D44
object_a_802C0D44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 22$
	nop
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	mtc1    $at, $f8
	lui     $t8, %hi(object)
	mul.s   $f6, $f0, $f4
	lw      $t8, %lo(object)($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t8)
	jal     randf
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x0108($t9)
22$:
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f16, 0x00A4($t0)
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F4($t2)
	lwc1    $f6, 0x00A4($t2)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f6, $f16
	nop
	bc1f    67$
	nop
	lwc1    $f18, 0x001C($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    52$
	nop
	mtc1    $0, $f8
	lwc1    $f10, 0x001C($sp)
	sub.s   $f6, $f8, $f10
	swc1    $f6, 0x001C($sp)
52$:
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    63$
	nop
	jal     object_a_802C0C0C
	li      $a0, 0x0001
	b       65$
	nop
63$:
	jal     object_a_802C0C0C
	li      $a0, 0x0004
65$:
	b       88$
	nop
67$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f4, 0x00F4($t3)
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t3)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f6, 0x001C($sp)
	c.lt.s  $f16, $f6
	nop
	bc1f    88$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x00A4($t4)
	sub.s   $f8, $f18, $f4
	swc1    $f8, 0x00A4($t4)
88$:
	jal     objlib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f10, $f0
	nop
	bc1f    102$
	nop
	jal     objlib_802A2748
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0160($t5)
102$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a1, 0x0100
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43480000
	mtc1    $at, $f16
	lwc1    $f6, 0x015C($t7)
	c.lt.s  $f6, $f16
	nop
	bc1f    131$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f18, 0x0108($t8)
	mtc1    $0, $f8
	cvt.d.s $f4, $f18
	c.lt.d  $f4, $f8
	nop
	bc1f    131$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
131$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, 141$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
141$:
	b       143$
	nop
143$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C0F90
object_a_802C0F90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0014
	beqz    $at, 22$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, 20$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000444
	la.l    $a2, o_13000444
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A4
20$:
	b       25$
	nop
22$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
25$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, 33$
	nop
	li.u    $a0, 0x30090081
	jal     object_playsound
	li.l    $a0, 0x30090081
33$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t4)
	c.eq.s  $f4, $f6
	nop
	bc1f    47$
	nop
	li      $at, 0x40C00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t5)
47$:
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t7)
	lwc1    $f10, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t8)
	lwc1    $f4, 0x00A4($t8)
	sub.s   $f10, $f6, $f8
	c.lt.s  $f4, $f10
	nop
	bc1f    92$
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    77$
	nop
	mtc1    $0, $f6
	lwc1    $f8, 0x001C($sp)
	sub.s   $f4, $f6, $f8
	swc1    $f4, 0x001C($sp)
77$:
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    88$
	nop
	jal     object_a_802C0C0C
	li      $a0, 0x0002
	b       90$
	nop
88$:
	jal     object_a_802C0C0C
	li      $a0, 0x0004
90$:
	b       113$
	nop
92$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f18, 0x00F4($t9)
	sub.s   $f8, $f18, $f6
	swc1    $f8, 0x00A4($t9)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    113$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t0)
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t0)
113$:
	jal     objlib_802A15AC
	nop
	li      $at, 0x44480000
	mtc1    $at, $f8
	nop
	c.lt.s  $f8, $f0
	nop
	bc1f    127$
	nop
	jal     objlib_802A2748
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x0160($t1)
127$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	li      $a1, 0x0400
	lw      $a0, 0x0160($t2)
	jal     objlib_8029E5EC
	addu    $a0, $a0, $at
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x00C9
	bnez    $at, 151$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	lwc1    $f4, 0x015C($t3)
	c.lt.s  $f10, $f4
	nop
	bc1f    151$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
151$:
	b       153$
	nop
153$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1204
object_a_802C1204:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A4($t9)
	lwc1    $f4, 0x00FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F8($t8)
	li      $at, 0x41F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0128($t0)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330B84
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330B84
	jal     objlib_802A2644
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0002
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x014C($t2)
	bne     $t3, $at, 41$
	nop
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

.globl object_a_802C12C0
object_a_802C12C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x014C($t7)
	beq     $t8, $at, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1308
object_a_802C1308:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	slti    $at, $t7, 0x0003
	beqz    $at, 42$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sw      $t9, 0x00F0($t8)
	jal     save_get_flag
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t1, 0x0144($t0)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(object_a_80330020)($t3)
	and     $t4, $t3, $s0
	bnez    $t4, 31$
	nop
	lw      $t5, 0x0188($t0)
	sra     $t6, $t5, 24
	andi    $t7, $t6, 0x00FF
	beqz    $t7, 36$
	nop
31$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0002
	b       40$
	sw      $t9, 0x014C($t8)
36$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
40$:
	b       50$
	nop
42$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x00F0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t5)
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C13EC
object_a_802C13EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     objlib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 18$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300227C
	la.l    $a2, o_1300227C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0084
	jal     objlib_802A04C0
	li      $a0, 0x0083
18$:
	jal     save_get_flag
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t1, %hi(object_a_80330020)
	move    $s0, $v0
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(object_a_80330020)($t1)
	and     $t2, $t1, $s0
	bnez    $t2, 36$
	nop
	lw      $t3, 0x0188($t8)
	sra     $t4, $t3, 24
	andi    $t5, $t4, 0x00FF
	beqz    $t5, 42$
	nop
36$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	jal     objlib_802A04C0
	li      $a0, 0x0089
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C14B0
object_a_802C14B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330B90
	la.l    $a1, object_a_80330B90
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 28$
	nop
	jal     objlib_8029F694
	nop
	jal     objlib_802A05D4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0168($t9)
	swc1    $f4, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00DC($t0)
28$:
	jal     objlib_802A51AC
	nop
	beqz    $v0, 58$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x4000
	sw      $t1, 0x00FC($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
	li      $at, 0xC1000000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x00A4($t5)
	swc1    $f16, 0x00E8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t7)
58$:
	jal     object_map_load
	nop
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C15B8
object_a_802C15B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2644
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    22$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00E4($t8)
22$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f4
	lhu     $t0, 0x00FE($t9)
	mtc1    $0, $f17
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	lui     $at, %hi(object_a_80337CF8)
	add.d   $f6, $f18, $f4
	ldc1    $f8, %lo(object_a_80337CF8)($at)
	mtc1    $0, $f16
	mul.d   $f10, $f6, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00F8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t4, 0x00FE($t3)
	mtc1    $0, $f4
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	neg.s   $f8, $f6
	li      $at, 0x3FE00000
	cvt.d.s $f10, $f8
	mtc1    $at, $f5
	add.d   $f18, $f10, $f16
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	mul.d   $f6, $f18, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F4($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f8
	lhu     $t8, 0x00FE($t7)
	mtc1    $0, $f16
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	neg.s   $f4, $f18
	li      $at, 0x403A0000
	cvt.d.s $f6, $f4
	mtc1    $at, $f17
	add.d   $f10, $f6, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x00DC($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x00FC($t2)
	addiu   $t4, $t9, 0x1000
	sw      $t4, 0x00FC($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t5)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x002C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x00F8($t6)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t3)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0007
	lw      $t0, 0x0154($t8)
	bne     $t0, $at, 123$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t7)
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C17BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0063
	lbu     $t7, 0x0000($t6)
	beq     $t7, $at, 63$
	nop
10$:
	lw      $t9, 0x0020($sp)
	lbu     $t8, 0x0027($sp)
	lbu     $t0, 0x0000($t9)
	bne     $t8, $t0, 55$
	nop
	lw      $t1, 0x0020($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lbu     $a1, 0x0003($t1)
	jal     obj_make_here
	lw      $a2, 0x0004($t1)
	sw      $v0, 0x001C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t2, 0x001C($sp)
	swc1    $f4, 0x00B0($t2)
	li      $at, 0x40400000
	mtc1    $at, $f6
	lw      $t3, 0x001C($sp)
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t6, 0x001C($sp)
	lw      $t5, 0x00C8($t4)
	sw      $t5, 0x00C8($t6)
	lw      $t8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lbu     $t0, 0x0002($t8)
	lw      $t9, 0x0188($t7)
	sll     $t1, $t0, 24
	or      $t2, $t9, $t1
	sw      $t2, 0x0188($t7)
	lw      $t3, 0x0020($sp)
	li      $at, 0x007A
	lbu     $t4, 0x0003($t3)
	bne     $t4, $at, 53$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x008C($t5)
	ori     $t8, $t6, 0x4000
	sw      $t8, 0x008C($t5)
53$:
	b       63$
	nop
55$:
	lw      $t0, 0x0020($sp)
	addiu   $t9, $t0, 0x0008
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $at, 0x0063
	lbu     $t2, 0x0000($t1)
	bne     $t2, $at, 10$
	nop
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C18D0
object_a_802C18D0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, object_a_80330BA0
	la.l    $a0, object_a_80330BA0
	jal     object_a_802C17BC
	lw      $a1, 0x0144($t6)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li.u    $a2, 0x3E99999A
	li.l    $a2, 0x3E99999A
	li      $a0, 0x0014
	li      $a1, 0x008B
	jal     object_a_802AE0CC
	lw      $a3, 0x00F0($t7)
	li.u    $a0, 0x3041C081
	jal     object_makesound
	li.l    $a0, 0x3041C081
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	slti    $at, $t9, 0x0003
	beqz    $at, 37$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
	jal     objlib_8029F6BC
	nop
	b       40$
	nop
37$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1988
object_a_802C1988:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
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

.globl object_a_802C19C0
object_a_802C19C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	la.u    $a0, object_a_80330C20
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330C20
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C19FC
object_a_802C19FC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x001C($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	lw      $a0, 0x001C($sp)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1A40
object_a_802C1A40:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     save_get_flag
	nop
	andi    $t6, $v0, 0x00A0
	beqz    $t6, 10$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1A80
object_a_802C1A80:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C1A90
object_a_802C1A90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lhu     $t8, 0x00F6($t7)
	lwc1    $f10, 0x0164($t7)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D00)
	lwc1    $f6, %lo(object_a_80337D00)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lhu     $t2, 0x00F6($t1)
	lwc1    $f8, 0x016C($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_cos)($at)
	lui     $at, %hi(object_a_80337D04)
	lwc1    $f4, %lo(object_a_80337D04)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x001C($sp)
	lhu     $t6, 0x00F6($t5)
	lwc1    $f8, 0x0168($t5)
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f18
	add.s   $f10, $f6, $f8
	mul.s   $f4, $f16, $f18
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x00A4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F4($t0)
	addiu   $t2, $t7, 0x4000
	sw      $t2, 0x00C8($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F4($t3)
	addiu   $t1, $t4, 0x0080
	sw      $t1, 0x00F4($t3)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x001C($sp)
	li      $at, 0xC3FA0000
	lwc1    $f18, 0x00A4($t6)
	mtc1    $at, $f4
	sub.s   $f8, $f18, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    91$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x001C($sp)
	li      $at, 0xC3480000
	lwc1    $f10, 0x00A4($t8)
	mtc1    $at, $f6
	sub.s   $f18, $f10, $f16
	c.lt.s  $f6, $f18
	nop
	bc1f    91$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002DB0
	la.l    $a2, o_13002DB0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x00A3
	jal     objlib_8029EEB8
	li      $a3, 0x40800000
91$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x0154($t9)
	andi    $t7, $t5, 0x000F
	bnez    $t7, 100$
	nop
	li.u    $a0, 0x50008081
	jal     object_playsound
	li.l    $a0, 0x50008081
100$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1C44
object_a_802C1C44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_a_80337D08)
	lwc1    $f6, %lo(object_a_80337D08)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x008C
	b       28$
	sw      $t7, 0x017C($t8)
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x430C0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	lui     $at, %hi(object_a_80337D10)
	ldc1    $f4, %lo(object_a_80337D10)($at)
	mul.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	div.d   $f6, $f18, $f4
	trunc.w.d $f8, $f6
	swc1    $f8, 0x017C($t9)
28$:
	jal     objlib_8029F66C
	nop
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C1CD4
object_a_802C1CD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	sh      $t9, 0x001C($sp)
	jal     objlib_802A3C18
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	addiu   $t2, $t1, 0x0100
	sw      $t2, 0x00F4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00F6($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x00D0($t3)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00FA($t9)
	sra     $t2, $t1, 4
	sll     $t0, $t2, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	sw      $t5, 0x00D8($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t8, 0x001E($sp)
	lw      $t7, 0x00D0($t6)
	subu    $t3, $t7, $t8
	sw      $t3, 0x0114($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001C($sp)
	lw      $t2, 0x00D8($t1)
	subu    $t4, $t2, $t0
	sw      $t4, 0x011C($t1)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	li      $at, 0x447A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f10, $f8
	nop
	bc1f    73$
	nop
	li.u    $a0, 0x400B0001
	jal     object_levelsound
	li.l    $a0, 0x400B0001
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C1E10
object_a_802C1E10:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	bnez    $t7, 40$
	nop
	la.u    $a0, o_130023EC
	jal     objlib_8029F95C
	la.l    $a0, o_130023EC
	sw      $v0, 0x003C($sp)
	lw      $t8, 0x003C($sp)
	beqz    $t8, 18$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x003C($sp)
	sw      $t9, 0x00F4($t0)
18$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($sp)
	lwc1    $f4, 0x00A0($t1)
	lwc1    $f6, 0x00A0($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0138($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x003C($sp)
	lwc1    $f10, 0x00A4($t3)
	lwc1    $f16, 0x00A4($t4)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x013C($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x003C($sp)
	lwc1    $f4, 0x00A8($t5)
	lwc1    $f6, 0x00A8($t6)
	sub.s   $f8, $f4, $f6
	b       106$
	swc1    $f8, 0x0140($t5)
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	sw      $t8, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	addiu   $t2, $sp, 0x0040
	lw      $t0, 0x00D0($t9)
	sh      $t0, 0x0000($t2)
	lw      $t1, 0x003C($sp)
	addiu   $t3, $sp, 0x0040
	lw      $t4, 0x00D4($t1)
	sh      $t4, 0x0002($t3)
	lw      $t6, 0x003C($sp)
	addiu   $t7, $sp, 0x0040
	lw      $t5, 0x00D8($t6)
	sh      $t5, 0x0004($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x0054
	lwc1    $f10, 0x0138($t8)
	swc1    $f10, 0x0000($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t2, $sp, 0x0054
	lwc1    $f16, 0x013C($t0)
	swc1    $f16, 0x0004($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $t4, $sp, 0x0054
	lwc1    $f18, 0x0140($t1)
	swc1    $f18, 0x0008($t4)
	addiu   $a0, $sp, 0x0060
	addiu   $a1, $sp, 0x0054
	jal     mtxf_coord
	addiu   $a2, $sp, 0x0040
	addiu   $a0, $sp, 0x0060
	addiu   $a1, $sp, 0x0048
	jal     objlib_8029F200
	addiu   $a2, $sp, 0x0054
	lw      $t6, 0x003C($sp)
	addiu   $t3, $sp, 0x0048
	lwc1    $f4, 0x0000($t3)
	lwc1    $f6, 0x00A0($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t5)
	lw      $t8, 0x003C($sp)
	addiu   $t7, $sp, 0x0048
	lwc1    $f10, 0x0004($t7)
	lwc1    $f16, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
	lw      $t2, 0x003C($sp)
	addiu   $t0, $sp, 0x0048
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x00A8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t1)
	lw      $t4, 0x003C($sp)
	lw      $t3, 0x00D0($t4)
	sh      $t3, 0x001E($sp)
106$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t5, $sp, 0x0020
	lwc1    $f10, 0x00A0($t6)
	swc1    $f10, 0x0000($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $t8, $sp, 0x0020
	lwc1    $f16, 0x00A4($t7)
	swc1    $f16, 0x0004($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t0, $sp, 0x0020
	lwc1    $f18, 0x00A8($t9)
	swc1    $f18, 0x0008($t0)
	addiu   $t2, $sp, 0x0020
	lwc1    $f12, 0x0000($t2)
	lwc1    $f14, 0x0004($t2)
	lw      $a2, 0x0008($t2)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0038
	lw      $t1, 0x0038($sp)
	beqz    $t1, 146$
	nop
	lw      $t4, 0x0038($sp)
	addiu   $t3, $sp, 0x002C
	lwc1    $f4, 0x001C($t4)
	swc1    $f4, 0x0000($t3)
	lw      $t6, 0x0038($sp)
	addiu   $t5, $sp, 0x002C
	lwc1    $f6, 0x0020($t6)
	swc1    $f6, 0x0004($t5)
	lw      $t7, 0x0038($sp)
	addiu   $t8, $sp, 0x002C
	lwc1    $f8, 0x0024($t7)
	swc1    $f8, 0x0008($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x001E($sp)
	sw      $t9, 0x00D0($t0)
146$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00FA($t2)
	sra     $t4, $t1, 4
	sll     $t3, $t4, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00FC($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x00F8($t6)
	addiu   $t7, $t5, 0x0100
	sw      $t7, 0x00F8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x0140($t8)
	lwc1    $f6, 0x00FC($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0140($t8)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t9)
	c.lt.s  $f16, $f10
	nop
	bc1f    193$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     objlib_802A3634
	lwc1    $f12, 0x00FC($t0)
	li      $at, 0x40400000
	mtc1    $at, $f18
	nop
	c.lt.s  $f18, $f0
	nop
	bc1f    193$
	nop
	li.u    $a0, 0x60050001
	jal     object_levelsound
	li.l    $a0, 0x60050001
193$:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C38
	la.l    $a1, object_a_80330C38
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00F8($t1)
	andi    $t3, $t4, 0x7FFF
	bnez    $t3, 206$
	nop
	jal     objlib_802A05D4
	nop
206$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 218$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	jal     objlib_802A05B4
	nop
218$:
	b       220$
	nop
220$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl object_a_802C2190
object_a_802C2190:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_a_80337D18)
	lwc1    $f4, %lo(object_a_80337D18)($at)
	swc1    $f4, 0x001C($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 25$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t8)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t8)
25$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	lw      $t0, 0x0154($t9)
	mtc1    $t0, $f18
	nop
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	jal     object_set_scale
	add.s   $f12, $f8, $f10
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0032
	sw      $t1, 0x017C($t2)
	jal     objlib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0005
	bnez    $at, 51$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
51$:
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C2274
object_a_802C2274:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 11$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42200000
11$:
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C22B8
object_a_802C22B8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 54$
	nop
	b       83$
	nop
16$:
	jal     objlib_8029F66C
	nop
	jal     objlib_802A05B4
	nop
	la.u    $a0, o_bluecoinsw
	jal     objlib_8029F95C
	la.l    $a0, o_bluecoinsw
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	beqz    $t9, 36$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x014C($t0)
36$:
	b       83$
	nop
38$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00F8($t3)
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	li      $at, 0x0002
	lw      $t6, 0x014C($t5)
	bne     $t6, $at, 52$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t7)
52$:
	b       83$
	nop
54$:
	jal     objlib_8029F620
	nop
	jal     objlib_802A05D4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t0, $t2, 0x8000
	beqz    $t0, 73$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
73$:
	li      $a0, 0x00C8
	jal     objlib_802A36A4
	li      $a1, 0x0014
	beqz    $v0, 81$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
81$:
	b       83$
	nop
83$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C242C
object_a_802C242C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 20$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 91$
	nop
	b       125$
	nop
20$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 53$
	nop
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t1, $at, 53$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x014C($t2)
	li      $at, 0xC1A00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00E4($t6)
	li.u    $a0, 0x3067A081
	jal     object_playsound
	li.l    $a0, 0x3067A081
53$:
	jal     object_map_load
	nop
	b       125$
	nop
57$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0006
	bnez    $at, 85$
	nop
	jal     objlib_8029F6BC
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	li      $at, 0x42200000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t4)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	b       89$
	nop
85$:
	jal     object_map_load
	nop
	jal     objlib_802A2644
	nop
89$:
	b       125$
	nop
91$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t5, 0x0154($t2)
	slti    $at, $t5, 0x00C8
	beqz    $at, 104$
	nop
	li.u    $a0, 0x8054F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8054F011
	b       109$
	nop
104$:
	li.u    $a0, 0x8055F011
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8055F011
109$:
	la.u    $a0, o_13002588
	jal     objlib_8029F95C
	la.l    $a0, o_13002588
	beqz    $v0, 120$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x00F1
	bnez    $at, 123$
	nop
120$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
123$:
	b       125$
	nop
125$:
	b       127$
	nop
127$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C263C
object_a_802C263C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 18$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lw      $t0, 0x0088($t9)
	beqz    $t0, 16$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
16$:
	b       43$
	nop
18$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, 43$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0040
	beqz    $at, 38$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0144($t8)
	lw      $t9, 0x00C8($t8)
	sll     $t2, $t0, 8
	subu    $t3, $t9, $t2
	b       43$
	sw      $t3, 0x00C8($t8)
38$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x014C($t1)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t1)
43$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C26F8
object_a_802C26F8:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 88$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 103$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 133$
	nop
	b       135$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	sw      $t8, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	la.u    $t1, object_a_80330C48+0x00
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.l    $t1, object_a_80330C48+0x00
	sll     $t0, $t9, 3
	addu    $t2, $t0, $t1
	lh      $a1, 0x0000($t2)
	sw      $t3, 0x0010($sp)
	lh      $t4, 0x0002($t2)
	la.u    $t5, o_130025C0
	la.l    $t5, o_130025C0
	sw      $t5, 0x0018($sp)
	li      $a0, -0x0001
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t4, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x003C($sp)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x00C8($t6)
	lw      $t9, 0x0038($sp)
	lui     $a1, %hi(object_a_80330C48+0x04)
	lw      $a0, 0x003C($sp)
	sll     $t0, $t9, 3
	addu    $a1, $a1, $t0
	jal     objlib_802A44F4
	lw      $a1, %lo(object_a_80330C48+0x04)($a1)
	lw      $t1, 0x0038($sp)
	la.u    $t2, object_a_80330C48+0x00
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.l    $t2, object_a_80330C48+0x00
	sll     $t3, $t1, 3
	addu    $t4, $t3, $t2
	lh      $a1, 0x0000($t4)
	sw      $t5, 0x0010($sp)
	lh      $t7, 0x0002($t4)
	la.u    $t8, o_130025C0
	la.l    $t8, o_130025C0
	sw      $t8, 0x0018($sp)
	li      $a0, 0x0001
	move    $a2, $0
	move    $a3, $0
	subu    $a1, $0, $a1
	jal     obj_make_off
	sw      $t7, 0x0014($sp)
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lui     $a1, %hi(object_a_80330C48+0x04)
	lw      $a0, 0x003C($sp)
	sll     $t9, $t6, 3
	addu    $a1, $a1, $t9
	jal     objlib_802A44F4
	lw      $a1, %lo(object_a_80330C48+0x04)($a1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x014C($t0)
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x014C($t0)
	b       135$
	nop
88$:
	la.u    $a0, o_13001478
	jal     objlib_8029F95C
	la.l    $a0, o_13001478
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	move    $s0, $v0
	beqz    $s0, 101$
	sw      $s0, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t4, 0x014C($t5)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x014C($t5)
101$:
	b       135$
	nop
103$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x00F4($t8)
	sw      $t6, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	li      $at, 0x0002
	lw      $t1, 0x014C($t9)
	bne     $t1, $at, 131$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t3, 0x0002
	sw      $t3, 0x0088($t0)
	li.u    $a0, 0x303FA081
	jal     object_playsound
	li.l    $a0, 0x303FA081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t4, 0x014C($t2)
	addiu   $t7, $t4, 0x0001
	sw      $t7, 0x014C($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0144($t5)
	beqz    $t8, 131$
	nop
	jal     Na_Solution
	nop
131$:
	b       135$
	nop
133$:
	b       135$
	nop
135$:
	b       137$
	nop
137$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl object_a_802C2930
object_a_802C2930:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 16$
	nop
	lui     $t8, %hi(waterp)
	lw      $t8, %lo(waterp)($t8)
	beqz    $t8, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
14$:
	b       57$
	nop
16$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000A
	beqz    $at, 29$
	nop
	lui     $t4, %hi(waterp)
	lw      $t4, %lo(waterp)($t4)
	la.u    $t6, water_table
	la.l    $t6, water_table
	lh      $t5, 0x000C($t4)
	b       57$
	sw      $t5, 0x0000($t6)
29$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	la.u    $t9, water_table
	lhu     $t8, 0x00F6($t7)
	la.l    $t9, water_table
	lw      $t2, 0x0000($t9)
	sra     $t0, $t8, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	mtc1    $t2, $f10
	lui     $t5, %hi(waterp)
	mul.s   $f8, $f4, $f6
	lw      $t5, %lo(waterp)($t5)
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sh      $t4, 0x000C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0200
	sw      $t8, 0x00F4($t6)
57$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C2A24
object_a_802C2A24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(waterp)
	lw      $t6, %lo(waterp)($t6)
	beqz    $t6, 170$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 46$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 67$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 146$
	nop
	b       164$
	nop
23$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00D4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	trunc.w.s $f6, $f4
	mfc1    $t1, $f6
	nop
	sw      $t1, 0x00F8($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, 44$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x014C($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x014C($t4)
44$:
	b       164$
	nop
46$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 65$
	nop
	lui     $t7, %hi(object_80361262)
	lh      $t7, %lo(object_80361262)($t7)
	bnez    $t7, 65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x014C($t8)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t8)
	li      $t9, 0x0001
	lui     $at, %hi(object_80361262)
	sh      $t9, %lo(object_80361262)($at)
65$:
	b       164$
	nop
67$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0118($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, water_table
	la.l    $t3, water_table
	lw      $t5, 0x0000($t3)
	lw      $t4, 0x00F8($t6)
	li      $a2, 0x41200000
	mtc1    $t5, $f8
	mtc1    $t4, $f10
	cvt.s.w $f12, $f8
	jal     objlib_8029E494
	cvt.s.w $f14, $f10
	trunc.w.s $f16, $f0
	la.u    $t1, water_table
	la.l    $t1, water_table
	mfc1    $t0, $f16
	nop
	sw      $t0, 0x0000($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $t2, water_table
	la.l    $t2, water_table
	lw      $t3, 0x0000($t2)
	lw      $t9, 0x00F8($t8)
	bne     $t9, $t3, 113$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x00D6($t5)
	bnez    $t6, 107$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x014C($t4)
	addiu   $t0, $t7, 0x0001
	b       111$
	sw      $t0, 0x014C($t4)
107$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0800
	sw      $t1, 0x0118($t8)
111$:
	b       144$
	nop
113$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x0154($t2)
	bnez    $t9, 123$
	nop
	li.u    $a0, 0x30668081
	jal     object_playsound
	li.l    $a0, 0x30668081
	b       140$
	nop
123$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t3, water_table
	la.l    $t3, water_table
	lw      $t5, 0x0000($t3)
	lw      $t7, 0x00F8($t6)
	slt     $at, $t7, $t5
	beqz    $at, 137$
	nop
	li.u    $a0, 0x41160001
	jal     object_levelsound
	li.l    $a0, 0x41160001
	b       140$
	nop
137$:
	li.u    $a0, 0x41160001
	jal     object_levelsound
	li.l    $a0, 0x41160001
140$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t0, 0x0800
	sw      $t0, 0x0118($t4)
144$:
	b       164$
	nop
146$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	bnez    $v0, 162$
	nop
	lui     $at, %hi(object_80361262)
	sh      $0, %lo(object_80361262)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0118($t2)
162$:
	b       164$
	nop
164$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x00D4($t9)
	lw      $t6, 0x0118($t9)
	addu    $t5, $t3, $t6
	sw      $t5, 0x00D4($t9)
170$:
	b       172$
	nop
172$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C2CE8:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x2C00
	sh      $t6, 0x0006($sp)
	lui     $at, %hi(object_a_80337D20)
	ldc1    $f6, %lo(object_a_80337D20)($at)
	cvt.d.s $f4, $f12
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0000($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f4
	lhu     $t8, 0x00F6($t7)
	mtc1    $0, $f8
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	li      $at, 0x3FE00000
	add.d   $f6, $f18, $f4
	mtc1    $at, $f9
	lui     $at, %hi(object_a_80337D28)
	ldc1    $f16, %lo(object_a_80337D28)($at)
	mul.d   $f10, $f6, $f8
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	lwc1    $f8, 0x0000($sp)
	mul.d   $f18, $f10, $f16
	cvt.d.s $f10, $f8
	add.d   $f6, $f18, $f4
	mul.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x002C($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f10
	lhu     $t2, 0x00F6($t1)
	mtc1    $0, $f18
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	neg.s   $f8, $f4
	li      $at, 0x3FE00000
	cvt.d.s $f6, $f8
	mtc1    $at, $f19
	add.d   $f16, $f6, $f10
	mtc1    $0, $f8
	mtc1    $at, $f9
	mtc1    $0, $f10
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f11
	lwc1    $f18, 0x0000($sp)
	mul.d   $f6, $f4, $f8
	cvt.d.s $f4, $f18
	add.d   $f16, $f6, $f10
	mul.d   $f8, $f16, $f4
	cvt.s.d $f6, $f8
	swc1    $f6, 0x0030($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f16
	lhu     $t6, 0x00F6($t5)
	mtc1    $0, $f8
	sra     $t8, $t6, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	cvt.d.s $f18, $f10
	li      $at, 0x3FE00000
	add.d   $f4, $f18, $f16
	mtc1    $at, $f9
	lui     $at, %hi(object_a_80337D30)
	ldc1    $f10, %lo(object_a_80337D30)($at)
	mul.d   $f6, $f4, $f8
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	lwc1    $f8, 0x0000($sp)
	mul.d   $f18, $f6, $f10
	cvt.d.s $f6, $f8
	add.d   $f4, $f18, $f16
	mul.d   $f10, $f4, $f6
	cvt.s.d $f18, $f10
	swc1    $f18, 0x0034($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00F4($t0)
	addiu   $t2, $t7, 0x0200
	sw      $t2, 0x00F4($t0)
	li      $at, 0x41600000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0006($sp)
	lw      $t1, 0x00D4($t4)
	addu    $t8, $t1, $t6
	sw      $t8, 0x00D4($t4)
	b       115$
	nop
115$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_a_802C2EBC
object_a_802C2EBC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 35$
	nop
	jal     objlib_802A05D4
	nop
	jal     objlib_802A184C
	nop
	mtc1    $0, $f12
	jal     object_set_scale
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_a_80337D38)
	lwc1    $f6, %lo(object_a_80337D38)($at)
	lwc1    $f4, 0x015C($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    31$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t0)
31$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       58$
	sw      $0, 0x0154($t3)
35$:
	li.u    $a0, 0x40050001
	jal     object_levelsound
	li.l    $a0, 0x40050001
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x42700000
	mtc1    $at, $f16
	lw      $t5, 0x0154($t4)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	jal     object_a_802C2CE8
	div.s   $f12, $f10, $f16
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003C
	bnez    $at, 58$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
58$:
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C2FBC
object_a_802C2FBC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	jal     objlib_802A2748
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x01BC($t9)
	li.u    $a0, 0x40050001
	jal     object_levelsound
	li.l    $a0, 0x40050001
	jal     objlib_802A15AC
	nop
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f0, $f8
	nop
	bc1f    63$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, 63$
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t3)
	la.u    $a0, str_object_a_off
	la.l    $a0, str_object_a_off
	jal     db_put
	move    $a1, $0
	la.u    $t4, player_data
	la.l    $t4, player_data
	lw      $t5, 0x000C($t4)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t5, $at, 61$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0150($t6)
61$:
	b       87$
	nop
63$:
	li      $at, 0x41A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x01BC($t0)
	jal     objlib_802A1634
	nop
	li      $at, 0x43480000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    87$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0002
	sw      $t1, 0x014C($t2)
87$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_a_80337D3C)
	lwc1    $f6, %lo(object_a_80337D3C)($at)
	lwc1    $f4, 0x015C($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    100$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
100$:
	jal     objlib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	andi    $t6, $t8, 0x0200
	beqz    $t6, 112$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x00C8($t9)
112$:
	jal     objlib_802A2348
	li      $a0, 0x003C
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_a_802C2CE8
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002634
	la.l    $a2, o_13002634
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x009F
	b       126$
	nop
126$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C31C4
object_a_802C31C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lw      $t7, 0x0154($t6)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    26$
	nop
	li      $at, 0x42700000
	mtc1    $at, $f4
	lwc1    $f6, 0x001C($sp)
	jal     object_a_802C2CE8
	div.s   $f12, $f6, $f4
	b       48$
	nop
26$:
	jal     objlib_802A05B4
	nop
	jal     objlib_802A15AC
	nop
	lui     $at, %hi(object_a_80337D40)
	lwc1    $f8, %lo(object_a_80337D40)($at)
	c.lt.s  $f8, $f0
	nop
	bc1f    39$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
39$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0169
	bnez    $at, 48$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x014C($t1)
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C329C
object_a_802C329C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C58
	la.l    $a1, object_a_80330C58
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	la.u    $a0, object_a_80330C68
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330C68
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C32E8
object_a_802C32E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, 0x3700
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41B00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	jal     randf
	nop
	li      $at, 0x3FF00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 51$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A308C
	li      $a1, 0x42C80000
	jal     rand
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00D0($t3)
	jal     rand
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D4($t4)
51$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0154($t5)
	slti    $at, $t7, 0x0010
	bnez    $at, 60$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C33F4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C3440
object_a_802C3440:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x0110($t6)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C3460:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_1300277C
	jal     objlib_802A14FC
	la.l    $a0, o_1300277C
	bnez    $v0, 12$
	nop
	la.u    $a0, o_130027F4
	jal     objlib_802A14FC
	la.l    $a0, o_130027F4
	beqz    $v0, 24$
	nop
12$:
	lui     $t6, %hi(object_80361264)
	lh      $t6, %lo(object_80361264)($t6)
	bnez    $t6, 20$
	nop
	b       49$
	li      $v0, 0x0001
	b       22$
	nop
20$:
	b       49$
	move    $v0, $0
22$:
	b       45$
	nop
24$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 32$
	nop
	b       49$
	li      $v0, 0x0001
32$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x000A
	lw      $t1, 0x01A0($t0)
	bne     $t1, $at, 45$
	nop
	lui     $t2, %hi(object_flag)
	lw      $t2, %lo(object_flag)($t2)
	andi    $t3, $t2, 0x0020
	beqz    $t3, 45$
	nop
	b       49$
	li      $v0, 0x0001
45$:
	b       49$
	move    $v0, $0
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3534:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002768
	jal     objlib_802A14FC
	la.l    $a0, o_13002768
	beqz    $v0, 11$
	nop
	lui     $at, %hi(object_a_80337D44)
	lwc1    $f4, %lo(object_a_80337D44)($at)
	b       14$
	swc1    $f4, 0x001C($sp)
11$:
	lui     $at, %hi(object_a_80337D48)
	lwc1    $f6, %lo(object_a_80337D48)($at)
	swc1    $f6, 0x001C($sp)
14$:
	la.u    $a0, o_1300277C
	jal     objlib_802A14FC
	la.l    $a0, o_1300277C
	bnez    $v0, 24$
	nop
	la.u    $a0, o_130027F4
	jal     objlib_802A14FC
	la.l    $a0, o_130027F4
	beqz    $v0, 37$
	nop
24$:
	lui     $t6, %hi(object_80361264)
	lh      $t6, %lo(object_80361264)($t6)
	li      $at, 0x0001
	bne     $t6, $at, 33$
	nop
	b       80$
	li      $v0, 0x0001
	b       35$
	nop
33$:
	b       80$
	move    $v0, $0
35$:
	b       76$
	nop
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0001
	lw      $t8, 0x01A0($t7)
	bne     $t8, $at, 55$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    53$
	nop
	b       80$
	li      $v0, 0x0001
53$:
	b       76$
	nop
55$:
	jal     object_a_802C3460
	nop
	bnez    $v0, 76$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x015C($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    76$
	nop
	lui     $t2, %hi(object_80361250)
	lh      $t2, %lo(object_80361250)($t2)
	lw      $t1, 0x01A0($t0)
	beq     $t1, $t2, 74$
	nop
	bnez    $t2, 76$
	nop
74$:
	b       80$
	li      $v0, 0x0001
76$:
	b       80$
	move    $v0, $0
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C3684
object_a_802C3684:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(hud+0x04)
	lh      $t6, %lo(hud+0x04)($t6)
	slti    $at, $t6, 0x000C
	beqz    $at, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       43$
	nop
12$:
	sw      $0, 0x002C($sp)
13$:
	lw      $t7, 0x002C($sp)
	la.u    $t9, object_a_80330C84
	la.l    $t9, object_a_80330C84
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $t0, $t8, $t9
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0000($t0)
	lh      $a2, 0x0002($t0)
	lh      $a3, 0x0004($t0)
	la.u    $t3, o_13002804
	la.l    $t3, o_13002804
	li      $t2, 0x0054
	sw      $t2, 0x0014($sp)
	sw      $t3, 0x0018($sp)
	li      $a0, 0x0001
	jal     obj_make_off
	sw      $t1, 0x0010($sp)
	sw      $v0, 0x0028($sp)
	jal     rand
	nop
	lw      $t4, 0x0028($sp)
	sw      $v0, 0x00C8($t4)
	lw      $t5, 0x002C($sp)
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0003
	bnez    $at, 13$
	sw      $t6, 0x002C($sp)
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802C3748:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	lw      $t8, 0x00F4($t6)
	beq     $t7, $t8, 49$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	lw      $t1, 0x017C($t9)
	slt     $at, $t1, $t0
	beqz    $at, 33$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x017C($t2)
	addiu   $t4, $t3, 0x0014
	sw      $t4, 0x017C($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	lw      $t7, 0x017C($t5)
	slt     $at, $t6, $t7
	beqz    $at, 31$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	sw      $t9, 0x017C($t8)
31$:
	b       49$
	nop
33$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x017C($t0)
	addiu   $t3, $t1, -0x0014
	sw      $t3, 0x017C($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t2, 0x00F4($t4)
	lw      $t5, 0x017C($t4)
	slt     $at, $t5, $t2
	beqz    $at, 49$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	sw      $t7, 0x017C($t6)
49$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x437F0000
	mtc1    $at, $f8
	lw      $t8, 0x017C($t9)
	lui     $at, %hi(object_a_80337D50)
	ldc1    $f18, %lo(object_a_80337D50)($at)
	mtc1    $t8, $f4
	lui     $at, %hi(object_a_80337D58)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_a_80337D58)($at)
	cvt.d.s $f16, $f10
	lwc1    $f10, 0x00F8($t9)
	mul.d   $f4, $f16, $f18
	cvt.d.s $f16, $f10
	add.d   $f8, $f4, $f6
	mul.d   $f18, $f16, $f8
	cvt.s.d $f4, $f18
	swc1    $f4, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_set_scale
	lw      $a1, 0x001C($sp)
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C3884:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00FE($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x00D0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00FF
	lw      $t3, 0x017C($t2)
	beq     $t3, $at, 25$
	nop
	li      $at, 0x0001
	bne     $a0, $at, 80$
	nop
25$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00FE($t4)
	lwc1    $f8, 0x00F8($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f16, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D60)
	ldc1    $f4, %lo(object_a_80337D60)($at)
	cvt.d.s $f18, $f16
	cvt.d.s $f10, $f8
	mul.d   $f6, $f18, $f4
	add.d   $f16, $f10, $f6
	cvt.s.d $f18, $f16
	swc1    $f18, 0x002C($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00FE($t9)
	lwc1    $f18, 0x00F8($t9)
	sra     $t1, $t0, 4
	sll     $t6, $t1, 2
	addu    $at, $at, $t6
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_a_80337D68)
	ldc1    $f6, %lo(object_a_80337D68)($at)
	neg.s   $f8, $f4
	cvt.d.s $f4, $f18
	cvt.d.s $f10, $f8
	mul.d   $f16, $f10, $f6
	add.d   $f8, $f4, $f16
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0030($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x002C($t2)
	swc1    $f6, 0x0034($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00FE($t3)
	lwc1    $f18, 0x00F8($t3)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f16, $f18, $f4
	swc1    $f16, 0x00E4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x00FC($t4)
	addiu   $t1, $t0, 0x0400
	sw      $t1, 0x00FC($t4)
80$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C39D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t7, %lo(object)($t7)
	lw      $a1, 0x00D4($t8)
	jal     objlib_802A11A8
	lw      $a0, 0x00C8($t7)
	sh      $v0, 0x0024($sp)
	li      $t9, 0x1568
	sh      $t9, 0x0022($sp)
	li      $t0, 0x6B58
	sh      $t0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t1)
	lh      $t2, 0x0026($sp)
	lh      $t3, 0x0022($sp)
	slt     $at, $t3, $t2
	bnez    $at, 36$
	nop
	lh      $t4, 0x0024($sp)
	lh      $t5, 0x0020($sp)
	slt     $at, $t4, $t5
	beqz    $at, 59$
	nop
36$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0028
	lw      $t7, 0x017C($t6)
	bne     $t7, $at, 49$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t9)
	li.u    $a0, 0x50480081
	jal     object_playsound
	li.l    $a0, 0x50480081
49$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x017C($t0)
	slti    $at, $t1, 0x00B5
	bnez    $at, 57$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x001C($sp)
57$:
	b       69$
	nop
59$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x00FF
	lw      $t4, 0x017C($t3)
	bne     $t4, $at, 69$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0028
	sw      $t5, 0x00F4($t6)
69$:
	b       73$
	lw      $v0, 0x001C($sp)
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C3B08:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_802A05B4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x008C($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0104($t9)
	lw      $t1, 0x0018($sp)
	beqz    $t1, 28$
	nop
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x00C8($t2)
	b       57$
	sw      $t3, 0x0100($t4)
28$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	mtc1    $0, $f10
	lh      $t7, 0x00CA($t5)
	lh      $t8, 0x0162($t5)
	subu    $t6, $t7, $t8
	andi    $t0, $t6, 0xFFFF
	sra     $t9, $t0, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	c.lt.s  $f8, $f10
	nop
	bc1f    49$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00C8($t2)
	b       57$
	sw      $t3, 0x0100($t2)
49$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00C8($t4)
	addu    $t7, $t5, $at
	sll     $t8, $t7, 16
	sra     $t6, $t8, 16
	sw      $t6, 0x0100($t4)
57$:
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3C04:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	sll     $t8, $t7, 11
	addiu   $t9, $t8, 0x0800
	sw      $t9, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x000C($sp)
	swc1    $f4, 0x00B8($t0)
	lhu     $t1, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lui     $t4, %hi(object)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	lw      $t4, %lo(object)($t4)
	swc1    $f6, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0100($t5)
	sw      $t6, 0x00C8($t5)
	beqz    $a0, 47$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object_a_8033002C)
	lw      $t9, 0x0154($t7)
	lw      $t8, 0x00D4($t7)
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_a_8033002C)($t1)
	addu    $t2, $t8, $t1
	sw      $t2, 0x00D4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t9, %hi(object_a_8033002C)
	lw      $t6, 0x0154($t3)
	lw      $t4, 0x00D8($t3)
	sll     $t5, $t6, 1
	addu    $t9, $t9, $t5
	lh      $t9, %lo(object_a_8033002C)($t9)
	addu    $t0, $t4, $t9
	sw      $t0, 0x00D8($t3)
47$:
	b       49$
	nop
49$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802C3CD0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFC2000
	li.l    $at, 0xFFFC2000
	lw      $t7, 0x0154($t6)
	sll     $t8, $t7, 13
	addu    $t9, $t8, $at
	sw      $t9, 0x0004($sp)
	lhu     $t0, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lw      $t4, 0x00D4($t3)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	sw      $t6, 0x00D4($t3)
	b       30$
	nop
30$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_a_802C3D50:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0104($t6)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x008C($t9)
	ori     $t1, $t0, 0x0008
	sw      $t1, 0x008C($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C3D9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 12$
	nop
	jal     object_a_802C3B08
	move    $a0, $0
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0020
	beqz    $at, 39$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_8033002C)
	lui     $at, %hi(object_a_80337D70)
	lw      $t1, 0x0154($t0)
	lwc1    $f8, %lo(object_a_80337D70)($at)
	lwc1    $f16, 0x0018($sp)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_a_8033002C)($t3)
	move    $a0, $0
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	mfc1    $a1, $f18
	jal     object_a_802C3C04
	nop
	b       49$
	nop
39$:
	jal     objlib_802A05D4
	nop
	jal     object_a_802C3D50
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	b       53$
	li      $v0, 0x0001
49$:
	b       53$
	move    $v0, $0
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3E80:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 12$
	nop
	jal     object_a_802C3B08
	li      $a0, 0x0001
12$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0020
	beqz    $at, 39$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t3, %hi(object_a_8033002C)
	lui     $at, %hi(object_a_80337D74)
	lw      $t1, 0x0154($t0)
	lwc1    $f8, %lo(object_a_80337D74)($at)
	lwc1    $f16, 0x0018($sp)
	sll     $t2, $t1, 1
	addu    $t3, $t3, $t2
	lh      $t3, %lo(object_a_8033002C)($t3)
	li      $a0, 0x0001
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mul.s   $f18, $f10, $f16
	mfc1    $a1, $f18
	jal     object_a_802C3C04
	nop
	b       59$
	nop
39$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0030
	beqz    $at, 49$
	nop
	jal     object_a_802C3CD0
	nop
	b       59$
	nop
49$:
	jal     objlib_802A05D4
	nop
	jal     object_a_802C3D50
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	b       63$
	li      $v0, 0x0001
59$:
	b       63$
	move    $v0, $0
	b       63$
	nop
63$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C3F8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 30$
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x00C8($t9)
	sw      $t0, 0x00C8($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0088($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0009
	lw      $t5, 0x008C($t4)
	and     $t6, $t5, $at
	b       75$
	sw      $t6, 0x008C($t4)
30$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, 39$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F4($t9)
39$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001F
	beqz    $at, 49$
	nop
	lw      $t2, 0x00EC($t0)
	andi    $t3, $t2, 0x0200
	beqz    $t3, 75$
	nop
49$:
	jal     objlib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x0088($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t7, 0x0108($t4)
	beqz    $t7, 73$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0108($t8)
	sw      $t9, 0x001C($sp)
	la.u    $a0, o_130027E4
	jal     objlib_802A14FC
	la.l    $a0, o_130027E4
	bnez    $v0, 73$
	nop
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x01AC($t1)
	addiu   $t2, $t0, 0x0001
	sw      $t2, 0x01AC($t1)
73$:
	b       95$
	li      $v0, 0x0001
75$:
	li      $at, 0x40A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D8($t5)
	addiu   $t4, $t6, 0x0800
	sw      $t4, 0x00D8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D4($t7)
	addiu   $t9, $t8, 0x0800
	sw      $t9, 0x00D4($t7)
	b       95$
	move    $v0, $0
	b       95$
	nop
95$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C4118:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x00FF
	bne     $t8, $a0, 10$
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

object_a_802C4158:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 38$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, 30$
	nop
	jal     object_a_802C4118
	li      $a0, 0x0003
	bnez    $v0, 30$
	nop
	jal     objlib_802A05B4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	li.u    $a0, 0x500B0081
	jal     object_playsound
	li.l    $a0, 0x500B0081
	li      $t3, 0x0001
	b       38$
	sw      $t3, 0x001C($sp)
30$:
	li.u    $a0, 0x500A0081
	jal     object_playsound
	li.l    $a0, 0x500A0081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	li      $t5, -0x0001
	sw      $t5, 0x001C($sp)
38$:
	b       42$
	lw      $v0, 0x001C($sp)
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C4210:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	jal     object_a_802C39D4
	nop
	beqz    $v0, 97$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x8000
	sw      $t6, 0x0130($t7)
	jal     objlib_802A15AC
	nop
	lui     $at, %hi(object_a_80337D78)
	lwc1    $f4, %lo(object_a_80337D78)($at)
	c.lt.s  $f4, $f0
	nop
	bc1f    25$
	nop
	jal     objlib_802A2748
	nop
	b       29$
	sh      $v0, 0x001A($sp)
25$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sh      $t9, 0x001A($sp)
29$:
	lh      $a0, 0x001A($sp)
	jal     objlib_8029E5EC
	lh      $a1, 0x0026($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
	jal     objlib_802A0114
	nop
	bnez    $v0, 77$
	nop
	lui     $t1, %hi(object)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A4($t2)
	lwc1    $f8, 0x00A4($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    77$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    77$
	nop
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t3, %hi(object)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00A4($t4)
	li      $a2, 0x41200000
	li      $a3, 0x40000000
	lwc1    $f12, 0x00A4($t3)
	jal     objlib_802A1370
	add.s   $f14, $f8, $f10
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x00B0($t5)
77$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f16
	lwc1    $f18, 0x010C($t6)
	lwc1    $f14, 0x0028($sp)
	jal     objlib_8029FE00
	sub.s   $f12, $f16, $f18
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B8($t7)
	c.eq.s  $f4, $f6
	nop
	bc1t    95$
	nop
	jal     object_a_802C3884
	move    $a0, $0
95$:
	b       115$
	nop
97$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0130($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E4($t1)
115$:
	b       117$
	nop
117$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C43F4
object_a_802C43F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0040
	sh      $t8, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, 17$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x01A0($t2)
17$:
	jal     objlib_802A184C
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0110($t3)
	sw      $t4, 0x00C8($t3)
	jal     object_a_802C33F4
	nop
	la.u    $a0, o_13002790
	jal     objlib_8029F95C
	la.l    $a0, o_13002790
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x0108($t5)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t6)
	jal     object_a_802C3534
	nop
	beqz    $v0, 63$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0144($t9)
	bne     $t0, $at, 59$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0108($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t2, 0x0005
	b       63$
	sw      $t2, 0x014C($t4)
59$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t5)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C4508
object_a_802C4508:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001E
	beqz    $at, 26$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	li      $at, 0x41500000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	jal     object_a_802C3884
	move    $a0, $0
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	b       36$
	swc1    $f8, 0x0128($t0)
26$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	li      $at, 0x41F00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0128($t3)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C45B0
object_a_802C45B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 27$
	nop
	jal     randf
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f6
	neg.s   $f4, $f0
	lui     $t8, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t8, %lo(object)($t8)
	swc1    $f8, 0x010C($t8)
	jal     randf
	nop
	li      $at, 0x43000000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x01B0($t1)
27$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	lh      $a1, 0x01B0($t2)
	li      $a2, 0x3F000000
	jal     object_a_802C4210
	addiu   $a1, $a1, 0x0180
	jal     object_a_802C4158
	nop
	sw      $v0, 0x001C($sp)
	jal     object_a_802C3460
	nop
	beqz    $v0, 45$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
45$:
	lw      $t4, 0x001C($sp)
	li      $at, -0x0001
	bne     $t4, $at, 53$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
53$:
	lw      $t7, 0x001C($sp)
	li      $at, 0x0001
	bne     $t7, $at, 61$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
61$:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	bne     $t0, $at, 68$
	nop
	li.u    $a0, 0x50244081
	jal     object_makesound
	li.l    $a0, 0x50244081
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C46D8
object_a_802C46D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, 12$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C4720
object_a_802C4720:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802C3F8C
	nop
	beqz    $v0, 22$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 16$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       22$
	nop
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	jal     objlib_802A057C
	nop
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C4790
object_a_802C4790:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002804
	jal     objlib_8029F95C
	la.l    $a0, o_13002804
	bnez    $v0, 10$
	nop
	li      $t6, 0x006C
	b       12$
	sw      $t6, 0x001C($sp)
10$:
	li      $t7, 0x006B
	sw      $t7, 0x001C($sp)
12$:
	li      $a0, 0x0002
	li      $a1, 0x0002
	lw      $a2, 0x001C($sp)
	jal     objlib_802A4960
	move    $a3, $0
	beqz    $v0, 31$
	nop
	li.u    $a0, 0x50244081
	jal     object_makesound
	li.l    $a0, 0x50244081
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lw      $t8, 0x001C($sp)
	li      $at, 0x006C
	bne     $t8, $at, 31$
	nop
	jal     Na_Solution
	nop
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C4824
object_a_802C4824:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330C98
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330C98
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a1, o_13002684
	la.l    $a1, o_13002684
	jal     objlib_802A1554
	lw      $a0, 0x0068($t6)
	beqz    $v0, 30$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	bnez    $t8, 30$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0088($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0088($t0)
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0134($t3)
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C48C0
object_a_802C48C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, o_13002768
	jal     objlib_802A14FC
	la.l    $a0, o_13002768
	beqz    $v0, 13$
	nop
	jal     object_a_802C53CC
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x000A
	sw      $t6, 0x01AC($t7)
13$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0108($t8)
	jal     object_a_802C3534
	nop
	beqz    $v0, 64$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, db_work
	la.l    $t1, db_work
	lh      $t2, 0x0050($t1)
	lw      $t0, 0x01AC($t9)
	addiu   $t3, $t2, 0x0005
	slt     $at, $t0, $t3
	bnez    $at, 64$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     objlib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0110($t6)
	sw      $t7, 0x00C8($t6)
	jal     objlib_8029F694
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x00FF
	sw      $t8, 0x00F4($t9)
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0003
	sw      $t2, 0x0184($t0)
	li      $at, 0x40400000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	jal     objlib_802A05D4
	nop
	b       70$
	nop
64$:
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A05B4
	nop
	jal     object_a_802C33F4
	nop
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C49F0
object_a_802C49F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0184($t6)
	bne     $t7, $at, 14$
	nop
	li      $t8, 0x0180
	sh      $t8, 0x0022($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f4
	b       31$
	swc1    $f4, 0x001C($sp)
14$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0002
	lw      $t0, 0x0184($t9)
	bne     $t0, $at, 26$
	nop
	li      $t1, 0x0240
	sh      $t1, 0x0022($sp)
	lui     $at, %hi(object_a_80337D7C)
	lwc1    $f6, %lo(object_a_80337D7C)($at)
	b       31$
	swc1    $f6, 0x001C($sp)
26$:
	li      $t2, 0x0300
	sh      $t2, 0x0022($sp)
	lui     $at, %hi(object_a_80337D80)
	lwc1    $f8, %lo(object_a_80337D80)($at)
	swc1    $f8, 0x001C($sp)
31$:
	li      $at, 0xC2C80000
	mtc1    $at, $f12
	lh      $a1, 0x0022($sp)
	jal     object_a_802C4210
	lw      $a2, 0x001C($sp)
	jal     object_a_802C4158
	nop
	sw      $v0, 0x0024($sp)
	la.u    $a0, o_1300277C
	jal     objlib_802A14FC
	la.l    $a0, o_1300277C
	beqz    $v0, 53$
	nop
	lui     $t3, %hi(object_80361264)
	lh      $t3, %lo(object_80361264)($t3)
	bnez    $t3, 51$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
51$:
	b       60$
	nop
53$:
	jal     object_a_802C3460
	nop
	beqz    $v0, 60$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
60$:
	lw      $t6, 0x0024($sp)
	li      $at, -0x0001
	bne     $t6, $at, 68$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
68$:
	lw      $t9, 0x0024($sp)
	li      $at, 0x0001
	bne     $t9, $at, 76$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
76$:
	lw      $t2, 0x0024($sp)
	li      $at, 0x0001
	bne     $t2, $at, 83$
	nop
	li.u    $a0, 0x500CA081
	jal     object_makesound
	li.l    $a0, 0x500CA081
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C4B54
object_a_802C4B54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, 12$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4B9C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x44750000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337D84)
	lwc1    $f14, %lo(object_a_80337D84)($at)
	jal     object_b_802F2B88
	li      $a2, 0x437A0000
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x442F0000
	mtc1    $at, $f12
	li      $at, 0x45480000
	mtc1    $at, $f14
	li.u    $a2, 0x44ED8000
	jal     object_b_802F2B88
	li.l    $a2, 0x44ED8000
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C4C10:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0xC4C80000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337D88)
	lwc1    $f14, %lo(object_a_80337D88)($at)
	jal     object_b_802F2B88
	li      $a2, 0x434D0000
	la.u    $a0, o_13002968
	jal     objlib_8029F95C
	la.l    $a0, o_13002968
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 18$
	nop
	lw      $t8, 0x001C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0088($t8)
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C4C70
object_a_802C4C70:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
12$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bnez    $t2, 56$
	nop
	jal     object_a_802C3F8C
	nop
	beqz    $v0, 54$
	nop
	jal     objlib_802A057C
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0144($t5)
	bnez    $t6, 42$
	nop
	jal     object_a_802C4B9C
	nop
	b       54$
	nop
42$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t9, 0x0144($t7)
	bne     $t9, $at, 52$
	nop
	jal     object_a_802C4C10
	nop
	b       54$
	nop
52$:
	jal     object_a_802C4BD4
	nop
54$:
	b       83$
	nop
56$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	bnez    $t8, 73$
	nop
	jal     objlib_802A37AC
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	lwc1    $f4, 0x00F8($t1)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00F8($t1)
73$:
	li      $at, 0x42200000
	mtc1    $at, $f12
	jal     object_a_802C3E80
	nop
	beqz    $v0, 83$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C4DD4
object_a_802C4DD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	jal     object_a_802C33F4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 78$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x03CD
	move    $a2, $0
	jal     objlib_8029E914
	li      $a3, 0x0272
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x003D
	bnez    $at, 76$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    76$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x03CD
	move    $a2, $0
	jal     objlib_8029E914
	li      $a3, 0x02CD
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t2, o_13002898
	la.l    $t2, o_13002898
	li      $t1, 0x0035
	sw      $t1, 0x0014($sp)
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t0, 0x0010($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t5, o_13002898
	la.l    $t5, o_13002898
	li      $t4, 0x0035
	sw      $t4, 0x0014($sp)
	sw      $t5, 0x0018($sp)
	li      $a0, 0x0001
	move    $a1, $0
	move    $a2, $0
	li      $a3, -0x00C8
	jal     obj_make_off
	sw      $t3, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t9, o_13002898
	la.l    $t9, o_13002898
	li      $t7, 0x0035
	sw      $t7, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	li      $a0, 0x0002
	move    $a1, $0
	move    $a2, $0
	li      $a3, 0x00C8
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
76$:
	b       81$
	nop
78$:
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C4F30
object_a_802C4F30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330C74
	la.l    $a1, object_a_80330C74
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F8($t6)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t6)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330CB0
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330CB0
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C4FB0
object_a_802C4FB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0108($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x00FF
	sw      $t7, 0x00F4($t8)
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t9)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	jal     objlib_802A05D4
	nop
	jal     object_a_802C3534
	nop
	beqz    $v0, 29$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C503C
object_a_802C503C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f12
	li      $a1, 0x0200
	jal     object_a_802C4210
	li      $a2, 0x3F000000
	jal     object_a_802C4158
	nop
	sw      $v0, 0x001C($sp)
	jal     object_a_802C3460
	nop
	beqz    $v0, 17$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
17$:
	lw      $t7, 0x001C($sp)
	li      $at, -0x0001
	bne     $t7, $at, 25$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
25$:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	bne     $t0, $at, 33$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C50D8
object_a_802C50D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f12
	jal     object_a_802C3D9C
	nop
	beqz    $v0, 12$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5120
object_a_802C5120:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_a_802C3F8C
	nop
	beqz    $v0, 9$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
9$:
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C515C
object_a_802C515C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(hud+0x04)
	lh      $t6, %lo(hud+0x04)($t6)
	slti    $at, $t6, 0x000C
	beqz    $at, 12$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       24$
	nop
12$:
	lui     $a0, %hi(object)
	la.u    $a2, o_1300167C
	la.l    $a2, o_1300167C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x005A
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x001C($sp)
	lw      $t8, 0x0188($t7)
	sw      $t8, 0x0188($t9)
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C51D4
object_a_802C51D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330CC4
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330CC4
	jal     objlib_802A2348
	li      $a0, 0x004E
	jal     object_a_802C3748
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5224
object_a_802C5224:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 86$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 97$
	nop
	b       99$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t7)
	c.lt.s  $f4, $f6
	nop
	bc1f    84$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0088($t8)
	slti    $at, $t9, 0x0005
	beqz    $at, 61$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0005
	lw      $t1, 0x00FC($t0)
	beq     $t1, $at, 56$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0088($t2)
	subu    $t5, $t3, $t4
	slti    $at, $t5, 0x0002
	beqz    $at, 56$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130027F4
	la.l    $a2, o_130027F4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0054
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
56$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
61$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0088($t2)
	slti    $at, $t3, 0x0005
	bnez    $at, 84$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300277C
	la.l    $a2, o_1300277C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0054
	sw      $v0, 0x0024($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_802A5228
	lw      $a0, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	jal     Na_Solution
	nop
84$:
	b       99$
	nop
86$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, 95$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x014C($t6)
95$:
	b       99$
	nop
97$:
	b       99$
	nop
99$:
	b       101$
	nop
101$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C53CC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(camera_8032DF30)
	sw      $t6, %lo(camera_8032DF30)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C53EC
object_a_802C53EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A3C18
	nop
	b       6$
	nop
6$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5414
object_a_802C5414:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x014C($t7)
	bnez    $t8, 35$
	nop
	jal     objlib_8029F6BC
	nop
	lui     $t9, %hi(hud+0x04)
	lh      $t9, %lo(hud+0x04)($t9)
	slti    $at, $t9, 0x000C
	beqz    $at, 23$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
23$:
	lui     $t0, %hi(object_80361250)
	lh      $t0, %lo(object_80361250)($t0)
	li      $at, 0x0001
	bne     $t0, $at, 33$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x014C($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t1)
33$:
	b       136$
	nop
35$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x014C($t4)
	bne     $t5, $at, 83$
	nop
	jal     objlib_8029F694
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x00B4
	sw      $t6, 0x017C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 56$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     object_set_scale
	lwc1    $f12, 0x00F8($t0)
56$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f8
	lwc1    $f6, 0x015C($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    73$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x014C($t3)
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x014C($t3)
	li.u    $a0, 0x50480081
	jal     object_playsound
	li.l    $a0, 0x50480081
73$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	b       136$
	sh      $t7, 0x001E($sp)
83$:
	li      $at, 0x42000000
	mtc1    $at, $f12
	li      $at, 0x3F800000
	mtc1    $at, $f14
	jal     objlib_8029E398
	nop
	li      $at, 0xC47A0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0164($t8)
	lui     $at, %hi(object_a_80337D8C)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, %lo(object_a_80337D8C)($at)
	swc1    $f18, 0x016C($t9)
	jal     objlib_802A2748
	nop
	sh      $v0, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337D90)
	lwc1    $f6, %lo(object_a_80337D90)($at)
	lwc1    $f4, 0x00A8($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    126$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x017C($t2)
	blez    $t1, 123$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x017C($t4)
	addiu   $t5, $t3, -0x0014
	b       126$
	sw      $t5, 0x017C($t4)
123$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x017C($t6)
126$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0074($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 136$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
136$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B0($t1)
	jal     objlib_802A2748
	nop
	sh      $v0, 0x001E($sp)
	lh      $a0, 0x001E($sp)
	jal     objlib_8029E5EC
	li      $a1, 0x05A8
	jal     object_a_802C3884
	li      $a0, 0x0001
	jal     objlib_802A2644
	nop
	b       153$
	nop
153$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5688
object_a_802C5688:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0144($t6)
	beqz    $s0, 21$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 16$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 27$
	nop
	b       32$
	nop
16$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	b       32$
	nop
21$:
	li      $at, 0xC34E0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0024($sp)
	b       32$
	nop
27$:
	lui     $at, %hi(object_a_80337D94)
	lwc1    $f8, %lo(object_a_80337D94)($at)
	swc1    $f8, 0x0024($sp)
	b       32$
	nop
32$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 48$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 60$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 89$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 110$
	nop
	b       123$
	nop
48$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x441B0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0168($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
60$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
	li.u    $a0, 0x40080001
	jal     object_levelsound
	li.l    $a0, 0x40080001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x00A4($t3)
	c.lt.s  $f16, $f10
	nop
	bc1f    87$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0024($sp)
	swc1    $f18, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
87$:
	b       123$
	nop
89$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x0154($t8)
	bnez    $t0, 97$
	nop
	li.u    $a0, 0x303D0081
	jal     object_playsound
	li.l    $a0, 0x303D0081
97$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     objlib_802A3DD4
	lw      $a0, 0x0154($t1)
	beqz    $v0, 108$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x014C($t9)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x014C($t9)
108$:
	b       123$
	nop
110$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0154($t4)
	bnez    $t6, 121$
	nop
	lw      $t7, 0x0144($t4)
	li      $at, 0x0001
	bne     $t7, $at, 121$
	nop
	jal     Na_Solution
	nop
121$:
	b       123$
	nop
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C5890
object_a_802C5890:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       17$
	sw      $0, 0x014C($t9)
13$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
17$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x014C($t2)
	bnez    $t3, 43$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x0162($t4)
	lwc1    $f6, 0x015C($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sw      $t9, 0x0114($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	lw      $t2, 0x0114($t0)
	addu    $t3, $t1, $t2
	b       94$
	sw      $t3, 0x00D0($t0)
43$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     objlib_802A3674
	lw      $a0, 0x00D0($t5)
	slti    $at, $v0, 0x0BB8
	bnez    $at, 56$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0010
	bnez    $at, 94$
	nop
56$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t4, 0x00D2($t9)
	blez    $t4, 80$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	slti    $at, $t2, 0x00C8
	beqz    $at, 74$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	b       78$
	sw      $0, 0x00D0($t3)
74$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, -0x00C8
	sw      $t0, 0x0114($t5)
78$:
	b       94$
	nop
80$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	slti    $at, $t7, -0x00C7
	bnez    $at, 90$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       94$
	sw      $0, 0x00D0($t8)
90$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t9, 0x00C8
	sw      $t9, 0x0114($t4)
94$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	lw      $t3, 0x0114($t1)
	addu    $t0, $t2, $t3
	sw      $t0, 0x00D0($t1)
	b       102$
	nop
102$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5A38
object_a_802C5A38:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E2F8
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x015C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 24$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	b       62$
	nop
24$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 29$
	nop
29$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0088($t1)
	beqz    $t2, 39$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x014C($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x014C($t3)
39$:
	b       64$
	nop
41$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	li.u    $a0, 0x410D0001
	jal     object_levelsound
	li.l    $a0, 0x410D0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0066
	bnez    $at, 60$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
60$:
	b       64$
	nop
62$:
	b       64$
	nop
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C5B54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	bnez    $t7, 24$
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	li      $at, 0x000A
	bne     $t8, $at, 22$
	nop
	li      $a0, 0x0013
	li      $a1, 0x002D
	li      $a2, 0x0014
	jal     Na_SeqPush
	li      $a3, 0x00C8
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F8($t9)
22$:
	b       79$
	nop
24$:
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t2)
	lw      $t3, 0x001C($sp)
	bnez    $t3, 36$
	nop
	b       39$
	sh      $0, 0x001A($sp)
36$:
	lw      $t4, 0x001C($sp)
	lh      $t5, 0x0000($t4)
	sh      $t5, 0x001A($sp)
39$:
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 47$
	nop
	lhu     $t6, 0x001A($sp)
	li      $at, 0x001A
	bne     $t6, $at, 56$
	nop
47$:
	li      $a0, 0x0013
	move    $a1, $0
	li      $a2, 0x004E
	jal     Na_SeqPush
	li      $a3, 0x0032
	li      $t7, 0x0001
	lui     $at, %hi(object_80361264)
	b       63$
	sh      $t7, %lo(object_80361264)($at)
56$:
	li      $a0, 0x0013
	li      $a1, 0x002D
	li      $a2, 0x0014
	jal     Na_SeqPush
	li      $a3, 0x00C8
	lui     $at, %hi(object_80361264)
	sh      $0, %lo(object_80361264)($at)
63$:
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	beqz    $t8, 76$
	nop
	li      $at, 0x000A
	beq     $t8, $at, 76$
	nop
	jal     Na_SeqPull
	li      $a0, 0x012C
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	b       79$
	sw      $0, 0x00F8($t0)
76$:
	li.u    $a0, 0x400F4001
	jal     object_levelsound
	li.l    $a0, 0x400F4001
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C5CA8
object_a_802C5CA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	bnez    $t7, 19$
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	li      $at, 0x000D
	bne     $t8, $at, 17$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00FC($t9)
17$:
	b       34$
	nop
19$:
	li.u    $a0, 0x60098001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x60098001
	lui     $t2, %hi(object_80361250)
	lh      $t2, %lo(object_80361250)($t2)
	li      $at, 0x000D
	beq     $t2, $at, 34$
	nop
	beqz    $t2, 34$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00FC($t3)
34$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0088($t4)
	bnez    $t5, 59$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0080
	sw      $t6, 0x0118($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00C8($t8)
	lw      $t1, 0x0118($t8)
	addu    $t9, $t0, $t1
	sw      $t9, 0x00C8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	lw      $t4, 0x0118($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00D4($t2)
	jal     object_a_802C5B54
	nop
	b       64$
	nop
59$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	jal     Na_SeqPull
	li      $a0, 0x012C
64$:
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5DC0
object_a_802C5DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t7, 0x0050($t6)
	li      $at, 0x0001
	bne     $t7, $at, 23$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0118($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x011C($t0)
23$:
	la.u    $t1, db_work
	la.l    $t1, db_work
	lh      $t2, 0x0050($t1)
	li      $at, 0x0002
	bne     $t2, $at, 50$
	nop
	la.u    $t3, db_work
	la.l    $t3, db_work
	lh      $t4, 0x0052($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t5, $t4, 12
	sw      $t5, 0x00D0($t6)
	la.u    $t7, db_work
	la.l    $t7, db_work
	lh      $t8, 0x0054($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t9, $t8, 12
	sw      $t9, 0x00D4($t0)
	la.u    $t1, db_work
	la.l    $t1, db_work
	lh      $t2, 0x0056($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sll     $t3, $t2, 12
	sw      $t3, 0x00D8($t4)
50$:
	la.u    $t5, db_work
	la.l    $t5, db_work
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t6, 0x0058($t5)
	sw      $t6, 0x0114($t7)
	la.u    $t8, db_work
	la.l    $t8, db_work
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x005A($t8)
	sw      $t9, 0x0118($t0)
	la.u    $t1, db_work
	la.l    $t1, db_work
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t2, 0x005C($t1)
	sw      $t2, 0x011C($t3)
	la.u    $t4, db_work
	la.l    $t4, db_work
	lh      $t5, 0x0050($t4)
	li      $at, 0x0003
	bne     $t5, $at, 92$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	lw      $t8, 0x0114($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00D4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	lw      $t7, 0x011C($t4)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00D8($t4)
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5F48
object_a_802C5F48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x41F00000
	jal     objlib_8029F6E0
	li      $a3, 0x43960000
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t7, 0x0040($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x0064
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x01F8($t9)
	la.u    $t0, db_work
	la.l    $t0, db_work
	lh      $t1, 0x0042($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	addiu   $t2, $t1, 0x012C
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x01FC($t3)
	lui     $a0, %hi(object)
	jal     objlib_802A513C
	lw      $a0, %lo(object)($a0)
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C5FDC
object_a_802C5FDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 23$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    23$
	nop
	jal     Na_Solution
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C6050
object_a_802C6050:
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00100000
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x0134($t0)
	or      $t2, $t1, $at
	sw      $t2, 0x0134($t0)
14$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lw      $t5, 0x00D8($t4)
	sw      $t5, 0x00D8($t3)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C60AC
object_a_802C60AC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_13002A7C
	la.l    $t8, o_13002A7C
	li      $t7, 0x0035
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	move    $a0, $0
	li      $a1, -0x0166
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_13002A7C
	la.l    $t1, o_13002A7C
	li      $t0, 0x0035
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	li      $a1, 0x0166
	move    $a2, $0
	move    $a3, $0
	jal     obj_make_off
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $at, 0x8000
	lw      $t3, 0x00C8($t2)
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t2)
	b       37$
	nop
37$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_a_802C6150:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li      $at, 0x192B
	beq     $t7, $at, 9$
	nop
	li      $at, 0x192C
	bne     $t7, $at, 14$
	nop
9$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	b       29$
	sw      $t8, 0x014C($t9)
14$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0400
	sw      $t0, 0x011C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00100000
	lw      $t3, 0x0134($t2)
	and     $t4, $t3, $at
	beqz    $t4, 29$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t6)
29$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C61D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 10$
	nop
	li.u    $a0, 0x300E8081
	jal     object_playsound
	li.l    $a0, 0x300E8081
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	addiu   $t0, $t9, -0x0100
	sw      $t0, 0x011C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	lw      $t3, 0x011C($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00D8($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D8($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, 35$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, -0x4000
	sw      $t7, 0x00D8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C6278:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
13$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C62BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	addiu   $t8, $t7, 0x0400
	sw      $t8, 0x00D8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D8($t9)
	blez    $t0, 23$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $at, 0xFFEFFFFF
	li.l    $at, 0xFFEFFFFF
	lw      $t4, 0x0134($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0134($t3)
23$:
	jr      $ra
	nop
	jr      $ra
	nop

object_a_802C6328:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x3C00
	sw      $t6, 0x00D8($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C6348
object_a_802C6348:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_a_80337D98)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_a_80337D98)($at)
	jr      $t7
	nop
.globl L802C6380
L802C6380:
	jal     object_a_802C6150
	nop
	b       34$
	nop
.globl L802C6390
L802C6390:
	jal     object_a_802C61D4
	nop
	b       34$
	nop
.globl L802C63A0
L802C63A0:
	jal     object_a_802C6278
	nop
	b       34$
	nop
.globl L802C63B0
L802C63B0:
	jal     object_a_802C62BC
	nop
	b       34$
	nop
.globl L802C63C0
L802C63C0:
	jal     object_a_802C6328
	nop
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C63E8
object_a_802C63E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	sub.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f8, $f10
	nop
	bc1f    41$
	nop
	lwc1    $f16, 0x01FC($t6)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	add.s   $f18, $f4, $f16
	add.s   $f8, $f18, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    41$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x000B
	bnez    $at, 41$
	nop
	la.u    $t0, player_data
	la.l    $t0, player_data
	lw      $t1, 0x000C($t0)
	li      $at, 0x00100000
	and     $t2, $t1, $at
	bnez    $t2, 41$
	nop
	li      $at, 0x428C0000
	mtc1    $at, $f12
	jal     objlib_802A3818
	nop
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C64A4
object_a_802C64A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	la.u    $t6, o_13002AD0
	la.l    $t6, o_13002AD0
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t6, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     objlib_8029EE24
	li      $a3, 0x008F
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	beqz    $t7, 22$
	nop
	lw      $a0, 0x0024($sp)
	jal     objlib_802A2FC0
	li      $a1, 0x42B40000
	lw      $a0, 0x0024($sp)
	li      $a1, 0x3F800000
	jal     objlib_802A2F5C
	li      $a2, 0x0000
22$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0002
	bnez    $at, 31$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C6538:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 14$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x0000($a0)
	jr      $ra
	li      $v0, 0x0001
	b       28$
	nop
14$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	andi    $t3, $t2, 0x0400
	beqz    $t3, 28$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x8000
	lw      $t5, 0x00C8($t4)
	addu    $t6, $t5, $at
	sw      $t6, 0x0000($a0)
	jr      $ra
	li      $v0, -0x0001
28$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C65C0
object_a_802C65C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	beqz    $t7, 21$
	nop
	la.u    $a0, object_a_80330CD4
	li.u    $a1, 0x50244081
	li.l    $a1, 0x50244081
	la.l    $a0, object_a_80330CD4
	jal     objlib_802A4360
	lw      $a2, 0x00F4($t6)
	beqz    $v0, 21$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x0150($t9)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0150($t0)
	beq     $t1, $at, 30$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F8($t2)
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	sltiu   $at, $t4, 0x0006
	beqz    $at, 301$
	nop
	sll     $t4, $t4, 2
	lui     $at, %hi(object_a_80337DAC)
	addu    $at, $at, $t4
	lw      $t4, %lo(object_a_80337DAC)($at)
	jr      $t4
	nop
.globl L802C6668
L802C6668:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00EC($t5)
	andi    $t6, $t7, 0x0001
	beqz    $t6, 51$
	nop
	li.u    $a0, 0x502F0081
	jal     object_playsound
	li.l    $a0, 0x502F0081
51$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00EC($t8)
	andi    $t0, $t9, 0x0003
	beqz    $t0, 74$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0164($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00A4($t2)
	swc1    $f6, 0x0168($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00A8($t3)
	swc1    $f8, 0x016C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0150($t4)
	addiu   $t7, $t5, 0x0001
	sw      $t7, 0x0150($t4)
74$:
	b       301$
	nop
.globl L802C66F0
L802C66F0:
	li      $at, 0x40A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t6)
	jal     objlib_802A15AC
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f0
	nop
	bc1f    97$
	nop
	jal     objlib_802A2748
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       162$
	sw      $v0, 0x0160($t8)
97$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	bnez    $t0, 136$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00FC($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x0160($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $a0, 0x0160($t3)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t3)
	slti    $at, $v0, 0x0800
	beqz    $at, 134$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F8($t7)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t4)
	li.u    $a0, 0x90444081
	jal     object_playsound
	li.l    $a0, 0x90444081
134$:
	b       162$
	nop
136$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t8, 0x00F8($t6)
	bne     $t8, $at, 162$
	nop
	li      $at, 0x41700000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00FC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00FC($t3)
	slti    $at, $t5, 0x0033
	bnez    $at, 162$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F8($t7)
162$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_a_802C6538
	addiu   $a0, $a0, 0x0160
	beqz    $v0, 172$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t4, 0x0002
	sw      $t4, 0x0150($t6)
172$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t8)
	b       301$
	nop
.globl L802C688C
L802C688C:
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0162($t1)
	lh      $t0, 0x00CA($t1)
	bne     $t2, $t0, 195$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	sw      $t3, 0x0150($t5)
195$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC3480000
	mtc1    $at, $f18
	lwc1    $f8, 0x00A4($t7)
	lwc1    $f10, 0x0168($t7)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    209$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
209$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a1, 0x0400
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t4)
	b       301$
	nop
.globl L802C6920
L802C6920:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t8, 0x008C($t6)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t6)
	li      $at, 0xC1200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	li      $at, 0x41F00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t2)
	li.u    $a0, 0x90444081
	jal     object_playsound
	li.l    $a0, 0x90444081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t3, 0x0150($t0)
	addiu   $t5, $t3, 0x0001
	sw      $t5, 0x0150($t0)
	b       301$
	nop
.globl L802C6990
L802C6990:
	li      $at, 0xC1200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t7)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t8, 0x00EC($t4)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 277$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t1, 0x0150($t6)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0150($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00FC($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x008C($t0)
	ori     $t4, $t7, 0x0008
	sw      $t4, 0x008C($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
277$:
	b       301$
	nop
.globl L802C6A1C
L802C6A1C:
	li      $at, 0x40000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	addiu   $t6, $t2, 0x0001
	sw      $t6, 0x00FC($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x00FC($t3)
	slti    $at, $t5, 0x001F
	bnez    $at, 299$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
299$:
	b       301$
	nop
301$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B8($t4)
	c.lt.s  $f18, $f4
	nop
	bc1f    314$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	b       318$
	swc1    $f6, 0x0018($sp)
314$:
	li      $at, 0x40400000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0018($sp)
318$:
	move    $a0, $0
	jal     objlib_8029F514
	lw      $a1, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00EC($t0)
	andi    $t9, $t8, 0x0003
	beqz    $t9, 332$
	nop
	li.u    $a2, 0x90434081
	li.l    $a2, 0x90434081
	li      $a0, 0x0001
	jal     object_a_802BECB0
	li      $a1, 0x0017
332$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t6, 0x0068($t2)
	beq     $t6, $t2, 355$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A46CC
	lw      $a0, %lo(object)($a0)
	beqz    $v0, 345$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
345$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t3, 0x0074($t1)
	bnez    $t3, 355$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	lw      $t4, 0x0068($t7)
	sw      $t5, 0x0088($t4)
355$:
	jal     objlib_802A2348
	li      $a0, -0x0032
	b       359$
	nop
359$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C6B6C
object_a_802C6B6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001F
	bnez    $at, 58$
	nop
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	lwc1    $f6, 0x015C($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    58$
	nop
	lui     $at, %hi(object_a_80337DC4)
	lwc1    $f8, %lo(object_a_80337DC4)($at)
	c.lt.s  $f6, $f8
	nop
	bc1f    58$
	nop
	li.u    $a0, 0x90444081
	jal     object_playsound
	li.l    $a0, 0x90444081
	lui     $a0, %hi(object)
	la.u    $a2, o_13002B5C
	la.l    $a2, o_13002B5C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0065
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x001C($sp)
	lw      $t1, 0x00F4($t0)
	sw      $t1, 0x00F4($t2)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lw      $t3, 0x001C($sp)
	swc1    $f10, 0x00B8($t3)
	li      $at, 0x42A00000
	mtc1    $at, $f16
	lw      $t4, 0x001C($sp)
	swc1    $f16, 0x00B0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x014C($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x014C($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0001
	sw      $t9, 0x00F4($t8)
58$:
	b       71$
	nop
60$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0088($t0)
	beqz    $t1, 71$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0088($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_a_802C6CA0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x002C($sp)
	sw      $0, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    27$
	nop
	jal     objlib_802A0008
	move    $a0, $0
	sw      $v0, 0x0028($sp)
	jal     objlib_802A0008
	li      $a0, 0x0017
	lw      $t9, 0x0028($sp)
	move    $s0, $v0
	or      $t0, $t9, $s0
	b       38$
	sw      $t0, 0x0028($sp)
27$:
	move    $a0, $0
	jal     objlib_802A0050
	li      $a1, 0x0003
	sw      $v0, 0x0028($sp)
	li      $a0, 0x0017
	jal     objlib_802A0050
	li      $a1, 0x0003
	lw      $t1, 0x0028($sp)
	move    $s0, $v0
	or      $t2, $t1, $s0
	sw      $t2, 0x0028($sp)
38$:
	lw      $t3, 0x0028($sp)
	beqz    $t3, 44$
	nop
	li.u    $a0, 0x50155081
	jal     object_playsound
	li.l    $a0, 0x50155081
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_a_802C6D6C
object_a_802C6D6C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	jal     objlib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 66$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(camera_8032DF30)
	sw      $t8, %lo(camera_8032DF30)($at)
	li      $at, 0x40000000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0150($t9)
	bnez    $t0, 53$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44160000
	mtc1    $at, $f6
	lwc1    $f4, 0x015C($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    45$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0150($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0150($t2)
	move    $a0, $0
	li      $a1, 0x003C
	jal     Na_SeqMute
	li      $a2, 0x0028
	b       51$
	nop
45$:
	jal     objlib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x0184($t6)
51$:
	b       64$
	nop
53$:
	li      $a0, 0x0002
	li      $a1, 0x0001
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0072
	beqz    $v0, 64$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
64$:
	b       79$
	nop
66$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    79$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
79$:
	jal     object_a_802C6CA0
	nop
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C6EC8
object_a_802C6EC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 34$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0020
	bnez    $at, 27$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	b       32$
	sw      $t3, 0x0150($t1)
27$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00C8($t4)
	addiu   $t6, $t5, 0x0400
	sw      $t6, 0x00C8($t4)
32$:
	b       50$
	nop
34$:
	li      $at, 0x40400000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x002B
	bnez    $at, 50$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t2)
50$:
	jal     object_a_802C6CA0
	nop
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C6FB0
object_a_802C6FB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0160($t6)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t6)
	sh      $v0, 0x0026($sp)
	jal     objlib_802A1634
	nop
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(stage_index)
	lh      $t7, %lo(stage_index)($t7)
	li      $at, 0x0015
	bne     $t7, $at, 20$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f4
	b       24$
	swc1    $f4, 0x001C($sp)
20$:
	li      $at, 0x442F0000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
24$:
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t8)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    44$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0007
	b       79$
	sw      $t9, 0x014C($t0)
44$:
	lh      $t1, 0x0026($sp)
	slti    $at, $t1, 0x2000
	beqz    $at, 79$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337DC8)
	lwc1    $f4, %lo(object_a_80337DC8)($at)
	lwc1    $f18, 0x015C($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    66$
	nop
	li      $at, 0x41100000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40400000
66$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f10
	lwc1    $f8, 0x015C($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    79$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
79$:
	jal     object_a_802C6CA0
	nop
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C710C
object_a_802C710C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a1, 0x0200
	jal     objlib_8029E5EC
	lw      $a0, 0x0160($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001F
	bnez    $at, 63$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $a0, 0x0160($t0)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t0)
	sh      $v0, 0x001E($sp)
	lh      $t1, 0x001E($sp)
	slti    $at, $t1, 0x2000
	beqz    $at, 63$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_a_80337DCC)
	lwc1    $f8, %lo(object_a_80337DCC)($at)
	lwc1    $f6, 0x015C($t2)
	c.lt.s  $f6, $f8
	nop
	bc1f    50$
	nop
	li      $at, 0x41100000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40400000
50$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lwc1    $f16, 0x015C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    63$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
63$:
	jal     object_a_802C6CA0
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     object_a_802A7384
	nop
	beqz    $v0, 76$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
	jal     Na_BgmStop
	li      $a0, 0x0416
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7254
object_a_802C7254:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	li      $a0, 0x0001
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	jal     objlib_8029FF04
	nop
	beqz    $v0, 18$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0004
	sw      $t7, 0x014C($t8)
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C72B4
object_a_802C72B4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 11$
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
11$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0008
	beqz    $at, 19$
	nop
	b       47$
	nop
19$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x0114($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	slti    $at, $t9, 0x4001
	bnez    $at, 47$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x4000
	sw      $t2, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t1, 0x0005
	sw      $t1, 0x014C($t5)
47$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_a_802C7380
object_a_802C7380:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 26$
	nop
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 26$
	nop
	li.u    $a0, 0x50166081
	jal     object_playsound
	li.l    $a0, 0x50166081
	jal     objlib_802A50FC
	li      $a0, 0x0001
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0150($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0150($t1)
26$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	andi    $t7, $t5, 0x0002
	beqz    $t7, 36$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0006
	sw      $t6, 0x014C($t8)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_a_802C7428:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 69$
	nop
	jal     objlib_802A3754
	nop
	beqz    $v0, 65$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0184($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0184($t8)
	li.u    $a0, 0x935AC081
	jal     object_playsound
	li.l    $a0, 0x935AC081
	li.u    $a0, 0x5147C081
	jal     object_playsound
	li.l    $a0, 0x5147C081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0184($t1)
	bnez    $t2, 32$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0008
	b       60$
	sw      $t3, 0x014C($t4)
32$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x001C
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $a1, 0x00A0
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     objlib_802A50FC
	li      $a0, 0x0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x001C
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
60$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
65$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       111$
	sw      $0, 0x00F8($t9)
69$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x00F8($t0)
	slti    $at, $t8, 0x000A
	beqz    $at, 102$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F8($t1)
	bgez    $t2, 83$
	andi    $t3, $t2, 0x0001
	beqz    $t3, 83$
	nop
	addiu   $t3, $t3, -0x0002
83$:
	beqz    $t3, 93$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t4)
	add.s   $f8, $f4, $f6
	b       100$
	swc1    $f8, 0x00A4($t4)
93$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t6)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
100$:
	b       106$
	nop
102$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t7, 0x000A
	sw      $t7, 0x0150($t5)
106$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F8($t9)
	addiu   $t8, $t0, 0x0001
	sw      $t8, 0x00F8($t9)
111$:
	b       113$
	nop
113$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_a_802C75FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0150($t6)
	bnez    $t7, 41$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t8)
	bne     $t9, $t0, 39$
	nop
	jal     objlib_802A3754
	nop
	beqz    $v0, 32$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0005
	sw      $t1, 0x0198($t2)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0005
	jal     objlib_802A1B8C
	li      $a2, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0008
	b       39$
	sw      $t3, 0x014C($t4)
32$:
	jal     objlib_802A1BDC
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0150($t5)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0150($t5)
39$:
	b       48$
	nop
41$:
	jal     objlib_802A3CFC
	nop
	bnez    $v0, 48$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0150($t8)
48$:
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C76D4
object_a_802C76D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x000A
	lw      $t7, 0x0150($t6)
	beq     $t7, $at, 55$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0114($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0118($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x011C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	beqz    $t3, 31$
	nop
	jal     object_a_802C7428
	nop
	b       33$
	nop
31$:
	jal     object_a_802C75FC
	nop
33$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x0065
	beqz    $at, 49$
	nop
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li.u    $at, 0x00020339
	li.l    $at, 0x00020339
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 53$
	nop
	slti    $at, $t5, 0x001F
	bnez    $at, 53$
	nop
49$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x000A
	sw      $t8, 0x0150($t9)
53$:
	b       91$
	nop
55$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D0($t0)
	blez    $t1, 71$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, -0x0200
	sw      $t2, 0x0114($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x00D0($t4)
	lw      $t7, 0x0114($t4)
	addu    $t5, $t6, $t7
	b       91$
	sw      $t5, 0x00D0($t4)
71$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0114($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	beqz    $t1, 87$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	b       91$
	sw      $t2, 0x014C($t3)
87$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
91$:
	b       93$
	nop
93$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7858
object_a_802C7858:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	beqz    $t7, 57$
	nop
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x00A2
	jal     objlib_802A4BE4
	li      $a3, 0x0073
	beqz    $v0, 55$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	jal     objlib_8029E96C
	move    $a3, $0
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A05B4
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x43480000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     objlib_802A50FC
	li      $a0, 0x0001
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t8)
	li      $at, 0x43340000
	mtc1    $at, $f12
	lui     $at, %hi(object_a_80337DD0)
	lwc1    $f14, %lo(object_a_80337DD0)($at)
	jal     object_b_802F2B88
	li      $a2, 0x43AA0000
	li.u    $a0, 0x5147C081
	jal     object_playsound
	li.l    $a0, 0x5147C081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0009
	sw      $t9, 0x014C($t0)
55$:
	b       74$
	nop
57$:
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42C80000
	li      $a0, 0x0014
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	jal     objlib_802A50FC
	li      $a0, 0x0001
	li.u    $a0, 0x500CA081
	jal     object_makesound
	li.l    $a0, 0x500CA081
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7998
object_a_802C7998:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 10$
	nop
	jal     Na_BgmStop
	li      $a0, 0x0416
10$:
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C79D8
object_a_802C79D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A2320
	nop
	la.u    $a0, object_a_80330CE4
	jal     objlib_802A3E30
	la.l    $a0, object_a_80330CE4
	jal     objlib_802A2348
	li      $a0, -0x0014
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0009
	lw      $t7, 0x014C($t6)
	beq     $t7, $at, 32$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	beqz    $t9, 26$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f12
	jal     objlib_802A4564
	nop
	b       30$
	nop
26$:
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     objlib_802A4564
	nop
30$:
	jal     object_map_load
	nop
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7A70
object_a_802C7A70:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 15$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x00A0($t8)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00A4($t9)
15$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_a_80337DD4)
	lwc1    $f6, %lo(object_a_80337DD4)($at)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    35$
	nop
	sw      $0, 0x001C($sp)
25$:
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D0C
	la.l    $a1, object_a_80330D0C
	jal     objlib_8029EB04
	lw      $a0, %lo(object)($a0)
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0003
	bnez    $at, 25$
	sw      $t2, 0x001C($sp)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7B14
object_a_802C7B14:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 34$
	nop
	jal     objlib_802A4F04
	li      $a0, 0x00B9
	beqz    $v0, 24$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0005
	lh      $t0, 0x0002($t9)
	and     $t1, $t0, $at
	b       29$
	sh      $t1, 0x0002($t9)
24$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0004
	sh      $t4, 0x0002($t2)
29$:
	jal     rand
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00D4($t5)
34$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    86$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x00A4($t0)
	c.lt.s  $f10, $f8
	nop
	bc1f    77$
	nop
	la.u    $t1, o_13002C7C
	la.l    $t1, o_13002C7C
	lui     $a2, %hi(object)
	lw      $a2, %lo(object)($a2)
	sw      $t1, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x3F800000
	jal     objlib_8029EE24
	li      $a3, 0x00A5
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	b       86$
	nop
77$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t3, 0x0154($t9)
	slti    $at, $t3, 0x0015
	bnez    $at, 86$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
86$:
	lui     $at, %hi(object_a_80337DD8)
	lwc1    $f18, %lo(object_a_80337DD8)($at)
	lwc1    $f16, 0x0020($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    96$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C7CAC
object_a_802C7CAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lh      $t7, 0x0076($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x0005
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A4($t9)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lw      $t1, 0x00F4($t0)
	andi    $t2, $t1, 0x0080
	bnez    $t2, 31$
	nop
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lw      $t4, 0x00E0($t3)
	andi    $t5, $t4, 0xFF7F
	sw      $t5, 0x00E0($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C7D40
object_a_802C7D40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x3FF80000
	mtc1    $at, $f7
	mtc1    $0, $f6
	mov.s   $f20, $f0
	cvt.d.s $f4, $f20
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C7D90
object_a_802C7D90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x3F000000
	li      $a2, 0x3F800000
	jal     objlib_8029F3D0
	li      $a3, 0x3F000000
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7DFC
object_a_802C7DFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     rand
	nop
	andi    $t6, $v0, 0x00FF
	bgtz    $t6, 18$
	nop
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D54
	la.l    $a1, object_a_80330D54
	jal     objlib_8029EB04
	lw      $a0, %lo(object)($a0)
	sw      $v0, 0x001C($sp)
	la.u    $a1, anime_fish
	la.l    $a1, anime_fish
	lw      $a0, 0x001C($sp)
	jal     objlib_8029F59C
	move    $a2, $0
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7E5C
object_a_802C7E5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	bnez    $t8, 21$
	nop
	lui     $t9, %hi(gfx_frame)
	lw      $t9, %lo(gfx_frame)($t9)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 21$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
21$:
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	bnez    $t3, 37$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f10, 0x002C($t4)
	swc1    $f10, 0x00F8($t4)
37$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F0($t5)
	slti    $at, $t6, 0x0004
	bnez    $at, 73$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_a_80337DE0)
	ldc1    $f4, %lo(object_a_80337DE0)($at)
	lwc1    $f16, 0x00F8($t7)
	cvt.d.s $f18, $f16
	sub.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00F8($t8)
	c.lt.s  $f10, $f16
	nop
	bc1f    65$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F8($t9)
65$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x00F8($t0)
	swc1    $f4, 0x002C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00F8($t1)
	swc1    $f6, 0x0034($t1)
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_a_802C7F98
object_a_802C7F98:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_a_80330D9C
	la.l    $a1, object_a_80330D9C
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 76$
	nop
	la.u    $a0, o_13002E58
	jal     objlib_8029F95C
	la.l    $a0, o_13002E58
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00F4($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A2FC0
	li      $a1, 0x42C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x00C6($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_sin)
	lhu     $t4, 0x00C6($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0xC2C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0144($t7)
	sll     $t0, $t8, 5
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 2
	addu    $t0, $t0, $t8
	sll     $t0, $t0, 2
	mtc1    $t0, $f4
	jal     objlib_802A2F14
	cvt.s.w $f12, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mov.s   $f20, $f0
	lw      $t2, 0x00C8($t1)
	mtc1    $t2, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f8, $f20
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00C8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0064
	sw      $t5, 0x017C($t6)
76$:
	jal     objlib_802A2644
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0154($t3)
	slti    $at, $t7, 0x0010
	bnez    $at, 87$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
87$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	sw      $t0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, 128$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0034($sp)
	lwc1    $f4, 0x00A0($t4)
	lwc1    $f18, 0x0100($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x002C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t1, 0x0034($sp)
	lwc1    $f10, 0x00A8($t5)
	lwc1    $f8, 0x0104($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0028($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	swc1    $f0, 0x0030($sp)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lwc1    $f10, 0x0030($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    128$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A05B4
	nop
128$:
	b       130$
	nop
130$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_a_802C81B4
object_a_802C81B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 55$
	nop
	lwc1    $f4, 0x0030($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f16, 0x0038($sp)
	trunc.w.s $f6, $f4
	li      $at, 0x3F000000
	lui     $t1, %hi(object)
	trunc.w.s $f10, $f8
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	trunc.w.s $f18, $f16
	la.u    $t3, o_13002E04
	la.l    $t3, o_13002E04
	mfc1    $a2, $f10
	mfc1    $a3, $f18
	mfc1    $a1, $f6
	li      $t2, 0x009E
	sw      $t2, 0x0018($sp)
	sw      $t3, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $t1, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f4, 0x0010($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x0038($sp)
	trunc.w.s $f8, $f6
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	trunc.w.s $f16, $f10
	lwc1    $f6, 0x002C($sp)
	la.u    $t8, o_13002E20
	trunc.w.s $f4, $f18
	la.l    $t8, o_13002E20
	mfc1    $a2, $f16
	mfc1    $a1, $f8
	mfc1    $a3, $f4
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $0, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f6, 0x0010($sp)
	b       76$
	nop
55$:
	lwc1    $f8, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	trunc.w.s $f10, $f8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	trunc.w.s $f18, $f16
	lwc1    $f8, 0x002C($sp)
	la.u    $t4, o_13002E20
	trunc.w.s $f6, $f4
	la.l    $t4, o_13002E20
	mfc1    $a2, $f18
	mfc1    $a1, $f10
	mfc1    $a3, $f6
	li      $t3, 0x008E
	sw      $t3, 0x0018($sp)
	sw      $t4, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $t2, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f8, 0x0010($sp)
76$:
	lwc1    $f10, 0x0030($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x0038($sp)
	trunc.w.s $f16, $f10
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	trunc.w.s $f4, $f18
	lwc1    $f10, 0x002C($sp)
	la.u    $t9, o_13002E20
	trunc.w.s $f8, $f6
	la.l    $t9, o_13002E20
	mfc1    $a2, $f4
	mfc1    $a1, $f16
	mfc1    $a3, $f8
	sw      $t9, 0x001C($sp)
	lw      $a0, 0x0028($sp)
	sw      $0, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	jal     objlib_8029EFFC
	swc1    $f10, 0x0010($sp)
	b       98$
	nop
98$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_a_802C834C
object_a_802C834C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $0, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00F4($t8)
12$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0150($t0)
	bnez    $t1, 53$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x015C($t2)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	addiu   $a0, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a1, $a1, 0x00A0
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x044C
	li      $a2, 0x0D00
	jal     objlib_8029E914
	li      $a3, 0x048C
	li      $at, 0x447A0000
	mtc1    $at, $f12
	li      $at, 0x41F00000
	mtc1    $at, $f14
	jal     objlib_802A47A0
	li      $a2, 0x7FFF
	beqz    $v0, 46$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0150($t3)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0150($t3)
46$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	addiu   $a1, $sp, 0x0024
	jal     object_a_802B98D4
	addiu   $a0, $a0, 0x00A0
	b       144$
	nop
53$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0150($t6)
	bne     $t7, $at, 73$
	nop
	li      $a0, 0x0002
	li      $a1, 0x0002
	li      $a2, 0x0099
	jal     objlib_802A4960
	move    $a3, $0
	beqz    $v0, 71$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0150($t9)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0150($t9)
71$:
	b       144$
	nop
73$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337DE8)
	lwc1    $f8, %lo(object_a_80337DE8)($at)
	lwc1    $f6, 0x015C($t1)
	c.lt.s  $f6, $f8
	nop
	bc1f    144$
	nop
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lwc1    $f16, 0x0168($t1)
	lwc1    $f10, 0x00A4($t2)
	jal     objlib_802A3634
	sub.s   $f12, $f10, $f16
	li      $at, 0x43FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    144$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0160($t4)
	lw      $t3, 0x00F4($t4)
	subu    $t6, $t5, $t3
	sll     $t7, $t6, 16
	sra     $t8, $t7, 16
	blez    $t8, 120$
	sh      $t6, 0x0032($sp)
	lh      $t0, 0x0032($sp)
	slti    $at, $t0, 0x1500
	beqz    $at, 113$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0160($t9)
	b       118$
	sw      $t2, 0x00C8($t9)
113$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t4, 0x00F4($t1)
	addiu   $t5, $t4, 0x1500
	sw      $t5, 0x00C8($t1)
118$:
	b       134$
	nop
120$:
	lh      $t3, 0x0032($sp)
	slti    $at, $t3, -0x14FF
	bnez    $at, 129$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0160($t6)
	b       134$
	sw      $t7, 0x00C8($t6)
129$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x00F4($t8)
	addiu   $t2, $t0, -0x1500
	sw      $t2, 0x00C8($t8)
134$:
	mtc1    $0, $f4
	li      $a0, 0x000C
	li      $a1, 0x40400000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     object_a_802C81B4
	swc1    $f4, 0x0010($sp)
	li.u    $a0, 0x60044001
	jal     object_levelsound
	li.l    $a0, 0x60044001
144$:
	b       146$
	nop
146$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_a_802C85A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x3F800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0400
	sw      $t7, 0x0118($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	lw      $t1, 0x0118($t9)
	addu    $t2, $t0, $t1
	sw      $t2, 0x00C8($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x001F
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 30$
	nop
	b       34$
	li      $v0, 0x0001
	b       32$
	nop
30$:
	b       34$
	move    $v0, $0
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_a_802C863C
object_a_802C863C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0118($t6)
	jal     objlib_802A2320
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 111$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 122$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 147$
	nop
	b       156$
	nop
28$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 39$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x010C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0110($t1)
39$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_a_80330DAC+0x00)
	lw      $t4, 0x010C($t2)
	lw      $t3, 0x0110($t2)
	sll     $t5, $t4, 4
	addu    $t6, $t6, $t5
	lw      $t6, %lo(object_a_80330DAC+0x00)($t6)
	slt     $at, $t3, $t6
	beqz    $at, 56$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0110($t7)
	addiu   $t9, $t8, 0x0001
	b       76$
	sw      $t9, 0x0110($t7)
56$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0110($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x010C($t1)
	addiu   $t4, $t2, 0x0001
	sw      $t4, 0x010C($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t8, %hi(object_a_80330DAC+0x00)
	lw      $t3, 0x010C($t5)
	sll     $t6, $t3, 4
	addu    $t8, $t8, $t6
	lw      $t8, %lo(object_a_80330DAC+0x00)($t8)
	bgez    $t8, 76$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x010C($t9)
76$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lwc1    $f6, 0x00A0($t7)
	c.lt.s  $f6, $f8
	nop
	bc1f    91$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t2, 0x014C($t0)
	addiu   $t4, $t2, 0x0001
	b       109$
	sw      $t4, 0x014C($t0)
91$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80330DAC+0x08)
	lw      $t5, 0x010C($t1)
	sll     $t3, $t5, 4
	addu    $at, $at, $t3
	lwc1    $f10, %lo(object_a_80330DAC+0x08)($at)
	swc1    $f10, 0x00B8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, object_a_80330DAC+0x00
	la.l    $t7, object_a_80330DAC+0x00
	lw      $t8, 0x010C($t6)
	sll     $t9, $t8, 4
	addu    $t2, $t9, $t7
	lw      $a0, 0x0004($t2)
	jal     objlib_8029F514
	lw      $a1, 0x000C($t2)
109$:
	b       156$
	nop
111$:
	jal     object_a_802C85A4
	nop
	beqz    $v0, 120$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t0, 0x014C($t4)
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x014C($t4)
120$:
	b       156$
	nop
122$:
	li      $at, 0x41400000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t3)
	move    $a0, $0
	jal     objlib_8029F514
	li      $a1, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_a_80337DEC)
	lwc1    $f4, %lo(object_a_80337DEC)($at)
	lwc1    $f18, 0x00A0($t1)
	c.lt.s  $f4, $f18
	nop
	bc1f    145$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x014C($t6)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x014C($t6)
145$:
	b       156$
	nop
147$:
	jal     object_a_802C85A4
	nop
	beqz    $v0, 154$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
154$:
	b       156$
	nop
156$:
	jal     objlib_802A2348
	li      $a0, -0x004E
	li      $at, 0x447A0000
	mtc1    $at, $f12
	jal     objlib_802A4564
	nop
	bnez    $v0, 166$
	nop
	jal     object_a_802BED7C
	li      $a0, 0x0001
166$:
	la.u    $t2, math_sin
	la.l    $t2, math_sin
	li      $at, 0x42700000
	mtc1    $at, $f8
	lwc1    $f6, 0x36EC($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f10, $f6, $f8
	lwc1    $f16, 0x00A0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	la.u    $t5, math_cos
	la.l    $t5, math_cos
	li      $at, 0x42700000
	mtc1    $at, $f6
	lwc1    $f4, 0x36EC($t5)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A8($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	lwc1    $f4, 0x06EC($t3)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x002C($sp)
	la.u    $t1, math_cos
	la.l    $t1, math_cos
	lwc1    $f18, 0x06EC($t1)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x002C($sp)
	swc1    $f10, 0x0100($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0028($sp)
	swc1    $f16, 0x0104($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a0, str_object_a_x
	la.l    $a0, str_object_a_x
	lwc1    $f18, 0x00A0($t6)
	trunc.w.s $f8, $f18
	mfc1    $a1, $f8
	jal     db_put_err
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $a0, str_object_a_z
	la.l    $a0, str_object_a_z
	lwc1    $f4, 0x00A8($t2)
	trunc.w.s $f6, $f4
	mfc1    $a1, $f6
	jal     db_put_err
	nop
	b       232$
	nop
232$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop
