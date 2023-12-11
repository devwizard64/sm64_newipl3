.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl physics_80255080
physics_80255080:
	mtc1    $0, $f0
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl physics_8025509C
physics_8025509C:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl physics_802550B0
physics_802550B0:
	jr      $ra
	nop
	jr      $ra
	nop

.globl physics_802550C0
physics_802550C0:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0008($a1)
	lwc1    $f6, 0x0008($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x000C($a1)
	lwc1    $f16, 0x000C($a0)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($sp)
	lwc1    $f4, 0x0010($a0)
	lwc1    $f6, 0x000C($sp)
	lwc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0014($a0)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	mul.s   $f16, $f6, $f6
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f18, $f16, $f8
	div.s   $f6, $f4, $f18
	swc1    $f6, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f8, 0x0010($a1)
	lwc1    $f18, 0x0008($sp)
	neg.s   $f16, $f10
	lwc1    $f6, 0x0014($a1)
	mul.s   $f4, $f16, $f8
	nop
	mul.s   $f16, $f18, $f6
	sub.s   $f8, $f4, $f16
	mul.s   $f6, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f4
	div.s   $f10, $f8, $f16
	swc1    $f10, 0x0000($sp)
	lwc1    $f18, 0x0000($a1)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x0000($sp)
	mul.s   $f4, $f18, $f6
	neg.s   $f18, $f8
	mul.s   $f16, $f4, $f8
	lwc1    $f8, 0x0010($a1)
	mul.s   $f6, $f10, $f18
	sub.s   $f4, $f16, $f6
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0010($a1)
	lwc1    $f18, 0x0000($a1)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f10, 0x0000($sp)
	mul.s   $f6, $f18, $f16
	neg.s   $f18, $f8
	mul.s   $f4, $f6, $f8
	lwc1    $f8, 0x0014($a1)
	mul.s   $f16, $f10, $f18
	sub.s   $f6, $f4, $f16
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0014($a1)
	lwc1    $f18, 0x0004($sp)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0000($a0)
	neg.s   $f4, $f18
	lwc1    $f10, 0x0000($sp)
	mul.s   $f8, $f4, $f16
	neg.s   $f4, $f16
	lwc1    $f16, 0x0010($a0)
	mul.s   $f18, $f6, $f10
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0010($a0)
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f10, 0x0000($a0)
	neg.s   $f8, $f4
	lwc1    $f18, 0x0000($sp)
	mul.s   $f16, $f8, $f6
	neg.s   $f8, $f6
	lwc1    $f6, 0x0014($a0)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f10, $f4, $f8
	add.s   $f18, $f16, $f10
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0014($a0)
	b       92$
	nop
92$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl physics_80255238
physics_80255238:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x000C($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    19$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($sp)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x000C($sp)
	lh      $t6, 0x0012($sp)
	li      $at, 0x8000
	addu    $t7, $t6, $at
	sh      $t7, 0x0012($sp)
19$:
	lwc1    $f18, 0x0018($sp)
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0014($sp)
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0008($a0)
	lwc1    $f8, 0x0008($sp)
	swc1    $f8, 0x000C($a0)
	lhu     $t8, 0x0012($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x000C($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($a0)
	lhu     $t1, 0x0012($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x000C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0014($a0)
	b       47$
	nop
47$:
	jr      $ra
	nop

.globl physics_802552FC
physics_802552FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0060($t6)
	beqz    $t7, 40$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0060($t8)
	lwc1    $f12, 0x0024($t9)
	jal     ATAN2
	lwc1    $f14, 0x001C($t9)
	sh      $v0, 0x0026($sp)
	lw      $t0, 0x0028($sp)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x002E($t0)
	subu    $t3, $t1, $t2
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	subu    $t6, $t2, $t5
	sh      $t6, 0x002E($t0)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 31$
	nop
	li.u    $s0, 0x04428081
	b       33$
	li.l    $s0, 0x04428081
31$:
	li.u    $s0, 0x0445A081
	li.l    $s0, 0x0445A081
33$:
	lw      $t1, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t1)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       46$
	nop
40$:
	lw      $t3, 0x0028($sp)
	li.u    $a0, 0x0444C081
	li.l    $a0, 0x0444C081
	lw      $a1, 0x0088($t3)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
46$:
	lw      $t4, 0x002C($sp)
	beqz    $t4, 58$
	nop
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x0054($t2)
	move    $a0, $t2
	neg.s   $f6, $f4
	mfc1    $a1, $f6
	jal     player_80251708
	nop
	b       63$
	nop
58$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x8000
	lh      $t6, 0x002E($t5)
	addu    $t0, $t6, $at
	sh      $t0, 0x002E($t5)
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl physics_80255414
physics_80255414:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t7, 0x000C($t6)
	and     $t8, $t7, $at
	beqz    $t8, 14$
	nop
	mtc1    $0, $f4
	lw      $t9, 0x0018($sp)
	b       136$
	swc1    $f4, 0x00C0($t9)
14$:
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(physics_80336670)
	lwc1    $f8, %lo(physics_80336670)($at)
	lwc1    $f6, 0x00C0($t0)
	c.lt.s  $f6, $f8
	nop
	bc1f    26$
	nop
	lui     $at, %hi(physics_80336674)
	lwc1    $f10, %lo(physics_80336674)($at)
	lw      $t1, 0x0018($sp)
	swc1    $f10, 0x00C0($t1)
26$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0000($t3)
	addiu   $t5, $t4, -0x0021
	sltiu   $at, $t5, 0x000D
	beqz    $at, L80255620
	nop
	sll     $t5, $t5, 2
	lui     $at, %hi(physics_80336678)
	addu    $at, $at, $t5
	lw      $t5, %lo(physics_80336678)($at)
	jr      $t5
	nop
.globl L802554B0
L802554B0:
	lw      $t6, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x41200000
	lwc1    $f16, 0x00C0($t6)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t6)
	lw      $t7, 0x0018($sp)
	lwc1    $f6, 0x00C0($t7)
	c.le.s  $f8, $f6
	nop
	bc1f    56$
	nop
	li      $at, 0x41200000
	mtc1    $at, $f10
	lw      $t8, 0x0018($sp)
	swc1    $f10, 0x00C0($t8)
56$:
	b       136$
	nop
.globl L802554FC
L802554FC:
	lw      $t9, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x41C80000
	lwc1    $f16, 0x00C0($t9)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t9)
	lw      $t0, 0x0018($sp)
	lwc1    $f6, 0x00C0($t0)
	c.le.s  $f8, $f6
	nop
	bc1f    75$
	nop
	li      $at, 0x41C80000
	mtc1    $at, $f10
	lw      $t1, 0x0018($sp)
	swc1    $f10, 0x00C0($t1)
75$:
	b       136$
	nop
.globl L80255548
L80255548:
	lw      $t2, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x42700000
	lwc1    $f16, 0x00C0($t2)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t2)
	lw      $t3, 0x0018($sp)
	lwc1    $f6, 0x00C0($t3)
	c.le.s  $f8, $f6
	nop
	bc1f    94$
	nop
	li      $at, 0x42700000
	mtc1    $at, $f10
	lw      $t4, 0x0018($sp)
	swc1    $f10, 0x00C0($t4)
94$:
	b       136$
	nop
.globl L80255594
L80255594:
	lw      $t5, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	li      $at, 0x43200000
	lwc1    $f16, 0x00C0($t5)
	mtc1    $at, $f8
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00C0($t5)
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x00C0($t6)
	c.le.s  $f8, $f6
	nop
	bc1f    118$
	nop
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       140$
	nop
118$:
	b       136$
	nop
.globl L802555F4
L802555F4:
	jal     player_802521A0
	lw      $a0, 0x0018($sp)
	li.u    $a1, 0x00021312
	li.l    $a1, 0x00021312
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       140$
	nop
	b       136$
	nop
.globl L80255620
L80255620:
	mtc1    $0, $f10
	lw      $t7, 0x0018($sp)
	swc1    $f10, 0x00C0($t7)
	b       136$
	nop
136$:
	b       140$
	move    $v0, $0
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl physics_80255654
physics_80255654:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0074($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	slti    $at, $t0, -0x3FFF
	bnez    $at, 25$
	nop
	slti    $at, $t0, 0x4000
	beqz    $at, 25$
	nop
	li      $at, 0x41800000
	mtc1    $at, $f4
	lw      $t1, 0x0020($sp)
	swc1    $f4, 0x0054($t1)
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0074($t2)
	b       34$
	sh      $t3, 0x002E($t2)
25$:
	li      $at, 0xC1800000
	mtc1    $at, $f6
	lw      $t4, 0x0020($sp)
	swc1    $f6, 0x0054($t4)
	lw      $t5, 0x0020($sp)
	li      $at, 0x8000
	lh      $t6, 0x0074($t5)
	addu    $t7, $t6, $at
	sh      $t7, 0x002E($t5)
34$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	lw      $a2, 0x0028($sp)
	b       42$
	nop
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl physics_8025570C
physics_8025570C:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0068($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x0008($sp)
	lw      $t9, 0x0008($sp)
	li      $at, 0x0024
	beq     $t9, $at, 19$
	nop
	li      $at, 0x0025
	beq     $t9, $at, 19$
	nop
	li      $at, 0x0027
	beq     $t9, $at, 19$
	nop
	li      $at, 0x002D
	bne     $t9, $at, 58$
	nop
19$:
	lw      $t0, 0x000C($sp)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x0006($sp)
	lw      $t3, 0x000C($sp)
	lui     $t7, %hi(physics_8032DAF0)
	lh      $t4, 0x0002($t3)
	sra     $t5, $t4, 8
	sll     $t6, $t5, 1
	addu    $t7, $t7, $t6
	lh      $t7, %lo(physics_8032DAF0)($t7)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0000($sp)
	lhu     $t8, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0000($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f18, 0x0048($a0)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0048($a0)
	lhu     $t1, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0000($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_cos)($at)
	lwc1    $f18, 0x0050($a0)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0050($a0)
	b       62$
	li      $v0, 0x0001
58$:
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl physics_8025580C
physics_8025580C:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0068($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	li      $at, 0x002C
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, 99$
	nop
	lw      $t9, 0x000C($sp)
	lh      $t0, 0x0002($t9)
	sll     $t1, $t0, 8
	sh      $t1, 0x0006($sp)
	lw      $t2, 0x000C($a0)
	andi    $t3, $t2, 0x0400
	beqz    $t3, 61$
	nop
	lh      $t4, 0x002E($a0)
	lh      $t5, 0x0006($sp)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0004($sp)
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    34$
	nop
	lwc1    $f8, 0x0054($a0)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	neg.s   $f10, $f8
	mul.s   $f18, $f10, $f16
	b       38$
	swc1    $f18, 0x0008($sp)
34$:
	li      $at, 0xC1000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0008($sp)
38$:
	lh      $t7, 0x0004($sp)
	slti    $at, $t7, -0x3FFF
	bnez    $at, 50$
	nop
	slti    $at, $t7, 0x4000
	beqz    $at, 50$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0008($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0008($sp)
50$:
	lhu     $t8, 0x0004($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0008($sp)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0008($sp)
	b       75$
	nop
61$:
	lui     $t1, %hi(gfx_frame)
	lw      $t1, %lo(gfx_frame)($t1)
	andi    $t2, $t1, 0x0003
	mtc1    $t2, $f6
	bgez    $t2, 71$
	cvt.s.w $f8, $f6
	li      $at, 0x4F800000
	mtc1    $at, $f10
	nop
	add.s   $f8, $f8, $f10
71$:
	lui     $at, %hi(physics_803366AC)
	lwc1    $f16, %lo(physics_803366AC)($at)
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0008($sp)
75$:
	lhu     $t3, 0x0006($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x0008($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	lwc1    $f8, 0x0048($a0)
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0048($a0)
	lhu     $t6, 0x0006($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0008($sp)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f8, 0x0050($a0)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0050($a0)
	b       103$
	li      $v0, 0x0001
99$:
	b       103$
	move    $v0, $0
	b       103$
	nop
103$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl physics_802559B0
physics_802559B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	jal     player_80251708
	li      $a1, 0x0000
	mtc1    $0, $f4
	lw      $t8, 0x0020($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0020($sp)
	lwc1    $f6, 0x0070($t9)
	swc1    $f6, 0x0040($t9)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t0)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl physics_80255A34
physics_80255A34:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0028($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0024($sp)
	lw      $a0, 0x0030($sp)
	jal     player_80251708
	li      $a1, 0x0000
	jal     physics_8025570C
	lw      $a0, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	jal     physics_8025580C
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	move    $s0, $v0
	or      $t0, $t9, $s0
	sw      $t0, 0x002C($sp)
	lw      $t1, 0x002C($sp)
	beqz    $t1, 28$
	nop
	jal     physics_80255D88
	lw      $a0, 0x0030($sp)
	b       43$
	sw      $v0, 0x0024($sp)
28$:
	lw      $t2, 0x0030($sp)
	lwc1    $f4, 0x0070($t2)
	swc1    $f4, 0x0040($t2)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $a0, 0x0028($sp)
	lw      $t3, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	lh      $a2, 0x002E($t3)
43$:
	b       47$
	lw      $v0, 0x0024($sp)
	b       47$
	nop
47$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

physics_80255B04:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0044($sp)
	li      $a1, 0x41F00000
	jal     player_80251A48
	li      $a2, 0x41C00000
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x0044($sp)
	li      $a1, 0x42700000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x0038($sp)
	lw      $t6, 0x0044($sp)
	addiu   $a3, $sp, 0x0030
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	jal     bg_check_ground
	lw      $a2, 0x0008($t6)
	swc1    $f0, 0x0028($sp)
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x0028($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	lw      $t7, 0x0044($sp)
	lwc1    $f12, 0x0000($t7)
	jal     bg_check_water
	lwc1    $f14, 0x0008($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0038($sp)
	lw      $t9, 0x0040($sp)
	sw      $t8, 0x0060($t9)
	lw      $t0, 0x0030($sp)
	bnez    $t0, 40$
	nop
	b       156$
	li      $v0, 0x0002
40$:
	lw      $t1, 0x0040($sp)
	li      $at, 0x00010000
	lw      $t2, 0x000C($t1)
	and     $t3, $t2, $at
	beqz    $t3, 60$
	nop
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    60$
	nop
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x0028($sp)
	la.u    $t4, physics_8032DAF8
	la.l    $t4, physics_8032DAF8
	sw      $t4, 0x0030($sp)
	lwc1    $f10, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	swc1    $f10, 0x0028($t5)
60$:
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($sp)
	lw      $t6, 0x0044($sp)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x0004($t6)
	c.lt.s  $f6, $f16
	nop
	bc1f    94$
	nop
	lw      $t7, 0x0044($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t7)
	lwc1    $f4, 0x002C($sp)
	add.s   $f18, $f8, $f10
	c.le.s  $f4, $f18
	nop
	bc1f    82$
	nop
	b       156$
	li      $v0, 0x0002
82$:
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t8, 0x0030($sp)
	lw      $t9, 0x0040($sp)
	sw      $t8, 0x0068($t9)
	lwc1    $f16, 0x0028($sp)
	lw      $t0, 0x0040($sp)
	swc1    $f16, 0x0070($t0)
	b       156$
	move    $v0, $0
94$:
	li      $at, 0x43200000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($sp)
	lwc1    $f18, 0x002C($sp)
	add.s   $f10, $f6, $f8
	c.le.s  $f18, $f10
	nop
	bc1f    105$
	nop
	b       156$
	li      $v0, 0x0002
105$:
	lw      $t1, 0x0044($sp)
	lw      $a0, 0x0040($sp)
	lw      $a2, 0x0028($sp)
	lw      $a1, 0x0000($t1)
	lw      $a3, 0x0008($t1)
	jal     vecf_set
	addiu   $a0, $a0, 0x003C
	lw      $t2, 0x0030($sp)
	lw      $t3, 0x0040($sp)
	sw      $t2, 0x0068($t3)
	lwc1    $f4, 0x0028($sp)
	lw      $t4, 0x0040($sp)
	swc1    $f4, 0x0070($t4)
	lw      $t5, 0x0038($sp)
	beqz    $t5, 152$
	nop
	lw      $t6, 0x0038($sp)
	lwc1    $f12, 0x0024($t6)
	jal     ATAN2
	lwc1    $f14, 0x001C($t6)
	lw      $t8, 0x0040($sp)
	sll     $s0, $v0, 16
	sra     $t7, $s0, 16
	lh      $t9, 0x002E($t8)
	move    $s0, $t7
	subu    $t0, $s0, $t9
	sh      $t0, 0x0022($sp)
	lh      $t1, 0x0022($sp)
	slti    $at, $t1, 0x2AAA
	bnez    $at, 141$
	nop
	slti    $at, $t1, 0x5556
	beqz    $at, 141$
	nop
	b       156$
	li      $v0, 0x0001
141$:
	lh      $t2, 0x0022($sp)
	slti    $at, $t2, -0x2AA9
	beqz    $at, 150$
	nop
	slti    $at, $t2, -0x5555
	bnez    $at, 150$
	nop
	b       156$
	li      $v0, 0x0001
150$:
	b       156$
	li      $v0, 0x0003
152$:
	b       156$
	li      $v0, 0x0001
	b       156$
	nop
156$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl physics_80255D88
physics_80255D88:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $0, 0x002C($sp)
4$:
	lw      $t6, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f18, 0x003C($t6)
	div.s   $f8, $f4, $f6
	lwc1    $f10, 0x0020($t7)
	addiu   $t8, $sp, 0x001C
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0050($t9)
	lw      $t0, 0x0068($t9)
	lwc1    $f4, 0x0044($t9)
	div.s   $f10, $f6, $f8
	lwc1    $f16, 0x0020($t0)
	addiu   $t1, $sp, 0x001C
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t1)
	lw      $t2, 0x0030($sp)
	addiu   $t3, $sp, 0x001C
	lwc1    $f8, 0x0040($t2)
	swc1    $f8, 0x0004($t3)
	lw      $a0, 0x0030($sp)
	jal     physics_80255B04
	addiu   $a1, $sp, 0x001C
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	beqz    $t4, 42$
	nop
	li      $at, 0x0002
	bne     $t4, $at, 44$
	nop
42$:
	b       49$
	nop
44$:
	lw      $t5, 0x002C($sp)
	addiu   $t7, $t5, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, 4$
	sw      $t7, 0x002C($sp)
49$:
	jal     player_802518A8
	lw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	sw      $v0, 0x0014($t6)
	lw      $t8, 0x0030($sp)
	lw      $a0, 0x0088($t8)
	addiu   $a1, $t8, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t0, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t0)
	lh      $a2, 0x002E($t0)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	lw      $t9, 0x0028($sp)
	li      $at, 0x0003
	bne     $t9, $at, 71$
	nop
	li      $t1, 0x0002
	sw      $t1, 0x0028($sp)
71$:
	b       75$
	lw      $v0, 0x0028($sp)
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

physics_80255EC4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0030($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x004C($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    15$
	nop
	b       118$
	move    $v0, $0
15$:
	lw      $t7, 0x003C($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f8, 0x0000($t7)
	lwc1    $f10, 0x0000($t8)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f18, 0x0008($t9)
	lwc1    $f4, 0x0008($t0)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0018($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f8, 0x0050($t1)
	lwc1    $f4, 0x0048($t1)
	mul.s   $f16, $f8, $f10
	mtc1    $0, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    42$
	nop
	b       118$
	move    $v0, $0
42$:
	lw      $t2, 0x0034($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($t2)
	lw      $t3, 0x003C($sp)
	addiu   $t4, $sp, 0x0020
	mul.s   $f16, $f18, $f4
	lwc1    $f6, 0x0000($t3)
	sub.s   $f8, $f6, $f16
	swc1    $f8, 0x0000($t4)
	lw      $t5, 0x0034($sp)
	li      $at, 0x42700000
	mtc1    $at, $f18
	lwc1    $f10, 0x0024($t5)
	lw      $t6, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	mul.s   $f4, $f10, $f18
	lwc1    $f6, 0x0008($t6)
	sub.s   $f16, $f6, $f4
	swc1    $f16, 0x0008($t7)
	lw      $t9, 0x003C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f10
	lwc1    $f8, 0x0004($t9)
	addiu   $t8, $sp, 0x0020
	lwc1    $f12, 0x0000($t8)
	lw      $a2, 0x0008($t8)
	addiu   $a3, $sp, 0x002C
	jal     bg_check_ground
	add.s   $f14, $f8, $f10
	addiu   $t0, $sp, 0x0020
	swc1    $f0, 0x0004($t0)
	lw      $t2, 0x003C($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f18, 0x0004($t1)
	lwc1    $f6, 0x0004($t2)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	sub.s   $f4, $f18, $f6
	c.le.s  $f4, $f16
	nop
	bc1f    87$
	nop
	b       118$
	move    $v0, $0
87$:
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t3, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	sw      $t3, 0x0068($t4)
	addiu   $t5, $sp, 0x0020
	lwc1    $f8, 0x0004($t5)
	lw      $t6, 0x0030($sp)
	swc1    $f8, 0x0070($t6)
	lw      $t7, 0x002C($sp)
	lwc1    $f12, 0x0024($t7)
	jal     ATAN2
	lwc1    $f14, 0x001C($t7)
	lw      $t9, 0x0030($sp)
	sh      $v0, 0x0074($t9)
	lw      $t8, 0x0030($sp)
	sh      $0, 0x002C($t8)
	lw      $t0, 0x0034($sp)
	lwc1    $f12, 0x0024($t0)
	jal     ATAN2
	lwc1    $f14, 0x001C($t0)
	lw      $t2, 0x0030($sp)
	li      $at, 0x8000
	addu    $t1, $v0, $at
	sh      $t1, 0x002E($t2)
	b       118$
	li      $v0, 0x0001
	b       118$
	nop
118$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

physics_802560AC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	sw      $a2, 0x0058($sp)
	sw      $s0, 0x0018($sp)
	addiu   $a0, $sp, 0x0040
	jal     vecf_cpy
	lw      $a1, 0x0054($sp)
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x43160000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x003C($sp)
	addiu   $a0, $sp, 0x0040
	li      $a1, 0x41F00000
	jal     player_80251A48
	li      $a2, 0x42480000
	sw      $v0, 0x0038($sp)
	addiu   $t6, $sp, 0x0040
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0030
	swc1    $f0, 0x0028($sp)
	addiu   $a0, $sp, 0x0040
	lw      $a1, 0x0028($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0034
	swc1    $f0, 0x002C($sp)
	addiu   $t7, $sp, 0x0040
	lwc1    $f12, 0x0000($t7)
	jal     bg_check_water
	lwc1    $f14, 0x0008($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0050($sp)
	sw      $0, 0x0060($t8)
	lw      $t9, 0x0030($sp)
	bnez    $t9, 60$
	nop
	lw      $t1, 0x0050($sp)
	addiu   $t0, $sp, 0x0040
	lwc1    $f4, 0x0004($t0)
	lwc1    $f6, 0x0070($t1)
	c.le.s  $f4, $f6
	nop
	bc1f    54$
	nop
	lw      $t2, 0x0050($sp)
	lwc1    $f8, 0x0070($t2)
	swc1    $f8, 0x0040($t2)
	b       264$
	li      $v0, 0x0001
54$:
	addiu   $t3, $sp, 0x0040
	lwc1    $f10, 0x0004($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f10, 0x0040($t4)
	b       264$
	li      $v0, 0x0002
60$:
	lw      $t5, 0x0050($sp)
	li      $at, 0x00010000
	lw      $t6, 0x000C($t5)
	and     $t7, $t6, $at
	beqz    $t7, 80$
	nop
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    80$
	nop
	lwc1    $f4, 0x0024($sp)
	swc1    $f4, 0x0028($sp)
	la.u    $t8, physics_8032DAF8
	la.l    $t8, physics_8032DAF8
	sw      $t8, 0x0030($sp)
	lwc1    $f6, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f6, 0x0028($t9)
80$:
	addiu   $t0, $sp, 0x0040
	lwc1    $f8, 0x0004($t0)
	lwc1    $f10, 0x0028($sp)
	c.le.s  $f8, $f10
	nop
	bc1f    115$
	nop
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0028($sp)
	li      $at, 0x43200000
	mtc1    $at, $f6
	sub.s   $f4, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    110$
	nop
	addiu   $t1, $sp, 0x0040
	lwc1    $f8, 0x0000($t1)
	lw      $t2, 0x0050($sp)
	swc1    $f8, 0x003C($t2)
	addiu   $t3, $sp, 0x0040
	lwc1    $f10, 0x0008($t3)
	lw      $t4, 0x0050($sp)
	swc1    $f10, 0x0044($t4)
	lw      $t5, 0x0030($sp)
	lw      $t6, 0x0050($sp)
	sw      $t5, 0x0068($t6)
	lwc1    $f16, 0x0028($sp)
	lw      $t7, 0x0050($sp)
	swc1    $f16, 0x0070($t7)
110$:
	lwc1    $f18, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	swc1    $f18, 0x0040($t8)
	b       264$
	li      $v0, 0x0001
115$:
	addiu   $t9, $sp, 0x0040
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f4, 0x0004($t9)
	lwc1    $f10, 0x002C($sp)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    170$
	nop
	lw      $t0, 0x0050($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x004C($t0)
	c.le.s  $f18, $f16
	nop
	bc1f    151$
	nop
	mtc1    $0, $f4
	lw      $t1, 0x0050($sp)
	swc1    $f4, 0x004C($t1)
	lw      $t2, 0x0058($sp)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 149$
	nop
	lw      $t4, 0x0050($sp)
	lw      $t5, 0x0064($t4)
	beqz    $t5, 149$
	nop
	lh      $t6, 0x0000($t5)
	li      $at, 0x0005
	bne     $t6, $at, 149$
	nop
	b       264$
	li      $v0, 0x0004
149$:
	b       264$
	move    $v0, $0
151$:
	lw      $t8, 0x0050($sp)
	addiu   $t7, $sp, 0x0040
	lwc1    $f6, 0x0004($t7)
	lwc1    $f8, 0x0070($t8)
	c.le.s  $f6, $f8
	nop
	bc1f    164$
	nop
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x0070($t9)
	swc1    $f10, 0x0040($t9)
	b       264$
	li      $v0, 0x0001
164$:
	addiu   $t0, $sp, 0x0040
	lwc1    $f16, 0x0004($t0)
	lw      $t1, 0x0050($sp)
	swc1    $f16, 0x0040($t1)
	b       264$
	li      $v0, 0x0002
170$:
	lw      $t2, 0x0058($sp)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 201$
	nop
	lw      $t4, 0x003C($sp)
	bnez    $t4, 201$
	nop
	lw      $t5, 0x0038($sp)
	beqz    $t5, 201$
	nop
	lw      $a0, 0x0050($sp)
	lw      $a1, 0x0038($sp)
	lw      $a2, 0x0054($sp)
	jal     physics_80255EC4
	addiu   $a3, $sp, 0x0040
	beqz    $v0, 189$
	nop
	b       264$
	li      $v0, 0x0003
189$:
	lw      $a0, 0x0050($sp)
	addiu   $a1, $sp, 0x0040
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0050($sp)
	sw      $t6, 0x0068($t7)
	lwc1    $f18, 0x0028($sp)
	lw      $t8, 0x0050($sp)
	swc1    $f18, 0x0070($t8)
	b       264$
	move    $v0, $0
201$:
	lw      $a0, 0x0050($sp)
	addiu   $a1, $sp, 0x0040
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0050($sp)
	sw      $t9, 0x0068($t0)
	lwc1    $f4, 0x0028($sp)
	lw      $t1, 0x0050($sp)
	swc1    $f4, 0x0070($t1)
	lw      $t2, 0x003C($sp)
	bnez    $t2, 217$
	nop
	lw      $t3, 0x0038($sp)
	beqz    $t3, 260$
	nop
217$:
	lw      $t4, 0x003C($sp)
	beqz    $t4, 223$
	nop
	lw      $t5, 0x0050($sp)
	b       226$
	sw      $t4, 0x0060($t5)
223$:
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0050($sp)
	sw      $t6, 0x0060($t7)
226$:
	lw      $t8, 0x0050($sp)
	lw      $t9, 0x0060($t8)
	lwc1    $f12, 0x0024($t9)
	jal     ATAN2
	lwc1    $f14, 0x001C($t9)
	lw      $t1, 0x0050($sp)
	sll     $s0, $v0, 16
	sra     $t0, $s0, 16
	lh      $t2, 0x002E($t1)
	move    $s0, $t0
	subu    $t3, $s0, $t2
	sh      $t3, 0x004E($sp)
	lw      $t4, 0x0050($sp)
	li      $at, 0x0001
	lw      $t5, 0x0060($t4)
	lh      $t6, 0x0000($t5)
	bne     $t6, $at, 246$
	nop
	b       264$
	li      $v0, 0x0006
246$:
	lh      $t7, 0x004E($sp)
	slti    $at, $t7, -0x6000
	bnez    $at, 253$
	nop
	slti    $at, $t7, 0x6001
	bnez    $at, 260$
	nop
253$:
	lw      $t8, 0x0050($sp)
	li      $at, 0x40000000
	lw      $t9, 0x0004($t8)
	or      $t0, $t9, $at
	sw      $t0, 0x0004($t8)
	b       264$
	li      $v0, 0x0002
260$:
	b       264$
	move    $v0, $0
	b       264$
	nop
264$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

physics_802564E0:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0000($sp)
	lh      $t6, 0x0034($a0)
	slti    $at, $t6, 0x0401
	bnez    $at, 17$
	nop
	lh      $t7, 0x0034($a0)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x0000($sp)
17$:
	li      $at, 0xC2960000
	mtc1    $at, $f18
	lwc1    $f4, 0x0000($sp)
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x0004($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f10, 0x0000($sp)
	lwc1    $f18, 0x004C($a0)
	mul.s   $f16, $f6, $f10
	sub.s   $f4, $f18, $f16
	swc1    $f4, 0x004C($a0)
	lwc1    $f8, 0x004C($a0)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    37$
	nop
	lwc1    $f10, 0x0004($sp)
	swc1    $f10, 0x004C($a0)
37$:
	b       39$
	nop
39$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

physics_80256584:
	lw      $t6, 0x0004($a0)
	andi    $t7, $t6, 0x0100
	bnez    $t7, 6$
	nop
	jr      $ra
	move    $v0, $0
6$:
	lw      $t8, 0x000C($a0)
	li.u    $at, 0x00021000
	li.l    $at, 0x00021000
	and     $t9, $t8, $at
	beqz    $t9, 14$
	nop
	jr      $ra
	move    $v0, $0
14$:
	lhu     $t0, 0x0002($a0)
	andi    $t1, $t0, 0x0080
	bnez    $t1, 32$
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($a0)
	c.lt.s  $f6, $f4
	nop
	bc1f    32$
	nop
	lw      $v0, 0x000C($a0)
	li      $at, 0x02000000
	and     $t2, $v0, $at
	move    $v0, $t2
	sltu    $t3, $0, $v0
	jr      $ra
	move    $v0, $t3
32$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

physics_8025661C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	lw      $t7, 0x000C($t6)
	bne     $t7, $at, 20$
	nop
	lwc1    $f4, 0x004C($t6)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    20$
	nop
	jal     physics_802564E0
	lw      $a0, 0x0018($sp)
	b       241$
	nop
20$:
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x00880898
	li.l    $at, 0x00880898
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, 46$
	nop
	lw      $t0, 0x0018($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    44$
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t2, 0x0018($sp)
	swc1    $f6, 0x004C($t2)
44$:
	b       241$
	nop
46$:
	lw      $t3, 0x0018($sp)
	li.u    $at, 0x03000888
	li.l    $at, 0x03000888
	lw      $t4, 0x000C($t3)
	beq     $t4, $at, 59$
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $t4, $at, 59$
	nop
	li      $at, 0x1535
	bne     $t4, $at, 79$
	nop
59$:
	lw      $t5, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t5)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t5)
	lw      $t7, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    77$
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t6, 0x0018($sp)
	swc1    $f6, 0x004C($t6)
77$:
	b       241$
	nop
79$:
	lw      $t8, 0x0018($sp)
	li.u    $at, 0x010208B7
	li.l    $at, 0x010208B7
	lw      $t9, 0x000C($t8)
	beq     $t9, $at, 88$
	nop
	li      $at, 0x1904
	bne     $t9, $at, 108$
	nop
88$:
	lw      $t0, 0x0018($sp)
	lui     $at, %hi(physics_803366B0)
	lwc1    $f10, %lo(physics_803366B0)($at)
	lwc1    $f8, 0x004C($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0xC2820000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    106$
	nop
	li      $at, 0xC2820000
	mtc1    $at, $f6
	lw      $t2, 0x0018($sp)
	swc1    $f6, 0x004C($t2)
106$:
	b       241$
	nop
108$:
	lw      $t3, 0x0018($sp)
	li.u    $at, 0x010208B8
	li.l    $at, 0x010208B8
	lw      $t4, 0x000C($t3)
	bne     $t4, $at, 133$
	nop
	lw      $t5, 0x0018($sp)
	lwc1    $f8, 0x004C($t5)
	lwc1    $f10, 0x00C4($t5)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x004C($t5)
	lw      $t7, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    131$
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f6
	lw      $t6, 0x0018($sp)
	swc1    $f6, 0x004C($t6)
131$:
	b       241$
	nop
133$:
	jal     physics_80256584
	lw      $a0, 0x0018($sp)
	beqz    $v0, 144$
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t8)
	div.s   $f16, $f8, $f10
	b       241$
	swc1    $f16, 0x004C($t8)
144$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x000C($t9)
	andi    $t1, $t0, 0x4000
	beqz    $t1, 169$
	nop
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(physics_803366B4)
	lwc1    $f4, %lo(physics_803366B4)($at)
	lwc1    $f18, 0x004C($t2)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($t2)
	lw      $t3, 0x0018($sp)
	li      $at, 0xC1800000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    167$
	nop
	li      $at, 0xC1800000
	mtc1    $at, $f16
	lw      $t4, 0x0018($sp)
	swc1    $f16, 0x004C($t4)
167$:
	b       241$
	nop
169$:
	lw      $t5, 0x0018($sp)
	lw      $t7, 0x0004($t5)
	andi    $t6, $t7, 0x0008
	beqz    $t6, 223$
	nop
	lwc1    $f18, 0x004C($t5)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    223$
	nop
	lhu     $t8, 0x0002($t5)
	andi    $t9, $t8, 0x0080
	beqz    $t9, 223$
	nop
	lw      $t1, 0x0018($sp)
	li      $t0, 0x0001
	lw      $t2, 0x0098($t1)
	sb      $t0, 0x0007($t2)
	lw      $t3, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x004C($t3)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x004C($t3)
	lw      $t4, 0x0018($sp)
	li      $at, 0xC2160000
	mtc1    $at, $f18
	lwc1    $f16, 0x004C($t4)
	c.lt.s  $f16, $f18
	nop
	bc1f    221$
	nop
	lw      $t7, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t7)
	li      $at, 0xC2160000
	mtc1    $at, $f16
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($t7)
	lw      $t6, 0x0018($sp)
	lwc1    $f10, 0x004C($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    221$
	nop
	li      $at, 0xC2160000
	mtc1    $at, $f18
	lw      $t5, 0x0018($sp)
	swc1    $f18, 0x004C($t5)
221$:
	b       241$
	nop
223$:
	lw      $t8, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x004C($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($t8)
	lw      $t9, 0x0018($sp)
	li      $at, 0xC2960000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t9)
	c.lt.s  $f10, $f16
	nop
	bc1f    241$
	nop
	li      $at, 0xC2960000
	mtc1    $at, $f18
	lw      $t1, 0x0018($sp)
	swc1    $f18, 0x004C($t1)
241$:
	b       243$
	nop
243$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

physics_802569F8:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	li.u    $at, 0x008008A9
	li.l    $at, 0x008008A9
	beq     $t6, $at, 71$
	nop
	lui     $at, %hi(physics_803366B8)
	lwc1    $f6, %lo(physics_803366B8)($at)
	lwc1    $f4, 0x0040($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($sp)
	lw      $t7, 0x0068($a0)
	li      $at, 0x0038
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, 71$
	nop
	lui     $at, %hi(physics_803366BC)
	lwc1    $f10, %lo(physics_803366BC)($at)
	lwc1    $f16, 0x0000($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    71$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    71$
	nop
	lwc1    $f4, 0x0000($sp)
	mtc1    $0, $f6
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    46$
	nop
	li      $at, 0x43480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0000($sp)
	lui     $at, %hi(physics_803366C0)
	lwc1    $f18, %lo(physics_803366C0)($at)
	add.s   $f16, $f8, $f10
	div.s   $f4, $f18, $f16
	b       50$
	swc1    $f4, 0x0004($sp)
46$:
	li      $at, 0x42480000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0004($sp)
50$:
	lwc1    $f8, 0x004C($a0)
	lwc1    $f10, 0x0004($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    71$
	nop
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f18, 0x0004($sp)
	lwc1    $f6, 0x004C($a0)
	div.s   $f4, $f18, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x004C($a0)
	lwc1    $f18, 0x0004($sp)
	lwc1    $f10, 0x004C($a0)
	c.lt.s  $f18, $f10
	nop
	bc1f    71$
	nop
	lwc1    $f16, 0x0004($sp)
	swc1    $f16, 0x004C($a0)
71$:
	b       73$
	nop
73$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl physics_80256B24
physics_80256B24:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x0060($t6)
	sw      $0, 0x0020($sp)
8$:
	lw      $t7, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($t7)
	lwc1    $f10, 0x003C($t7)
	addiu   $t8, $sp, 0x0024
	div.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t8)
	lw      $t9, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f4
	lwc1    $f18, 0x004C($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t0, $sp, 0x0024
	div.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t0)
	lw      $t1, 0x0030($sp)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0050($t1)
	lwc1    $f6, 0x0044($t1)
	addiu   $t2, $sp, 0x0024
	div.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t2)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	jal     physics_802560AC
	lw      $a2, 0x0034($sp)
	sw      $v0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	beqz    $t3, 45$
	nop
	lw      $t4, 0x001C($sp)
	sw      $t4, 0x0018($sp)
45$:
	lw      $t5, 0x001C($sp)
	li      $at, 0x0001
	beq     $t5, $at, 58$
	nop
	li      $at, 0x0003
	beq     $t5, $at, 58$
	nop
	li      $at, 0x0004
	beq     $t5, $at, 58$
	nop
	li      $at, 0x0006
	bne     $t5, $at, 60$
	nop
58$:
	b       65$
	nop
60$:
	lw      $t6, 0x0020($sp)
	addiu   $t7, $t6, 0x0001
	slti    $at, $t7, 0x0004
	bnez    $at, 8$
	sw      $t7, 0x0020($sp)
65$:
	lw      $t8, 0x0030($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x004C($t8)
	c.le.s  $f16, $f10
	nop
	bc1f    75$
	nop
	lw      $t9, 0x0030($sp)
	lwc1    $f18, 0x0040($t9)
	swc1    $f18, 0x00BC($t9)
75$:
	jal     player_802518A8
	lw      $a0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	sw      $v0, 0x0014($t0)
	lw      $t1, 0x0030($sp)
	li.u    $at, 0x10880899
	li.l    $at, 0x10880899
	lw      $t2, 0x000C($t1)
	beq     $t2, $at, 87$
	nop
	jal     physics_8025661C
	lw      $a0, 0x0030($sp)
87$:
	jal     physics_802569F8
	lw      $a0, 0x0030($sp)
	lw      $t3, 0x0030($sp)
	lw      $a0, 0x0088($t3)
	addiu   $a1, $t3, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t4, 0x0030($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t4)
	lh      $a2, 0x002E($t4)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       105$
	lw      $v0, 0x0018($sp)
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

physics_80256CD8:
	lhu     $t6, 0x002C($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_sin)
	mul.s   $f8, $f4, $f6
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0048($a0)
	lhu     $t2, 0x002C($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x0054($a0)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f18, %lo(math_sin)($at)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x004C($a0)
	lhu     $t5, 0x002C($a0)
	la.u    $t8, math_cos
	la.l    $t8, math_cos
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $t9, $t7, $t8
	lwc1    $f8, 0x0000($t9)
	lwc1    $f10, 0x0054($a0)
	lhu     $t0, 0x002E($a0)
	mul.s   $f16, $f10, $f8
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $t3, $t2, $t8
	lwc1    $f18, 0x0000($t3)
	mul.s   $f4, $f18, $f16
	swc1    $f4, 0x0050($a0)
	jr      $ra
	nop
	jr      $ra
	nop

physics_80256D8C:
	addiu   $sp, $sp, -0x0008
	lhu     $t6, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f12, $f4, $f6
	swc1    $f12, 0x0058($a0)
	swc1    $f12, 0x0048($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x004C($a0)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x0054($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f12, $f10, $f16
	swc1    $f12, 0x005C($a0)
	swc1    $f12, 0x0050($a0)
	b       26$
	nop
26$:
	jr      $ra
	addiu   $sp, $sp, 0x0008
