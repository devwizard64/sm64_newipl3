.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl object_b_802E3E50
object_b_802E3E50:
	lui     $at, %hi(object_b_80332618)
	sb      $0, %lo(object_b_80332618)($at)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E3E68:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $0, 0x0034($sp)
	lw      $t6, 0x0038($sp)
	li      $at, 0x0001
	bne     $t6, $at, 56$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x003C($sp)
	sw      $t8, 0x0028($sp)
	lw      $t9, 0x003C($sp)
	sw      $t9, 0x0024($sp)
	lui     $t0, %hi(s_hand)
	lw      $t0, %lo(s_hand)($t0)
	beqz    $t0, 25$
	nop
	lui     $t1, %hi(s_hand)
	lw      $t1, %lo(s_hand)($t1)
	lw      $t2, 0x001C($t1)
	sw      $t2, 0x002C($sp)
25$:
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	sw      $t3, 0x0030($sp)
	lw      $t4, 0x0028($sp)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	ori     $t7, $t6, 0x0500
	sh      $t7, 0x0002($t4)
	lw      $t8, 0x0030($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0030($sp)
	sw      $t8, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li      $t0, 0xFB000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x002C($sp)
	lw      $t7, 0x001C($sp)
	li      $at, -0x0100
	lw      $t3, 0x017C($t2)
	andi    $t5, $t3, 0x00FF
	or      $t6, $t5, $at
	sw      $t6, 0x0004($t7)
	lw      $t4, 0x0030($sp)
	sw      $t4, 0x0018($sp)
	lw      $t9, 0x0018($sp)
	li      $t8, 0xB8000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0018($sp)
	sw      $0, 0x0004($t0)
56$:
	b       60$
	lw      $v0, 0x0034($sp)
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E3F68:
	mtc1    $0, $f4
	nop
	c.lt.s  $f12, $f4
	nop
	bc1f    11$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f6
	nop
	mul.s   $f12, $f12, $f6
	nop
11$:
	jr      $ra
	mov.s   $f0, $f12
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E3FAC:
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0010($sp)
	lwc1    $f8, 0x0008($sp)
	li      $at, 0x40000000
	mul.s   $f6, $f4, $f4
	lw      $t6, 0x0014($sp)
	mul.s   $f10, $f8, $f8
	sub.s   $f16, $f6, $f10
	mul.s   $f18, $f16, $f12
	add.s   $f16, $f10, $f6
	mul.s   $f6, $f8, $f4
	div.s   $f10, $f18, $f16
	mtc1    $at, $f18
	nop
	mul.s   $f8, $f18, $f14
	nop
	mul.s   $f4, $f8, $f6
	div.s   $f18, $f4, $f16
	sub.s   $f8, $f10, $f18
	swc1    $f8, 0x0000($t6)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f16, 0x0010($sp)
	li      $at, 0x40000000
	mul.s   $f4, $f6, $f6
	lw      $t7, 0x0018($sp)
	mul.s   $f10, $f16, $f16
	sub.s   $f18, $f4, $f10
	mul.s   $f8, $f18, $f14
	add.s   $f18, $f4, $f10
	mul.s   $f10, $f6, $f16
	div.s   $f4, $f8, $f18
	mtc1    $at, $f8
	nop
	mul.s   $f6, $f8, $f12
	nop
	mul.s   $f16, $f6, $f10
	div.s   $f8, $f16, $f18
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x0000($t7)
	b       42$
	nop
42$:
	jr      $ra
	nop

object_b_802E405C:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0078($sp)
	sw      $a3, 0x007C($sp)
	swc1    $f12, 0x0070($sp)
	swc1    $f14, 0x0074($sp)
	lwc1    $f4, 0x0070($sp)
	swc1    $f4, 0x0048($sp)
	lwc1    $f6, 0x0074($sp)
	swc1    $f6, 0x004C($sp)
	lwc1    $f8, 0x0078($sp)
	swc1    $f8, 0x0050($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x01FC($t6)
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0054($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x01F8($t7)
	swc1    $f4, 0x0058($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0048
	beqz    $v0, 74$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0048($sp)
	swc1    $f6, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x004C($sp)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x00A8($t0)
	addiu   $t1, $sp, 0x0048
	lw      $t2, 0x0018($t1)
	lwc1    $f16, 0x001C($t2)
	swc1    $f16, 0x0044($sp)
	addiu   $t3, $sp, 0x0048
	lw      $t4, 0x0018($t3)
	lwc1    $f18, 0x0020($t4)
	swc1    $f18, 0x0040($sp)
	addiu   $t5, $sp, 0x0048
	lw      $t6, 0x0018($t5)
	lwc1    $f4, 0x0024($t6)
	swc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x007C($sp)
	swc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0080($sp)
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	addiu   $t7, $sp, 0x0030
	addiu   $t8, $sp, 0x002C
	sw      $t8, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0040($sp)
	jal     object_b_802E3FAC
	swc1    $f10, 0x0010($sp)
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	b       78$
	move    $v0, $0
74$:
	b       78$
	li      $v0, 0x0001
	b       78$
	nop
78$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0070
	jr      $ra
	nop

object_b_802E41A4:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	lw      $t6, 0x0048($sp)
	bnez    $t6, 22$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_803383D0)
	ldc1    $f8, %lo(object_b_803383D0)($at)
	lw      $t8, 0x00C8($t7)
	mtc1    $t8, $f4
	nop
	cvt.d.w $f6, $f4
	add.d   $f10, $f6, $f8
	trunc.w.d $f16, $f10
	swc1    $f16, 0x00C8($t7)
	b       75$
	move    $v0, $0
22$:
	lw      $t0, 0x0048($sp)
	lwc1    $f18, 0x001C($t0)
	swc1    $f18, 0x0044($sp)
	lw      $t1, 0x0048($sp)
	lwc1    $f4, 0x0020($t1)
	swc1    $f4, 0x0040($sp)
	lw      $t2, 0x0048($sp)
	lwc1    $f6, 0x0024($t2)
	swc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x0040($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    71$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f4, 0x00A4($t3)
	c.lt.s  $f4, $f18
	nop
	bc1f    71$
	nop
	lwc1    $f6, 0x0050($sp)
	swc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0054($sp)
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	addiu   $t4, $sp, 0x0030
	addiu   $t5, $sp, 0x002C
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0040($sp)
	jal     object_b_802E3FAC
	swc1    $f10, 0x0010($sp)
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	b       75$
	move    $v0, $0
71$:
	b       75$
	li      $v0, 0x0001
	b       75$
	nop
75$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

object_b_802E42E0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lui     $t6, %hi(object_b_80332610)
	lb      $t6, %lo(object_b_80332610)($t6)
	bnez    $t6, 12$
	nop
	b       61$
	nop
12$:
	lw      $t7, 0x0038($sp)
	lh      $t8, 0x0002($t7)
	andi    $t9, $t8, 0x0004
	beqz    $t9, 19$
	nop
	b       61$
	nop
19$:
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	bnez    $t0, 27$
	nop
	b       61$
	nop
27$:
	lw      $t1, 0x0038($sp)
	addiu   $t2, $sp, 0x002C
	lwc1    $f4, 0x00A0($t1)
	swc1    $f4, 0x0000($t2)
	lw      $t3, 0x0038($sp)
	addiu   $t4, $sp, 0x002C
	lwc1    $f6, 0x00DC($t3)
	lwc1    $f8, 0x00A4($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0004($t4)
	lw      $t5, 0x0038($sp)
	addiu   $t6, $sp, 0x002C
	lwc1    $f16, 0x00A8($t5)
	swc1    $f16, 0x0008($t6)
	lwc1    $f18, 0x003C($sp)
	addiu   $t7, $sp, 0x0020
	swc1    $f18, 0x0000($t7)
	lwc1    $f4, 0x0040($sp)
	addiu   $t8, $sp, 0x0020
	swc1    $f4, 0x0004($t8)
	lwc1    $f6, 0x0044($sp)
	addiu   $t9, $sp, 0x0020
	swc1    $f6, 0x0008($t9)
	lw      $t0, 0x0038($sp)
	lw      $a0, 0x001C($sp)
	addiu   $a1, $sp, 0x0020
	addiu   $a2, $sp, 0x002C
	jal     mtxf_stand
	lw      $a3, 0x00D4($t0)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0038($sp)
	sw      $t1, 0x0050($t2)
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E43E4:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	lui     $at, %hi(object_b_803383D8)
	ldc1    $f8, %lo(object_b_803383D8)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    22$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803383E0)
	ldc1    $f18, %lo(object_b_803383E0)($at)
	lwc1    $f10, 0x0170($t6)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    22$
	nop
	mtc1    $0, $f4
	b       26$
	swc1    $f4, 0x0000($a0)
22$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0170($t7)
	swc1    $f6, 0x0000($a0)
26$:
	b       28$
	nop
28$:
	jr      $ra
	nop

object_b_802E445C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0024($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00B0($t9)
	lwc1    $f16, 0x00E4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_803383E8)
	ldc1    $f8, %lo(object_b_803383E8)($at)
	lwc1    $f4, 0x00B0($t0)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    37$
	nop
	li      $at, 0x42960000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t1)
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803383F0)
	ldc1    $f4, %lo(object_b_803383F0)($at)
	lwc1    $f16, 0x00B0($t2)
	cvt.d.s $f18, $f16
	c.lt.d  $f18, $f4
	nop
	bc1f    53$
	nop
	li      $at, 0xC2960000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
53$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x00A4($t4)
	lwc1    $f10, 0x00B0($t4)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x00A4($t5)
	c.lt.s  $f18, $f4
	nop
	bc1f    95$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x002C($sp)
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_803383F8)
	ldc1    $f16, %lo(object_b_803383F8)($at)
	lwc1    $f8, 0x00B0($t7)
	cvt.d.s $f10, $f8
	c.lt.d  $f10, $f16
	nop
	bc1f    90$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t8)
	div.s   $f6, $f18, $f4
	neg.s   $f8, $f6
	b       95$
	swc1    $f8, 0x00B0($t8)
90$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B0($t9)
95$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f16, 0x00A4($t0)
	trunc.w.s $f6, $f4
	trunc.w.s $f18, $f16
	mfc1    $t4, $f6
	mfc1    $t2, $f18
	nop
	slt     $at, $t2, $t4
	bnez    $at, 232$
	nop
	addiu   $t5, $t4, 0x0025
	slt     $at, $t2, $t5
	beqz    $at, 232$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f16, 0x001C($sp)
	lui     $t6, %hi(object)
	mul.s   $f10, $f8, $f8
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mul.s   $f18, $f16, $f16
	lwc1    $f16, 0x0020($sp)
	add.s   $f4, $f10, $f18
	mul.s   $f6, $f8, $f4
	nop
	mul.s   $f8, $f16, $f16
	add.s   $f4, $f10, $f8
	lwc1    $f8, 0x00E4($t6)
	add.s   $f16, $f4, $f18
	mtc1    $at, $f18
	div.s   $f10, $f6, $f16
	lwc1    $f16, 0x0030($sp)
	mul.s   $f4, $f10, $f8
	nop
	mul.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x0030($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f18, 0x001C($sp)
	lui     $t7, %hi(object)
	mul.s   $f4, $f8, $f8
	lwc1    $f8, 0x0020($sp)
	lw      $t7, %lo(object)($t7)
	mul.s   $f16, $f18, $f18
	li      $at, 0x40000000
	add.s   $f6, $f4, $f16
	mul.s   $f10, $f18, $f6
	nop
	mul.s   $f18, $f8, $f8
	add.s   $f6, $f4, $f18
	lwc1    $f18, 0x00E4($t7)
	add.s   $f8, $f6, $f16
	mtc1    $at, $f16
	div.s   $f4, $f10, $f8
	lwc1    $f8, 0x0034($sp)
	mul.s   $f6, $f4, $f18
	nop
	mul.s   $f10, $f6, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0034($sp)
	lwc1    $f18, 0x0030($sp)
	lui     $at, %hi(object_b_80338400)
	ldc1    $f16, %lo(object_b_80338400)($at)
	cvt.d.s $f6, $f18
	c.lt.d  $f6, $f16
	nop
	bc1f    180$
	nop
	lui     $at, %hi(object_b_80338408)
	ldc1    $f8, %lo(object_b_80338408)($at)
	c.lt.d  $f8, $f6
	nop
	bc1f    180$
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0030($sp)
180$:
	lwc1    $f4, 0x0034($sp)
	lui     $at, %hi(object_b_80338410)
	ldc1    $f16, %lo(object_b_80338410)($at)
	cvt.d.s $f18, $f4
	c.lt.d  $f18, $f16
	nop
	bc1f    197$
	nop
	lui     $at, %hi(object_b_80338418)
	ldc1    $f6, %lo(object_b_80338418)($at)
	c.lt.d  $f6, $f18
	nop
	bc1f    197$
	nop
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0034($sp)
197$:
	lwc1    $f10, 0x0030($sp)
	mtc1    $0, $f4
	nop
	c.eq.s  $f10, $f4
	nop
	bc1f    211$
	nop
	lwc1    $f16, 0x0034($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1t    217$
	nop
211$:
	lwc1    $f12, 0x0034($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C8($t8)
217$:
	addiu   $a0, $sp, 0x0018
	jal     object_b_802E43E4
	lw      $a1, 0x0020($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f4, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f4
	lwc1    $f16, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f18, $f0, $f16
	swc1    $f18, 0x00B8($t9)
232$:
	b       234$
	nop
234$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E4814:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x0024($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xBF800000
	mtc1    $at, $f16
	lwc1    $f10, 0x00E4($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	lwc1    $f6, 0x0174($t9)
	sub.s   $f8, $f4, $f6
	mul.s   $f10, $f18, $f8
	swc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0018($sp)
	lwc1    $f16, 0x00B0($t0)
	sub.s   $f6, $f16, $f4
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338420)
	ldc1    $f10, %lo(object_b_80338420)($at)
	lwc1    $f18, 0x00B0($t1)
	cvt.d.s $f8, $f18
	c.lt.d  $f10, $f8
	nop
	bc1f    49$
	nop
	li      $at, 0x42960000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B0($t2)
49$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_80338428)
	ldc1    $f18, %lo(object_b_80338428)($at)
	lwc1    $f4, 0x00B0($t3)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f18
	nop
	bc1f    65$
	nop
	li      $at, 0xC2960000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t4)
65$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00A4($t5)
	lwc1    $f16, 0x00B0($t5)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x00A4($t6)
	c.lt.s  $f6, $f18
	nop
	bc1f    107$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_80338430)
	ldc1    $f4, %lo(object_b_80338430)($at)
	lwc1    $f10, 0x00B0($t8)
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f4
	nop
	bc1f    102$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f6, 0x00B0($t9)
	div.s   $f8, $f6, $f18
	neg.s   $f10, $f8
	b       107$
	swc1    $f10, 0x00B0($t9)
102$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
107$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40290000
	mtc1    $at, $f19
	lwc1    $f4, 0x00B8($t1)
	mtc1    $0, $f18
	cvt.d.s $f6, $f4
	c.lt.d  $f18, $f6
	nop
	bc1f    140$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0038($sp)
	lwc1    $f4, 0x00A4($t1)
	add.s   $f16, $f8, $f10
	c.lt.s  $f4, $f16
	nop
	bc1f    140$
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f6
	nop
	sub.s   $f18, $f8, $f6
	c.lt.s  $f18, $f4
	nop
	bc1f    140$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00B0($t2)
	neg.s   $f16, $f10
	swc1    $f16, 0x00B0($t2)
140$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f8, 0x00A4($t3)
	trunc.w.s $f4, $f18
	trunc.w.s $f6, $f8
	mfc1    $t7, $f4
	mfc1    $t5, $f6
	nop
	slt     $at, $t5, $t7
	bnez    $at, 205$
	nop
	addiu   $t8, $t7, 0x0025
	slt     $at, $t5, $t8
	beqz    $at, 205$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x40000000
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f6, $f8, $f8
	lwc1    $f8, 0x0020($sp)
	add.s   $f18, $f16, $f6
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f18, $f16, $f10
	lwc1    $f10, 0x0018($sp)
	add.s   $f8, $f18, $f6
	mtc1    $at, $f6
	div.s   $f16, $f4, $f8
	lwc1    $f8, 0x0030($sp)
	mul.s   $f18, $f16, $f10
	nop
	mul.s   $f4, $f18, $f6
	add.s   $f16, $f8, $f4
	swc1    $f16, 0x0030($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f6, 0x001C($sp)
	li      $at, 0x40000000
	mul.s   $f18, $f10, $f10
	lwc1    $f10, 0x0020($sp)
	mul.s   $f8, $f6, $f6
	add.s   $f4, $f18, $f8
	mul.s   $f16, $f6, $f4
	nop
	mul.s   $f6, $f10, $f10
	add.s   $f4, $f18, $f6
	lwc1    $f6, 0x0018($sp)
	add.s   $f10, $f4, $f8
	mtc1    $at, $f8
	div.s   $f18, $f16, $f10
	lwc1    $f10, 0x0034($sp)
	mul.s   $f4, $f18, $f6
	nop
	mul.s   $f16, $f4, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
205$:
	lwc1    $f6, 0x0030($sp)
	lui     $at, %hi(object_b_80338438)
	ldc1    $f8, %lo(object_b_80338438)($at)
	cvt.d.s $f4, $f6
	c.lt.d  $f4, $f8
	nop
	bc1f    222$
	nop
	lui     $at, %hi(object_b_80338440)
	ldc1    $f10, %lo(object_b_80338440)($at)
	c.lt.d  $f10, $f4
	nop
	bc1f    222$
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0030($sp)
222$:
	lwc1    $f18, 0x0034($sp)
	lui     $at, %hi(object_b_80338448)
	ldc1    $f8, %lo(object_b_80338448)($at)
	cvt.d.s $f6, $f18
	c.lt.d  $f6, $f8
	nop
	bc1f    239$
	nop
	lui     $at, %hi(object_b_80338450)
	ldc1    $f4, %lo(object_b_80338450)($at)
	c.lt.d  $f4, $f6
	nop
	bc1f    239$
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0034($sp)
239$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338458)
	ldc1    $f8, %lo(object_b_80338458)($at)
	lwc1    $f16, 0x00B0($t9)
	cvt.d.s $f18, $f16
	c.lt.d  $f18, $f8
	nop
	bc1f    260$
	nop
	lui     $at, %hi(object_b_80338460)
	ldc1    $f6, %lo(object_b_80338460)($at)
	c.lt.d  $f6, $f18
	nop
	bc1f    260$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t0)
260$:
	lwc1    $f10, 0x0030($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    274$
	nop
	lwc1    $f8, 0x0034($sp)
	mtc1    $0, $f18
	nop
	c.eq.s  $f8, $f18
	nop
	bc1t    280$
	nop
274$:
	lwc1    $f12, 0x0034($sp)
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
280$:
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0034($sp)
	mul.s   $f4, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f4, $f16
	lui     $at, %hi(object_b_80338468)
	ldc1    $f18, %lo(object_b_80338468)($at)
	cvt.d.s $f8, $f0
	lui     $t2, %hi(object)
	mul.d   $f6, $f8, $f18
	lw      $t2, %lo(object)($t2)
	cvt.s.d $f10, $f6
	swc1    $f10, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_80338470)
	ldc1    $f8, %lo(object_b_80338470)($at)
	lwc1    $f4, 0x00B0($t3)
	cvt.d.s $f16, $f4
	mul.d   $f18, $f16, $f8
	cvt.s.d $f6, $f18
	swc1    $f6, 0x00B0($t3)
	b       306$
	nop
306$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E4CEC:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0004($sp)
	lwc1    $f4, 0x00A0($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f16, 0x0000($sp)
	lwc1    $f10, 0x00A8($t5)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	b       37$
	nop
37$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E4D88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $t8, $t7, 0x001E
	mtc1    $t8, $f4
	lwc1    $f8, 0x00A4($t9)
	cvt.s.w $f6, $f4
	c.lt.s  $f8, $f6
	nop
	bc1f    44$
	nop
	addiu   $t0, $t7, -0x001E
	mtc1    $t0, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f8
	nop
	bc1f    44$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130034C4
	la.l    $a2, o_130034C4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A6
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC1A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    44$
	nop
	li.u    $a0, 0x50324081
	jal     object_playsound
	li.l    $a0, 0x50324081
44$:
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	addiu   $t4, $t3, 0x0032
	slt     $at, $t4, $t2
	beqz    $at, 60$
	nop
	lw      $t5, 0x001C($sp)
	andi    $t6, $t5, 0x001F
	bnez    $t6, 60$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003484
	la.l    $a2, o_13003484
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A4
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E4E90:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x003C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0038($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0034($sp)
	lui     $at, %hi(object_b_80338478)
	lwc1    $f10, %lo(object_b_80338478)($at)
	swc1    $f10, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00CA($t9)
	lwc1    $f18, 0x00B8($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f8, 0x00B8($t3)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	sh      $0, 0x0022($sp)
	lwc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f18, 0x0028($sp)
	lwc1    $f16, 0x003C($sp)
	add.s   $f8, $f4, $f6
	mfc1    $a3, $f18
	lwc1    $f14, 0x0038($sp)
	swc1    $f6, 0x0010($sp)
	mfc1    $a2, $f8
	jal     object_b_802E405C
	add.s   $f12, $f16, $f18
	bnez    $v0, 56$
	nop
	lh      $t7, 0x0022($sp)
	addiu   $t8, $t7, 0x0002
	sh      $t8, 0x0022($sp)
56$:
	lwc1    $f4, 0x0034($sp)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0028($sp)
	add.s   $f18, $f4, $f8
	la.u    $a3, object_b_80361450
	la.l    $a3, object_b_80361450
	lwc1    $f14, 0x0038($sp)
	mfc1    $a2, $f18
	jal     bg_check_ground
	add.s   $f12, $f10, $f16
	swc1    $f0, 0x0030($sp)
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	jal     object_b_802E41A4
	lw      $a3, 0x0024($sp)
	li      $at, 0x0001
	bne     $v0, $at, 111$
	nop
	lwc1    $f6, 0x003C($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0034($sp)
	lwc1    $f4, 0x0024($sp)
	add.s   $f12, $f6, $f10
	jal     bg_check_water
	add.s   $f14, $f16, $f4
	swc1    $f0, 0x002C($sp)
	lwc1    $f8, 0x002C($sp)
	lwc1    $f18, 0x0038($sp)
	c.lt.s  $f18, $f8
	nop
	bc1f    103$
	nop
	lwc1    $f6, 0x002C($sp)
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	lw      $a3, 0x0024($sp)
	jal     object_b_802E4814
	swc1    $f6, 0x0010($sp)
	lh      $t0, 0x0022($sp)
	addiu   $t1, $t0, 0x0004
	b       109$
	sh      $t1, 0x0022($sp)
103$:
	lui     $a0, %hi(object_b_80361450)
	lw      $a0, %lo(object_b_80361450)($a0)
	lw      $a1, 0x0030($sp)
	lw      $a2, 0x0028($sp)
	jal     object_b_802E445C
	lw      $a3, 0x0024($sp)
109$:
	b       116$
	nop
111$:
	lh      $t2, 0x0022($sp)
	andi    $t9, $t2, 0x0002
	xori    $t4, $t9, 0x0002
	addu    $t5, $t2, $t4
	sh      $t5, 0x0022($sp)
116$:
	jal     object_b_802E4CEC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x00A4($t6)
	trunc.w.s $f8, $f4
	trunc.w.s $f16, $f10
	mfc1    $t0, $f8
	mfc1    $t7, $f16
	nop
	bne     $t7, $t0, 132$
	nop
	lh      $t1, 0x0022($sp)
	addiu   $t9, $t1, 0x0001
	sh      $t9, 0x0022($sp)
132$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00B0($t2)
	trunc.w.s $f6, $f18
	mfc1    $t5, $f6
	nop
	bnez    $t5, 143$
	nop
	lh      $t6, 0x0022($sp)
	addiu   $t3, $t6, 0x0008
	sh      $t3, 0x0022($sp)
143$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f4, 0x00A4($t7)
	trunc.w.s $f16, $f10
	trunc.w.s $f8, $f4
	mfc1    $a0, $f16
	mfc1    $a1, $f8
	jal     object_b_802E4D88
	nop
	b       157$
	lh      $v0, 0x0022($sp)
	b       157$
	nop
157$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_b_802E5114:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $at, %hi(object_b_80332610)
	sb      $0, %lo(object_b_80332610)($at)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	li      $t6, 0x0001
	lui     $at, %hi(object_b_80332610)
	sb      $t6, %lo(object_b_80332610)($at)
	b       15$
	lh      $v0, 0x001E($sp)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5160:
	lhu     $t6, 0x00CA($a0)
	lui     $at, %hi(math_sin)
	lwc1    $f6, 0x00B8($a0)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t9)
	lhu     $t0, 0x00CA($a0)
	lui     $at, %hi(math_cos)
	lwc1    $f16, 0x00B8($a0)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x00AC($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($a0)
	lwc1    $f10, 0x00A4($a0)
	lwc1    $f16, 0x00B0($a0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($a0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A8($a0)
	lwc1    $f6, 0x00B4($t5)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E5208:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f4, 0x0020($t6)
	swc1    $f4, 0x000C($sp)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lwc1    $f6, 0x0024($t7)
	swc1    $f6, 0x0008($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lwc1    $f8, 0x0028($t8)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f6, 0x0008($sp)
	multu   $a3, $a3
	sub.s   $f16, $f12, $f10
	sub.s   $f18, $f12, $f10
	sub.s   $f10, $f14, $f6
	mul.s   $f4, $f16, $f18
	sub.s   $f8, $f14, $f6
	lwc1    $f6, 0x0018($sp)
	mflo    $t9
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0004($sp)
	sub.s   $f10, $f6, $f8
	mtc1    $t9, $f6
	add.s   $f18, $f4, $f16
	mul.s   $f4, $f10, $f10
	cvt.s.w $f8, $f6
	add.s   $f16, $f18, $f4
	c.lt.s  $f16, $f8
	nop
	bc1f    38$
	nop
	b       42$
	li      $v0, 0x0001
38$:
	b       42$
	move    $v0, $0
	b       42$
	nop
42$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

object_b_802E52B8:
	addiu   $sp, $sp, -0x0010
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0014($sp)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0008($sp)
	sub.s   $f18, $f10, $f16
	lw      $t6, 0x0020($sp)
	sub.s   $f10, $f6, $f8
	mul.s   $f4, $f18, $f18
	lwc1    $f8, 0x0004($sp)
	multu   $t6, $t6
	mul.s   $f16, $f10, $f10
	lwc1    $f6, 0x001C($sp)
	sub.s   $f10, $f6, $f8
	add.s   $f18, $f4, $f16
	mul.s   $f4, $f10, $f10
	mflo    $t7
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f16, $f18, $f4
	c.lt.s  $f16, $f8
	nop
	bc1f    36$
	nop
	b       40$
	li      $v0, 0x0001
36$:
	b       40$
	move    $v0, $0
	b       40$
	nop
40$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

object_b_802E5360:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x001C($sp)
	lwc1    $f12, 0x0024($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     object_b_802E5208
	lw      $a3, 0x002C($sp)
	li      $at, 0x0001
	bne     $v0, $at, 27$
	nop
	lw      $t9, 0x0028($sp)
	li      $at, -0x0011
	lh      $t0, 0x0002($t9)
	and     $t1, $t0, $at
	b       31$
	sh      $t1, 0x0002($t9)
27$:
	lw      $t2, 0x0028($sp)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E53F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	jal     object_b_802E5208
	lw      $a3, 0x0038($sp)
	li      $at, 0x0001
	bne     $v0, $at, 32$
	nop
	b       43$
	li      $v0, 0x0001
	b       39$
	nop
32$:
	lw      $t8, 0x0028($sp)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0140
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t8)
	lw      $t9, 0x0028($sp)
	sw      $v0, 0x00C8($t9)
39$:
	b       43$
	move    $v0, $0
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E54B0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	bnez    $t7, 45$
	nop
	jal     randf
	nop
	lw      $t8, 0x0038($sp)
	lw      $t0, 0x0028($sp)
	sll     $t9, $t8, 1
	mtc1    $t9, $f10
	mtc1    $t8, $f4
	cvt.s.w $f16, $f10
	lwc1    $f10, 0x002C($sp)
	cvt.s.w $f6, $f4
	mul.s   $f18, $f0, $f16
	sub.s   $f8, $f18, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0164($t0)
	jal     randf
	nop
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0028($sp)
	sll     $t2, $t1, 1
	mtc1    $t2, $f4
	mtc1    $t1, $f8
	cvt.s.w $f18, $f4
	lwc1    $f4, 0x0034($sp)
	cvt.s.w $f10, $f8
	mul.s   $f6, $f0, $f18
	sub.s   $f16, $f6, $f10
	add.s   $f18, $f16, $f4
	swc1    $f18, 0x016C($t3)
45$:
	lw      $t4, 0x0028($sp)
	lwc1    $f8, 0x0164($t4)
	lwc1    $f6, 0x00A0($t4)
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x0020($sp)
	lw      $t5, 0x0028($sp)
	lwc1    $f16, 0x016C($t5)
	lwc1    $f4, 0x00A8($t5)
	sub.s   $f18, $f16, $f4
	swc1    $f18, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0020($sp)
	sh      $v0, 0x0026($sp)
	lw      $t6, 0x0028($sp)
	lh      $a1, 0x0026($sp)
	li      $a2, 0x0140
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t6)
	lw      $t7, 0x0028($sp)
	sw      $v0, 0x00C8($t7)
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E55D0:
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	addiu   $sp, $sp, -0x0008
	andi    $t6, $a1, 0xFFFF
	andi    $t7, $a0, 0xFFFF
	subu    $t8, $t6, $t7
	sh      $t8, 0x0006($sp)
	lhu     $t5, 0x0006($sp)
	subu    $t9, $0, $a2
	andi    $t0, $t9, 0xFFFF
	la.u    $t3, math_sin
	la.l    $t3, math_sin
	sra     $t1, $t0, 4
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	sll     $t2, $t1, 2
	addu    $t4, $t2, $t3
	addu    $t8, $t7, $t3
	lwc1    $f6, 0x0000($t8)
	lwc1    $f4, 0x0000($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    45$
	nop
	andi    $t9, $a2, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $t2, $t1, $t3
	lwc1    $f10, 0x0000($t2)
	lwc1    $f8, 0x0000($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    45$
	nop
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    45$
	nop
	b       49$
	li      $v0, 0x0001
45$:
	b       49$
	move    $v0, $0
	b       49$
	nop
49$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E569C:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	lwc1    $f4, 0x0064($sp)
	swc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0068($sp)
	swc1    $f6, 0x003C($sp)
	lwc1    $f8, 0x006C($sp)
	swc1    $f8, 0x0040($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0070($sp)
	swc1    $f16, 0x0048($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0038
	beqz    $v0, 41$
	nop
	lwc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0064($sp)
	lw      $t6, 0x0060($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t6)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x0068($sp)
	lw      $t7, 0x0060($sp)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t7)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f4, 0x006C($sp)
	lw      $t8, 0x0060($sp)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0008($t8)
	b       45$
	li      $v0, 0x0001
	b       43$
	nop
41$:
	b       45$
	move    $v0, $0
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

object_b_802E5760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lb      $t6, 0x0027($sp)
	sb      $0, 0x001B($sp)
	blez    $t6, 43$
	nop
8$:
	la.u    $a2, o_13003068
	la.l    $a2, o_13003068
	lw      $a0, 0x0020($sp)
	jal     obj_make_here
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	lw      $t7, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	swc1    $f6, 0x00B8($t7)
	jal     randf
	nop
	li      $at, 0x42200000
	mtc1    $at, $f8
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mul.s   $f10, $f0, $f8
	lw      $t8, 0x001C($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t8)
	jal     rand
	nop
	lw      $t9, 0x001C($sp)
	sw      $v0, 0x00C8($t9)
	lb      $t0, 0x001B($sp)
	lb      $t4, 0x0027($sp)
	addiu   $t1, $t0, 0x0001
	sll     $t2, $t1, 24
	sra     $t3, $t2, 24
	slt     $at, $t3, $t4
	bnez    $at, 8$
	sb      $t1, 0x001B($sp)
43$:
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5824:
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	lw      $t6, 0x0154($a0)
	slt     $at, $t6, $a1
	beqz    $at, 8$
	nop
	jr      $ra
	move    $v0, $0
8$:
	lw      $t7, 0x0154($a0)
	addiu   $t8, $a1, 0x0028
	slt     $at, $t7, $t8
	beqz    $at, 27$
	nop
	lw      $t9, 0x0154($a0)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 21$
	nop
	lh      $t1, 0x0002($a0)
	ori     $t2, $t1, 0x0010
	b       25$
	sh      $t2, 0x0002($a0)
21$:
	lh      $t3, 0x0002($a0)
	li      $at, -0x0011
	and     $t4, $t3, $at
	sh      $t4, 0x0002($a0)
25$:
	b       30$
	nop
27$:
	sh      $0, 0x0074($a0)
	jr      $ra
	li      $v0, 0x0001
30$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E58B4:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object_80361250)
	lh      $t6, %lo(object_80361250)($t6)
	bnez    $t6, 19$
	nop
	lui     $t7, %hi(object_b_80332614)
	lh      $t7, %lo(object_b_80332614)($t7)
	bne     $a0, $t7, 15$
	nop
	b       35$
	li      $v0, 0x0001
	b       17$
	nop
15$:
	b       35$
	move    $v0, $0
17$:
	b       31$
	nop
19$:
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	bne     $a0, $t8, 26$
	nop
	li      $t9, 0x0001
	b       27$
	sh      $t9, 0x0006($sp)
26$:
	sh      $0, 0x0006($sp)
27$:
	lui     $t0, %hi(object_80361250)
	lh      $t0, %lo(object_80361250)($t0)
	lui     $at, %hi(object_b_80332614)
	sh      $t0, %lo(object_b_80332614)($at)
31$:
	b       35$
	lb      $v0, 0x0007($sp)
	b       35$
	nop
35$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E5948:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lwc1    $f4, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	trunc.w.s $f6, $f4
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	mfc1    $a3, $f6
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	li      $at, 0x0001
	bne     $v0, $at, 40$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001C($t9)
	li      $at, 0x8000
	li      $a2, 0x1000
	lw      $a0, 0x00D4($t8)
	jal     object_b_802E55D0
	addu    $a1, $a1, $at
	li      $at, 0x0001
	bne     $v0, $at, 40$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a2, 0x1000
	lw      $a0, 0x00C8($t0)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t0)
	li      $at, 0x0001
	beq     $v0, $at, 45$
	nop
40$:
	lw      $t1, 0x0020($sp)
	li      $at, 0x0001
	lw      $t2, 0x0000($t1)
	bne     $t2, $at, 70$
	nop
45$:
	lw      $t4, 0x0020($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0000($t4)
	jal     pl_demo_80257640
	lw      $a0, 0x002C($sp)
	li      $at, 0x0002
	bne     $v0, $at, 70$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0026($sp)
	sh      $v0, 0x001E($sp)
	lh      $t5, 0x001E($sp)
	beqz    $t5, 68$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lw      $t6, 0x0020($sp)
	sw      $0, 0x0000($t6)
	b       74$
	lh      $v0, 0x001E($sp)
68$:
	b       74$
	move    $v0, $0
70$:
	b       74$
	move    $v0, $0
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5A80:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	bnez    $a1, 7$
	nop
	b       36$
	nop
7$:
	andi    $t6, $a0, 0x0001
	li      $at, 0x0001
	bne     $t6, $at, 34$
	nop
	lh      $a2, 0x0000($a1)
	li      $at, 0x0001
	beq     $a2, $at, 20$
	nop
	li      $at, 0x000A
	beq     $a2, $at, 26$
	nop
	b       32$
	nop
20$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0064
	sw      $t7, 0x014C($t8)
	b       34$
	nop
26$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0065
	sw      $t9, 0x014C($t0)
	b       34$
	nop
32$:
	b       34$
	nop
34$:
	b       36$
	nop
36$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E5B18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x001F
	bnez    $at, 16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
	b       80$
	li      $v0, 0x0001
	b       23$
	nop
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
23$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	andi    $t2, $t1, 0x0007
	bnez    $t2, 76$
	nop
	li.u    $a0, 0x5118A081
	jal     object_playsound
	li.l    $a0, 0x5118A081
	lui     $a0, %hi(object)
	la.u    $a2, o_13003558
	la.l    $a2, o_13003558
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0096
	sw      $v0, 0x0024($sp)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	lw      $t3, 0x0024($sp)
	mul.s   $f18, $f20, $f16
	lwc1    $f10, 0x00A0($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A0($t3)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f8
	mov.s   $f20, $f0
	lw      $t4, 0x0024($sp)
	mul.s   $f16, $f20, $f8
	lwc1    $f6, 0x00A4($t4)
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A4($t4)
	jal     randf
	nop
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	lw      $t5, 0x0024($sp)
	mul.s   $f8, $f20, $f4
	lwc1    $f18, 0x00A8($t5)
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x00A8($t5)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	lw      $t6, 0x0024($sp)
	mul.s   $f10, $f0, $f16
	swc1    $f10, 0x00B8($t6)
76$:
	b       80$
	move    $v0, $0
	b       80$
	nop
80$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E5C6C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lb      $t6, 0x0033($sp)
	slti    $at, $t6, 0x000A
	bnez    $at, 12$
	nop
	b       34$
	nop
12$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_13004348
	la.l    $t9, o_13004348
	li      $t8, 0x00DB
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	lb      $a0, 0x0033($sp)
	lh      $a1, 0x0036($sp)
	lh      $a2, 0x003A($sp)
	lh      $a3, 0x003E($sp)
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t0)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t0)
	b       34$
	nop
34$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E5D04:
	lui     $t6, %hi(object_b_8033261C)
	lb      $t6, %lo(object_b_8033261C)($t6)
	sll     $t7, $t6, 1
	addu    $t8, $a0, $t7
	lh      $t9, 0x0000($t8)
	bnez    $t9, 11$
	nop
	lui     $at, %hi(object_b_8033261C)
	sb      $0, %lo(object_b_8033261C)($at)
	jr      $ra
	li      $v0, 0x0001
11$:
	lui     $t0, %hi(object_b_8033261C)
	lb      $t0, %lo(object_b_8033261C)($t0)
	lui     $t4, %hi(contp)
	lw      $t4, %lo(contp)($t4)
	sll     $t1, $t0, 1
	addu    $t2, $a0, $t1
	lh      $t3, 0x0000($t2)
	lhu     $t5, 0x0012($t4)
	and     $t6, $t3, $t5
	beqz    $t6, 30$
	nop
	lui     $t7, %hi(object_b_8033261C)
	lb      $t7, %lo(object_b_8033261C)($t7)
	lui     $at, %hi(object_b_8033261C)
	addiu   $t8, $t7, 0x0001
	sb      $t8, %lo(object_b_8033261C)($at)
	lui     $at, %hi(object_b_80332620)
	b       46$
	sb      $0, %lo(object_b_80332620)($at)
30$:
	lui     $t9, %hi(object_b_80332620)
	lb      $t9, %lo(object_b_80332620)($t9)
	li      $at, 0x000A
	beq     $t9, $at, 40$
	nop
	lui     $t0, %hi(contp)
	lw      $t0, %lo(contp)($t0)
	lhu     $t1, 0x0012($t0)
	beqz    $t1, 46$
	nop
40$:
	lui     $at, %hi(object_b_8033261C)
	sb      $0, %lo(object_b_8033261C)($at)
	lui     $at, %hi(object_b_80332620)
	sb      $0, %lo(object_b_80332620)($at)
	jr      $ra
	move    $v0, $0
46$:
	lui     $t2, %hi(object_b_80332620)
	lb      $t2, %lo(object_b_80332620)($t2)
	lui     $at, %hi(object_b_80332620)
	addiu   $t4, $t2, 0x0001
	sb      $t4, %lo(object_b_80332620)($at)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E5DE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	lw      $t6, 0x0018($sp)
	sh      $v0, 0x0000($t6)
	lw      $t7, 0x0018($sp)
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	lh      $t9, 0x0000($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 25$
	nop
	andi    $t1, $t9, 0x0008
	bnez    $t1, 25$
	nop
	li.u    $a0, 0x30364081
	jal     object_playsound
	li.l    $a0, 0x30364081
	b       29$
	li      $v0, 0x0001
25$:
	b       29$
	move    $v0, $0
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E5E6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	move    $a1, $0
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E5EA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E5EE8
object_b_802E5EE8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332624
	la.l    $a1, object_b_80332624
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E5F64
object_b_802E5F64:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 49$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 54$
	nop
	b       59$
	nop
19$:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x0026
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, 31$
	nop
	jal     objlib_802A05B4
	nop
	b       33$
	nop
31$:
	jal     objlib_802A05D4
	nop
33$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x012D
	bnez    $at, 43$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
43$:
	b       59$
	nop
45$:
	jal     object_b_802E5E6C
	nop
	b       59$
	nop
49$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
	b       59$
	nop
54$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
	b       59$
	nop
59$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0134($t5)
	andi    $t7, $t6, 0x8000
	beqz    $t7, 70$
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0134($t8)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E6098
object_b_802E6098:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332634
	la.l    $a1, object_b_80332634
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E6114
object_b_802E6114:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 28$
	nop
	b       82$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x05DC
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 26$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
26$:
	b       82$
	nop
28$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lh      $t0, 0x0026($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 51$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t2)
	lh      $t3, 0x0026($sp)
	andi    $t4, $t3, 0x0008
	bnez    $t4, 49$
	nop
	li.u    $a0, 0x30364081
	jal     object_playsound
	li.l    $a0, 0x30364081
49$:
	b       60$
	nop
51$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_b_80338480)
	ldc1    $f18, %lo(object_b_80338480)($at)
	lwc1    $f10, 0x00B8($t5)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00B8($t5)
60$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338488)
	ldc1    $f16, %lo(object_b_80338488)($at)
	lwc1    $f8, 0x00B8($t6)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    76$
	nop
	li      $at, 0x42960000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t7)
76$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x0258
	b       82$
	nop
82$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, 93$
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
93$:
	b       95$
	nop
95$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E62A4
object_b_802E62A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338490)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338490)($at)
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332634
	la.l    $a1, object_b_80332634
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E631C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x00C8($t7)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	beqz    $v0, 25$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41900000
	mtc1    $at, $f8
	lwc1    $f6, 0x00B0($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B0($t0)
25$:
	lh      $t1, 0x001E($sp)
	andi    $t2, $t1, 0x0002
	beqz    $t2, 33$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t4)
33$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t5)
	bnez    $v0, 46$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t8)
46$:
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E63EC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	li      $at, 0x0001
	bne     $v0, $at, 18$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
18$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0097
	bnez    $at, 28$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6474
object_b_802E6474:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	slti    $at, $s0, 0x0065
	bnez    $at, 14$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 86$
	nop
	b       91$
	nop
14$:
	slti    $at, $s0, 0x0005
	bnez    $at, 22$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 81$
	nop
	b       91$
	nop
22$:
	sltiu   $at, $s0, 0x0005
	beqz    $at, 91$
	nop
	sll     $t7, $s0, 2
	lui     $at, %hi(object_b_80338494)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338494)($at)
	jr      $t7
	nop
.globl L802E64F0
L802E64F0:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	li      $at, 0x0001
	bne     $v0, $at, 45$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
45$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       91$
	nop
.globl L802E6540
L802E6540:
	jal     object_b_802E631C
	nop
	b       91$
	nop
.globl L802E6550
L802E6550:
	jal     object_b_802E63EC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       91$
	nop
.globl L802E6570
L802E6570:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x0026
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x003D
	bnez    $at, 75$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0004
	sw      $t3, 0x014C($t4)
75$:
	b       91$
	nop
.globl L802E65A8
L802E65A8:
	jal     object_b_802E5E6C
	nop
	b       91$
	nop
81$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       91$
	nop
86$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       91$
	nop
91$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0134($t7)
	andi    $t9, $t8, 0x8000
	beqz    $t9, 102$
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
102$:
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E6628
object_b_802E6628:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 73$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_803384A8)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_803384A8)($at)
	jr      $t7
	nop
.globl L802E6660
L802E6660:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	bnez    $t9, 27$
	nop
	jal     objlib_802A05B4
	nop
	li      $at, 0x42480000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
27$:
	jal     object_b_802E4E90
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x000F
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 41$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
41$:
	b       73$
	nop
.globl L802E66D4
L802E66D4:
	jal     object_b_802E631C
	nop
	b       73$
	nop
.globl L802E66E4
L802E66E4:
	jal     object_b_802E63EC
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       73$
	nop
.globl L802E6704
L802E6704:
	jal     object_b_802E5DE8
	addiu   $a0, $sp, 0x001E
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x003D
	bnez    $at, 67$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0004
	sw      $t7, 0x014C($t8)
67$:
	b       73$
	nop
.globl L802E673C
L802E673C:
	jal     object_b_802E5E6C
	nop
	b       73$
	nop
73$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 84$
	nop
	jal     object_b_802E5EA4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6790
object_b_802E6790:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E67DC
object_b_802E67DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_kelpblade
	la.l    $a2, o_kelpblade
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x38BB
	sw      $t6, 0x00D4($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x157C
	sw      $t8, 0x00D0($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x2580
	sw      $t0, 0x00D8($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t2, 0x001C($sp)
	swc1    $f4, 0x002C($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t3, 0x001C($sp)
	swc1    $f6, 0x0030($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t4, 0x001C($sp)
	swc1    $f8, 0x0034($t4)
	lui     $a0, %hi(object)
	la.u    $a2, o_kelpblade
	la.l    $a2, o_kelpblade
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $t5, 0xA348
	sw      $t5, 0x00D4($t6)
	lw      $t8, 0x001C($sp)
	li      $t7, 0x17D6
	sw      $t7, 0x00D0($t8)
	lw      $t9, 0x001C($sp)
	sw      $0, 0x00D8($t9)
	lui     $at, %hi(object_b_803384BC)
	lwc1    $f10, %lo(object_b_803384BC)($at)
	lw      $t0, 0x001C($sp)
	swc1    $f10, 0x002C($t0)
	lui     $at, %hi(object_b_803384C0)
	lwc1    $f16, %lo(object_b_803384C0)($at)
	lw      $t1, 0x001C($sp)
	swc1    $f16, 0x0030($t1)
	lui     $at, %hi(object_b_803384C4)
	lwc1    $f18, %lo(object_b_803384C4)($at)
	lw      $t2, 0x001C($sp)
	swc1    $f18, 0x0034($t2)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t5, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t4, $f8
	nop
	sh      $t4, 0x0040($t5)
	lui     $a0, %hi(object)
	la.u    $a2, o_kelpblade
	la.l    $a2, o_kelpblade
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x9E34
	sw      $t6, 0x00D4($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x21FC
	sw      $t8, 0x00D0($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x1004
	sw      $t0, 0x00D8($t1)
	lui     $at, %hi(object_b_803384C8)
	lwc1    $f10, %lo(object_b_803384C8)($at)
	lw      $t2, 0x001C($sp)
	swc1    $f10, 0x002C($t2)
	lui     $at, %hi(object_b_803384CC)
	lwc1    $f16, %lo(object_b_803384CC)($at)
	lw      $t3, 0x001C($sp)
	swc1    $f16, 0x0030($t3)
	lui     $at, %hi(object_b_803384D0)
	lwc1    $f18, %lo(object_b_803384D0)($at)
	lw      $t4, 0x001C($sp)
	swc1    $f18, 0x0034($t4)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t7, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t6, $f8
	nop
	sh      $t6, 0x0040($t7)
	lui     $a0, %hi(object)
	la.u    $a2, o_kelpblade
	la.l    $a2, o_kelpblade
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00C1
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t8, 0xDF94
	sw      $t8, 0x00D4($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x251C
	sw      $t0, 0x00D0($t1)
	lw      $t2, 0x001C($sp)
	sw      $0, 0x00D8($t2)
	lui     $at, %hi(object_b_803384D4)
	lwc1    $f10, %lo(object_b_803384D4)($at)
	lw      $t3, 0x001C($sp)
	swc1    $f10, 0x002C($t3)
	lui     $at, %hi(object_b_803384D8)
	lwc1    $f16, %lo(object_b_803384D8)($at)
	lw      $t4, 0x001C($sp)
	swc1    $f16, 0x0030($t4)
	lui     $at, %hi(object_b_803384DC)
	lwc1    $f18, %lo(object_b_803384DC)($at)
	lw      $t5, 0x001C($sp)
	swc1    $f18, 0x0034($t5)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	lw      $t8, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sh      $t7, 0x0040($t8)
	b       144$
	nop
144$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802E6A2C
object_b_802E6A2C:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803384E0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803384E0)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803384E4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803384E4)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0100
	sw      $t9, 0x0190($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E6A8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 8
	andi    $t9, $t8, 0x0001
	bnez    $t9, 21$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0100
	sw      $t0, 0x0188($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     obj_set_actorflag
	li      $a1, 0x0001
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E6AF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, 26$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40140000
	mtc1    $at, $f11
	lw      $t9, 0x0154($t8)
	mtc1    $0, $f10
	li      $at, 0x3FF00000
	mtc1    $t9, $f4
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	add.d   $f4, $f16, $f18
	jal     object_set_scale
	cvt.s.d $f12, $f4
	b       49$
	nop
26$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00CD
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lwc1    $f6, 0x00DC($t0)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00DC($t0)
	jal     object_b_802E6A8C
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332644
	la.l    $a1, object_b_80332644
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 55$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 41$
	nop
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t3, 0x001C($t2)
	sw      $t3, 0x00C8($t4)
	li      $at, 0x41C80000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
	li      $at, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
41$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x00800000
	lw      $t0, 0x0134($t9)
	and     $t1, $t0, $at
	beqz    $t1, 52$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
52$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
55$:
	lui     $a0, %hi(object)
	jal     objlib_802A513C
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 65$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E6CF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0022($sp)
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0020($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t0, 0x0190
	lw      $a1, 0x0164($t9)
	lw      $a2, 0x0168($t9)
	lw      $a3, 0x016C($t9)
	sw      $t0, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t9
	li      $at, 0x0001
	bne     $v0, $at, 44$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a2, 0x2000
	lw      $a0, 0x00C8($t1)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t1)
	li      $at, 0x0001
	bne     $v0, $at, 44$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00F8($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
44$:
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0020($sp)
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E6DC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t9, %hi(object)
	lh      $t7, 0x0040($t6)
	addiu   $t8, $t7, 0x0001
	sh      $t8, 0x0040($t6)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0040($t9)
	sh      $t0, 0x001A($sp)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0018($sp)
	lh      $t2, 0x001A($sp)
	li      $at, 0x0005
	beq     $t2, $at, 27$
	nop
	li      $at, 0x0010
	bne     $t2, $at, 30$
	nop
27$:
	li.u    $a0, 0x50270081
	jal     object_playsound
	li.l    $a0, 0x50270081
30$:
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x0800
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x0018($sp)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6E84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0001
	bne     $t7, $at, 15$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x014C($t9)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E6ED8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 25$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 53$
	nop
	b       63$
	nop
25$:
	jal     object_b_802E6CF0
	nop
	b       63$
	nop
29$:
	jal     object_b_802E6E84
	nop
	b       63$
	nop
33$:
	jal     object_b_802E6DC8
	nop
	b       63$
	nop
37$:
	jal     object_b_802E6AF8
	nop
	b       63$
	nop
41$:
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, 51$
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
51$:
	b       63$
	nop
53$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       63$
	nop
63$:
	jal     object_b_802E6BD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, 75$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
75$:
	b       77$
	nop
77$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E7020:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 24$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 40$
	nop
	b       50$
	nop
20$:
	jal     object_b_802E6E84
	nop
	b       50$
	nop
24$:
	jal     object_b_802E6AF8
	nop
	b       50$
	nop
28$:
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, 38$
	nop
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
38$:
	b       50$
	nop
40$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13003174
	la.l    $a1, o_13003174
	li      $a0, 0x00BC
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       50$
	nop
50$:
	jal     object_b_802E6BD4
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	slti    $at, $t9, 0x0097
	bnez    $at, 62$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E7134:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 11$
	nop
	jal     object_b_802E6ED8
	nop
	b       13$
	nop
11$:
	jal     object_b_802E7020
	nop
13$:
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7180:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     objlib_8029F464
	li      $a0, 0x0001
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     objlib_8029F6E0
	li      $a3, 0x42C80000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	slti    $at, $t2, 0x0097
	bnez    $at, 34$
	nop
	lui     $t3, %hi(mario_obj)
	lw      $t3, %lo(mario_obj)($t3)
	lw      $t4, 0x0134($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x0134($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t8)
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7220:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x014C($t0)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F820
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x014C($t7)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7324:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	bnez    $t7, 29$
	nop
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	bnez    $t1, 27$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00F0($t3)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0001
	sw      $t4, 0x0000($t5)
27$:
	b       60$
	nop
29$:
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x0000($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0000($t6)
	lw      $t9, 0x0018($sp)
	lw      $t0, 0x0000($t9)
	slti    $at, $t0, 0x0006
	bnez    $at, 41$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F0($t1)
41$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	slti    $at, $t3, 0x000B
	bnez    $at, 50$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x00F0($t5)
50$:
	lw      $t7, 0x0018($sp)
	lw      $t8, 0x0000($t7)
	slti    $at, $t8, 0x0010
	bnez    $at, 60$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	lw      $t9, 0x0018($sp)
	sw      $0, 0x0000($t9)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E742C
object_b_802E742C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0FA0
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, 86$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x0124($t7)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 40$
	nop
	b       44$
	nop
28$:
	jal     object_b_802E7134
	nop
	b       44$
	nop
32$:
	jal     object_b_802E7180
	nop
	b       44$
	nop
36$:
	jal     object_b_802E7280
	nop
	b       44$
	nop
40$:
	jal     object_b_802E7220
	nop
	b       44$
	nop
44$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F8($t8)
	bne     $t9, $at, 86$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	slti    $at, $t1, 0x0079
	bnez    $at, 63$
	nop
	li      $t2, 0x0001
	b       65$
	sb      $t2, 0x0027($sp)
63$:
	li      $t3, 0x0007
	sb      $t3, 0x0027($sp)
65$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lb      $t6, 0x0027($sp)
	lw      $t5, 0x00FC($t4)
	and     $t7, $t5, $t6
	bnez    $t7, 78$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130031AC
	la.l    $a2, o_130031AC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0096
78$:
	li.u    $a0, 0x60086001
	jal     object_levelsound
	li.l    $a0, 0x60086001
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00FC($t8)
86$:
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E75A0
object_b_802E75A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lui     $t6, %hi(object)
	mul.s   $f8, $f20, $f6
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	addiu   $t9, $t8, -0x0028
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lui     $t0, %hi(object)
	mul.s   $f16, $f20, $f10
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	trunc.w.s $f4, $f16
	mfc1    $t2, $f4
	nop
	addiu   $t3, $t2, 0x003C
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A4($t0)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f4
	mov.s   $f20, $f0
	lui     $t4, %hi(object)
	mul.s   $f18, $f20, $f4
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x00A8($t4)
	trunc.w.s $f8, $f18
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, -0x0028
	mtc1    $t8, $f6
	nop
	cvt.s.w $f10, $f6
	add.s   $f4, $f16, $f10
	swc1    $f4, 0x00A8($t4)
	lui     $at, %hi(object_b_803384E8)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_803384E8)($at)
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E76AC
object_b_802E76AC:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803384EC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803384EC)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803384F0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803384F0)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x4000
	sw      $t9, 0x0190($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E770C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001A($sp)
	sh      $0, 0x0018($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A0($t8)
	swc1    $f4, 0x0108($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x00A4($t9)
	swc1    $f6, 0x010C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0110($t0)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0018($sp)
	lh      $t1, 0x001A($sp)
	li      $at, 0x0005
	beq     $t1, $at, 29$
	nop
	li      $at, 0x0010
	bne     $t1, $at, 32$
	nop
29$:
	li.u    $a0, 0x50270081
	jal     object_playsound
	li.l    $a0, 0x50270081
32$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x447A0000
	mtc1    $at, $f16
	lwc1    $f10, 0x015C($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    50$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a2, 0x0140
	lw      $a0, 0x00C8($t3)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00C8($t4)
50$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	lw      $t6, 0x0134($t5)
	bne     $t6, $at, 60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7814:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x0100($t6)
	beqz    $s0, 21$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 50$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 68$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 83$
	nop
	b       107$
	nop
21$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0032($sp)
	sh      $v0, 0x002A($sp)
	lh      $t7, 0x002A($sp)
	beqz    $t7, 48$
	nop
	jal     save_set_cannon
	nop
	la.u    $a0, o_13003274
	jal     objlib_8029F95C
	la.l    $a0, o_13003274
	sw      $v0, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	beqz    $t8, 44$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	b       48$
	sw      $t9, 0x0100($t0)
44$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x0100($t2)
48$:
	b       107$
	nop
50$:
	la.u    $a0, o_13003274
	jal     objlib_8029F95C
	la.l    $a0, o_13003274
	sw      $v0, 0x002C($sp)
	li      $a0, 0x0096
	jal     camera_8029000C
	lw      $a1, 0x002C($sp)
	sh      $v0, 0x0028($sp)
	lh      $t3, 0x0028($sp)
	li      $at, -0x0001
	bne     $t3, $at, 66$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x0100($t5)
66$:
	b       107$
	nop
68$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x0036($sp)
	sh      $v0, 0x002A($sp)
	lh      $t6, 0x002A($sp)
	beqz    $t6, 81$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0003
	sw      $t7, 0x0100($t8)
81$:
	b       107$
	nop
83$:
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0021
	lh      $t0, 0x0074($t9)
	and     $t1, $t0, $at
	sh      $t1, 0x0074($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x00F8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x0100($t7)
	b       107$
	nop
107$:
	b       109$
	nop
109$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E79DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, 66$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x00FC($t9)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 51$
	nop
	b       66$
	nop
23$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a0, 0x00A2
	move    $a1, $t0
	jal     camera_8028FF04
	lw      $a2, 0x0144($t0)
	beqz    $v0, 49$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t2, 0x0074($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0074($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x00F8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
49$:
	b       66$
	nop
51$:
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x0001
	bne     $t6, $at, 61$
	nop
	li      $a0, 0x0004
	jal     object_b_802E7814
	li      $a1, 0x0069
	b       64$
	nop
61$:
	li      $a0, 0x002F
	jal     object_b_802E7814
	li      $a1, 0x006A
64$:
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

object_b_802E7B00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lh      $t8, 0x001E($sp)
	li      $at, 0x0005
	beq     $t8, $at, 13$
	nop
	li      $at, 0x0010
	bne     $t8, $at, 16$
	nop
13$:
	li.u    $a0, 0x50270081
	jal     object_playsound
	li.l    $a0, 0x50270081
16$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x1000
	lw      $a0, 0x00C8($t9)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0162($t1)
	lh      $t3, 0x00CA($t1)
	bne     $t2, $t3, 35$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
35$:
	li.u    $a0, 0x045BFF81
	jal     object_playsound
	li.l    $a0, 0x045BFF81
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7BB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 24$
	nop
	b       28$
	nop
16$:
	jal     object_b_802E770C
	nop
	b       28$
	nop
20$:
	jal     object_b_802E7B00
	nop
	b       28$
	nop
24$:
	jal     object_b_802E79DC
	nop
	b       28$
	nop
28$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E7C4C
object_b_802E7C4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E7BB0
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E7C90
object_b_802E7C90:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     save_get_cannon
	nop
	li      $at, 0x0001
	bne     $v0, $at, 41$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_cannon
	la.l    $a2, o_cannon
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0080
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x0144($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x001C($sp)
	lwc1    $f4, 0x0164($t9)
	swc1    $f4, 0x00A0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x001C($sp)
	lwc1    $f6, 0x0168($t1)
	swc1    $f6, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x001C($sp)
	lwc1    $f8, 0x016C($t3)
	swc1    $f8, 0x00A8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E7D4C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 10$
	nop
	li.u    $a0, 0x30478081
	jal     object_playsound
	li.l    $a0, 0x30478081
10$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x001E
	beqz    $at, 33$
	nop
	li      $at, 0xBF000000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x00A4($t1)
	lwc1    $f8, 0x00B0($t1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	b       60$
	swc1    $f16, 0x00AC($t2)
33$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0050
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 43$
	nop
	jal     object_b_802E7C90
	nop
	b       62$
	nop
43$:
	li      $at, 0x40800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00AC($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f8, 0x00AC($t7)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t7)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E7E54
object_b_802E7E54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 60$
	nop
	b       64$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t8)
	li      $at, 0x457A0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x019C($t9)
	jal     save_get_cannon
	nop
	li      $at, 0x0001
	bne     $v0, $at, 41$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
41$:
	b       64$
	nop
43$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x003C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 53$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
53$:
	lui     $at, %hi(object_b_803384F4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, %lo(object_b_803384F4)($at)
	swc1    $f10, 0x019C($t6)
	b       64$
	nop
60$:
	jal     object_b_802E7D4C
	nop
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

.globl object_b_802E7F70
object_b_802E7F70:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	sw      $t9, 0x00F8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802E7FB8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332654
	la.l    $a1, object_b_80332654
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E7FEC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_cos)
	lhu     $t7, 0x00D2($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0034($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lhu     $t1, 0x00D2($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0030($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lhu     $t5, 0x00DA($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00DA($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	swc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x0034($sp)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f8, 0x002C($sp)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0030($sp)
	swc1    $f16, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0020($sp)
	jal     object_b_802E42E0
	lw      $a3, 0x001C($sp)
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802E80DC
object_b_802E80DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803384F8)
	lwc1    $f6, %lo(object_b_803384F8)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    98$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0011
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	la.u    $t1, lava_80361420
	la.l    $t1, lava_80361420
	li      $t0, 0x003C
	sh      $t0, 0x000E($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t5, lava_80361420
	la.l    $t5, lava_80361420
	lwc1    $f8, 0x00A0($t2)
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x0002($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t7, lava_80361420
	la.l    $t7, lava_80361420
	lwc1    $f16, 0x00A8($t6)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	sh      $t9, 0x0006($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	la.u    $t3, lava_80361420
	la.l    $t3, lava_80361420
	lwc1    $f4, 0x00A0($t0)
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	sh      $t2, 0x0008($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t8, lava_80361420
	la.l    $t8, lava_80361420
	lwc1    $f8, 0x00A4($t4)
	trunc.w.s $f10, $f8
	mfc1    $t6, $f10
	nop
	sh      $t6, 0x000A($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, lava_80361420
	la.l    $t1, lava_80361420
	lwc1    $f16, 0x00A8($t9)
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x000C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t2)
	la.u    $t5, lava_80361420
	la.l    $t5, lava_80361420
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x0004($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t9, lava_80361420
	la.l    $t9, lava_80361420
	lw      $t8, 0x00F4($t6)
	sh      $t8, 0x0010($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t1, lava_80361420
	la.l    $t1, lava_80361420
	lw      $t0, 0x00F8($t7)
	sh      $t0, 0x0012($t1)
	jal     object_b_802E7FEC
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	addiu   $t4, $t3, 0x1F40
	b       106$
	sw      $t4, 0x00D4($t2)
98$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0002($t5)
	ori     $t8, $t6, 0x0010
	sh      $t8, 0x0002($t5)
	la.u    $t9, lava_80361420
	la.l    $t9, lava_80361420
	sh      $0, 0x000E($t9)
106$:
	li.u    $a0, 0x40090001
	jal     object_levelsound
	li.l    $a0, 0x40090001
	jal     object_b_802E7FB8
	nop
	b       113$
	nop
113$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E82B0
object_b_802E82B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803384FC)
	lwc1    $f6, %lo(object_b_803384FC)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    42$
	nop
	la.u    $t8, lava_80361420
	la.l    $t8, lava_80361420
	li      $t7, 0x003C
	sh      $t7, 0x000E($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t2, lava_80361420
	la.l    $t2, lava_80361420
	lwc1    $f8, 0x00A0($t9)
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x0002($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	la.u    $t6, lava_80361420
	la.l    $t6, lava_80361420
	lwc1    $f16, 0x00A4($t3)
	trunc.w.s $f18, $f16
	mfc1    $t5, $f18
	nop
	sh      $t5, 0x0004($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t0, lava_80361420
	la.l    $t0, lava_80361420
	lwc1    $f4, 0x00A8($t7)
	trunc.w.s $f6, $f4
	mfc1    $t9, $f6
	b       45$
	sh      $t9, 0x0006($t0)
42$:
	la.u    $t1, lava_80361420
	la.l    $t1, lava_80361420
	sh      $0, 0x000E($t1)
45$:
	li.u    $a0, 0x40090001
	jal     object_levelsound
	li.l    $a0, 0x40090001
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8388
object_b_802E8388:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x0170($t0)
	li      $at, 0x3F800000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0168($t2)
	swc1    $f4, 0x00FC($t2)
	lui     $at, %hi(object_b_80338500)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_80338500)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0002($t3)
	ori     $t5, $t4, 0x0010
	sh      $t5, 0x0002($t3)
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E844C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332664
	la.l    $a1, object_b_80332664
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 26$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 23$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0004
	sw      $t2, 0x014C($t3)
23$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E84CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t6, camdata
	la.l    $t6, camdata
	lwc1    $f4, 0x0024($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, camdata
	la.l    $t8, camdata
	lwc1    $f10, 0x002C($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x1000
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $v0, 0x00C8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001E
	beqz    $at, 56$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lw      $t5, 0x0154($t4)
	lui     $at, %hi(object_b_80338508)
	ldc1    $f18, %lo(object_b_80338508)($at)
	mtc1    $t5, $f4
	lui     $at, %hi(object_b_80338510)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_80338510)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	b       60$
	nop
56$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x00F0($t7)
60$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, 77$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F8($t2)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E8618:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x0160($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t9, $t8, -0x0400
	slt     $at, $t9, $t7
	beqz    $at, 21$
	nop
	addiu   $t0, $t8, 0x0400
	slt     $at, $t7, $t0
	beqz    $at, 21$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
21$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0001
	lw      $t5, 0x00F4($t4)
	bne     $t5, $at, 74$
	nop
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x43160000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f16, $f8, $f10
	lwc1    $f6, 0x00FC($t9)
	c.lt.s  $f16, $f6
	nop
	bc1f    54$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x41200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00FC($t7)
	sub.s   $f8, $f18, $f4
	b       63$
	swc1    $f8, 0x00FC($t7)
54$:
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	li      $at, 0x43160000
	mtc1    $at, $f6
	lwc1    $f10, 0x0024($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x00FC($t1)
63$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001F
	bnez    $at, 72$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
72$:
	b       107$
	nop
74$:
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t5)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x0400
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	li      $at, 0x437A0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0024($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f6, $f8, $f10
	lwc1    $f4, 0x00FC($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    107$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00FC($t8)
	add.s   $f8, $f16, $f18
	swc1    $f8, 0x00FC($t8)
107$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t0, 0x00F8($t7)
	lwc1    $f16, 0x00FC($t7)
	sll     $t1, $t0, 10
	andi    $t2, $t1, 0xFFFF
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f10, $f4
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t7)
	jal     object_b_802E844C
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x05DC
	lwc1    $f12, 0x0164($t5)
	lwc1    $f14, 0x0168($t5)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t5)
	bnez    $v0, 139$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t6, 0x0003
	sw      $t6, 0x014C($t9)
139$:
	b       141$
	nop
141$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E885C:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x41700000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0097
	bnez    $at, 45$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f6, 0x0164($t9)
	swc1    $f6, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0168($t0)
	swc1    $f8, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x016C($t1)
	swc1    $f10, 0x00A8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00F0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x0168($t8)
	swc1    $f18, 0x00FC($t8)
45$:
	b       47$
	nop
47$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E8920:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	addiu   $t8, $t7, 0x0002
	sh      $t8, 0x0040($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	jal     objlib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x001F
	bnez    $at, 23$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F0($t2)
23$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x005B
	bnez    $at, 39$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F0($t7)
	jal     objlib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t6)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E89D4
object_b_802E89D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 55$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338518)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338518)($at)
	jr      $t7
	nop
.globl L802E8A0C
L802E8A0C:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t8)
	lwc1    $f14, 0x0168($t8)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t8)
	li      $at, 0x0001
	bne     $v0, $at, 34$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
34$:
	b       55$
	nop
.globl L802E8A64
L802E8A64:
	jal     object_b_802E84CC
	nop
	b       55$
	nop
.globl L802E8A74
L802E8A74:
	jal     object_b_802E8618
	nop
	li.u    $a0, 0x60034001
	jal     object_levelsound
	li.l    $a0, 0x60034001
	b       55$
	nop
.globl L802E8A90
L802E8A90:
	jal     object_b_802E885C
	nop
	b       55$
	nop
.globl L802E8AA0
L802E8AA0:
	jal     object_b_802E8920
	nop
	b       55$
	nop
55$:
	jal     object_b_802E4E90
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x00F8($t4)
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8AE4
object_b_802E8AE4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $s0, 0x0144($t1)
	beqz    $s0, 35$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 43$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 51$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 59$
	nop
	b       61$
	nop
35$:
	li      $at, 0x43480000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F4($t2)
	b       61$
	nop
43$:
	li      $at, 0x43960000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t3)
	b       61$
	nop
51$:
	li      $at, 0x43C80000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t4)
	b       61$
	nop
59$:
	b       61$
	nop
61$:
	jal     rand
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $v0, 0x00C8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0002
	sw      $t6, 0x014C($t7)
	b       72$
	nop
72$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E8C18:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x42F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lui     $t0, %hi(mario_obj)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(mario_obj)($t0)
	lwc1    $f10, 0x00A8($t1)
	lwc1    $f8, 0x0028($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x002C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	neg.s   $f14, $f14
	sh      $v0, 0x002A($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0013
	jal     objlib_8029E714
	li      $a3, 0x1000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x1000
	jal     objlib_8029E530
	lw      $a0, 0x00D0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00D0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lw      $t5, 0x00F8($t4)
	lwc1    $f6, 0x0168($t4)
	sll     $t6, $t5, 3
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	andi    $t7, $t6, 0xFFFF
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f4, $f18, $f6
	swc1    $f4, 0x00A4($t4)
	jal     object_b_802E844C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F8($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x00F8($t0)
	b       91$
	nop
91$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802E8D98:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f4, 0x00F4($t6)
	lwc1    $f10, 0x0164($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f18, 0x00F4($t0)
	lwc1    $f8, 0x016C($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f6, $f18, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_cos)
	lw      $t5, 0x00F8($t4)
	lwc1    $f6, 0x0168($t4)
	sll     $t7, $t5, 3
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t5
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t5
	sll     $t7, $t7, 4
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t6, $t9, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C8($t1)
	addiu   $t3, $t2, 0x0400
	sw      $t3, 0x00C8($t1)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x00C8($t0)
	addiu   $t7, $t5, 0x4000
	sw      $t7, 0x00D4($t0)
	jal     object_b_802E844C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F8($t8)
	addiu   $t6, $t9, 0x0001
	sw      $t6, 0x00F8($t8)
	li.u    $a0, 0x60034001
	jal     object_levelsound
	li.l    $a0, 0x60034001
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802E8ECC
object_b_802E8ECC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0002
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, 14$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 28$
	nop
	b       32$
	nop
14$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0003
	lw      $t8, 0x0144($t7)
	bne     $t8, $at, 24$
	nop
	jal     object_b_802E8C18
	nop
	b       26$
	nop
24$:
	jal     object_b_802E8D98
	nop
26$:
	b       32$
	nop
28$:
	jal     object_b_802E8920
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

.globl object_b_802E8F68
object_b_802E8F68:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F464
	li      $a0, 0x0001
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	sw      $t7, 0x00F4($t8)
	jal     randf
	nop
	li      $at, 0x40E00000
	mtc1    $at, $f10
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t0, $f18
	nop
	sh      $t0, 0x0040($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x0164($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A4($t3)
	swc1    $f6, 0x0168($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x00A8($t4)
	swc1    $f8, 0x016C($t4)
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9018:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0022($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0020($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	sh      $t1, 0x001E($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0022($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t5, $f6
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f8, $f6
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00AC($t6)
	lw      $t0, 0x0028($sp)
	lhu     $t7, 0x0020($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t0, $f18
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	cvt.s.w $f6, $f18
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_sin)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x00B0($t1)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0022($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t5, $f10
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f18, $f10
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f16, $f8, $f18
	swc1    $f16, 0x00B4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x00AC($t7)
	add.s   $f10, $f6, $f4
	swc1    $f10, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	lwc1    $f18, 0x00B4($t8)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x014C($t9)
	bne     $t0, $at, 100$
	nop
	lh      $t1, 0x001E($sp)
	lui     $at, %hi(object_b_80338530)
	ldc1    $f10, %lo(object_b_80338530)($at)
	mtc1    $t1, $f6
	lui     $at, %hi(math_cos)
	lui     $t7, %hi(object)
	cvt.d.w $f4, $f6
	lw      $t7, %lo(object)($t7)
	mul.d   $f8, $f4, $f10
	trunc.w.d $f18, $f8
	mfc1    $t3, $f18
	lwc1    $f18, 0x00B0($t7)
	andi    $t4, $t3, 0xFFFF
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	li      $at, 0x40800000
	mtc1    $at, $f10
	mul.s   $f4, $f16, $f6
	lwc1    $f6, 0x00A4($t7)
	div.s   $f8, $f4, $f10
	add.s   $f16, $f18, $f8
	sub.s   $f4, $f6, $f16
	b       106$
	swc1    $f4, 0x00A4($t7)
100$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f18, 0x00B0($t8)
	sub.s   $f8, $f10, $f18
	swc1    $f8, 0x00A4($t8)
106$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     bg_check_plane
	lw      $a2, 0x00A8($t9)
	swc1    $f0, 0x0018($sp)
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f16, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f10, $f16, $f4
	lwc1    $f6, 0x00A4($t0)
	c.lt.s  $f6, $f10
	nop
	bc1f    132$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f8
	lwc1    $f18, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x00A4($t1)
132$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00F4($t5)
	slti    $at, $t6, 0x0065
	bnez    $at, 146$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
146$:
	b       148$
	nop
148$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E9278:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lw      $t8, 0x00F4($t7)
	lwc1    $f4, 0x00A0($t6)
	sll     $t9, $t8, 2
	addu    $t9, $t9, $t8
	bgez    $t9, 14$
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
14$:
	mtc1    $t0, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t3, 0x00F4($t2)
	lwc1    $f16, 0x00A8($t1)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	bgez    $t4, 31$
	sra     $t5, $t4, 2
	addiu   $at, $t4, 0x0003
	sra     $t5, $at, 2
31$:
	mtc1    $t5, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A8($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x0300
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t9, 0x00F4($t8)
	lwc1    $f8, 0x00A0($t7)
	sll     $t0, $t9, 2
	addu    $t0, $t0, $t9
	bgez    $t0, 55$
	sra     $t6, $t0, 2
	addiu   $at, $t0, 0x0003
	sra     $t6, $at, 2
55$:
	mtc1    $t6, $f10
	nop
	cvt.s.w $f18, $f10
	sub.s   $f16, $f8, $f18
	swc1    $f16, 0x00A0($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lw      $t4, 0x00F4($t3)
	lwc1    $f6, 0x00A8($t2)
	sll     $t5, $t4, 2
	addu    $t5, $t5, $t4
	bgez    $t5, 72$
	sra     $t1, $t5, 2
	addiu   $at, $t5, 0x0003
	sra     $t1, $at, 2
72$:
	mtc1    $t1, $f4
	nop
	cvt.s.w $f10, $f4
	sub.s   $f8, $f6, $f10
	swc1    $f8, 0x00A8($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t0, 0x00F4($t9)
	lwc1    $f18, 0x00A4($t8)
	sll     $t6, $t0, 2
	addu    $t6, $t6, $t0
	addiu   $t7, $t6, 0x0100
	bgez    $t7, 90$
	sra     $t3, $t7, 2
	addiu   $at, $t7, 0x0003
	sra     $t3, $at, 2
90$:
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t8)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x000F
	jal     objlib_8029E714
	li      $a3, 0x0500
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lw      $t1, 0x00F4($t5)
	lwc1    $f10, 0x00A4($t4)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	addiu   $t9, $t2, 0x0100
	bgez    $t9, 115$
	sra     $t0, $t9, 2
	addiu   $at, $t9, 0x0003
	sra     $t0, $at, 2
115$:
	mtc1    $t0, $f8
	nop
	cvt.s.w $f16, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t4)
	b       122$
	nop
122$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9470:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, 23$
	nop
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t0, 0x001C($t9)
	sw      $t0, 0x00C8($t1)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E94E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E9278
	nop
	jal     object_b_802E9018
	li      $a0, 0x0007
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x04B0
	lwc1    $f12, 0x0164($t6)
	lwc1    $f14, 0x0168($t6)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t6)
	bnez    $v0, 19$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E9548:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x002A($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	neg.s   $f14, $f14
	sh      $v0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0800
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0028($sp)
	li      $a2, 0x0050
	jal     objlib_8029E530
	lw      $a0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	jal     object_b_802E9018
	li      $a0, 0x0007
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f6
	li      $at, 0x43100000
	mul.s   $f18, $f10, $f10
	add.s   $f16, $f8, $f18
	mul.s   $f6, $f4, $f4
	mtc1    $at, $f8
	add.s   $f10, $f16, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    89$
	nop
	jal     objlib_8029F464
	li      $a0, 0x0001
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x0164($t4)
	swc1    $f18, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x0168($t5)
	swc1    $f4, 0x00A4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x016C($t6)
	swc1    $f16, 0x00A8($t6)
89$:
	b       91$
	nop
91$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802E96C8
object_b_802E96C8:
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
	jal     object_b_802E9470
	nop
	b       28$
	nop
20$:
	jal     object_b_802E94E4
	nop
	b       28$
	nop
24$:
	jal     object_b_802E9548
	nop
	b       28$
	nop
28$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       34$
	nop
34$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802E9764
object_b_802E9764:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x44480000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43160000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x016C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0002($t9)
	ori     $t1, $t0, 0x0010
	sh      $t1, 0x0002($t9)
	jal     objlib_802A05B4
	nop
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802E97FC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lwc1    $f4, 0x002C($sp)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f10, 0x00A0($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x00A4($t0)
	swc1    $f18, 0x0020($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_cos)
	lwc1    $f4, 0x002C($sp)
	lhu     $t2, 0x00CA($t1)
	lwc1    $f8, 0x00A8($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($sp)
	lui     $at, %hi(object_b_80338538)
	lwc1    $f14, %lo(object_b_80338538)($at)
	lwc1    $f12, 0x0024($sp)
	lw      $a2, 0x001C($sp)
	jal     bg_check_plane
	lw      $a3, 0x0028($sp)
	swc1    $f0, 0x0018($sp)
	b       45$
	lwc1    $f0, 0x0018($sp)
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E98C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a1, 0x43BB8000
	li.l    $a1, 0x43BB8000
	jal     object_b_802E97FC
	addiu   $a0, $sp, 0x001C
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42960000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t6)
	c.lt.s  $f10, $f8
	nop
	bc1f    29$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_80338540)
	ldc1    $f4, %lo(object_b_80338540)($at)
	lw      $t8, 0x00C4($t7)
	mtc1    $t8, $f16
	nop
	cvt.d.w $f18, $f16
	sub.d   $f6, $f18, $f4
	trunc.w.d $f8, $f6
	swc1    $f8, 0x00C4($t7)
29$:
	addiu   $a0, $sp, 0x001C
	jal     object_b_802E97FC
	li      $a1, 0x43480000
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f18
	nop
	bc1f    55$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338548)
	ldc1    $f10, %lo(object_b_80338548)($at)
	lw      $t2, 0x00C4($t1)
	mtc1    $t2, $f6
	nop
	cvt.d.w $f8, $f6
	sub.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	swc1    $f18, 0x00C4($t1)
55$:
	addiu   $a0, $sp, 0x001C
	jal     object_b_802E97FC
	li      $a1, 0x0000
	swc1    $f0, 0x0018($sp)
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00A4($t4)
	c.lt.s  $f10, $f8
	nop
	bc1f    77$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t5)
77$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338550)
	ldc1    $f10, %lo(object_b_80338550)($at)
	lw      $t8, 0x00C4($t6)
	mtc1    $t8, $f6
	nop
	cvt.d.w $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    93$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, -0x5555
	sw      $t9, 0x00C4($t7)
93$:
	b       95$
	nop
95$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802E9A4C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x002A($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0040($t0)
	sh      $t1, 0x0026($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x00A0($t2)
	swc1    $f4, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A8($t3)
	swc1    $f6, 0x001C($sp)
	lw      $t7, 0x0034($sp)
	lhu     $t4, 0x0028($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t7, $f10
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	cvt.s.w $f16, $f10
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_sin)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f18, $f8, $f16
	swc1    $f18, 0x00B0($t8)
	lw      $t2, 0x0034($sp)
	lhu     $t9, 0x0028($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t2, $f6
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	cvt.s.w $f10, $f6
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_cos)($at)
	mul.s   $f8, $f4, $f10
	swc1    $f8, 0x0018($sp)
	lhu     $t3, 0x002A($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f18, 0x0018($sp)
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f16, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f16, $f18
	swc1    $f6, 0x00AC($t6)
	lhu     $t7, 0x002A($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f10, 0x0018($sp)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_cos)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f8, $f4, $f10
	swc1    $f8, 0x00B4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00A0($t1)
	lwc1    $f18, 0x00AC($t1)
	add.s   $f6, $f16, $f18
	swc1    $f6, 0x00A0($t1)
	lh      $t2, 0x0032($sp)
	bnez    $t2, 107$
	nop
	lh      $t3, 0x0026($sp)
	lui     $at, %hi(object_b_80338558)
	ldc1    $f8, %lo(object_b_80338558)($at)
	mtc1    $t3, $f4
	lui     $at, %hi(math_cos)
	lui     $t9, %hi(object)
	cvt.d.w $f10, $f4
	lw      $t9, %lo(object)($t9)
	mul.d   $f16, $f10, $f8
	trunc.w.d $f18, $f16
	mfc1    $t5, $f18
	lwc1    $f18, 0x00B0($t9)
	andi    $t6, $t5, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x40800000
	mtc1    $at, $f8
	mul.s   $f10, $f6, $f4
	lwc1    $f4, 0x00A4($t9)
	div.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	sub.s   $f10, $f4, $f6
	b       134$
	swc1    $f10, 0x00A4($t9)
107$:
	lh      $t0, 0x0026($sp)
	lui     $at, %hi(object_b_80338560)
	ldc1    $f16, %lo(object_b_80338560)($at)
	mtc1    $t0, $f8
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	cvt.d.w $f18, $f8
	lw      $t6, %lo(object)($t6)
	mul.d   $f4, $f18, $f16
	trunc.w.d $f6, $f4
	mfc1    $t2, $f6
	lwc1    $f6, 0x00B0($t6)
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f8
	li      $at, 0x40800000
	mtc1    $at, $f16
	mul.s   $f18, $f10, $f8
	lwc1    $f8, 0x00A4($t6)
	div.s   $f4, $f18, $f16
	add.s   $f10, $f6, $f4
	sub.s   $f18, $f8, $f10
	swc1    $f18, 0x00A4($t6)
134$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A8($t7)
	lwc1    $f6, 0x00B4($t7)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $a3, $sp, 0x002C
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     bg_check_plane
	lw      $a2, 0x00A8($t8)
	lw      $t9, 0x002C($sp)
	bnez    $t9, 158$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x0020($sp)
	swc1    $f8, 0x00A0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x00A8($t1)
158$:
	lh      $t2, 0x0026($sp)
	bnez    $t2, 164$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
164$:
	b       166$
	nop
166$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802E9CF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(contp)
	lw      $t6, %lo(contp)($t6)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x0006($sp)
	lui     $t8, %hi(contp)
	lw      $t8, %lo(contp)($t8)
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x0004($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C4($t0)
	sh      $t1, 0x0002($sp)
	lh      $t2, 0x0006($sp)
	slti    $at, $t2, 0x000A
	beqz    $at, 21$
	nop
	slti    $at, $t2, -0x0009
	bnez    $at, 21$
	nop
	sh      $0, 0x0006($sp)
21$:
	lh      $t3, 0x0004($sp)
	slti    $at, $t3, 0x000A
	beqz    $at, 29$
	nop
	slti    $at, $t3, -0x0009
	bnez    $at, 29$
	nop
	sh      $0, 0x0004($sp)
29$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t6, 0x0006($sp)
	lw      $t5, 0x00C8($t4)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	subu    $t8, $t5, $t7
	sw      $t8, 0x00C8($t4)
	b       39$
	nop
39$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

object_b_802E9D98:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C4($t8)
	sh      $t9, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0040($t0)
	sh      $t1, 0x0022($sp)
	lw      $t5, 0x0028($sp)
	lhu     $t2, 0x0024($sp)
	lui     $at, %hi(math_sin)
	mtc1    $t5, $f6
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	cvt.s.w $f8, $f6
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x00B0($t6)
	lw      $t0, 0x0028($sp)
	lhu     $t7, 0x0024($sp)
	lui     $at, %hi(math_cos)
	mtc1    $t0, $f18
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	cvt.s.w $f6, $f18
	addu    $at, $at, $t9
	lwc1    $f16, %lo(math_cos)($at)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x001C($sp)
	lhu     $t1, 0x0026($sp)
	lui     $at, %hi(math_sin)
	lwc1    $f10, 0x001C($sp)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mul.s   $f18, $f8, $f10
	swc1    $f18, 0x00AC($t4)
	lhu     $t5, 0x0026($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x001C($sp)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_cos)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x00B4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00A0($t9)
	lwc1    $f10, 0x00AC($t9)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x00A0($t9)
	lh      $t0, 0x0022($sp)
	lui     $at, %hi(object_b_80338568)
	ldc1    $f4, %lo(object_b_80338568)($at)
	mtc1    $t0, $f16
	lui     $at, %hi(math_cos)
	lui     $t6, %hi(object)
	cvt.d.w $f6, $f16
	lw      $t6, %lo(object)($t6)
	mul.d   $f8, $f6, $f4
	trunc.w.d $f10, $f8
	mfc1    $t2, $f10
	lwc1    $f10, 0x00B0($t6)
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x42480000
	mtc1    $at, $f16
	li      $at, 0x40800000
	mtc1    $at, $f4
	mul.s   $f6, $f18, $f16
	lwc1    $f16, 0x00A4($t6)
	div.s   $f8, $f6, $f4
	add.s   $f18, $f10, $f8
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A8($t7)
	lwc1    $f10, 0x00B4($t7)
	add.s   $f8, $f4, $f10
	swc1    $f8, 0x00A8($t7)
	lh      $t8, 0x0022($sp)
	bnez    $t8, 108$
	nop
	li.u    $a0, 0x300A0081
	jal     object_playsound
	li.l    $a0, 0x300A0081
108$:
	b       110$
	nop
110$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802E9F60:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0050($sp)
	swc1    $f12, 0x0048($sp)
	swc1    $f14, 0x004C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0024($sp)
	li      $at, 0x41200000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0028($sp)
	li      $at, 0x42480000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x002C($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x001C
	beqz    $v0, 46$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x001C($sp)
	swc1    $f18, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0020($sp)
	swc1    $f4, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x0024($sp)
	swc1    $f6, 0x00A8($t1)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lw      $t3, 0x0134($t2)
	ori     $t4, $t3, 0x0080
	sw      $t4, 0x0134($t2)
46$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	addiu   $a3, $sp, 0x0044
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     bg_check_plane
	lw      $a2, 0x00A8($t5)
	swc1    $f0, 0x0018($sp)
	lw      $t6, 0x0044($sp)
	bnez    $t6, 67$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x0048($sp)
	swc1    $f8, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x0050($sp)
	swc1    $f10, 0x00A8($t8)
	b       117$
	nop
67$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	jal     object_b_802E3F68
	lwc1    $f12, 0x00A0($t9)
	li      $at, 0x45FA0000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f0
	nop
	bc1f    82$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0048($sp)
	swc1    $f18, 0x00A0($t0)
82$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	jal     object_b_802E3F68
	lwc1    $f12, 0x00A8($t1)
	li      $at, 0x45FA0000
	mtc1    $at, $f4
	nop
	c.lt.s  $f4, $f0
	nop
	bc1f    97$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0050($sp)
	swc1    $f6, 0x00A8($t3)
97$:
	li      $at, 0x42FA0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f16, $f8, $f10
	lwc1    $f18, 0x00A4($t4)
	c.lt.s  $f18, $f16
	nop
	bc1f    115$
	nop
	li      $at, 0x42FA0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t2)
115$:
	b       117$
	nop
117$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

object_b_802EA144:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f10
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f12, 0x0020($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	sh      $v0, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x001E($sp)
	li      $a2, 0x0500
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0xCE38
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x001D
	bnez    $at, 46$
	nop
	li.u    $a0, 0x40108001
	jal     object_levelsound
	li.l    $a0, 0x40108001
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sh      $t4, 0x0040($t5)
46$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338570)
	lwc1    $f6, %lo(object_b_80338570)($at)
	lwc1    $f4, 0x00A4($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    59$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
59$:
	li      $a0, 0x003C
	lw      $a1, 0x0028($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x002C($sp)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EA258:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0028($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 28$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 69$
	nop
	b       91$
	nop
28$:
	lwc1    $f12, 0x002C($sp)
	jal     object_b_802EA144
	lwc1    $f14, 0x0024($sp)
	b       91$
	nop
33$:
	jal     object_b_802E9CF4
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x071C
	sw      $t0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338574)
	lwc1    $f16, %lo(object_b_80338574)($at)
	lwc1    $f10, 0x00A4($t2)
	c.lt.s  $f10, $f16
	nop
	bc1f    63$
	nop
	jal     objlib_802A4750
	li      $a0, 0x000A
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x002D
	beqz    $v0, 63$
	nop
	jal     objlib_802A4774
	li      $a0, 0x000A
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
63$:
	li      $a0, 0x0014
	lw      $a1, 0x002C($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x0024($sp)
	b       91$
	nop
69$:
	jal     object_b_802E9CF4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00C4($t5)
	li      $a0, 0x0014
	lw      $a1, 0x002C($sp)
	jal     object_b_802E9D98
	lw      $a2, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003D
	bnez    $at, 89$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lw      $t9, 0x0134($t8)
	ori     $t0, $t9, 0x0080
	sw      $t0, 0x0134($t8)
89$:
	b       91$
	nop
91$:
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0028($sp)
	jal     object_b_802E9F60
	lw      $a2, 0x0024($sp)
	b       97$
	nop
97$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EA3F0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0168($t7)
	lwc1    $f16, 0x00A4($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f6, 0x00A8($t8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f12, 0x002C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0034($sp)
	sh      $v0, 0x002A($sp)
	lwc1    $f10, 0x0034($sp)
	lwc1    $f18, 0x002C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	lwc1    $f14, 0x0030($sp)
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	neg.s   $f14, $f14
	sh      $v0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x0140
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $a1, 0x0028($sp)
	li      $a2, 0x0140
	jal     objlib_8029E530
	lw      $a0, 0x00C4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C4($t2)
	b       58$
	nop
58$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802EA4EC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0134($t6)
	bne     $t7, $at, 14$
	nop
	jal     object_b_802EA258
	nop
	jal     objlib_8029F464
	li      $a0, 0x0001
	b       29$
	nop
14$:
	jal     objlib_8029F464
	move    $a0, $0
	jal     object_b_802EA3F0
	nop
	jal     object_b_802E98C0
	nop
	move    $a0, $0
	jal     object_b_802E9A4C
	li      $a1, 0x000A
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0154($t9)
29$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x07D0
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EA588
object_b_802EA588:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x00F4($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 61$
	nop
	b       65$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0032
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 35$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
35$:
	b       65$
	nop
37$:
	jal     object_b_802EA4EC
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0002
	li      $at, 0x0002
	bne     $v0, $at, 59$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x002C
	beqz    $v0, 59$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x00F4($t4)
59$:
	b       65$
	nop
61$:
	jal     object_b_802EA4EC
	nop
	b       65$
	nop
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EA6A8
object_b_802EA6A8:
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338578)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338578)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_8033857C)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_8033857C)($at)
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EA6F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F620
	nop
	jal     objlib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t8)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EA75C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F820
	nop
	jal     objlib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0009
	lw      $t8, 0x008C($t7)
	and     $t9, $t8, $at
	sw      $t9, 0x008C($t7)
	li      $at, 0x42200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	li      $at, 0x41A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t1)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EA7E0
object_b_802EA7E0:
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
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 31$
	nop
	b       35$
	nop
19$:
	jal     object_b_802E4E90
	nop
	b       35$
	nop
23$:
	jal     objlib_8029F66C
	nop
	b       35$
	nop
27$:
	jal     object_b_802EA75C
	nop
	b       35$
	nop
31$:
	jal     object_b_802EA6F8
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

.globl object_b_802EA888
object_b_802EA888:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lui     $t6, %hi(object)
	mul.s   $f8, $f20, $f6
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f18
	mov.s   $f20, $f0
	lui     $t7, %hi(object)
	mul.s   $f6, $f20, $f18
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x00A4($t7)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A4($t7)
	jal     randf
	nop
	li      $at, 0x41F00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lui     $t8, %hi(object)
	mul.s   $f18, $f20, $f10
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A8($t8)
	b       38$
	nop
38$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EA934
object_b_802EA934:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x00A4($t7)
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0020($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    49$
	nop
	lui     $t8, %hi(obj_freelist+0x60)
	lw      $t8, %lo(obj_freelist+0x60)($t8)
	beqz    $t8, 46$
	nop
	lui     $a0, %hi(object)
	la.u    $a3, o_13002CB0
	la.l    $a3, o_13002CB0
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	jal     obj_make
	li      $a2, 0x00A5
	sw      $v0, 0x0024($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0024($sp)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x00A0($t0)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x001C($sp)
	lw      $t1, 0x0024($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0024($sp)
	lwc1    $f6, 0x00A8($t2)
	swc1    $f6, 0x00A8($t3)
46$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EAA10
object_b_802EAA10:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAA50
object_b_802EAA50:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	andi    $t8, $t7, 0x000F
	bnez    $t8, 11$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
11$:
	b       13$
	nop
13$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EAA8C
object_b_802EAA8C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x802E2081
	jal     object_makesound
	li.l    $a0, 0x802E2081
	jal     camera_8027F8B8
	li      $a0, 0x0001
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x00FF
	sw      $t6, 0x017C($t7)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAAD0
object_b_802EAAD0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0009
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 45$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x00A0($t8)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mov.s   $f20, $f0
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f4, $f20
	nop
	bc1f    36$
	nop
	sw      $0, 0x0024($sp)
23$:
	lui     $a0, %hi(object)
	la.u    $a2, o_130035B0
	la.l    $a2, o_130035B0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A4
	lw      $t0, 0x0024($sp)
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0028
	bnez    $at, 23$
	sw      $t1, 0x0024($sp)
	b       42$
	nop
36$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003558
	la.l    $a2, o_13003558
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0096
42$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
45$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x017C($t3)
	addiu   $t5, $t4, -0x000E
	sw      $t5, 0x017C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41100000
	mtc1    $at, $f10
	lw      $t7, 0x0154($t6)
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $t7, $f6
	mtc1    $0, $f4
	cvt.s.w $f8, $f6
	div.s   $f16, $f8, $f10
	cvt.d.s $f18, $f16
	add.d   $f6, $f18, $f4
	jal     object_set_scale
	cvt.s.d $f12, $f6
	b       67$
	nop
67$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EABF0
object_b_802EABF0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43960000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	li      $at, 0x41200000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAC3C
object_b_802EAC3C:
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
	sw      $t8, 0x0104($t9)
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
	sw      $t2, 0x0108($t3)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f4
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x0154($t6)
	jal     randf
	nop
	li      $at, 0x40800000
	mtc1    $at, $f10
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t8, $f18
	nop
	addiu   $t9, $t8, 0x0004
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00B0($t0)
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EAD3C
object_b_802EAD3C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, player_data
	la.l    $t6, player_data
	lh      $t7, 0x0076($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lhu     $t9, 0x00FE($t8)
	mtc1    $0, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f17
	cvt.d.s $f10, $f8
	li      $at, 0x40000000
	mul.d   $f18, $f10, $f16
	mtc1    $at, $f5
	nop
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x002C($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0104($t2)
	addu    $t5, $t3, $t4
	sw      $t5, 0x00FC($t2)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f18
	lhu     $t7, 0x0102($t6)
	mtc1    $0, $f6
	sra     $t9, $t7, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	cvt.d.s $f16, $f10
	li      $at, 0x40000000
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f7
	nop
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0030($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t8, 0x0100($t1)
	lw      $t3, 0x0108($t1)
	addu    $t4, $t8, $t3
	sw      $t4, 0x0100($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x00A4($t5)
	c.lt.s  $f18, $f16
	nop
	bc1f    85$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D28
	la.l    $a2, o_13002D28
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00A5
85$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x003D
	bnez    $at, 94$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
94$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00B0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	addiu   $t1, $t4, 0x0001
	sw      $t1, 0x0154($t3)
	b       107$
	nop
107$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EAEF8
object_b_802EAEF8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00F8($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	trunc.w.s $f6, $f4
	lw      $a2, 0x00A8($t6)
	mfc1    $a3, $f6
	jal     object_b_802E5208
	nop
	bnez    $v0, 29$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a0, $t8
	lw      $a1, 0x00F4($t8)
	jal     obj_make_here
	lw      $a2, 0x00FC($t8)
	sw      $v0, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x001C($sp)
	lw      $t0, 0x0188($t9)
	sw      $t0, 0x0188($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EAF84:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a3, o_13003614
	la.l    $a3, o_13003614
	lwc1    $f4, 0x0164($t6)
	move    $a1, $0
	move    $a2, $0
	trunc.w.s $f6, $f4
	move    $a0, $t6
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x0010($sp)
	lwc1    $f8, 0x0168($t6)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x016C($t6)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t2, $f18
	jal     obj_make_abs
	sw      $t2, 0x0018($sp)
	sw      $v0, 0x0034($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0034($sp)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t5)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0034($sp)
	sw      $t7, 0x00F4($t8)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0034($sp)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00F8($t0)
	lw      $t6, 0x003C($sp)
	lw      $t1, 0x0034($sp)
	sw      $t6, 0x00FC($t1)
	b       50$
	nop
50$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802EB05C
object_b_802EB05C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x016C($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0144($t8)
	li      $at, 0x40800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t9)
	lui     $at, %hi(object_b_80338580)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, %lo(object_b_80338580)($at)
	swc1    $f10, 0x0170($t0)
	lui     $at, %hi(object_b_80338584)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_b_80338584)($at)
	swc1    $f16, 0x0174($t1)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332674
	la.l    $a1, object_b_80332674
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EB104
object_b_802EB104:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0144($t0)
	li      $at, 0x40A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t1)
	lui     $at, %hi(object_b_80338588)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338588)($at)
	swc1    $f16, 0x0170($t2)
	lui     $at, %hi(object_b_8033858C)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f18, %lo(object_b_8033858C)($at)
	swc1    $f18, 0x0174($t3)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332684
	la.l    $a1, object_b_80332684
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB1C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 44$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0144($t9)
	bnez    $t0, 18$
	nop
	li.u    $a0, 0x901C0081
	jal     object_playsound
	li.l    $a0, 0x901C0081
	b       21$
	nop
18$:
	li.u    $a0, 0x90570081
	jal     object_playsound
	li.l    $a0, 0x90570081
21$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	lw      $t2, 0x0134($t1)
	and     $t3, $t2, $at
	sw      $t3, 0x0134($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0009
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x008C($t6)
	jal     objlib_8029F464
	li      $a0, 0x0003
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00C8($t9)
	sw      $t0, 0x0108($t9)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB288:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	swc1    $f4, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0020($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	swc1    $f8, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x000A
	beqz    $at, 35$
	nop
	li      $at, 0x40400000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x1000
	b       72$
	nop
35$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0144($t2)
	bnez    $t3, 57$
	nop
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x001F
	bnez    $at, 55$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
55$:
	b       72$
	nop
57$:
	li      $at, 0x41F00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0024
	bnez    $at, 72$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0154($t1)
72$:
	lwc1    $f12, 0x0024($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	jal     object_b_802E5208
	li      $a3, 0x03E8
	bnez    $v0, 84$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
	jal     objlib_8029F464
	move    $a0, $0
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EB3F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40240000
	mtc1    $at, $f9
	lwc1    $f4, 0x00B8($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    48$
	nop
	lwc1    $f10, 0x00B0($t6)
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	bnez    $t8, 48$
	nop
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0104($t0)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0104($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x008C($t3)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x008C($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00C8($t6)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x0500
	b       51$
	nop
48$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0040($t8)
51$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0012
	lw      $t1, 0x0104($t9)
	bne     $t1, $at, 66$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0104($t4)
	jal     objlib_8029F464
	li      $a0, 0x0001
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EB510:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	bnez    $t7, 17$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0009
	lw      $t9, 0x008C($t8)
	and     $t0, $t9, $at
	sw      $t0, 0x008C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x8000
	lw      $t2, 0x00C8($t1)
	addu    $t3, $t2, $at
	sw      $t3, 0x00C8($t1)
17$:
	li      $at, 0x40A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x000F
	lw      $t6, 0x0154($t5)
	bne     $t6, $at, 41$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t9, 0x00D4($t7)
	sw      $t9, 0x00C8($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x008C($t0)
	ori     $t2, $t8, 0x0008
	sw      $t2, 0x008C($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
41$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EB5C4:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	andi    $t6, $a0, 0x0008
	bnez    $t6, 23$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0002
	lw      $t8, 0x014C($t7)
	beq     $t8, $at, 23$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00F8($t9)
	swc1    $f4, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0100($t0)
	swc1    $f6, 0x00A8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t2)
23$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EB630:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 20$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 41$
	nop
	b       62$
	nop
20$:
	lh      $t9, 0x0026($sp)
	beqz    $t9, 26$
	nop
	li      $at, 0x000C
	bne     $t9, $at, 39$
	nop
26$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	bnez    $t1, 36$
	nop
	li.u    $a0, 0x501B3081
	jal     object_playsound
	li.l    $a0, 0x501B3081
	b       39$
	nop
36$:
	li.u    $a0, 0x50366081
	jal     object_playsound
	li.l    $a0, 0x50366081
39$:
	b       62$
	nop
41$:
	lh      $t2, 0x0026($sp)
	beqz    $t2, 47$
	nop
	li      $at, 0x0005
	bne     $t2, $at, 60$
	nop
47$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	bnez    $t4, 57$
	nop
	li.u    $a0, 0x501B3081
	jal     object_playsound
	li.l    $a0, 0x501B3081
	b       60$
	nop
57$:
	li.u    $a0, 0x50366081
	jal     object_playsound
	li.l    $a0, 0x50366081
60$:
	b       62$
	nop
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EB744:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     object_b_802EB5C4
	lh      $a0, 0x001E($sp)
	jal     object_b_802EB630
	nop
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F4($t6)
	andi    $t8, $t7, 0x0010
	beqz    $t8, 33$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338590)
	lwc1    $f6, %lo(object_b_80338590)($at)
	lwc1    $f4, 0x00A4($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    33$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0064
	sw      $t0, 0x014C($t1)
33$:
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EB7E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003068
	la.l    $a2, o_13003068
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	li.u    $a0, 0x38300081
	jal     object_playsound
	li.l    $a0, 0x38300081
	li      $at, 0x41200000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	swc1    $f4, 0x00B8($t6)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lw      $t7, 0x001C($sp)
	swc1    $f6, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x439B0000
	mtc1    $at, $f10
	lwc1    $f8, 0x00A4($t8)
	lw      $t9, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t9)
	jal     randf
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x44800000
	mtc1    $at, $f18
	lw      $t1, 0x0108($t0)
	li      $at, 0x8000
	mul.s   $f4, $f0, $f18
	addu    $t2, $t1, $at
	mtc1    $t2, $f6
	lw      $t5, 0x001C($sp)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t4, $f16
	nop
	sw      $t4, 0x00C8($t5)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EB8B0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, 66$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 28$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F4($t8)
	bne     $t9, $at, 24$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x0104($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0104($t1)
24$:
	jal     object_b_802EB7E0
	nop
	b       66$
	nop
28$:
	jal     objlib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x0010
	lw      $t5, 0x00F4($t4)
	bne     $t5, $at, 45$
	nop
	li      $at, 0x43020000
	mtc1    $at, $f12
	li      $at, 0x44C80000
	mtc1    $at, $f14
	li.u    $a2, 0xC5877800
	jal     object_b_802F2B88
	li.l    $a2, 0xC5877800
	b       66$
	nop
45$:
	mtc1    $0, $f12
	lui     $at, %hi(object_b_80338594)
	li.u    $a2, 0xC5D48000
	li.l    $a2, 0xC5D48000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_b_80338594)($at)
	lui     $a0, %hi(object)
	la.u    $a3, o_13000C64
	li      $t6, 0x009A
	li      $t7, -0x15FF
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_13000C64
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x0010($sp)
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802EB9D0
object_b_802EB9D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0100($t8)
	jal     object_b_802EB1C0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 39$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 67$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 79$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 85$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 89$
	nop
	b       94$
	nop
39$:
	li      $at, 0x40A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t2, 0x0320
	lw      $a1, 0x0164($t1)
	lw      $a2, 0x00A4($t1)
	lw      $a3, 0x016C($t1)
	sw      $t2, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t1
	li      $at, 0x0001
	bne     $v0, $at, 63$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	jal     objlib_8029F464
	li      $a0, 0x0001
63$:
	jal     object_b_802EB744
	nop
	b       94$
	nop
67$:
	jal     object_b_802EB288
	nop
	jal     object_b_802EB744
	nop
	b       94$
	nop
73$:
	jal     object_b_802EB3F0
	nop
	jal     object_b_802EB744
	nop
	b       94$
	nop
79$:
	jal     object_b_802EB510
	nop
	jal     object_b_802EB744
	nop
	b       94$
	nop
85$:
	jal     object_b_802EB8B0
	nop
	b       94$
	nop
89$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       94$
	nop
94$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       100$
	nop
100$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EBB74:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	lw      $t8, 0x0040($sp)
	lh      $t9, 0x0046($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_1300362C
	la.l    $a3, o_1300362C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0056
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	jal     obj_make_abs
	sw      $t9, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lw      $t2, 0x0034($sp)
	sw      $0, 0x0144($t2)
	b       31$
	nop
31$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802EBC00
object_b_802EBC00:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x1166
	li      $a1, 0x0133
	li      $a2, -0x1532
	jal     object_b_802EBB74
	move    $a3, $0
	li      $a0, 0x0F00
	li      $a1, 0x0133
	li      $a2, -0x1799
	jal     object_b_802EBB74
	move    $a3, $0
	li      $a0, 0x0C9A
	li      $a1, 0x0133
	li      $a2, -0x1532
	jal     object_b_802EBB74
	move    $a3, $0
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     objlib_802A05B4
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EBC88:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5B18
	nop
	li      $at, 0x0001
	bne     $v0, $at, 16$
	nop
	jal     objlib_802A37AC
	nop
	lui     $at, %hi(object_b_80338598)
	lwc1    $f12, %lo(object_b_80338598)($at)
	li      $at, 0x44160000
	mtc1    $at, $f14
	li.u    $a2, 0xC5ABE000
	jal     object_b_802F2B88
	li.l    $a2, 0xC5ABE000
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EBCE0
object_b_802EBCE0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $s0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x00F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x0100($t8)
	jal     object_b_802EB1C0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	slti    $at, $s0, 0x0065
	bnez    $at, 28$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 152$
	nop
	b       157$
	nop
28$:
	slti    $at, $s0, 0x0006
	bnez    $at, 36$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 148$
	nop
	b       157$
	nop
36$:
	sltiu   $at, $s0, 0x0006
	beqz    $at, 157$
	nop
	sll     $t0, $s0, 2
	lui     $at, %hi(object_b_8033859C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_8033859C)($at)
	jr      $t0
	nop
.globl L802EBD94
L802EBD94:
	li      $at, 0x40A00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t3, 0x03E8
	lw      $a1, 0x0164($t2)
	lw      $a2, 0x00A4($t2)
	lw      $a3, 0x016C($t2)
	sw      $t3, 0x0010($sp)
	jal     object_b_802E53F4
	move    $a0, $t2
	li      $at, 0x0001
	bne     $v0, $at, 69$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	jal     objlib_8029F464
	li      $a0, 0x0001
69$:
	jal     object_b_802EB744
	nop
	b       157$
	nop
.globl L802EBE04
L802EBE04:
	jal     object_b_802EB288
	nop
	jal     object_b_802EB744
	nop
	b       157$
	nop
.globl L802EBE1C
L802EBE1C:
	jal     object_b_802EB3F0
	nop
	jal     object_b_802EB744
	nop
	b       157$
	nop
.globl L802EBE34
L802EBE34:
	jal     object_b_802EB510
	nop
	jal     object_b_802EB744
	nop
	b       157$
	nop
.globl L802EBE4C
L802EBE4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0003
	lw      $t7, 0x0104($t6)
	bne     $t7, $at, 109$
	nop
	jal     Na_Solution
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, 109$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0005
	sw      $t0, 0x014C($t1)
109$:
	b       157$
	nop
.globl L802EBE9C
L802EBE9C:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x002E($sp)
	lh      $t2, 0x002E($sp)
	li      $at, 0x0009
	andi    $t3, $t2, 0x0009
	bne     $t3, $at, 122$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x014C($t4)
122$:
	lh      $t5, 0x002E($sp)
	li      $at, 0x0001
	bne     $t5, $at, 138$
	nop
	li.u    $a0, 0x500CA081
	jal     object_playsound
	li.l    $a0, 0x500CA081
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	jal     objlib_802A37AC
	nop
138$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, -0x0011
	lh      $t8, 0x0002($t7)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t7)
	jal     objlib_802A05D4
	nop
	b       157$
	nop
148$:
	jal     object_b_802EBC88
	nop
	b       157$
	nop
152$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
	b       157$
	nop
157$:
	b       159$
	nop
159$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EBF70:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0020($t7)
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x000C($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x42A00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f4, $f18
	swc1    $f6, 0x0008($sp)
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0028($t1)
	lwc1    $f8, 0x00A8($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f18, 0x0100($t2)
	lwc1    $f10, 0x0104($t2)
	mul.s   $f6, $f4, $f18
	lwc1    $f18, 0x0108($t2)
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0004($sp)
	mul.s   $f10, $f18, $f8
	add.s   $f4, $f6, $f16
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0000($sp)
	b       46$
	lwc1    $f0, 0x0000($sp)
	b       46$
	nop
46$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

object_b_802EC030:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F464
	move    $a0, $0
	jal     randf
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t7, $f8
	nop
	addiu   $t8, $t7, 0x1000
	sw      $t8, 0x00F4($t9)
	jal     randf
	nop
	li      $at, 0x45800000
	mtc1    $at, $f10
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	addiu   $t2, $t1, 0x1000
	sw      $t2, 0x00F8($t3)
	jal     randf
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	addiu   $t6, $t5, 0x1000
	sw      $t6, 0x00FC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lhu     $t9, 0x00DA($t8)
	lhu     $t2, 0x00D2($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0xBF800000
	mtc1    $at, $f4
	mul.s   $f18, $f10, $f16
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0100($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $t0, math_cos
	la.l    $t0, math_cos
	lhu     $t6, 0x00DA($t5)
	lhu     $t2, 0x00D2($t5)
	sra     $t7, $t6, 4
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	sll     $t9, $t7, 2
	addu    $t1, $t9, $t0
	addu    $t8, $t4, $t0
	lwc1    $f10, 0x0000($t8)
	lwc1    $f8, 0x0000($t1)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0104($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00D2($t6)
	sra     $t9, $t7, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	swc1    $f18, 0x0108($t6)
	jal     object_b_802EBF70
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	swc1    $f0, 0x010C($t2)
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EC1B0
object_b_802EC1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802EC030
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0046
	sw      $t6, 0x017C($t7)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x8000
	sw      $t8, 0x00D0($t9)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EC200:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a1, 0x002C($sp)
	swc1    $f12, 0x0028($sp)
	jal     object_b_802EBF70
	nop
	swc1    $f0, 0x0024($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	li      $at, 0x42A00000
	mtc1    $at, $f6
	lwc1    $f10, 0x0028($sp)
	lwc1    $f4, 0x0024($t6)
	lui     $at, %hi(object_b_803385B8)
	ldc1    $f18, %lo(object_b_803385B8)($at)
	add.s   $f8, $f4, $f6
	li      $at, 0x405E0000
	mtc1    $at, $f7
	cvt.d.s $f16, $f10
	mtc1    $0, $f6
	add.d   $f4, $f16, $f18
	mfc1    $a2, $f8
	lui     $a0, %hi(object)
	lw      $a1, 0x0020($t6)
	mul.d   $f8, $f4, $f6
	lw      $a3, 0x0028($t6)
	lw      $a0, %lo(object)($a0)
	trunc.w.d $f10, $f8
	mfc1    $t8, $f10
	jal     object_b_802E52B8
	sw      $t8, 0x0010($sp)
	bnez    $v0, 39$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f16, 0x0024($sp)
	swc1    $f16, 0x010C($t9)
	b       112$
	nop
39$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x010C($t0)
	mul.s   $f6, $f18, $f4
	c.lt.s  $f6, $f8
	nop
	bc1f    106$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	beqz    $t3, 102$
	nop
	lw      $t4, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t5, 0x00F8($t4)
	lw      $t8, 0x0110($t7)
	addiu   $t6, $t5, 0x0001
	beq     $t6, $t8, 68$
	nop
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x01AC($t9)
	bnez    $t0, 100$
	nop
68$:
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x01AC($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x01AC($t1)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x01AC($t4)
	slti    $at, $t5, 0x0006
	beqz    $at, 94$
	nop
	lw      $t7, 0x0020($sp)
	move    $a1, $0
	li      $a2, -0x0028
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x01AC($t7)
	lw      $t6, 0x0020($sp)
	li.u    $at, 0x70302081
	li.l    $at, 0x70302081
	lbu     $a0, 0x01AF($t6)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	addiu   $a0, $a0, -0x0001
	sll     $t8, $a0, 16
	move    $a0, $t8
	jal     Na_SePlay
	addu    $a0, $a0, $at
94$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x002C($sp)
	lw      $t0, 0x0110($t9)
	b       102$
	sw      $t0, 0x00F8($t2)
100$:
	lw      $t3, 0x0020($sp)
	sw      $0, 0x01AC($t3)
102$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t4)
106$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0024($sp)
	swc1    $f10, 0x010C($t5)
	b       112$
	nop
112$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EC3D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	cvt.d.s $f16, $f12
	lhu     $t7, 0x00F6($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_803385C0)
	ldc1    $f8, %lo(object_b_803385C0)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x002C($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f10
	lhu     $t1, 0x00FA($t0)
	cvt.d.s $f18, $f12
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	cvt.d.s $f4, $f12
	lhu     $t5, 0x00FE($t4)
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_sin)($at)
	lui     $at, %hi(object_b_803385C8)
	ldc1    $f16, %lo(object_b_803385C8)($at)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	add.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0034($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t6, 0x00F4($t9)
	addiu   $t1, $t6, 0x1700
	sw      $t1, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F8($t2)
	addiu   $t0, $t3, 0x1700
	sw      $t0, 0x00F8($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x00FC($t5)
	addiu   $t8, $t7, 0x1700
	sw      $t8, 0x00FC($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EC4E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803385D0)
	ldc1    $f10, %lo(object_b_803385D0)($at)
	lw      $t7, 0x0154($t6)
	lwc1    $f18, 0x01AC($t6)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	cvt.d.s $f4, $f18
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	add.d   $f6, $f4, $f16
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, 26$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
26$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	addiu   $t3, $t2, -0x000A
	sw      $t3, 0x017C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	bgez    $t5, 39$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x017C($t7)
39$:
	jal     object_b_802EC3D0
	lwc1    $f12, 0x001C($sp)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EC59C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803385D8)
	ldc1    $f10, %lo(object_b_803385D8)($at)
	lw      $t7, 0x0154($t6)
	li      $at, 0x40080000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FE00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	cvt.d.s $f8, $f6
	mtc1    $0, $f6
	div.d   $f16, $f8, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x00E2
	bnez    $at, 48$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x0003
	beqz    $at, 48$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
48$:
	lwc1    $f12, 0x0024($sp)
	jal     object_b_802EC200
	lw      $a1, 0x001C($sp)
	jal     object_b_802EC3D0
	lwc1    $f12, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41200000
	mtc1    $at, $f18
	lwc1    $f16, 0x00A4($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D4($t1)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x00D4($t1)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1388
	lw      $t5, 0x0020($sp)
	li      $at, 0x0004
	lw      $t6, 0x01AC($t5)
	bne     $t6, $at, 102$
	nop
	lw      $t4, 0x001C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t7, 0x00F8($t4)
	lw      $t0, 0x0110($t9)
	addiu   $t8, $t7, 0x0001
	bne     $t8, $t0, 102$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	sll     $t1, $t3, 12
	andi    $t5, $t1, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t4, $t6, 2
	addu    $at, $at, $t4
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	li      $at, 0x42480000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x017C($t2)
102$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0024($sp)
	swc1    $f6, 0x01AC($t8)
	b       108$
	nop
108$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EC75C
object_b_802EC75C:
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
	jal     object_b_802EC59C
	nop
	b       21$
	nop
17$:
	jal     object_b_802EC4E0
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

object_b_802EC7CC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130037E0
	la.l    $a2, o_130037E0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EC818:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x012C
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 15$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
15$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	beqz    $t2, 32$
	nop
	li      $at, 0x0032
	beq     $t2, $at, 32$
	nop
	li      $at, 0x0096
	beq     $t2, $at, 32$
	nop
	li      $at, 0x00C8
	beq     $t2, $at, 32$
	nop
	li      $at, 0x00FA
	bne     $t2, $at, 54$
	nop
32$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003750
	la.l    $a2, o_13003750
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0068
	sw      $v0, 0x0018($sp)
	lw      $t3, 0x001C($sp)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x00F4($t3)
	sw      $t4, 0x0110($t5)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x00F4($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00F4($t6)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x00F4($t9)
	slti    $at, $t0, 0x2711
	bnez    $at, 54$
	nop
	lw      $t1, 0x001C($sp)
	sw      $0, 0x00F4($t1)
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EC908
object_b_802EC908:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	b       37$
	nop
13$:
	jal     object_b_802EC818
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x01AC($t7)
	bne     $t8, $at, 33$
	nop
	jal     objlib_802A37AC
	nop
	lui     $at, %hi(object_b_803385E0)
	lwc1    $f12, %lo(object_b_803385E0)($at)
	li      $at, 0xC5480000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC3FA0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
33$:
	b       37$
	nop
35$:
	b       37$
	nop
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EC9B8
object_b_802EC9B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802EC030
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0096
	sw      $t6, 0x017C($t7)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EC9F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	lui     $at, %hi(object_b_803385E8)
	ldc1    $f18, %lo(object_b_803385E8)($at)
	mtc1    $t7, $f4
	lui     $at, %hi(object_b_803385F0)
	cvt.s.w $f6, $f4
	div.s   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803385F0)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0068($t0)
	sw      $t1, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	lui     $at, %hi(object_b_803385F8)
	ldc1    $f4, %lo(object_b_803385F8)($at)
	cvt.d.s $f18, $f16
	c.lt.d  $f4, $f18
	nop
	bc1f    37$
	nop
	lui     $at, %hi(object_b_80338600)
	lwc1    $f6, %lo(object_b_80338600)($at)
	swc1    $f6, 0x0024($sp)
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0097
	bnez    $at, 57$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x0002
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x0003
	beqz    $at, 57$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
57$:
	lwc1    $f12, 0x0024($sp)
	jal     object_b_802EC200
	lw      $a1, 0x001C($sp)
	jal     object_b_802EC3D0
	lwc1    $f12, 0x0024($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1388
	lw      $t0, 0x0020($sp)
	li      $at, 0x0004
	lw      $t1, 0x01AC($t0)
	bne     $t1, $at, 99$
	nop
	lw      $t2, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t3, 0x00F8($t2)
	lw      $t4, 0x0110($t6)
	addiu   $t5, $t3, 0x0001
	bne     $t5, $t4, 99$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x0154($t7)
	sll     $t9, $t8, 12
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f10
	li      $at, 0x42480000
	mtc1    $at, $f18
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	nop
	sw      $t6, 0x017C($t7)
99$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x01AC($t5)
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ECBA4
object_b_802ECBA4:
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
	jal     object_b_802EC9F0
	nop
	b       21$
	nop
17$:
	jal     object_b_802EC4E0
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

.globl object_b_802ECC14
object_b_802ECC14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 26$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li.u    $at, 0xFFFF7FFF
	li.l    $at, 0xFFFF7FFF
	lw      $t7, 0x0134($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x0134($t6)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003510
	la.l    $a2, o_13003510
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00CD
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
26$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x00200000
	lw      $t1, 0x0134($t0)
	and     $t2, $t1, $at
	beqz    $t2, 52$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300381C
	la.l    $a2, o_1300381C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0067
	li.u    $a0, 0x312F0081
	jal     object_makesound
	li.l    $a0, 0x312F0081
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a0, 0x0003
	lw      $a1, 0x00A0($t3)
	lw      $a2, 0x00A4($t3)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
52$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1B58
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ECD0C
object_b_802ECD0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x40220000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FF00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	div.s   $f10, $f6, $f8
	mtc1    $0, $f6
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0003
	bnez    $t0, 74$
	nop
	slti    $at, $t9, 0x0014
	beqz    $at, 74$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003840
	la.l    $a2, o_13003840
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0066
	sw      $v0, 0x0024($sp)
	jal     randf
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	li      $at, 0x43C80000
	mul.s   $f16, $f20, $f10
	mtc1    $at, $f18
	lw      $t1, 0x0024($sp)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f4, $f16, $f18
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x00A0($t1)
	jal     randf
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	li      $at, 0x43C80000
	mul.s   $f16, $f20, $f10
	mtc1    $at, $f18
	lw      $t2, 0x0024($sp)
	lwc1    $f4, 0x00A8($t2)
	sub.s   $f6, $f16, $f18
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t2)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f16
	mov.s   $f20, $f0
	lw      $t3, 0x0024($sp)
	mul.s   $f18, $f20, $f16
	lwc1    $f10, 0x00B0($t3)
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00B0($t3)
74$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	andi    $t6, $t5, 0x0001
	bnez    $t6, 85$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F0($t7)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x00F0($t7)
85$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x001C
	lw      $t1, 0x0154($t9)
	bne     $t1, $at, 94$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
94$:
	b       96$
	nop
96$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ECEA0
object_b_802ECEA0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41600000
	mtc1    $at, $f8
	lw      $t7, 0x0154($t6)
	li      $at, 0x40220000
	mtc1    $at, $f19
	mtc1    $t7, $f4
	mtc1    $0, $f18
	li      $at, 0x3FF00000
	cvt.s.w $f6, $f4
	mtc1    $at, $f7
	div.s   $f10, $f6, $f8
	mtc1    $0, $f6
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	add.d   $f8, $f4, $f6
	jal     object_set_scale
	cvt.s.d $f12, $f8
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	andi    $t0, $t9, 0x0001
	bnez    $t0, 32$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F0($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F0($t1)
32$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x017C($t4)
	addiu   $t6, $t5, -0x000A
	sw      $t6, 0x017C($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x017C($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, 46$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x017C($t9)
46$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00A4($t0)
	lwc1    $f16, 0x00B0($t0)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x001C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 61$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ECFAC
object_b_802ECFAC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, 0x0020($t6)
	swc1    $f4, 0x0164($t7)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	lwc1    $f6, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A4($t9)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x0028($t0)
	swc1    $f16, 0x016C($t1)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t3, 0x001C($t2)
	li      $at, 0x8000
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0064
	sw      $t6, 0x0108($t7)
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	li      $at, 0x001E
	beq     $t8, $at, 43$
	nop
	li      $at, 0x0021
	bne     $t8, $at, 64$
	nop
43$:
	lui     $t9, %hi(shape_table)
	lw      $t9, %lo(shape_table)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0330($t9)
	sw      $t0, 0x0014($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00D0($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0xC000
	sw      $t3, 0x00D8($t4)
	lui     $at, %hi(object_b_80338604)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_80338604)($at)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0001
	b       82$
	sw      $t5, 0x00F4($t6)
64$:
	lui     $t7, %hi(shape_table)
	lw      $t7, %lo(shape_table)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x01E8($t7)
	sw      $t8, 0x0014($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00D0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D8($t1)
	lui     $at, %hi(object_b_80338608)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_80338608)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00F4($t2)
82$:
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802ED10C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0108($t6)
	lhu     $t9, 0x00CA($t6)
	lwc1    $f16, 0x0164($t6)
	bgez    $t7, 11$
	sra     $t8, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t8, $at, 1
11$:
	mtc1    $t8, $f4
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	cvt.s.w $f6, $f4
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0108($t2)
	lhu     $t5, 0x00CA($t2)
	lwc1    $f16, 0x016C($t2)
	bgez    $t3, 30$
	sra     $t4, $t3, 1
	addiu   $at, $t3, 0x0001
	sra     $t4, $at, 1
30$:
	mtc1    $t4, $f4
	sra     $t7, $t5, 4
	sll     $t8, $t7, 2
	cvt.s.w $f6, $f4
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t2)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	addiu   $t6, $t1, 0x1000
	sw      $t6, 0x00D4($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	addiu   $t5, $t4, 0x2000
	sw      $t5, 0x00C8($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0028
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, 67$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t9)
67$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0154($t1)
	slti    $at, $t6, 0x0023
	beqz    $at, 85$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003888
	la.l    $a2, o_13003888
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t4, 0x0108($t0)
	addiu   $t5, $t4, 0x0001
	b       90$
	sw      $t5, 0x0108($t0)
85$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t7, 0x0108($t3)
	addiu   $t8, $t7, -0x0014
	sw      $t8, 0x0108($t3)
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802ED28C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x000A
	beqz    $at, 47$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	bnez    $t9, 28$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40240000
	mtc1    $at, $f11
	lw      $t1, 0x0154($t0)
	mtc1    $0, $f10
	mtc1    $t1, $f4
	nop
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	jal     object_set_scale
	cvt.s.d $f12, $f16
	b       41$
	nop
28$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x403E0000
	mtc1    $at, $f9
	lw      $t3, 0x0154($t2)
	mtc1    $0, $f8
	mtc1    $t3, $f18
	nop
	cvt.s.w $f4, $f18
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	jal     object_set_scale
	cvt.s.d $f12, $f10
41$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D4($t4)
	addiu   $t6, $t5, 0x1000
	b       53$
	sw      $t6, 0x00D4($t4)
47$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t8, 0x001C($t7)
	sw      $t8, 0x00D4($t9)
53$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x003B
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, 62$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED39C
object_b_802ED39C:
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
	jal     object_b_802ED10C
	nop
	b       21$
	nop
17$:
	jal     object_b_802ED28C
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

.globl object_b_802ED40C
object_b_802ED40C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41700000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x000C
	lw      $t8, 0x0154($t7)
	bne     $t8, $at, 16$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
16$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802ED45C
object_b_802ED45C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	li      $a1, 0x000A
	jal     object_a_802AAE8C
	li      $a2, 0x41F00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED498
object_b_802ED498:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130038E8
	la.l    $a2, o_130038E8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0038
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x00C8($t6)
	sw      $t7, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lw      $t3, 0x001C($sp)
	lhu     $t0, 0x00CA($t9)
	lwc1    $f10, 0x00A0($t3)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x44200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lw      $t8, 0x001C($sp)
	lhu     $t5, 0x00CA($t4)
	lwc1    $f10, 0x00A8($t8)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x44200000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x00A8($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130038E8
	la.l    $a2, o_130038E8
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0038
	sw      $v0, 0x0018($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x0018($sp)
	li      $at, 0x8000
	lw      $t0, 0x00C8($t9)
	addu    $t1, $t0, $at
	sw      $t1, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(math_cos)
	lw      $t7, 0x0018($sp)
	lhu     $t4, 0x00CA($t3)
	lwc1    $f10, 0x00A0($t7)
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0xC4200000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x00A0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0018($sp)
	lhu     $t9, 0x00CA($t8)
	lwc1    $f10, 0x00A8($t2)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0xC4200000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f8, $f16
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
	b       97$
	nop
97$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802ED62C
object_b_802ED62C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 23$
	nop
	b       30$
	nop
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D8($t8)
	addiu   $t0, $t9, 0x0100
	sw      $t0, 0x00D8($t8)
	b       30$
	nop
23$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D8($t1)
	addiu   $t3, $t2, -0x0100
	sw      $t3, 0x00D8($t1)
	b       30$
	nop
30$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x00DA($t4)
	slti    $at, $t5, -0x1FFD
	beqz    $at, 56$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0xDFFF
	sw      $t6, 0x00D8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0033
	bnez    $at, 56$
	nop
	lw      $t8, 0x0024($sp)
	andi    $t2, $t8, 0x0007
	bnez    $t2, 56$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
	li.u    $a0, 0x30344081
	jal     object_playsound
	li.l    $a0, 0x30344081
56$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t4, 0x00DA($t1)
	bltz    $t4, 81$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0033
	bnez    $at, 81$
	nop
	lw      $t9, 0x0024($sp)
	andi    $t0, $t9, 0x0007
	bnez    $t0, 81$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t2)
	li.u    $a0, 0x30354081
	jal     object_playsound
	li.l    $a0, 0x30354081
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802ED78C
object_b_802ED78C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A0($t9)
	swc1    $f4, 0x0100($t9)
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x0154($t2)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802ED7FC
object_b_802ED7FC:
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
	beq     $s0, $at, 84$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 130$
	nop
	b       173$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, 35$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x41F00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
35$:
	b       173$
	nop
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_8033860C)
	lwc1    $f8, %lo(object_b_8033860C)($at)
	lwc1    $f6, 0x00A0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    56$
	nop
	lui     $at, %hi(object_b_80338610)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_b_80338610)($at)
	swc1    $f10, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
56$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x402E0000
	mtc1    $at, $f7
	lw      $t6, 0x0154($t5)
	mtc1    $0, $f6
	mtc1    $t6, $f18
	nop
	cvt.d.w $f4, $f18
	c.eq.d  $f4, $f6
	nop
	bc1f    82$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li.u    $a0, 0x50130081
	jal     object_playsound
	li.l    $a0, 0x50130081
82$:
	b       173$
	nop
84$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338614)
	lwc1    $f16, %lo(object_b_80338614)($at)
	lwc1    $f10, 0x00A0($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    103$
	nop
	lui     $at, %hi(object_b_80338618)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, %lo(object_b_80338618)($at)
	swc1    $f18, 0x00A0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
103$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x003C
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 128$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t0, $t9, $at
	sw      $t0, 0x00C8($t8)
	li.u    $a0, 0x50130081
	jal     object_playsound
	li.l    $a0, 0x50130081
128$:
	b       173$
	nop
130$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_8033861C)
	lwc1    $f10, %lo(object_b_8033861C)($at)
	lwc1    $f8, 0x00A0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    149$
	nop
	lui     $at, %hi(object_b_80338620)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338620)($at)
	swc1    $f16, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
149$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x005A
	lw      $t5, 0x0154($t4)
	bne     $t5, $at, 171$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x8000
	lw      $t8, 0x00C8($t0)
	addu    $t1, $t8, $at
	sw      $t1, 0x00C8($t0)
171$:
	b       173$
	nop
173$:
	b       175$
	nop
175$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDACC
object_b_802EDACC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00C8($t6)
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t0, $f8
	nop
	sw      $t0, 0x0154($t1)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EDB2C
object_b_802EDB2C:
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
	beq     $s0, $at, 84$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 130$
	nop
	b       173$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, 35$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	li      $at, 0x41F00000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t1)
35$:
	b       173$
	nop
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338624)
	lwc1    $f8, %lo(object_b_80338624)($at)
	lwc1    $f6, 0x00A0($t2)
	c.lt.s  $f8, $f6
	nop
	bc1f    56$
	nop
	lui     $at, %hi(object_b_80338628)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f10, %lo(object_b_80338628)($at)
	swc1    $f10, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B8($t4)
56$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x402E0000
	mtc1    $at, $f7
	lw      $t6, 0x0154($t5)
	mtc1    $0, $f6
	mtc1    $t6, $f18
	nop
	cvt.d.w $f4, $f18
	c.eq.d  $f4, $f6
	nop
	bc1f    82$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t9)
	li.u    $a0, 0x50130081
	jal     object_playsound
	li.l    $a0, 0x50130081
82$:
	b       173$
	nop
84$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_8033862C)
	lwc1    $f16, %lo(object_b_8033862C)($at)
	lwc1    $f10, 0x00A0($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    103$
	nop
	lui     $at, %hi(object_b_80338630)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, %lo(object_b_80338630)($at)
	swc1    $f18, 0x00A0($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
103$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x003C
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 128$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x8000
	lw      $t9, 0x00C8($t8)
	addu    $t0, $t9, $at
	sw      $t0, 0x00C8($t8)
	li.u    $a0, 0x50130081
	jal     object_playsound
	li.l    $a0, 0x50130081
128$:
	b       173$
	nop
130$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338634)
	lwc1    $f10, %lo(object_b_80338634)($at)
	lwc1    $f8, 0x00A0($t1)
	c.lt.s  $f8, $f10
	nop
	bc1f    149$
	nop
	lui     $at, %hi(object_b_80338638)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, %lo(object_b_80338638)($at)
	swc1    $f16, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
149$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x005A
	lw      $t5, 0x0154($t4)
	bne     $t5, $at, 171$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	sw      $t6, 0x014C($t7)
	li      $at, 0x41C80000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x8000
	lw      $t8, 0x00C8($t0)
	addu    $t1, $t8, $at
	sw      $t1, 0x00C8($t0)
171$:
	b       173$
	nop
173$:
	b       175$
	nop
175$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDDFC
object_b_802EDDFC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A0($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x00A0($t0)
	swc1    $f10, 0x0164($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $s0, 0x0144($t1)
	beq     $s0, $at, 33$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 49$
	nop
	b       57$
	nop
33$:
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00F4($t2)
	b       57$
	nop
41$:
	li      $at, 0x41700000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F4($t3)
	b       57$
	nop
49$:
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F4($t4)
	b       57$
	nop
57$:
	jal     randf
	nop
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f8, $f0, $f6
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sw      $t7, 0x0154($t8)
	b       70$
	nop
70$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EDF28
object_b_802EDF28:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, 14$
	nop
	li      $at, 0x0001
	beq     $a0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $a0, $at, 78$
	nop
	b       123$
	nop
14$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0065
	bnez    $at, 28$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x00F4($t1)
	swc1    $f4, 0x00B8($t1)
28$:
	b       123$
	nop
30$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	lwc1    $f16, 0x00F4($t2)
	lw      $t3, 0x0154($t2)
	div.s   $f18, $f10, $f16
	mtc1    $t3, $f6
	nop
	cvt.s.w $f8, $f6
	c.le.s  $f18, $f8
	nop
	bc1f    56$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43FF0000
	mtc1    $at, $f10
	lwc1    $f6, 0x0164($t5)
	add.s   $f16, $f6, $f10
	swc1    $f16, 0x00A0($t5)
56$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x003C
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 76$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00F4($t0)
	swc1    $f8, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x8000
	lw      $t3, 0x00C8($t1)
	addu    $t2, $t3, $at
	sw      $t2, 0x00C8($t1)
76$:
	b       123$
	nop
78$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	lwc1    $f10, 0x00F4($t4)
	lw      $t5, 0x0154($t4)
	div.s   $f16, $f6, $f10
	mtc1    $t5, $f18
	nop
	cvt.s.w $f4, $f18
	c.le.s  $f16, $f4
	nop
	bc1f    101$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x0164($t7)
	swc1    $f18, 0x00A0($t7)
101$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x005A
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 121$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t3)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00F4($t2)
	swc1    $f6, 0x00B8($t2)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x8000
	lw      $t5, 0x00C8($t1)
	addu    $t4, $t5, $at
	sw      $t4, 0x00C8($t1)
121$:
	b       123$
	nop
123$:
	b       125$
	nop
125$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EE124
object_b_802EE124:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x017C($t9)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EE1A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332694
	la.l    $a1, object_b_80332694
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 44$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x2000
	beqz    $t1, 31$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x8000
	lw      $t3, 0x0160($t2)
	addu    $t4, $t3, $at
	sw      $t4, 0x00C8($t2)
	li      $at, 0x41F00000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t5)
31$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x4000
	beqz    $t8, 41$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0005
	sw      $t9, 0x014C($t0)
41$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x0134($t1)
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EE268:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00F4($t8)
	addiu   $t0, $t9, -0x0001
	sltiu   $at, $t0, 0x0005
	beqz    $at, 123$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_b_8033863C)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_8033863C)($at)
	jr      $t0
	nop
.globl L802EE2B8
L802EE2B8:
	jal     objlib_8029F464
	li      $a0, 0x0001
	lh      $t1, 0x001E($sp)
	li      $at, 0x0005
	bne     $t1, $at, 38$
	nop
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t3)
38$:
	jal     objlib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, 50$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x00F4($t5)
	li.u    $a0, 0x306D2081
	jal     object_playsound
	li.l    $a0, 0x306D2081
50$:
	b       123$
	nop
.globl L802EE338
L802EE338:
	jal     objlib_8029F464
	li      $a0, 0x0002
	lb      $t6, 0x0023($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0001
	bne     $t7, $at, 72$
	nop
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
	sw      $0, 0x00F4($t0)
72$:
	b       123$
	nop
.globl L802EE390
L802EE390:
	jal     objlib_8029F464
	li      $a0, 0x0003
	jal     objlib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, 84$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00F4($t1)
84$:
	b       123$
	nop
.globl L802EE3C0
L802EE3C0:
	jal     objlib_8029F464
	li      $a0, 0x0004
	li      $at, 0x41200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x003D
	bnez    $at, 111$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0040($t7)
111$:
	b       123$
	nop
.globl L802EE42C
L802EE42C:
	jal     objlib_8029F464
	li      $a0, 0x0004
	li      $at, 0x40A00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	b       123$
	nop
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EE46C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, 0x00C8
	lw      $a1, 0x0164($t6)
	lw      $a2, 0x0168($t6)
	lw      $a3, 0x016C($t6)
	sw      $t7, 0x0010($sp)
	jal     object_b_802E54B0
	move    $a0, $t6
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lh      $t8, 0x0026($sp)
	li      $at, 0x0009
	andi    $t9, $t8, 0x0009
	bne     $t9, $at, 47$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00F4($t0)
	bnez    $t1, 47$
	nop
	jal     randf
	nop
	li      $at, 0x40C00000
	mtc1    $at, $f4
	li      $at, 0x0001
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	bne     $t3, $at, 43$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0004
	sw      $t4, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	b       47$
	sw      $0, 0x0154($t6)
43$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x00F4($t8)
47$:
	jal     object_b_802EE268
	lh      $a0, 0x0026($sp)
	jal     object_b_802EE1A0
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t9)
	lwc1    $f14, 0x0168($t9)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t9)
	bnez    $v0, 69$
	nop
	lh      $t0, 0x0026($sp)
	li      $at, 0x0009
	andi    $t1, $t0, 0x0009
	bne     $t1, $at, 69$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
69$:
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802EE598:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	sh      $v0, 0x0022($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x0022($sp)
	li      $a2, 0x0800
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x002E($sp)
	lh      $t0, 0x002E($sp)
	li      $at, 0x0009
	andi    $t1, $t0, 0x0009
	bne     $t1, $at, 44$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00F4($t2)
	bnez    $t3, 44$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0005
	sw      $t4, 0x00F4($t5)
44$:
	jal     object_b_802EE268
	lh      $a0, 0x002E($sp)
	jal     object_b_802EE1A0
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t7, 0x0064
	lw      $a1, 0x0164($t6)
	lw      $a2, 0x0168($t6)
	lw      $a3, 0x016C($t6)
	sw      $t7, 0x0010($sp)
	jal     object_b_802E52B8
	move    $a0, $t6
	beqz    $v0, 77$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130039D4
	la.l    $a2, o_130039D4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0074
	li.u    $a0, 0x30762081
	jal     object_playsound
	li.l    $a0, 0x30762081
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F4($t0)
77$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a3, 0x0320
	lwc1    $f12, 0x0164($t1)
	lwc1    $f14, 0x0168($t1)
	jal     object_b_802E5208
	lw      $a2, 0x016C($t1)
	li      $at, 0x0001
	bne     $v0, $at, 94$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00F4($t4)
94$:
	b       96$
	nop
96$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802EE728:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x017C($t6)
	addiu   $t8, $t7, -0x0006
	sw      $t8, 0x017C($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x017C($t9)
	bgez    $t0, 16$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x017C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
16$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EE778:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 20$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0005
	li.u    $a0, 0x30713081
	jal     object_makesound
	li.l    $a0, 0x30713081
	jal     objlib_802A37AC
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EE7E0
object_b_802EE7E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0006
	beqz    $at, 63$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338650)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338650)($at)
	jr      $t7
	nop
.globl L802EE818
L802EE818:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x017C($t8)
	addiu   $t0, $t9, 0x000C
	sw      $t0, 0x017C($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x017C($t1)
	slti    $at, $t2, 0x0100
	bnez    $at, 37$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x00FF
	sw      $t3, 0x017C($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0068($t5)
	sh      $0, 0x0074($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t9)
37$:
	b       63$
	nop
.globl L802EE87C
L802EE87C:
	jal     object_b_802EE46C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t8, 0x0154($t0)
	slti    $at, $t8, 0x001F
	bnez    $at, 49$
	nop
	jal     objlib_802A05D4
	nop
49$:
	b       63$
	nop
.globl L802EE8AC
L802EE8AC:
	jal     object_b_802EE598
	nop
	b       63$
	nop
.globl L802EE8BC
L802EE8BC:
	jal     object_b_802EE728
	nop
	b       63$
	nop
.globl L802EE8CC
L802EE8CC:
	jal     object_b_802EE778
	nop
	b       63$
	nop
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EE8F4
object_b_802EE8F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803326A4
	la.l    $a1, object_b_803326A4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 42$
	nop
	b       44$
	nop
18$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 40$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_130039A0
	la.l    $a2, o_130039A0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0066
	li.u    $a0, 0x30762081
	jal     object_playsound
	li.l    $a0, 0x30762081
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
40$:
	b       44$
	nop
42$:
	b       44$
	nop
44$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       49$
	nop
49$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EE9CC
object_b_802EE9CC:
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EEA24:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803326B4
	la.l    $a1, object_b_803326B4
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 16$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EEA7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 52$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338668)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338668)($at)
	jr      $t7
	nop
.globl L802EEAB4
L802EEAB4:
	la.u    $a0, path_07011530
	jal     segment_to_virtual
	la.l    $a0, path_07011530
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00FC($t8)
	b       52$
	nop
.globl L802EEAD4
L802EEAD4:
	la.u    $a0, 0x070170A0
	jal     segment_to_virtual
	la.l    $a0, 0x070170A0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00FC($t9)
	b       52$
	nop
.globl L802EEAF4
L802EEAF4:
	la.u    $a0, path_070115C4
	jal     segment_to_virtual
	la.l    $a0, path_070115C4
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00FC($t0)
	b       52$
	nop
.globl L802EEB14
L802EEB14:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	la.u    $t1, object_b_803326C4
	la.l    $t1, object_b_803326C4
	sw      $t1, 0x00FC($t2)
	b       52$
	nop
.globl L802EEB30
L802EEB30:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	la.u    $t3, object_b_80332718
	la.l    $t3, object_b_80332718
	sw      $t3, 0x00FC($t4)
	b       52$
	nop
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802EEB64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802EEA7C
	nop
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     objlib_802A2C5C
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x010C($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t8)
	jal     objlib_8029E530
	lw      $a1, 0x00F4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338680)
	ldc1    $f8, %lo(object_b_80338680)($at)
	lwc1    $f4, 0x00B8($t0)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    39$
	nop
	li      $at, 0x428C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t1)
39$:
	jal     object_b_802EEA24
	nop
	lw      $t2, 0x0018($sp)
	li      $at, -0x0001
	bne     $t2, $at, 63$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a3, 0x1B58
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t3)
	beqz    $v0, 60$
	nop
	jal     objlib_802A37AC
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42B80000
60$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
63$:
	lh      $t5, 0x001E($sp)
	andi    $t7, $t5, 0x0001
	beqz    $t7, 79$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f18
	lwc1    $f16, 0x00B0($t6)
	c.lt.s  $f18, $f16
	nop
	bc1f    79$
	nop
	li.u    $a0, 0x30400081
	jal     object_playsound
	li.l    $a0, 0x30400081
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802EECB8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802EEA7C
	nop
	jal     objlib_802A2C5C
	lw      $a0, 0x001C($sp)
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x010C($t6)
	sw      $t7, 0x00C8($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sltiu   $at, $t9, 0x0005
	beqz    $at, 72$
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_b_80338688)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_b_80338688)($at)
	jr      $t9
	nop
.globl L802EED14
L802EED14:
	li      $at, 0x41A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	b       72$
	nop
.globl L802EED34
L802EED34:
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t1)
	b       72$
	nop
.globl L802EED54
L802EED54:
	li      $at, 0x41A00000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B8($t2)
	b       72$
	nop
.globl L802EED74
L802EED74:
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t3)
	b       72$
	nop
.globl L802EED94
L802EED94:
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t4)
	lui     $at, %hi(object_b_8033869C)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_8033869C)($at)
	li      $at, 0x421C0000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00DC($t5)
	b       72$
	nop
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EEDF0
object_b_802EEDF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 21$
	nop
	b       25$
	nop
13$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t8)
	jal     object_b_802EECB8
	nop
	b       25$
	nop
21$:
	jal     object_b_802EEB64
	nop
	b       25$
	nop
25$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0004
	lw      $t0, 0x0144($t9)
	beq     $t0, $at, 38$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t1)
	lw      $a2, 0x00A4($t1)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t1)
38$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0FA0
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EEEB4
object_b_802EEEB4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0144($t6)
	beqz    $a0, 14$
	nop
	li      $at, 0x0001
	beq     $a0, $at, 27$
	nop
	li      $at, 0x0002
	beq     $a0, $at, 41$
	nop
	b       54$
	nop
14$:
	lui     $at, %hi(object_b_803386A0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_b_803386A0)($at)
	swc1    $f4, 0x00F4($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t8)
	b       54$
	nop
27$:
	li      $at, 0x45FA0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00F8($t0)
	b       54$
	nop
41$:
	lui     $at, %hi(object_b_803386A4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, %lo(object_b_803386A4)($at)
	swc1    $f16, 0x00F4($t1)
	li      $at, 0x40000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00F8($t2)
	b       54$
	nop
54$:
	b       56$
	nop
56$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EEF9C
object_b_802EEF9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0100
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 12$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
12$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	bnez    $v0, 31$
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0024($t1)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    33$
	nop
31$:
	b       78$
	nop
33$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	lw      $t4, 0x0154($t2)
	and     $t5, $t3, $t4
	bnez    $t5, 76$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00F4($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	trunc.w.s $f10, $f8
	lw      $a2, 0x00A8($t6)
	mfc1    $a3, $f10
	jal     object_b_802E5208
	nop
	beqz    $v0, 76$
	nop
	jal     randf
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mov.s   $f20, $f0
	lwc1    $f16, 0x00F8($t8)
	mul.s   $f18, $f16, $f20
	trunc.w.s $f4, $f18
	mfc1    $t0, $f4
	nop
	bnez    $t0, 76$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003A58
	la.l    $a2, o_13003A58
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00B4
	sw      $v0, 0x0024($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x0024($sp)
	lw      $t2, 0x0144($t1)
	sw      $t2, 0x0144($t3)
76$:
	b       78$
	nop
78$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EF0E8
object_b_802EF0E8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0100
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
11$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0320
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	bnez    $v0, 30$
	nop
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0024($t1)
	lwc1    $f4, 0x00A4($t0)
	c.lt.s  $f4, $f6
	nop
	bc1f    32$
	nop
30$:
	b       73$
	nop
32$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	andi    $t4, $t3, 0x003F
	bnez    $t4, 71$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a3, 0x2EE0
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t5)
	beqz    $v0, 71$
	nop
	jal     randf
	nop
	li      $at, 0x3FF80000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f0
	mul.d   $f16, $f8, $f10
	trunc.w.d $f18, $f16
	mfc1    $t7, $f18
	nop
	bnez    $t7, 71$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003A58
	la.l    $a2, o_13003A58
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00B4
	sw      $v0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x001C($sp)
	lw      $t9, 0x0144($t8)
	sw      $t9, 0x0144($t0)
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF21C
object_b_802EF21C:
	li      $at, 0x41400000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF274
object_b_802EF274:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001A($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_plane
	lw      $a2, 0x00A8($t6)
	lw      $t7, 0x001C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0010($t7)
	c.eq.s  $f4, $f6
	nop
	bc1f    32$
	nop
	lwc1    $f8, 0x0018($t7)
	mtc1    $0, $f10
	nop
	c.eq.s  $f8, $f10
	nop
	bc1f    32$
	nop
	li      $at, 0x41E00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00B8($t8)
32$:
	jal     object_b_802EEA24
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	li.u    $a0, 0x400A0001
	jal     object_levelsound
	li.l    $a0, 0x400A0001
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF34C
object_b_802EF34C:
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	li      $at, 0x3F800000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t7)
	li      $at, 0x40000000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x0164($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00A4($t0)
	swc1    $f16, 0x0168($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x00A8($t1)
	swc1    $f18, 0x016C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x00C8($t3)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802EF3F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	jal     object_b_802EEA24
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t6)
	c.lt.s  $f6, $f4
	nop
	bc1f    26$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a0, 0x0004
	lw      $a1, 0x00A0($t7)
	lw      $a2, 0x00A4($t7)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t7)
	li.u    $a0, 0x400A0001
	jal     object_levelsound
	li.l    $a0, 0x400A0001
26$:
	lh      $t8, 0x001E($sp)
	andi    $t9, $t8, 0x0001
	beqz    $t9, 36$
	nop
	andi    $t0, $t8, 0x0009
	bnez    $t0, 36$
	nop
	li.u    $a0, 0x30400081
	jal     object_playsound
	li.l    $a0, 0x30400081
36$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t1)
	lwc1    $f14, 0x00A4($t1)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t1)
	bnez    $v0, 70$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	jal     objlib_802A05B4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x0164($t5)
	swc1    $f8, 0x00A0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x0168($t6)
	swc1    $f10, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x016C($t7)
	swc1    $f16, 0x00A8($t7)
	jal     object_b_802EF34C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t8)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EF524
object_b_802EF524:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x40B00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 22$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 49$
	nop
	b       63$
	nop
22$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0BB8
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	beqz    $v0, 43$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0011
	lh      $t2, 0x0002($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0002($t1)
	jal     objlib_802A05D4
	nop
43$:
	b       63$
	nop
45$:
	jal     object_b_802EF3F4
	nop
	b       63$
	nop
49$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x1388
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	beqz    $v0, 61$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
61$:
	b       63$
	nop
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802EF63C
object_b_802EF63C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	sw      $t7, 0x00F4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	sw      $t9, 0x00F8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF66C
object_b_802EF66C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	bnez    $t7, 49$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	lw      $t4, 0x00F4($t8)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f6
	mtc1    $t4, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f8, $f16
	trunc.w.s $f4, $f18
	mfc1    $t6, $f4
	nop
	sw      $t6, 0x00D4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t9, 0x0154($t7)
	lw      $t4, 0x00F8($t7)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x45000000
	mtc1    $at, $f10
	mtc1    $t4, $f16
	mul.s   $f8, $f6, $f10
	cvt.s.w $f18, $f16
	add.s   $f4, $f8, $f18
	trunc.w.s $f6, $f4
	mfc1    $t6, $f6
	b       91$
	sw      $t6, 0x00D0($t7)
49$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	lw      $t4, 0x00F4($t8)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x46000000
	mtc1    $at, $f16
	mtc1    $t4, $f18
	mul.s   $f8, $f10, $f16
	cvt.s.w $f4, $f18
	sub.s   $f6, $f4, $f8
	trunc.w.s $f10, $f6
	mfc1    $t6, $f10
	nop
	sw      $t6, 0x00D4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_cos)
	lw      $t9, 0x0154($t7)
	lw      $t4, 0x00F8($t7)
	sll     $t0, $t9, 10
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_cos)($at)
	li      $at, 0x45000000
	mtc1    $at, $f18
	mtc1    $t4, $f8
	mul.s   $f4, $f16, $f18
	cvt.s.w $f6, $f8
	add.s   $f10, $f4, $f6
	trunc.w.s $f16, $f10
	mfc1    $t6, $f16
	nop
	sw      $t6, 0x00D0($t7)
91$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0040
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 103$
	nop
	li.u    $a0, 0x30750081
	jal     object_playsound
	li.l    $a0, 0x30750081
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
103$:
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802EF820
object_b_802EF820:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x0168($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802EF858
object_b_802EF858:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x00F4($t6)
	bne     $t7, $at, 31$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0020
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 21$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00F4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       31$
	sw      $0, 0x0154($t1)
21$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0114($t3)
	b       282$
	nop
31$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t6, 0x000A
	lw      $t5, 0x00F4($t4)
	subu    $t7, $t6, $t5
	sw      $t7, 0x0018($sp)
	lw      $t8, 0x0018($sp)
	bgez    $t8, 43$
	nop
	lw      $t9, 0x0018($sp)
	subu    $t0, $0, $t9
	sw      $t0, 0x0018($sp)
43$:
	lw      $t1, 0x0018($sp)
	addiu   $t2, $t1, -0x0006
	sw      $t2, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	bgez    $t3, 50$
	nop
	sw      $0, 0x0018($sp)
50$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0018($sp)
	lw      $t6, 0x0154($t4)
	addiu   $t7, $t5, 0x0008
	bne     $t6, $t7, 88$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x00F4($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0014
	lw      $t3, 0x00F4($t2)
	bne     $t3, $at, 88$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00F8($t4)
	bnez    $t5, 81$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	b       84$
	sw      $t6, 0x00F8($t7)
81$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00F8($t8)
84$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, -0x0001
	sw      $t0, 0x00F4($t1)
88$:
	lw      $t9, 0x0018($sp)
	li      $at, 0x0004
	beq     $t9, $at, 95$
	nop
	li      $at, 0x0003
	bne     $t9, $at, 98$
	nop
95$:
	li      $t2, 0x0004
	b       113$
	sw      $t2, 0x0018($sp)
98$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0002
	beq     $t3, $at, 105$
	nop
	li      $at, 0x0001
	bne     $t3, $at, 108$
	nop
105$:
	li      $t4, 0x0002
	b       113$
	sw      $t4, 0x0018($sp)
108$:
	lw      $t5, 0x0018($sp)
	bnez    $t5, 113$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
113$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0018($sp)
	lw      $t8, 0x0154($t7)
	sll     $t1, $t0, 3
	slt     $at, $t8, $t1
	beqz    $at, 280$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t2, 0x00F8($t9)
	bnez    $t2, 162$
	nop
	lw      $t3, 0x0018($sp)
	li      $t4, 0x0014
	lui     $t6, %hi(object)
	div     $0, $t4, $t3
	mflo    $t5
	mtc1    $t5, $f6
	lw      $t6, %lo(object)($t6)
	bnez    $t3, 136$
	nop
	break   7
136$:
	li      $at, -0x0001
	bne     $t3, $at, 142$
	li      $at, 0x80000000
	bne     $t4, $at, 142$
	nop
	break   6
142$:
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00B4($t6)
	lw      $t7, 0x0018($sp)
	li      $t0, 0x0400
	lui     $t1, %hi(object)
	div     $0, $t0, $t7
	lw      $t1, %lo(object)($t1)
	mflo    $t8
	bnez    $t7, 153$
	nop
	break   7
153$:
	li      $at, -0x0001
	bne     $t7, $at, 159$
	li      $at, 0x80000000
	bne     $t0, $at, 159$
	nop
	break   6
159$:
	sw      $t8, 0x0114($t1)
	b       196$
	nop
162$:
	lw      $t9, 0x0018($sp)
	li      $t2, -0x0014
	lui     $t3, %hi(object)
	div     $0, $t2, $t9
	mflo    $t4
	mtc1    $t4, $f10
	lw      $t3, %lo(object)($t3)
	bnez    $t9, 172$
	nop
	break   7
172$:
	li      $at, -0x0001
	bne     $t9, $at, 178$
	li      $at, 0x80000000
	bne     $t2, $at, 178$
	nop
	break   6
178$:
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00B4($t3)
	lw      $t5, 0x0018($sp)
	li      $t6, -0x0400
	lui     $t7, %hi(object)
	div     $0, $t6, $t5
	lw      $t7, %lo(object)($t7)
	mflo    $t0
	bnez    $t5, 189$
	nop
	break   7
189$:
	li      $at, -0x0001
	bne     $t5, $at, 195$
	li      $at, 0x80000000
	bne     $t6, $at, 195$
	nop
	break   6
195$:
	sw      $t0, 0x0114($t7)
196$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f4, 0x00B4($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	lw      $t9, 0x0114($t1)
	addu    $t4, $t2, $t9
	sw      $t4, 0x00C4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t6, 0x00C4($t3)
	andi    $t5, $t6, 0x1FFF
	mtc1    $t5, $f8
	jal     object_b_802E3F68
	cvt.s.w $f12, $f8
	li      $at, 0x44480000
	mtc1    $at, $f10
	nop
	c.lt.s  $f0, $f10
	nop
	bc1f    230$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x0114($t0)
	beqz    $t7, 230$
	nop
	li.u    $a0, 0x80482081
	jal     object_playsound
	li.l    $a0, 0x80482081
230$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f4
	lw      $t2, 0x00C4($t8)
	sll     $t9, $t2, 2
	andi    $t4, $t9, 0xFFFF
	sra     $t1, $t4, 4
	sll     $t3, $t1, 2
	addu    $at, $at, $t3
	lwc1    $f16, %lo(math_sin)($at)
	li      $at, 0x40370000
	mtc1    $at, $f5
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    259$
	nop
	li      $at, 0xBF800000
	mtc1    $at, $f4
	lwc1    $f18, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x001C($sp)
259$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x0168($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0154($t5)
	sll     $t2, $t8, 3
	addiu   $t7, $t0, 0x0001
	bne     $t7, $t2, 280$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0001
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
280$:
	b       282$
	nop
282$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EFCD0
object_b_802EFCD0:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0144($t6)
	beqz    $a0, 14$
	nop
	li      $at, 0x0001
	beq     $a0, $at, 16$
	nop
	li      $at, 0x0002
	beq     $a0, $at, 30$
	nop
	b       43$
	nop
14$:
	b       43$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	addiu   $t0, $t9, 0x0032
	sw      $t0, 0x0154($t8)
	b       43$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x44000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t1)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
	b       43$
	nop
43$:
	b       45$
	nop
45$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EFD8C
object_b_802EFD8C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, 11$
	nop
	li      $at, 0x0001
	beq     $a0, $at, 28$
	nop
	b       44$
	nop
11$:
	lui     $at, %hi(object_b_803386A8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f4, %lo(object_b_803386A8)($at)
	swc1    $f4, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0064
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 26$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
26$:
	b       44$
	nop
28$:
	lui     $at, %hi(object_b_803386AC)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, %lo(object_b_803386AC)($at)
	swc1    $f6, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0064
	lw      $t4, 0x0154($t3)
	bne     $t4, $at, 42$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x014C($t5)
42$:
	b       44$
	nop
44$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x00A4($t6)
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	b       52$
	nop
52$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802EFE64
object_b_802EFE64:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003B98
	la.l    $a2, o_13003B98
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x00E1
	sw      $v0, 0x0018($sp)
	lw      $t6, 0x001C($sp)
	li      $t8, 0x11F8
	lw      $t0, 0x0018($sp)
	sll     $t7, $t6, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t9, $t8, $t7
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A4($t0)
	lw      $t1, 0x001C($sp)
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x000A
	bnez    $at, 3$
	sw      $t2, 0x001C($sp)
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802EFEF4
object_b_802EFEF4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x014C($t6)
	beqz    $a0, 17$
	nop
	li      $at, 0x0001
	beq     $a0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $a0, $at, 59$
	nop
	li      $at, 0x0003
	beq     $a0, $at, 92$
	nop
	b       128$
	nop
17$:
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0214($t7)
	bne     $t8, $t9, 28$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
28$:
	b       128$
	nop
30$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	lwc1    $f10, 0x0168($t2)
	sll     $t4, $t3, 12
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	sub.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0008
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 57$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t1)
57$:
	b       128$
	nop
59$:
	li      $at, 0xC1200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x00B0($t4)
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x43000000
	mtc1    $at, $f16
	lwc1    $f8, 0x00A4($t5)
	c.lt.s  $f8, $f16
	nop
	bc1f    90$
	nop
	li      $at, 0x43000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00A4($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t7, 0x0003
	sw      $t7, 0x014C($t2)
90$:
	b       128$
	nop
92$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 12
	andi    $t1, $t0, 0xFFFF
	sra     $t3, $t1, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	li      $at, 0x43000000
	mtc1    $at, $f8
	mul.s   $f10, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0008
	bnez    $at, 126$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t7)
	li      $at, 0x43000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00A4($t2)
126$:
	b       128$
	nop
128$:
	b       130$
	nop
130$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802F0104
object_b_802F0104:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_803386B0)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_803386B0)($at)
	la.u    $a0, o_13003B60
	jal     objlib_8029F95C
	la.l    $a0, o_13003B60
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 19$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x014C($t7)
	beqz    $t8, 19$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F0168
object_b_802F0168:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t6, 0x06FD
	li      $t7, 0x0400
	li      $t8, 0x02FC
	sw      $t8, 0x0018($sp)
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t9, 0x06FD
	li      $t0, 0x0380
	li      $t1, -0x0A13
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t2, -0x16FB
	li      $t3, 0x0400
	li      $t4, -0x0A13
	sw      $t4, 0x0018($sp)
	sw      $t3, 0x0014($sp)
	sw      $t2, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_13003C0C
	li      $t5, -0x16FB
	li      $t6, 0x0400
	li      $t7, 0x02FC
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	sw      $t5, 0x0010($sp)
	la.l    $a3, o_13003C0C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	b       68$
	nop
68$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F0288:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lw      $t7, 0x0154($t6)
	lwc1    $f10, 0x0164($t6)
	sll     $t8, $t7, 14
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x42200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x003C
	beqz    $at, 47$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lw      $t5, 0x0154($t4)
	sll     $t7, $t5, 13
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	mul.s   $f12, $f18, $f4
	jal     object_b_802E3F68
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, 0x0168($t1)
	add.s   $f8, $f0, $f6
	b       80$
	swc1    $f8, 0x00A4($t1)
47$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t2, 0x0118($t6)
	addiu   $t3, $t2, 0x0100
	sw      $t3, 0x0118($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0118($t4)
	slti    $at, $t5, 0x1801
	bnez    $at, 68$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x1800
	sw      $t7, 0x0118($t8)
	li      $at, 0x40A00000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B0($t9)
68$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00D4($t0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f16, 0x00A4($t6)
	lwc1    $f18, 0x00B0($t6)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A4($t6)
80$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0154($t4)
	slti    $at, $t5, 0x005A
	beqz    $at, 118$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003BEC
	la.l    $a2, o_13003BEC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x41200000
	mtc1    $at, $f6
	li      $at, 0x41A00000
	mtc1    $at, $f10
	mul.s   $f8, $f0, $f6
	lw      $t7, 0x001C($sp)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B8($t7)
	jal     rand
	nop
	lw      $t8, 0x001C($sp)
	sw      $v0, 0x00C8($t8)
	lui     $at, %hi(object_b_803386B4)
	lwc1    $f18, %lo(object_b_803386B4)($at)
	lw      $t9, 0x001C($sp)
	swc1    $f18, 0x00F4($t9)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	lw      $t1, 0x001C($sp)
	add.s   $f6, $f0, $f4
	swc1    $f6, 0x00E4($t1)
118$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0096
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 128$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t6)
128$:
	b       130$
	nop
130$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F04A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	li.u    $a2, 0x442C8000
	li.l    $a2, 0x442C8000
	move    $a0, $0
	jal     object_a_802AAE8C
	move    $a1, $0
	sh      $0, 0x001A($sp)
8$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003BEC
	la.l    $a2, o_13003BEC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x008A
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x42480000
	mtc1    $at, $f4
	li      $at, 0x42A00000
	mtc1    $at, $f8
	mul.s   $f6, $f0, $f4
	lw      $t6, 0x001C($sp)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t6)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f16
	li      $at, 0x41A00000
	mtc1    $at, $f4
	mul.s   $f18, $f0, $f16
	lw      $t7, 0x001C($sp)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t7)
	jal     rand
	nop
	lw      $t8, 0x001C($sp)
	sw      $v0, 0x00C8($t8)
	li      $at, 0x40400000
	mtc1    $at, $f8
	lw      $t9, 0x001C($sp)
	swc1    $f8, 0x00F4($t9)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f10
	li      $at, 0x40A00000
	mtc1    $at, $f18
	mul.s   $f16, $f0, $f10
	lw      $t0, 0x001C($sp)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00E4($t0)
	lh      $t1, 0x001A($sp)
	addiu   $t2, $t1, 0x0001
	sll     $t3, $t2, 16
	sra     $t4, $t3, 16
	slti    $at, $t4, 0x001E
	bnez    $at, 8$
	sh      $t2, 0x001A($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
	b       65$
	nop
65$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F05B4
object_b_802F05B4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 42$
	nop
	b       54$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0004
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 28$
	nop
	jal     Na_Solution
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
28$:
	b       54$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	bnez    $t2, 38$
	nop
	li.u    $a0, 0x814BE081
	jal     object_playsound
	li.l    $a0, 0x814BE081
38$:
	jal     object_b_802F0288
	nop
	b       54$
	nop
42$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	bnez    $t4, 50$
	nop
	li.u    $a0, 0x814CF081
	jal     object_makesound
	li.l    $a0, 0x814CF081
50$:
	jal     object_b_802F04A0
	nop
	b       54$
	nop
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F06A8
object_b_802F06A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_803386B8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803386B8)($at)
	swc1    $f4, 0x0170($t6)
	li      $at, 0x40000000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0174($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0003
	sw      $t8, 0x00F0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t0)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0714
object_b_802F0714:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x1000
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00D0($t9)
	addiu   $t1, $t0, 0x1000
	sw      $t1, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x003C
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 23$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0788
object_b_802F0788:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 21$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F07F4
object_b_802F07F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x40010001
	jal     object_levelsound
	li.l    $a0, 0x40010001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0820
object_b_802F0820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li.u    $a0, 0x41030001
	jal     object_levelsound
	li.l    $a0, 0x41030001
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F084C
object_b_802F084C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
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
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0898
object_b_802F0898:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 11$
	nop
	b       41$
	nop
11$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x0144($t8)
	beqz    $s0, 24$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 34$
	nop
	b       39$
	nop
24$:
	li.u    $a0, 0x90524001
	jal     object_levelsound
	li.l    $a0, 0x90524001
	b       39$
	nop
29$:
	li.u    $a0, 0x80504001
	jal     object_levelsound
	li.l    $a0, 0x80504001
	b       39$
	nop
34$:
	li.u    $a0, 0x50514001
	jal     object_levelsound
	li.l    $a0, 0x50514001
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

.globl object_b_802F0950
object_b_802F0950:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 10$
	nop
	b       17$
	nop
10$:
	li.u    $a0, 0x60104001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x60104001
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F09A4
object_b_802F09A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(camerap)
	lw      $t6, %lo(camerap)($t6)
	li      $at, 0x0003
	lbu     $t7, 0x0000($t6)
	bne     $t7, $at, 10$
	nop
	b       15$
	nop
10$:
	li.u    $a0, 0x400E0001
	jal     object_levelsound
	li.l    $a0, 0x400E0001
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F09F0
object_b_802F09F0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0078
	bnez    $at, 14$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
14$:
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F0A40
object_b_802F0A40:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	li      $at, 0x41200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	lui     $at, %hi(object_b_803386BC)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_803386BC)($at)
	swc1    $f16, 0x0170($t0)
	li      $at, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	lui     $at, %hi(object_b_803386C0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, %lo(object_b_803386C0)($at)
	swc1    $f8, 0x00F4($t4)
	la.u    $a0, o_13003D0C
	jal     objlib_8029F95C
	la.l    $a0, o_13003D0C
	sw      $v0, 0x0034($sp)
	lw      $t5, 0x0034($sp)
	beqz    $t5, 57$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x0068($t7)
57$:
	lui     $a0, %hi(object)
	la.u    $a3, o_13003D34
	li      $t8, -0x0192
	li      $t9, 0x01CD
	li      $t0, -0x0B52
	sw      $t0, 0x0018($sp)
	sw      $t9, 0x0014($sp)
	sw      $t8, 0x0010($sp)
	la.l    $a3, o_13003D34
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	move    $a2, $0
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	b       75$
	nop
75$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F0B7C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332764
	la.l    $a1, object_b_80332764
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 16$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F0BD4:
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	div.s   $f8, $f6, $f12
	lwc1    $f4, 0x00B8($t6)
	lw      $t1, 0x00D0($t6)
	mul.s   $f10, $f4, $f8
	trunc.w.s $f16, $f10
	mfc1    $t8, $f16
	nop
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	addu    $t2, $t1, $t0
	sw      $t2, 0x00D0($t6)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lui     $at, %hi(object_b_803386C8)
	ldc1    $f4, %lo(object_b_803386C8)($at)
	lwc1    $f18, 0x00B8($t3)
	lwc1    $f10, 0x00F4($t3)
	cvt.d.s $f6, $f18
	cvt.d.s $f16, $f10
	mul.d   $f8, $f6, $f4
	add.d   $f18, $f16, $f8
	cvt.s.d $f6, $f18
	swc1    $f6, 0x00F4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	lwc1    $f4, 0x00F4($t4)
	mtc1    $0, $f16
	cvt.d.s $f10, $f4
	c.lt.d  $f16, $f10
	nop
	bc1f    44$
	nop
	li      $at, 0x3F800000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t5)
44$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F0C94:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	la.u    $a0, 0x070165A8
	jal     segment_to_virtual
	la.l    $a0, 0x070165A8
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00FC($t6)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x0026($sp)
	jal     objlib_802A2C5C
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x010C($t7)
	sw      $t8, 0x00F8($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t9)
	jal     objlib_8029E530
	lw      $a1, 0x00F8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803386D0)
	ldc1    $f8, %lo(object_b_803386D0)($at)
	lwc1    $f4, 0x00B8($t1)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    43$
	nop
	li      $at, 0x428C0000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t2)
43$:
	lw      $t3, 0x0020($sp)
	li      $at, -0x0001
	bne     $t3, $at, 81$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lhu     $t5, 0x0162($t4)
	lhu     $t6, 0x00CA($t4)
	subu    $t8, $t5, $t6
	sh      $t8, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x2000
	lw      $a0, 0x00C8($t7)
	jal     object_b_802E55D0
	lw      $a1, 0x0160($t7)
	li      $at, 0x0001
	bne     $v0, $at, 73$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0001
	lw      $t0, 0x01AC($t9)
	bne     $t0, $at, 73$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0160($t1)
	b       77$
	sw      $t2, 0x00F8($t1)
73$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00F8($t3)
77$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
81$:
	b       83$
	nop
83$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F0DF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x0026($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803386D8)
	ldc1    $f8, %lo(object_b_803386D8)($at)
	lwc1    $f4, 0x00B8($t6)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    21$
	nop
	li      $at, 0x428C0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t7)
21$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a2, 0x0400
	lw      $a0, 0x00C8($t8)
	jal     objlib_8029E530
	lw      $a1, 0x00F8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $a0, %hi(object)
	li.u    $a1, 0xC5843000
	li.u    $a3, 0x44E2A000
	li      $t0, 0x012C
	sw      $t0, 0x0010($sp)
	li.l    $a3, 0x44E2A000
	li.l    $a1, 0xC5843000
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E52B8
	li      $a2, 0xC4A80000
	beqz    $v0, 90$
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x428C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803386E0)
	lwc1    $f16, %lo(object_b_803386E0)($at)
	lui     $at, %hi(object_b_803386E4)
	lwc1    $f4, %lo(object_b_803386E4)($at)
	lwc1    $f18, 0x00A8($t1)
	lwc1    $f6, 0x00A0($t1)
	sub.s   $f12, $f16, $f18
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	li      $at, 0x42A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t3)
	li      $at, 0x41700000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00B8($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	lw      $t9, 0x0068($t8)
	sw      $t7, 0x014C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lw      $t1, 0x0068($t0)
	swc1    $f16, 0x00B0($t1)
	li.u    $a0, 0x5064C081
	jal     object_playsound
	li.l    $a0, 0x5064C081
90$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x00C8
	lw      $t3, 0x0154($t2)
	bne     $t3, $at, 104$
	nop
	la.u    $a1, o_13003CE4
	la.l    $a1, o_13003CE4
	li      $a0, 0x00D2
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F0FA8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0009
	andi    $t7, $t6, 0x0009
	bne     $t7, $at, 16$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0004
	sw      $t8, 0x014C($t9)
	jal     objlib_802A05B4
	nop
16$:
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 39$
	nop
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x428C0000
	lui     $at, %hi(object_b_803386E8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, %lo(object_b_803386E8)($at)
	swc1    $f4, 0x00A0($t2)
	lui     $at, %hi(object_b_803386EC)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, %lo(object_b_803386EC)($at)
	swc1    $f6, 0x00A8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t4)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F105C
object_b_802F105C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 85$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_803386F0)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_803386F0)($at)
	jr      $t7
	nop
.globl L802F1094
L802F1094:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t8)
	lwc1    $f14, 0x00A4($t8)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t8)
	li      $at, 0x0001
	bne     $v0, $at, 50$
	nop
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, 50$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x006E
	sh      $v0, 0x001E($sp)
	lh      $t9, 0x001E($sp)
	beqz    $t9, 50$
	nop
	li      $at, 0x41200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	jal     pl_demo_80257640
	move    $a0, $0
50$:
	b       85$
	nop
.globl L802F112C
L802F112C:
	jal     object_b_802F0C94
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	jal     object_b_802F0BD4
	lwc1    $f12, 0x00F4($t3)
	li.u    $a0, 0x400A0001
	jal     object_levelsound
	li.l    $a0, 0x400A0001
	b       85$
	nop
.globl L802F1158
L802F1158:
	jal     object_b_802F0DF0
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	jal     object_b_802F0BD4
	lwc1    $f12, 0x00F4($t4)
	li.u    $a0, 0x400A0001
	jal     object_levelsound
	li.l    $a0, 0x400A0001
	b       85$
	nop
.globl L802F1184
L802F1184:
	jal     object_b_802F0FA8
	nop
	b       85$
	nop
.globl L802F1194
L802F1194:
	li      $at, 0x43520000
	mtc1    $at, $f12
	lui     $at, %hi(object_b_80338704)
	jal     objlib_802A390C
	lwc1    $f14, %lo(object_b_80338704)($at)
	b       85$
	nop
85$:
	jal     object_b_802F0B7C
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x1F40
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	jal     object_set_scale
	lwc1    $f12, 0x00F4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43340000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t6)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00DC($t6)
	b       104$
	nop
104$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F120C
object_b_802F120C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(file_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(file_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x0037($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x0036($sp)
	lui     $at, %hi(object_b_80338708)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_80338708)($at)
	li      $at, 0x40A00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t0)
	lui     $at, %hi(object_b_8033870C)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_b_8033870C)($at)
	swc1    $f6, 0x0170($t1)
	li      $at, 0x40000000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t2)
	lb      $t4, 0x0036($sp)
	lbu     $t3, 0x0037($sp)
	li      $t5, 0x0001
	sllv    $t6, $t5, $t4
	and     $t7, $t3, $t6
	beqz    $t7, 83$
	nop
	lui     $t8, %hi(level_index)
	lh      $t8, %lo(level_index)($t8)
	addiu   $t9, $t4, 0x0001
	beq     $t8, $t9, 83$
	nop
	lui     $a0, %hi(object)
	la.u    $a3, o_13003D4C
	li      $t0, -0x1086
	li      $t1, -0x0540
	li      $t2, 0x0715
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a3, o_13003D4C
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x00D2
	sw      $0, 0x001C($sp)
	sw      $0, 0x0020($sp)
	jal     obj_make_abs
	sw      $0, 0x0024($sp)
	lui     $at, %hi(object_b_80338710)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, %lo(object_b_80338710)($at)
	swc1    $f10, 0x00A0($t5)
	lui     $at, %hi(object_b_80338714)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, %lo(object_b_80338714)($at)
	swc1    $f16, 0x00A4($t3)
	lui     $at, %hi(object_b_80338718)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f18, %lo(object_b_80338718)($at)
	swc1    $f18, 0x00A8($t6)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t7, 0x0001
	sw      $t7, 0x014C($t4)
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F1370
object_b_802F1370:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 95$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_8033871C)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_8033871C)($at)
	jr      $t7
	nop
.globl L802F13A8
L802F13A8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x006D
	li      $a2, 0x43C80000
	li      $a3, 0x0001
	jal     object_b_802E5948
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, 27$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
27$:
	b       95$
	nop
.globl L802F13E4
L802F13E4:
	b       95$
	nop
.globl L802F13EC
L802F13EC:
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001C($sp)
	lh      $t0, 0x001C($sp)
	andi    $t1, $t0, 0x0008
	beqz    $t1, 42$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0003
	sw      $t2, 0x014C($t3)
42$:
	b       95$
	nop
.globl L802F1420
L802F1420:
	jal     object_b_802E5114
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(object_b_80338730)
	lwc1    $f6, %lo(object_b_80338730)($at)
	lwc1    $f4, 0x00A4($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    69$
	nop
	lui     $at, %hi(object_b_80338734)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, %lo(object_b_80338734)($at)
	swc1    $f8, 0x00A4($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0004
	sw      $t6, 0x014C($t7)
	li.u    $a0, 0x5065D081
	jal     object_playsound
	li.l    $a0, 0x5065D081
	jal     Na_Solution
	nop
69$:
	b       95$
	nop
.globl L802F148C
L802F148C:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x006F
	li      $a2, 0x442F0000
	li      $a3, 0x0002
	jal     object_b_802E5948
	addiu   $a0, $a0, 0x00F4
	beqz    $v0, 93$
	nop
	jal     objlib_802A37AC
	nop
	lui     $at, %hi(object_b_80338738)
	lwc1    $f12, %lo(object_b_80338738)($at)
	li      $at, 0xC4800000
	mtc1    $at, $f14
	li.u    $a2, 0x44EC4000
	jal     object_b_802F2B88
	li.l    $a2, 0x44EC4000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
93$:
	b       95$
	nop
95$:
	li      $at, 0x43340000
	mtc1    $at, $f12
	li      $at, 0x43160000
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	b       103$
	nop
103$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F151C
object_b_802F151C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0320
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, 20$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x01AC($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x01AC($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sh      $0, 0x0074($t1)
20$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lh      $t4, 0x0074($t3)
	bnez    $t4, 29$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
29$:
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F15A8
object_b_802F15A8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0164($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A4($t7)
	swc1    $f6, 0x0168($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x00A8($t8)
	swc1    $f8, 0x016C($t8)
	li      $at, 0x41000000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x00E4($t9)
	lui     $at, %hi(object_b_8033873C)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_8033873C)($at)
	swc1    $f16, 0x0170($t0)
	li      $at, 0x40000000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0174($t1)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F162C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E5114
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	andi    $t7, $t6, 0x0009
	bne     $t7, $at, 24$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f6, $f4
	nop
	bc1f    24$
	nop
	li.u    $a0, 0x30480081
	jal     object_playsound
	li.l    $a0, 0x30480081
	jal     objlib_802A37AC
	nop
24$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_80338740)
	ldc1    $f16, %lo(object_b_80338740)($at)
	lwc1    $f8, 0x00B8($t9)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    40$
	nop
	li      $at, 0x428C0000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B8($t0)
40$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC47A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t1)
	c.lt.s  $f4, $f6
	nop
	bc1f    52$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F1714
object_b_802F1714:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	li      $at, 0x43870000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00DC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $s0, 0x014C($t7)
	beqz    $s0, 23$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	b       46$
	nop
23$:
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
	b       46$
	nop
35$:
	jal     object_b_802F162C
	nop
	li      $at, 0x3FC00000
	mtc1    $at, $f12
	jal     object_b_802F0BD4
	nop
	li.u    $a0, 0x400A0001
	jal     object_levelsound
	li.l    $a0, 0x400A0001
	b       46$
	nop
46$:
	jal     object_b_802F0B7C
	nop
	b       50$
	nop
50$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F17F0
object_b_802F17F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0100
	bnez    $at, 11$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
11$:
	jal     object_b_802E58B4
	li      $a0, 0x0004
	beqz    $v0, 24$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x05DC
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	beqz    $v0, 26$
	nop
24$:
	b       85$
	nop
26$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t0)
	lwc1    $f14, 0x00A4($t0)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t0)
	beqz    $v0, 60$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	andi    $t3, $t2, 0x003F
	bnez    $t3, 58$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003D74
	la.l    $a2, o_13003D74
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0039
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x45800000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	mul.s   $f6, $f0, $f4
	trunc.w.s $f8, $f6
	mfc1    $t5, $f8
	nop
	sw      $t5, 0x00C8($t6)
58$:
	b       83$
	nop
60$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	andi    $t9, $t8, 0x007F
	bnez    $t9, 83$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13003D74
	la.l    $a2, o_13003D74
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0039
	sw      $v0, 0x001C($sp)
	jal     randf
	nop
	li      $at, 0x45800000
	mtc1    $at, $f10
	lw      $t2, 0x001C($sp)
	mul.s   $f16, $f0, $f10
	trunc.w.s $f18, $f16
	mfc1    $t1, $f18
	nop
	sw      $t1, 0x00C8($t2)
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F1954:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332774
	la.l    $a1, object_b_80332774
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 21$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
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

object_b_802F19C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
	bnez    $at, 12$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x012C
12$:
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F1A10:
	lui     $t6, %hi(object_b_80361450)
	lw      $t6, %lo(object_b_80361450)($t6)
	bnez    $t6, 6$
	nop
	jr      $ra
	nop
6$:
	lui     $t7, %hi(object_b_80361450)
	lw      $t7, %lo(object_b_80361450)($t7)
	lh      $t8, 0x0000($t7)
	addiu   $t9, $t8, -0x000A
	sltiu   $at, $t9, 0x0024
	beqz    $at, L802F1BA8
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(object_b_80338748)
	addu    $at, $at, $t9
	lw      $t9, %lo(object_b_80338748)($at)
	jr      $t9
	nop
.globl L802F1A5C
L802F1A5C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
	b       L802F1BA8
	nop
.globl L802F1A70
L802F1A70:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x000A
	sw      $t1, 0x014C($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	b       L802F1BA8
	nop
.globl L802F1A9C
L802F1A9C:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x000B
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object_b_80361450)
	lw      $t6, %lo(object_b_80361450)($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t7, 0x0002($t6)
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 8
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object_b_80361450)
	lw      $t1, %lo(object_b_80361450)($t1)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t2, 0x0002($t1)
	andi    $t3, $t2, 0xFF00
	sra     $t4, $t3, 8
	subu    $t5, $0, $t4
	sll     $t6, $t5, 1
	addiu   $t7, $t6, 0x0008
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x00B8($t8)
	b       L802F1BA8
	nop
.globl L802F1B0C
L802F1B0C:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x000C
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	b       L802F1BA8
	nop
.globl L802F1B38
L802F1B38:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x000D
	sw      $t2, 0x014C($t3)
	lui     $t4, %hi(object_b_80361450)
	lw      $t4, %lo(object_b_80361450)($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t5, 0x0002($t4)
	andi    $t6, $t5, 0x00FF
	sll     $t7, $t6, 8
	sw      $t7, 0x00C8($t8)
	lui     $t9, %hi(object_b_80361450)
	lw      $t9, %lo(object_b_80361450)($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t0, 0x0002($t9)
	andi    $t1, $t0, 0xFF00
	sra     $t2, $t1, 8
	subu    $t3, $0, $t2
	sll     $t4, $t3, 1
	addiu   $t5, $t4, 0x0008
	mtc1    $t5, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00B8($t6)
	b       L802F1BA8
	nop
.globl L802F1BA8
L802F1BA8:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1BB8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x000A
	lw      $s0, 0x014C($t6)
	beq     $s0, $at, 20$
	nop
	li      $at, 0x000B
	beq     $s0, $at, 39$
	nop
	li      $at, 0x000C
	beq     $s0, $at, 58$
	nop
	li      $at, 0x000D
	beq     $s0, $at, 76$
	nop
	b       98$
	nop
20$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x000A
	beqz    $at, 37$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x2000
	sw      $t0, 0x00D0($t1)
37$:
	b       98$
	nop
39$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x000A
	beqz    $at, 52$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0xC0400000
	mtc1    $at, $f16
	lwc1    $f10, 0x00DC($t4)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t4)
52$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x2000
	sw      $t5, 0x00D0($t6)
	b       98$
	nop
58$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xBF800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00DC($t7)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00DC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, 74$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
74$:
	b       98$
	nop
76$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0xC0C00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00DC($t1)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00DC($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0154($t2)
	slti    $at, $t3, 0x0015
	bnez    $at, 92$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
92$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x2000
	sw      $t5, 0x00D0($t6)
	b       98$
	nop
98$:
	jal     object_b_802F1A10
	nop
	b       102$
	nop
102$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F1D64
object_b_802F1D64:
	lui     $at, %hi(object_b_803387D8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803387D8)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803387DC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803387DC)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_803387E0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_803387E0)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1DC0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00F8($t6)
	addiu   $t8, $t7, 0x2000
	sw      $t8, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_cos)
	lhu     $t0, 0x00FA($t9)
	sra     $t1, $t0, 4
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	lwc1    $f4, %lo(math_cos)($at)
	lui     $at, %hi(object_b_803387E8)
	ldc1    $f8, %lo(object_b_803387E8)($at)
	cvt.d.s $f6, $f4
	lui     $at, %hi(object_b_803387F0)
	mul.d   $f10, $f6, $f8
	ldc1    $f16, %lo(object_b_803387F0)($at)
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0030($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x00010000
	lw      $t4, 0x00F8($t3)
	bne     $t4, $at, 35$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00F8($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x00F4($t8)
35$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F1E5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 42$
	nop
	jal     object_b_802F1A10
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f10
	lwc1    $f6, 0x00B0($t2)
	c.eq.s  $f6, $f10
	nop
	bc1t    42$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x00F4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t5)
42$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 50$
	nop
	jal     object_b_802F1DC0
	nop
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F1F3C
object_b_802F1F3C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 13$
	nop
	b       9$
	nop
9$:
	jal     object_b_802F1E5C
	nop
	b       19$
	nop
13$:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       19$
	nop
19$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, 27$
	nop
	jal     objlib_802A05D4
	nop
27$:
	jal     object_b_802F19C8
	nop
	jal     object_b_802F1954
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F1FD0
object_b_802F1FD0:
	lui     $at, %hi(object_b_803387F8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_803387F8)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_803387FC)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_803387FC)($at)
	swc1    $f6, 0x0170($t7)
	li      $at, 0x3FC00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F2030:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0001
	beqz    $t1, 25$
	nop
	jal     object_b_802F1A10
	nop
25$:
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F20AC
object_b_802F20AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 13$
	nop
	b       9$
	nop
9$:
	jal     object_b_802F2030
	nop
	b       19$
	nop
13$:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       19$
	nop
19$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0015
	bnez    $at, 27$
	nop
	jal     objlib_802A05D4
	nop
27$:
	jal     object_b_802F1954
	nop
	jal     object_b_802F19C8
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2140
object_b_802F2140:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(object_b_80338800)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_80338800)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338804)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338804)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338808)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338808)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x00FF
	sw      $t9, 0x017C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f10, 0x00A0($t1)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f6, 0x00A8($t1)
	trunc.w.s $f16, $f10
	trunc.w.s $f4, $f18
	mfc1    $a0, $f16
	trunc.w.s $f8, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f8
	jal     save_set_cap
	nop
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F21E0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     save_clr_flag
	li      $a0, 0x00010000
	lui     $s0, %hi(course_index)
	lh      $s0, %lo(course_index)($s0)
	li      $at, 0x0008
	beq     $s0, $at, 18$
	nop
	li      $at, 0x000A
	beq     $s0, $at, 22$
	nop
	li      $at, 0x000C
	beq     $s0, $at, 26$
	nop
	b       30$
	nop
18$:
	jal     save_set_flag
	li      $a0, 0x00020000
	b       34$
	nop
22$:
	jal     save_set_flag
	li      $a0, 0x00080000
	b       34$
	nop
26$:
	jal     save_set_flag
	li      $a0, 0x00040000
	b       34$
	nop
30$:
	jal     save_set_flag
	li      $a0, 0x00020000
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

object_b_802F2284:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x43000000
	mtc1    $at, $f6
	lw      $t7, 0x00D4($t6)
	lwc1    $f4, 0x00B8($t6)
	mtc1    $t7, $f10
	mul.s   $f8, $f4, $f6
	cvt.s.w $f16, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t9, $f4
	nop
	sw      $t9, 0x00D4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x42A00000
	mtc1    $at, $f10
	lw      $t1, 0x00D0($t0)
	lwc1    $f6, 0x00B8($t0)
	mtc1    $t1, $f8
	mul.s   $f16, $f6, $f10
	cvt.s.w $f18, $f8
	add.s   $f4, $f18, $f16
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sw      $t3, 0x00D0($t0)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t4, 0x001E($sp)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 59$
	nop
	jal     object_b_802F1A10
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	lwc1    $f10, 0x00B0($t7)
	c.eq.s  $f10, $f8
	nop
	bc1t    59$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B0($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
59$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x0001
	lw      $t3, 0x00F4($t2)
	bne     $t3, $at, 67$
	nop
	jal     object_b_802F1DC0
	nop
67$:
	b       69$
	nop
69$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F23A8
object_b_802F23A8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	bnez    $t7, 13$
	nop
	b       9$
	nop
9$:
	jal     object_b_802F2284
	nop
	b       19$
	nop
13$:
	jal     object_b_802E4E90
	nop
	jal     object_b_802F1BB8
	nop
	b       19$
	nop
19$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00B8($t8)
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	beqz    $t0, 40$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00A0($t1)
	lwc1    $f16, 0x00A4($t1)
	lwc1    $f4, 0x00A8($t1)
	trunc.w.s $f10, $f8
	trunc.w.s $f18, $f16
	mfc1    $a0, $f10
	trunc.w.s $f6, $f4
	mfc1    $a1, $f18
	mfc1    $a2, $f6
	jal     save_set_cap
	nop
40$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0074($t5)
	bnez    $t6, 47$
	nop
	jal     object_b_802F21E0
	nop
47$:
	jal     object_b_802F1954
	nop
	li      $at, 0x0001
	bne     $v0, $at, 54$
	nop
	jal     save_clr_flag
	li      $a0, 0x00010000
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2498
object_b_802F2498:
	lui     $at, %hi(object_b_8033880C)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_8033880C)($at)
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338810)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338810)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338814)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338814)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0096
	sw      $t9, 0x017C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F24F4
object_b_802F24F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0188($t6)
	sra     $t8, $t7, 24
	andi    $t9, $t8, 0x00FF
	sb      $t9, 0x001F($sp)
	lui     $a0, %hi(file_index)
	lui     $a1, %hi(course_index)
	lh      $a1, %lo(course_index)($a1)
	lh      $a0, %lo(file_index)($a0)
	addiu   $a1, $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001E($sp)
	lb      $t1, 0x001F($sp)
	lbu     $t0, 0x001E($sp)
	li      $t2, 0x0001
	sllv    $t3, $t2, $t1
	and     $t4, $t0, $t3
	beqz    $t4, 30$
	nop
	lui     $t5, %hi(shape_table)
	lw      $t5, %lo(shape_table)($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x01E4($t5)
	b       36$
	sw      $t6, 0x0014($t7)
30$:
	lui     $t8, %hi(shape_table)
	lw      $t8, %lo(shape_table)($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t9, 0x01E8($t8)
	sw      $t9, 0x0014($t2)
36$:
	lui     $a0, %hi(object)
	la.u    $a1, object_b_80332784
	la.l    $a1, object_b_80332784
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F25B0
object_b_802F25B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x0800
	sw      $t8, 0x00D4($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0134($t9)
	andi    $t1, $t0, 0x8000
	beqz    $t1, 19$
	nop
	lui     $a0, %hi(object)
	jal     obj_destroy
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2614
object_b_802F2614:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x016C($t6)
	lwc1    $f6, 0x00A8($t6)
	lwc1    $f8, 0x0164($t6)
	lwc1    $f10, 0x00A0($t6)
	sub.s   $f12, $f4, $f6
	jal     ATAN2
	sub.s   $f14, $f8, $f10
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x016C($t8)
	lwc1    $f18, 0x00A8($t8)
	lwc1    $f8, 0x0164($t8)
	lwc1    $f10, 0x00A0($t8)
	sub.s   $f4, $f16, $f18
	sub.s   $f16, $f8, $f10
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f18, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f6, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	swc1    $f0, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f4, 0x0168($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f10, $f4, $f8
	div.s   $f6, $f10, $f16
	swc1    $f6, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t1)
	div.s   $f8, $f18, $f4
	swc1    $f8, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00A4($t2)
	swc1    $f10, 0x00FC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0144($t3)
	beqz    $t4, 60$
	nop
	lui     $t5, %hi(course_index)
	lh      $t5, %lo(course_index)($t5)
	li      $at, 0x0005
	bne     $t5, $at, 66$
	nop
60$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
	b       70$
	nop
66$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00B0
70$:
	jal     objlib_802A4750
	li      $a0, 0x000A
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0074($t6)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t6)
	jal     objlib_802A05B4
	nop
	b       81$
	nop
81$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F2768
object_b_802F2768:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 36$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 98$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 163$
	nop
	b       199$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00D4($t7)
	addiu   $t9, $t8, 0x1000
	sw      $t9, 0x00D4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0015
	bnez    $at, 34$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
34$:
	b       199$
	nop
36$:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00FC($t4)
	lwc1    $f6, 0x00B0($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00FC($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x001E
	lw      $t6, 0x0154($t5)
	lwc1    $f4, 0x00FC($t5)
	sll     $t8, $t6, 15
	div     $0, $t8, $at
	mflo    $t9
	andi    $t7, $t9, 0xFFFF
	sra     $t0, $t7, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43C80000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t5)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D4($t2)
	addiu   $t4, $t3, 0x1000
	sw      $t4, 0x00D4($t2)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	li.u    $a0, 0x40140011
	jal     object_levelsound
	li.l    $a0, 0x40140011
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x001E
	lw      $t8, 0x0154($t6)
	bne     $t8, $at, 96$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00B8($t0)
	jal     Na_StarAppear
	li      $a0, 0x0001
96$:
	b       199$
	nop
98$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t5, 0x0154($t1)
	slti    $at, $t5, 0x0014
	beqz    $at, 114$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0014
	lw      $t4, 0x0154($t3)
	subu    $t6, $t2, $t4
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	b       120$
	swc1    $f16, 0x00B0($t3)
114$:
	li      $at, 0xC1200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00B0($t8)
120$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	lw      $t7, 0x00D4($t9)
	sll     $t1, $t0, 4
	subu    $t5, $t7, $t1
	addiu   $t2, $t5, 0x1000
	sw      $t2, 0x00D4($t9)
	li.u    $a0, 0x40140011
	jal     object_levelsound
	li.l    $a0, 0x40140011
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A4($t4)
	lwc1    $f6, 0x0168($t4)
	c.lt.s  $f4, $f6
	nop
	bc1f    161$
	nop
	li.u    $a0, 0x3057FF91
	jal     object_playsound
	li.l    $a0, 0x3057FF91
	jal     objlib_802A05D4
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f8, 0x0168($t6)
	swc1    $f8, 0x00A4($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t3, 0x0003
	sw      $t3, 0x014C($t8)
161$:
	b       199$
	nop
163$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t7, 0x00D4($t0)
	addiu   $t1, $t7, 0x0800
	sw      $t1, 0x00D4($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0014
	lw      $t2, 0x0154($t5)
	bne     $t2, $at, 185$
	nop
	li      $t9, 0x0001
	lui     $at, %hi(camera_8033CBC8)
	sw      $t9, %lo(camera_8033CBC8)($at)
	jal     objlib_802A4774
	li      $a0, 0x000A
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0021
	lh      $t6, 0x0074($t4)
	and     $t3, $t6, $at
	sh      $t3, 0x0074($t4)
185$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0134($t8)
	andi    $t1, $t7, 0x8000
	beqz    $t1, 197$
	nop
	lui     $a0, %hi(object)
	jal     obj_destroy
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
197$:
	b       199$
	nop
199$:
	b       201$
	nop
201$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F2AA0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $a3, o_13003E64
	la.l    $a3, o_13003E64
	lwc1    $f4, 0x00A0($t6)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t6
	mfc1    $t8, $f6
	nop
	sw      $t8, 0x0010($sp)
	lwc1    $f8, 0x00A4($t6)
	trunc.w.s $f10, $f8
	mfc1    $t0, $f10
	nop
	sw      $t0, 0x0014($sp)
	lwc1    $f16, 0x00A8($t6)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t2, $f18
	jal     obj_make_abs
	sw      $t2, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0030($sp)
	lw      $t4, 0x0188($t3)
	sw      $t4, 0x0188($t5)
	lwc1    $f4, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	swc1    $f4, 0x0164($t7)
	lwc1    $f6, 0x0038($sp)
	lw      $t8, 0x0030($sp)
	swc1    $f6, 0x0168($t8)
	lwc1    $f8, 0x003C($sp)
	lw      $t9, 0x0030($sp)
	swc1    $f8, 0x016C($t9)
	lw      $t0, 0x0030($sp)
	sw      $0, 0x00D0($t0)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x00D8($t6)
	b       54$
	lw      $v0, 0x0030($sp)
	b       54$
	nop
54$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802F2B88
object_b_802F2B88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	sw      $0, 0x0144($t6)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F2BD4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0144($t7)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F2C24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     object_b_802F2AA0
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0144($t7)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0190($t8)
	ori     $t0, $t9, 0x0400
	sw      $t0, 0x0190($t8)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F2C84
object_b_802F2C84:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(course_index)
	lh      $t6, %lo(course_index)($t6)
	li      $at, 0x0003
	beq     $t6, $at, 13$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_1300556C
	la.l    $a2, o_1300556C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0079
13$:
	la.u    $a0, o_redcoin
	jal     objlib_8029FBDC
	la.l    $a0, o_redcoin
	sh      $v0, 0x0036($sp)
	lh      $t7, 0x0036($sp)
	bnez    $t7, 54$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	la.u    $a3, o_13003E3C
	la.l    $a3, o_13003E3C
	lwc1    $f4, 0x00A0($t8)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t8
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x0010($sp)
	lwc1    $f8, 0x00A4($t8)
	trunc.w.s $f10, $f8
	mfc1    $t2, $f10
	nop
	sw      $t2, 0x0014($sp)
	lwc1    $f16, 0x00A8($t8)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t4, $f18
	jal     obj_make_abs
	sw      $t4, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t7, 0x0030($sp)
	lw      $t6, 0x0188($t5)
	sw      $t6, 0x0188($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
54$:
	lh      $t0, 0x0036($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t1, 0x0008
	subu    $t2, $t1, $t0
	sw      $t2, 0x00F4($t8)
	b       62$
	nop
62$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F2D8C
object_b_802F2D8C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(redcoin_count)
	lw      $t7, 0x00F4($t6)
	sb      $t7, %lo(redcoin_count)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	b       49$
	nop
18$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0008
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, 28$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
28$:
	b       49$
	nop
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, 47$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802F2BD4
	lw      $a2, 0x00A8($t5)
	jal     objlib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
47$:
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

.globl redcoin_init
redcoin_init:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	la.u    $a0, o_13003E8C
	jal     objlib_8029F95C
	la.l    $a0, o_13003E8C
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, 22$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x001C($sp)
	b       37$
	sw      $t8, 0x0068($t9)
22$:
	la.u    $a0, o_13003EE4
	jal     objlib_8029F95C
	la.l    $a0, o_13003EE4
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	beqz    $t0, 34$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x001C($sp)
	b       37$
	sw      $t1, 0x0068($t2)
34$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0068($t3)
37$:
	lui     $a0, %hi(object)
	la.u    $a1, redcoin_hit
	la.l    $a1, redcoin_hit
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl redcoin_proc
redcoin_proc:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 52$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	beqz    $t0, 47$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0068($t1)
	lw      $t3, 0x00F4($t2)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x00F4($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0008
	lw      $t6, 0x0068($t5)
	lw      $t7, 0x00F4($t6)
	beq     $t7, $at, 34$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	move    $a1, $0
	move    $a2, $0
	lw      $t9, 0x0068($t8)
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x00F4($t9)
34$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li.u    $at, 0x78289081
	li.l    $at, 0x78289081
	lw      $t1, 0x0068($t0)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	lbu     $a0, 0x00F7($t1)
	addiu   $a0, $a0, -0x0001
	sll     $t3, $a0, 16
	move    $a0, $t3
	jal     Na_SePlay
	addu    $a0, $a0, $at
47$:
	jal     object_b_802E5EA4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F3014
object_b_802F3014:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	la.u    $a0, o_13003F1C
	jal     objlib_8029FBDC
	la.l    $a0, o_13003F1C
	sh      $v0, 0x0036($sp)
	lh      $t6, 0x0036($sp)
	bnez    $t6, 43$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $a3, o_13003E3C
	la.l    $a3, o_13003E3C
	lwc1    $f4, 0x00A0($t7)
	move    $a1, $0
	li      $a2, 0x007A
	trunc.w.s $f6, $f4
	move    $a0, $t7
	mfc1    $t9, $f6
	nop
	sw      $t9, 0x0010($sp)
	lwc1    $f8, 0x00A4($t7)
	trunc.w.s $f10, $f8
	mfc1    $t1, $f10
	nop
	sw      $t1, 0x0014($sp)
	lwc1    $f16, 0x00A8($t7)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f18, $f16
	sw      $0, 0x001C($sp)
	mfc1    $t3, $f18
	jal     obj_make_abs
	sw      $t3, 0x0018($sp)
	sw      $v0, 0x0030($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t6, 0x0030($sp)
	lw      $t5, 0x0188($t4)
	sw      $t5, 0x0188($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
43$:
	lh      $t9, 0x0036($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t0, 0x0005
	subu    $t1, $t0, $t9
	sw      $t1, 0x00F4($t7)
	b       51$
	nop
51$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F30F0
object_b_802F30F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 25$
	nop
	b       44$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 23$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
23$:
	b       44$
	nop
25$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	slti    $at, $t2, 0x0003
	bnez    $at, 42$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802F2BD4
	lw      $a2, 0x00A8($t3)
	jal     objlib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sh      $0, 0x0074($t4)
42$:
	b       44$
	nop
44$:
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F31BC
object_b_802F31BC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 46$
	nop
	la.u    $a0, o_13003EFC
	jal     objlib_8029F95C
	la.l    $a0, o_13003EFC
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 43$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
	lw      $t0, 0x001C($sp)
	li      $at, 0x0005
	lw      $t1, 0x00F4($t0)
	beq     $t1, $at, 32$
	nop
	lw      $t2, 0x001C($sp)
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x00F4($t2)
32$:
	lw      $t3, 0x001C($sp)
	li.u    $at, 0x70302081
	li.l    $at, 0x70302081
	lbu     $a0, 0x00F7($t3)
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	addiu   $a0, $a0, -0x0001
	sll     $t4, $a0, 16
	move    $a0, $t4
	jal     Na_SePlay
	addu    $a0, $a0, $at
43$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
46$:
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F328C
object_b_802F328C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(redcoin_count)
	lw      $t7, 0x00F4($t6)
	sb      $t7, %lo(redcoin_count)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $s0, 0x014C($t8)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	b       49$
	nop
18$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0008
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, 28$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
28$:
	b       49$
	nop
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0154($t3)
	slti    $at, $t4, 0x0003
	bnez    $at, 47$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f12, 0x00A0($t5)
	lwc1    $f14, 0x00A4($t5)
	jal     object_b_802F2C24
	lw      $a2, 0x00A8($t5)
	jal     objlib_802A37AC
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0074($t6)
47$:
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

.globl object_b_802F336C
object_b_802F336C:
	lui     $at, %hi(object_b_80338818)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, %lo(object_b_80338818)($at)
	swc1    $f4, 0x00F8($t6)
	lui     $at, %hi(object_b_8033881C)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_8033881C)($at)
	swc1    $f6, 0x00FC($t7)
	lui     $at, %hi(object_b_80338820)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338820)($at)
	swc1    $f8, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x226A
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F341C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 74$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t1, 0x00C8($t0)
	lwc1    $f6, 0x00A8($t0)
	lwc1    $f4, 0x0028($t9)
	subu    $t2, $0, $t1
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sub.s   $f8, $f4, $f6
	sll     $t5, $t4, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t5
	lwc1    $f10, %lo(math_cos)($at)
	lwc1    $f4, 0x00A0($t0)
	lwc1    $f18, 0x0020($t9)
	lui     $at, %hi(math_sin)
	mul.s   $f16, $f8, $f10
	sub.s   $f6, $f18, $f4
	addu    $at, $at, $t5
	lwc1    $f8, %lo(math_sin)($at)
	mul.s   $f10, $f8, $f6
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f4
	nop
	bc1f    47$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0114($t6)
	addiu   $t8, $t7, 0x0010
	b       52$
	sw      $t8, 0x0114($t6)
47$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0114($t1)
	addiu   $t3, $t2, -0x0010
	sw      $t3, 0x0114($t1)
52$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	slti    $at, $t9, 0x0201
	bnez    $at, 62$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t0, 0x0200
	sw      $t0, 0x0114($t5)
62$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	slti    $at, $t8, -0x0200
	beqz    $at, 72$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t6, -0x0200
	sw      $t6, 0x0114($t2)
72$:
	b       156$
	nop
74$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t1, 0x0064
	lw      $a1, 0x0164($t3)
	lw      $a2, 0x0168($t3)
	lw      $a3, 0x016C($t3)
	sw      $t1, 0x0010($sp)
	jal     object_b_802E52B8
	move    $a0, $t3
	beqz    $v0, 120$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	beqz    $t9, 118$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t5, 0x0114($t0)
	blez    $t5, 101$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	addiu   $t6, $t8, -0x0010
	b       106$
	sw      $t6, 0x0114($t7)
101$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0114($t2)
	addiu   $t1, $t3, 0x0010
	sw      $t1, 0x0114($t2)
106$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	slti    $at, $t9, 0x0010
	beqz    $at, 118$
	nop
	slti    $at, $t9, -0x000F
	bnez    $at, 118$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
118$:
	b       156$
	nop
120$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0100
	lw      $t8, 0x0114($t5)
	beq     $t8, $at, 156$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0114($t6)
	slti    $at, $t7, 0x0101
	bnez    $at, 138$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t1, 0x0114($t3)
	addiu   $t2, $t1, -0x0010
	b       143$
	sw      $t2, 0x0114($t3)
138$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t9, 0x0114($t4)
	addiu   $t0, $t9, 0x0010
	sw      $t0, 0x0114($t4)
143$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t8, 0x0114($t5)
	slti    $at, $t8, 0x0110
	beqz    $at, 156$
	nop
	slti    $at, $t8, 0x00F1
	bnez    $at, 156$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x0114($t7)
156$:
	b       158$
	nop
158$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F36A4
object_b_802F36A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0018($sp)
	jal     object_b_802F341C
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0114($t8)
	bgez    $t9, 19$
	sra     $t0, $t9, 6
	addiu   $at, $t9, 0x003F
	sra     $t0, $at, 6
19$:
	mtc1    $t0, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00B8($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00CA($t1)
	lwc1    $f18, 0x00B8($t1)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00AC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00CA($t5)
	lwc1    $f8, 0x00B8($t5)
	sra     $t7, $t6, 4
	sll     $t9, $t7, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(math_cos)($at)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B4($t5)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00A0($t0)
	lwc1    $f18, 0x00AC($t0)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t0)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A8($t8)
	lwc1    $f8, 0x00B4($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A8($t2)
	lwc1    $f4, 0x00FC($t2)
	lwc1    $f10, 0x00A0($t2)
	lwc1    $f16, 0x00F4($t2)
	sub.s   $f6, $f18, $f4
	lwc1    $f18, 0x00F8($t2)
	sub.s   $f4, $f10, $f18
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f10, $f8, $f6
	c.lt.s  $f16, $f10
	nop
	bc1f    97$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x001C($sp)
	swc1    $f4, 0x00A0($t4)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x0018($sp)
	swc1    $f8, 0x00A8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B4($t7)
97$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t5, 0x00D0($t9)
	lw      $t0, 0x0114($t9)
	addu    $t8, $t5, $t0
	sw      $t8, 0x00D0($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	andi    $t4, $t3, 0x1FFF
	mtc1    $t4, $f10
	jal     object_b_802E3F68
	cvt.s.w $f12, $f10
	li      $at, 0x44040000
	mtc1    $at, $f18
	nop
	c.lt.s  $f0, $f18
	nop
	bc1f    125$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t6, 0x0114($t1)
	beqz    $t6, 125$
	nop
	li.u    $a0, 0x32250081
	jal     object_playsound
	li.l    $a0, 0x32250081
125$:
	b       127$
	nop
127$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F38B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x00F4($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00F4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0114($t7)
	lwc1    $f18, 0x00F4($t7)
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	add.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x0114($t7)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	lw      $t3, 0x0114($t1)
	subu    $t4, $t2, $t3
	sw      $t4, 0x00D0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, 59$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x4000
	sw      $t8, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0114($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F4($t7)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
	li.u    $a0, 0x30440081
	jal     object_playsound
	li.l    $a0, 0x30440081
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a0, 0x0003
	lw      $a1, 0x00A0($t4)
	lw      $a2, 0x00A4($t4)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t4)
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F39B4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0090
	sw      $t6, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00D0($t8)
	lw      $t0, 0x0114($t8)
	addu    $t1, $t9, $t0
	sw      $t1, 0x00D0($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	blez    $t3, 18$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
18$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x00C8
	lw      $t6, 0x0154($t5)
	bne     $t6, $at, 27$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x014C($t7)
27$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F3A30
object_b_802F3A30:
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
	beq     $s0, $at, 41$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 79$
	nop
	b       83$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 35$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
	li.u    $a0, 0x30430081
	jal     object_playsound
	li.l    $a0, 0x30430081
35$:
	b       83$
	nop
37$:
	jal     object_b_802F38B0
	nop
	b       83$
	nop
41$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0154($t0)
	slti    $at, $t1, 0x0008
	beqz    $at, 64$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	lw      $t3, 0x0154($t2)
	lwc1    $f10, 0x0168($t2)
	sll     $t4, $t3, 12
	andi    $t5, $t4, 0xFFFF
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t2)
64$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0032
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 77$
	nop
	li.u    $a0, 0x30450081
	jal     object_playsound
	li.l    $a0, 0x30450081
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0003
	sw      $t0, 0x014C($t1)
77$:
	b       83$
	nop
79$:
	jal     object_b_802F39B4
	nop
	b       83$
	nop
83$:
	b       85$
	nop
85$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F3B98
object_b_802F3B98:
	li      $at, 0x45A00000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00F8($t6)
	li      $at, 0x45BC0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00FC($t7)
	li      $at, 0x49800000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x3FFF
	sw      $t9, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00B8($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00AC($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00B4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x00D0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0114($t5)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F3C54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 23$
	nop
	li.u    $a0, 0x3058FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x3058FF81
	lui     $t6, %hi(mario)
	lw      $t6, %lo(mario)($t6)
	lb      $t7, 0x00AD($t6)
	addiu   $t8, $t7, 0x0001
	sb      $t8, 0x00AD($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
23$:
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F3CC8
object_b_802F3CC8:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x4000
	sw      $t6, 0x00C4($t7)
	li      $at, 0x40400000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t8)
	li      $at, 0x3F800000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0170($t9)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0174($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F3D30
object_b_802F3D30:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802F3CC8
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0144($t6)
	bne     $t7, $at, 20$
	nop
	jal     save_get_flag
	nop
	andi    $t8, $v0, 0x0050
	bnez    $t8, 18$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
18$:
	b       34$
	nop
20$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0002
	lw      $t1, 0x0144($t0)
	bne     $t1, $at, 34$
	nop
	jal     save_get_flag
	nop
	andi    $t2, $v0, 0x00A0
	bnez    $t2, 34$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
34$:
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F3DD0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x0005
	beqz    $at, 12$
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	b       50$
	swc1    $f4, 0x00B0($t8)
12$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, -0x1000
	sw      $t9, 0x0114($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00C4($t1)
	lw      $t3, 0x0114($t1)
	addu    $t4, $t2, $t3
	sw      $t4, 0x00C4($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00C6($t5)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	li      $at, 0x40000000
	mtc1    $at, $f16
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(math_sin)
	lhu     $t0, 0x00C6($t9)
	sra     $t2, $t0, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f8
	neg.s   $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t9)
50$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F3EA8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x42F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	add.s   $f18, $f10, $f16
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lui     $t0, %hi(mario_obj)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(mario_obj)($t0)
	lwc1    $f10, 0x00A8($t1)
	lwc1    $f8, 0x0028($t0)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f6, 0x002C($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f8, $f6, $f6
	jal     sqrtf
	add.s   $f12, $f4, $f8
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	lwc1    $f14, 0x0030($sp)
	sh      $v0, 0x002A($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	lw      $a0, %lo(object)($a0)
	li      $a2, 0x0010
	jal     objlib_8029E714
	li      $a3, 0x1000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $a1, 0x002A($sp)
	li      $a2, 0x1000
	jal     objlib_8029E530
	lw      $a0, 0x00C4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $v0, 0x00C4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lui     $at, %hi(math_sin)
	lhu     $t5, 0x00C6($t4)
	sra     $t6, $t5, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_cos)
	lhu     $t9, 0x00C6($t8)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_cos)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	nop
	mul.s   $f8, $f6, $f4
	swc1    $f8, 0x00B8($t8)
	jal     object_b_802F3C54
	nop
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F401C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li      $at, 0x41000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t8, 0x0160($t7)
	addu    $t9, $t8, $at
	sw      $t9, 0x00C8($t7)
	jal     object_b_802F3C54
	nop
	lh      $t0, 0x001A($sp)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 25$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0002
	sw      $t2, 0x014C($t3)
25$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x0BB8
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	bnez    $v0, 38$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $t5, 0x0002
	sw      $t5, 0x014C($t6)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F40CC
object_b_802F40CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 62$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 76$
	nop
	b       84$
	nop
18$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0012
	bnez    $at, 30$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
30$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 40$
	nop
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8063D081
40$:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 60$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x40000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
60$:
	b       84$
	nop
62$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x012D
	bnez    $at, 72$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	sw      $t8, 0x014C($t9)
72$:
	jal     object_b_802F3C54
	nop
	b       84$
	nop
76$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       84$
	nop
84$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       90$
	nop
90$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4248
object_b_802F4248:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 73$
	nop
	b       81$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x0012
	bnez    $at, 31$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
31$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 41$
	nop
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8063D081
41$:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 61$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t5)
61$:
	b       81$
	nop
63$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	b       81$
	nop
73$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       81$
	nop
81$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       87$
	nop
87$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F43B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lh      $t6, 0x001E($sp)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 21$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x41C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f10
	b       30$
	swc1    $f10, 0x00B0($t9)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(object_b_80338828)
	ldc1    $f4, %lo(object_b_80338828)($at)
	lwc1    $f16, 0x00B8($t0)
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x00B8($t0)
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x40440000
	mtc1    $at, $f19
	lwc1    $f10, 0x00B8($t1)
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	c.lt.d  $f18, $f16
	nop
	bc1f    47$
	nop
	li      $at, 0x42200000
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t2)
47$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $a3, 0x1388
	lwc1    $f12, 0x00A0($t3)
	lwc1    $f14, 0x00A4($t3)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t3)
	bnez    $v0, 60$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
60$:
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F44C0
object_b_802F44C0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 39$
	nop
	b       47$
	nop
16$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 33$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x014C($t9)
33$:
	b       47$
	nop
35$:
	jal     object_b_802F43B8
	nop
	b       47$
	nop
39$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	jal     object_b_802F3C54
	nop
	b       47$
	nop
47$:
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F45B8
object_b_802F45B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F45F0
object_b_802F45F0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 50$
	nop
	b       61$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x03E8
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 35$
	nop
	li      $at, 0x42200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
35$:
	b       61$
	nop
37$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	b       61$
	nop
50$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	b       61$
	nop
61$:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5360
	li      $a1, 0x0BB8
	b       67$
	nop
67$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4710
object_b_802F4710:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 53$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 66$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 77$
	nop
	b       114$
	nop
19$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0010
	sh      $t9, 0x0002($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	lw      $t2, 0x00F4($t0)
	bne     $t1, $t2, 51$
	nop
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t8, 0x0002($t6)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t6)
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8063D081
51$:
	b       114$
	nop
53$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F401C
	lh      $a0, 0x0026($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	b       114$
	nop
66$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	jal     object_b_802F3C54
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x001E
	b       114$
	nop
77$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0012
	bnez    $at, 92$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
92$:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 112$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41000000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
112$:
	b       114$
	nop
114$:
	b       116$
	nop
116$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F48F4
object_b_802F48F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 24$
	nop
	la.u    $a0, o_130040EC
	jal     objlib_8029F95C
	la.l    $a0, o_130040EC
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 21$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F496C
object_b_802F496C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 50$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 57$
	nop
	b       94$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0002($t7)
	ori     $t9, $t8, 0x0010
	sh      $t9, 0x0002($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0144($t0)
	lw      $t2, 0x00F4($t0)
	bne     $t1, $t2, 48$
	nop
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0003
	sw      $t4, 0x014C($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t8, 0x0002($t6)
	and     $t9, $t8, $at
	sh      $t9, 0x0002($t6)
	li.u    $a0, 0x8063D081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x8063D081
48$:
	b       94$
	nop
50$:
	jal     object_b_802F3EA8
	nop
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	b       94$
	nop
57$:
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t0, 0x0154($t7)
	slti    $at, $t0, 0x0012
	bnez    $at, 72$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002AF0
	la.l    $a2, o_13002AF0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
72$:
	jal     object_b_802F3DD0
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0025
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 92$
	nop
	jal     objlib_802A05D4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
	li      $at, 0x41200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
92$:
	b       94$
	nop
94$:
	b       96$
	nop
96$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4B00
object_b_802F4B00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_802A1424
	lw      $a0, %lo(object)($a0)
	li      $at, 0x0001
	bne     $v0, $at, 24$
	nop
	la.u    $a0, o_13004148
	jal     objlib_8029F95C
	la.l    $a0, o_13004148
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	beqz    $t6, 21$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x00F4($t7)
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x00F4($t7)
21$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F4B78
object_b_802F4B78:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x02BC
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, 54$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	la.u    $t9, o_13004148
	la.l    $t9, o_13004148
	li      $t8, 0x00D4
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0018($sp)
	li      $a0, 0x0002
	move    $a1, $0
	li      $a2, 0x0032
	move    $a3, $0
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	sb      $0, 0x002F($sp)
25$:
	lb      $a2, 0x002F($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	subu    $at, $0, $a2
	sll     $t0, $at, 2
	subu    $t0, $t0, $at
	sll     $t0, $t0, 3
	addu    $t0, $t0, $at
	la.u    $t2, o_13004180
	la.l    $t2, o_13004180
	sll     $t0, $t0, 3
	move    $a2, $t0
	sw      $t2, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	jal     obj_make_off
	sw      $t1, 0x0010($sp)
	lb      $t3, 0x002F($sp)
	addiu   $t4, $t3, 0x0001
	sll     $t5, $t4, 24
	sra     $t6, $t5, 24
	slti    $at, $t6, 0x0002
	bnez    $at, 25$
	sb      $t4, 0x002F($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F4C68:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x013C($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x013C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x42240000
	mtc1    $at, $f16
	lwc1    $f10, 0x013C($t7)
	c.lt.s  $f10, $f16
	nop
	bc1f    26$
	nop
	li      $at, 0x42240000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x013C($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
26$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F4CE0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $t8, %hi(object_b_803327A4)
	lb      $t8, %lo(object_b_803327A4)($t8)
	lw      $t7, 0x0144($t6)
	bne     $t7, $t8, 9$
	nop
	jr      $ra
	nop
9$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x40800000
	mtc1    $at, $f6
	lwc1    $f4, 0x013C($t9)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x013C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x424C0000
	mtc1    $at, $f16
	lwc1    $f10, 0x013C($t0)
	c.lt.s  $f16, $f10
	nop
	bc1f    34$
	nop
	li      $at, 0x424C0000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x013C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x014C($t2)
34$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F4D78
object_b_802F4D78:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 45$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 49$
	nop
	b       53$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x001E
	beqz    $at, 24$
	nop
	b       53$
	nop
24$:
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, 43$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803327A4)
	lw      $t3, 0x0144($t2)
	sb      $t3, %lo(object_b_803327A4)($at)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0001
	sw      $t4, 0x014C($t5)
	li.u    $a0, 0x303E0081
	jal     object_playsound
	li.l    $a0, 0x303E0081
43$:
	b       53$
	nop
45$:
	jal     object_b_802F4C68
	nop
	b       53$
	nop
49$:
	jal     object_b_802F4CE0
	nop
	b       53$
	nop
53$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f4, 0x00AC($t7)
	swc1    $f4, 0x00AC($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0068($t8)
	lwc1    $f6, 0x00B4($t9)
	swc1    $f6, 0x00B4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lh      $t2, 0x0074($t1)
	bnez    $t2, 72$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
72$:
	b       74$
	nop
74$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F4EB4
object_b_802F4EB4:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t6, 0x0033
	li      $t7, 0x00CC
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	move    $a3, $0
	sw      $0, 0x0018($sp)
	sw      $0, 0x001C($sp)
	jal     obj_make_rel
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0034($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0144($t9)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t0, 0x0033
	li      $t1, -0x00CC
	li      $t2, -0x8000
	sw      $t2, 0x001C($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	move    $a3, $0
	sw      $0, 0x0018($sp)
	jal     obj_make_rel
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $t3, 0x0002
	sw      $t3, 0x0144($t4)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t5, 0x0033
	li      $t6, 0x4000
	sw      $t6, 0x001C($sp)
	sw      $t5, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	li      $a3, 0x00CC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     obj_make_rel
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	li      $t7, 0x0003
	sw      $t7, 0x0144($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130041F0
	li      $t9, 0x0033
	li      $t0, -0x4000
	sw      $t0, 0x001C($sp)
	sw      $t9, 0x0010($sp)
	la.l    $a2, o_130041F0
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0037
	li      $a3, -0x00CC
	sw      $0, 0x0014($sp)
	sw      $0, 0x0018($sp)
	jal     obj_make_rel
	sw      $0, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	li      $t1, 0x0004
	sw      $t1, 0x0144($t2)
	lui     $at, %hi(object_b_803327A4)
	sb      $0, %lo(object_b_803327A4)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00A4($t3)
	swc1    $f4, 0x00FC($t3)
	b       83$
	nop
83$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

object_b_802F5010:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lb      $t6, 0x001B($sp)
	sw      $t6, 0x00F8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0154($t8)
	li      $t9, 0x0005
	lui     $at, %hi(object_b_803327A4)
	sb      $t9, %lo(object_b_803327A4)($at)
	li.u    $a0, 0x30404081
	jal     object_playsound
	li.l    $a0, 0x30404081
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F5068:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	lb      $t7, 0x0001($t6)
	beq     $t7, $at, 19$
	nop
	lb      $t8, 0x0000($t6)
	li      $at, 0x0001
	bne     $t8, $at, 23$
	nop
	lb      $t9, 0x0002($t6)
	li      $at, 0x0001
	bne     $t9, $at, 23$
	nop
19$:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       125$
	nop
23$:
	lw      $t0, 0x001C($sp)
	li      $at, 0x0001
	lb      $t1, 0x0000($t0)
	bne     $t1, $at, 74$
	nop
	lb      $t2, 0x001B($sp)
	li      $at, 0x0001
	beq     $t2, $at, 35$
	nop
	li      $at, 0x0002
	bne     $t2, $at, 42$
	nop
35$:
	lw      $t3, 0x0020($sp)
	lwc1    $f4, 0x0008($t3)
	trunc.w.s $f6, $f4
	mfc1    $t5, $f6
	nop
	bnez    $t5, 56$
	nop
42$:
	lb      $t7, 0x001B($sp)
	li      $at, 0x0003
	beq     $t7, $at, 49$
	nop
	li      $at, 0x0004
	bne     $t7, $at, 60$
	nop
49$:
	lw      $t8, 0x0020($sp)
	lwc1    $f8, 0x0000($t8)
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	beqz    $t9, 60$
	nop
56$:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       74$
	nop
60$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0020($sp)
	lwc1    $f16, 0x00A0($t0)
	lwc1    $f18, 0x0000($t1)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0020($sp)
	lwc1    $f6, 0x00A8($t2)
	lwc1    $f8, 0x0008($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t2)
74$:
	lw      $t4, 0x001C($sp)
	li      $at, 0x0001
	lb      $t5, 0x0002($t4)
	bne     $t5, $at, 125$
	nop
	lb      $t7, 0x001B($sp)
	li      $at, 0x0001
	beq     $t7, $at, 86$
	nop
	li      $at, 0x0002
	bne     $t7, $at, 93$
	nop
86$:
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x0008($t8)
	trunc.w.s $f18, $f16
	mfc1    $t9, $f18
	nop
	bnez    $t9, 107$
	nop
93$:
	lb      $t1, 0x001B($sp)
	li      $at, 0x0003
	beq     $t1, $at, 100$
	nop
	li      $at, 0x0004
	bne     $t1, $at, 111$
	nop
100$:
	lw      $t0, 0x0028($sp)
	lwc1    $f4, 0x0000($t0)
	trunc.w.s $f6, $f4
	mfc1    $t2, $f6
	nop
	beqz    $t2, 111$
	nop
107$:
	jal     object_b_802F5010
	lb      $a0, 0x001B($sp)
	b       125$
	nop
111$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x00A0($t4)
	lwc1    $f10, 0x0000($t5)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0028($sp)
	lwc1    $f18, 0x00A8($t7)
	lwc1    $f4, 0x0008($t8)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A8($t7)
125$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x0190
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	bnez    $v0, 144$
	nop
	li      $t9, 0x0006
	lui     $at, %hi(object_b_803327A4)
	sb      $t9, %lo(object_b_803327A4)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t1, 0x0001
	sw      $t1, 0x0100($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x0154($t3)
144$:
	b       146$
	nop
146$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F52C0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0001
	lw      $t7, 0x00F8($t6)
	beq     $t7, $at, 9$
	nop
	li      $at, 0x0002
	bne     $t7, $at, 48$
	nop
9$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lw      $t9, 0x0154($t8)
	sll     $t0, $t9, 12
	andi    $t1, $t0, 0xFFFF
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_80338830)
	ldc1    $f8, %lo(object_b_80338830)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x40240000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	mul.d   $f18, $f10, $f16
	trunc.w.d $f4, $f18
	swc1    $f4, 0x00D0($t8)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_sin)
	lw      $t6, 0x0154($t5)
	lwc1    $f16, 0x00FC($t5)
	sll     $t7, $t6, 13
	andi    $t9, $t7, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	b       86$
	swc1    $f18, 0x00A4($t5)
48$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(math_sin)
	mtc1    $0, $f16
	lw      $t3, 0x0154($t2)
	sll     $t4, $t3, 12
	andi    $t8, $t4, 0xFFFF
	sra     $t6, $t8, 4
	sll     $t7, $t6, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(math_sin)($at)
	lui     $at, %hi(object_b_80338838)
	ldc1    $f8, %lo(object_b_80338838)($at)
	cvt.d.s $f6, $f4
	li      $at, 0x40240000
	mul.d   $f10, $f6, $f8
	mtc1    $at, $f17
	nop
	mul.d   $f18, $f10, $f16
	trunc.w.d $f4, $f18
	swc1    $f4, 0x00D8($t2)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_sin)
	lw      $t1, 0x0154($t0)
	lwc1    $f16, 0x00FC($t0)
	sll     $t5, $t1, 13
	andi    $t3, $t5, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t8, $t4, 2
	addu    $at, $at, $t8
	lwc1    $f6, %lo(math_sin)($at)
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t0)
86$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x0020
	lw      $t7, 0x0154($t6)
	bne     $t7, $at, 107$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803327A4)
	lw      $t2, 0x00F8($t9)
	sb      $t2, %lo(object_b_803327A4)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sw      $0, 0x00D0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x00D8($t5)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00FC($t3)
	swc1    $f4, 0x00A4($t3)
107$:
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F547C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0020($t6)
	sub.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sh      $t9, 0x001E($sp)
	lui     $t0, %hi(mario_obj)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, %lo(mario_obj)($t0)
	lwc1    $f18, 0x00A8($t1)
	lwc1    $f16, 0x0028($t0)
	sub.s   $f4, $f16, $f18
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x001C($sp)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t5, 0x0214($t4)
	beq     $t5, $t6, 39$
	nop
	la.u    $a0, o_130041F0
	jal     objlib_8029F95C
	la.l    $a0, o_130041F0
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t8, 0x0214($t7)
	bne     $v0, $t8, 68$
	nop
39$:
	lh      $t9, 0x001C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t0, $t9, 2
	sw      $t0, 0x00D0($t1)
	lh      $t2, 0x001E($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	subu    $t3, $0, $t2
	sll     $t4, $t3, 2
	sw      $t4, 0x00D8($t5)
	lui     $t6, %hi(object_b_803327A4)
	lb      $t6, %lo(object_b_803327A4)($t6)
	li      $at, 0x0006
	bne     $t6, $at, 66$
	nop
	lui     $at, %hi(object_b_803327A4)
	sb      $0, %lo(object_b_803327A4)($at)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
66$:
	b       68$
	nop
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F55A4
object_b_802F55A4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x011C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0114($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00AC($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B4($t9)
	lui     $t0, %hi(object_b_803327A4)
	lbu     $t0, %lo(object_b_803327A4)($t0)
	sltiu   $at, $t0, 0x0007
	beqz    $at, 430$
	nop
	sll     $t0, $t0, 2
	lui     $at, %hi(object_b_80338840)
	addu    $at, $at, $t0
	lw      $t0, %lo(object_b_80338840)($at)
	jr      $t0
	nop
.globl L802F5618
L802F5618:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00D0($t1)
	bgez    $t2, 36$
	sra     $t3, $t2, 1
	addiu   $at, $t2, 0x0001
	sra     $t3, $at, 1
36$:
	sw      $t3, 0x00D0($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	bgez    $t5, 44$
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
44$:
	sw      $t6, 0x00D8($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x0100($t7)
	bne     $t8, $at, 61$
	nop
	lw      $t9, 0x0154($t7)
	slti    $at, $t9, 0x001F
	bnez    $at, 61$
	nop
	li      $t0, 0x0006
	lui     $at, %hi(object_b_803327A4)
	sb      $t0, %lo(object_b_803327A4)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0154($t2)
61$:
	b       430$
	nop
.globl L802F56A0
L802F56A0:
	li      $at, 0x41200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B4($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338860)
	ldc1    $f18, %lo(object_b_80338860)($at)
	lwc1    $f10, 0x00A0($t1)
	lwc1    $f8, 0x00A8($t1)
	lui     $at, %hi(object_b_80338868)
	cvt.d.s $f16, $f10
	cvt.d.s $f10, $f8
	add.d   $f4, $f16, $f18
	ldc1    $f16, %lo(object_b_80338868)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t1)
	add.d   $f18, $f10, $f16
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f6, $f4
	cvt.s.d $f4, $f18
	mfc1    $a1, $f6
	mtc1    $at, $f6
	mfc1    $a3, $f4
	jal     object_b_802E569C
	swc1    $f6, 0x0010($sp)
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0000($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_80338870)
	ldc1    $f16, %lo(object_b_80338870)($at)
	lwc1    $f8, 0x00A8($t6)
	li      $at, 0x42480000
	mtc1    $at, $f6
	cvt.d.s $f10, $f8
	lw      $a1, 0x00A0($t6)
	add.d   $f18, $f10, $f16
	lw      $a2, 0x00A4($t6)
	addiu   $a0, $sp, 0x003C
	swc1    $f6, 0x0010($sp)
	cvt.s.d $f4, $f18
	mfc1    $a3, $f4
	jal     object_b_802E569C
	nop
	addiu   $t4, $sp, 0x0054
	sb      $v0, 0x0001($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_80338878)
	ldc1    $f16, %lo(object_b_80338878)($at)
	lwc1    $f8, 0x00A0($t8)
	lwc1    $f6, 0x00A8($t8)
	lui     $at, %hi(object_b_80338880)
	cvt.d.s $f10, $f8
	cvt.d.s $f8, $f6
	sub.d   $f18, $f10, $f16
	ldc1    $f10, %lo(object_b_80338880)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t8)
	add.d   $f16, $f8, $f10
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f4, $f18
	cvt.s.d $f18, $f16
	mfc1    $a1, $f4
	mtc1    $at, $f4
	mfc1    $a3, $f18
	jal     object_b_802E569C
	swc1    $f4, 0x0010($sp)
	addiu   $t7, $sp, 0x0054
	sb      $v0, 0x0002($t7)
	addiu   $t9, $sp, 0x0030
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       430$
	nop
.globl L802F57E8
L802F57E8:
	li      $at, 0xC1200000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B4($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338888)
	ldc1    $f16, %lo(object_b_80338888)($at)
	lwc1    $f8, 0x00A0($t2)
	lwc1    $f6, 0x00A8($t2)
	lui     $at, %hi(object_b_80338890)
	cvt.d.s $f10, $f8
	cvt.d.s $f8, $f6
	add.d   $f18, $f10, $f16
	ldc1    $f10, %lo(object_b_80338890)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t2)
	sub.d   $f16, $f8, $f10
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f4, $f18
	cvt.s.d $f18, $f16
	mfc1    $a1, $f4
	mtc1    $at, $f4
	mfc1    $a3, $f18
	jal     object_b_802E569C
	swc1    $f4, 0x0010($sp)
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0000($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_80338898)
	ldc1    $f10, %lo(object_b_80338898)($at)
	lwc1    $f6, 0x00A8($t1)
	li      $at, 0x42480000
	mtc1    $at, $f4
	cvt.d.s $f8, $f6
	lw      $a1, 0x00A0($t1)
	sub.d   $f16, $f8, $f10
	lw      $a2, 0x00A4($t1)
	addiu   $a0, $sp, 0x003C
	swc1    $f4, 0x0010($sp)
	cvt.s.d $f18, $f16
	mfc1    $a3, $f18
	jal     object_b_802E569C
	nop
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0001($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(object_b_803388A0)
	ldc1    $f10, %lo(object_b_803388A0)($at)
	lwc1    $f6, 0x00A0($t6)
	lwc1    $f4, 0x00A8($t6)
	lui     $at, %hi(object_b_803388A8)
	cvt.d.s $f8, $f6
	cvt.d.s $f6, $f4
	sub.d   $f16, $f8, $f10
	ldc1    $f8, %lo(object_b_803388A8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t6)
	sub.d   $f10, $f6, $f8
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f18, $f16
	cvt.s.d $f16, $f10
	mfc1    $a1, $f18
	mtc1    $at, $f18
	mfc1    $a3, $f16
	jal     object_b_802E569C
	swc1    $f18, 0x0010($sp)
	addiu   $t4, $sp, 0x0054
	sb      $v0, 0x0002($t4)
	addiu   $t8, $sp, 0x0030
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0001
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       430$
	nop
.globl L802F5930
L802F5930:
	li      $at, 0x41200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803388B0)
	ldc1    $f10, %lo(object_b_803388B0)($at)
	lwc1    $f6, 0x00A0($t9)
	lwc1    $f4, 0x00A8($t9)
	lui     $at, %hi(object_b_803388B8)
	cvt.d.s $f8, $f6
	cvt.d.s $f6, $f4
	add.d   $f16, $f8, $f10
	ldc1    $f8, %lo(object_b_803388B8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t9)
	add.d   $f10, $f6, $f8
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f18, $f16
	cvt.s.d $f16, $f10
	mfc1    $a1, $f18
	mtc1    $at, $f18
	mfc1    $a3, $f16
	jal     object_b_802E569C
	swc1    $f18, 0x0010($sp)
	addiu   $t0, $sp, 0x0054
	sb      $v0, 0x0000($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803388C0)
	ldc1    $f8, %lo(object_b_803388C0)($at)
	lwc1    $f4, 0x00A0($t2)
	li      $at, 0x42480000
	mtc1    $at, $f18
	cvt.d.s $f6, $f4
	lw      $a2, 0x00A4($t2)
	add.d   $f10, $f6, $f8
	lw      $a3, 0x00A8($t2)
	addiu   $a0, $sp, 0x003C
	swc1    $f18, 0x0010($sp)
	cvt.s.d $f16, $f10
	mfc1    $a1, $f16
	jal     object_b_802E569C
	nop
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0001($t3)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(object_b_803388C8)
	ldc1    $f8, %lo(object_b_803388C8)($at)
	lwc1    $f4, 0x00A0($t1)
	lwc1    $f18, 0x00A8($t1)
	lui     $at, %hi(object_b_803388D0)
	cvt.d.s $f6, $f4
	cvt.d.s $f4, $f18
	add.d   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803388D0)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t1)
	sub.d   $f8, $f4, $f6
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f16, $f10
	cvt.s.d $f10, $f8
	mfc1    $a1, $f16
	mtc1    $at, $f16
	mfc1    $a3, $f10
	jal     object_b_802E569C
	swc1    $f16, 0x0010($sp)
	addiu   $t5, $sp, 0x0054
	sb      $v0, 0x0002($t5)
	addiu   $t6, $sp, 0x0030
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0004
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       430$
	nop
.globl L802F5A78
L802F5A78:
	li      $at, 0xC1200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x00AC($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(object_b_803388D8)
	ldc1    $f8, %lo(object_b_803388D8)($at)
	lwc1    $f4, 0x00A0($t8)
	lwc1    $f18, 0x00A8($t8)
	lui     $at, %hi(object_b_803388E0)
	cvt.d.s $f6, $f4
	cvt.d.s $f4, $f18
	sub.d   $f10, $f6, $f8
	ldc1    $f6, %lo(object_b_803388E0)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t8)
	add.d   $f8, $f4, $f6
	addiu   $a0, $sp, 0x0048
	cvt.s.d $f16, $f10
	cvt.s.d $f10, $f8
	mfc1    $a1, $f16
	mtc1    $at, $f16
	mfc1    $a3, $f10
	jal     object_b_802E569C
	swc1    $f16, 0x0010($sp)
	addiu   $t7, $sp, 0x0054
	sb      $v0, 0x0000($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_803388E8)
	ldc1    $f6, %lo(object_b_803388E8)($at)
	lwc1    $f18, 0x00A0($t9)
	li      $at, 0x42480000
	mtc1    $at, $f16
	cvt.d.s $f4, $f18
	lw      $a2, 0x00A4($t9)
	sub.d   $f8, $f4, $f6
	lw      $a3, 0x00A8($t9)
	addiu   $a0, $sp, 0x003C
	swc1    $f16, 0x0010($sp)
	cvt.s.d $f10, $f8
	mfc1    $a1, $f10
	jal     object_b_802E569C
	nop
	addiu   $t0, $sp, 0x0054
	sb      $v0, 0x0001($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_803388F0)
	ldc1    $f6, %lo(object_b_803388F0)($at)
	lwc1    $f18, 0x00A0($t2)
	lwc1    $f16, 0x00A8($t2)
	lui     $at, %hi(object_b_803388F8)
	cvt.d.s $f4, $f18
	cvt.d.s $f18, $f16
	sub.d   $f8, $f4, $f6
	ldc1    $f4, %lo(object_b_803388F8)($at)
	li      $at, 0x42480000
	lw      $a2, 0x00A4($t2)
	sub.d   $f6, $f18, $f4
	addiu   $a0, $sp, 0x0030
	cvt.s.d $f10, $f8
	cvt.s.d $f8, $f6
	mfc1    $a1, $f10
	mtc1    $at, $f10
	mfc1    $a3, $f8
	jal     object_b_802E569C
	swc1    $f10, 0x0010($sp)
	addiu   $t3, $sp, 0x0054
	sb      $v0, 0x0002($t3)
	addiu   $t1, $sp, 0x0030
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0003
	addiu   $a1, $sp, 0x0054
	addiu   $a2, $sp, 0x0048
	jal     object_b_802F5068
	addiu   $a3, $sp, 0x003C
	b       430$
	nop
.globl L802F5BC0
L802F5BC0:
	jal     object_b_802F52C0
	nop
	b       456$
	nop
	b       430$
	nop
.globl L802F5BD8
L802F5BD8:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5824
	li      $a1, 0x0096
	beqz    $v0, 428$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	la.u    $a3, o_130041BC
	la.l    $a3, o_130041BC
	lwc1    $f16, 0x0164($t5)
	move    $a1, $0
	li      $a2, 0x0036
	trunc.w.s $f18, $f16
	move    $a0, $t5
	mfc1    $t4, $f18
	nop
	sw      $t4, 0x0010($sp)
	lwc1    $f4, 0x0168($t5)
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x0014($sp)
	lwc1    $f8, 0x016C($t5)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	trunc.w.s $f10, $f8
	sw      $0, 0x001C($sp)
	mfc1    $t0, $f10
	jal     obj_make_abs
	sw      $t0, 0x0018($sp)
428$:
	b       430$
	nop
430$:
	jal     object_b_802F547C
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f16, 0x00A0($t2)
	lwc1    $f18, 0x00AC($t2)
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x00A0($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x00A8($t3)
	lwc1    $f8, 0x00B4($t3)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A8($t3)
	lui     $t1, %hi(object_b_803327A4)
	lb      $t1, %lo(object_b_803327A4)($t1)
	beqz    $t1, 454$
	nop
	li      $at, 0x0006
	beq     $t1, $at, 454$
	nop
	li.u    $a0, 0x40080001
	jal     object_levelsound
	li.l    $a0, 0x40080001
454$:
	b       456$
	nop
456$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl object_b_802F5CD4
object_b_802F5CD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338900)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338900)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338904)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338904)($at)
	swc1    $f8, 0x0174($t8)
	lui     $at, %hi(object_b_80338908)
	jal     object_set_scale
	lwc1    $f12, %lo(object_b_80338908)($at)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803327A8
	la.l    $a1, object_b_803327A8
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x00F0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0074($t1)
	ori     $t3, $t2, 0x0200
	sh      $t3, 0x0074($t1)
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F5D78:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_13003588
	la.l    $a2, o_13003588
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0096
	sw      $v0, 0x0024($sp)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f6
	mov.s   $f20, $f0
	lw      $t6, 0x0024($sp)
	mul.s   $f8, $f20, $f6
	lwc1    $f4, 0x00A0($t6)
	trunc.w.s $f10, $f8
	mfc1    $t8, $f10
	nop
	addiu   $t9, $t8, -0x0028
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x42A00000
	mtc1    $at, $f10
	mov.s   $f20, $f0
	lw      $t0, 0x0024($sp)
	mul.s   $f16, $f20, $f10
	lwc1    $f8, 0x00A8($t0)
	trunc.w.s $f4, $f16
	mfc1    $t2, $f4
	nop
	addiu   $t3, $t2, -0x0028
	mtc1    $t3, $f18
	nop
	cvt.s.w $f6, $f18
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x00A8($t0)
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F5E44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $a0, %hi(object)
	jal     objlib_802A513C
	lw      $a0, %lo(object)($a0)
	lh      $t6, 0x001E($sp)
	li      $at, 0x0001
	bne     $t6, $at, 15$
	nop
	li.u    $a0, 0x32240081
	jal     object_playsound
	li.l    $a0, 0x32240081
15$:
	lh      $t7, 0x001E($sp)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 33$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x41A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B8($t9)
	c.lt.s  $f6, $f4
	nop
	bc1f    33$
	nop
	li.u    $a0, 0x40130001
	jal     object_playsound
	li.l    $a0, 0x40130001
	jal     object_b_802F5D78
	nop
33$:
	lh      $t0, 0x001E($sp)
	andi    $t1, $t0, 0x0002
	beqz    $t1, 55$
	nop
	jal     objlib_802A37AC
	nop
	li.u    $a2, 0x3F333333
	li.l    $a2, 0x3F333333
	li      $a0, 0x0014
	li      $a1, 0x008A
	jal     object_a_802AE0CC
	li      $a3, 0x0003
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E5760
	li      $a1, 0x0003
	li.u    $a0, 0x3041C081
	jal     object_makesound
	li.l    $a0, 0x3041C081
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
55$:
	lui     $a1, %hi(object_b_80361450)
	lw      $a1, %lo(object_b_80361450)($a1)
	jal     object_b_802E5A80
	lh      $a0, 0x001E($sp)
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F5F48:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00FC($t6)
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x00FC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00FC($t9)
	slti    $at, $t0, 0x032B
	bnez    $at, 31$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00FC($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 25$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0002($t4)
	ori     $t7, $t5, 0x0010
	b       31$
	sh      $t7, 0x0002($t4)
25$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t6, 0x0002($t8)
	and     $t9, $t6, $at
	sh      $t9, 0x0002($t8)
31$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00FC($t0)
	slti    $at, $t1, 0x0385
	bnez    $at, 45$
	nop
	la.u    $a1, o_13004218
	la.l    $a1, o_13004218
	li      $a0, 0x0082
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F6014:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0064
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0065
	beq     $s0, $at, 24$
	nop
	b       34$
	nop
16$:
	jal     object_b_802F5E44
	nop
	b       34$
	nop
20$:
	jal     object_b_802E5B18
	nop
	b       34$
	nop
24$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
	la.u    $a1, o_13004218
	la.l    $a1, o_13004218
	li      $a0, 0x0082
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	b       34$
	nop
34$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x0001
	lw      $t9, 0x00F4($t8)
	bne     $t9, $at, 42$
	nop
	jal     object_b_802F5F48
	nop
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F60D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F620
	nop
	jal     objlib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F6150:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F820
	nop
	jal     objlib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	li      $at, 0x42200000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0001
	sw      $t5, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x00FC($t8)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0201
	lh      $t9, 0x0074($t6)
	and     $t1, $t9, $at
	sh      $t1, 0x0074($t6)
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F6228
object_b_802F6228:
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
	beq     $s0, $at, 29$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 33$
	nop
	b       37$
	nop
19$:
	jal     object_b_802F6014
	nop
	b       37$
	nop
23$:
	jal     objlib_8029F66C
	nop
	jal     objlib_802A05B4
	nop
	b       37$
	nop
29$:
	jal     object_b_802F6150
	nop
	b       37$
	nop
33$:
	jal     object_b_802F60D8
	nop
	b       37$
	nop
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0134($t7)
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F62E4
object_b_802F62E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 40$
	nop
	b       82$
	nop
13$:
	li      $at, 0xC2200000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00AC($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00A0($t8)
	lwc1    $f8, 0x00AC($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	slti    $at, $t0, 0x0076
	bnez    $at, 35$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
35$:
	li.u    $a0, 0x40188001
	jal     object_levelsound
	li.l    $a0, 0x40188001
	b       82$
	nop
40$:
	li      $at, 0xC0A00000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x00AC($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f18, 0x00A0($t4)
	lwc1    $f4, 0x00AC($t4)
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A0($t4)
	li      $at, 0xC1200000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x00A4($t6)
	lwc1    $f16, 0x00B0($t6)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x016C($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x0033
	bnez    $at, 80$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
80$:
	b       82$
	nop
82$:
	b       84$
	nop
84$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F6448
object_b_802F6448:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a3, 0x1770
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t6)
	beqz    $v0, 24$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x0024($t8)
	c.lt.s  $f8, $f10
	nop
	bc1f    26$
	nop
24$:
	b       76$
	nop
26$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0040
	lw      $t0, 0x0154($t9)
	beq     $t0, $at, 44$
	nop
	li      $at, 0x0080
	beq     $t0, $at, 44$
	nop
	li      $at, 0x00C0
	beq     $t0, $at, 44$
	nop
	li      $at, 0x00E0
	beq     $t0, $at, 44$
	nop
	li      $at, 0x0100
	bne     $t0, $at, 51$
	nop
44$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13004244
	la.l    $a2, o_13004244
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0036
	sw      $v0, 0x001C($sp)
51$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0100
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 65$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lw      $t3, 0x001C($sp)
	swc1    $f16, 0x002C($t3)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t4, 0x001C($sp)
	swc1    $f18, 0x0030($t4)
65$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x0100
	bnez    $at, 74$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0154($t7)
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6588:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	addiu   $a3, $sp, 0x0024
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t7)
	swc1    $f0, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x00FC($t8)
	add.s   $f10, $f6, $f8
	c.lt.s  $f10, $f4
	nop
	bc1f    37$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f16, 0x00FC($t0)
	b       49$
	add.s   $f0, $f16, $f18
	b       47$
	nop
37$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x00F4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x00FC($t3)
	b       49$
	add.s   $f0, $f6, $f8
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F665C:
	addiu   $sp, $sp, -0x0008
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lw      $t8, 0x00C8($t7)
	lwc1    $f6, 0x00A8($t7)
	lwc1    $f4, 0x0028($t6)
	subu    $t9, $0, $t8
	andi    $t0, $t9, 0xFFFF
	sra     $t1, $t0, 4
	sub.s   $f8, $f4, $f6
	sll     $t2, $t1, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_sin)($at)
	lwc1    $f4, 0x00A0($t7)
	lwc1    $f18, 0x0020($t6)
	lui     $at, %hi(math_cos)
	mul.s   $f16, $f10, $f8
	sub.s   $f6, $f18, $f4
	addu    $at, $at, $t2
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f8, $f6, $f10
	add.s   $f18, $f16, $f8
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sh      $t4, 0x0006($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lw      $t9, 0x00C8($t8)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f6, 0x0028($t5)
	subu    $t0, $0, $t9
	andi    $t1, $t0, 0xFFFF
	sra     $t6, $t1, 4
	sub.s   $f16, $f6, $f10
	sll     $t7, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t7
	lwc1    $f8, %lo(math_cos)($at)
	lwc1    $f6, 0x00A0($t8)
	lwc1    $f4, 0x0020($t5)
	lui     $at, %hi(math_sin)
	mul.s   $f18, $f16, $f8
	sub.s   $f10, $f4, $f6
	addu    $at, $at, $t7
	lwc1    $f16, %lo(math_sin)($at)
	mul.s   $f8, $f16, $f10
	sub.s   $f4, $f18, $f8
	trunc.w.s $f6, $f4
	mfc1    $t3, $f6
	nop
	sh      $t3, 0x0004($sp)
	lui     $t4, %hi(mario_obj)
	lw      $t4, %lo(mario_obj)($t4)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t9, 0x0214($t4)
	bne     $t9, $t0, 118$
	nop
	lh      $t1, 0x0004($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sll     $t6, $t1, 1
	sw      $t6, 0x00D0($t5)
	lh      $t8, 0x0006($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	subu    $t7, $0, $t8
	sll     $t2, $t7, 1
	sw      $t2, 0x00D8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lwc1    $f16, 0x00B0($t4)
	sub.s   $f18, $f16, $f10
	swc1    $f18, 0x00B0($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	lwc1    $f8, 0x00B0($t9)
	c.lt.s  $f8, $f4
	nop
	bc1f    95$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t0)
95$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f16, 0x00F8($t1)
	lwc1    $f10, 0x00B0($t1)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x00F8($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x42B40000
	mtc1    $at, $f4
	lwc1    $f8, 0x00F8($t6)
	c.lt.s  $f4, $f8
	nop
	bc1f    116$
	nop
	li      $at, 0x42B40000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00F8($t5)
116$:
	b       163$
	nop
118$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x00D0($t8)
	bgez    $t7, 125$
	sra     $t2, $t7, 1
	addiu   $at, $t7, 0x0001
	sra     $t2, $at, 1
125$:
	sw      $t2, 0x00D0($t8)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D8($t3)
	bgez    $t4, 133$
	sra     $t9, $t4, 1
	addiu   $at, $t4, 0x0001
	sra     $t9, $at, 1
133$:
	sw      $t9, 0x00D8($t3)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x40140000
	mtc1    $at, $f19
	lwc1    $f16, 0x00F8($t0)
	mtc1    $0, $f18
	cvt.d.s $f10, $f16
	sub.d   $f8, $f10, $f18
	cvt.s.d $f4, $f8
	swc1    $f4, 0x00F8($t0)
	li      $at, 0x41200000
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t1)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f10
	lwc1    $f16, 0x00F8($t6)
	c.lt.s  $f16, $f10
	nop
	bc1f    163$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00F8($t5)
163$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0100($t7)
	lwc1    $f16, 0x0168($t7)
	sll     $t8, $t2, 11
	andi    $t4, $t8, 0xFFFF
	sra     $t9, $t4, 4
	sll     $t3, $t9, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f4
	li      $at, 0x42800000
	mtc1    $at, $f10
	mul.s   $f6, $f8, $f4
	lwc1    $f8, 0x00F8($t7)
	sub.s   $f18, $f16, $f10
	sub.s   $f4, $f18, $f8
	add.s   $f16, $f6, $f4
	swc1    $f16, 0x00A4($t7)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0100($t0)
	addiu   $t6, $t1, 0x0001
	sw      $t6, 0x0100($t0)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x0020
	lw      $t2, 0x0100($t5)
	bne     $t2, $at, 198$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0100($t8)
198$:
	b       200$
	nop
200$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl object_b_802F6984
object_b_802F6984:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     object_b_802F6588
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f0, 0x0168($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00F4($t7)
	bnez    $t8, 17$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	b       21$
	sw      $0, 0x014C($t9)
17$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
21$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $s0, 0x014C($t2)
	beqz    $s0, 31$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	b       41$
	nop
31$:
	jal     object_b_802F665C
	nop
	b       41$
	nop
35$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x0168($t3)
	swc1    $f4, 0x00A4($t3)
	b       41$
	nop
41$:
	b       43$
	nop
43$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F6A44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sb      $0, 0x001F($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, -0x4000
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	li      $at, 0x41400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00F4($t1)
	lwc1    $f10, 0x00B8($t1)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x43C00000
	mtc1    $at, $f4
	lwc1    $f18, 0x00F4($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    47$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	li      $at, 0x43C00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00F4($t4)
	li      $t5, 0x0001
	sb      $t5, 0x001F($sp)
47$:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	b       54$
	lb      $v0, 0x001F($sp)
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6B2C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sb      $0, 0x001F($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D4($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00C8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B0($t9)
	li      $at, 0x41400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f8, 0x00F4($t1)
	lwc1    $f10, 0x00B8($t1)
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00F4($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    45$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x00F4($t4)
	li      $t5, 0x0001
	sb      $t5, 0x001F($sp)
45$:
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	b       52$
	lb      $v0, 0x001F($sp)
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F6C0C
object_b_802F6C0C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 35$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 46$
	nop
	b       62$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0154($t7)
	slti    $at, $t8, 0x003D
	bnez    $at, 33$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t0, 0x0214($t9)
	bne     $t0, $t1, 33$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x014C($t3)
33$:
	b       62$
	nop
35$:
	jal     object_b_802F6A44
	nop
	li      $at, 0x0001
	bne     $v0, $at, 44$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
44$:
	b       62$
	nop
46$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slti    $at, $t7, 0x003D
	bnez    $at, 60$
	nop
	jal     object_b_802F6B2C
	nop
	li      $at, 0x0001
	bne     $v0, $at, 60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
60$:
	b       62$
	nop
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F6D20
object_b_802F6D20:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0144($t6)
	sw      $t7, 0x00F0($t6)
	li      $at, 0x41D00000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B0($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F6D58
object_b_802F6D58:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x00B0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A4($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x00B0($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0xC1A80000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    30$
	nop
	li      $at, 0x41600000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t9)
30$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0023
	lw      $t1, 0x0154($t0)
	bne     $t1, $at, 52$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000A14
	la.l    $a2, o_13000A14
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0095
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x001C($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f16
	lwc1    $f10, 0x00A4($t2)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0074($t3)
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F6E40
object_b_802F6E40:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130037E0
	la.l    $a2, o_130037E0
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_803327FC
	la.l    $a1, object_b_803327FC
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	li      $at, 0x40200000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F6EB0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001E($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t8, object_b_803327B8
	la.l    $t8, object_b_803327B8
	sw      $t8, 0x00FC($t9)
	jal     objlib_802A2C5C
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x0018($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x010C($t0)
	sw      $t1, 0x00F8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0108($t2)
	sw      $t3, 0x00F4($t2)
	li      $at, 0x41200000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $a2, 0x0080
	lw      $a0, 0x00C8($t5)
	jal     objlib_8029E530
	lw      $a1, 0x00F8($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x00C8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x0080
	lw      $a0, 0x00C4($t7)
	jal     objlib_8029E530
	lw      $a1, 0x00F4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x00C4($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t1, 0x00CA($t9)
	lh      $t0, 0x00FA($t9)
	beq     $t1, $t0, 75$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00CC($t3)
	addiu   $t4, $t2, -0x005B
	sw      $t4, 0x00CC($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(object_b_80338910)
	ldc1    $f10, %lo(object_b_80338910)($at)
	lw      $t6, 0x00CC($t5)
	mtc1    $t6, $f6
	nop
	cvt.d.w $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    73$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x1555
	sw      $t7, 0x00CC($t8)
73$:
	b       96$
	nop
75$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t1, 0x00CC($t9)
	addiu   $t0, $t1, 0x005B
	sw      $t0, 0x00CC($t9)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $at, %hi(object_b_80338918)
	ldc1    $f4, %lo(object_b_80338918)($at)
	lw      $t4, 0x00CC($t2)
	mtc1    $t4, $f16
	nop
	cvt.d.w $f18, $f16
	c.lt.d  $f4, $f18
	nop
	bc1f    96$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x1555
	sw      $t3, 0x00CC($t5)
96$:
	jal     objlib_802A31E0
	nop
	lh      $t6, 0x001E($sp)
	bnez    $t6, 104$
	nop
	li.u    $a0, 0x30090081
	jal     object_playsound
	li.l    $a0, 0x30090081
104$:
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F7068:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x012C
	lw      $t9, 0x0154($t8)
	bne     $t9, $at, 15$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0154($t0)
15$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0154($t1)
	beqz    $t2, 32$
	nop
	li      $at, 0x0032
	beq     $t2, $at, 32$
	nop
	li      $at, 0x0096
	beq     $t2, $at, 32$
	nop
	li      $at, 0x00C8
	beq     $t2, $at, 32$
	nop
	li      $at, 0x00FA
	bne     $t2, $at, 121$
	nop
32$:
	lui     $a0, %hi(object)
	la.u    $a2, o_13003798
	la.l    $a2, o_13003798
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0068
	sw      $v0, 0x0018($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	sw      $t4, 0x00D4($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0018($sp)
	lw      $t7, 0x00C4($t6)
	addiu   $t8, $t7, 0x4000
	sw      $t8, 0x00D0($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x8000
	lw      $t6, 0x0018($sp)
	lw      $t1, 0x00C8($t0)
	lwc1    $f10, 0x00A0($t0)
	addu    $t2, $t1, $at
	andi    $t3, $t2, 0xFFFF
	sra     $t4, $t3, 4
	sll     $t5, $t4, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t5
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(math_sin)
	lw      $t2, 0x0018($sp)
	lhu     $t8, 0x00C6($t7)
	lwc1    $f8, 0x00A4($t7)
	sra     $t9, $t8, 4
	sll     $t1, $t9, 2
	addu    $at, $at, $t1
	lwc1    $f18, %lo(math_sin)($at)
	li      $at, 0x43480000
	mtc1    $at, $f4
	li      $at, 0x41200000
	mtc1    $at, $f10
	mul.s   $f6, $f18, $f4
	add.s   $f16, $f8, $f10
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x8000
	lw      $t9, 0x0018($sp)
	lw      $t4, 0x00C8($t3)
	lwc1    $f6, 0x00A8($t3)
	addu    $t5, $t4, $at
	andi    $t0, $t5, 0xFFFF
	sra     $t6, $t0, 4
	sll     $t8, $t6, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	li      $at, 0x43480000
	mtc1    $at, $f8
	nop
	mul.s   $f10, $f4, $f8
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x00A8($t9)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0018($sp)
	lw      $t7, 0x00F4($t1)
	sw      $t7, 0x0110($t2)
	lw      $t4, 0x001C($sp)
	lw      $t5, 0x00F4($t4)
	addiu   $t0, $t5, 0x0001
	sw      $t0, 0x00F4($t4)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x00F4($t6)
	slti    $at, $t8, 0x2711
	bnez    $at, 121$
	nop
	lw      $t3, 0x001C($sp)
	sw      $0, 0x00F4($t3)
121$:
	b       123$
	nop
123$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F7264
object_b_802F7264:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	b       41$
	nop
13$:
	jal     object_b_802F6EB0
	nop
	jal     object_b_802F7068
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x01AC($t7)
	bne     $t8, $at, 35$
	nop
	jal     objlib_802A37AC
	nop
	lui     $at, %hi(object_b_80338920)
	lwc1    $f12, %lo(object_b_80338920)($at)
	li      $at, 0xC5610000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0x42F00000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
35$:
	b       41$
	nop
37$:
	jal     object_b_802F6EB0
	nop
	b       41$
	nop
41$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, 50$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x0134($t4)
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7348
object_b_802F7348:
	li      $at, 0x3F000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338924)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338924)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338928)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338928)($at)
	swc1    $f8, 0x0174($t8)
	jr      $ra
	nop
	jr      $ra
	nop

object_b_802F7398:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $0, 0x002C($sp)
3$:
	lw      $t6, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sll     $a2, $t6, 2
	subu    $a2, $a2, $t6
	sll     $a2, $a2, 3
	la.u    $t8, o_130043C4
	addu    $a2, $a2, $t6
	sll     $a2, $a2, 4
	la.l    $t8, o_130043C4
	sw      $t8, 0x0018($sp)
	addiu   $a2, $a2, 0x012C
	move    $a1, $0
	move    $a3, $0
	sw      $0, 0x0014($sp)
	move    $a0, $t6
	jal     obj_make_off
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x002C($sp)
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0004
	bnez    $at, 3$
	sw      $t0, 0x002C($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

object_b_802F7418:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x001C($t6)
	lwc1    $f10, 0x0020($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x001C($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x001C($t0)
	lwc1    $f10, 0x0028($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f18, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f4
	nop
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x0018($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00A8($t4)
	lwc1    $f10, 0x00A0($t4)
	sub.s   $f12, $f16, $f18
	jal     ATAN2
	sub.s   $f14, $f4, $f10
	b       45$
	nop
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F74DC
object_b_802F74DC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 46$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 72$
	nop
	b       154$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x0514
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 44$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0160($t8)
	sw      $t9, 0x00C8($t8)
	li      $at, 0x3F800000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	jal     object_b_802F7398
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	sw      $t1, 0x014C($t2)
	li.u    $a0, 0x30560081
	jal     object_playsound
	li.l    $a0, 0x30560081
44$:
	b       154$
	nop
46$:
	jal     object_b_802E5114
	nop
	jal     object_b_802F7418
	nop
	sh      $v0, 0x0026($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $a1, 0x0026($sp)
	li      $a2, 0x0400
	jal     objlib_8029E530
	lw      $a0, 0x00D4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x00D4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	slti    $at, $t6, 0x000B
	bnez    $at, 70$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t9)
70$:
	b       154$
	nop
72$:
	jal     object_b_802E5114
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lwc1    $f6, 0x00F4($t8)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00F4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0114($t0)
	lwc1    $f4, 0x00F4($t0)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f18, $f16
	add.s   $f6, $f18, $f4
	trunc.w.s $f8, $f6
	mfc1    $t3, $f8
	nop
	sw      $t3, 0x0114($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D0($t4)
	lw      $t6, 0x0114($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D0($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x00D0($t9)
	slti    $at, $t8, 0x3901
	bnez    $at, 152$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(math_sin)
	lhu     $t2, 0x00D6($t1)
	lwc1    $f4, 0x00A0($t1)
	sra     $t3, $t2, 4
	sll     $t0, $t3, 2
	addu    $at, $at, $t0
	lwc1    $f10, %lo(math_sin)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	nop
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f4, $f18
	swc1    $f6, 0x00A0($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lui     $at, %hi(math_cos)
	lhu     $t6, 0x00D6($t5)
	lwc1    $f4, 0x00A8($t5)
	sra     $t7, $t6, 4
	sll     $t4, $t7, 2
	addu    $at, $at, $t4
	lwc1    $f8, %lo(math_cos)($at)
	li      $at, 0x43FA0000
	mtc1    $at, $f10
	nop
	mul.s   $f16, $f8, $f10
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x00A8($t5)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a0, 0x0002
	lw      $a1, 0x00A0($t9)
	lw      $a2, 0x00A4($t9)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t9)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42B80000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0074($t8)
	li.u    $a0, 0x30440081
	jal     object_makesound
	li.l    $a0, 0x30440081
152$:
	b       154$
	nop
154$:
	b       156$
	nop
156$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7760
object_b_802F7760:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x00D0($t7)
	sw      $t8, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0068($t9)
	lw      $t1, 0x00D4($t0)
	sw      $t1, 0x0028($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x0068($t2)
	lwc1    $f4, 0x00A0($t3)
	swc1    $f4, 0x0024($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0068($t4)
	lwc1    $f6, 0x00A4($t5)
	swc1    $f6, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lwc1    $f8, 0x00A8($t7)
	swc1    $f8, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0144($t8)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 4
	addiu   $t1, $t0, 0x012C
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0018($sp)
	lhu     $t2, 0x002A($sp)
	lhu     $t7, 0x002E($sp)
	la.u    $t5, math_sin
	la.l    $t5, math_sin
	sra     $t3, $t2, 4
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	sll     $t4, $t3, 2
	addu    $t6, $t4, $t5
	addu    $t0, $t9, $t5
	lwc1    $f4, 0x0000($t0)
	lwc1    $f18, 0x0000($t6)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f16, 0x0024($sp)
	mul.s   $f6, $f18, $f4
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A0($t1)
	lhu     $t2, 0x002E($sp)
	lui     $at, %hi(math_cos)
	lwc1    $f6, 0x0018($sp)
	sra     $t3, $t2, 4
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	lwc1    $f4, %lo(math_cos)($at)
	lwc1    $f10, 0x0020($sp)
	lui     $t6, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t6, %lo(object)($t6)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	lhu     $t7, 0x002A($sp)
	lhu     $t5, 0x002E($sp)
	lui     $at, %hi(math_cos)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f18, %lo(math_cos)($at)
	sra     $t0, $t5, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t2)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_8033280C
	la.l    $a1, object_b_8033280C
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x0068($t3)
	lh      $t6, 0x0074($t4)
	bnez    $t6, 107$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0074($t7)
107$:
	b       109$
	nop
109$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl object_b_802F7924
object_b_802F7924:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lw      $t7, 0x0154($t6)
	lwc1    $f10, 0x0168($t6)
	sll     $t8, $t7, 10
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f4, %lo(math_sin)($at)
	li      $at, 0x41200000
	mtc1    $at, $f6
	nop
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A4($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl object_b_802F7978
object_b_802F7978:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0100
	sw      $t6, 0x011C($t7)
	jal     objlib_802A4120
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F79B0
object_b_802F79B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D8($t6)
	blez    $t7, 13$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x011C($t8)
	addiu   $t0, $t9, -0x0008
	b       18$
	sw      $t0, 0x011C($t8)
13$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x011C($t1)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x011C($t1)
18$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	lw      $t6, 0x011C($t4)
	addu    $t7, $t5, $t6
	sw      $t7, 0x00D8($t4)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x0010
	lw      $t0, 0x011C($t9)
	beq     $t0, $at, 33$
	nop
	li      $at, -0x0010
	bne     $t0, $at, 36$
	nop
33$:
	li.u    $a0, 0x30170081
	jal     object_playsound
	li.l    $a0, 0x30170081
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F7A58
object_b_802F7A58:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0068($t6)
	lw      $t8, 0x0068($t7)
	sw      $t8, 0x0034($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $s0, 0x014C($t9)
	beqz    $s0, 24$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 37$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 110$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 122$
	nop
	b       138$
	nop
24$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, 0x0001
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x014C($t1)
	bne     $t2, $at, 35$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0001
	sw      $t3, 0x014C($t4)
35$:
	b       138$
	nop
37$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x0154($t5)
	bnez    $t6, 73$
	nop
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x00FC($t7)
	bnez    $t8, 67$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	la.u    $t1, o_130003BC
	la.l    $t1, o_130003BC
	li      $t0, 0x00A8
	sw      $t0, 0x0014($sp)
	sw      $t1, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, -0x0050
	li      $a3, 0x0078
	jal     obj_make_off
	sw      $t9, 0x0010($sp)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31228081
	li.l    $a0, 0x31228081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
	b       73$
	nop
67$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li.u    $a0, 0x31208081
	li.l    $a0, 0x31208081
	jal     Na_SePlay
	addiu   $a1, $a1, 0x0054
73$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00D0($t2)
	addiu   $t4, $t3, -0x0200
	sw      $t4, 0x00D0($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	slti    $at, $t6, -0x4000
	beqz    $at, 108$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x4000
	sw      $t7, 0x00D0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x014C($t9)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x014C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x0004
	lw      $t4, 0x0068($t3)
	lw      $t2, 0x0144($t4)
	beq     $t2, $at, 108$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	move    $a1, $0
	li      $a2, -0x0028
	lw      $t6, 0x0068($t5)
	move    $a3, $0
	jal     object_b_802E5C6C
	lw      $a0, 0x0144($t6)
108$:
	b       138$
	nop
110$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t0, 0x014C($t8)
	bnez    $t0, 120$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t1, 0x0003
	sw      $t1, 0x014C($t9)
120$:
	b       138$
	nop
122$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00D0($t3)
	addiu   $t2, $t4, 0x0800
	sw      $t2, 0x00D0($t3)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00D0($t5)
	blez    $t6, 138$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x00D0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
138$:
	b       140$
	nop
140$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F7C9C
object_b_802F7C9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	la.u    $t8, o_130044E0
	la.l    $t8, o_130044E0
	li      $t7, 0x0066
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0066
	li      $a3, -0x004D
	jal     obj_make_off
	sw      $t6, 0x0010($sp)
	lui     $a0, %hi(object)
	la.u    $a1, object_b_8033281C
	la.l    $a1, object_b_8033281C
	jal     objlib_802A34A4
	lw      $a0, %lo(object)($a0)
	b       22$
	nop
22$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F7D04
object_b_802F7D04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 89$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 101$
	nop
	b       119$
	nop
16$:
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $a1, 0x001C($t8)
	li      $at, 0x8000
	li      $a2, 0x3000
	lw      $a0, 0x00C8($t7)
	jal     object_b_802E55D0
	addu    $a1, $a1, $at
	beqz    $v0, 87$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a3, 0x0096
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t9)
	beqz    $v0, 87$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x0068($t0)
	lw      $t2, 0x00F8($t1)
	bnez    $t2, 87$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t5, 0x0068($t3)
	lw      $t4, 0x0144($t3)
	lw      $t6, 0x00F4($t5)
	bne     $t4, $t6, 66$
	nop
	li.u    $a0, 0x806AA081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x806AA081
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x0068($t7)
	lw      $t9, 0x00F4($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x00F4($t8)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0001
	b       87$
	sw      $t1, 0x014C($t2)
66$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t3, 0x0001
	lw      $t4, 0x0068($t5)
	sw      $t3, 0x00F4($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0001
	lw      $t9, 0x0068($t7)
	sw      $t6, 0x00F8($t9)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t0, 0x0002
	sw      $t0, 0x014C($t8)
	jal     objlib_802A05D4
	nop
	li.u    $a0, 0x700E0081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x700E0081
87$:
	b       119$
	nop
89$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x0001
	lw      $t2, 0x0068($t1)
	lw      $t5, 0x00F8($t2)
	bne     $t5, $at, 99$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
99$:
	b       119$
	nop
101$:
	jal     objlib_802A05B4
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t4)
	lwc1    $f14, 0x00A4($t4)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t4)
	bnez    $v0, 119$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0068($t7)
	sw      $0, 0x00F8($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x014C($t9)
119$:
	li      $at, 0x43160000
	mtc1    $at, $f12
	mtc1    $at, $f14
	jal     objlib_802A390C
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x0134($t0)
	b       129$
	nop
129$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F7F1C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $t6, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lw      $t8, 0x0044($sp)
	lh      $t9, 0x004A($sp)
	lui     $a0, %hi(object)
	la.u    $a3, o_130044B8
	la.l    $a3, o_130044B8
	lw      $a0, %lo(object)($a0)
	move    $a1, $0
	li      $a2, 0x0065
	sw      $0, 0x001C($sp)
	sw      $0, 0x0024($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	sw      $t8, 0x0018($sp)
	jal     obj_make_abs
	sw      $t9, 0x0020($sp)
	sw      $v0, 0x0034($sp)
	lb      $t0, 0x003B($sp)
	lw      $t1, 0x0034($sp)
	sw      $t0, 0x0144($t1)
	b       29$
	nop
29$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl object_b_802F7FA0
object_b_802F7FA0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $a0, 0x0001
	li      $a1, 0x0190
	li      $a2, -0x015E
	li      $a3, -0x0A8C
	jal     object_b_802F7F1C
	sw      $0, 0x0010($sp)
	li      $t6, -0x6001
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, 0x028A
	li      $a2, -0x015E
	jal     object_b_802F7F1C
	li      $a3, -0x03AC
	li      $t7, 0x5FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x0226
	li      $a2, -0x015E
	jal     object_b_802F7F1C
	li      $a3, -0x0302
	li      $a0, 0x0004
	li      $a1, 0x0064
	li      $a2, -0x015E
	li      $a3, -0x06A4
	jal     object_b_802F7F1C
	sw      $0, 0x0010($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0001
	sw      $t8, 0x00F4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $0, 0x00FC($t0)
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F8044
object_b_802F8044:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 13$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 31$
	nop
	b       62$
	nop
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 29$
	nop
	jal     Na_Solution
	nop
	move    $a0, $0
	li      $a1, 0x007F
	jal     Na_game_803206BC
	li      $a2, 0x03E8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
29$:
	b       62$
	nop
31$:
	lui     $t1, %hi(waterp)
	lw      $t1, %lo(waterp)($t1)
	beqz    $t1, 60$
	nop
	lui     $t2, %hi(waterp)
	lw      $t2, %lo(waterp)($t2)
	lh      $t3, 0x000C($t2)
	addiu   $t4, $t3, -0x0005
	sh      $t4, 0x000C($t2)
	li.u    $a0, 0x41160001
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x41160001
	jal     camera_8027F8B8
	li      $a0, 0x0009
	lui     $t5, %hi(waterp)
	lw      $t5, %lo(waterp)($t5)
	lh      $t6, 0x000C($t5)
	slti    $at, $t6, -0x014F
	beqz    $at, 60$
	nop
	lui     $t8, %hi(waterp)
	lw      $t8, %lo(waterp)($t8)
	li      $t7, -0x014F
	sh      $t7, 0x000C($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sh      $0, 0x0074($t9)
60$:
	b       62$
	nop
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F8158
object_b_802F8158:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $t6, 0x7FFF
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, -0x06A4
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x047E
	li      $t7, 0x7FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, -0x047E
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x060E
	li      $t8, 0x7FFF
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x0960
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x0708
	li      $t9, 0x7FFF
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0004
	li      $a1, -0x0708
	li      $a2, -0x0AFC
	jal     object_b_802F7F1C
	li      $a3, -0x0834
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x00FC($t3)
	b       40$
	nop
40$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F8208
object_b_802F8208:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 51$
	nop
	b       53$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 28$
	nop
	jal     Na_Solution
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
28$:
	b       53$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x003C
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 49$
	nop
	jal     objlib_802A37AC
	nop
	li      $at, 0xC4E10000
	mtc1    $at, $f12
	lui     $at, %hi(object_b_8033892C)
	li.u    $a2, 0xC4D48000
	li.l    $a2, 0xC4D48000
	jal     object_b_802F2B88
	lwc1    $f14, %lo(object_b_8033892C)($at)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
49$:
	b       53$
	nop
51$:
	b       53$
	nop
53$:
	b       55$
	nop
55$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F82F8
object_b_802F82F8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	li      $t6, -0x6001
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, -0x1194
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, 0x0514
	li      $t7, 0x1FFF
	sw      $t7, 0x0010($sp)
	li      $a0, 0x0002
	li      $a1, -0x0708
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, 0x041A
	li      $t8, 0x238E
	sw      $t8, 0x0010($sp)
	li      $a0, 0x0003
	li      $a1, -0x1194
	li      $a2, -0x13FF
	jal     object_b_802F7F1C
	li      $a3, -0x044C
	li      $t9, 0x3E93
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0004
	li      $a1, -0x0960
	li      $a2, -0x11FF
	jal     object_b_802F7F1C
	li      $a3, 0x007D
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x00F4($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x00FC($t2)
	b       39$
	nop
39$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F83A4
object_b_802F83A4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $s0, 0x014C($t6)
	beqz    $s0, 16$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 30$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 50$
	nop
	b       52$
	nop
16$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0005
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 28$
	nop
	jal     Na_Solution
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x014C($t0)
28$:
	b       52$
	nop
30$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, 0x003C
	lw      $t2, 0x0154($t1)
	bne     $t2, $at, 48$
	nop
	jal     objlib_802A37AC
	nop
	lui     $at, %hi(object_b_80338930)
	lwc1    $f12, %lo(object_b_80338930)($at)
	li      $at, 0xC57A0000
	mtc1    $at, $f14
	jal     object_b_802F2B88
	li      $a2, 0xC4AF0000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $t3, 0x0002
	sw      $t3, 0x014C($t4)
48$:
	b       52$
	nop
50$:
	b       52$
	nop
52$:
	b       54$
	nop
54$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl object_b_802F8490
object_b_802F8490:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	li      $a1, -0x0001
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	sb      $v0, 0x001F($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x000F
	bnez    $at, 30$
	nop
	lbu     $t6, 0x001F($sp)
	andi    $t7, $t6, 0x0008
	bnez    $t7, 30$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0144($t8)
	li      $at, 0x42200000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $at, $f4
	b       56$
	swc1    $f4, 0x01AC($t9)
30$:
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0032
	bnez    $at, 53$
	nop
	lbu     $t0, 0x001F($sp)
	andi    $t1, $t0, 0x0010
	bnez    $t1, 53$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $t2, 0x0001
	sw      $t2, 0x0144($t3)
	li      $at, 0x42340000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	b       56$
	swc1    $f6, 0x01AC($t4)
53$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x0074($t5)
56$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, 0x0010
	sw      $t6, 0x0190($t7)
	li      $at, 0x41700000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00E4($t8)
	lui     $at, %hi(object_b_80338934)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, %lo(object_b_80338934)($at)
	swc1    $f10, 0x0170($t9)
	lui     $at, %hi(object_b_80338938)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, %lo(object_b_80338938)($at)
	swc1    $f16, 0x0174($t0)
	jal     objlib_8029F464
	move    $a0, $0
	b       80$
	nop
80$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F85E0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	li      $t6, -0x0001
	sh      $t6, 0x0036($sp)
	lui     $at, %hi(object_b_8033893C)
	lwc1    $f4, %lo(object_b_8033893C)($at)
	swc1    $f4, 0x0030($sp)
	la.u    $a0, 0x07079068
	jal     segment_to_virtual
	la.l    $a0, 0x07079068
	sw      $v0, 0x0028($sp)
	sb      $0, 0x003F($sp)
12$:
	lb      $t8, 0x003F($sp)
	lw      $t7, 0x0028($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0002($t1)
	sh      $t2, 0x003C($sp)
	lw      $t3, 0x0024($sp)
	lh      $t4, 0x0004($t3)
	sh      $t4, 0x003A($sp)
	lw      $t5, 0x0024($sp)
	lh      $t6, 0x0006($t5)
	sh      $t6, 0x0038($sp)
	lh      $t8, 0x003C($sp)
	lh      $t7, 0x003A($sp)
	lh      $t9, 0x0038($sp)
	mtc1    $t8, $f6
	mtc1    $t7, $f8
	mtc1    $t9, $f10
	cvt.s.w $f6, $f6
	lui     $a0, %hi(object)
	li      $t0, 0x0320
	sw      $t0, 0x0010($sp)
	lw      $a0, %lo(object)($a0)
	cvt.s.w $f8, $f8
	mfc1    $a1, $f6
	cvt.s.w $f10, $f10
	mfc1    $a2, $f8
	mfc1    $a3, $f10
	jal     object_b_802E52B8
	nop
	beqz    $v0, 75$
	nop
	lh      $t1, 0x0038($sp)
	lh      $t3, 0x003C($sp)
	lui     $t2, %hi(mario_obj)
	mtc1    $t1, $f16
	lw      $t2, %lo(mario_obj)($t2)
	mtc1    $t3, $f10
	cvt.s.w $f18, $f16
	lwc1    $f4, 0x0028($t2)
	cvt.s.w $f16, $f10
	sub.s   $f6, $f18, $f4
	lwc1    $f18, 0x0020($t2)
	sub.s   $f4, $f16, $f18
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f6, $f4, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x002C($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    75$
	nop
	lb      $t4, 0x003F($sp)
	sh      $t4, 0x0036($sp)
	lwc1    $f4, 0x002C($sp)
	swc1    $f4, 0x0030($sp)
75$:
	lb      $t5, 0x003F($sp)
	addiu   $t6, $t5, 0x0001
	sll     $t8, $t6, 24
	sra     $t7, $t8, 24
	slti    $at, $t7, 0x000A
	bnez    $at, 12$
	sb      $t6, 0x003F($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t9, 0x0036($sp)
	sw      $t9, 0x00F8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	b       92$
	lh      $v0, 0x00FA($t1)
	b       92$
	nop
92$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

object_b_802F8760:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a3, 0x01F4
	lwc1    $f12, 0x00A0($t7)
	lwc1    $f14, 0x00A4($t7)
	jal     object_b_802E5208
	lw      $a2, 0x00A8($t7)
	beqz    $v0, 36$
	nop
	jal     object_b_802F85E0
	nop
	li      $at, -0x0001
	bne     $v0, $at, 30$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x0002
	b       36$
	sw      $t8, 0x014C($t9)
30$:
	jal     objlib_8029F464
	li      $a0, 0x0001
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8808:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sh      $0, 0x0026($sp)
	la.u    $a0, 0x07079068
	jal     segment_to_virtual
	la.l    $a0, 0x07079068
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	lw      $t8, 0x00F8($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t6, $t9
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0018($sp)
	sw      $t1, 0x00FC($t2)
	jal     objlib_802A2C5C
	lw      $a0, 0x0020($sp)
	sw      $v0, 0x0020($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x01AC($t3)
	swc1    $f4, 0x00B8($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x010C($t4)
	sw      $t5, 0x00C8($t4)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lw      $t7, 0x0020($sp)
	li      $at, -0x0001
	bne     $t7, $at, 43$
	nop
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x014C($t8)
43$:
	jal     objlib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, 63$
	nop
	lh      $t6, 0x0026($sp)
	andi    $t9, $t6, 0x0004
	beqz    $t9, 63$
	nop
	li.u    $a0, 0x506C0081
	jal     object_playsound
	li.l    $a0, 0x506C0081
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D7C
	la.l    $a2, o_13002D7C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
	b       71$
	nop
63$:
	jal     objlib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, 71$
	nop
	li.u    $a0, 0x506A0081
	jal     object_playsound
	li.l    $a0, 0x506A0081
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F893C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029FF04
	nop
	li      $at, 0x0001
	bne     $v0, $at, 13$
	nop
	jal     objlib_8029F464
	move    $a0, $0
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

object_b_802F8988:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sh      $0, 0x0040($t6)
	lh      $t7, 0x001E($sp)
	li      $at, 0x0001
	andi    $t8, $t7, 0x0001
	bne     $t8, $at, 37$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0002
	sw      $t9, 0x014C($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x008C($t1)
	ori     $t3, $t2, 0x0008
	sw      $t3, 0x008C($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D4($t4)
	sw      $t5, 0x00C8($t4)
	lh      $t6, 0x001E($sp)
	andi    $t7, $t6, 0x0004
	beqz    $t7, 37$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13002D7C
	la.l    $a2, o_13002D7C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	move    $a1, $0
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8A34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sh      $0, 0x001E($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x001E($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x0001
	lw      $t8, 0x00F4($t7)
	bne     $t8, $at, 26$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $a0, 0x0144($t9)
	jal     object_a_802AB558
	addiu   $a0, $a0, 0x0003
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0002
	sw      $t0, 0x00F4($t1)
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x0005
	beqz    $at, 34$
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338940)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338940)($at)
	jr      $t7
	nop
.globl L802F8AEC
L802F8AEC:
	jal     object_b_802F8760
	nop
	b       34$
	nop
.globl L802F8AFC
L802F8AFC:
	jal     object_b_802F8808
	nop
	b       34$
	nop
.globl L802F8B0C
L802F8B0C:
	jal     object_b_802F893C
	nop
	b       34$
	nop
.globl L802F8B1C
L802F8B1C:
	jal     object_b_802F8988
	nop
	b       34$
	nop
.globl L802F8B2C
L802F8B2C:
	jal     object_b_802F8A34
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

object_b_802F8B54:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jal     objlib_8029F464
	li      $a0, 0x0004
	lui     $a0, %hi(mario_obj)
	lw      $a0, %lo(mario_obj)($a0)
	li      $a1, 0x0000
	li      $a2, 0x42700000
	jal     objlib_8029F6E0
	li      $a3, 0x42C80000
	jal     objlib_802A05B4
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00F4($t9)
	bnez    $t0, 66$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0144($t1)
	bnez    $t2, 30$
	nop
	li      $t3, 0x0054
	b       32$
	sh      $t3, 0x001E($sp)
30$:
	li      $t4, 0x00A2
	sh      $t4, 0x001E($sp)
32$:
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, 66$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t7, 0x0074($t5)
	ori     $t8, $t7, 0x0020
	sh      $t8, 0x0074($t5)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	lh      $a2, 0x001E($sp)
	beqz    $v0, 66$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t9, 0x0190($t6)
	ori     $t0, $t9, 0x0040
	sw      $t0, 0x0190($t6)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t2, 0x0074($t1)
	and     $t3, $t2, $at
	sh      $t3, 0x0074($t1)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t4, 0x0001
	sw      $t4, 0x00F4($t7)
	jal     pl_demo_80257640
	move    $a0, $0
66$:
	b       68$
	nop
68$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F8C74:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A0474
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	jal     objlib_802A05D4
	nop
	li      $at, 0x40400000
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $t1, 0x0004
	sw      $t1, 0x014C($t2)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8CF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F820
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0124($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0009
	lw      $t1, 0x008C($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x008C($t0)
	jal     objlib_8029F464
	li      $a0, 0x0002
	jal     objlib_802A05D4
	nop
	li      $at, 0x41C80000
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t3)
	li      $at, 0x41A00000
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t4)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t5, 0x0003
	sw      $t5, 0x014C($t7)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl object_b_802F8DAC
object_b_802F8DAC:
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
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 31$
	nop
	b       35$
	nop
19$:
	jal     object_b_802F8AB4
	nop
	b       35$
	nop
23$:
	jal     object_b_802F8B54
	nop
	b       35$
	nop
27$:
	jal     object_b_802F8CF8
	nop
	b       35$
	nop
31$:
	jal     object_b_802F8C74
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

.globl object_b_802F8E54
object_b_802F8E54:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x40000000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00E4($t6)
	lui     $at, %hi(object_b_80338954)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, %lo(object_b_80338954)($at)
	swc1    $f6, 0x0170($t7)
	lui     $at, %hi(object_b_80338958)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, %lo(object_b_80338958)($at)
	swc1    $f8, 0x0174($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x4000
	sw      $t9, 0x0190($t0)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	move    $a1, $0
	li      $a2, 0x0018
	jal     save_file_star_range
	addiu   $a0, $a0, -0x0001
	slti    $at, $v0, 0x0078
	bnez    $at, 36$
	nop
	lui     $t1, %hi(object_b_80332618)
	lb      $t1, %lo(object_b_80332618)($t1)
	li      $at, 0x0001
	bne     $t1, $at, 39$
	nop
36$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sh      $0, 0x0074($t2)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F8F08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0024($sp)
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	sh      $v0, 0x0026($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t9)
	jal     objlib_8029E530
	lw      $a1, 0x0100($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x00C8($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li.u    $a2, 0x45466000
	li      $t2, 0x00C8
	lw      $a1, 0x0164($t1)
	lw      $a3, 0x016C($t1)
	sw      $t2, 0x0010($sp)
	li.l    $a2, 0x45466000
	jal     object_b_802E52B8
	move    $a0, $t1
	beqz    $v0, 39$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sw      $0, 0x014C($t3)
39$:
	jal     objlib_8029F464
	li      $a0, 0x0001
	lh      $t4, 0x0024($sp)
	beqz    $t4, 47$
	nop
	li      $at, 0x000F
	bne     $t4, $at, 50$
	nop
47$:
	li.u    $a0, 0x306E2081
	jal     object_playsound
	li.l    $a0, 0x306E2081
50$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $at, 0x8000
	lw      $t6, 0x0134($t5)
	bne     $t6, $at, 60$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, 0x0002
	sw      $t7, 0x014C($t8)
60$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $at, %hi(object_b_8033895C)
	lwc1    $f8, %lo(object_b_8033895C)($at)
	lwc1    $f6, 0x00A4($t9)
	c.lt.s  $f6, $f8
	nop
	bc1f    77$
	nop
	la.u    $a1, o_13004538
	la.l    $a1, o_13004538
	li      $a0, 0x0055
	jal     object_b_802EAF84
	li      $a2, 0x0BB8
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F9054:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x001C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	slti    $at, $t9, 0x005B
	bnez    $at, 76$
	nop
	jal     randf
	nop
	lui     $at, %hi(object_b_80338960)
	ldc1    $f6, %lo(object_b_80338960)($at)
	cvt.d.s $f4, $f0
	mul.d   $f8, $f4, $f6
	trunc.w.d $f10, $f8
	mfc1    $t1, $f10
	nop
	sh      $t1, 0x001E($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t4, 0x001E($sp)
	lw      $t3, 0x00FC($t2)
	bne     $t3, $t4, 32$
	nop
	b       118$
	nop
	b       36$
	nop
32$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t5, 0x001E($sp)
	sw      $t5, 0x00FC($t6)
36$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(object_b_8033282C+2*0)
	lw      $t8, 0x00FC($t7)
	sll     $t9, $t8, 1
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lh      $t1, %lo(object_b_8033282C+2*0)($t1)
	mtc1    $t1, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0164($t7)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(object_b_8033282C+2*1)
	lw      $t3, 0x00FC($t2)
	sll     $t4, $t3, 1
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(object_b_8033282C+2*1)($t6)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x016C($t2)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x0164($t8)
	lwc1    $f18, 0x00A0($t8)
	sub.s   $f12, $f8, $f10
	jal     ATAN2
	sub.s   $f14, $f16, $f18
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x0100($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x0001
	sw      $t0, 0x014C($t1)
76$:
	jal     objlib_8029F464
	move    $a0, $0
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x8000
	lw      $t3, 0x0134($t7)
	bne     $t3, $at, 88$
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t4, 0x0002
	sw      $t4, 0x014C($t5)
88$:
	la.u    $t6, pl_camera_data
	la.l    $t6, pl_camera_data
	lh      $t2, 0x001E($t6)
	li      $at, 0x000B
	beq     $t2, $at, 97$
	nop
	li      $at, 0x000C
	bne     $t2, $at, 116$
	nop
97$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, 0x000A
	sw      $t8, 0x014C($t9)
	lui     $at, %hi(object_b_80338968)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, %lo(object_b_80338968)($at)
	swc1    $f4, 0x00A0($t0)
	lui     $at, %hi(object_b_8033896C)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f6, %lo(object_b_8033896C)($at)
	swc1    $f6, 0x00A4($t1)
	lui     $at, %hi(object_b_80338970)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, %lo(object_b_80338970)($at)
	swc1    $f8, 0x00A8($t7)
116$:
	b       118$
	nop
118$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

object_b_802F923C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0162($t6)
	lh      $t8, 0x00CA($t6)
	bne     $t7, $t8, 72$
	nop
	jal     objlib_8029F464
	move    $a0, $0
	jal     pl_demo_80257640
	li      $a0, 0x0001
	li      $at, 0x0002
	bne     $v0, $at, 70$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0074($t9)
	ori     $t1, $t0, 0x0020
	sh      $t1, 0x0074($t9)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	li      $a0, 0x00A2
	jal     camera_8028FF04
	li      $a2, 0x00A1
	beqz    $v0, 70$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0021
	lh      $t3, 0x0074($t2)
	and     $t4, $t3, $at
	sh      $t4, 0x0074($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sw      $0, 0x0134($t5)
	la.u    $t6, object_b_8033282C+2*0
	la.l    $t6, object_b_8033282C+2*0
	lh      $t7, 0x0004($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $t7, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0164($t8)
	la.u    $t0, object_b_8033282C+2*0
	la.l    $t0, object_b_8033282C+2*0
	lh      $t1, 0x0006($t0)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x016C($t9)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f16, 0x016C($t3)
	lwc1    $f18, 0x00A8($t3)
	lwc1    $f4, 0x0164($t3)
	lwc1    $f6, 0x00A0($t3)
	sub.s   $f12, $f16, $f18
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $v0, 0x0100($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	li      $t2, 0x0005
	sw      $t2, 0x014C($t5)
70$:
	b       85$
	nop
72$:
	jal     objlib_8029F464
	li      $a0, 0x0001
	jal     Na_Solution
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t6)
	jal     objlib_8029E530
	lw      $a1, 0x0160($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $v0, 0x00C8($t7)
85$:
	b       87$
	nop
87$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F93A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0026($sp)
	li      $at, 0x41200000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x00B8($t8)
	jal     object_b_802E4E90
	nop
	jal     objlib_8029F464
	li      $a0, 0x0001
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0154($t9)
	bnez    $t0, 25$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8029000C
	li      $a0, 0x00AD
25$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $a2, 0x0500
	lw      $a0, 0x00C8($t1)
	jal     objlib_8029E530
	lw      $a1, 0x0100($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x00C8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li.u    $a2, 0x45466000
	li      $t4, 0x00C8
	lw      $a1, 0x0164($t3)
	lw      $a3, 0x016C($t3)
	sw      $t4, 0x0010($sp)
	li.l    $a2, 0x45466000
	jal     object_b_802E52B8
	move    $a0, $t3
	beqz    $v0, 71$
	nop
	jal     objlib_8029F464
	li      $a0, 0x0002
	li.u    $a0, 0x306F3081
	jal     object_playsound
	li.l    $a0, 0x306F3081
	li      $at, 0x42480000
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B8($t5)
	li      $at, 0x42200000
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $t7, -0x3FFF
	sw      $t7, 0x00C8($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0004
	sw      $t9, 0x014C($t0)
71$:
	lh      $t1, 0x0026($sp)
	beqz    $t1, 77$
	nop
	li      $at, 0x000F
	bne     $t1, $at, 80$
	nop
77$:
	li.u    $a0, 0x306E2081
	jal     object_playsound
	li.l    $a0, 0x306E2081
80$:
	b       82$
	nop
82$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

object_b_802F9500:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029FEA4
	nop
	lui     $a0, %hi(object)
	jal     object_b_802E5160
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f9
	lwc1    $f4, 0x00B0($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(object_b_80338974)
	lwc1    $f4, %lo(object_b_80338974)($at)
	lwc1    $f18, 0x00A4($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    37$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
	li      $t8, 0x0001
	lui     $at, %hi(camera_8033CBC8)
	sw      $t8, %lo(camera_8033CBC8)($at)
	li      $t9, 0x0001
	lui     $at, %hi(object_b_80332618)
	sb      $t9, %lo(object_b_80332618)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sh      $0, 0x0074($t0)
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

object_b_802F95AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(hud+0x00)
	lh      $t7, %lo(hud+0x00)($t7)
	li      $at, 0x0064
	bne     $t7, $at, 24$
	nop
	li.u    $a0, 0x3058FF81
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x3058FF81
	li      $t8, 0x0001
	lui     $at, %hi(save_jump)
	sb      $t8, %lo(save_jump)($at)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0003
	sw      $t9, 0x014C($t0)
	b       40$
	nop
24$:
	lw      $t1, 0x001C($sp)
	andi    $t2, $t1, 0x0003
	bnez    $t2, 38$
	nop
	li.u    $a0, 0x70150081
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	jal     Na_SePlay
	li.l    $a0, 0x70150081
	lui     $t3, %hi(mario)
	lw      $t3, %lo(mario)($t3)
	lb      $t4, 0x00AD($t3)
	addiu   $t5, $t4, 0x0001
	sb      $t5, 0x00AD($t3)
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl object_b_802F965C
object_b_802F965C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x014C($t6)
	sltiu   $at, $t7, 0x000B
	beqz    $at, L802F9704
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(object_b_80338978)
	addu    $at, $at, $t7
	lw      $t7, %lo(object_b_80338978)($at)
	jr      $t7
	nop
.globl L802F9694
L802F9694:
	jal     object_b_802F9054
	nop
	b       L802F9704
	nop
.globl L802F96A4
L802F96A4:
	jal     object_b_802F8F08
	nop
	b       L802F9704
	nop
.globl L802F96B4
L802F96B4:
	jal     object_b_802F923C
	nop
	b       L802F9704
	nop
.globl L802F96C4
L802F96C4:
	jal     object_b_802F93A8
	nop
	b       L802F9704
	nop
.globl L802F96D4
L802F96D4:
	jal     object_b_802F9500
	nop
	b       L802F9704
	nop
.globl L802F96E4
L802F96E4:
	jal     object_b_802F95AC
	nop
	b       L802F9704
	nop
.globl L802F96F4
L802F96F4:
	jal     objlib_8029F464
	move    $a0, $0
	b       L802F9704
	nop
.globl L802F9704
L802F9704:
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     object_b_802E7324
	addiu   $a0, $a0, 0x00F4
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
