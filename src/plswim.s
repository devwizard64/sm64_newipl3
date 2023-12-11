.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

pl_swim_80270110:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	move    $t9, $0
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0082
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    17$
	nop
	li      $t9, 0x0001
17$:
	sh      $t9, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	beqz    $t0, 38$
	nop
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0008($t1)
	or      $t4, $t2, $t3
	sw      $t4, 0x0008($t1)
	lui     $t6, %hi(pl_swim_8032DD30)
	lh      $t6, %lo(pl_swim_8032DD30)($t6)
	lh      $t5, 0x001E($sp)
	xor     $t7, $t5, $t6
	beqz    $t7, 38$
	nop
	lw      $t8, 0x0020($sp)
	li.u    $a0, 0x04316081
	li.l    $a0, 0x04316081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
38$:
	lh      $t9, 0x001E($sp)
	lui     $at, %hi(pl_swim_8032DD30)
	sh      $t9, %lo(pl_swim_8032DD30)($at)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802701CC:
	lw      $t6, 0x0004($a0)
	andi    $t7, $t6, 0x0004
	beqz    $t7, 6$
	nop
	jr      $ra
	move    $v0, $0
6$:
	lh      $t8, 0x0076($a0)
	lwc1    $f8, 0x0040($a0)
	li      $at, 0x43C80000
	addiu   $t9, $t8, -0x0050
	mtc1    $t9, $f4
	mtc1    $at, $f16
	move    $v0, $0
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    20$
	nop
	li      $v0, 0x0001
20$:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_80270234:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 27$
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x00020000
	lw      $t0, 0x000C($t9)
	and     $t1, $t0, $at
	beqz    $t1, 21$
	nop
	li      $at, 0xC0000000
	mtc1    $at, $f6
	b       25$
	swc1    $f6, 0x001C($sp)
21$:
	li      $at, 0xC1900000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x001C($sp)
25$:
	b       44$
	nop
27$:
	jal     pl_swim_802701CC
	lw      $a0, 0x0020($sp)
	beqz    $v0, 35$
	nop
	li      $at, 0x3FA00000
	mtc1    $at, $f10
	b       44$
	swc1    $f10, 0x001C($sp)
35$:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x000C($t2)
	andi    $t4, $t3, 0x0400
	bnez    $t4, 44$
	nop
	li      $at, 0xC0000000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x001C($sp)
44$:
	b       48$
	lwc1    $f0, 0x001C($sp)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270304:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	li      $a1, 0x41200000
	jal     player_80251A48
	li      $a2, 0x42DC0000
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x0034($sp)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	jal     bg_check_ground
	lw      $a2, 0x0008($t6)
	swc1    $f0, 0x001C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80251AFC
	addiu   $a2, $sp, 0x0028
	swc1    $f0, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	bnez    $t7, 26$
	nop
	b       123$
	li      $v0, 0x0003
26$:
	lw      $t8, 0x0034($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x0004($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    95$
	nop
	lw      $t9, 0x0034($sp)
	lwc1    $f8, 0x0020($sp)
	li      $at, 0x43200000
	lwc1    $f10, 0x0004($t9)
	mtc1    $at, $f18
	sub.s   $f16, $f8, $f10
	c.le.s  $f18, $f16
	nop
	bc1f    62$
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     vecf_cpy
	addiu   $a0, $a0, 0x003C
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0030($sp)
	sw      $t0, 0x0068($t1)
	lwc1    $f4, 0x001C($sp)
	lw      $t2, 0x0030($sp)
	swc1    $f4, 0x0070($t2)
	lw      $t3, 0x002C($sp)
	beqz    $t3, 60$
	nop
	b       123$
	li      $v0, 0x0004
	b       62$
	nop
60$:
	b       123$
	move    $v0, $0
62$:
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f16
	sub.s   $f10, $f6, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    73$
	nop
	b       123$
	li      $v0, 0x0003
73$:
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x0020($sp)
	lw      $t4, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	sub.s   $f6, $f18, $f4
	lw      $a1, 0x0000($t4)
	lw      $a3, 0x0008($t4)
	addiu   $a0, $a0, 0x003C
	mfc1    $a2, $f6
	jal     vecf_set
	nop
	lw      $t5, 0x0024($sp)
	lw      $t6, 0x0030($sp)
	sw      $t5, 0x0068($t6)
	lwc1    $f8, 0x001C($sp)
	lw      $t7, 0x0030($sp)
	swc1    $f8, 0x0070($t7)
	b       123$
	li      $v0, 0x0002
	b       121$
	nop
95$:
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x001C($sp)
	li      $at, 0x43200000
	mtc1    $at, $f4
	sub.s   $f18, $f10, $f16
	c.lt.s  $f18, $f4
	nop
	bc1f    106$
	nop
	b       123$
	li      $v0, 0x0003
106$:
	lw      $t8, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	lw      $a2, 0x001C($sp)
	lw      $a1, 0x0000($t8)
	lw      $a3, 0x0008($t8)
	jal     vecf_set
	addiu   $a0, $a0, 0x003C
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0068($t0)
	lwc1    $f6, 0x001C($sp)
	lw      $t1, 0x0030($sp)
	swc1    $f6, 0x0070($t1)
	b       123$
	li      $v0, 0x0001
121$:
	b       123$
	nop
123$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80270500:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	li      $at, 0x44FA0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0040($sp)
	lw      $t6, 0x0048($sp)
	li      $at, 0x000E
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, 55$
	nop
	lw      $t9, 0x0048($sp)
	lw      $t0, 0x0068($t9)
	lh      $t1, 0x0002($t0)
	sll     $t2, $t1, 8
	sh      $t2, 0x003E($sp)
	lw      $t3, 0x0048($sp)
	lui     $t8, %hi(pl_swim_8032DD38)
	lw      $t4, 0x0068($t3)
	lh      $t5, 0x0002($t4)
	sra     $t6, $t5, 8
	sll     $t7, $t6, 1
	addu    $t8, $t8, $t7
	lh      $t8, %lo(pl_swim_8032DD38)($t8)
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0038($sp)
	lhu     $t9, 0x003E($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x0038($sp)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t2, 0x004C($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0000($t2)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0000($t2)
	lhu     $t3, 0x003E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f8, 0x0038($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lw      $t6, 0x004C($sp)
	mul.s   $f16, $f8, $f10
	lwc1    $f4, 0x0008($t6)
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0008($t6)
55$:
	sw      $0, 0x0044($sp)
56$:
	lw      $t8, 0x0044($sp)
	lui     $t7, %hi(scenep)
	lw      $t7, %lo(scenep)($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x002C($t0)
	sw      $t1, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	beqz    $t2, 251$
	nop
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0030($sp)
	lw      $t3, 0x0034($sp)
	lw      $t5, 0x0048($sp)
	lh      $t4, 0x0000($t3)
	lwc1    $f4, 0x003C($t5)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f16, $f10, $f4
	swc1    $f16, 0x002C($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0048($sp)
	lh      $t8, 0x0002($t6)
	lwc1    $f8, 0x0040($t7)
	mtc1    $t8, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
	lw      $t9, 0x0034($sp)
	lw      $t1, 0x0048($sp)
	lh      $t0, 0x0004($t9)
	lwc1    $f18, 0x0044($t1)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f16, $f4
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f4, 0x0024($sp)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f16, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f10, $f16
	swc1    $f0, 0x0020($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f18, $f18
	nop
	mul.s   $f4, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f4
	swc1    $f0, 0x001C($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	sh      $v0, 0x001A($sp)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	sh      $v0, 0x0018($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x001C($sp)
	li      $at, 0x4AFA0000
	mtc1    $at, $f8
	add.s   $f18, $f10, $f16
	lh      $t6, 0x0018($sp)
	div.s   $f6, $f8, $f18
	trunc.w.s $f4, $f6
	mfc1    $t3, $f4
	nop
	sll     $t4, $t3, 16
	sra     $t5, $t4, 16
	subu    $t8, $t6, $t5
	sh      $t8, 0x0018($sp)
	lw      $t7, 0x0034($sp)
	lh      $t9, 0x0006($t7)
	bltz    $t9, 180$
	nop
	lui     $t0, %hi(stage_index)
	lh      $t0, %lo(stage_index)($t0)
	li      $at, 0x0017
	bne     $t0, $at, 153$
	nop
	lui     $t1, %hi(scene_index)
	lh      $t1, %lo(scene_index)($t1)
	li      $at, 0x0002
	bne     $t1, $at, 153$
	nop
	li      $at, 0x457A0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0040($sp)
153$:
	li      $at, 0x41D00000
	mtc1    $at, $f8
	lwc1    $f16, 0x001C($sp)
	c.le.s  $f8, $f16
	nop
	bc1f    178$
	nop
	lwc1    $f18, 0x0040($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    178$
	nop
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x0040($sp)
	lw      $t2, 0x0034($sp)
	li      $at, 0x3F800000
	div.s   $f10, $f6, $f4
	lh      $t3, 0x0006($t2)
	mtc1    $at, $f8
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f6, $f16
	swc1    $f4, 0x0030($sp)
178$:
	b       201$
	nop
180$:
	li      $at, 0x44FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    201$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f6
	lwc1    $f18, 0x001C($sp)
	lw      $t4, 0x0034($sp)
	li      $at, 0x3F800000
	div.s   $f16, $f18, $f6
	lh      $t6, 0x0006($t4)
	mtc1    $at, $f4
	mtc1    $t6, $f10
	nop
	cvt.s.w $f18, $f10
	sub.s   $f8, $f4, $f16
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x0030($sp)
201$:
	lhu     $t5, 0x001A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x0030($sp)
	sra     $t8, $t5, 4
	sll     $t7, $t8, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lhu     $t9, 0x0018($sp)
	lui     $at, %hi(math_sin)
	mul.s   $f10, $f4, $f16
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	lw      $t2, 0x004C($sp)
	mul.s   $f8, $f10, $f18
	lwc1    $f6, 0x0000($t2)
	add.s   $f4, $f6, $f8
	swc1    $f4, 0x0000($t2)
	lhu     $t3, 0x001A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0030($sp)
	sra     $t4, $t3, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f10, %lo(math_sin)($at)
	lw      $t5, 0x004C($sp)
	mul.s   $f18, $f16, $f10
	lwc1    $f6, 0x0004($t5)
	add.s   $f8, $f6, $f18
	swc1    $f8, 0x0004($t5)
	lhu     $t8, 0x001A($sp)
	la.u    $t0, math_cos
	la.l    $t0, math_cos
	sra     $t7, $t8, 4
	sll     $t9, $t7, 2
	addu    $t1, $t9, $t0
	lwc1    $f16, 0x0000($t1)
	lwc1    $f4, 0x0030($sp)
	lhu     $t2, 0x0018($sp)
	lw      $t5, 0x004C($sp)
	mul.s   $f10, $f4, $f16
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $t6, $t4, $t0
	lwc1    $f6, 0x0000($t6)
	lwc1    $f8, 0x0008($t5)
	mul.s   $f18, $f10, $f6
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x0008($t5)
251$:
	lw      $t8, 0x0044($sp)
	addiu   $t7, $t8, 0x0001
	slti    $at, $t7, 0x0002
	bnez    $at, 56$
	sw      $t7, 0x0044($sp)
	b       258$
	nop
258$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_swim_80270918:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $sp, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0048
	lw      $t8, 0x0040($sp)
	lw      $t9, 0x000C($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, 18$
	nop
	lw      $a0, 0x0040($sp)
	jal     pl_swim_80270500
	addiu   $a1, $sp, 0x0020
18$:
	lw      $t2, 0x0040($sp)
	addiu   $t1, $sp, 0x0020
	lwc1    $f4, 0x0000($t1)
	lwc1    $f6, 0x003C($t2)
	addiu   $t3, $sp, 0x002C
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($t3)
	lw      $t5, 0x0040($sp)
	addiu   $t4, $sp, 0x0020
	lwc1    $f10, 0x0004($t4)
	lwc1    $f16, 0x0040($t5)
	addiu   $t6, $sp, 0x002C
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($t6)
	lw      $t8, 0x0040($sp)
	addiu   $t7, $sp, 0x0020
	lwc1    $f4, 0x0008($t7)
	lwc1    $f6, 0x0044($t8)
	addiu   $t9, $sp, 0x002C
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($t9)
	lw      $t1, 0x0040($sp)
	addiu   $t0, $sp, 0x002C
	lwc1    $f10, 0x0004($t0)
	lh      $t2, 0x0076($t1)
	addiu   $t3, $t2, -0x0050
	mtc1    $t3, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    62$
	nop
	lw      $t4, 0x0040($sp)
	addiu   $t7, $sp, 0x002C
	lh      $t5, 0x0076($t4)
	addiu   $t6, $t5, -0x0050
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0004($t7)
	mtc1    $0, $f8
	lw      $t8, 0x0040($sp)
	swc1    $f8, 0x004C($t8)
62$:
	lw      $a0, 0x0040($sp)
	jal     pl_swim_80270304
	addiu   $a1, $sp, 0x002C
	sw      $v0, 0x0038($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $a0, 0x0020
	jal     vecf_cpy
	addiu   $a1, $a1, 0x003C
	lw      $t9, 0x0040($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x002C($t9)
	lh      $a2, 0x002E($t9)
	lh      $a3, 0x0030($t9)
	addiu   $a0, $a0, 0x001A
	jal     vecs_set
	subu    $a1, $0, $a1
	b       83$
	lw      $v0, 0x0038($sp)
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

pl_swim_80270A74:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lh      $t8, 0x001A($t7)
	blez    $t8, 22$
	nop
	lw      $t9, 0x0004($sp)
	li      $at, 0x42700000
	mtc1    $at, $f4
	lhu     $t0, 0x001A($t9)
	lui     $at, %hi(math_sin)
	lwc1    $f16, 0x0024($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	nop
	mul.s   $f10, $f8, $f6
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0024($t9)
22$:
	lw      $t3, 0x0004($sp)
	lh      $t4, 0x001A($t3)
	bgez    $t4, 36$
	nop
	lw      $t5, 0x0004($sp)
	li      $at, 0x000A
	lh      $t6, 0x001A($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	div     $0, $t7, $at
	mflo    $t8
	sh      $t8, 0x001A($t5)
	nop
36$:
	lw      $t0, 0x0004($sp)
	lh      $t1, 0x001A($t0)
	blez    $t1, 50$
	nop
	lw      $t2, 0x0004($sp)
	lh      $t9, 0x001A($t2)
	sll     $t3, $t9, 2
	addu    $t3, $t3, $t9
	sll     $t3, $t3, 1
	bgez    $t3, 49$
	sra     $t4, $t3, 3
	addiu   $at, $t3, 0x0007
	sra     $t4, $at, 3
49$:
	sh      $t4, 0x001A($t2)
50$:
	b       52$
	nop
52$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_swim_80270B4C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     pl_swim_80270234
	lw      $a0, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	sh      $0, 0x0032($t6)
	lw      $t7, 0x0020($sp)
	sh      $0, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	mtc1    $0, $f14
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	jal     convergef
	lwc1    $f12, 0x0054($t8)
	lw      $t9, 0x0020($sp)
	swc1    $f0, 0x0054($t9)
	lw      $t0, 0x0020($sp)
	lwc1    $f14, 0x001C($sp)
	li      $a2, 0x40000000
	li      $a3, 0x3F800000
	jal     convergef
	lwc1    $f12, 0x004C($t0)
	lw      $t1, 0x0020($sp)
	swc1    $f0, 0x004C($t1)
	lw      $t2, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x002C($t2)
	lw      $t3, 0x0020($sp)
	sh      $v0, 0x002C($t3)
	lw      $t4, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0100
	li      $a3, 0x0100
	jal     convergei
	lh      $a0, 0x0030($t4)
	lw      $t5, 0x0020($sp)
	sh      $v0, 0x0030($t5)
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x002C($t6)
	lwc1    $f4, 0x0054($t6)
	lhu     $t0, 0x002E($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f8, $f4, $f6
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	mul.s   $f16, $f10, $f8
	swc1    $f16, 0x0048($t6)
	lw      $t3, 0x0020($sp)
	la.u    $t8, math_cos
	la.l    $t8, math_cos
	lhu     $t4, 0x002C($t3)
	lwc1    $f18, 0x0054($t3)
	lhu     $t0, 0x002E($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $t9, $t7, $t8
	lwc1    $f4, 0x0000($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f6, $f18, $f4
	addu    $t6, $t2, $t8
	lwc1    $f10, 0x0000($t6)
	mul.s   $f8, $f10, $f6
	swc1    $f8, 0x0050($t3)
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270C94:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     pl_swim_80270234
	lw      $a0, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	li      $at, 0x41E00000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0018($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 22$
	nop
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t9)
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0054($t9)
22$:
	lw      $t0, 0x0020($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0054($t0)
	c.lt.s  $f16, $f18
	nop
	bc1f    32$
	nop
	mtc1    $0, $f4
	lw      $t1, 0x0020($sp)
	swc1    $f4, 0x0054($t1)
32$:
	lw      $t2, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f6, 0x0054($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    42$
	nop
	lwc1    $f10, 0x0018($sp)
	lw      $t3, 0x0020($sp)
	swc1    $f10, 0x0054($t3)
42$:
	lw      $t4, 0x0020($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f16, 0x0054($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    55$
	nop
	lw      $t5, 0x0020($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t5)
55$:
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x002C($t6)
	lwc1    $f10, 0x0054($t6)
	lhu     $t0, 0x002E($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_cos)($at)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	mul.s   $f18, $f10, $f16
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f6, $f4, $f18
	swc1    $f6, 0x0048($t6)
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x001C($sp)
	lhu     $t4, 0x002C($t3)
	lwc1    $f10, 0x0054($t3)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x004C($t3)
	lw      $t8, 0x0020($sp)
	la.u    $t2, math_cos
	la.l    $t2, math_cos
	lhu     $t9, 0x002C($t8)
	lwc1    $f6, 0x0054($t8)
	lhu     $t4, 0x002E($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t6, $t1, $t2
	lwc1    $f8, 0x0000($t6)
	sra     $t5, $t4, 4
	sll     $t7, $t5, 2
	mul.s   $f10, $f6, $f8
	addu    $t3, $t7, $t2
	lwc1    $f16, 0x0000($t3)
	mul.s   $f4, $f16, $f10
	swc1    $f4, 0x0050($t8)
	b       103$
	nop
103$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270E40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lw      $t7, 0x009C($t6)
	lwc1    $f4, 0x0004($t7)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	subu    $t2, $0, $t1
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	blez    $t3, 47$
	nop
	lw      $t4, 0x0020($sp)
	lh      $t5, 0x0034($t4)
	bgez    $t5, 37$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0034($t6)
	addiu   $t8, $t7, 0x0040
	sh      $t8, 0x0034($t6)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0034($t9)
	slti    $at, $t0, 0x0011
	bnez    $at, 35$
	nop
	lw      $t2, 0x0020($sp)
	li      $t1, 0x0010
	sh      $t1, 0x0034($t2)
35$:
	b       45$
	nop
37$:
	lw      $t3, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0010
	li      $a3, 0x0020
	jal     convergei
	lh      $a0, 0x0034($t3)
	lw      $t4, 0x0020($sp)
	sh      $v0, 0x0034($t4)
45$:
	b       86$
	nop
47$:
	lh      $t5, 0x001E($sp)
	bgez    $t5, 78$
	nop
	lw      $t7, 0x0020($sp)
	lh      $t8, 0x0034($t7)
	blez    $t8, 68$
	nop
	lw      $t6, 0x0020($sp)
	lh      $t9, 0x0034($t6)
	addiu   $t0, $t9, -0x0040
	sh      $t0, 0x0034($t6)
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0034($t1)
	slti    $at, $t2, -0x0010
	beqz    $at, 66$
	nop
	lw      $t4, 0x0020($sp)
	li      $t3, -0x0010
	sh      $t3, 0x0034($t4)
66$:
	b       76$
	nop
68$:
	lw      $t5, 0x0020($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0020
	li      $a3, 0x0010
	jal     convergei
	lh      $a0, 0x0034($t5)
	lw      $t7, 0x0020($sp)
	sh      $v0, 0x0034($t7)
76$:
	b       86$
	nop
78$:
	lw      $t8, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0040
	li      $a3, 0x0040
	jal     convergei
	lh      $a0, 0x0034($t8)
	lw      $t9, 0x0020($sp)
	sh      $v0, 0x0034($t9)
86$:
	lw      $t0, 0x0020($sp)
	lh      $t6, 0x002E($t0)
	lh      $t1, 0x0034($t0)
	addu    $t2, $t6, $t1
	sh      $t2, 0x002E($t0)
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x0034($t3)
	subu    $t5, $0, $t4
	sll     $t7, $t5, 3
	sh      $t7, 0x0030($t3)
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80270FD8:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x009C($a0)
	li      $at, 0x437C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	subu    $t1, $0, $t0
	sh      $t1, 0x0006($sp)
	lh      $t2, 0x002C($a0)
	bgez    $t2, 19$
	nop
	li      $t3, 0x0100
	b       21$
	sh      $t3, 0x0004($sp)
19$:
	li      $t4, 0x0200
	sh      $t4, 0x0004($sp)
21$:
	lh      $t5, 0x002C($a0)
	lh      $t6, 0x0006($sp)
	slt     $at, $t5, $t6
	beqz    $at, 39$
	nop
	lh      $t7, 0x002C($a0)
	lh      $t8, 0x0004($sp)
	addu    $t9, $t7, $t8
	sh      $t9, 0x002C($a0)
	lh      $t1, 0x0006($sp)
	lh      $t0, 0x002C($a0)
	slt     $at, $t1, $t0
	beqz    $at, 37$
	nop
	lh      $t2, 0x0006($sp)
	sh      $t2, 0x002C($a0)
37$:
	b       55$
	nop
39$:
	lh      $t3, 0x002C($a0)
	lh      $t4, 0x0006($sp)
	slt     $at, $t4, $t3
	beqz    $at, 55$
	nop
	lh      $t5, 0x002C($a0)
	lh      $t6, 0x0004($sp)
	subu    $t7, $t5, $t6
	sh      $t7, 0x002C($a0)
	lh      $t9, 0x0006($sp)
	lh      $t8, 0x002C($a0)
	slt     $at, $t8, $t9
	beqz    $at, 55$
	nop
	lh      $t0, 0x0006($sp)
	sh      $t0, 0x002C($a0)
55$:
	b       57$
	nop
57$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

pl_swim_802710C4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0098($t6)
	addiu   $t8, $t7, 0x0012
	sw      $t8, 0x001C($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x002C($t9)
	blez    $t0, 39$
	nop
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	li      $a2, 0x0080
	lh      $a1, 0x002C($t2)
	li      $a3, 0x0200
	lh      $a0, 0x0000($t1)
	bgez    $a1, 34$
	sra     $t3, $a1, 1
	addiu   $at, $a1, 0x0001
	sra     $t3, $at, 1
34$:
	jal     convergei
	move    $a1, $t3
	lw      $t4, 0x001C($sp)
	b       47$
	sh      $v0, 0x0000($t4)
39$:
	lw      $t5, 0x001C($sp)
	move    $a1, $0
	li      $a2, 0x0200
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0000($t5)
	lw      $t6, 0x001C($sp)
	sh      $v0, 0x0000($t6)
47$:
	lw      $t7, 0x0028($sp)
	bnez    $t7, 55$
	nop
	lw      $a0, 0x0020($sp)
	jal     pl_set_anime
	lw      $a1, 0x0024($sp)
	b       59$
	nop
55$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     player_80250B04
	lw      $a2, 0x0028($sp)
59$:
	lw      $a0, 0x0020($sp)
	jal     pl_swim_80270110
	li      $a1, 0x0080
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802711D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $t6, 0x00010000
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 16$
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       55$
	nop
16$:
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       55$
	nop
28$:
	lw      $t3, 0x0020($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 40$
	nop
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       55$
	nop
40$:
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x002C($t6)
	slti    $at, $t7, -0x1000
	beqz    $at, 47$
	nop
	li      $t8, 0x00030000
	sw      $t8, 0x001C($sp)
47$:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x00B2
	jal     pl_swim_802710C4
	lw      $a2, 0x001C($sp)
	b       55$
	move    $v0, $0
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802712C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 27$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
27$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, 39$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
39$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 51$
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
51$:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00A4
	jal     pl_swim_802710C4
	move    $a2, $0
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802713BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       55$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 26$
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       55$
	nop
26$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 38$
	nop
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       55$
	nop
38$:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x00AD
	jal     pl_swim_802710C4
	move    $a2, $0
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 51$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
51$:
	b       55$
	move    $v0, $0
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802714A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 15$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       76$
	nop
15$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 28$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       76$
	nop
28$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, 40$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       76$
	nop
40$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 52$
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       76$
	nop
52$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($t9)
	bnez    $t0, 58$
	nop
	b       59$
	li      $s0, 0x00A2
58$:
	li      $s0, 0x00A3
59$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_swim_802710C4
	move    $a2, $0
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 72$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
72$:
	b       76$
	move    $v0, $0
	b       76$
	nop
76$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_802715EC:
	lui     $at, %hi(pl_swim_8033B340)
	sh      $0, %lo(pl_swim_8033B340)($at)
	li      $t6, 0x0800
	lui     $at, %hi(pl_swim_8033B342)
	sh      $t6, %lo(pl_swim_8033B342)($at)
	lh      $t7, 0x002C($a0)
	li      $at, 0x43800000
	mtc1    $at, $f8
	mtc1    $t7, $f4
	li      $at, 0x41A00000
	mtc1    $at, $f16
	cvt.s.w $f6, $f4
	lui     $at, %hi(pl_swim_8033B344)
	div.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, %lo(pl_swim_8033B344)($at)
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_8027163C:
	lui     $t6, %hi(pl_swim_8033B342)
	lh      $t6, %lo(pl_swim_8033B342)($t6)
	beqz    $t6, 44$
	nop
	lh      $t7, 0x0076($a0)
	lwc1    $f4, 0x0040($a0)
	addiu   $t8, $t7, -0x0055
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f8, $f4
	nop
	bc1f    44$
	nop
	lh      $t9, 0x002C($a0)
	bltz    $t9, 44$
	nop
	lui     $t0, %hi(pl_swim_8033B340)
	lui     $t1, %hi(pl_swim_8033B342)
	lh      $t1, %lo(pl_swim_8033B342)($t1)
	lh      $t0, %lo(pl_swim_8033B340)($t0)
	lui     $at, %hi(pl_swim_8033B340)
	addu    $t2, $t0, $t1
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	bltz    $t4, 44$
	sh      $t2, %lo(pl_swim_8033B340)($at)
	lui     $t5, %hi(pl_swim_8033B340)
	lhu     $t5, %lo(pl_swim_8033B340)($t5)
	lui     $at, %hi(pl_swim_8033B344)
	lwc1    $f10, %lo(pl_swim_8033B344)($at)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	lw      $t8, 0x0088($a0)
	lw      $t9, 0x0088($a0)
	mul.s   $f18, $f10, $f16
	lwc1    $f6, 0x0024($t8)
	add.s   $f4, $f6, $f18
	swc1    $f4, 0x0024($t9)
	jr      $ra
	nop
44$:
	lui     $at, %hi(pl_swim_8033B342)
	sh      $0, %lo(pl_swim_8033B342)($at)
	jr      $ra
	nop
	jr      $ra
	nop

pl_swim_80271704:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0028($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0030($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0030($sp)
	lh      $t8, 0x0036($sp)
	li      $at, 0x41200000
	mtc1    $at, $f8
	mtc1    $t8, $f4
	lw      $a0, 0x0030($sp)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	mfc1    $a1, $f10
	jal     pl_swim_80270C94
	nop
	jal     pl_swim_80270918
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 63$
	nop
	b       109$
	nop
36$:
	lw      $a0, 0x0030($sp)
	jal     player_80252000
	li      $a1, -0x8000
	subu    $t9, $0, $v0
	sh      $t9, 0x002E($sp)
	lw      $t0, 0x0030($sp)
	lh      $t2, 0x002E($sp)
	lh      $t1, 0x002C($t0)
	slt     $at, $t1, $t2
	beqz    $at, 50$
	nop
	lh      $t3, 0x002E($sp)
	lw      $t4, 0x0030($sp)
	sh      $t3, 0x002C($t4)
50$:
	b       109$
	nop
52$:
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x002C($t5)
	slti    $at, $t6, -0x2FFF
	bnez    $at, 61$
	nop
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x002C($t7)
	addiu   $t9, $t8, -0x0100
	sh      $t9, 0x002C($t7)
61$:
	b       109$
	nop
63$:
	lw      $t0, 0x0030($sp)
	mtc1    $0, $f18
	lw      $t1, 0x009C($t0)
	lwc1    $f16, 0x0008($t1)
	c.eq.s  $f16, $f18
	nop
	bc1f    107$
	nop
	lw      $t2, 0x0030($sp)
	mtc1    $0, $f8
	lh      $t3, 0x002C($t2)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    95$
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x002C($t4)
	addiu   $t6, $t5, 0x0200
	sh      $t6, 0x002C($t4)
	lw      $t8, 0x0030($sp)
	lh      $t9, 0x002C($t8)
	slti    $at, $t9, 0x3F01
	bnez    $at, 93$
	nop
	lw      $t0, 0x0030($sp)
	li      $t7, 0x3F00
	sh      $t7, 0x002C($t0)
93$:
	b       107$
	nop
95$:
	lw      $t1, 0x0030($sp)
	lh      $t2, 0x002C($t1)
	addiu   $t3, $t2, -0x0200
	sh      $t3, 0x002C($t1)
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x002C($t5)
	slti    $at, $t6, -0x3F00
	beqz    $at, 107$
	nop
	lw      $t8, 0x0030($sp)
	li      $t4, -0x3F00
	sh      $t4, 0x002C($t8)
107$:
	b       109$
	nop
109$:
	jal     pl_swim_80270A74
	lw      $a0, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t7, 0x0098($t9)
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0012($t7)
	lw      $t0, 0x0030($sp)
	lw      $t2, 0x0098($t0)
	sh      $v0, 0x0012($t2)
	jal     pl_swim_8027163C
	lw      $a0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     pl_swim_80270110
	li      $a1, 0x0400
	b       128$
	nop
128$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80271918:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	lh      $t8, 0x0040($t7)
	sh      $t8, 0x001E($sp)
	lh      $t9, 0x001E($sp)
	beqz    $t9, 13$
	nop
	li      $at, 0x000C
	bne     $t9, $at, 19$
	nop
13$:
	lw      $t0, 0x0020($sp)
	li.u    $a0, 0x04348081
	li.l    $a0, 0x04348081
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_8027197C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($t6)
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 65$
	nop
	lw      $t3, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	lh      $t4, 0x0076($t3)
	addiu   $t5, $t4, -0x0050
	slt     $at, $t2, $t5
	bnez    $at, 65$
	nop
	lh      $t6, 0x002C($t3)
	bltz    $t6, 65$
	nop
	lw      $t7, 0x009C($t3)
	li      $at, 0xC2700000
	mtc1    $at, $f18
	lwc1    $f16, 0x0008($t7)
	c.lt.s  $f16, $f18
	nop
	bc1f    65$
	nop
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	li      $at, 0x42780000
	mtc1    $at, $f4
	lw      $t8, 0x0020($sp)
	swc1    $f4, 0x004C($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, 58$
	nop
	li.u    $a1, 0x01000889
	li.l    $a1, 0x01000889
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       69$
	nop
	b       65$
	nop
58$:
	li.u    $a1, 0x010008A3
	li.l    $a1, 0x010008A3
	lw      $a0, 0x0020($sp)
	jal     pl_set_state
	move    $a2, $0
	b       69$
	nop
65$:
	b       69$
	move    $v0, $0
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_80271AA0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($t6)
	bnez    $t7, 11$
	nop
	li      $t8, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t8, %lo(pl_swim_8032DD34)($at)
11$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 22$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       148$
	nop
22$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, 34$
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       148$
	nop
34$:
	lw      $t5, 0x0028($sp)
	li      $at, 0x000E
	lhu     $t6, 0x001A($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x001A($t5)
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, 50$
	nop
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       148$
	nop
50$:
	jal     pl_swim_8027197C
	lw      $a0, 0x0028($sp)
	beqz    $v0, 56$
	nop
	b       148$
	li      $v0, 0x0001
56$:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x001A($t0)
	slti    $at, $t1, 0x0006
	beqz    $at, 67$
	nop
	lw      $t2, 0x0028($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t2)
67$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0009
	bnez    $at, 78$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
78$:
	lw      $t7, 0x0028($sp)
	lhu     $t5, 0x001A($t7)
	slti    $at, $t5, 0x0002
	bnez    $at, 115$
	nop
	lw      $t8, 0x0028($sp)
	lhu     $t9, 0x001A($t8)
	slti    $at, $t9, 0x0006
	beqz    $at, 95$
	nop
	lhu     $t0, 0x0002($t8)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 95$
	nop
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0001
	sh      $t2, 0x0018($t3)
95$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x0009
	lhu     $t6, 0x001A($t4)
	bne     $t6, $at, 115$
	nop
	lhu     $t7, 0x0018($t4)
	li      $at, 0x0001
	bne     $t7, $at, 115$
	nop
	lw      $a0, 0x0028($sp)
	jal     player_80250C7C
	move    $a1, $0
	lw      $t5, 0x0028($sp)
	sh      $0, 0x0018($t5)
	lw      $t8, 0x0028($sp)
	li      $t9, 0x0001
	sh      $t9, 0x001A($t8)
	li      $t0, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t0, %lo(pl_swim_8032DD34)($at)
115$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x0001
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, 137$
	nop
	lui     $t3, %hi(pl_swim_8032DD34)
	lh      $t3, %lo(pl_swim_8032DD34)($t3)
	li      $at, 0x00A0
	bne     $t3, $at, 128$
	nop
	li.u    $s0, 0x04338081
	b       130$
	li.l    $s0, 0x04338081
128$:
	li.u    $s0, 0x0447A081
	li.l    $s0, 0x0447A081
130$:
	lw      $t6, 0x0028($sp)
	move    $a0, $s0
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     pl_swim_802715EC
	lw      $a0, 0x0028($sp)
137$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00AA
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0028($sp)
	b       148$
	move    $v0, $0
	b       148$
	nop
148$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80271D04:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       104$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 26$
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       104$
	nop
26$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x001A($t2)
	slti    $at, $t3, 0x000F
	bnez    $at, 38$
	nop
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       104$
	nop
38$:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 44$
	nop
	b       104$
	li      $v0, 0x0001
44$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0080
	beqz    $t6, 75$
	nop
	lhu     $t7, 0x001A($t4)
	slti    $at, $t7, 0x0007
	bnez    $at, 75$
	nop
	lw      $t8, 0x0018($sp)
	li      $at, 0x0007
	lhu     $t9, 0x001A($t8)
	bne     $t9, $at, 68$
	nop
	lui     $t0, %hi(pl_swim_8032DD34)
	lh      $t0, %lo(pl_swim_8032DD34)($t0)
	slti    $at, $t0, 0x0118
	beqz    $at, 68$
	nop
	lui     $t1, %hi(pl_swim_8032DD34)
	lh      $t1, %lo(pl_swim_8032DD34)($t1)
	lui     $at, %hi(pl_swim_8032DD34)
	addiu   $t2, $t1, 0x000A
	sh      $t2, %lo(pl_swim_8032DD34)($at)
68$:
	li.u    $a1, 0x300024D0
	li.l    $a1, 0x300024D0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       104$
	nop
75$:
	lw      $t3, 0x0018($sp)
	lhu     $t5, 0x001A($t3)
	slti    $at, $t5, 0x0007
	bnez    $at, 83$
	nop
	li      $t6, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t6, %lo(pl_swim_8032DD34)($at)
83$:
	lw      $t4, 0x0018($sp)
	lhu     $t7, 0x001A($t4)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x001A($t4)
	lw      $t9, 0x0018($sp)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t9)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00AB
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0018($sp)
	b       104$
	move    $v0, $0
	b       104$
	nop
104$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80271EB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       90$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 26$
	nop
	li.u    $a1, 0x300024E1
	li.l    $a1, 0x300024E1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       90$
	nop
26$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0080
	bnez    $t4, 52$
	nop
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x001A($t5)
	bnez    $t6, 45$
	nop
	lui     $t7, %hi(pl_swim_8032DD34)
	lh      $t7, %lo(pl_swim_8032DD34)($t7)
	slti    $at, $t7, 0x0118
	beqz    $at, 45$
	nop
	lui     $t8, %hi(pl_swim_8032DD34)
	lh      $t8, %lo(pl_swim_8032DD34)($t8)
	lui     $at, %hi(pl_swim_8032DD34)
	addiu   $t9, $t8, 0x000A
	sh      $t9, %lo(pl_swim_8032DD34)($at)
45$:
	li.u    $a1, 0x300024D1
	li.l    $a1, 0x300024D1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       90$
	nop
52$:
	lw      $t0, 0x0018($sp)
	li      $at, 0x41400000
	mtc1    $at, $f14
	li.u    $a2, 0x3DCCCCCD
	li.u    $a3, 0x3E19999A
	li.l    $a3, 0x3E19999A
	li.l    $a2, 0x3DCCCCCD
	jal     convergef
	lwc1    $f12, 0x0054($t0)
	lw      $t1, 0x0018($sp)
	swc1    $f0, 0x0054($t1)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0001
	sh      $t2, 0x001A($t3)
	li      $t4, 0x00A0
	lui     $at, %hi(pl_swim_8032DD34)
	sh      $t4, %lo(pl_swim_8032DD34)($at)
	lw      $t5, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    82$
	nop
	jal     pl_swim_80271918
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00AC
82$:
	lui     $a1, %hi(pl_swim_8032DD34)
	lh      $a1, %lo(pl_swim_8032DD34)($a1)
	jal     pl_swim_80271704
	lw      $a0, 0x0018($sp)
	b       90$
	move    $v0, $0
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_8027202C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       140$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 27$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       140$
	nop
27$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0011
	lhu     $t4, 0x001A($t3)
	addiu   $t5, $t4, 0x0001
	sh      $t5, 0x001A($t3)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x001A($t6)
	bne     $t7, $at, 43$
	nop
	li.u    $a1, 0x300024D5
	li.l    $a1, 0x300024D5
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       140$
	nop
43$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x2000
	beqz    $t0, 55$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       140$
	nop
55$:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 61$
	nop
	b       140$
	li      $v0, 0x0001
61$:
	lw      $t1, 0x0018($sp)
	lhu     $t2, 0x001A($t1)
	slti    $at, $t2, 0x0006
	beqz    $at, 72$
	nop
	lw      $t4, 0x0018($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t4)
72$:
	lw      $t5, 0x0018($sp)
	lhu     $t3, 0x001A($t5)
	slti    $at, $t3, 0x0009
	bnez    $at, 83$
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
83$:
	lw      $t7, 0x0018($sp)
	lhu     $t8, 0x001A($t7)
	slti    $at, $t8, 0x0002
	bnez    $at, 117$
	nop
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x001A($t9)
	slti    $at, $t0, 0x0006
	beqz    $at, 100$
	nop
	lhu     $t1, 0x0002($t9)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 100$
	nop
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sh      $t4, 0x0018($t5)
100$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0009
	lhu     $t6, 0x001A($t3)
	bne     $t6, $at, 117$
	nop
	lhu     $t7, 0x0018($t3)
	li      $at, 0x0001
	bne     $t7, $at, 117$
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250C7C
	move    $a1, $0
	lw      $t8, 0x0018($sp)
	sh      $0, 0x0018($t8)
	lw      $t9, 0x0018($sp)
	li      $t0, 0x0001
	sh      $t0, 0x001A($t9)
117$:
	lw      $t1, 0x0018($sp)
	li      $at, 0x0001
	lhu     $t2, 0x001A($t1)
	bne     $t2, $at, 130$
	nop
	lw      $t4, 0x0018($sp)
	li.u    $a0, 0x04338081
	li.l    $a0, 0x04338081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     pl_swim_802715EC
	lw      $a0, 0x0018($sp)
130$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x009F
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       140$
	move    $v0, $0
	b       140$
	nop
140$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_8027226C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       93$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 27$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       93$
	nop
27$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x000F
	bnez    $at, 39$
	nop
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       93$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x2000
	beqz    $t7, 51$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       93$
	nop
51$:
	jal     pl_swim_8027197C
	lw      $a0, 0x0018($sp)
	beqz    $v0, 57$
	nop
	b       93$
	li      $v0, 0x0001
57$:
	lw      $t8, 0x0018($sp)
	lhu     $t9, 0x0002($t8)
	andi    $t0, $t9, 0x0080
	beqz    $t0, 73$
	nop
	lhu     $t1, 0x001A($t8)
	slti    $at, $t1, 0x0007
	bnez    $at, 73$
	nop
	li.u    $a1, 0x300024D3
	li.l    $a1, 0x300024D3
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       93$
	nop
73$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x001A($t2)
	addiu   $t4, $t3, 0x0001
	sh      $t4, 0x001A($t2)
	lw      $t5, 0x0018($sp)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t5)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t5)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00A0
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       93$
	move    $v0, $0
	b       93$
	nop
93$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802723F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
14$:
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0088($t9)
	lw      $t1, 0x0134($t0)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 27$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       82$
	nop
27$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x2000
	beqz    $t5, 39$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
39$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0080
	bnez    $t8, 51$
	nop
	li.u    $a1, 0x300024D4
	li.l    $a1, 0x300024D4
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       82$
	nop
51$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x41400000
	mtc1    $at, $f14
	li.u    $a2, 0x3DCCCCCD
	li.u    $a3, 0x3E19999A
	li.l    $a3, 0x3E19999A
	li.l    $a2, 0x3DCCCCCD
	jal     convergef
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0018($sp)
	swc1    $f0, 0x0054($t0)
	lw      $t1, 0x0018($sp)
	li      $at, 0x41600000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    75$
	nop
	jal     pl_swim_80271918
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00A1
75$:
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80271704
	li      $a1, 0x00A0
	b       82$
	move    $v0, $0
	b       82$
	nop
82$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272548:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 17$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       72$
	nop
17$:
	lw      $t0, 0x0028($sp)
	lhu     $t1, 0x0002($t0)
	andi    $t2, $t1, 0x2000
	beqz    $t2, 29$
	nop
	li.u    $a1, 0x300024E0
	li.l    $a1, 0x300024E0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       72$
	nop
29$:
	lw      $t3, 0x0028($sp)
	lhu     $s0, 0x001A($t3)
	lhu     $t5, 0x001A($t3)
	xori    $t4, $s0, 0x00F0
	sltiu   $t4, $t4, 0x0001
	move    $s0, $t4
	addiu   $t6, $t5, 0x0001
	beqz    $s0, 51$
	sh      $t6, 0x001A($t3)
	lw      $t8, 0x0028($sp)
	li      $t7, 0x00400000
	lw      $t9, 0x007C($t8)
	sw      $t7, 0x0134($t9)
	lw      $t0, 0x0028($sp)
	sw      $0, 0x007C($t0)
	jal     bgm_shell_stop
	nop
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
51$:
	lw      $t1, 0x0028($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f14
	li      $a2, 0x40000000
	li      $a3, 0x3F800000
	jal     convergef
	lwc1    $f12, 0x0054($t1)
	lw      $t2, 0x0028($sp)
	swc1    $f0, 0x0054($t2)
	jal     pl_swim_80271918
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00A1
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80271704
	li      $a1, 0x012C
	b       72$
	move    $v0, $0
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_8027267C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0070($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 54$
	nop
	lw      $a0, 0x0030($sp)
	jal     collision_8024CBFC
	li      $a1, 0x0002
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x00A0($t0)
	lwc1    $f6, 0x003C($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x00A8($t2)
	lwc1    $f16, 0x0044($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	lw      $t5, 0x0030($sp)
	sll     $s0, $v0, 16
	sra     $t4, $s0, 16
	lh      $t6, 0x002E($t5)
	move    $s0, $t4
	subu    $t7, $s0, $t6
	sh      $t7, 0x0022($sp)
	lh      $t8, 0x0022($sp)
	slti    $at, $t8, -0x2AAA
	bnez    $at, 54$
	nop
	slti    $at, $t8, 0x2AAB
	beqz    $at, 54$
	nop
	lw      $t9, 0x002C($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0080($t0)
	jal     collision_8024C66C
	lw      $a0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	li      $t1, 0x0001
	lw      $t3, 0x0098($t2)
	sb      $t1, 0x000A($t3)
	b       58$
	li      $v0, 0x0001
54$:
	b       58$
	move    $v0, $0
	b       58$
	nop
58$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80272778:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80270E40
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00B1
	li.u    $a1, 0x04338081
	li.l    $a1, 0x04338081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t7, 0x0098($t6)
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0012($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0098($t8)
	sh      $v0, 0x0012($t9)
	lw      $t0, 0x0028($sp)
	lhu     $s0, 0x001A($t0)
	lhu     $t2, 0x001A($t0)
	xori    $t1, $s0, 0x0005
	sltiu   $t1, $t1, 0x0001
	move    $s0, $t1
	addiu   $t3, $t2, 0x0001
	beqz    $s0, 44$
	sh      $t3, 0x001A($t0)
	jal     collision_8024C780
	lw      $a0, 0x0028($sp)
44$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 53$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
53$:
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272870:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x40E00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    18$
	nop
	lw      $t7, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t7)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t7)
18$:
	jal     pl_swim_80270E40
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270FD8
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270C94
	li      $a1, 0x41800000
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270A74
	lw      $a0, 0x0028($sp)
	lw      $t8, 0x0028($sp)
	move    $a1, $0
	li      $a2, 0x0200
	lw      $t9, 0x0098($t8)
	li      $a3, 0x0200
	jal     convergei
	lh      $a0, 0x0012($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0098($t0)
	sh      $v0, 0x0012($t1)
	li.u    $a1, 0x04338081
	li.l    $a1, 0x04338081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t2, 0x0028($sp)
	lhu     $s0, 0x0018($t2)
	beqz    $s0, 56$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 70$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 84$
	nop
	b       115$
	nop
56$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00B0
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 68$
	nop
	jal     pl_swim_8027267C
	lw      $a0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	addiu   $t3, $v0, 0x0001
	sh      $t3, 0x0018($t4)
68$:
	b       115$
	nop
70$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00AF
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 82$
	nop
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
82$:
	b       115$
	nop
84$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00AE
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 113$
	nop
	la.u    $a0, o_13000708
	jal     segment_to_virtual
	la.l    $a0, o_13000708
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x007C($t5)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, 108$
	nop
	jal     bgm_shell_play
	nop
	li.u    $a1, 0x300024D6
	li.l    $a1, 0x300024D6
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       113$
	nop
108$:
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
113$:
	b       115$
	nop
115$:
	b       119$
	move    $v0, $0
	b       119$
	nop
119$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272A60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	lw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0098($t6)
	sh      $0, 0x0012($t7)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 40$
	nop
	lw      $t8, 0x0034($sp)
	blez    $t8, 27$
	nop
	lw      $t0, 0x0028($sp)
	li      $t9, 0x001E
	sh      $t9, 0x0026($t0)
27$:
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x00AE($t1)
	slti    $at, $t2, 0x0100
	bnez    $at, 34$
	nop
	b       36$
	lw      $s0, 0x0030($sp)
34$:
	li.u    $s0, 0x300032C7
	li.l    $s0, 0x300032C7
36$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272B1C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $a2, 0x380022C0
	li.l    $a2, 0x380022C0
	li      $a1, 0x009E
	move    $a0, $t6
	jal     pl_swim_80272A60
	lw      $a3, 0x001C($t6)
	b       14$
	move    $v0, $0
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272B64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li.u    $a2, 0x380022C0
	li.l    $a2, 0x380022C0
	li      $a1, 0x00A8
	move    $a0, $t6
	jal     pl_swim_80272A60
	lw      $a3, 0x001C($t6)
	b       14$
	move    $v0, $0
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80272BAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li.u    $a1, 0x2410C081
	li.l    $a1, 0x2410C081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	lw      $t6, 0x0028($sp)
	li.u    $a0, 0x14160001
	li.l    $a0, 0x14160001
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	jal     camera_8027F590
	li      $a0, 0x000A
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x007A
	bnez    $v0, 30$
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t8, 0x001A($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x001A($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	ori     $t2, $t1, 0x0040
	sw      $t2, 0x0004($t0)
30$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x001A($t3)
	slti    $at, $t4, 0x0006
	bnez    $at, 52$
	nop
	lw      $t6, 0x0028($sp)
	li      $t5, 0x001E
	sh      $t5, 0x0026($t6)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x00AE($t8)
	slti    $at, $t9, 0x0100
	beqz    $at, 46$
	nop
	li.u    $s0, 0x300032C7
	b       48$
	li.l    $s0, 0x300032C7
46$:
	li.u    $s0, 0x380022C0
	li.l    $s0, 0x380022C0
48$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     pl_set_state
	move    $a2, $0
52$:
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	lw      $t1, 0x0098($t7)
	sh      $0, 0x0012($t1)
	b       63$
	move    $v0, $0
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272CBC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lhu     $s0, 0x0018($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	b       47$
	nop
13$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00A5
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0002
	lw      $t9, 0x0098($t8)
	sb      $t7, 0x0005($t9)
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 27$
	nop
	lw      $t1, 0x0028($sp)
	li      $t0, 0x0001
	sh      $t0, 0x0018($t1)
27$:
	b       47$
	nop
29$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00A6
	lw      $t3, 0x0028($sp)
	li      $t2, 0x0008
	lw      $t4, 0x0098($t3)
	sb      $t2, 0x0005($t4)
	lw      $t5, 0x0028($sp)
	li      $at, 0x001E
	lw      $t6, 0x0088($t5)
	lh      $t8, 0x0040($t6)
	bne     $t8, $at, 45$
	nop
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0012
45$:
	b       47$
	nop
47$:
	li.u    $a1, 0x2423F081
	li.l    $a1, 0x2423F081
	lw      $a0, 0x0028($sp)
	jal     player_80251120
	li      $a2, 0x00010000
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	b       60$
	move    $v0, $0
	b       60$
	nop
60$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80272DC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0x0008
	lw      $t8, 0x0098($t7)
	sb      $t6, 0x0005($t8)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00A7
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x00A7
	li      $at, 0x0023
	bne     $v0, $at, 23$
	nop
	lw      $a0, 0x0018($sp)
	jal     pl_fade
	li      $a1, 0x0012
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

pl_swim_80272E3C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x007C($t6)
	sltu    $t8, $0, $t7
	sw      $t8, 0x0020($sp)
	jal     pl_swim_802701CC
	lw      $a0, 0x0028($sp)
	beqz    $v0, 14$
	nop
	mtc1    $0, $f4
	b       18$
	swc1    $f4, 0x001C($sp)
14$:
	li      $at, 0xC0A00000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x001C($sp)
18$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0004($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	lw      $t2, 0x0020($sp)
	ori     $t3, $t2, 0x0004
	b       40$
	sw      $t3, 0x0020($sp)
27$:
	lw      $t4, 0x0028($sp)
	li      $at, 0x00080000
	lw      $t5, 0x0010($t4)
	and     $t6, $t5, $at
	bnez    $t6, 37$
	nop
	lhu     $t7, 0x0002($t4)
	andi    $t8, $t7, 0x0080
	beqz    $t8, 40$
	nop
37$:
	lw      $t9, 0x0020($sp)
	ori     $t0, $t9, 0x0002
	sw      $t0, 0x0020($sp)
40$:
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x001A($t1)
	addiu   $t3, $t2, 0x0001
	sh      $t3, 0x001A($t1)
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0018($t5)
	bnez    $t6, 82$
	nop
	lw      $t4, 0x0028($sp)
	li.u    $a0, 0x0430C081
	li.l    $a0, 0x0430C081
	lw      $a1, 0x0088($t4)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(pl_swim_80336E10)
	lwc1    $f18, %lo(pl_swim_80336E10)($at)
	lwc1    $f8, 0x00BC($t7)
	lwc1    $f10, 0x0040($t7)
	sub.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    75$
	nop
	lw      $t8, 0x0028($sp)
	li.u    $a0, 0x2411F081
	li.l    $a0, 0x2411F081
	lw      $a1, 0x0088($t8)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
75$:
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0008($t9)
	ori     $t2, $t0, 0x0040
	sw      $t2, 0x0008($t9)
	lw      $t1, 0x0028($sp)
	li      $t3, 0x0001
	sh      $t3, 0x0018($t1)
82$:
	lw      $t5, 0x0024($sp)
	li      $at, 0x0001
	beq     $t5, $at, 97$
	nop
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x004C($t6)
	c.le.s  $f6, $f4
	nop
	bc1t    97$
	nop
	lhu     $t4, 0x001A($t6)
	slti    $at, $t4, 0x0015
	bnez    $at, 149$
	nop
97$:
	lw      $t7, 0x0020($sp)
	sltiu   $at, $t7, 0x0006
	beqz    $at, 147$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(pl_swim_80336E14)
	addu    $at, $at, $t7
	lw      $t7, %lo(pl_swim_80336E14)($at)
	jr      $t7
	nop
.globl L80272FE8
L80272FE8:
	li.u    $a1, 0x300022C2
	li.l    $a1, 0x300022C2
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
.globl L80273004
L80273004:
	li.u    $a1, 0x300022C3
	li.l    $a1, 0x300022C3
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
.globl L80273020
L80273020:
	li.u    $a1, 0x300024D2
	li.l    $a1, 0x300024D2
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
.globl L8027303C
L8027303C:
	li.u    $a1, 0x300024D5
	li.l    $a1, 0x300024D5
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
.globl L80273058
L80273058:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
.globl L80273070
L80273070:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	move    $a2, $0
	b       147$
	nop
147$:
	lui     $at, %hi(pl_swim_8033B342)
	sh      $0, %lo(pl_swim_8033B342)($at)
149$:
	lw      $t8, 0x0020($sp)
	sltiu   $at, $t8, 0x0006
	beqz    $at, 189$
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(pl_swim_80336E2C)
	addu    $at, $at, $t8
	lw      $t8, %lo(pl_swim_80336E2C)($at)
	jr      $t8
	nop
.globl L802730B8
L802730B8:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00AD
	b       189$
	nop
.globl L802730CC
L802730CC:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00A2
	b       189$
	nop
.globl L802730E0
L802730E0:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00AC
	b       189$
	nop
.globl L802730F4
L802730F4:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00A1
	b       189$
	nop
.globl L80273108
L80273108:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	b       189$
	nop
.globl L8027311C
L8027311C:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0043
	b       189$
	nop
189$:
	lw      $t0, 0x0028($sp)
	lw      $t2, 0x0008($t0)
	ori     $t9, $t2, 0x0200
	sw      $t9, 0x0008($t0)
	b       197$
	move    $v0, $0
	b       197$
	nop
197$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273160:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0048($sp)
	lw      $t9, 0x0080($t8)
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0048($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t2, 0x0048($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x0044($t2)
	lwc1    $f16, 0x00A8($t3)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	lw      $t4, 0x0034($sp)
	lw      $t5, 0x0048($sp)
	mtc1    $0, $f6
	lwc1    $f16, 0x0110($t4)
	lwc1    $f18, 0x004C($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0110($t4)
	lw      $t6, 0x0034($sp)
	lwc1    $f8, 0x0110($t6)
	c.lt.s  $f8, $f6
	nop
	bc1f    65$
	nop
	mtc1    $0, $f10
	lw      $t7, 0x0034($sp)
	swc1    $f10, 0x0110($t7)
	lui     $at, %hi(pl_swim_80336E44)
	lwc1    $f18, %lo(pl_swim_80336E44)($at)
	lwc1    $f16, 0x0024($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    65$
	nop
	lw      $t8, 0x0048($sp)
	lhu     $s0, 0x001A($t8)
	lhu     $t0, 0x001A($t8)
	xori    $t9, $s0, 0x0010
	sltiu   $t9, $t9, 0x0001
	move    $s0, $t9
	addiu   $t1, $t0, 0x0001
	beqz    $s0, 65$
	sh      $t1, 0x001A($t8)
	lw      $a0, 0x0048($sp)
	jal     pl_fade
	li      $a1, 0x0012
65$:
	li      $at, 0x41E00000
	mtc1    $at, $f8
	lwc1    $f4, 0x0024($sp)
	c.le.s  $f4, $f8
	nop
	bc1f    79$
	nop
	li      $at, 0x41800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x003C($sp)
	li      $t2, 0x1800
	b       113$
	sh      $t2, 0x003A($sp)
79$:
	li      $at, 0x43800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    106$
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	li      $at, 0x41400000
	mtc1    $at, $f6
	div.s   $f8, $f18, $f4
	sub.s   $f10, $f6, $f8
	sub.s   $f16, $f18, $f10
	swc1    $f16, 0x003C($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	li      $at, 0x45E00000
	mtc1    $at, $f18
	mul.s   $f8, $f4, $f6
	sub.s   $f10, $f18, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	b       113$
	sh      $t5, 0x003A($sp)
106$:
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	sub.s   $f18, $f4, $f6
	swc1    $f18, 0x003C($sp)
	li      $t4, 0x0800
	sh      $t4, 0x003A($sp)
113$:
	li      $at, 0x41800000
	mtc1    $at, $f10
	lwc1    $f8, 0x003C($sp)
	li      $at, 0xC4200000
	mtc1    $at, $f4
	add.s   $f16, $f8, $f10
	lw      $t6, 0x0048($sp)
	div.s   $f6, $f4, $f16
	swc1    $f6, 0x004C($t6)
	lhu     $t7, 0x003A($sp)
	lui     $at, %hi(math_sin)
	sra     $t9, $t7, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_sin)($at)
	swc1    $f18, 0x0044($sp)
	lhu     $t1, 0x003A($sp)
	lui     $at, %hi(math_cos)
	sra     $t8, $t1, 4
	sll     $t2, $t8, 2
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x0040($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f4
	nop
	bc1f    164$
	nop
	lw      $t3, 0x0048($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x003C($sp)
	lhu     $t5, 0x002E($t3)
	sra     $t4, $t5, 4
	sll     $t6, $t4, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f18, $f16, $f6
	swc1    $f18, 0x002C($sp)
	lw      $t7, 0x0048($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x003C($sp)
	lhu     $t9, 0x002E($t7)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f4, $f8, $f10
	b       176$
	swc1    $f4, 0x0028($sp)
164$:
	lwc1    $f16, 0x003C($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x002C($sp)
	div.s   $f18, $f16, $f6
	mul.s   $f10, $f8, $f18
	swc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	div.s   $f6, $f4, $f16
	mul.s   $f18, $f8, $f6
	swc1    $f18, 0x0028($sp)
176$:
	lwc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x0040($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f18, 0x0028($sp)
	mul.s   $f16, $f10, $f4
	lwc1    $f10, 0x0044($sp)
	lwc1    $f8, 0x00A0($t8)
	lw      $t2, 0x0048($sp)
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f8, $f16
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x003C($t2)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0044($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f10, $f16, $f18
	lwc1    $f16, 0x0040($sp)
	lwc1    $f6, 0x00A8($t3)
	lw      $t5, 0x0048($sp)
	mul.s   $f18, $f8, $f16
	sub.s   $f4, $f6, $f10
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0044($t5)
	lw      $t4, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f10, 0x0110($t4)
	lwc1    $f8, 0x00A4($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0040($t7)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t0, 0x0048($sp)
	li      $at, 0x8000
	addu    $t9, $v0, $at
	sh      $t9, 0x002E($t0)
	lw      $a0, 0x0048($sp)
	jal     pl_set_anime
	li      $a1, 0x0056
	lw      $t1, 0x0048($sp)
	lw      $a0, 0x0088($t1)
	addiu   $a1, $t1, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lw      $t8, 0x0048($sp)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t8)
	lh      $a2, 0x002E($t8)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	b       233$
	move    $v0, $0
	b       233$
	nop
233$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

pl_swim_80273518:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, 16$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0008($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x0008($t9)
16$:
	lw      $t2, 0x002C($sp)
	beqz    $t2, 22$
	nop
	li.u    $s0, 0x04519081
	b       24$
	li.l    $s0, 0x04519081
22$:
	li.u    $s0, 0x04509081
	li.l    $s0, 0x04509081
24$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251120
	li      $a2, 0x00010000
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_802735A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	li      $a1, 0x000A
	bnez    $v0, 13$
	nop
	lw      $a0, 0x0018($sp)
	jal     player_80250D38
	li      $a1, 0x0031
	beqz    $v0, 23$
	nop
13$:
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x04529081
	li.l    $a0, 0x04529081
	lw      $a1, 0x0088($t6)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t9, $t8, 0x0001
	sw      $t9, 0x0008($t7)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80273618:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t6)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0054($t7)
	c.le.s  $f10, $f16
	nop
	bc1f    23$
	nop
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(pl_swim_80336E48)
	lwc1    $f4, %lo(pl_swim_80336E48)($at)
	lwc1    $f18, 0x0054($t8)
	add.s   $f6, $f18, $f4
	b       56$
	swc1    $f6, 0x0054($t8)
23$:
	lw      $t9, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0054($t9)
	c.le.s  $f8, $f10
	nop
	bc1f    41$
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x422C0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t0)
	lui     $at, %hi(pl_swim_80336E4C)
	lwc1    $f6, %lo(pl_swim_80336E4C)($at)
	div.s   $f4, $f16, $f18
	sub.s   $f8, $f6, $f4
	add.s   $f10, $f16, $f8
	b       56$
	swc1    $f10, 0x0054($t0)
41$:
	lw      $t1, 0x0020($sp)
	lui     $at, %hi(pl_swim_80336E50)
	lwc1    $f6, %lo(pl_swim_80336E50)($at)
	lw      $t2, 0x0068($t1)
	lwc1    $f18, 0x0020($t2)
	c.le.s  $f6, $f18
	nop
	bc1f    56$
	nop
	lw      $t3, 0x0020($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f4, 0x0054($t3)
	sub.s   $f8, $f4, $f16
	swc1    $f8, 0x0054($t3)
56$:
	lw      $t4, 0x0020($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f10, 0x0054($t4)
	c.lt.s  $f18, $f10
	nop
	bc1f    68$
	nop
	li      $at, 0x42000000
	mtc1    $at, $f6
	lw      $t5, 0x0020($sp)
	swc1    $f6, 0x0054($t5)
68$:
	lw      $t6, 0x0020($sp)
	move    $a1, $0
	li      $a2, 0x0800
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	li      $a3, 0x0800
	subu    $a0, $t7, $t8
	sll     $t9, $a0, 16
	move    $a0, $t9
	sra     $t0, $a0, 16
	jal     convergei
	move    $a0, $t0
	lw      $t1, 0x0020($sp)
	lh      $t2, 0x0024($t1)
	subu    $t3, $t2, $v0
	sh      $t3, 0x002E($t1)
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x002E($t4)
	lwc1    $f16, 0x0054($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f16
	swc1    $f8, 0x0058($t4)
	lw      $t8, 0x0020($sp)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x002E($t8)
	lwc1    $f18, 0x0054($t8)
	sra     $t0, $t9, 4
	sll     $t2, $t0, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x005C($t8)
	lw      $t3, 0x0020($sp)
	lwc1    $f4, 0x0058($t3)
	swc1    $f4, 0x0048($t3)
	mtc1    $0, $f16
	lw      $t1, 0x0020($sp)
	swc1    $f16, 0x004C($t1)
	lw      $t5, 0x0020($sp)
	lwc1    $f8, 0x005C($t5)
	swc1    $f8, 0x0050($t5)
	b       115$
	nop
115$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

pl_swim_802737F4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x004C($t6)
	lwc1    $f6, 0x0040($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0076($t7)
	addiu   $t9, $t8, -0x0064
	mtc1    $t9, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0028($sp)
	lw      $t0, 0x0030($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x004C($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    31$
	nop
	lwc1    $f6, 0x0040($t0)
	lwc1    $f8, 0x0028($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    31$
	nop
	b       137$
	li      $v0, 0x0001
31$:
	lw      $t1, 0x0030($sp)
	lhu     $t2, 0x0002($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 74$
	nop
	lw      $t4, 0x0030($sp)
	lh      $t5, 0x0024($t4)
	lh      $t6, 0x002E($t4)
	subu    $t7, $t5, $t6
	sh      $t7, 0x0026($sp)
	lhu     $t8, 0x0026($sp)
	lui     $at, %hi(pl_swim_80336E54)
	lwc1    $f10, %lo(pl_swim_80336E54)($at)
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t0
	lwc1    $f16, %lo(math_cos)($at)
	lw      $t1, 0x0030($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0054($t1)
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x0054($t1)
	lhu     $t2, 0x0026($sp)
	lw      $t5, 0x0030($sp)
	li      $at, 0x44000000
	mtc1    $at, $f8
	sra     $t3, $t2, 4
	lh      $t6, 0x002E($t5)
	sll     $t4, $t3, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	mtc1    $t6, $f4
	mul.s   $f16, $f8, $f10
	cvt.s.w $f18, $f4
	add.s   $f6, $f18, $f16
	trunc.w.s $f8, $f6
	mfc1    $t8, $f8
	nop
	sh      $t8, 0x002E($t5)
	b       82$
	nop
74$:
	lw      $t9, 0x0030($sp)
	mtc1    $0, $f14
	li      $a2, 0x3E800000
	li      $a3, 0x3E800000
	jal     convergef
	lwc1    $f12, 0x0054($t9)
	lw      $t0, 0x0030($sp)
	swc1    $f0, 0x0054($t0)
82$:
	lw      $t1, 0x0030($sp)
	li      $at, 0x41800000
	mtc1    $at, $f4
	lwc1    $f10, 0x0054($t1)
	c.lt.s  $f4, $f10
	nop
	bc1f    96$
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f18, 0x0054($t2)
	sub.s   $f6, $f18, $f16
	swc1    $f6, 0x0054($t2)
96$:
	lw      $t3, 0x0030($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0054($t3)
	c.lt.s  $f8, $f10
	nop
	bc1f    109$
	nop
	lw      $t4, 0x0030($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f4, 0x0054($t4)
	add.s   $f16, $f4, $f18
	swc1    $f16, 0x0054($t4)
109$:
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x002E($t6)
	lwc1    $f8, 0x0054($t6)
	sra     $t8, $t7, 4
	sll     $t5, $t8, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f20, $f6, $f8
	swc1    $f20, 0x0058($t6)
	lw      $t9, 0x0030($sp)
	swc1    $f20, 0x0048($t9)
	lw      $t0, 0x0030($sp)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x002E($t0)
	lwc1    $f4, 0x0054($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f20, $f10, $f4
	swc1    $f20, 0x005C($t0)
	lw      $t4, 0x0030($sp)
	swc1    $f20, 0x0050($t4)
	b       137$
	move    $v0, $0
	b       137$
	nop
137$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

pl_swim_80273A2C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 16$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
16$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 27$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F8
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
27$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 38$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F2
	jal     pl_set_state
	move    $a2, $0
	b       101$
	nop
38$:
	lw      $t5, 0x0028($sp)
	lhu     $s0, 0x0018($t5)
	beqz    $s0, 50$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 55$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 60$
	nop
	b       65$
	nop
50$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C3
	b       65$
	nop
55$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C4
	b       65$
	nop
60$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x00C5
	b       65$
	nop
65$:
	jal     player_80250940
	lw      $a0, 0x0028($sp)
	beqz    $v0, 80$
	nop
	lw      $t6, 0x0028($sp)
	li      $at, 0x0003
	lhu     $t7, 0x0018($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0018($t6)
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0018($t9)
	bne     $t0, $at, 80$
	nop
	lw      $t1, 0x0028($sp)
	sh      $0, 0x0018($t1)
80$:
	jal     physics_802559B0
	lw      $a0, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0076($t2)
	lwc1    $f4, 0x0040($t2)
	addiu   $t4, $t3, -0x0096
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    97$
	nop
	lw      $t5, 0x0028($sp)
	lw      $t7, 0x0008($t5)
	ori     $t8, $t7, 0x0080
	sw      $t8, 0x0008($t5)
97$:
	b       101$
	move    $v0, $0
	b       101$
	nop
101$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       59$
	nop
16$:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 28$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
28$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 39$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F9
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
39$:
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     pl_set_state
	move    $a2, $0
	b       59$
	nop
50$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x003F
	b       59$
	move    $v0, $0
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80273CD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 16$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       100$
	nop
16$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, 28$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       100$
	nop
28$:
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 39$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F8
	jal     pl_set_state
	move    $a2, $0
	b       100$
	nop
39$:
	lw      $t5, 0x0028($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0020
	beqz    $t7, 51$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       100$
	nop
51$:
	lw      $t8, 0x0028($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	li      $at, 0x47800000
	mtc1    $at, $f10
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	slti    $at, $t0, 0x1000
	beqz    $at, 67$
	sw      $t0, 0x0024($sp)
	li      $t1, 0x1000
	sw      $t1, 0x0024($sp)
67$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0048
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	jal     pl_swim_802735A4
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273618
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 85$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 91$
	nop
	b       96$
	nop
85$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     pl_set_state
	li      $a2, 0x0001
	b       96$
	nop
91$:
	mtc1    $0, $f4
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0054($t2)
	b       96$
	nop
96$:
	b       100$
	move    $v0, $0
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80273E74:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F2
	jal     player_80253178
	move    $a2, $0
	b       106$
	nop
16$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 28$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       106$
	nop
28$:
	lw      $t3, 0x0028($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 39$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44F9
	jal     pl_set_state
	move    $a2, $0
	b       106$
	nop
39$:
	lw      $t6, 0x0028($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 51$
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       106$
	nop
51$:
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(pl_swim_80336E58)
	lwc1    $f6, %lo(pl_swim_80336E58)($at)
	lwc1    $f4, 0x0020($t9)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t9)
	lw      $t0, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t0)
	li      $at, 0x47800000
	mtc1    $at, $f4
	div.s   $f18, $f10, $f16
	mul.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t2, $f8
	nop
	slti    $at, $t2, 0x1000
	beqz    $at, 73$
	sw      $t2, 0x0024($sp)
	li      $t3, 0x1000
	sw      $t3, 0x0024($sp)
73$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0017
	jal     player_80250B04
	lw      $a2, 0x0024($sp)
	jal     pl_swim_802735A4
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273618
	lw      $a0, 0x0028($sp)
	jal     physics_80255D88
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	beqz    $s0, 91$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 97$
	nop
	b       102$
	nop
91$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F5
	jal     pl_set_state
	li      $a2, 0x0001
	b       102$
	nop
97$:
	mtc1    $0, $f10
	lw      $t4, 0x0028($sp)
	swc1    $f10, 0x0054($t4)
	b       102$
	nop
102$:
	b       106$
	move    $v0, $0
	b       106$
	nop
106$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274030:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 16$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       60$
	nop
16$:
	jal     pl_swim_802737F4
	lw      $a0, 0x0028($sp)
	beqz    $v0, 27$
	nop
	li.u    $a1, 0x01000889
	li.l    $a1, 0x01000889
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       60$
	nop
27$:
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273518
	move    $a1, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x004D
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 51$
	nop
	b       56$
	nop
45$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44FA
	jal     pl_set_state
	move    $a2, $0
	b       56$
	nop
51$:
	mtc1    $0, $f4
	lw      $t9, 0x0028($sp)
	swc1    $f4, 0x0054($t9)
	b       56$
	nop
56$:
	b       60$
	move    $v0, $0
	b       60$
	nop
60$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274134:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 16$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F4
	jal     player_80253178
	move    $a2, $0
	b       72$
	nop
16$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 28$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       72$
	nop
28$:
	jal     pl_swim_802737F4
	lw      $a0, 0x0028($sp)
	beqz    $v0, 39$
	nop
	li.u    $a1, 0x010008A3
	li.l    $a1, 0x010008A3
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	li      $a2, 0x0001
	b       72$
	nop
39$:
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80273518
	move    $a1, $0
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	li      $a1, 0x0041
	lw      $a0, 0x0028($sp)
	jal     physics_80256B24
	move    $a1, $0
	move    $s0, $v0
	li      $at, 0x0001
	beq     $s0, $at, 57$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 63$
	nop
	b       68$
	nop
57$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x44FB
	jal     pl_set_state
	move    $a2, $0
	b       68$
	nop
63$:
	mtc1    $0, $f4
	lw      $t3, 0x0028($sp)
	swc1    $f4, 0x0054($t3)
	b       68$
	nop
68$:
	b       72$
	move    $v0, $0
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274268:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 16$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       66$
	nop
16$:
	lw      $t9, 0x0028($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 41$
	nop
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(math_sin)
	lh      $t3, 0x0024($t2)
	lh      $t4, 0x002E($t2)
	subu    $t5, $t3, $t4
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f6, $f4
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f6, $f18
	mfc1    $t0, $f6
	nop
	sh      $t0, 0x002E($t2)
41$:
	lw      $t1, 0x0028($sp)
	lw      $t3, 0x001C($t1)
	bnez    $t3, 47$
	nop
	b       48$
	li      $s0, 0x0056
47$:
	li      $s0, 0x00A9
48$:
	lw      $a0, 0x0028($sp)
	jal     pl_set_anime
	move    $a1, $s0
	jal     pl_swim_80270B4C
	lw      $a0, 0x0028($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0028($sp)
	andi    $t5, $v0, 0x0001
	beqz    $t5, 62$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42F6
	jal     pl_set_state
	move    $a2, $0
62$:
	b       66$
	move    $v0, $0
	b       66$
	nop
66$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

pl_swim_80274384:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 15$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F4
	jal     player_80253178
	move    $a2, $0
	b       70$
	nop
15$:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 27$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       70$
	nop
27$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 52$
	nop
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x0024($t6)
	lh      $t8, 0x002E($t6)
	subu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x44800000
	mtc1    $at, $f6
	mtc1    $t8, $f10
	mul.s   $f8, $f6, $f4
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f6, $f18
	mfc1    $t4, $f6
	nop
	sh      $t4, 0x002E($t6)
52$:
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0043
	jal     pl_swim_80270B4C
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80270918
	lw      $a0, 0x0018($sp)
	andi    $t5, $v0, 0x0001
	beqz    $t5, 66$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x42F7
	jal     pl_set_state
	move    $a2, $0
66$:
	b       70$
	move    $v0, $0
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_802744AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 18$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
18$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 29$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F2
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
29$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x004E
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 45$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
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

pl_swim_80274580:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 19$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       62$
	nop
19$:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 31$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
31$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 42$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
42$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0040
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 58$
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
58$:
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80274688:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	bnez    $t8, 18$
	nop
	li.u    $a1, 0x380022C0
	li.l    $a1, 0x380022C0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
18$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 29$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F2
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
29$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0057
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 45$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       49$
	nop
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

pl_swim_8027475C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_swim_80273518
	li      $a1, 0x0001
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0088($t6)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x0008
	beqz    $t9, 19$
	nop
	li.u    $a1, 0x080042F0
	li.l    $a1, 0x080042F0
	lw      $a0, 0x0018($sp)
	jal     player_80253178
	move    $a2, $0
	b       62$
	nop
19$:
	lw      $t0, 0x0018($sp)
	lw      $t1, 0x0004($t0)
	andi    $t2, $t1, 0x0004
	bnez    $t2, 31$
	nop
	li.u    $a1, 0x380022C1
	li.l    $a1, 0x380022C1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
31$:
	lw      $t3, 0x0018($sp)
	lhu     $t4, 0x0002($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 42$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x44F3
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
42$:
	jal     physics_802559B0
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     pl_set_anime
	li      $a1, 0x0042
	jal     player_80250940
	lw      $a0, 0x0018($sp)
	beqz    $v0, 58$
	nop
	li.u    $a1, 0x080042F1
	li.l    $a1, 0x080042F1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       62$
	nop
58$:
	b       62$
	move    $v0, $0
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

pl_swim_80274864:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lh      $t7, 0x0076($t6)
	lwc1    $f4, 0x0040($t6)
	addiu   $t8, $t7, -0x0050
	mtc1    $t8, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f8, $f4
	nop
	bc1f    54$
	nop
	lw      $t9, 0x0018($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f18, 0x0070($t9)
	addiu   $t1, $t0, -0x0050
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f18, $f16
	nop
	bc1f    33$
	nop
	lw      $t2, 0x0018($sp)
	lh      $t3, 0x0076($t2)
	addiu   $t4, $t3, -0x0050
	mtc1    $t4, $f6
	nop
	cvt.s.w $f4, $f6
	b       54$
	swc1    $f4, 0x0040($t2)
33$:
	lw      $t5, 0x0018($sp)
	li.u    $at, 0x300024D6
	li.l    $at, 0x300024D6
	lw      $t6, 0x000C($t5)
	bne     $t6, $at, 50$
	nop
	lw      $t7, 0x007C($t5)
	beqz    $t7, 50$
	nop
	lw      $t0, 0x0018($sp)
	li      $t8, 0x00400000
	lw      $t1, 0x007C($t0)
	sw      $t8, 0x0134($t1)
	lw      $t9, 0x0018($sp)
	sw      $0, 0x007C($t9)
	jal     bgm_shell_stop
	nop
50$:
	jal     player_802533E4
	lw      $a0, 0x0018($sp)
	b       74$
	nop
54$:
	lw      $t3, 0x0018($sp)
	lh      $t4, 0x00AE($t3)
	slti    $at, $t4, 0x0100
	beqz    $at, 70$
	nop
	lw      $t2, 0x000C($t3)
	li.u    $at, 0x00021000
	li.l    $at, 0x00021000
	and     $t6, $t2, $at
	bnez    $t6, 70$
	nop
	li.u    $a1, 0x300032C4
	li.l    $a1, 0x300032C4
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
70$:
	b       74$
	move    $v0, $0
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl pl_swim_exec
pl_swim_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_swim_80274864
	lw      $a0, 0x0028($sp)
	beqz    $v0, 10$
	nop
	b       319$
	li      $v0, 0x0001
10$:
	mtc1    $0, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x00C0($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0098($t7)
	sh      $0, 0x0014($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x0098($t9)
	sh      $0, 0x0016($t0)
	lw      $t1, 0x0028($sp)
	li.u    $at, 0x300022E3
	li.l    $at, 0x300022E3
	lw      $s0, 0x000C($t1)
	sltu    $at, $s0, $at
	bnez    $at, 98$
	nop
	li.u    $at, 0x300222C7
	li.l    $at, 0x300222C7
	sltu    $at, $s0, $at
	bnez    $at, 49$
	nop
	li.u    $at, 0x300222C8
	li.l    $at, 0x300222C8
	beq     $s0, $at, 195$
	nop
	li.u    $at, 0x300222E3
	li.l    $at, 0x300222E3
	beq     $s0, $at, 250$
	nop
	li.u    $at, 0x380022C0
	li.l    $at, 0x380022C0
	beq     $s0, $at, 155$
	nop
	li.u    $at, 0x380022C1
	li.l    $at, 0x380022C1
	beq     $s0, $at, 160$
	nop
	b       L80274E88
	nop
49$:
	li.u    $at, 0x300032C8
	li.l    $at, 0x300032C8
	sltu    $at, $s0, $at
	bnez    $at, 64$
	nop
	li.u    $at, 0x300222C5
	li.l    $at, 0x300222C5
	beq     $s0, $at, 180$
	nop
	li.u    $at, 0x300222C6
	li.l    $at, 0x300222C6
	beq     $s0, $at, 185$
	nop
	b       L80274E88
	nop
64$:
	li.u    $at, 0x300032C5
	li.l    $at, 0x300032C5
	sltu    $at, $s0, $at
	bnez    $at, 75$
	nop
	li.u    $at, 0x300032C7
	li.l    $at, 0x300032C7
	beq     $s0, $at, 190$
	nop
	b       L80274E88
	nop
75$:
	li.u    $at, 0x300024E2
	li.l    $at, 0x300024E2
	sltu    $at, $s0, $at
	bnez    $at, 86$
	nop
	li.u    $at, 0x300032C4
	li.l    $at, 0x300032C4
	beq     $s0, $at, 175$
	nop
	b       L80274E88
	nop
86$:
	li.u    $at, 0xCFFFDB30
	li.l    $at, 0xCFFFDB30
	addu    $t2, $s0, $at
	sltiu   $at, $t2, 0x0012
	beqz    $at, L80274E88
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(pl_swim_80336E5C)
	addu    $at, $at, $t2
	lw      $t2, %lo(pl_swim_80336E5C)($at)
	jr      $t2
	nop
98$:
	sltiu   $at, $s0, 0x44FC
	bnez    $at, 123$
	nop
	li.u    $at, 0x080042F0
	li.l    $at, 0x080042F0
	beq     $s0, $at, 255$
	nop
	li.u    $at, 0x080042F1
	li.l    $at, 0x080042F1
	beq     $s0, $at, 285$
	nop
	li.u    $at, 0x300022C2
	li.l    $at, 0x300022C2
	beq     $s0, $at, 165$
	nop
	li.u    $at, 0x300022C3
	li.l    $at, 0x300022C3
	beq     $s0, $at, 170$
	nop
	li.u    $at, 0x300022E2
	li.l    $at, 0x300022E2
	beq     $s0, $at, 245$
	nop
	b       L80274E88
	nop
123$:
	sltiu   $at, $s0, 0x42F7
	bnez    $at, 144$
	nop
	sltiu   $at, $s0, 0x42F8
	bnez    $at, 139$
	nop
	addiu   $t3, $s0, -0x44F2
	sltiu   $at, $t3, 0x000A
	beqz    $at, L80274E88
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(pl_swim_80336EA4)
	addu    $at, $at, $t3
	lw      $t3, %lo(pl_swim_80336EA4)($at)
	jr      $t3
	nop
139$:
	li      $at, 0x42F7
	beq     $s0, $at, 300$
	nop
	b       L80274E88
	nop
144$:
	li      $at, 0x42F4
	beq     $s0, $at, 265$
	nop
	li      $at, 0x42F5
	beq     $s0, $at, 295$
	nop
	li      $at, 0x42F6
	beq     $s0, $at, 270$
	nop
	b       L80274E88
	nop
155$:
	jal     pl_swim_802711D4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
160$:
	jal     pl_swim_802712C0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
165$:
	jal     pl_swim_802713BC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
170$:
	jal     pl_swim_802714A8
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
175$:
	jal     pl_swim_80272CBC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
180$:
	jal     pl_swim_80272B1C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
185$:
	jal     pl_swim_80272B64
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
190$:
	jal     pl_swim_80272DC0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
195$:
	jal     pl_swim_80272BAC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CBC
L80274CBC:
	jal     pl_swim_80271AA0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CD0
L80274CD0:
	jal     pl_swim_80271D04
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CE4
L80274CE4:
	jal     pl_swim_80271EB4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274CF8
L80274CF8:
	jal     pl_swim_8027202C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D0C
L80274D0C:
	jal     pl_swim_8027226C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D20
L80274D20:
	jal     pl_swim_802723F0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D34
L80274D34:
	jal     pl_swim_80272548
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D48
L80274D48:
	jal     pl_swim_80272778
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274D5C
L80274D5C:
	jal     pl_swim_80272870
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
245$:
	jal     pl_swim_80272E3C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
250$:
	jal     pl_swim_80273160
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
255$:
	jal     pl_swim_80273A2C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DAC
L80274DAC:
	jal     pl_swim_80273CD0
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
265$:
	jal     pl_swim_80274268
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
270$:
	jal     pl_swim_80274688
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DE8
L80274DE8:
	jal     pl_swim_80274030
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274DFC
L80274DFC:
	jal     pl_swim_802744AC
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
285$:
	jal     pl_swim_80273BD4
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E24
L80274E24:
	jal     pl_swim_80273E74
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
295$:
	jal     pl_swim_80274384
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
300$:
	jal     pl_swim_8027475C
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E60
L80274E60:
	jal     pl_swim_80274134
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E74
L80274E74:
	jal     pl_swim_80274580
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	b       L80274E88
	nop
.globl L80274E88
L80274E88:
	b       319$
	lw      $v0, 0x0024($sp)
	b       319$
	nop
319$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
