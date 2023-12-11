.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

.globl player_80250940
player_80250940:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t0, 0x003C($t7)
	lh      $t8, 0x0040($t7)
	lh      $t1, 0x0008($t0)
	addiu   $t9, $t8, 0x0001
	xor     $v0, $t9, $t1
	b       13$
	sltiu   $v0, $v0, 0x0001
	b       13$
	nop
13$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_8025097C
player_8025097C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t9, 0x003C($t7)
	lh      $t8, 0x0040($t7)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0002
	slt     $v0, $t8, $t1
	b       13$
	xori    $v0, $v0, 0x0001
	b       13$
	nop
13$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl pl_set_anime
pl_set_anime:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x00A0($t8)
	lw      $t0, 0x0008($t9)
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     bank_load
	lw      $a0, 0x00A0($t1)
	beqz    $v0, 31$
	nop
	lw      $t2, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t3, 0x000C($t2)
	addu    $t4, $t2, $t3
	and     $t5, $t4, $at
	sw      $t5, 0x000C($t2)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t7, 0x0010($t6)
	addu    $t8, $t6, $t7
	and     $t9, $t8, $at
	sw      $t9, 0x0010($t6)
31$:
	lw      $t0, 0x001C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t1, 0x0038($t0)
	beq     $t1, $t3, 74$
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sh      $t4, 0x0038($t5)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x003C($t7)
	lw      $t8, 0x001C($sp)
	sw      $0, 0x0048($t8)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lh      $t6, 0x00B0($t9)
	sh      $t6, 0x003A($t0)
	lw      $t1, 0x0018($sp)
	lh      $t3, 0x0000($t1)
	andi    $t4, $t3, 0x0004
	beqz    $t4, 58$
	nop
	lw      $t5, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $t2, 0x0004($t5)
	b       74$
	sh      $t2, 0x0040($t7)
58$:
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, 69$
	nop
	lw      $t0, 0x0018($sp)
	lw      $t4, 0x001C($sp)
	lh      $t1, 0x0004($t0)
	addiu   $t3, $t1, 0x0001
	b       74$
	sh      $t3, 0x0040($t4)
69$:
	lw      $t5, 0x0018($sp)
	lw      $t8, 0x001C($sp)
	lh      $t2, 0x0004($t5)
	addiu   $t7, $t2, -0x0001
	sh      $t7, 0x0040($t8)
74$:
	lw      $t9, 0x001C($sp)
	b       79$
	lh      $v0, 0x0040($t9)
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80250B04
player_80250B04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0088($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x00A0($t8)
	lw      $t0, 0x0008($t9)
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     bank_load
	lw      $a0, 0x00A0($t1)
	beqz    $v0, 32$
	nop
	lw      $t2, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t3, 0x000C($t2)
	addu    $t4, $t2, $t3
	and     $t5, $t4, $at
	sw      $t5, 0x000C($t2)
	lw      $t6, 0x0018($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	lw      $t7, 0x0010($t6)
	addu    $t8, $t6, $t7
	and     $t9, $t8, $at
	sw      $t9, 0x0010($t6)
32$:
	lw      $t0, 0x001C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t1, 0x0038($t0)
	beq     $t1, $t3, 82$
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	sh      $t4, 0x0038($t5)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x003C($t7)
	lw      $t8, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lh      $t9, 0x00B0($t8)
	sh      $t9, 0x003A($t6)
	lw      $t0, 0x0018($sp)
	lh      $t1, 0x0000($t0)
	andi    $t3, $t1, 0x0004
	beqz    $t3, 58$
	nop
	lw      $t4, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	lh      $t5, 0x0004($t4)
	sll     $t2, $t5, 16
	b       78$
	sw      $t2, 0x0044($t7)
58$:
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t6, $t9, 0x0002
	beqz    $t6, 71$
	nop
	lw      $t0, 0x0018($sp)
	lw      $t4, 0x0028($sp)
	lw      $t2, 0x001C($sp)
	lh      $t1, 0x0004($t0)
	sll     $t3, $t1, 16
	addu    $t5, $t3, $t4
	b       78$
	sw      $t5, 0x0044($t2)
71$:
	lw      $t7, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	lh      $t8, 0x0004($t7)
	sll     $t9, $t8, 16
	subu    $t0, $t9, $t6
	sw      $t0, 0x0044($t1)
78$:
	lw      $t3, 0x001C($sp)
	lw      $t4, 0x0044($t3)
	sra     $t5, $t4, 16
	sh      $t5, 0x0040($t3)
82$:
	lw      $t2, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	sw      $t2, 0x0048($t7)
	lw      $t8, 0x001C($sp)
	b       90$
	lh      $v0, 0x0040($t8)
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80250C7C
player_80250C7C:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	addiu   $t7, $t6, 0x0038
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0004($sp)
	lw      $t1, 0x0010($t0)
	beqz    $t1, 31$
	nop
	lw      $t2, 0x0000($sp)
	lh      $t3, 0x0000($t2)
	andi    $t4, $t3, 0x0002
	beqz    $t4, 24$
	nop
	lw      $t6, 0x0004($sp)
	sll     $t5, $a1, 16
	lw      $t7, 0x0010($t6)
	addu    $t8, $t5, $t7
	b       29$
	sw      $t8, 0x000C($t6)
24$:
	lw      $t0, 0x0004($sp)
	sll     $t9, $a1, 16
	lw      $t1, 0x0010($t0)
	subu    $t2, $t9, $t1
	sw      $t2, 0x000C($t0)
29$:
	b       43$
	nop
31$:
	lw      $t3, 0x0000($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 40$
	nop
	lw      $t8, 0x0004($sp)
	addiu   $t7, $a1, 0x0001
	b       43$
	sh      $t7, 0x0008($t8)
40$:
	lw      $t9, 0x0004($sp)
	addiu   $t6, $a1, -0x0001
	sh      $t6, 0x0008($t9)
43$:
	b       45$
	nop
45$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_80250D38
player_80250D38:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0018
	sll     $t6, $a1, 16
	sw      $t6, 0x0010($sp)
	lw      $t7, 0x0088($a0)
	addiu   $t8, $t7, 0x0038
	sw      $t8, 0x000C($sp)
	lw      $t9, 0x000C($sp)
	lw      $t0, 0x0004($t9)
	sw      $t0, 0x0008($sp)
	lw      $t1, 0x000C($sp)
	lw      $t2, 0x0010($t1)
	beqz    $t2, 47$
	nop
	lw      $t3, 0x0008($sp)
	lh      $t4, 0x0000($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 33$
	nop
	lw      $t6, 0x000C($sp)
	lw      $t8, 0x0010($sp)
	lw      $t7, 0x000C($t6)
	slt     $a2, $t8, $t7
	beqz    $a2, 31$
	nop
	lw      $t9, 0x000C($t6)
	lw      $t0, 0x0010($t6)
	subu    $t1, $t9, $t0
	slt     $a2, $t8, $t1
	xori    $a2, $a2, 0x0001
31$:
	b       45$
	sw      $a2, 0x0014($sp)
33$:
	lw      $t2, 0x000C($sp)
	lw      $t4, 0x0010($sp)
	lw      $t3, 0x000C($t2)
	slt     $a2, $t3, $t4
	beqz    $a2, 44$
	nop
	lw      $t5, 0x000C($t2)
	lw      $t7, 0x0010($t2)
	addu    $t6, $t5, $t7
	slt     $a2, $t6, $t4
	xori    $a2, $a2, 0x0001
44$:
	sw      $a2, 0x0014($sp)
45$:
	b       65$
	nop
47$:
	lw      $t9, 0x0008($sp)
	lh      $t0, 0x0000($t9)
	andi    $t8, $t0, 0x0002
	beqz    $t8, 59$
	nop
	lw      $t1, 0x000C($sp)
	addiu   $t2, $a1, 0x0001
	lh      $t3, 0x0008($t1)
	xor     $t5, $t3, $t2
	sltiu   $t5, $t5, 0x0001
	b       65$
	sw      $t5, 0x0014($sp)
59$:
	lw      $t7, 0x000C($sp)
	lh      $t4, 0x0008($t7)
	addiu   $t6, $t4, 0x0001
	xor     $t9, $t6, $a1
	sltiu   $t9, $t9, 0x0001
	sw      $t9, 0x0014($sp)
65$:
	b       69$
	lw      $v0, 0x0014($sp)
	b       69$
	nop
69$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

.globl player_80250E54
player_80250E54:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x003C($t6)
	sw      $t7, 0x002C($sp)
	lw      $a0, 0x0038($sp)
	move    $a1, $0
	jal     skel_step
	addiu   $a0, $a0, 0x0038
	sh      $v0, 0x002A($sp)
	lw      $t8, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0010($t8)
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x000C($t9)
	sw      $v0, 0x0020($sp)
	lhu     $t0, 0x003E($sp)
	lui     $at, %hi(math_sin)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	swc1    $f4, 0x001C($sp)
	lhu     $t3, 0x003E($sp)
	lui     $at, %hi(math_cos)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f6, %lo(math_cos)($at)
	swc1    $f6, 0x0018($sp)
	lh      $a0, 0x002A($sp)
	jal     anime_index
	addiu   $a1, $sp, 0x0024
	lw      $t6, 0x0020($sp)
	sll     $t7, $v0, 1
	li      $at, 0x40800000
	addu    $t8, $t6, $t7
	lh      $t9, 0x0000($t8)
	mtc1    $at, $f16
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lh      $a0, 0x002A($sp)
	jal     anime_index
	addiu   $a1, $sp, 0x0024
	lw      $t0, 0x0020($sp)
	sll     $t1, $v0, 1
	li      $at, 0x40800000
	addu    $t2, $t0, $t1
	lh      $t3, 0x0000($t2)
	mtc1    $at, $f8
	lw      $t6, 0x0040($sp)
	mtc1    $t3, $f4
	nop
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	trunc.w.s $f16, $f10
	mfc1    $t5, $f16
	nop
	sh      $t5, 0x0002($t6)
	lh      $a0, 0x002A($sp)
	jal     anime_index
	addiu   $a1, $sp, 0x0024
	lw      $t7, 0x0020($sp)
	sll     $t8, $v0, 1
	li      $at, 0x40800000
	addu    $t9, $t7, $t8
	lh      $t0, 0x0000($t9)
	mtc1    $at, $f6
	mtc1    $t0, $f18
	nop
	cvt.s.w $f4, $f18
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x001C($sp)
	mul.s   $f18, $f10, $f16
	lw      $t3, 0x0040($sp)
	mul.s   $f8, $f4, $f6
	add.s   $f10, $f18, $f8
	trunc.w.s $f16, $f10
	mfc1    $t2, $f16
	nop
	sh      $t2, 0x0000($t3)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f10, 0x0030($sp)
	neg.s   $f6, $f4
	lwc1    $f16, 0x0018($sp)
	mul.s   $f8, $f6, $f18
	lw      $t6, 0x0040($sp)
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f8, $f4
	trunc.w.s $f18, $f6
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0004($t6)
	lw      $t7, 0x002C($sp)
	b       111$
	lh      $v0, 0x0000($t7)
	b       111$
	nop
111$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl player_80251020
player_80251020:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	addiu   $a2, $sp, 0x0020
	lw      $a0, 0x0088($t6)
	jal     player_80250E54
	lh      $a1, 0x002E($t6)
	sh      $v0, 0x001E($sp)
	lh      $t7, 0x001E($sp)
	andi    $t8, $t7, 0x0048
	beqz    $t8, 29$
	nop
	addiu   $t0, $sp, 0x0020
	lh      $t1, 0x0000($t0)
	lw      $t9, 0x0028($sp)
	mtc1    $t1, $f6
	lwc1    $f4, 0x003C($t9)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x003C($t9)
	addiu   $t3, $sp, 0x0020
	lh      $t4, 0x0004($t3)
	lw      $t2, 0x0028($sp)
	mtc1    $t4, $f18
	lwc1    $f16, 0x0044($t2)
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0044($t2)
29$:
	lh      $t5, 0x001E($sp)
	andi    $t6, $t5, 0x0050
	beqz    $t6, 41$
	nop
	addiu   $t8, $sp, 0x0020
	lh      $t0, 0x0002($t8)
	lw      $t7, 0x0028($sp)
	mtc1    $t0, $f10
	lwc1    $f8, 0x0040($t7)
	cvt.s.w $f18, $f10
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0040($t7)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802510DC
player_802510DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	move    $a1, $0
	addiu   $a2, $sp, 0x0018
	jal     player_80250E54
	lw      $a0, 0x0088($t6)
	addiu   $t7, $sp, 0x0018
	b       13$
	lh      $v0, 0x0002($t7)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80251120
player_80251120:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	lw      $t8, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	and     $t9, $t7, $t8
	bnez    $t9, 21$
	nop
	lw      $t0, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0088($t0)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	lw      $t1, 0x0018($sp)
	lw      $t3, 0x0020($sp)
	lw      $t2, 0x0004($t1)
	or      $t4, $t2, $t3
	sw      $t4, 0x0004($t1)
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_8025118C
player_8025118C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, 52$
	nop
	lw      $t9, 0x0018($sp)
	li.u    $at, 0x01000882
	li.l    $at, 0x01000882
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, 32$
	nop
	lui     $a0, %hi(_Na_work_bss+0x5F18)
	lw      $a0, %lo(_Na_work_bss+0x5F18)($a0)
	li      $at, 0x0005
	lw      $t3, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t1
	move    $a0, $t1
	lw      $a1, 0x0088($t3)
	sll     $t2, $a0, 16
	li.u    $at, 0x242B8081
	li.l    $at, 0x242B8081
	move    $a0, $t2
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       47$
	nop
32$:
	lui     $a0, %hi(_Na_work_bss+0x5F18)
	lw      $a0, %lo(_Na_work_bss+0x5F18)($a0)
	li      $at, 0x0003
	lw      $t6, 0x0018($sp)
	divu    $0, $a0, $at
	mfhi    $t4
	move    $a0, $t4
	lw      $a1, 0x0088($t6)
	sll     $t5, $a0, 16
	li.u    $at, 0x24008081
	li.l    $at, 0x24008081
	move    $a0, $t5
	addu    $a0, $a0, $at
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
47$:
	lw      $t7, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t8, 0x0004($t7)
	or      $t9, $t8, $at
	sw      $t9, 0x0004($t7)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80251274
player_80251274:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    15$
	nop
	trunc.w.s $f8, $f4
	mfc1    $t8, $f8
	b       22$
	sw      $t8, 0x0024($sp)
15$:
	lw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0054($t9)
	neg.s   $f16, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sw      $t1, 0x0024($sp)
22$:
	lw      $t2, 0x0024($sp)
	slti    $at, $t2, 0x0065
	bnez    $at, 28$
	nop
	b       29$
	li      $s0, 0x0064
28$:
	lw      $s0, 0x0024($sp)
29$:
	li      $a0, 0x0001
	jal     Na_game_803218D8
	move    $a1, $s0
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251310
player_80251310:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00020000
	lw      $t7, 0x0014($t6)
	bne     $t7, $at, 24$
	nop
	lw      $t8, 0x0020($sp)
	beqz    $t8, 18$
	nop
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x1000
	b       22$
	sw      $t1, 0x0008($t9)
18$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0008($t2)
	ori     $t4, $t3, 0x0100
	sw      $t4, 0x0008($t2)
22$:
	b       43$
	nop
24$:
	lw      $t5, 0x0018($sp)
	li      $at, 0x00070000
	lw      $t6, 0x0014($t5)
	bne     $t6, $at, 34$
	nop
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0008($t7)
	ori     $t0, $t8, 0x8000
	b       43$
	sw      $t0, 0x0008($t7)
34$:
	lw      $t1, 0x0018($sp)
	li      $at, 0x00050000
	lw      $t9, 0x0014($t1)
	bne     $t9, $at, 43$
	nop
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x0008($t3)
	ori     $t2, $t4, 0x4000
	sw      $t2, 0x0008($t3)
43$:
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0004($t5)
	andi    $t8, $t6, 0x0004
	bnez    $t8, 57$
	nop
	lw      $t0, 0x001C($sp)
	li.u    $at, 0x04438081
	li.l    $at, 0x04438081
	beq     $t0, $at, 57$
	nop
	li.u    $at, 0x241F8081
	li.l    $at, 0x241F8081
	bne     $t0, $at, 64$
	nop
57$:
	lw      $t7, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0088($t7)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       71$
	nop
64$:
	lw      $t1, 0x0018($sp)
	lw      $t4, 0x001C($sp)
	lw      $t9, 0x0014($t1)
	lw      $a1, 0x0088($t1)
	addu    $a0, $t9, $t4
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80251444
player_80251444:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t7, 0x0004($t6)
	and     $t8, $t7, $at
	bnez    $t8, 20$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     player_80251310
	lw      $a2, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0004($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x0004($t9)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_802514AC
player_802514AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li.u    $s0, 0x04299081
	b       14$
	li.l    $s0, 0x04299081
13$:
	lw      $s0, 0x002C($sp)
14$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251310
	li      $a2, 0x0001
	b       20$
	nop
20$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251510
player_80251510:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li.u    $s0, 0x04299081
	b       14$
	li.l    $s0, 0x04299081
13$:
	lw      $s0, 0x002C($sp)
14$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       20$
	nop
20$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251574
player_80251574:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li.u    $s0, 0x042B9081
	b       14$
	li.l    $s0, 0x042B9081
13$:
	lw      $s0, 0x002C($sp)
14$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251310
	li      $a2, 0x0001
	b       20$
	nop
20$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802515D8
player_802515D8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 13$
	nop
	li.u    $s0, 0x042B9081
	b       14$
	li.l    $s0, 0x042B9081
13$:
	lw      $s0, 0x002C($sp)
14$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       20$
	nop
20$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_8025163C
player_8025163C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x002C($sp)
	li.u    $at, 0x04008081
	li.l    $at, 0x04008081
	bne     $t6, $at, 27$
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 19$
	nop
	li.u    $s0, 0x04289081
	b       21$
	li.l    $s0, 0x04289081
19$:
	li.u    $s0, 0x04008081
	li.l    $s0, 0x04008081
21$:
	lw      $a0, 0x0028($sp)
	move    $a1, $s0
	jal     player_80251444
	li      $a2, 0x0001
	b       31$
	nop
27$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80251120
	li      $a2, 0x00010000
31$:
	lw      $t0, 0x0030($sp)
	bnez    $t0, 36$
	nop
	jal     player_8025118C
	lw      $a0, 0x0028($sp)
36$:
	lw      $t1, 0x0030($sp)
	li      $at, -0x0001
	beq     $t1, $at, 44$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0030($sp)
	jal     player_80251120
	li      $a2, 0x00020000
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251708
player_80251708:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x0054($a0)
	lhu     $t6, 0x002E($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f8, 0x0054($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0058($a0)
	lhu     $t9, 0x002E($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f18, 0x0054($a0)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x005C($a0)
	lwc1    $f6, 0x0058($a0)
	swc1    $f6, 0x0048($a0)
	lwc1    $f8, 0x005C($a0)
	swc1    $f8, 0x0050($a0)
	b       27$
	nop
27$:
	jr      $ra
	nop

.globl player_8025177C
player_8025177C:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0090($a0)
	li      $at, 0x0006
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	bne     $t8, $at, 10$
	nop
	li      $t9, 0x0013
	b       11$
	sw      $t9, 0x0004($sp)
10$:
	sw      $0, 0x0004($sp)
11$:
	lw      $t0, 0x0068($a0)
	beqz    $t0, L80251848
	nop
	lw      $t1, 0x0068($a0)
	lh      $a1, 0x0000($t1)
	slti    $at, $a1, 0x0038
	bnez    $at, 29$
	nop
	addiu   $t2, $a1, -0x0073
	sltiu   $at, $t2, 0x0008
	beqz    $at, L80251848
	nop
	sll     $t2, $t2, 2
	lui     $at, %hi(player_80336438)
	addu    $at, $at, $t2
	lw      $t2, %lo(player_80336438)($at)
	jr      $t2
	nop
29$:
	addiu   $t3, $a1, -0x0013
	sltiu   $at, $t3, 0x0025
	beqz    $at, L80251848
	nop
	sll     $t3, $t3, 2
	lui     $at, %hi(player_80336458)
	addu    $at, $at, $t3
	lw      $t3, %lo(player_80336458)($at)
	jr      $t3
	nop
.globl L80251818
L80251818:
	li      $t4, 0x0015
	sw      $t4, 0x0004($sp)
	b       L80251848
	nop
.globl L80251828
L80251828:
	li      $t5, 0x0014
	sw      $t5, 0x0004($sp)
	b       L80251848
	nop
.globl L80251838
L80251838:
	li      $t6, 0x0013
	sw      $t6, 0x0004($sp)
	b       L80251848
	nop
.globl L80251848
L80251848:
	lw      $t7, 0x000C($a0)
	li.u    $at, 0x04008448
	li.l    $at, 0x04008448
	bne     $t7, $at, 69$
	nop
	lw      $t8, 0x0068($a0)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0020($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    69$
	nop
	lw      $t9, 0x0004($sp)
	bnez    $t9, 69$
	nop
	li      $t0, 0x0015
	sw      $t0, 0x0004($sp)
69$:
	b       73$
	lw      $v0, 0x0004($sp)
	b       73$
	nop
73$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_802518A8
player_802518A8:
	addiu   $sp, $sp, -0x0010
	lw      $t6, 0x0090($a0)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0007
	sh      $t8, 0x000C($sp)
	sw      $0, 0x0008($sp)
	lw      $t9, 0x0068($a0)
	beqz    $t9, 98$
	nop
	lw      $t0, 0x0068($a0)
	lh      $t1, 0x0000($t0)
	sw      $t1, 0x0004($sp)
	lui     $t2, %hi(stage_index)
	lh      $t2, %lo(stage_index)($t2)
	li      $at, 0x0016
	beq     $t2, $at, 30$
	nop
	lh      $t3, 0x0076($a0)
	lwc1    $f4, 0x0070($a0)
	addiu   $t4, $t3, -0x000A
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    30$
	nop
	li      $t5, 0x00020000
	b       98$
	sw      $t5, 0x0008($sp)
30$:
	lw      $t6, 0x0004($sp)
	slti    $at, $t6, 0x0021
	bnez    $at, 40$
	nop
	slti    $at, $t6, 0x0028
	beqz    $at, 40$
	nop
	li      $t7, 0x00070000
	b       98$
	sw      $t7, 0x0008($sp)
40$:
	lw      $a1, 0x0004($sp)
	slti    $at, $a1, 0x0038
	bnez    $at, 54$
	nop
	addiu   $t8, $a1, -0x0073
	sltiu   $at, $t8, 0x0008
	beqz    $at, L802519A8
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(player_803364EC)
	addu    $at, $at, $t8
	lw      $t8, %lo(player_803364EC)($at)
	jr      $t8
	nop
54$:
	addiu   $t9, $a1, -0x0013
	sltiu   $at, $t9, 0x0025
	beqz    $at, L802519A8
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(player_8033650C)
	addu    $at, $at, $t9
	lw      $t9, %lo(player_8033650C)($at)
	jr      $t9
	nop
.globl L802519A8
L802519A8:
	sh      $0, 0x000E($sp)
	b       87$
	nop
.globl L802519B4
L802519B4:
	li      $t0, 0x0001
	sh      $t0, 0x000E($sp)
	b       87$
	nop
.globl L802519C4
L802519C4:
	li      $t1, 0x0002
	sh      $t1, 0x000E($sp)
	b       87$
	nop
.globl L802519D4
L802519D4:
	li      $t2, 0x0003
	sh      $t2, 0x000E($sp)
	b       87$
	nop
.globl L802519E4
L802519E4:
	li      $t3, 0x0004
	sh      $t3, 0x000E($sp)
	b       87$
	nop
.globl L802519F4
L802519F4:
	li      $t4, 0x0005
	sh      $t4, 0x000E($sp)
	b       87$
	nop
87$:
	lh      $t5, 0x000C($sp)
	lh      $t7, 0x000E($sp)
	lui     $t9, %hi(player_8032DAA0)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	addu    $t8, $t6, $t7
	addu    $t9, $t9, $t8
	lb      $t9, %lo(player_8032DAA0)($t9)
	sll     $t0, $t9, 16
	sw      $t0, 0x0008($sp)
98$:
	b       102$
	lw      $v0, 0x0008($sp)
	b       102$
	nop
102$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl player_80251A48
player_80251A48:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0048($sp)
	lwc1    $f4, 0x0000($t6)
	swc1    $f4, 0x0020($sp)
	lw      $t7, 0x0048($sp)
	lwc1    $f6, 0x0004($t7)
	swc1    $f6, 0x0024($sp)
	lw      $t8, 0x0048($sp)
	lwc1    $f8, 0x0008($t8)
	swc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x004C($sp)
	swc1    $f16, 0x002C($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0020
	beqz    $v0, 28$
	nop
	lh      $t9, 0x0036($sp)
	sll     $t0, $t9, 2
	addu    $t1, $sp, $t0
	lw      $t1, 0x0034($t1)
	sw      $t1, 0x001C($sp)
28$:
	lwc1    $f18, 0x0020($sp)
	lw      $t2, 0x0048($sp)
	swc1    $f18, 0x0000($t2)
	lwc1    $f4, 0x0024($sp)
	lw      $t3, 0x0048($sp)
	swc1    $f4, 0x0004($t3)
	lwc1    $f6, 0x0028($sp)
	lw      $t4, 0x0048($sp)
	swc1    $f6, 0x0008($t4)
	b       41$
	lw      $v0, 0x001C($sp)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl player_80251AFC
player_80251AFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	lw      $a3, 0x0028($sp)
	lwc1    $f12, 0x0000($t6)
	lw      $a2, 0x0008($t6)
	jal     bg_check_roof
	add.s   $f14, $f4, $f6
	b       18$
	nop
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80251B54
player_80251B54:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x002E($a0)
	sh      $t6, 0x0006($sp)
	beqz    $a1, 16$
	nop
	lwc1    $f4, 0x0054($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    16$
	nop
	lh      $t7, 0x0006($sp)
	li      $at, 0x8000
	addu    $t8, $t7, $at
	sh      $t8, 0x0006($sp)
16$:
	lh      $t9, 0x0074($a0)
	lh      $t0, 0x0006($sp)
	subu    $t1, $t9, $t0
	sh      $t1, 0x0006($sp)
	lh      $t2, 0x0006($sp)
	li      $at, -0x4000
	slt     $v0, $at, $t2
	beqz    $v0, 26$
	nop
	slti    $v0, $t2, 0x4000
26$:
	b       30$
	nop
	b       30$
	nop
30$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl player_80251BD4
player_80251BD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0006
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, 21$
	nop
	lw      $t0, 0x0068($t6)
	lui     $at, %hi(player_803365A0)
	lwc1    $f6, %lo(player_803365A0)($at)
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	b       69$
	li      $v0, 0x0001
21$:
	jal     player_8025177C
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 50$
	nop
	b       45$
	nop
35$:
	lui     $at, %hi(player_803365A4)
	lwc1    $f8, %lo(player_803365A4)($at)
	swc1    $f8, 0x0024($sp)
	b       55$
	nop
40$:
	lui     $at, %hi(player_803365A8)
	lwc1    $f10, %lo(player_803365A8)($at)
	swc1    $f10, 0x0024($sp)
	b       55$
	nop
45$:
	lui     $at, %hi(player_803365AC)
	lwc1    $f16, %lo(player_803365AC)($at)
	swc1    $f16, 0x0024($sp)
	b       55$
	nop
50$:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0024($sp)
	b       55$
	nop
55$:
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	move    $v0, $0
	lw      $t2, 0x0068($t1)
	lwc1    $f4, 0x0020($t2)
	c.le.s  $f4, $f6
	nop
	bc1f    65$
	nop
	li      $v0, 0x0001
65$:
	b       69$
	nop
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80251CFC
player_80251CFC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0006
	lw      $t7, 0x0090($t6)
	lhu     $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0007
	bne     $t9, $at, 21$
	nop
	lw      $t0, 0x0068($t6)
	lui     $at, %hi(player_803365B0)
	lwc1    $f6, %lo(player_803365B0)($at)
	lwc1    $f4, 0x0020($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    21$
	nop
	b       69$
	li      $v0, 0x0001
21$:
	jal     player_8025177C
	lw      $a0, 0x0028($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 40$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 50$
	nop
	b       45$
	nop
35$:
	lui     $at, %hi(player_803365B4)
	lwc1    $f8, %lo(player_803365B4)($at)
	swc1    $f8, 0x0024($sp)
	b       55$
	nop
40$:
	lui     $at, %hi(player_803365B8)
	lwc1    $f10, %lo(player_803365B8)($at)
	swc1    $f10, 0x0024($sp)
	b       55$
	nop
45$:
	lui     $at, %hi(player_803365BC)
	lwc1    $f16, %lo(player_803365BC)($at)
	swc1    $f16, 0x0024($sp)
	b       55$
	nop
50$:
	lui     $at, %hi(player_803365C0)
	lwc1    $f18, %lo(player_803365C0)($at)
	swc1    $f18, 0x0024($sp)
	b       55$
	nop
55$:
	lw      $t1, 0x0028($sp)
	lwc1    $f6, 0x0024($sp)
	move    $v0, $0
	lw      $t2, 0x0068($t1)
	lwc1    $f4, 0x0020($t2)
	c.le.s  $f4, $f6
	nop
	bc1f    65$
	nop
	li      $v0, 0x0001
65$:
	b       69$
	nop
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_80251E24:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	bnez    $v0, 55$
	nop
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	move    $s0, $v0
	li      $at, 0x0013
	beq     $s0, $at, 24$
	nop
	li      $at, 0x0014
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0015
	beq     $s0, $at, 39$
	nop
	b       34$
	nop
24$:
	lui     $at, %hi(player_803365C4)
	lwc1    $f4, %lo(player_803365C4)($at)
	swc1    $f4, 0x002C($sp)
	b       44$
	nop
29$:
	lui     $at, %hi(player_803365C8)
	lwc1    $f6, %lo(player_803365C8)($at)
	swc1    $f6, 0x002C($sp)
	b       44$
	nop
34$:
	lui     $at, %hi(player_803365CC)
	lwc1    $f8, %lo(player_803365CC)($at)
	swc1    $f8, 0x002C($sp)
	b       44$
	nop
39$:
	lui     $at, %hi(player_803365D0)
	lwc1    $f10, %lo(player_803365D0)($at)
	swc1    $f10, 0x002C($sp)
	b       44$
	nop
44$:
	lw      $t6, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	move    $t8, $0
	lw      $t7, 0x0068($t6)
	lwc1    $f16, 0x0020($t7)
	c.le.s  $f16, $f18
	nop
	bc1f    54$
	nop
	li      $t8, 0x0001
54$:
	sw      $t8, 0x0028($sp)
55$:
	b       59$
	lw      $v0, 0x0028($sp)
	b       59$
	nop
59$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl player_80251F24
player_80251F24:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0028($sp)
	lh      $t8, 0x002E($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x002E($t6)
	lwc1    $f6, 0x0030($sp)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	lh      $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	lh      $t4, 0x002E($t3)
	lwc1    $f16, 0x0030($sp)
	addu    $t6, $t4, $t5
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f16, 0x0044($t0)
	li      $at, 0x42C80000
	add.s   $f12, $f4, $f6
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($t0)
	add.s   $f4, $f16, $f18
	addiu   $a3, $sp, 0x0024
	add.s   $f14, $f8, $f10
	mfc1    $a2, $f4
	jal     bg_check_ground
	nop
	swc1    $f0, 0x0020($sp)
	b       51$
	lwc1    $f0, 0x0020($sp)
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80252000
player_80252000:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	lw      $t6, 0x0038($sp)
	lh      $t8, 0x003E($sp)
	lui     $at, %hi(math_sin)
	lh      $t7, 0x002E($t6)
	addu    $t9, $t7, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t3, 0x0038($sp)
	lh      $t5, 0x003E($sp)
	lui     $at, %hi(math_cos)
	lh      $t4, 0x002E($t3)
	addu    $t6, $t4, $t5
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x40A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x003C($t0)
	lwc1    $f16, 0x0044($t0)
	li      $at, 0x42C80000
	add.s   $f12, $f4, $f6
	mtc1    $at, $f10
	lwc1    $f8, 0x0040($t0)
	add.s   $f4, $f16, $f18
	addiu   $a3, $sp, 0x0034
	add.s   $f14, $f8, $f10
	mfc1    $a2, $f4
	jal     bg_check_ground
	nop
	swc1    $f0, 0x0030($sp)
	lw      $t1, 0x0038($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f6, 0x003C($t1)
	lwc1    $f18, 0x0044($t1)
	li      $at, 0x42C80000
	sub.s   $f12, $f6, $f8
	mtc1    $at, $f16
	lwc1    $f10, 0x0040($t1)
	sub.s   $f6, $f18, $f4
	addiu   $a3, $sp, 0x0034
	add.s   $f14, $f10, $f16
	mfc1    $a2, $f6
	jal     bg_check_ground
	nop
	swc1    $f0, 0x002C($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f10, 0x0040($t2)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($sp)
	lw      $t3, 0x0038($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0040($t3)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f18, $f16, $f16
	c.lt.s  $f10, $f18
	nop
	bc1f    91$
	nop
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	b       96$
	sh      $v0, 0x0022($sp)
91$:
	li      $at, 0x40A00000
	mtc1    $at, $f12
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x0022($sp)
96$:
	b       100$
	lh      $v0, 0x0022($sp)
	b       100$
	nop
100$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl player_802521A0
player_802521A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0090($t8)
	lw      $t0, 0x0024($t9)
	lbu     $t1, 0x0000($t0)
	sw      $t1, 0x0018($sp)
	lw      $t2, 0x001C($sp)
	li.u    $at, 0x0C000227
	li.l    $at, 0x0C000227
	bne     $t2, $at, 32$
	nop
	jal     aud_clr_mute
	li      $a0, 0x0002
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	li      $at, -0x2001
	and     $t4, $t3, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t4, %lo(camera_8033C848)($at)
	lw      $t5, 0x0020($sp)
	li      $a1, -0x0001
	li      $a2, 0x0001
	lw      $t6, 0x0090($t5)
	jal     camera_80286188
	lw      $a0, 0x0024($t6)
	b       39$
	nop
32$:
	lw      $t7, 0x001C($sp)
	li.u    $at, 0x0C000203
	li.l    $at, 0x0C000203
	bne     $t7, $at, 39$
	nop
	jal     aud_clr_mute
	li      $a0, 0x0002
39$:
	lw      $t8, 0x001C($sp)
	andi    $t9, $t8, 0x6000
	bnez    $t9, 57$
	nop
	lw      $t0, 0x0018($sp)
	li      $at, 0x0003
	beq     $t0, $at, 50$
	nop
	li      $at, 0x0008
	bne     $t0, $at, 57$
	nop
50$:
	lw      $t1, 0x0020($sp)
	li      $a2, 0x0001
	lw      $t2, 0x0090($t1)
	lw      $t3, 0x0024($t2)
	move    $a0, $t3
	jal     camera_80286188
	lbu     $a1, 0x0001($t3)
57$:
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_8025229C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x002E($t6)
	lw      $t8, 0x0088($t6)
	sw      $t7, 0x0110($t8)
	lw      $t9, 0x0028($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    64$
	nop
	lw      $t0, 0x0028($sp)
	li      $at, 0x8000
	lh      $t1, 0x0074($t0)
	addu    $t2, $t1, $at
	sh      $t2, 0x0026($sp)
	lw      $t3, 0x0028($sp)
	lh      $t5, 0x0026($sp)
	lh      $t4, 0x002E($t3)
	subu    $t6, $t4, $t5
	sh      $t6, 0x0024($sp)
	lhu     $t7, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lui     $at, %hi(math_sin)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f8, %lo(math_sin)($at)
	lwc1    $f10, 0x0054($t0)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0020($sp)
	lhu     $t1, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(math_cos)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	lwc1    $f4, 0x0054($t4)
	li      $at, 0x3F400000
	mtc1    $at, $f8
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f4, 0x001C($sp)
	mul.s   $f18, $f16, $f16
	nop
	mul.s   $f6, $f4, $f4
	jal     sqrtf
	add.s   $f12, $f18, $f6
	lw      $t5, 0x0028($sp)
	swc1    $f0, 0x0054($t5)
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0020($sp)
	lh      $t6, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	addu    $t7, $v0, $t6
	sh      $t7, 0x002E($t8)
64$:
	li.u    $a1, 0x03000885
	li.l    $a1, 0x03000885
	lw      $a0, 0x0028($sp)
	jal     player_80253178
	move    $a2, $0
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802523C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     physics_80255080
	nop
	lw      $t6, 0x0018($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f4, 0x0054($t6)
	add.s   $f16, $f0, $f10
	mul.s   $f8, $f4, $f6
	add.s   $f18, $f16, $f8
	swc1    $f18, 0x004C($t6)
	lw      $t7, 0x0018($sp)
	lbu     $t8, 0x00B4($t7)
	bnez    $t8, 26$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t7)
	c.lt.s  $f6, $f4
	nop
	bc1f    32$
	nop
26$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t9)
	mul.s   $f8, $f10, $f16
	swc1    $f8, 0x004C($t9)
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80252460:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lbu     $t7, 0x00B4($t6)
	bnez    $t7, 17$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    29$
	nop
17$:
	lw      $t8, 0x002C($sp)
	li.u    $at, 0x03000881
	li.l    $at, 0x03000881
	beq     $t8, $at, 26$
	nop
	li.u    $at, 0x108008A4
	li.l    $at, 0x108008A4
	bne     $t8, $at, 29$
	nop
26$:
	li.u    $t9, 0x03000880
	li.l    $t9, 0x03000880
	sw      $t9, 0x002C($sp)
29$:
	lw      $s0, 0x002C($sp)
	li.u    $at, 0x010208B5
	li.l    $at, 0x010208B5
	sltu    $at, $s0, $at
	bnez    $at, 81$
	nop
	li.u    $at, 0x018008AD
	li.l    $at, 0x018008AD
	sltu    $at, $s0, $at
	bnez    $at, 67$
	nop
	li.u    $at, 0x0281089B
	li.l    $at, 0x0281089B
	sltu    $at, $s0, $at
	bnez    $at, 57$
	nop
	li.u    $at, 0xFCFFF780
	li.l    $at, 0xFCFFF780
	addu    $t0, $s0, $at
	sltiu   $at, $t0, 0x0021
	beqz    $at, L802529A4
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(player_803365D4)
	addu    $at, $at, $t0
	lw      $t0, %lo(player_803365D4)($at)
	jr      $t0
	nop
57$:
	li.u    $at, 0x0188088A
	li.l    $at, 0x0188088A
	beq     $s0, $at, 250$
	nop
	li.u    $at, 0x0281089A
	li.l    $at, 0x0281089A
	beq     $s0, $at, 170$
	nop
	b       L802529A4
	nop
67$:
	li.u    $at, 0x010208B7
	li.l    $at, 0x010208B7
	beq     $s0, $at, 238$
	nop
	li.u    $at, 0x018008AA
	li.l    $at, 0x018008AA
	beq     $s0, $at, 313$
	nop
	li.u    $at, 0x018008AC
	li.l    $at, 0x018008AC
	beq     $s0, $at, 331$
	nop
	b       L802529A4
	nop
81$:
	li.u    $at, 0x01000882
	li.l    $at, 0x01000882
	beq     $s0, $at, 133$
	nop
	li.u    $at, 0x01000883
	li.l    $at, 0x01000883
	beq     $s0, $at, 119$
	nop
	li.u    $at, 0x01000887
	li.l    $at, 0x01000887
	beq     $s0, $at, 212$
	nop
	li.u    $at, 0x01000889
	li.l    $at, 0x01000889
	beq     $s0, $at, 151$
	nop
	li.u    $at, 0x010008A3
	li.l    $at, 0x010008A3
	beq     $s0, $at, 151$
	nop
	li.u    $at, 0x010208B4
	li.l    $at, 0x010208B4
	beq     $s0, $at, 160$
	nop
	b       L802529A4
	nop
.globl L8025260C
L8025260C:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42500000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(player_80336658)
	lwc1    $f10, %lo(player_80336658)($at)
	lwc1    $f8, 0x0054($t1)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t1)
	b       L802529A4
	nop
119$:
	lw      $t3, 0x0028($sp)
	li      $t2, -0x0001
	lw      $t4, 0x0088($t3)
	sh      $t2, 0x0038($t4)
	li      $at, 0xC1800000
	mtc1    $at, $f18
	lw      $t5, 0x0028($sp)
	swc1    $f18, 0x0054($t5)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	b       L802529A4
	nop
133$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x428A0000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t7, 0x0028($sp)
	lui     $at, %hi(player_8033665C)
	lwc1    $f6, %lo(player_8033665C)($at)
	lwc1    $f4, 0x0054($t7)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t7)
	b       L802529A4
	nop
.globl L802526A4
L802526A4:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42A40000
	jal     player_802523C8
	li      $a2, 0x0000
	b       L802529A4
	nop
151$:
	lw      $t6, 0x0030($sp)
	bnez    $t6, 158$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x0000
158$:
	b       L802529A4
	nop
160$:
	li      $at, 0x41FC0000
	mtc1    $at, $f10
	lw      $t8, 0x0028($sp)
	swc1    $f10, 0x004C($t8)
	li      $at, 0x41000000
	mtc1    $at, $f16
	lw      $t9, 0x0028($sp)
	swc1    $f16, 0x0054($t9)
	b       L802529A4
	nop
170$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	b       L802529A4
	nop
.globl L80252720
L80252720:
	lw      $t1, 0x0028($sp)
	li      $t0, -0x0001
	lw      $t3, 0x0088($t1)
	sh      $t0, 0x0038($t3)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(player_80336660)
	lwc1    $f4, %lo(player_80336660)($at)
	lwc1    $f18, 0x0054($t2)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0054($t2)
	b       L802529A4
	nop
.globl L80252760
L80252760:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t4, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t4)
	c.lt.s  $f8, $f10
	nop
	bc1f    208$
	nop
	li      $at, 0x41C00000
	mtc1    $at, $f16
	lw      $t5, 0x0028($sp)
	swc1    $f16, 0x0054($t5)
208$:
	lw      $t7, 0x0028($sp)
	sb      $0, 0x002A($t7)
	b       L802529A4
	nop
212$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42780000
	jal     player_802523C8
	li      $a2, 0x0000
	li      $at, 0x41000000
	mtc1    $at, $f18
	lw      $t6, 0x0028($sp)
	swc1    $f18, 0x0054($t6)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0024($t8)
	sh      $t9, 0x002E($t8)
	b       L802529A4
	nop
.globl L802527E4
L802527E4:
	lw      $t0, 0x0028($sp)
	li      $t1, -0x0001
	lw      $t3, 0x0088($t0)
	sh      $t1, 0x0038($t3)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x42280000
	jal     player_802523C8
	li      $a2, 0x3E800000
	lw      $t4, 0x0028($sp)
	li      $t2, -0x2000
	sh      $t2, 0x002C($t4)
	b       L802529A4
	nop
238$:
	li      $at, 0x42A80000
	mtc1    $at, $f4
	lw      $t5, 0x0028($sp)
	swc1    $f4, 0x004C($t5)
	lw      $t7, 0x0030($sp)
	bnez    $t7, 248$
	nop
	mtc1    $0, $f6
	lw      $t6, 0x0028($sp)
	swc1    $f6, 0x0054($t6)
248$:
	b       L802529A4
	nop
250$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x41700000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	li      $at, 0x42400000
	mtc1    $at, $f18
	add.s   $f16, $f8, $f10
	c.lt.s  $f18, $f16
	swc1    $f16, 0x0024($sp)
	bc1f    265$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0024($sp)
265$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	lw      $a1, 0x0024($sp)
	b       L802529A4
	nop
.globl L80252898
L80252898:
	lw      $t0, 0x0028($sp)
	li      $t8, -0x0001
	lw      $t1, 0x0088($t0)
	sh      $t8, 0x0038($t1)
	lw      $a0, 0x0028($sp)
	li      $a1, 0x41F00000
	jal     player_802523C8
	li      $a2, 0x0000
	lw      $t3, 0x0028($sp)
	li      $at, 0x41800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0054($t3)
	c.lt.s  $f8, $f6
	nop
	bc1f    289$
	nop
	lw      $t2, 0x0088($t3)
	b       293$
	sw      $0, 0x0110($t2)
289$:
	lw      $t5, 0x0028($sp)
	li      $t4, 0x0001
	lw      $t7, 0x0088($t5)
	sw      $t4, 0x0110($t7)
293$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t6)
	li      $at, 0x42400000
	mtc1    $at, $f6
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($t6)
	lw      $t9, 0x0028($sp)
	lwc1    $f4, 0x0054($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    311$
	nop
	li      $at, 0x42400000
	mtc1    $at, $f8
	lw      $t0, 0x0028($sp)
	swc1    $f8, 0x0054($t0)
311$:
	b       L802529A4
	nop
313$:
	li      $at, 0x41400000
	mtc1    $at, $f10
	lw      $t8, 0x0028($sp)
	swc1    $f10, 0x004C($t8)
	lw      $t1, 0x0028($sp)
	li      $at, 0x42000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t1)
	c.lt.s  $f16, $f18
	nop
	bc1f    329$
	nop
	li      $at, 0x42000000
	mtc1    $at, $f4
	lw      $t3, 0x0028($sp)
	swc1    $f4, 0x0054($t3)
329$:
	b       L802529A4
	nop
331$:
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lw      $t2, 0x0028($sp)
	swc1    $f6, 0x004C($t2)
	b       L802529A4
	nop
.globl L802529A4
L802529A4:
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x0040($t5)
	swc1    $f8, 0x00BC($t5)
	lw      $t4, 0x0028($sp)
	lw      $t7, 0x0004($t4)
	ori     $t6, $t7, 0x0100
	sw      $t6, 0x0004($t4)
	b       348$
	lw      $v0, 0x002C($sp)
	b       348$
	nop
348$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802529E4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	jal     player_8025177C
	lw      $a0, 0x0030($sp)
	sh      $v0, 0x002E($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x0054($t6)
	swc1    $f4, 0x0028($sp)
	lw      $t7, 0x0030($sp)
	li      $at, 0x41000000
	mtc1    $at, $f8
	lwc1    $f6, 0x0020($t7)
	c.le.s  $f6, $f8
	nop
	bc1f    22$
	nop
	b       26$
	swc1    $f6, 0x0024($sp)
22$:
	li      $at, 0x41000000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0024($sp)
26$:
	lw      $s0, 0x0034($sp)
	li      $at, 0x0050
	beq     $s0, $at, 87$
	nop
	li      $at, 0x0051
	beq     $s0, $at, 101$
	nop
	li      $at, 0x0442
	beq     $s0, $at, 65$
	nop
	li.u    $at, 0x04000440
	li.l    $at, 0x04000440
	beq     $s0, $at, 42$
	nop
	b       115$
	nop
42$:
	lh      $t8, 0x002E($sp)
	li      $at, 0x0013
	beq     $t8, $at, 60$
	nop
	mtc1    $0, $f16
	lwc1    $f18, 0x0028($sp)
	c.le.s  $f16, $f18
	nop
	bc1f    60$
	nop
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    60$
	nop
	lwc1    $f8, 0x0024($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f8, 0x0054($t9)
60$:
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0088($t0)
	sw      $0, 0x0110($t1)
	b       115$
	nop
65$:
	mtc1    $0, $f6
	lwc1    $f10, 0x0028($sp)
	c.le.s  $f6, $f10
	nop
	bc1f    85$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0024($sp)
	div.s   $f4, $f16, $f18
	c.lt.s  $f10, $f4
	nop
	bc1f    85$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x0024($sp)
	lw      $t2, 0x0030($sp)
	div.s   $f16, $f8, $f6
	swc1    $f16, 0x0054($t2)
85$:
	b       115$
	nop
87$:
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, 96$
	nop
	li.u    $t3, 0x00840452
	li.l    $t3, 0x00840452
	b       99$
	sw      $t3, 0x0034($sp)
96$:
	li.u    $t4, 0x008C0453
	li.l    $t4, 0x008C0453
	sw      $t4, 0x0034($sp)
99$:
	b       115$
	nop
101$:
	lw      $a0, 0x0030($sp)
	jal     player_80251B54
	move    $a1, $0
	beqz    $v0, 110$
	nop
	li.u    $t5, 0x00840454
	li.l    $t5, 0x00840454
	b       113$
	sw      $t5, 0x0034($sp)
110$:
	li.u    $t6, 0x008C0455
	li.l    $t6, 0x008C0455
	sw      $t6, 0x0034($sp)
113$:
	b       115$
	nop
115$:
	b       119$
	lw      $v0, 0x0034($sp)
	b       119$
	nop
119$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

player_80252BD4:
	sw      $a2, 0x0008($sp)
	li      $at, 0x44F8
	beq     $a1, $at, 7$
	nop
	li      $at, 0x44F9
	bne     $a1, $at, 11$
	nop
7$:
	li      $at, 0x42000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x004C($a0)
11$:
	b       15$
	move    $v0, $a1
	b       15$
	nop
15$:
	jr      $ra
	nop

player_80252C18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x1904
	beq     $s0, $at, 30$
	nop
	li      $at, 0x1923
	beq     $s0, $at, 24$
	nop
	li      $at, 0x1924
	beq     $s0, $at, 35$
	nop
	li      $at, 0x192B
	beq     $s0, $at, 40$
	nop
	li      $at, 0x192C
	beq     $s0, $at, 40$
	nop
	b       46$
	nop
24$:
	li      $at, 0x42500000
	mtc1    $at, $f4
	lw      $t6, 0x0028($sp)
	swc1    $f4, 0x004C($t6)
	b       46$
	nop
30$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x0000
	b       46$
	nop
35$:
	lw      $a0, 0x0028($sp)
	jal     player_80251708
	li      $a1, 0x40000000
	b       46$
	nop
40$:
	li      $at, 0x42800000
	mtc1    $at, $f6
	lw      $t7, 0x0028($sp)
	swc1    $f6, 0x004C($t7)
	b       46$
	nop
46$:
	b       50$
	lw      $v0, 0x002C($sp)
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl pl_set_state
pl_set_state:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x002C($sp)
	li      $at, 0x0040
	andi    $t6, $s0, 0x01C0
	move    $s0, $t6
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 30$
	nop
	li      $at, 0x00C0
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 44$
	nop
	b       51$
	nop
23$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_802529E4
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       51$
	nop
30$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252460
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       51$
	nop
37$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252BD4
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       51$
	nop
44$:
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     player_80252C18
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	b       51$
	nop
51$:
	lw      $t7, 0x0028($sp)
	li.u    $at, 0xFFFCFFFF
	li.l    $at, 0xFFFCFFFF
	lw      $t8, 0x0004($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x000C($t0)
	andi    $t2, $t1, 0x0800
	bnez    $t2, 68$
	nop
	lw      $t3, 0x0028($sp)
	li.u    $at, 0xFFFBFFFF
	li.l    $at, 0xFFFBFFFF
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x0004($t3)
68$:
	lw      $t6, 0x0028($sp)
	lw      $t8, 0x000C($t6)
	sw      $t8, 0x0010($t6)
	lw      $t9, 0x002C($sp)
	lw      $t7, 0x0028($sp)
	sw      $t9, 0x000C($t7)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	sw      $t0, 0x001C($t1)
	lw      $t2, 0x0028($sp)
	sh      $0, 0x0018($t2)
	lw      $t4, 0x0028($sp)
	sh      $0, 0x001A($t4)
	b       85$
	li      $v0, 0x0001
	b       85$
	nop
85$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80252E5C
player_80252E5C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t6)
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x007C($t7)
	bnez    $t8, 24$
	nop
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0476
	jal     pl_set_state
	move    $a2, $0
	b       140$
	nop
	b       30$
	nop
24$:
	lw      $a0, 0x0028($sp)
	li      $a1, 0x0477
	jal     pl_set_state
	move    $a2, $0
	b       140$
	nop
30$:
	jal     player_80251E24
	lw      $a0, 0x0028($sp)
	beqz    $v0, 38$
	nop
	jal     player_8025229C
	lw      $a0, 0x0028($sp)
	b       134$
	nop
38$:
	lw      $t9, 0x0028($sp)
	lbu     $t0, 0x002B($t9)
	beqz    $t0, 45$
	nop
	lbu     $t1, 0x00B4($t9)
	beqz    $t1, 52$
	nop
45$:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       134$
	nop
52$:
	lw      $t2, 0x0028($sp)
	li.u    $at, 0x04000470
	li.l    $at, 0x04000470
	lw      $s0, 0x0010($t2)
	beq     $s0, $at, 72$
	nop
	li.u    $at, 0x04000471
	li.l    $at, 0x04000471
	beq     $s0, $at, 79$
	nop
	li.u    $at, 0x04000472
	li.l    $at, 0x04000472
	beq     $s0, $at, 93$
	nop
	li.u    $at, 0x0C000233
	li.l    $at, 0x0C000233
	beq     $s0, $at, 86$
	nop
	b       127$
	nop
72$:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       134$
	nop
79$:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       134$
	nop
86$:
	li.u    $a1, 0x03000881
	li.l    $a1, 0x03000881
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       134$
	nop
93$:
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0004($t3)
	andi    $t5, $t4, 0x0008
	beqz    $t5, 105$
	nop
	li.u    $a1, 0x03000894
	li.l    $a1, 0x03000894
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       125$
	nop
105$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x41A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t6)
	c.lt.s  $f10, $f8
	nop
	bc1f    120$
	nop
	li.u    $a1, 0x01000882
	li.l    $a1, 0x01000882
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       125$
	nop
120$:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
125$:
	b       134$
	nop
127$:
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0028($sp)
	jal     pl_set_state
	move    $a2, $0
	b       134$
	nop
134$:
	lw      $t7, 0x0028($sp)
	sb      $0, 0x002B($t7)
	b       140$
	li      $v0, 0x0001
	b       140$
	nop
140$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_802530A0
player_802530A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	li      $at, 0x41300000
	mtc1    $at, $f6
	lwc1    $f4, 0x00C0($t8)
	c.le.s  $f6, $f4
	nop
	bc1f    34$
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, 28$
	nop
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0476
	jal     pl_set_state
	move    $a2, $0
	b       50$
	nop
	b       34$
	nop
28$:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0477
	jal     pl_set_state
	move    $a2, $0
	b       50$
	nop
34$:
	jal     player_80251E24
	lw      $a0, 0x0020($sp)
	beqz    $v0, 42$
	nop
	jal     player_8025229C
	lw      $a0, 0x0020($sp)
	b       46$
	nop
42$:
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     pl_set_state
	lw      $a2, 0x0028($sp)
46$:
	b       50$
	li      $v0, 0x0001
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl player_80253178
player_80253178:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     collision_8024C894
	lw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     pl_set_state
	lw      $a2, 0x0020($sp)
	b       15$
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_802531C4
player_802531C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lh      $t6, 0x0026($sp)
	lw      $t7, 0x0018($sp)
	sb      $t6, 0x00B2($t7)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     pl_set_state
	lw      $a2, 0x0020($sp)
	b       17$
	nop
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253218
player_80253218:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x03000880
	li.l    $a1, 0x03000880
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       54$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x0100088C
	li.l    $a1, 0x0100088C
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       54$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 39$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       54$
	nop
39$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 50$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0050
	jal     pl_set_state
	move    $a2, $0
	b       54$
	nop
50$:
	b       54$
	move    $v0, $0
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253300
player_80253300:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lhu     $t7, 0x0002($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 15$
	nop
	li.u    $a1, 0x030008A0
	li.l    $a1, 0x030008A0
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       53$
	nop
15$:
	lw      $t9, 0x0018($sp)
	lhu     $t0, 0x0002($t9)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 27$
	nop
	li.u    $a1, 0x010008A1
	li.l    $a1, 0x010008A1
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       53$
	nop
27$:
	lw      $t2, 0x0018($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0001
	beqz    $t4, 38$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     pl_set_state
	move    $a2, $0
	b       53$
	nop
38$:
	lw      $t5, 0x0018($sp)
	lhu     $t6, 0x0002($t5)
	andi    $t7, $t6, 0x0008
	beqz    $t7, 49$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0051
	jal     pl_set_state
	move    $a2, $0
	b       53$
	nop
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

.globl player_802533E4
player_802533E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $a2, 0x0001
	lw      $t7, 0x0090($t6)
	lw      $t8, 0x0024($t7)
	move    $a0, $t8
	jal     camera_80286188
	lbu     $a1, 0x0001($t8)
	lw      $a0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x007C($t9)
	bnez    $t0, 29$
	nop
	li.u    $a1, 0x04000440
	li.l    $a1, 0x04000440
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       37$
	nop
	b       35$
	nop
29$:
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0442
	jal     pl_set_state
	move    $a2, $0
	b       37$
	nop
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl player_80253488
player_80253488:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x004C($t7)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x004C($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0076($t8)
	addiu   $t0, $t9, -0x0064
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0040($t8)
	lw      $t1, 0x0018($sp)
	sh      $0, 0x0030($t1)
	lw      $a0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lw      $t2, 0x0018($sp)
	li      $at, 0x00080000
	lw      $t3, 0x000C($t2)
	and     $t4, $t3, $at
	bnez    $t4, 38$
	nop
	lw      $t5, 0x0018($sp)
	sh      $0, 0x002C($t5)
38$:
	lw      $t6, 0x0018($sp)
	li      $at, 0x0008
	lw      $t7, 0x0090($t6)
	lw      $t9, 0x0024($t7)
	lbu     $t0, 0x0000($t9)
	beq     $t0, $at, 51$
	nop
	lw      $t8, 0x0018($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t1, 0x0090($t8)
	jal     camera_80286188
	lw      $a0, 0x0024($t1)
51$:
	li.u    $a1, 0x300022E2
	li.l    $a1, 0x300022E2
	lw      $a0, 0x0018($sp)
	jal     pl_set_state
	move    $a2, $0
	b       60$
	nop
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253588:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00FF
	lbu     $t7, 0x00B4($t6)
	beq     $t7, $at, 96$
	nop
	lw      $t8, 0x0018($sp)
	lbu     $t9, 0x00B4($t8)
	bnez    $t9, 21$
	nop
	lw      $t0, 0x0018($sp)
	li      $a1, 0x3F800000
	li      $a2, 0x3F800000
	lw      $a0, 0x0088($t0)
	li      $a3, 0x3F800000
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
	b       96$
	nop
21$:
	lw      $t1, 0x0018($sp)
	lbu     $t2, 0x00B4($t1)
	slti    $at, $t2, 0x0011
	beqz    $at, 83$
	nop
	lw      $t3, 0x0018($sp)
	lbu     $t4, 0x00B4($t3)
	addiu   $t5, $t4, -0x0001
	sb      $t5, 0x00B4($t3)
	lw      $t6, 0x0018($sp)
	lui     $t9, %hi(player_8032DACC+1*15)
	lbu     $t7, 0x00B4($t6)
	subu    $t8, $0, $t7
	addu    $t9, $t9, $t8
	lbu     $t9, %lo(player_8032DACC+1*15)($t9)
	mtc1    $t9, $f4
	bgez    $t9, 43$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
43$:
	lui     $at, %hi(player_80336664)
	lwc1    $f10, %lo(player_80336664)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f18
	mul.s   $f16, $f6, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t0, 0x0088($t6)
	div.s   $f4, $f16, $f18
	sub.s   $f6, $f8, $f4
	swc1    $f6, 0x0030($t0)
	lw      $t1, 0x0018($sp)
	lui     $t5, %hi(player_8032DACC+1*15)
	lbu     $t2, 0x00B4($t1)
	subu    $t4, $0, $t2
	addu    $t5, $t5, $t4
	lbu     $t5, %lo(player_8032DACC+1*15)($t5)
	mtc1    $t5, $f10
	bgez    $t5, 67$
	cvt.s.w $f16, $f10
	li      $at, 0x4F800000
	mtc1    $at, $f18
	nop
	add.s   $f16, $f16, $f18
67$:
	lui     $at, %hi(player_80336668)
	lwc1    $f8, %lo(player_80336668)($at)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	mul.s   $f4, $f16, $f8
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0088($t1)
	div.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x002C($t3)
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0088($t7)
	lwc1    $f8, 0x002C($t8)
	b       96$
	swc1    $f8, 0x0034($t8)
83$:
	lw      $t9, 0x0018($sp)
	lbu     $t6, 0x00B4($t9)
	addiu   $t0, $t6, -0x0001
	sb      $t0, 0x00B4($t9)
	lw      $t2, 0x0018($sp)
	li.u    $a1, 0x3FB33333
	li.l    $a1, 0x3FB33333
	lw      $a0, 0x0088($t2)
	li.u    $a2, 0x3ECCCCCD
	li.l    $a2, 0x3ECCCCCD
	addu    $a3, $a1, $0
	jal     vecf_set
	addiu   $a0, $a0, 0x002C
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253720:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(debug_mem)
	lb      $t6, %lo(debug_mem)($t6)
	beqz    $t6, 63$
	nop
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0068($t7)
	lwc1    $f4, 0x001C($t8)
	lwc1    $f8, 0x0024($t8)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x002C($sp)
	lw      $t9, 0x0030($sp)
	lw      $t0, 0x0068($t9)
	lwc1    $f16, 0x0020($t0)
	swc1    $f16, 0x0028($sp)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	sll     $s0, $v0, 16
	sra     $t1, $s0, 16
	move    $s0, $t1
	mtc1    $s0, $f18
	li      $at, 0x43340000
	mtc1    $at, $f8
	cvt.s.w $f4, $f18
	li      $at, 0x47000000
	mtc1    $at, $f10
	la.u    $a2, str_player_ang
	la.l    $a2, str_player_ang
	li      $a0, 0x00D2
	mul.s   $f6, $f4, $f8
	li      $a1, 0x0058
	div.s   $f16, $f6, $f10
	trunc.w.s $f18, $f16
	mfc1    $a3, $f18
	jal     dprintf
	nop
	lw      $t3, 0x0030($sp)
	la.u    $a2, str_player_spd
	la.l    $a2, str_player_spd
	lwc1    $f4, 0x0054($t3)
	li      $a0, 0x00D2
	li      $a1, 0x0048
	trunc.w.s $f8, $f4
	mfc1    $a3, $f8
	jal     dprintf
	nop
	lw      $t5, 0x0030($sp)
	la.u    $a2, str_player_sta
	la.l    $a2, str_player_sta
	lw      $a3, 0x000C($t5)
	li      $a0, 0x00D2
	li      $a1, 0x0038
	andi    $t6, $a3, 0x01FF
	jal     dprintf
	move    $a3, $t6
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

player_80253838:
	lw      $t6, 0x009C($a0)
	lhu     $t7, 0x0012($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 8$
	nop
	lhu     $t9, 0x0002($a0)
	ori     $t0, $t9, 0x0002
	sh      $t0, 0x0002($a0)
8$:
	lw      $t1, 0x009C($a0)
	lhu     $t2, 0x0010($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, 16$
	nop
	lhu     $t4, 0x0002($a0)
	ori     $t5, $t4, 0x0080
	sh      $t5, 0x0002($a0)
16$:
	lbu     $t6, 0x00B4($a0)
	bnez    $t6, 43$
	nop
	lw      $t7, 0x009C($a0)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x4000
	beqz    $t9, 27$
	nop
	lhu     $t0, 0x0002($a0)
	ori     $t1, $t0, 0x2000
	sh      $t1, 0x0002($a0)
27$:
	lw      $t2, 0x009C($a0)
	lhu     $t3, 0x0010($t2)
	andi    $t4, $t3, 0x2000
	beqz    $t4, 35$
	nop
	lhu     $t5, 0x0002($a0)
	ori     $t6, $t5, 0x4000
	sh      $t6, 0x0002($a0)
35$:
	lw      $t7, 0x009C($a0)
	lhu     $t8, 0x0012($t7)
	andi    $t9, $t8, 0x2000
	beqz    $t9, 43$
	nop
	lhu     $t0, 0x0002($a0)
	ori     $t1, $t0, 0x8000
	sh      $t1, 0x0002($a0)
43$:
	lhu     $t2, 0x0002($a0)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 49$
	nop
	b       56$
	sb      $0, 0x0028($a0)
49$:
	lbu     $t4, 0x0028($a0)
	slti    $at, $t4, 0x00FF
	beqz    $at, 56$
	nop
	lbu     $t5, 0x0028($a0)
	addiu   $t6, $t5, 0x0001
	sb      $t6, 0x0028($a0)
56$:
	lhu     $t7, 0x0002($a0)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 62$
	nop
	b       69$
	sb      $0, 0x0029($a0)
62$:
	lbu     $t9, 0x0029($a0)
	slti    $at, $t9, 0x00FF
	beqz    $at, 69$
	nop
	lbu     $t0, 0x0029($a0)
	addiu   $t1, $t0, 0x0001
	sb      $t1, 0x0029($a0)
69$:
	jr      $ra
	nop
	jr      $ra
	nop

player_8025395C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x009C($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	li      $at, 0x42800000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t8)
	mtc1    $at, $f16
	div.s   $f8, $f4, $f6
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lw      $t9, 0x0020($sp)
	lbu     $t0, 0x00B4($t9)
	bnez    $t0, 27$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	div.s   $f8, $f4, $f6
	b       33$
	swc1    $f8, 0x0020($t1)
27$:
	li      $at, 0x41000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($t2)
33$:
	lw      $t3, 0x0020($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0020($t3)
	c.lt.s  $f6, $f4
	nop
	bc1f    56$
	nop
	lw      $t4, 0x001C($sp)
	lwc1    $f12, 0x0008($t4)
	lwc1    $f14, 0x0004($t4)
	jal     ATAN2
	neg.s   $f12, $f12
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0090($t5)
	lw      $t7, 0x0024($t6)
	lh      $t8, 0x0002($t7)
	addu    $t9, $v0, $t8
	sh      $t9, 0x0024($t5)
	lw      $t0, 0x0020($sp)
	lhu     $t1, 0x0002($t0)
	ori     $t2, $t1, 0x0001
	b       59$
	sh      $t2, 0x0002($t0)
56$:
	lw      $t3, 0x0020($sp)
	lh      $t4, 0x002E($t3)
	sh      $t4, 0x0024($t3)
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80253A60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $a3, 0x42700000
	addiu   $a0, $t6, 0x003C
	addiu   $a1, $t6, 0x0040
	addiu   $a2, $t6, 0x0044
	jal     bg_hit_wall
	swc1    $f4, 0x0010($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x41C00000
	mtc1    $at, $f6
	li      $a3, 0x41F00000
	addiu   $a0, $t7, 0x003C
	addiu   $a1, $t7, 0x0040
	addiu   $a2, $t7, 0x0044
	jal     bg_hit_wall
	swc1    $f6, 0x0010($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f12, 0x003C($t8)
	lwc1    $f14, 0x0040($t8)
	lw      $a2, 0x0044($t8)
	jal     bg_check_ground
	addiu   $a3, $t8, 0x0068
	lw      $t9, 0x0028($sp)
	swc1    $f0, 0x0070($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0068($t0)
	bnez    $t1, 46$
	nop
	lw      $t2, 0x0028($sp)
	lw      $a1, 0x0088($t2)
	addiu   $a0, $t2, 0x003C
	jal     vecf_cpy
	addiu   $a1, $a1, 0x0020
	lw      $t3, 0x0028($sp)
	lwc1    $f12, 0x003C($t3)
	lwc1    $f14, 0x0040($t3)
	lw      $a2, 0x0044($t3)
	jal     bg_check_ground
	addiu   $a3, $t3, 0x0068
	lw      $t4, 0x0028($sp)
	swc1    $f0, 0x0070($t4)
46$:
	lw      $t5, 0x0028($sp)
	addiu   $a0, $t5, 0x003C
	lw      $a1, 0x0070($t5)
	jal     player_80251AFC
	addiu   $a2, $t5, 0x0064
	lw      $t6, 0x0028($sp)
	swc1    $f0, 0x006C($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f12, 0x003C($t7)
	jal     bg_check_gas
	lwc1    $f14, 0x0044($t7)
	swc1    $f0, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f12, 0x003C($t8)
	jal     bg_check_water
	lwc1    $f14, 0x0044($t8)
	trunc.w.s $f8, $f0
	lw      $t1, 0x0028($sp)
	mfc1    $t0, $f8
	nop
	sh      $t0, 0x0076($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0068($t2)
	beqz    $t3, 181$
	nop
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0068($t4)
	lwc1    $f12, 0x0024($t5)
	jal     ATAN2
	lwc1    $f14, 0x001C($t5)
	lw      $t6, 0x0028($sp)
	sh      $v0, 0x0074($t6)
	jal     player_802518A8
	lw      $a0, 0x0028($sp)
	lw      $t7, 0x0028($sp)
	sw      $v0, 0x0014($t7)
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x0076($t8)
	lwc1    $f10, 0x0040($t8)
	addiu   $t0, $t9, -0x0028
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	c.lt.s  $f18, $f10
	nop
	bc1f    101$
	nop
	jal     player_80251BD4
	move    $a0, $t8
	beqz    $v0, 101$
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t2, 0x0002($t1)
	ori     $t3, $t2, 0x0008
	sh      $t3, 0x0002($t1)
101$:
	lw      $t4, 0x0028($sp)
	lw      $t5, 0x0068($t4)
	lb      $t6, 0x0004($t5)
	andi    $t7, $t6, 0x0001
	bnez    $t7, 114$
	nop
	lw      $t9, 0x0064($t4)
	beqz    $t9, 136$
	nop
	lb      $t0, 0x0004($t9)
	andi    $t8, $t0, 0x0001
	beqz    $t8, 136$
	nop
114$:
	lw      $t2, 0x0028($sp)
	lwc1    $f4, 0x006C($t2)
	lwc1    $f6, 0x0070($t2)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	mtc1    $0, $f16
	lwc1    $f10, 0x0020($sp)
	c.le.s  $f16, $f10
	nop
	bc1f    136$
	nop
	li      $at, 0x43160000
	mtc1    $at, $f18
	nop
	c.le.s  $f10, $f18
	nop
	bc1f    136$
	nop
	lw      $t3, 0x0028($sp)
	lhu     $t1, 0x0002($t3)
	ori     $t5, $t1, 0x0040
	sh      $t5, 0x0002($t3)
136$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x0070($t6)
	lwc1    $f4, 0x0040($t6)
	add.s   $f16, $f6, $f8
	c.lt.s  $f16, $f4
	nop
	bc1f    150$
	nop
	lw      $t7, 0x0028($sp)
	lhu     $t4, 0x0002($t7)
	ori     $t9, $t4, 0x0004
	sh      $t9, 0x0002($t7)
150$:
	lw      $t0, 0x0028($sp)
	lh      $t8, 0x0076($t0)
	lwc1    $f10, 0x0040($t0)
	addiu   $t2, $t8, -0x000A
	mtc1    $t2, $f18
	nop
	cvt.s.w $f6, $f18
	c.lt.s  $f10, $f6
	nop
	bc1f    165$
	nop
	lw      $t1, 0x0028($sp)
	lhu     $t5, 0x0002($t1)
	ori     $t3, $t5, 0x0200
	sh      $t3, 0x0002($t1)
165$:
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f4, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	sub.s   $f18, $f4, $f16
	lwc1    $f8, 0x0040($t6)
	c.lt.s  $f8, $f18
	nop
	bc1f    179$
	nop
	lw      $t4, 0x0028($sp)
	lhu     $t9, 0x0002($t4)
	ori     $t7, $t9, 0x0100
	sh      $t7, 0x0002($t4)
179$:
	b       184$
	nop
181$:
	lw      $a0, 0x0028($sp)
	jal     pl_fade
	li      $a1, 0x0012
184$:
	b       186$
	nop
186$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_80253D58:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	sw      $0, 0x0008($t6)
	lw      $t7, 0x0018($sp)
	sh      $0, 0x0002($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x0088($t8)
	lw      $t0, 0x0070($t9)
	sw      $t0, 0x00A4($t8)
	lw      $t1, 0x0018($sp)
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	lw      $t2, 0x0004($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t1)
	jal     player_80253838
	lw      $a0, 0x0018($sp)
	jal     player_8025395C
	lw      $a0, 0x0018($sp)
	jal     player_80253A60
	lw      $a0, 0x0018($sp)
	jal     player_80253720
	lw      $a0, 0x0018($sp)
	lui     $t4, %hi(camera_8033C848)
	lh      $t4, %lo(camera_8033C848)($t4)
	andi    $t5, $t4, 0x2000
	beqz    $t5, 47$
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x04000000
	lw      $t7, 0x000C($t6)
	and     $t9, $t7, $at
	beqz    $t9, 41$
	nop
	lw      $t0, 0x0018($sp)
	lhu     $t8, 0x0002($t0)
	ori     $t2, $t8, 0x0010
	b       47$
	sh      $t2, 0x0002($t0)
41$:
	lui     $t3, %hi(camera_8033C848)
	lh      $t3, %lo(camera_8033C848)($t3)
	li      $at, -0x2001
	and     $t1, $t3, $at
	lui     $at, %hi(camera_8033C848)
	sh      $t1, %lo(camera_8033C848)($at)
47$:
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	andi    $t6, $t5, 0x0003
	bnez    $t6, 56$
	nop
	lw      $t7, 0x0018($sp)
	lhu     $t9, 0x0002($t7)
	ori     $t8, $t9, 0x0020
	sh      $t8, 0x0002($t7)
56$:
	lw      $t2, 0x0018($sp)
	lw      $t0, 0x0088($t2)
	lw      $t3, 0x0134($t0)
	andi    $t1, $t3, 0x0013
	beqz    $t1, 66$
	nop
	lw      $t4, 0x0018($sp)
	lhu     $t5, 0x0002($t4)
	ori     $t6, $t5, 0x0400
	sh      $t6, 0x0002($t4)
66$:
	jal     physics_8025509C
	lw      $a0, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	lbu     $t8, 0x002A($t9)
	blez    $t8, 76$
	nop
	lw      $t7, 0x0018($sp)
	lbu     $t2, 0x002A($t7)
	addiu   $t0, $t2, -0x0001
	sb      $t0, 0x002A($t7)
76$:
	lw      $t3, 0x0018($sp)
	lbu     $t1, 0x002B($t3)
	blez    $t1, 84$
	nop
	lw      $t5, 0x0018($sp)
	lbu     $t6, 0x002B($t5)
	addiu   $t4, $t6, -0x0001
	sb      $t4, 0x002B($t5)
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80253EC0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x00C0
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x01C0
	bne     $t8, $at, 98$
	nop
	lw      $t9, 0x0020($sp)
	lh      $t0, 0x0076($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t1, $t0, -0x0050
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0090($t2)
	lw      $t4, 0x0024($t3)
	lbu     $t5, 0x0000($t4)
	sh      $t5, 0x001A($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 40$
	nop
	lh      $t0, 0x001A($sp)
	li      $at, 0x0004
	beq     $t0, $at, 38$
	nop
	lw      $t1, 0x0020($sp)
	li      $a1, 0x0004
	li      $a2, 0x0001
	lw      $t9, 0x0090($t1)
	jal     camera_80286188
	lw      $a0, 0x0024($t9)
38$:
	b       98$
	nop
40$:
	li      $at, 0x44480000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	c.lt.s  $f18, $f16
	nop
	bc1f    57$
	nop
	lh      $t2, 0x001A($sp)
	li      $at, 0x0003
	beq     $t2, $at, 57$
	nop
	lw      $t3, 0x0020($sp)
	li      $a1, 0x0003
	li      $a2, 0x0001
	lw      $t4, 0x0090($t3)
	jal     camera_80286188
	lw      $a0, 0x0024($t4)
57$:
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x001C($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    74$
	nop
	lh      $t5, 0x001A($sp)
	li      $at, 0x0008
	beq     $t5, $at, 74$
	nop
	lw      $t6, 0x0020($sp)
	li      $a1, 0x0008
	li      $a2, 0x0001
	lw      $t7, 0x0090($t6)
	jal     camera_80286188
	lw      $a0, 0x0024($t7)
74$:
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x000C($t8)
	andi    $t1, $t0, 0x1000
	bnez    $t1, 98$
	nop
	lw      $t9, 0x0020($sp)
	lh      $t2, 0x0076($t9)
	lwc1    $f8, 0x0040($t9)
	addiu   $t3, $t2, -0x00A0
	mtc1    $t3, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f8, $f16
	nop
	bc1t    94$
	nop
	lh      $t4, 0x002C($t9)
	slti    $at, $t4, -0x0800
	beqz    $at, 98$
	nop
94$:
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0008($t5)
	ori     $t7, $t6, 0x0020
	sw      $t7, 0x0008($t5)
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254060:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	lh      $t7, 0x00AE($t6)
	slti    $at, $t7, 0x0100
	bnez    $at, 142$
	nop
	lw      $t8, 0x0028($sp)
	lbu     $t9, 0x00B3($t8)
	lbu     $t0, 0x00B2($t8)
	or      $t1, $t9, $t0
	bnez    $t1, 87$
	nop
	lw      $t2, 0x0028($sp)
	lhu     $t3, 0x0002($t2)
	andi    $t4, $t3, 0x0100
	beqz    $t4, 39$
	nop
	lw      $t5, 0x000C($t2)
	andi    $t6, $t5, 0x1000
	bnez    $t6, 39$
	nop
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0004($t7)
	andi    $t9, $t8, 0x0004
	bnez    $t9, 37$
	nop
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	bnez    $t0, 37$
	nop
	lw      $t1, 0x0028($sp)
	lh      $t3, 0x00AE($t1)
	addiu   $t4, $t3, -0x0004
	sh      $t4, 0x00AE($t1)
37$:
	b       87$
	nop
39$:
	lw      $t2, 0x0028($sp)
	lw      $t5, 0x000C($t2)
	andi    $t6, $t5, 0x2000
	beqz    $t6, 87$
	nop
	andi    $t7, $t5, 0x1000
	bnez    $t7, 87$
	nop
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0090($t8)
	lhu     $t0, 0x0002($t9)
	andi    $t3, $t0, 0x0007
	xori    $t4, $t3, 0x0002
	sltiu   $t4, $t4, 0x0001
	sw      $t4, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lh      $t2, 0x0076($t1)
	lwc1    $f4, 0x0040($t1)
	addiu   $t6, $t2, -0x008C
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f8, $f4
	nop
	bc1f    73$
	nop
	lw      $t5, 0x0024($sp)
	bnez    $t5, 73$
	nop
	lw      $t7, 0x0028($sp)
	lh      $t8, 0x00AE($t7)
	addiu   $t9, $t8, 0x001A
	b       87$
	sh      $t9, 0x00AE($t7)
73$:
	lui     $t0, %hi(debug_stage)
	lb      $t0, %lo(debug_stage)($t0)
	bnez    $t0, 87$
	nop
	lw      $t3, 0x0024($sp)
	beqz    $t3, 82$
	nop
	b       83$
	li      $s0, 0x0003
82$:
	li      $s0, 0x0001
83$:
	lw      $t4, 0x0028($sp)
	lh      $t1, 0x00AE($t4)
	subu    $t2, $t1, $s0
	sh      $t2, 0x00AE($t4)
87$:
	lw      $t6, 0x0028($sp)
	lbu     $t5, 0x00B3($t6)
	blez    $t5, 99$
	nop
	lw      $t8, 0x0028($sp)
	lh      $t9, 0x00AE($t8)
	addiu   $t7, $t9, 0x0040
	sh      $t7, 0x00AE($t8)
	lw      $t0, 0x0028($sp)
	lbu     $t3, 0x00B3($t0)
	addiu   $t1, $t3, -0x0001
	sb      $t1, 0x00B3($t0)
99$:
	lw      $t2, 0x0028($sp)
	lbu     $t4, 0x00B2($t2)
	blez    $t4, 111$
	nop
	lw      $t6, 0x0028($sp)
	lh      $t5, 0x00AE($t6)
	addiu   $t9, $t5, -0x0040
	sh      $t9, 0x00AE($t6)
	lw      $t7, 0x0028($sp)
	lbu     $t8, 0x00B2($t7)
	addiu   $t3, $t8, -0x0001
	sb      $t3, 0x00B2($t7)
111$:
	lw      $t1, 0x0028($sp)
	lh      $t0, 0x00AE($t1)
	slti    $at, $t0, 0x0881
	bnez    $at, 119$
	nop
	lw      $t4, 0x0028($sp)
	li      $t2, 0x0880
	sh      $t2, 0x00AE($t4)
119$:
	lw      $t5, 0x0028($sp)
	lh      $t9, 0x00AE($t5)
	slti    $at, $t9, 0x0100
	beqz    $at, 127$
	nop
	lw      $t8, 0x0028($sp)
	li      $t6, 0x00FF
	sh      $t6, 0x00AE($t8)
127$:
	lw      $t3, 0x0028($sp)
	li      $at, 0x00C0
	lw      $t7, 0x000C($t3)
	andi    $t1, $t7, 0x01C0
	bne     $t1, $at, 142$
	nop
	lh      $t0, 0x00AE($t3)
	slti    $at, $t0, 0x0300
	beqz    $at, 142$
	nop
	li.u    $a0, 0x1C180001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x1C180001
142$:
	b       144$
	nop
144$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

player_802542B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x000C($t6)
	lw      $t8, 0x0098($t6)
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x000C($t9)
	lw      $t1, 0x0094($t9)
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0018($sp)
	lw      $a0, 0x0094($t2)
	addiu   $a1, $t2, 0x002C
	jal     vecs_cpy
	addiu   $a0, $a0, 0x0010
	lw      $t3, 0x0018($sp)
	li      $at, 0x02000000
	lw      $t4, 0x0004($t3)
	and     $t5, $t4, $at
	bnez    $t5, 27$
	nop
	lw      $t6, 0x0018($sp)
	lw      $a0, 0x0094($t6)
	addiu   $a1, $t6, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0004
27$:
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

player_80254338:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0098($a0)
	sw      $t6, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	li      $t7, 0x0001
	sb      $t7, 0x0004($t8)
	lw      $t9, 0x0004($sp)
	sb      $0, 0x0005($t9)
	lw      $t0, 0x0004($sp)
	sb      $0, 0x0006($t0)
	lw      $t1, 0x0004($sp)
	sh      $0, 0x0008($t1)
	lw      $t2, 0x0004($sp)
	sb      $0, 0x0007($t2)
	lw      $t3, 0x0004($a0)
	li      $at, -0x0041
	and     $t4, $t3, $at
	sw      $t4, 0x0004($a0)
	b       20$
	nop
20$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

player_80254390:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0088($a0)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lw      $t8, 0x0050($t7)
	beqz    $t8, 13$
	nop
	lw      $t9, 0x0004($sp)
	lwc1    $f6, 0x00C0($a0)
	lw      $t0, 0x0050($t9)
	lwc1    $f4, 0x0034($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($t0)
13$:
	lw      $t1, 0x0004($sp)
	lwc1    $f16, 0x00C0($a0)
	lwc1    $f10, 0x0024($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t1)
	b       20$
	nop
20$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

player_802543E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0004($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x00B6($t8)
	blez    $t9, 96$
	nop
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x000C($t0)
	sw      $t1, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	lhu     $t3, 0x00B6($t2)
	slti    $at, $t3, 0x003D
	bnez    $at, 33$
	nop
	lw      $t4, 0x0018($sp)
	li.u    $at, 0x20001305
	li.l    $at, 0x20001305
	beq     $t4, $at, 37$
	nop
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	beq     $t4, $at, 37$
	nop
	li      $at, 0x1308
	beq     $t4, $at, 37$
	nop
	li      $at, 0x1371
	beq     $t4, $at, 37$
	nop
33$:
	lw      $t5, 0x0020($sp)
	lhu     $t6, 0x00B6($t5)
	addiu   $t7, $t6, -0x0001
	sh      $t7, 0x00B6($t5)
37$:
	lw      $t8, 0x0020($sp)
	lhu     $t9, 0x00B6($t8)
	bnez    $t9, 58$
	nop
	jal     bgm_special_stop
	nop
	lw      $t0, 0x0020($sp)
	li      $at, -0x000F
	lw      $t1, 0x0004($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x0004($t0)
	lw      $t3, 0x0020($sp)
	lw      $t4, 0x0004($t3)
	andi    $t6, $t4, 0x000F
	bnez    $t6, 58$
	nop
	lw      $t7, 0x0020($sp)
	li      $at, -0x0011
	lw      $t5, 0x0004($t7)
	and     $t8, $t5, $at
	sw      $t8, 0x0004($t7)
58$:
	lw      $t9, 0x0020($sp)
	li      $at, 0x003C
	lhu     $t1, 0x00B6($t9)
	bne     $t1, $at, 65$
	nop
	jal     bgm_special_fadeout
	nop
65$:
	lw      $t2, 0x0020($sp)
	lhu     $t0, 0x00B6($t2)
	slti    $at, $t0, 0x0040
	beqz    $at, 96$
	nop
	li      $a0, 0x0000
	li      $a1, 0x0001
	move    $a3, $t0
	jal     __ll_lshift
	sra     $a2, $t0, 31
	lui     $t4, %hi(player_8032DAE0+0)
	lw      $t4, %lo(player_8032DAE0+0)($t4)
	lui     $t5, %hi(player_8032DAE0+4)
	lw      $t5, %lo(player_8032DAE0+4)($t5)
	and     $t6, $v0, $t4
	bnez    $t6, 84$
	and     $t7, $v1, $t5
	beqz    $t7, 96$
	nop
84$:
	lw      $t3, 0x001C($sp)
	li      $at, -0x000F
	and     $t8, $t3, $at
	sw      $t8, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	andi    $t1, $t9, 0x000F
	bnez    $t1, 96$
	nop
	lw      $t2, 0x001C($sp)
	li      $at, -0x0011
	and     $t0, $t2, $at
	sw      $t0, 0x001C($sp)
96$:
	b       100$
	lw      $v0, 0x001C($sp)
	b       100$
	nop
100$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254588:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0098($t6)
	sw      $t7, 0x001C($sp)
	jal     player_802543E8
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 16$
	nop
	lw      $t1, 0x001C($sp)
	li      $t0, 0x0180
	sh      $t0, 0x0008($t1)
16$:
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 24$
	nop
	lw      $t4, 0x001C($sp)
	lh      $t5, 0x0008($t4)
	ori     $t6, $t5, 0x0200
	sh      $t6, 0x0008($t4)
24$:
	lw      $t7, 0x0018($sp)
	andi    $t8, $t7, 0x0040
	beqz    $t8, 32$
	nop
	lw      $t9, 0x001C($sp)
	lh      $t0, 0x0008($t9)
	ori     $t1, $t0, 0x0200
	sh      $t1, 0x0008($t9)
32$:
	lw      $t2, 0x0020($sp)
	lh      $t3, 0x0026($t2)
	slti    $at, $t3, 0x0003
	bnez    $at, 48$
	nop
	lui     $t5, %hi(gfx_frame)
	lw      $t5, %lo(gfx_frame)($t5)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 48$
	nop
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $t7, 0x0088($t4)
	lh      $t8, 0x0002($t7)
	ori     $t0, $t8, 0x0010
	sh      $t0, 0x0002($t7)
48$:
	lw      $t1, 0x0018($sp)
	andi    $t9, $t1, 0x0020
	beqz    $t9, 63$
	nop
	lw      $t2, 0x0018($sp)
	andi    $t3, $t2, 0x0008
	beqz    $t3, 60$
	nop
	lw      $t6, 0x001C($sp)
	li      $t5, 0x0004
	b       63$
	sb      $t5, 0x0006($t6)
60$:
	lw      $t8, 0x001C($sp)
	li      $t4, 0x0003
	sb      $t4, 0x0006($t8)
63$:
	lw      $t0, 0x0018($sp)
	andi    $t7, $t0, 0x0010
	beqz    $t7, 77$
	nop
	lw      $t1, 0x0018($sp)
	andi    $t9, $t1, 0x0008
	beqz    $t9, 75$
	nop
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0002
	b       77$
	sb      $t2, 0x0004($t3)
75$:
	lw      $t5, 0x001C($sp)
	sb      $0, 0x0004($t5)
77$:
	lw      $t6, 0x0020($sp)
	lw      $t4, 0x000C($t6)
	andi    $t8, $t4, 0x8000
	beqz    $t8, 88$
	nop
	lw      $t0, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t7, 0x0088($t0)
	b       93$
	swc1    $f4, 0x01FC($t7)
88$:
	lw      $t1, 0x0020($sp)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lw      $t9, 0x0088($t1)
	swc1    $f6, 0x01FC($t9)
93$:
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0004($t2)
	andi    $t5, $t3, 0x0080
	beqz    $t5, 114$
	nop
	lbu     $t6, 0x00B5($t2)
	li      $at, 0x00FF
	beq     $t6, $at, 114$
	nop
	lw      $t4, 0x001C($sp)
	li      $at, -0x0100
	lh      $t8, 0x0008($t4)
	and     $t0, $t8, $at
	sh      $t0, 0x0008($t4)
	lw      $t9, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	lbu     $t3, 0x00B5($t9)
	lh      $t1, 0x0008($t7)
	ori     $t5, $t3, 0x0100
	or      $t2, $t1, $t5
	sh      $t2, 0x0008($t7)
114$:
	b       116$
	nop
116$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

player_80254768:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	lhu     $t7, 0x0010($t6)
	andi    $t8, $t7, 0x2000
	beqz    $t8, 44$
	nop
	lhu     $t9, 0x0012($t6)
	lhu     $t0, 0x001A($sp)
	and     $t1, $t9, $t0
	beqz    $t1, 44$
	nop
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lw      $t4, 0x001C($sp)
	lw      $t3, 0x0004($t2)
	and     $t5, $t3, $t4
	bnez    $t5, 44$
	nop
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x0004($t7)
	addiu   $t9, $t6, 0x0010
	or      $t0, $t8, $t9
	sw      $t0, 0x0004($t7)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lhu     $t1, 0x0022($sp)
	lhu     $t3, 0x00B6($t2)
	slt     $at, $t3, $t1
	beqz    $at, 42$
	nop
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lhu     $t4, 0x0022($sp)
	sh      $t4, 0x00B6($t5)
42$:
	jal     bgm_special_play
	lhu     $a0, 0x0026($sp)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl mario_exec
mario_exec:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lw      $t8, 0x000C($t7)
	beqz    $t8, 179$
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, -0x0011
	lw      $t0, 0x0088($t9)
	lh      $t1, 0x0002($t0)
	and     $t2, $t1, $at
	sh      $t2, 0x0002($t0)
	lui     $a0, %hi(mario)
	jal     player_80254338
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253D58
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     collision_802507FC
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     collision_802503F0
	lw      $a0, %lo(mario)($a0)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	lw      $t4, 0x0068($t3)
	bnez    $t4, 37$
	nop
	b       183$
	move    $v0, $0
37$:
	lw      $t5, 0x0024($sp)
	beqz    $t5, 112$
	nop
40$:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lw      $s0, 0x000C($t6)
	andi    $t7, $s0, 0x01C0
	move    $s0, $t7
	beqz    $s0, 67$
	nop
	li      $at, 0x0040
	beq     $s0, $at, 73$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 79$
	nop
	li      $at, 0x00C0
	beq     $s0, $at, 85$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 91$
	nop
	li      $at, 0x0140
	beq     $s0, $at, 97$
	nop
	li      $at, 0x0180
	beq     $s0, $at, 103$
	nop
	b       109$
	nop
67$:
	lui     $a0, %hi(mario)
	jal     pl_wait_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
73$:
	lui     $a0, %hi(mario)
	jal     pl_move_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
79$:
	lui     $a0, %hi(mario)
	jal     pl_jump_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
85$:
	lui     $a0, %hi(mario)
	jal     pl_swim_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
91$:
	lui     $a0, %hi(mario)
	jal     pl_demo_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
97$:
	lui     $a0, %hi(mario)
	jal     pl_hang_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
103$:
	lui     $a0, %hi(mario)
	jal     pl_hold_exec
	lw      $a0, %lo(mario)($a0)
	sw      $v0, 0x0024($sp)
	b       109$
	nop
109$:
	lw      $t8, 0x0024($sp)
	bnez    $t8, 40$
	nop
112$:
	lui     $a0, %hi(mario)
	jal     player_80254390
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253588
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80253EC0
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80254060
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_802542B4
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_80254588
	lw      $a0, %lo(mario)($a0)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $at, 0x002C
	lw      $t1, 0x0068($t9)
	lh      $t2, 0x0000($t1)
	bne     $t2, $at, 152$
	nop
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	move    $a0, $0
	lw      $t3, 0x0068($t0)
	lh      $a1, 0x0002($t3)
	sll     $t4, $a1, 8
	jal     object_a_802AE4C0
	move    $a1, $t4
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $a0, 0x40108001
	li.l    $a0, 0x40108001
	lw      $a1, 0x0088($t5)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
152$:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	li      $at, 0x0038
	lw      $t7, 0x0068($t6)
	lh      $t8, 0x0000($t7)
	bne     $t8, $at, 169$
	nop
	li      $a0, 0x0001
	jal     object_a_802AE4C0
	move    $a1, $0
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $a0, 0x40108001
	li.l    $a0, 0x40108001
	lw      $a1, 0x0088($t9)
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
169$:
	jal     aud_endless_music
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lw      $t2, 0x0088($t1)
	sw      $0, 0x0134($t2)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	b       183$
	lw      $v0, 0x0008($t0)
179$:
	b       183$
	move    $v0, $0
	b       183$
	nop
183$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80254B20
player_80254B20:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(player_8033B280)
	sw      $0, %lo(player_8033B280)($at)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	sh      $0, 0x001A($t6)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	li      $t7, 0x00FF
	sb      $t7, 0x0028($t8)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	li      $t9, 0x00FF
	sb      $t9, 0x0029($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	sh      $0, 0x0026($t1)
	jal     save_get_flag
	nop
	li      $at, 0x000F0000
	and     $t2, $v0, $at
	beqz    $t2, 28$
	nop
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	b       32$
	sw      $0, 0x0004($t3)
28$:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t4, 0x0011
	sw      $t4, 0x0004($t5)
32$:
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0054($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	sb      $0, 0x00B4($t7)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	sb      $0, 0x00B2($t8)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	sb      $0, 0x00B3($t9)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	sh      $0, 0x00B6($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00C0($t1)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	sw      $0, 0x007C($t2)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	sw      $0, 0x0084($t3)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	sw      $0, 0x0080($t4)
	lui     $t5, %hi(mario_actor)
	lw      $t5, %lo(mario_actor)($t5)
	lh      $t6, 0x0000($t5)
	lh      $t7, 0x0004($t5)
	mtc1    $t6, $f8
	mtc1    $t7, $f10
	cvt.s.w $f12, $f8
	jal     bg_check_water
	cvt.s.w $f14, $f10
	trunc.w.s $f16, $f0
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	mfc1    $t9, $f16
	nop
	sh      $t9, 0x0076($t0)
	lui     $t1, %hi(scenep)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lw      $t1, %lo(scenep)($t1)
	sw      $t1, 0x0090($t2)
	lui     $t3, %hi(mario_obj)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $t3, %lo(mario_obj)($t3)
	sw      $t3, 0x0088($t4)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t6, -0x0001
	lw      $t7, 0x0088($t5)
	sh      $t6, 0x0038($t7)
	lui     $a0, %hi(mario)
	lui     $a1, %hi(mario_actor)
	lw      $a1, %lo(mario_actor)($a1)
	lw      $a0, %lo(mario)($a0)
	addiu   $a1, $a1, 0x0006
	jal     vecs_cpy
	addiu   $a0, $a0, 0x002C
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     vecs_set
	addiu   $a0, $a0, 0x0032
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	lui     $a1, %hi(mario_actor)
	lw      $a1, %lo(mario_actor)($a1)
	jal     vecs_to_vecf
	addiu   $a0, $a0, 0x003C
	lui     $a0, %hi(mario)
	lw      $a0, %lo(mario)($a0)
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     vecf_set
	addiu   $a0, $a0, 0x0048
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lwc1    $f12, 0x003C($t8)
	lwc1    $f14, 0x0040($t8)
	lw      $a2, 0x0044($t8)
	jal     bg_check_ground
	addiu   $a3, $t8, 0x0068
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	swc1    $f0, 0x0070($t9)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lwc1    $f18, 0x0040($t0)
	lwc1    $f4, 0x0070($t0)
	c.lt.s  $f18, $f4
	nop
	bc1f    142$
	nop
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lwc1    $f6, 0x0070($t1)
	swc1    $f6, 0x0040($t1)
142$:
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lwc1    $f8, 0x0040($t2)
	lw      $t3, 0x0088($t2)
	swc1    $f8, 0x0024($t3)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lh      $t5, 0x0076($t4)
	lwc1    $f10, 0x0040($t4)
	addiu   $t6, $t5, -0x0064
	mtc1    $t6, $f16
	nop
	cvt.s.w $f18, $f16
	c.le.s  $f10, $f18
	nop
	bc1f    163$
	nop
	li.u    $t7, 0x380022C0
	li.l    $t7, 0x380022C0
	b       168$
	sw      $t7, 0x000C($t4)
163$:
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $t8, 0x0C400201
	li.l    $t8, 0x0C400201
	sw      $t8, 0x000C($t9)
168$:
	lui     $a0, %hi(mario)
	jal     player_80254338
	lw      $a0, %lo(mario)($a0)
	lui     $a0, %hi(mario)
	jal     player_802542B4
	lw      $a0, %lo(mario)($a0)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	lw      $t1, 0x0098($t0)
	sb      $0, 0x000B($t1)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	lwc1    $f4, 0x003C($t2)
	lw      $t3, 0x0088($t2)
	swc1    $f4, 0x00A0($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lwc1    $f6, 0x0040($t5)
	lw      $t6, 0x0088($t5)
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	lwc1    $f8, 0x0044($t7)
	lw      $t4, 0x0088($t7)
	swc1    $f8, 0x00A8($t4)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	lh      $t9, 0x002C($t8)
	lw      $t0, 0x0088($t8)
	sw      $t9, 0x00C4($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	lh      $t2, 0x002E($t1)
	lw      $t3, 0x0088($t1)
	sw      $t2, 0x00C8($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	lh      $t6, 0x0030($t5)
	lw      $t7, 0x0088($t5)
	sw      $t6, 0x00CC($t7)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	lw      $a0, 0x0088($t4)
	addiu   $a1, $t4, 0x003C
	jal     vecf_cpy
	addiu   $a0, $a0, 0x0020
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	move    $a1, $0
	move    $a3, $0
	lw      $a0, 0x0088($t8)
	lh      $a2, 0x002E($t8)
	jal     vecs_set
	addiu   $a0, $a0, 0x001A
	jal     save_get_cap
	addiu   $a0, $sp, 0x0020
	beqz    $v0, 259$
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	la.u    $a2, o_13003DF8
	la.l    $a2, o_13003DF8
	li      $a1, 0x0088
	jal     obj_make_here
	lw      $a0, 0x0088($t9)
	sw      $v0, 0x001C($sp)
	addiu   $t0, $sp, 0x0020
	lh      $t1, 0x0000($t0)
	lw      $t2, 0x001C($sp)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f10, $f16
	swc1    $f10, 0x00A0($t2)
	addiu   $t3, $sp, 0x0020
	lh      $t5, 0x0002($t3)
	lw      $t6, 0x001C($sp)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x00A4($t6)
	addiu   $t7, $sp, 0x0020
	lh      $t4, 0x0004($t7)
	lw      $t8, 0x001C($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00A8($t8)
	lw      $t9, 0x001C($sp)
	sw      $0, 0x00B8($t9)
	lw      $t0, 0x001C($sp)
	sw      $0, 0x00C8($t0)
259$:
	b       261$
	nop
261$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl player_80254F44
player_80254F44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	sh      $0, 0x0000($t6)
	lui     $t7, %hi(mario)
	lw      $t7, %lo(mario)($t7)
	sw      $0, 0x0004($t7)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	sw      $0, 0x000C($t8)
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	la.u    $t9, player_actor
	la.l    $t9, player_actor
	sw      $t9, 0x008C($t0)
	lui     $t2, %hi(mario)
	lw      $t2, %lo(mario)($t2)
	la.u    $t1, pl_camera_data
	la.l    $t1, pl_camera_data
	sw      $t1, 0x0094($t2)
	lui     $t4, %hi(mario)
	lw      $t4, %lo(mario)($t4)
	la.u    $t3, pl_shape_data
	la.l    $t3, pl_shape_data
	sw      $t3, 0x0098($t4)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	la.u    $t5, controller_data
	la.l    $t5, controller_data
	sw      $t5, 0x009C($t6)
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	la.u    $t7, mario_anime_bank
	la.l    $t7, mario_anime_bank
	sw      $t7, 0x00A0($t8)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	sh      $0, 0x00A8($t9)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	lui     $t0, %hi(mario)
	lw      $t0, %lo(mario)($t0)
	sh      $v0, 0x00AA($t0)
	lui     $t1, %hi(mario)
	lw      $t1, %lo(mario)($t1)
	sb      $0, 0x00AC($t1)
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	li      $t2, 0x0004
	sb      $t2, 0x00AD($t3)
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li      $t4, 0x0880
	sh      $t4, 0x00AE($t5)
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lh      $t7, 0x00AA($t6)
	sh      $t7, 0x00B8($t6)
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li      $t8, 0x00BD
	sh      $t8, 0x00B0($t9)
	lui     $at, %hi(hud+0x02)
	sh      $0, %lo(hud+0x02)($at)
	li      $t0, 0x0008
	lui     $at, %hi(hud+0x06)
	sh      $t0, %lo(hud+0x06)($at)
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
