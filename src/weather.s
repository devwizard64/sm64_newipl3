.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

weather_802DDDF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0028($sp)
	beqz    $s0, 18$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 28$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 36$
	nop
	b       44$
	nop
18$:
	b       77$
	move    $v0, $0
20$:
	li      $t6, 0x008C
	lui     $at, %hi(weather_80361416)
	sh      $t6, %lo(weather_80361416)($at)
	li      $t7, 0x0005
	lui     $at, %hi(weather_80361414)
	sh      $t7, %lo(weather_80361414)($at)
	b       44$
	nop
28$:
	li      $t8, 0x001E
	lui     $at, %hi(weather_80361416)
	sh      $t8, %lo(weather_80361416)($at)
	li      $t9, 0x001E
	lui     $at, %hi(weather_80361414)
	sh      $t9, %lo(weather_80361414)($at)
	b       44$
	nop
36$:
	li      $t0, 0x008C
	lui     $at, %hi(weather_80361416)
	sh      $t0, %lo(weather_80361416)($at)
	li      $t1, 0x008C
	lui     $at, %hi(weather_80361414)
	sh      $t1, %lo(weather_80361414)($at)
	b       44$
	nop
44$:
	lui     $a1, %hi(weather_80361416)
	lh      $a1, %lo(weather_80361416)($a1)
	lui     $a0, %hi(mem_heap)
	lw      $a0, %lo(mem_heap)($a0)
	sll     $t2, $a1, 3
	subu    $t2, $t2, $a1
	sll     $t2, $t2, 3
	jal     heap_alloc
	move    $a1, $t2
	lui     $at, %hi(weather)
	sw      $v0, %lo(weather)($at)
	lui     $t3, %hi(weather)
	lw      $t3, %lo(weather)($t3)
	bnez    $t3, 61$
	nop
	b       77$
	move    $v0, $0
61$:
	lui     $a1, %hi(weather_80361416)
	lh      $a1, %lo(weather_80361416)($a1)
	lui     $a0, %hi(weather)
	lw      $a0, %lo(weather)($a0)
	sll     $t4, $a1, 3
	subu    $t4, $t4, $a1
	sll     $t4, $t4, 3
	jal     bzero
	move    $a1, $t4
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(weather_80331750)
	sb      $t5, %lo(weather_80331750)($at)
	b       77$
	li      $v0, 0x0001
	b       77$
	nop
77$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_802DDF38:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(gfx_frame)
	lw      $t6, %lo(gfx_frame)($t6)
	sw      $t6, 0x002C($sp)
	lw      $s0, 0x0030($sp)
	li      $at, 0x0001
	beq     $s0, $at, 20$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 38$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 88$
	nop
	b       90$
	nop
20$:
	lui     $t7, %hi(weather_80361416)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	lh      $t7, %lo(weather_80361416)($t7)
	slt     $at, $t8, $t7
	beqz    $at, 36$
	nop
	lw      $t9, 0x002C($sp)
	andi    $t0, $t9, 0x003F
	bnez    $t0, 36$
	nop
	lui     $t1, %hi(weather_80361414)
	lh      $t1, %lo(weather_80361414)($t1)
	lui     $at, %hi(weather_80361414)
	addiu   $t2, $t1, 0x0005
	sh      $t2, %lo(weather_80361414)($at)
36$:
	b       90$
	nop
38$:
	lw      $t3, 0x0034($sp)
	lh      $t4, 0x0000($t3)
	lh      $t5, 0x0004($t3)
	mtc1    $t4, $f4
	mtc1    $t5, $f6
	cvt.s.w $f12, $f4
	jal     bg_check_water
	cvt.s.w $f14, $f6
	swc1    $f0, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lh      $t7, 0x0002($t6)
	lwc1    $f8, 0x0028($sp)
	lui     $at, %hi(weather_80338280)
	mtc1    $t7, $f18
	sub.s   $f16, $f8, $f10
	ldc1    $f10, %lo(weather_80338280)($at)
	lui     $at, %hi(weather_80361414)
	cvt.s.w $f4, $f18
	sub.s   $f6, $f16, $f4
	cvt.d.s $f8, $f6
	mul.d   $f18, $f8, $f10
	trunc.w.d $f16, $f18
	mfc1    $t9, $f16
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sh      $t2, %lo(weather_80361414)($at)
	lui     $t4, %hi(weather_80361414)
	lh      $t4, %lo(weather_80361414)($t4)
	bgez    $t4, 75$
	nop
	lui     $at, %hi(weather_80361414)
	sh      $0, %lo(weather_80361414)($at)
75$:
	lui     $t3, %hi(weather_80361414)
	lui     $t5, %hi(weather_80361416)
	lh      $t5, %lo(weather_80361416)($t5)
	lh      $t3, %lo(weather_80361414)($t3)
	slt     $at, $t5, $t3
	beqz    $at, 86$
	nop
	lui     $t6, %hi(weather_80361416)
	lh      $t6, %lo(weather_80361416)($t6)
	lui     $at, %hi(weather_80361414)
	sh      $t6, %lo(weather_80361414)($at)
86$:
	b       90$
	nop
88$:
	b       90$
	nop
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

weather_802DE0BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(weather_80331750)
	lb      $t6, %lo(weather_80331750)($t6)
	beqz    $t6, 16$
	nop
	lw      $t7, 0x0018($sp)
	beqz    $t7, 14$
	nop
	lui     $a0, %hi(mem_heap)
	lw      $a0, %lo(mem_heap)($a0)
	jal     heap_free
	lw      $a1, 0x0018($sp)
14$:
	lui     $at, %hi(weather_80331750)
	sb      $0, %lo(weather_80331750)($at)
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl weather_802DE114
weather_802DE114:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sdc1    $f20, 0x0010($sp)
	lw      $t6, 0x0034($sp)
	lw      $t8, 0x0030($sp)
	lh      $t7, 0x0000($t6)
	lh      $t9, 0x0000($t8)
	subu    $t0, $t7, $t9
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x002C($sp)
	lw      $t1, 0x0034($sp)
	lw      $t3, 0x0030($sp)
	lh      $t2, 0x0002($t1)
	lh      $t4, 0x0002($t3)
	subu    $t5, $t2, $t4
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lh      $t8, 0x0004($t6)
	lh      $t9, 0x0004($t7)
	subu    $t0, $t8, $t9
	mtc1    $t0, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0028($sp)
	lwc1    $f18, 0x0024($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f16, $f4
	trunc.w.s $f8, $f0
	lw      $t2, 0x0038($sp)
	mfc1    $t3, $f8
	nop
	sh      $t3, 0x0000($t2)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f18, 0x0024($sp)
	mul.s   $f10, $f6, $f6
	nop
	mul.s   $f16, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f10, $f16
	mov.s   $f20, $f0
	mov.s   $f12, $f20
	jal     ATAN2
	lwc1    $f14, 0x0028($sp)
	lw      $t4, 0x003C($sp)
	sh      $v0, 0x0000($t4)
	lwc1    $f12, 0x0024($sp)
	jal     ATAN2
	lwc1    $f14, 0x002C($sp)
	lw      $t5, 0x0040($sp)
	sh      $v0, 0x0000($t5)
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

weather_802DE23C:
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	mtc1    $a2, $f4
	andi    $t6, $a3, 0xFFFF
	sra     $t7, $t6, 4
	cvt.s.w $f6, $f4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f8, %lo(math_cos)($at)
	lhu     $t9, 0x0012($sp)
	lh      $t2, 0x0000($a0)
	mul.s   $f10, $f6, $f8
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_sin)($at)
	mtc1    $t2, $f4
	mul.s   $f18, $f16, $f10
	cvt.s.w $f6, $f4
	add.s   $f8, $f18, $f6
	trunc.w.s $f16, $f8
	mfc1    $t4, $f16
	nop
	sh      $t4, 0x0000($a1)
	mtc1    $a2, $f4
	andi    $t5, $a3, 0xFFFF
	sra     $t6, $t5, 4
	cvt.s.w $f18, $f4
	lh      $t8, 0x0002($a0)
	sll     $t7, $t6, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t7
	lwc1    $f10, %lo(math_sin)($at)
	mtc1    $t8, $f8
	mul.s   $f6, $f10, $f18
	cvt.s.w $f16, $f8
	add.s   $f4, $f6, $f16
	trunc.w.s $f10, $f4
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x0002($a1)
	mtc1    $a2, $f18
	andi    $t1, $a3, 0xFFFF
	sra     $t2, $t1, 4
	cvt.s.w $f8, $f18
	la.u    $t4, math_cos
	la.l    $t4, math_cos
	sll     $t3, $t2, 2
	addu    $t5, $t3, $t4
	lwc1    $f6, 0x0000($t5)
	lhu     $t6, 0x0012($sp)
	lh      $t0, 0x0004($a0)
	mul.s   $f16, $f8, $f6
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $t9, $t8, $t4
	lwc1    $f4, 0x0000($t9)
	mtc1    $t0, $f18
	mul.s   $f10, $f4, $f16
	cvt.s.w $f8, $f18
	add.s   $f6, $f10, $f8
	trunc.w.s $f4, $f6
	mfc1    $t2, $f4
	nop
	sh      $t2, 0x0004($a1)
	jr      $ra
	nop
	jr      $ra
	nop

weather_802DE360:
	addiu   $sp, $sp, -0x0010
	lui     $t7, %hi(weather)
	lw      $t7, %lo(weather)($t7)
	sll     $t6, $a0, 3
	subu    $t6, $t6, $a0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	lw      $t9, 0x0004($t8)
	sw      $t9, 0x000C($sp)
	lui     $t1, %hi(weather)
	lw      $t1, %lo(weather)($t1)
	sll     $t0, $a0, 3
	subu    $t0, $t0, $a0
	sll     $t0, $t0, 3
	addu    $t2, $t0, $t1
	lw      $t3, 0x0008($t2)
	sw      $t3, 0x0008($sp)
	lui     $t5, %hi(weather)
	lw      $t5, %lo(weather)($t5)
	sll     $t4, $a0, 3
	subu    $t4, $t4, $a0
	sll     $t4, $t4, 3
	addu    $t6, $t4, $t5
	lw      $t7, 0x000C($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x000C($sp)
	lw      $t2, 0x0004($sp)
	li.u    $at, 0x00015F91
	subu    $t9, $t8, $a1
	subu    $t0, $t8, $a1
	multu   $t9, $t0
	subu    $t3, $t2, $a3
	subu    $t4, $t2, $a3
	li.l    $at, 0x00015F91
	mflo    $t1
	nop
	nop
	multu   $t3, $t4
	mflo    $t5
	addu    $t6, $t1, $t5
	slt     $at, $t6, $at
	bnez    $at, 45$
	nop
	b       60$
	move    $v0, $0
45$:
	lw      $t7, 0x0008($sp)
	addiu   $t8, $a2, -0x00C9
	slt     $at, $t7, $t8
	bnez    $at, 54$
	nop
	addiu   $t9, $a2, 0x00C9
	slt     $at, $t9, $t7
	beqz    $at, 56$
	nop
54$:
	b       60$
	move    $v0, $0
56$:
	b       60$
	li      $v0, 0x0001
	b       60$
	nop
60$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

weather_802DE458:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sdc1    $f20, 0x0010($sp)
	la.u    $t7, weather_80361408
	la.l    $t7, weather_80361408
	lw      $t8, 0x0000($t7)
	lw      $t6, 0x0038($sp)
	subu    $t9, $t6, $t8
	sw      $t9, 0x0030($sp)
	la.u    $t1, weather_80361408
	la.l    $t1, weather_80361408
	lw      $t2, 0x0004($t1)
	lw      $t0, 0x003C($sp)
	subu    $t3, $t0, $t2
	sw      $t3, 0x002C($sp)
	la.u    $t5, weather_80361408
	la.l    $t5, weather_80361408
	lw      $t7, 0x0008($t5)
	lw      $t4, 0x0040($sp)
	subu    $t6, $t4, $t7
	sw      $t6, 0x0028($sp)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	sw      $0, 0x0034($sp)
	blez    $t8, 249$
	nop
29$:
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	lw      $a2, 0x003C($sp)
	jal     weather_802DE360
	lw      $a3, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	lui     $t9, %hi(weather)
	lw      $t9, %lo(weather)($t9)
	sll     $t0, $t1, 3
	subu    $t0, $t0, $t1
	sll     $t0, $t0, 3
	addu    $t2, $t9, $t0
	sb      $v0, 0x0000($t2)
	lw      $t3, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sll     $t5, $t3, 3
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	addu    $t7, $t5, $t4
	lb      $t6, 0x0000($t7)
	bnez    $t6, 142$
	nop
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lw      $t8, 0x0038($sp)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f0, $f4
	li      $at, 0x43480000
	mtc1    $at, $f8
	mtc1    $t8, $f16
	sll     $t9, $t1, 1
	sll     $t0, $t9, 16
	cvt.s.w $f18, $f16
	sra     $t2, $t0, 16
	lw      $t7, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sub.s   $f10, $f6, $f8
	mtc1    $t2, $f6
	sll     $t6, $t7, 3
	subu    $t6, $t6, $t7
	cvt.s.w $f8, $f6
	sll     $t6, $t6, 3
	addu    $t8, $t4, $t6
	add.s   $f4, $f10, $f18
	add.s   $f16, $f4, $f8
	trunc.w.s $f10, $f16
	mfc1    $t5, $f10
	nop
	sw      $t5, 0x0004($t8)
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f18
	lw      $t1, 0x0040($sp)
	lw      $t9, 0x0028($sp)
	mul.s   $f6, $f0, $f18
	li      $at, 0x43480000
	mtc1    $at, $f4
	mtc1    $t1, $f16
	sll     $t0, $t9, 1
	sll     $t2, $t0, 16
	cvt.s.w $f10, $f16
	sra     $t3, $t2, 16
	lw      $t5, 0x0034($sp)
	lui     $t6, %hi(weather)
	lw      $t6, %lo(weather)($t6)
	sub.s   $f8, $f6, $f4
	mtc1    $t3, $f6
	sll     $t8, $t5, 3
	subu    $t8, $t8, $t5
	cvt.s.w $f4, $f6
	sll     $t8, $t8, 3
	addu    $t1, $t6, $t8
	add.s   $f18, $f8, $f10
	add.s   $f16, $f18, $f4
	trunc.w.s $f8, $f16
	mfc1    $t4, $f8
	nop
	sw      $t4, 0x000C($t1)
	jal     randf
	nop
	lw      $t9, 0x003C($sp)
	li      $at, 0x43480000
	mtc1    $at, $f10
	mtc1    $t9, $f18
	lw      $t7, 0x0034($sp)
	mul.s   $f6, $f0, $f10
	lui     $t3, %hi(weather)
	lw      $t3, %lo(weather)($t3)
	sll     $t5, $t7, 3
	subu    $t5, $t5, $t7
	sll     $t5, $t5, 3
	cvt.s.w $f4, $f18
	addu    $t6, $t3, $t5
	add.s   $f16, $f6, $f4
	trunc.w.s $f8, $f16
	mfc1    $t2, $f8
	nop
	sw      $t2, 0x0008($t6)
	lw      $t1, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sll     $t9, $t1, 3
	subu    $t9, $t9, $t1
	sll     $t9, $t9, 3
	li      $t8, 0x0001
	addu    $t0, $t4, $t9
	b       241$
	sb      $t8, 0x0000($t0)
142$:
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f10
	lw      $t7, 0x0030($sp)
	mov.s   $f20, $f0
	mul.s   $f18, $f20, $f10
	mtc1    $t7, $f16
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lui     $at, %hi(weather_80338288)
	ldc1    $f10, %lo(weather_80338288)($at)
	cvt.d.w $f8, $f16
	lw      $t1, 0x0034($sp)
	lui     $t9, %hi(weather)
	lw      $t9, %lo(weather)($t9)
	sub.s   $f4, $f18, $f6
	sll     $t4, $t1, 3
	subu    $t4, $t4, $t1
	div.d   $f18, $f8, $f10
	sll     $t4, $t4, 3
	addu    $t8, $t4, $t9
	lw      $t0, 0x0004($t8)
	trunc.w.d $f6, $f18
	mtc1    $t0, $f18
	mfc1    $t5, $f6
	cvt.s.w $f6, $f18
	sll     $t2, $t5, 16
	sra     $t6, $t2, 16
	mtc1    $t6, $f16
	nop
	cvt.s.w $f8, $f16
	add.s   $f10, $f4, $f8
	add.s   $f16, $f6, $f10
	trunc.w.s $f4, $f16
	mfc1    $t3, $f4
	nop
	sw      $t3, 0x0004($t8)
	lw      $t9, 0x002C($sp)
	lui     $at, %hi(weather_80338290)
	ldc1    $f6, %lo(weather_80338290)($at)
	mtc1    $t9, $f8
	lw      $t5, 0x0034($sp)
	lui     $t6, %hi(weather)
	cvt.d.w $f18, $f8
	lw      $t6, %lo(weather)($t6)
	sll     $t2, $t5, 3
	subu    $t2, $t2, $t5
	sll     $t2, $t2, 3
	mul.d   $f10, $f18, $f6
	addu    $t1, $t2, $t6
	lw      $t4, 0x0008($t1)
	trunc.w.d $f16, $f10
	mfc1    $t7, $f16
	nop
	sll     $t3, $t7, 16
	sra     $t8, $t3, 16
	subu    $t5, $0, $t8
	subu    $t2, $t4, $t5
	addiu   $t6, $t2, -0x0002
	sw      $t6, 0x0008($t1)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	lw      $t9, 0x0028($sp)
	mov.s   $f20, $f0
	mul.s   $f8, $f20, $f4
	mtc1    $t9, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lui     $at, %hi(weather_80338298)
	ldc1    $f4, %lo(weather_80338298)($at)
	cvt.d.w $f16, $f10
	lw      $t4, 0x0034($sp)
	lui     $t2, %hi(weather)
	lw      $t2, %lo(weather)($t2)
	sub.s   $f6, $f8, $f18
	sll     $t5, $t4, 3
	subu    $t5, $t5, $t4
	div.d   $f8, $f16, $f4
	sll     $t5, $t5, 3
	addu    $t6, $t5, $t2
	lw      $t1, 0x000C($t6)
	trunc.w.d $f18, $f8
	mtc1    $t1, $f8
	mfc1    $t7, $f18
	cvt.s.w $f18, $f8
	sll     $t3, $t7, 16
	sra     $t8, $t3, 16
	mtc1    $t8, $f10
	nop
	cvt.s.w $f16, $f10
	add.s   $f4, $f6, $f16
	add.s   $f10, $f18, $f4
	trunc.w.s $f6, $f10
	mfc1    $t0, $f6
	nop
	sw      $t0, 0x000C($t6)
241$:
	lw      $t7, 0x0034($sp)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	addiu   $t3, $t7, 0x0001
	sw      $t3, 0x0034($sp)
	slt     $at, $t3, $t8
	bnez    $at, 29$
	nop
249$:
	lw      $t4, 0x0038($sp)
	la.u    $t5, weather_80361408
	la.l    $t5, weather_80361408
	sw      $t4, 0x0000($t5)
	lw      $t2, 0x003C($sp)
	la.u    $t1, weather_80361408
	la.l    $t1, weather_80361408
	sw      $t2, 0x0004($t1)
	lw      $t9, 0x0040($sp)
	la.u    $t0, weather_80361408
	la.l    $t0, weather_80361408
	sw      $t9, 0x0008($t0)
	b       263$
	nop
263$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

weather_802DE888:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sdc1    $f20, 0x0010($sp)
	la.u    $t7, weather_80361408
	la.l    $t7, weather_80361408
	lw      $t8, 0x0000($t7)
	lw      $t6, 0x0038($sp)
	subu    $t9, $t6, $t8
	sw      $t9, 0x0030($sp)
	la.u    $t1, weather_80361408
	la.l    $t1, weather_80361408
	lw      $t2, 0x0004($t1)
	lw      $t0, 0x003C($sp)
	subu    $t3, $t0, $t2
	sw      $t3, 0x002C($sp)
	la.u    $t5, weather_80361408
	la.l    $t5, weather_80361408
	lw      $t7, 0x0008($t5)
	lw      $t4, 0x0040($sp)
	subu    $t6, $t4, $t7
	sw      $t6, 0x0028($sp)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	sw      $0, 0x0034($sp)
	blez    $t8, 256$
	nop
29$:
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0038($sp)
	lw      $a2, 0x003C($sp)
	jal     weather_802DE360
	lw      $a3, 0x0040($sp)
	lw      $t1, 0x0034($sp)
	lui     $t9, %hi(weather)
	lw      $t9, %lo(weather)($t9)
	sll     $t0, $t1, 3
	subu    $t0, $t0, $t1
	sll     $t0, $t0, 3
	addu    $t2, $t9, $t0
	sb      $v0, 0x0000($t2)
	lw      $t3, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sll     $t5, $t3, 3
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	addu    $t7, $t5, $t4
	lb      $t6, 0x0000($t7)
	bnez    $t6, 145$
	nop
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lw      $t8, 0x0038($sp)
	lw      $t1, 0x0030($sp)
	mul.s   $f6, $f0, $f4
	li      $at, 0x43480000
	mtc1    $at, $f8
	mtc1    $t8, $f16
	sll     $t9, $t1, 1
	sll     $t0, $t9, 16
	cvt.s.w $f18, $f16
	sra     $t2, $t0, 16
	lw      $t7, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sub.s   $f10, $f6, $f8
	mtc1    $t2, $f6
	sll     $t6, $t7, 3
	subu    $t6, $t6, $t7
	cvt.s.w $f8, $f6
	sll     $t6, $t6, 3
	addu    $t8, $t4, $t6
	add.s   $f4, $f10, $f18
	add.s   $f16, $f4, $f8
	trunc.w.s $f10, $f16
	mfc1    $t5, $f10
	nop
	sw      $t5, 0x0004($t8)
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f18
	lw      $t1, 0x0040($sp)
	lw      $t9, 0x0028($sp)
	mul.s   $f6, $f0, $f18
	li      $at, 0x43480000
	mtc1    $at, $f4
	mtc1    $t1, $f16
	sll     $t0, $t9, 1
	sll     $t2, $t0, 16
	cvt.s.w $f10, $f16
	sra     $t3, $t2, 16
	lw      $t5, 0x0034($sp)
	lui     $t6, %hi(weather)
	lw      $t6, %lo(weather)($t6)
	sub.s   $f8, $f6, $f4
	mtc1    $t3, $f6
	sll     $t8, $t5, 3
	subu    $t8, $t8, $t5
	cvt.s.w $f4, $f6
	sll     $t8, $t8, 3
	addu    $t1, $t6, $t8
	add.s   $f18, $f8, $f10
	add.s   $f16, $f18, $f4
	trunc.w.s $f8, $f16
	mfc1    $t4, $f8
	nop
	sw      $t4, 0x000C($t1)
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lw      $t9, 0x003C($sp)
	li      $at, 0x43480000
	mul.s   $f6, $f0, $f10
	mtc1    $t9, $f16
	mtc1    $at, $f18
	lw      $t7, 0x0034($sp)
	lui     $t3, %hi(weather)
	lw      $t3, %lo(weather)($t3)
	cvt.s.w $f8, $f16
	sll     $t5, $t7, 3
	subu    $t5, $t5, $t7
	sll     $t5, $t5, 3
	addu    $t6, $t3, $t5
	sub.s   $f4, $f6, $f18
	add.s   $f10, $f4, $f8
	trunc.w.s $f6, $f10
	mfc1    $t2, $f6
	nop
	sw      $t2, 0x0008($t6)
	lw      $t1, 0x0034($sp)
	lui     $t4, %hi(weather)
	lw      $t4, %lo(weather)($t4)
	sll     $t9, $t1, 3
	subu    $t9, $t9, $t1
	sll     $t9, $t9, 3
	li      $t8, 0x0001
	addu    $t0, $t4, $t9
	b       248$
	sb      $t8, 0x0000($t0)
145$:
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t7, 0x0030($sp)
	mov.s   $f20, $f0
	mul.s   $f16, $f20, $f18
	mtc1    $t7, $f10
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lui     $at, %hi(weather_803382A0)
	ldc1    $f18, %lo(weather_803382A0)($at)
	cvt.d.w $f6, $f10
	lw      $t1, 0x0034($sp)
	lui     $t9, %hi(weather)
	lw      $t9, %lo(weather)($t9)
	sub.s   $f8, $f16, $f4
	sll     $t4, $t1, 3
	subu    $t4, $t4, $t1
	div.d   $f16, $f6, $f18
	sll     $t4, $t4, 3
	addu    $t8, $t4, $t9
	lw      $t0, 0x0004($t8)
	li      $at, 0x41A00000
	trunc.w.d $f4, $f16
	mtc1    $at, $f16
	mfc1    $t5, $f4
	nop
	sll     $t2, $t5, 16
	sra     $t6, $t2, 16
	mtc1    $t6, $f10
	nop
	cvt.s.w $f6, $f10
	mtc1    $t0, $f10
	add.s   $f18, $f8, $f6
	cvt.s.w $f8, $f10
	add.s   $f4, $f18, $f16
	add.s   $f6, $f8, $f4
	trunc.w.s $f18, $f6
	mfc1    $t3, $f18
	nop
	sw      $t3, 0x0004($t8)
	lw      $t9, 0x002C($sp)
	lui     $at, %hi(weather_803382A8)
	ldc1    $f8, %lo(weather_803382A8)($at)
	mtc1    $t9, $f16
	lw      $t5, 0x0034($sp)
	lui     $t6, %hi(weather)
	cvt.d.w $f10, $f16
	lw      $t6, %lo(weather)($t6)
	sll     $t2, $t5, 3
	subu    $t2, $t2, $t5
	sll     $t2, $t2, 3
	mul.d   $f4, $f10, $f8
	addu    $t1, $t2, $t6
	lw      $t4, 0x0008($t1)
	trunc.w.d $f6, $f4
	mfc1    $t7, $f6
	nop
	sll     $t3, $t7, 16
	sra     $t8, $t3, 16
	subu    $t5, $0, $t8
	subu    $t2, $t4, $t5
	addiu   $t6, $t2, -0x0005
	sw      $t6, 0x0008($t1)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t9, 0x0028($sp)
	mov.s   $f20, $f0
	mul.s   $f16, $f20, $f18
	mtc1    $t9, $f4
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lui     $at, %hi(weather_803382B0)
	ldc1    $f18, %lo(weather_803382B0)($at)
	cvt.d.w $f6, $f4
	lw      $t4, 0x0034($sp)
	lui     $t2, %hi(weather)
	lw      $t2, %lo(weather)($t2)
	sub.s   $f8, $f16, $f10
	sll     $t5, $t4, 3
	subu    $t5, $t5, $t4
	div.d   $f16, $f6, $f18
	sll     $t5, $t5, 3
	addu    $t6, $t5, $t2
	lw      $t1, 0x000C($t6)
	trunc.w.d $f10, $f16
	mtc1    $t1, $f16
	mfc1    $t7, $f10
	cvt.s.w $f10, $f16
	sll     $t3, $t7, 16
	sra     $t8, $t3, 16
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	add.s   $f18, $f8, $f6
	add.s   $f4, $f10, $f18
	trunc.w.s $f8, $f4
	mfc1    $t0, $f8
	nop
	sw      $t0, 0x000C($t6)
248$:
	lw      $t7, 0x0034($sp)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	addiu   $t3, $t7, 0x0001
	sw      $t3, 0x0034($sp)
	slt     $at, $t3, $t8
	bnez    $at, 29$
	nop
256$:
	lw      $t4, 0x0038($sp)
	la.u    $t5, weather_80361408
	la.l    $t5, weather_80361408
	sw      $t4, 0x0000($t5)
	lw      $t2, 0x003C($sp)
	la.u    $t1, weather_80361408
	la.l    $t1, weather_80361408
	sw      $t2, 0x0004($t1)
	lw      $t9, 0x0040($sp)
	la.u    $t0, weather_80361408
	la.l    $t0, weather_80361408
	sw      $t9, 0x0008($t0)
	b       270$
	nop
270$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

weather_802DECD4:
	sw      $a1, 0x0004($sp)
	addiu   $t6, $a0, -0x0D34
	addiu   $t7, $a0, -0x0D34
	multu   $t6, $t7
	addiu   $t9, $a2, 0x0208
	addiu   $t0, $a2, 0x0208
	li.u    $at, 0x00895440
	li.l    $at, 0x00895440
	mflo    $t8
	nop
	nop
	multu   $t9, $t0
	mflo    $t1
	addu    $t2, $t8, $t1
	slt     $at, $t2, $at
	beqz    $at, 19$
	nop
	b       23$
	li      $v0, 0x0001
19$:
	b       23$
	move    $v0, $0
	b       23$
	nop
23$:
	jr      $ra
	nop

weather_802DED38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lui     $t6, %hi(weather_80361414)
	lh      $t6, %lo(weather_80361414)($t6)
	sw      $0, 0x001C($sp)
	blez    $t6, 119$
	nop
10$:
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     weather_802DE360
	lw      $a3, 0x0028($sp)
	lw      $t8, 0x001C($sp)
	lui     $t7, %hi(weather)
	lw      $t7, %lo(weather)($t7)
	sll     $t9, $t8, 3
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 3
	addu    $t0, $t7, $t9
	sb      $v0, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	lui     $t3, %hi(weather)
	lw      $t3, %lo(weather)($t3)
	sll     $t2, $t1, 3
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 3
	addu    $t4, $t2, $t3
	lb      $t5, 0x0000($t4)
	bnez    $t5, 111$
	nop
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f4
	lw      $t6, 0x0020($sp)
	li      $at, 0x43480000
	mul.s   $f6, $f0, $f4
	mtc1    $t6, $f16
	mtc1    $at, $f8
	lw      $t0, 0x001C($sp)
	lui     $t9, %hi(weather)
	lw      $t9, %lo(weather)($t9)
	cvt.s.w $f18, $f16
	sll     $t1, $t0, 3
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $t2, $t9, $t1
	sub.s   $f10, $f6, $f8
	add.s   $f4, $f10, $f18
	trunc.w.s $f6, $f4
	mfc1    $t7, $f6
	nop
	sw      $t7, 0x0004($t2)
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lw      $t3, 0x0028($sp)
	li      $at, 0x43480000
	mul.s   $f16, $f0, $f8
	mtc1    $t3, $f4
	mtc1    $at, $f10
	lw      $t8, 0x001C($sp)
	lui     $t6, %hi(weather)
	lw      $t6, %lo(weather)($t6)
	cvt.s.w $f6, $f4
	sll     $t0, $t8, 3
	subu    $t0, $t0, $t8
	sll     $t0, $t0, 3
	addu    $t9, $t6, $t0
	sub.s   $f18, $f16, $f10
	add.s   $f8, $f18, $f6
	trunc.w.s $f16, $f8
	mfc1    $t5, $f16
	nop
	sw      $t5, 0x000C($t9)
	jal     randf
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f10
	lw      $t1, 0x0024($sp)
	li      $at, 0x43480000
	mul.s   $f4, $f0, $f10
	mtc1    $t1, $f8
	mtc1    $at, $f18
	lw      $t4, 0x001C($sp)
	lui     $t3, %hi(weather)
	lw      $t3, %lo(weather)($t3)
	cvt.s.w $f16, $f8
	sll     $t8, $t4, 3
	subu    $t8, $t8, $t4
	sll     $t8, $t8, 3
	addu    $t6, $t3, $t8
	sub.s   $f6, $f4, $f18
	add.s   $f10, $f6, $f16
	trunc.w.s $f4, $f10
	mfc1    $t2, $f4
	nop
	sw      $t2, 0x0008($t6)
	lw      $t9, 0x001C($sp)
	lui     $t5, %hi(weather)
	lw      $t5, %lo(weather)($t5)
	sll     $t1, $t9, 3
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	li      $t0, 0x0001
	addu    $t7, $t5, $t1
	sb      $t0, 0x0000($t7)
111$:
	lw      $t4, 0x001C($sp)
	lui     $t8, %hi(weather_80361414)
	lh      $t8, %lo(weather_80361414)($t8)
	addiu   $t3, $t4, 0x0001
	sw      $t3, 0x001C($sp)
	slt     $at, $t3, $t8
	bnez    $at, 10$
	nop
119$:
	b       121$
	nop
121$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl weather_802DEF2C
weather_802DEF2C:
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	addiu   $sp, $sp, -0x0038
	andi    $t6, $a3, 0xFFFF
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	lui     $at, %hi(math_cos)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0034($sp)
	andi    $t9, $a3, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	lui     $at, %hi(math_sin)
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0030($sp)
	lh      $t2, 0x004A($sp)
	lui     $at, %hi(math_cos)
	subu    $t3, $0, $t2
	andi    $t4, $t3, 0xFFFF
	sra     $t5, $t4, 4
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	lwc1    $f8, %lo(math_cos)($at)
	swc1    $f8, 0x002C($sp)
	lh      $t7, 0x004A($sp)
	lui     $at, %hi(math_sin)
	subu    $t8, $0, $t7
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f10, %lo(math_sin)($at)
	swc1    $f10, 0x0028($sp)
	lh      $t2, 0x0000($a0)
	addiu   $t3, $sp, 0x001C
	mtc1    $t2, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0000($t3)
	lh      $t4, 0x0002($a0)
	addiu   $t5, $sp, 0x001C
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0004($t5)
	lh      $t6, 0x0004($a0)
	addiu   $t7, $sp, 0x001C
	mtc1    $t6, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0008($t7)
	lh      $t8, 0x0000($a1)
	addiu   $t9, $sp, 0x0010
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0000($t9)
	lh      $t0, 0x0002($a1)
	addiu   $t1, $sp, 0x0010
	mtc1    $t0, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0004($t1)
	lh      $t2, 0x0004($a1)
	addiu   $t3, $sp, 0x0010
	mtc1    $t2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0008($t3)
	lh      $t4, 0x0000($a2)
	addiu   $t5, $sp, 0x0004
	mtc1    $t4, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0000($t5)
	lh      $t6, 0x0002($a2)
	addiu   $t7, $sp, 0x0004
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0004($t7)
	lh      $t8, 0x0004($a2)
	addiu   $t9, $sp, 0x0004
	mtc1    $t8, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0008($t9)
	addiu   $t0, $sp, 0x001C
	lwc1    $f16, 0x0000($t0)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f16, 0x0004($t0)
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f18, $f16, $f10
	lwc1    $f10, 0x0034($sp)
	neg.s   $f16, $f8
	add.s   $f6, $f4, $f18
	mul.s   $f4, $f16, $f10
	lwc1    $f18, 0x0008($t0)
	mul.s   $f8, $f18, $f4
	add.s   $f16, $f8, $f6
	trunc.w.s $f10, $f16
	mfc1    $t2, $f10
	nop
	sh      $t2, 0x0000($a0)
	addiu   $t3, $sp, 0x001C
	lwc1    $f18, 0x0008($t3)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0004($t3)
	lwc1    $f16, 0x0034($sp)
	mul.s   $f8, $f18, $f4
	nop
	mul.s   $f10, $f6, $f16
	add.s   $f18, $f8, $f10
	trunc.w.s $f4, $f18
	mfc1    $t5, $f4
	nop
	sh      $t5, 0x0002($a0)
	addiu   $t6, $sp, 0x001C
	lwc1    $f6, 0x0000($t6)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f16
	neg.s   $f18, $f10
	lwc1    $f16, 0x0004($t6)
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0034($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f18, $f8, $f10
	lwc1    $f8, 0x0008($t6)
	mul.s   $f10, $f8, $f6
	add.s   $f16, $f10, $f18
	trunc.w.s $f4, $f16
	mfc1    $t8, $f4
	nop
	sh      $t8, 0x0004($a0)
	addiu   $t9, $sp, 0x0010
	lwc1    $f8, 0x0000($t9)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x0028($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f8, 0x0004($t9)
	mul.s   $f4, $f18, $f16
	nop
	mul.s   $f6, $f8, $f4
	lwc1    $f4, 0x0034($sp)
	neg.s   $f8, $f16
	add.s   $f18, $f10, $f6
	mul.s   $f10, $f8, $f4
	lwc1    $f6, 0x0008($t9)
	mul.s   $f16, $f6, $f10
	add.s   $f8, $f16, $f18
	trunc.w.s $f4, $f8
	mfc1    $t1, $f4
	nop
	sh      $t1, 0x0000($a1)
	addiu   $t2, $sp, 0x0010
	lwc1    $f6, 0x0008($t2)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f18, 0x0004($t2)
	lwc1    $f8, 0x0034($sp)
	mul.s   $f16, $f6, $f10
	nop
	mul.s   $f4, $f18, $f8
	add.s   $f6, $f16, $f4
	trunc.w.s $f10, $f6
	mfc1    $t4, $f10
	nop
	sh      $t4, 0x0002($a1)
	addiu   $t5, $sp, 0x0010
	lwc1    $f18, 0x0000($t5)
	lwc1    $f8, 0x0028($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f10, 0x002C($sp)
	mul.s   $f16, $f18, $f8
	neg.s   $f6, $f4
	lwc1    $f8, 0x0004($t5)
	mul.s   $f18, $f6, $f10
	nop
	mul.s   $f4, $f8, $f18
	lwc1    $f8, 0x0034($sp)
	mul.s   $f18, $f8, $f10
	add.s   $f6, $f16, $f4
	lwc1    $f16, 0x0008($t5)
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t7, $f10
	nop
	sh      $t7, 0x0004($a1)
	addiu   $t8, $sp, 0x0004
	lwc1    $f16, 0x0000($t8)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f16, 0x0004($t8)
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f18, $f16, $f10
	lwc1    $f10, 0x0034($sp)
	neg.s   $f16, $f8
	add.s   $f6, $f4, $f18
	mul.s   $f4, $f16, $f10
	lwc1    $f18, 0x0008($t8)
	mul.s   $f8, $f18, $f4
	add.s   $f16, $f8, $f6
	trunc.w.s $f10, $f16
	mfc1    $t0, $f10
	nop
	sh      $t0, 0x0000($a2)
	addiu   $t1, $sp, 0x0004
	lwc1    $f18, 0x0008($t1)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0004($t1)
	lwc1    $f16, 0x0034($sp)
	mul.s   $f8, $f18, $f4
	nop
	mul.s   $f10, $f6, $f16
	add.s   $f18, $f8, $f10
	trunc.w.s $f4, $f18
	mfc1    $t3, $f4
	nop
	sh      $t3, 0x0002($a2)
	addiu   $t4, $sp, 0x0004
	lwc1    $f6, 0x0000($t4)
	lwc1    $f16, 0x0028($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f4, 0x002C($sp)
	mul.s   $f8, $f6, $f16
	neg.s   $f18, $f10
	lwc1    $f16, 0x0004($t4)
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0034($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f18, $f8, $f10
	lwc1    $f8, 0x0008($t4)
	mul.s   $f10, $f8, $f6
	add.s   $f16, $f10, $f18
	trunc.w.s $f4, $f16
	mfc1    $t6, $f4
	nop
	sh      $t6, 0x0004($a2)
	b       256$
	nop
256$:
	jr      $ra
	addiu   $sp, $sp, 0x0038

weather_802DF334:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $0, 0x0024($sp)
	jal     gfx_alloc
	li      $a0, 0x00F0
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	bnez    $t6, 15$
	nop
	b       257$
	nop
15$:
	sw      $0, 0x0024($sp)
16$:
	lw      $t8, 0x0024($sp)
	la.u    $t1, vtx_weather_snow
	lw      $t7, 0x0020($sp)
	la.l    $t1, vtx_weather_snow
	lw      $at, 0x0000($t1)
	sll     $t9, $t8, 4
	addu    $t0, $t7, $t9
	sw      $at, 0x0000($t0)
	lw      $t4, 0x0004($t1)
	sw      $t4, 0x0004($t0)
	lw      $at, 0x0008($t1)
	sw      $at, 0x0008($t0)
	lw      $t4, 0x000C($t1)
	sw      $t4, 0x000C($t0)
	lw      $t6, 0x0024($sp)
	li      $at, 0x0003
	lw      $t5, 0x002C($sp)
	div     $0, $t6, $at
	mflo    $t8
	lui     $t3, %hi(weather)
	addu    $t7, $t5, $t8
	lw      $t3, %lo(weather)($t3)
	sll     $t9, $t7, 3
	lw      $t1, 0x0030($sp)
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 3
	addu    $t2, $t3, $t9
	lw      $t0, 0x0004($t2)
	lw      $t8, 0x0020($sp)
	lh      $t4, 0x0000($t1)
	sll     $t7, $t6, 4
	addu    $t3, $t8, $t7
	addu    $t5, $t4, $t0
	sh      $t5, 0x0000($t3)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t9, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t1
	lui     $t6, %hi(weather)
	addu    $t4, $t9, $t1
	lw      $t6, %lo(weather)($t6)
	sll     $t0, $t4, 3
	lw      $t5, 0x0030($sp)
	subu    $t0, $t0, $t4
	sll     $t0, $t0, 3
	addu    $t8, $t6, $t0
	lw      $t7, 0x0008($t8)
	lw      $t1, 0x0020($sp)
	lh      $t3, 0x0002($t5)
	sll     $t4, $t2, 4
	addu    $t6, $t1, $t4
	addu    $t9, $t3, $t7
	sh      $t9, 0x0002($t6)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t0, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t5
	lui     $t2, %hi(weather)
	addu    $t3, $t0, $t5
	lw      $t2, %lo(weather)($t2)
	sll     $t7, $t3, 3
	lw      $t9, 0x0030($sp)
	subu    $t7, $t7, $t3
	sll     $t7, $t7, 3
	addu    $t1, $t2, $t7
	lw      $t4, 0x000C($t1)
	lw      $t5, 0x0020($sp)
	lh      $t6, 0x0004($t9)
	sll     $t3, $t8, 4
	addu    $t2, $t5, $t3
	addu    $t0, $t6, $t4
	sh      $t0, 0x0004($t2)
	lw      $t1, 0x0024($sp)
	la.u    $t4, vtx_weather_snow
	lw      $t7, 0x0020($sp)
	la.l    $t4, vtx_weather_snow
	lw      $at, 0x0010($t4)
	sll     $t9, $t1, 4
	addu    $t6, $t7, $t9
	sw      $at, 0x0010($t6)
	lw      $t5, 0x0014($t4)
	sw      $t5, 0x0014($t6)
	lw      $at, 0x0018($t4)
	sw      $at, 0x0018($t6)
	lw      $t5, 0x001C($t4)
	sw      $t5, 0x001C($t6)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0003
	lw      $t3, 0x002C($sp)
	div     $0, $t0, $at
	mflo    $t2
	lui     $t9, %hi(weather)
	addu    $t1, $t3, $t2
	lw      $t9, %lo(weather)($t9)
	sll     $t7, $t1, 3
	lw      $t4, 0x0034($sp)
	subu    $t7, $t7, $t1
	sll     $t7, $t7, 3
	addu    $t8, $t9, $t7
	lw      $t6, 0x0004($t8)
	lw      $t2, 0x0020($sp)
	lh      $t5, 0x0000($t4)
	sll     $t1, $t0, 4
	addu    $t9, $t2, $t1
	addu    $t3, $t5, $t6
	sh      $t3, 0x0010($t9)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t7, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t4
	lui     $t0, %hi(weather)
	addu    $t5, $t7, $t4
	lw      $t0, %lo(weather)($t0)
	sll     $t6, $t5, 3
	lw      $t3, 0x0034($sp)
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t2, $t0, $t6
	lw      $t1, 0x0008($t2)
	lw      $t4, 0x0020($sp)
	lh      $t9, 0x0002($t3)
	sll     $t5, $t8, 4
	addu    $t0, $t4, $t5
	addu    $t7, $t9, $t1
	sh      $t7, 0x0012($t0)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t6, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t3
	lui     $t8, %hi(weather)
	addu    $t9, $t6, $t3
	lw      $t8, %lo(weather)($t8)
	sll     $t1, $t9, 3
	lw      $t7, 0x0034($sp)
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 3
	addu    $t4, $t8, $t1
	lw      $t5, 0x000C($t4)
	lw      $t3, 0x0020($sp)
	lh      $t0, 0x0004($t7)
	sll     $t9, $t2, 4
	addu    $t8, $t3, $t9
	addu    $t6, $t0, $t5
	sh      $t6, 0x0014($t8)
	lw      $t4, 0x0024($sp)
	la.u    $t5, vtx_weather_snow
	lw      $t1, 0x0020($sp)
	la.l    $t5, vtx_weather_snow
	lw      $at, 0x0020($t5)
	sll     $t7, $t4, 4
	addu    $t0, $t1, $t7
	sw      $at, 0x0020($t0)
	lw      $t3, 0x0024($t5)
	sw      $t3, 0x0024($t0)
	lw      $at, 0x0028($t5)
	sw      $at, 0x0028($t0)
	lw      $t3, 0x002C($t5)
	sw      $t3, 0x002C($t0)
	lw      $t6, 0x0024($sp)
	li      $at, 0x0003
	lw      $t9, 0x002C($sp)
	div     $0, $t6, $at
	mflo    $t8
	lui     $t7, %hi(weather)
	addu    $t4, $t9, $t8
	lw      $t7, %lo(weather)($t7)
	sll     $t1, $t4, 3
	lw      $t5, 0x0038($sp)
	subu    $t1, $t1, $t4
	sll     $t1, $t1, 3
	addu    $t2, $t7, $t1
	lw      $t0, 0x0004($t2)
	lw      $t8, 0x0020($sp)
	lh      $t3, 0x0000($t5)
	sll     $t4, $t6, 4
	addu    $t7, $t8, $t4
	addu    $t9, $t3, $t0
	sh      $t9, 0x0020($t7)
	lw      $t2, 0x0024($sp)
	li      $at, 0x0003
	lw      $t1, 0x002C($sp)
	div     $0, $t2, $at
	mflo    $t5
	lui     $t6, %hi(weather)
	addu    $t3, $t1, $t5
	lw      $t6, %lo(weather)($t6)
	sll     $t0, $t3, 3
	lw      $t9, 0x0038($sp)
	subu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	addu    $t8, $t6, $t0
	lw      $t4, 0x0008($t8)
	lw      $t5, 0x0020($sp)
	lh      $t7, 0x0002($t9)
	sll     $t3, $t2, 4
	addu    $t6, $t5, $t3
	addu    $t1, $t7, $t4
	sh      $t1, 0x0022($t6)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0003
	lw      $t0, 0x002C($sp)
	div     $0, $t8, $at
	mflo    $t9
	lui     $t2, %hi(weather)
	addu    $t7, $t0, $t9
	lw      $t2, %lo(weather)($t2)
	sll     $t4, $t7, 3
	lw      $t1, 0x0038($sp)
	subu    $t4, $t4, $t7
	sll     $t4, $t4, 3
	addu    $t5, $t2, $t4
	lw      $t3, 0x000C($t5)
	lw      $t9, 0x0020($sp)
	lh      $t6, 0x0004($t1)
	sll     $t7, $t8, 4
	addu    $t2, $t9, $t7
	addu    $t0, $t6, $t3
	sh      $t0, 0x0024($t2)
	lw      $t4, 0x0024($sp)
	addiu   $t5, $t4, 0x0003
	slti    $at, $t5, 0x000F
	bnez    $at, 16$
	sw      $t5, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	sw      $t1, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li.u    $t6, 0x04E000F0
	li.l    $t6, 0x04E000F0
	sw      $t6, 0x0000($t3)
	lw      $t8, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t7)
	b       257$
	nop
257$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

weather_802DF748:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $a2, 0x0088($sp)
	sw      $a3, 0x008C($sp)
	sw      $s0, 0x0020($sp)
	la.u    $t7, weather_80331788
	la.l    $t7, weather_80331788
	lw      $at, 0x0000($t7)
	addiu   $t6, $sp, 0x0068
	sw      $at, 0x0000($t6)
	lhu     $at, 0x0004($t7)
	sh      $at, 0x0004($t6)
	la.u    $t1, weather_80331790
	la.l    $t1, weather_80331790
	lw      $at, 0x0000($t1)
	addiu   $t0, $sp, 0x0060
	sw      $at, 0x0000($t0)
	lhu     $at, 0x0004($t1)
	sh      $at, 0x0004($t0)
	la.u    $t5, weather_80331798
	la.l    $t5, weather_80331798
	lw      $at, 0x0000($t5)
	addiu   $t4, $sp, 0x0058
	sw      $at, 0x0000($t4)
	lhu     $at, 0x0004($t5)
	sh      $at, 0x0004($t4)
	lui     $a0, %hi(weather_80361414)
	lh      $a0, %lo(weather_80361414)($a0)
	sll     $t7, $a0, 2
	subu    $t7, $t7, $a0
	sll     $t7, $t7, 1
	move    $a0, $t7
	sll     $t9, $a0, 3
	move    $a0, $t9
	jal     gfx_alloc
	addiu   $a0, $a0, 0x0018
	sw      $v0, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	sw      $t2, 0x0050($sp)
	lw      $t0, 0x0054($sp)
	bnez    $t0, 46$
	nop
	b       283$
	move    $v0, $0
46$:
	lw      $a0, 0x0080($sp)
	jal     weather_802DDF38
	lw      $a1, 0x0084($sp)
	addiu   $t1, $sp, 0x0076
	sw      $t1, 0x0010($sp)
	lw      $a0, 0x008C($sp)
	lw      $a1, 0x0088($sp)
	addiu   $a2, $sp, 0x007A
	jal     weather_802DE114
	addiu   $a3, $sp, 0x0078
	lw      $s0, 0x0080($sp)
	li      $at, 0x0001
	beq     $s0, $at, 68$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 92$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 116$
	nop
	b       140$
	nop
68$:
	lh      $t3, 0x007A($sp)
	slti    $at, $t3, 0x00FB
	bnez    $at, 76$
	nop
	lh      $t8, 0x007A($sp)
	addiu   $t4, $t8, -0x00FA
	b       78$
	sh      $t4, 0x007A($sp)
76$:
	li      $t5, 0x0001
	sh      $t5, 0x007A($sp)
78$:
	lh      $t6, 0x0076($sp)
	lw      $a0, 0x008C($sp)
	addiu   $a1, $sp, 0x0070
	lh      $a2, 0x007A($sp)
	lh      $a3, 0x0078($sp)
	jal     weather_802DE23C
	sw      $t6, 0x0010($sp)
	addiu   $t7, $sp, 0x0070
	lh      $a0, 0x0000($t7)
	lh      $a1, 0x0002($t7)
	jal     weather_802DE458
	lh      $a2, 0x0004($t7)
	b       140$
	nop
92$:
	lh      $t9, 0x007A($sp)
	slti    $at, $t9, 0x01F5
	bnez    $at, 100$
	nop
	lh      $t2, 0x007A($sp)
	addiu   $t0, $t2, -0x01F4
	b       102$
	sh      $t0, 0x007A($sp)
100$:
	li      $t1, 0x0001
	sh      $t1, 0x007A($sp)
102$:
	lh      $t3, 0x0076($sp)
	lw      $a0, 0x008C($sp)
	addiu   $a1, $sp, 0x0070
	lh      $a2, 0x007A($sp)
	lh      $a3, 0x0078($sp)
	jal     weather_802DE23C
	sw      $t3, 0x0010($sp)
	addiu   $t8, $sp, 0x0070
	lh      $a0, 0x0000($t8)
	lh      $a1, 0x0002($t8)
	jal     weather_802DED38
	lh      $a2, 0x0004($t8)
	b       140$
	nop
116$:
	lh      $t4, 0x007A($sp)
	slti    $at, $t4, 0x00FB
	bnez    $at, 124$
	nop
	lh      $t5, 0x007A($sp)
	addiu   $t6, $t5, -0x00FA
	b       126$
	sh      $t6, 0x007A($sp)
124$:
	li      $t7, 0x0001
	sh      $t7, 0x007A($sp)
126$:
	lh      $t9, 0x0076($sp)
	lw      $a0, 0x008C($sp)
	addiu   $a1, $sp, 0x0070
	lh      $a2, 0x007A($sp)
	lh      $a3, 0x0078($sp)
	jal     weather_802DE23C
	sw      $t9, 0x0010($sp)
	addiu   $t2, $sp, 0x0070
	lh      $a0, 0x0000($t2)
	lh      $a1, 0x0002($t2)
	jal     weather_802DE888
	lh      $a2, 0x0004($t2)
	b       140$
	nop
140$:
	lh      $t0, 0x0076($sp)
	addiu   $a0, $sp, 0x0068
	addiu   $a1, $sp, 0x0060
	addiu   $a2, $sp, 0x0058
	lh      $a3, 0x0078($sp)
	jal     weather_802DEF2C
	sw      $t0, 0x0010($sp)
	lw      $t1, 0x0080($sp)
	li      $at, 0x0001
	beq     $t1, $at, 154$
	nop
	li      $at, 0x0003
	bne     $t1, $at, 167$
	nop
154$:
	lw      $t3, 0x0050($sp)
	addiu   $t8, $t3, 0x0008
	sw      $t8, 0x0050($sp)
	sw      $t3, 0x004C($sp)
	lw      $t5, 0x004C($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x004C($sp)
	la.u    $t6, gfx_snow_a
	la.l    $t6, gfx_snow_a
	sw      $t6, 0x0004($t7)
	b       182$
	nop
167$:
	lw      $t9, 0x0080($sp)
	li      $at, 0x0002
	bne     $t9, $at, 182$
	nop
	lw      $t2, 0x0050($sp)
	addiu   $t0, $t2, 0x0008
	sw      $t0, 0x0050($sp)
	sw      $t2, 0x0048($sp)
	lw      $t3, 0x0048($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0048($sp)
	la.u    $t8, gfx_snow_b
	la.l    $t8, gfx_snow_b
	sw      $t8, 0x0004($t4)
182$:
	lui     $t5, %hi(weather_80361414)
	lh      $t5, %lo(weather_80361414)($t5)
	sw      $0, 0x007C($sp)
	blez    $t5, 259$
	nop
187$:
	lw      $t6, 0x0050($sp)
	addiu   $t7, $sp, 0x0058
	sw      $t7, 0x0010($sp)
	addiu   $t9, $t6, 0x0008
	sw      $t9, 0x0050($sp)
	lw      $a1, 0x007C($sp)
	addiu   $a2, $sp, 0x0068
	addiu   $a3, $sp, 0x0060
	jal     weather_802DF334
	move    $a0, $t6
	lw      $t2, 0x0050($sp)
	addiu   $t0, $t2, 0x0008
	sw      $t0, 0x0050($sp)
	sw      $t2, 0x0044($sp)
	lw      $t3, 0x0044($sp)
	li      $t1, 0xBF000000
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0044($sp)
	li      $t8, 0x0A14
	sw      $t8, 0x0004($t4)
	lw      $t5, 0x0050($sp)
	addiu   $t7, $t5, 0x0008
	sw      $t7, 0x0050($sp)
	sw      $t5, 0x0040($sp)
	lw      $t9, 0x0040($sp)
	li      $t6, 0xBF000000
	sw      $t6, 0x0000($t9)
	lw      $t0, 0x0040($sp)
	li.u    $t2, 0x001E2832
	li.l    $t2, 0x001E2832
	sw      $t2, 0x0004($t0)
	lw      $t1, 0x0050($sp)
	addiu   $t3, $t1, 0x0008
	sw      $t3, 0x0050($sp)
	sw      $t1, 0x003C($sp)
	lw      $t4, 0x003C($sp)
	li      $t8, 0xBF000000
	sw      $t8, 0x0000($t4)
	lw      $t7, 0x003C($sp)
	li.u    $t5, 0x003C4650
	li.l    $t5, 0x003C4650
	sw      $t5, 0x0004($t7)
	lw      $t6, 0x0050($sp)
	addiu   $t9, $t6, 0x0008
	sw      $t9, 0x0050($sp)
	sw      $t6, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	li      $t2, 0xBF000000
	sw      $t2, 0x0000($t0)
	lw      $t3, 0x0038($sp)
	li.u    $t1, 0x005A646E
	li.l    $t1, 0x005A646E
	sw      $t1, 0x0004($t3)
	lw      $t8, 0x0050($sp)
	addiu   $t4, $t8, 0x0008
	sw      $t4, 0x0050($sp)
	sw      $t8, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	li      $t5, 0xBF000000
	sw      $t5, 0x0000($t7)
	lw      $t9, 0x0034($sp)
	li.u    $t6, 0x0078828C
	li.l    $t6, 0x0078828C
	sw      $t6, 0x0004($t9)
	lw      $t2, 0x007C($sp)
	lui     $t1, %hi(weather_80361414)
	lh      $t1, %lo(weather_80361414)($t1)
	addiu   $t0, $t2, 0x0005
	sw      $t0, 0x007C($sp)
	slt     $at, $t0, $t1
	bnez    $at, 187$
	nop
259$:
	lw      $t3, 0x0050($sp)
	addiu   $t8, $t3, 0x0008
	sw      $t8, 0x0050($sp)
	sw      $t3, 0x0030($sp)
	lw      $t5, 0x0030($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0030($sp)
	la.u    $t7, gfx_weather_end
	la.l    $t7, gfx_weather_end
	sw      $t7, 0x0004($t6)
	lw      $t9, 0x0050($sp)
	addiu   $t2, $t9, 0x0008
	sw      $t2, 0x0050($sp)
	sw      $t9, 0x002C($sp)
	lw      $t1, 0x002C($sp)
	li      $t0, 0xB8000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x002C($sp)
	sw      $0, 0x0004($t3)
	b       283$
	lw      $v0, 0x0054($sp)
	b       283$
	nop
283$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

.globl weather_draw
weather_draw:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	jal     msg_get
	nop
	li      $at, -0x0001
	beq     $v0, $at, 14$
	nop
	b       93$
	move    $v0, $0
14$:
	lui     $t6, %hi(weather_80331750)
	lb      $t6, %lo(weather_80331750)($t6)
	beqz    $t6, 22$
	nop
	lw      $t7, 0x0028($sp)
	beq     $t6, $t7, 22$
	nop
	sw      $0, 0x0028($sp)
22$:
	lw      $t8, 0x0028($sp)
	slti    $at, $t8, 0x000A
	bnez    $at, 34$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     lava_802E1F48
	lw      $a3, 0x0034($sp)
	sw      $v0, 0x0024($sp)
	b       93$
	lw      $v0, 0x0024($sp)
34$:
	lui     $t9, %hi(weather_80331750)
	lb      $t9, %lo(weather_80331750)($t9)
	bnez    $t9, 44$
	nop
	jal     weather_802DDDF0
	lw      $a0, 0x0028($sp)
	bnez    $v0, 44$
	nop
	b       93$
	move    $v0, $0
44$:
	lw      $s0, 0x0028($sp)
	beqz    $s0, 58$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 63$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 71$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 79$
	nop
	b       87$
	nop
58$:
	lui     $a0, %hi(weather)
	jal     weather_802DE0BC
	lw      $a0, %lo(weather)($a0)
	b       93$
	move    $v0, $0
63$:
	li      $a0, 0x0001
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_802DF748
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       89$
	nop
71$:
	li      $a0, 0x0002
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_802DF748
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       89$
	nop
79$:
	li      $a0, 0x0003
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0034($sp)
	jal     weather_802DF748
	lw      $a3, 0x0030($sp)
	sw      $v0, 0x0024($sp)
	b       89$
	nop
87$:
	b       93$
	move    $v0, $0
89$:
	b       93$
	lw      $v0, 0x0024($sp)
	b       93$
	nop
93$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
