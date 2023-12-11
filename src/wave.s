.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

wave_802D29C0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x001C($sp)
	sh      $0, 0x001E($sp)
	lh      $t9, 0x001E($sp)
	lw      $t8, 0x0024($sp)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0000($t1)
	beqz    $t2, 39$
	nop
15$:
	lh      $t4, 0x001E($sp)
	lw      $t3, 0x0024($sp)
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	jal     segment_to_virtual
	lw      $a0, 0x0000($t6)
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	lh      $t8, 0x001C($sp)
	lh      $t9, 0x0000($t7)
	beq     $t9, $t8, 29$
	nop
	lw      $t0, 0x0018($sp)
	sb      $0, 0x0007($t0)
29$:
	lh      $t1, 0x001E($sp)
	addiu   $t2, $t1, 0x0001
	sh      $t2, 0x001E($sp)
	lh      $t3, 0x001E($sp)
	lw      $t4, 0x0024($sp)
	sll     $t5, $t3, 2
	addu    $t6, $t4, $t5
	lw      $t7, 0x0000($t6)
	bnez    $t7, 15$
	nop
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D2A74:
	addiu   $sp, $sp, -0x0008
	lui     $at, %hi(wave_80361308)
	lwc1    $f4, %lo(wave_80361308)($at)
	lwc1    $f6, 0x0014($a0)
	li      $at, 0x40490000
	mtc1    $at, $f17
	sub.s   $f8, $f4, $f6
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	add.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	mtc1    $0, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	c.lt.d  $f8, $f10
	nop
	bc1f    23$
	nop
	mtc1    $0, $f16
	b       31$
	swc1    $f16, 0x0004($sp)
23$:
	lwc1    $f18, 0x0004($sp)
	lwc1    $f4, 0x0074($a0)
	c.lt.s  $f4, $f18
	nop
	bc1f    31$
	nop
	lwc1    $f6, 0x0074($a0)
	swc1    $f6, 0x0004($sp)
31$:
	b       35$
	lwc1    $f0, 0x0004($sp)
	b       35$
	nop
35$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wave_802D2B08:
	addiu   $sp, $sp, -0x0008
	lui     $at, %hi(wave_8036130C)
	lwc1    $f6, %lo(wave_8036130C)($at)
	lwc1    $f4, 0x0018($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0004($sp)
	mtc1    $0, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    17$
	nop
	mtc1    $0, $f4
	b       25$
	swc1    $f4, 0x0004($sp)
17$:
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0074($a0)
	c.lt.s  $f8, $f6
	nop
	bc1f    25$
	nop
	lwc1    $f10, 0x0074($a0)
	swc1    $f10, 0x0004($sp)
25$:
	b       29$
	lwc1    $f0, 0x0004($sp)
	b       29$
	nop
29$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wave_802D2B84:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lb      $s0, 0x002F($sp)
	li      $at, 0x003C
	beq     $s0, $at, 17$
	nop
	li      $at, 0x0046
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0050
	beq     $s0, $at, 29$
	nop
	b       40$
	nop
17$:
	jal     wave_802D2A74
	lw      $a0, 0x0028($sp)
	b       42$
	nop
	b       40$
	nop
23$:
	jal     wave_802D2B08
	lw      $a0, 0x0028($sp)
	b       42$
	nop
	b       40$
	nop
29$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f9
	lwc1    $f4, 0x0074($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	b       42$
	cvt.s.d $f0, $f10
	b       40$
	nop
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

wave_802D2C40:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0074($a0)
	li      $at, 0x40100000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x000C($sp)
	lwc1    $f18, 0x0074($a0)
	li      $at, 0x40000000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	div.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0008($sp)
	lwc1    $f16, 0x0074($a0)
	li      $at, 0x40080000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	li      $at, 0x40100000
	mul.d   $f6, $f18, $f4
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0004($sp)
	lb      $t6, 0x0006($a0)
	andi    $t7, $t6, 0x0020
	beqz    $t7, 38$
	nop
	b       78$
	lwc1    $f0, 0x000C($sp)
	b       76$
	nop
38$:
	lb      $t8, 0x0006($a0)
	andi    $t9, $t8, 0x0010
	beqz    $t9, 46$
	nop
	b       78$
	lwc1    $f0, 0x0008($sp)
	b       76$
	nop
46$:
	lb      $t0, 0x0006($a0)
	andi    $t1, $t0, 0x0008
	beqz    $t1, 54$
	nop
	b       78$
	lwc1    $f0, 0x0004($sp)
	b       76$
	nop
54$:
	lb      $t2, 0x0006($a0)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 62$
	nop
	b       78$
	lwc1    $f0, 0x000C($sp)
	b       76$
	nop
62$:
	lb      $t4, 0x0006($a0)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 70$
	nop
	b       78$
	lwc1    $f0, 0x0008($sp)
	b       76$
	nop
70$:
	lb      $t6, 0x0006($a0)
	andi    $t7, $t6, 0x0001
	beqz    $t7, 76$
	nop
	b       78$
	lwc1    $f0, 0x0004($sp)
76$:
	b       78$
	nop
78$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

wave_802D2D80:
	addiu   $sp, $sp, -0x0008
	lui     $at, %hi(wave_80361304)
	lwc1    $f4, %lo(wave_80361304)($at)
	lwc1    $f6, 0x0010($a0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0004($sp)
	mtc1    $0, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	c.lt.d  $f16, $f18
	nop
	bc1f    17$
	nop
	mtc1    $0, $f4
	b       25$
	swc1    $f4, 0x0004($sp)
17$:
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0074($a0)
	c.lt.s  $f8, $f6
	nop
	bc1f    25$
	nop
	lwc1    $f10, 0x0074($a0)
	swc1    $f10, 0x0004($sp)
25$:
	b       29$
	lwc1    $f0, 0x0004($sp)
	b       29$
	nop
29$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wave_802D2DFC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lb      $s0, 0x002F($sp)
	li      $at, 0x001E
	beq     $s0, $at, 17$
	nop
	li      $at, 0x0028
	beq     $s0, $at, 23$
	nop
	li      $at, 0x0032
	beq     $s0, $at, 29$
	nop
	b       40$
	nop
17$:
	jal     wave_802D2C40
	lw      $a0, 0x0028($sp)
	b       42$
	nop
	b       40$
	nop
23$:
	jal     wave_802D2D80
	lw      $a0, 0x0028($sp)
	b       42$
	nop
	b       40$
	nop
29$:
	lw      $t6, 0x0028($sp)
	li      $at, 0x40000000
	mtc1    $at, $f9
	lwc1    $f4, 0x0074($t6)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	b       42$
	cvt.s.d $f0, $f10
	b       40$
	nop
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

wave_802D2EB8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x002C($sp)
	jal     wave_802D29C0
	lw      $a1, 0x0030($sp)
	lb      $s0, 0x002B($sp)
	li      $at, 0x0001
	beq     $s0, $at, 19$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 33$
	nop
	b       47$
	nop
19$:
	lw      $t6, 0x002C($sp)
	lwc1    $f4, 0x0020($t6)
	swc1    $f4, 0x001C($t6)
	lw      $t7, 0x002C($sp)
	lwc1    $f6, 0x002C($t7)
	swc1    $f6, 0x0028($t7)
	lw      $t8, 0x002C($sp)
	lwc1    $f8, 0x0038($t8)
	swc1    $f8, 0x0034($t8)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0044($t9)
	swc1    $f10, 0x0040($t9)
	b       47$
	nop
33$:
	lw      $t0, 0x002C($sp)
	lwc1    $f16, 0x0024($t0)
	swc1    $f16, 0x001C($t0)
	lw      $t1, 0x002C($sp)
	lwc1    $f18, 0x0030($t1)
	swc1    $f18, 0x0028($t1)
	lw      $t2, 0x002C($sp)
	lwc1    $f4, 0x003C($t2)
	swc1    $f4, 0x0034($t2)
	lw      $t3, 0x002C($sp)
	lwc1    $f6, 0x0048($t3)
	swc1    $f6, 0x0040($t3)
	b       47$
	nop
47$:
	lb      $t4, 0x002B($sp)
	lw      $t5, 0x002C($sp)
	sb      $t4, 0x0007($t5)
	lw      $a0, 0x002C($sp)
	jal     wave_802D2DFC
	lb      $a1, 0x0037($sp)
	lw      $t6, 0x002C($sp)
	swc1    $f0, 0x0050($t6)
	lw      $a0, 0x002C($sp)
	jal     wave_802D2B84
	lb      $a1, 0x003B($sp)
	lw      $t7, 0x002C($sp)
	swc1    $f0, 0x0054($t7)
	lui     $at, %hi(wave_80361308)
	lwc1    $f8, %lo(wave_80361308)($at)
	lui     $at, %hi(water_80330F3C)
	swc1    $f8, %lo(water_80330F3C)($at)
	lb      $t8, 0x003F($sp)
	li      $at, 0x0064
	bne     $t8, $at, 71$
	nop
	mtc1    $0, $f10
	lw      $t9, 0x002C($sp)
	swc1    $f10, 0x004C($t9)
71$:
	lw      $t0, 0x002C($sp)
	lui     $at, %hi(wavedatap)
	sw      $t0, %lo(wavedatap)($at)
	b       76$
	nop
76$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

wave_802D2FFC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 20$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, 36$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 52$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
52$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 68$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
68$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 84$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
84$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 98$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D319C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 20$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       50$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 36$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       50$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 50$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D327C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 20$
	nop
	li      $t9, 0x0050
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, 36$
	nop
	li      $t4, 0x0050
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 52$
	nop
	li      $t9, 0x0050
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
52$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 68$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
68$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 84$
	nop
	li      $t9, 0x003C
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       98$
	nop
84$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 98$
	nop
	li      $t4, 0x003C
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D341C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0004
	beqz    $t8, 20$
	nop
	li      $t9, 0x003C
	li      $t0, -0x0038
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       50$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0002
	beqz    $t3, 36$
	nop
	li      $t4, 0x003C
	li      $t5, -0x0038
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
	b       50$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 50$
	nop
	li      $t9, 0x003C
	li      $t0, -0x0038
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x001E
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D34FC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 20$
	nop
	li      $t9, 0x0046
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       102$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, 36$
	nop
	li      $t4, 0x0046
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       102$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 52$
	nop
	li      $t9, 0x0046
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       102$
	nop
52$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0070($t1)
	beqz    $t2, 102$
	nop
	lw      $t3, 0x0020($sp)
	lb      $t4, 0x0005($t3)
	andi    $t5, $t4, 0x0004
	beqz    $t5, 72$
	nop
	li      $t6, 0x0046
	li      $t7, 0x0064
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       102$
	nop
72$:
	lw      $t8, 0x0020($sp)
	lb      $t9, 0x0005($t8)
	andi    $t0, $t9, 0x0002
	beqz    $t0, 88$
	nop
	li      $t1, 0x0046
	li      $t2, 0x0064
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       102$
	nop
88$:
	lw      $t3, 0x0020($sp)
	lb      $t4, 0x0005($t3)
	andi    $t5, $t4, 0x0001
	beqz    $t5, 102$
	nop
	li      $t6, 0x0046
	li      $t7, 0x0064
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
102$:
	b       104$
	nop
104$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D36AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0070($t6)
	beqz    $t7, 54$
	nop
	lw      $t8, 0x0020($sp)
	lb      $t9, 0x0005($t8)
	andi    $t0, $t9, 0x0004
	beqz    $t0, 24$
	nop
	li      $t1, 0x0046
	li      $t2, 0x0064
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       54$
	nop
24$:
	lw      $t3, 0x0020($sp)
	lb      $t4, 0x0005($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 40$
	nop
	li      $t6, 0x0046
	li      $t7, 0x0064
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       54$
	nop
40$:
	lw      $t8, 0x0020($sp)
	lb      $t9, 0x0005($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 54$
	nop
	li      $t1, 0x0046
	li      $t2, 0x0064
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D379C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 20$
	nop
	li      $t9, 0x0050
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
20$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0006($t1)
	andi    $t3, $t2, 0x0010
	beqz    $t3, 36$
	nop
	li      $t4, 0x0050
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
36$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0006($t6)
	andi    $t8, $t7, 0x0008
	beqz    $t8, 52$
	nop
	li      $t9, 0x0050
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0032
	b       98$
	nop
52$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0005($t1)
	andi    $t3, $t2, 0x0004
	beqz    $t3, 68$
	nop
	li      $t4, 0x0046
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       98$
	nop
68$:
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0005($t6)
	andi    $t8, $t7, 0x0002
	beqz    $t8, 84$
	nop
	li      $t9, 0x0046
	li      $t0, 0x0064
	sw      $t0, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       98$
	nop
84$:
	lw      $t1, 0x0020($sp)
	lb      $t2, 0x0005($t1)
	andi    $t3, $t2, 0x0001
	beqz    $t3, 98$
	nop
	li      $t4, 0x0046
	li      $t5, 0x0064
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
98$:
	b       100$
	nop
100$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D393C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0070($t6)
	beqz    $t7, 54$
	nop
	lw      $t8, 0x0020($sp)
	lb      $t9, 0x0005($t8)
	andi    $t0, $t9, 0x0004
	beqz    $t0, 24$
	nop
	li      $t1, 0x0046
	li      $t2, -0x0038
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       54$
	nop
24$:
	lw      $t3, 0x0020($sp)
	lb      $t4, 0x0005($t3)
	andi    $t5, $t4, 0x0002
	beqz    $t5, 40$
	nop
	li      $t6, 0x0046
	li      $t7, -0x0038
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
	b       54$
	nop
40$:
	lw      $t8, 0x0020($sp)
	lb      $t9, 0x0005($t8)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 54$
	nop
	li      $t1, 0x0046
	li      $t2, -0x0038
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0002
	lw      $a1, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     wave_802D2EB8
	li      $a3, 0x0028
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D3A2C:
	addiu   $sp, $sp, -0x0008
	lh      $t6, 0x0000($a0)
	sh      $t6, 0x0006($sp)
	sb      $0, 0x0005($sp)
	sb      $0, 0x0004($sp)
	sb      $0, 0x0003($sp)
	sb      $0, 0x0002($sp)
	sb      $0, 0x0001($sp)
	sb      $0, 0x0000($sp)
	lh      $t8, 0x0006($sp)
	lui     $t7, %hi(wave_80361300)
	lh      $t7, %lo(wave_80361300)($t7)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	addiu   $t0, $t9, 0x00A6
	bne     $t7, $t0, 19$
	nop
	li      $t1, 0x0020
	sb      $t1, 0x0005($sp)
19$:
	lh      $t3, 0x0006($sp)
	lui     $t2, %hi(wave_80361300)
	lh      $t2, %lo(wave_80361300)($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	addiu   $t5, $t4, 0x00A7
	bne     $t2, $t5, 29$
	nop
	li      $t6, 0x0010
	sb      $t6, 0x0004($sp)
29$:
	lh      $t9, 0x0006($sp)
	lui     $t8, %hi(wave_80361300)
	lh      $t8, %lo(wave_80361300)($t8)
	sll     $t7, $t9, 2
	subu    $t7, $t7, $t9
	addiu   $t0, $t7, 0x00A8
	bne     $t8, $t0, 39$
	nop
	li      $t1, 0x0008
	sb      $t1, 0x0003($sp)
39$:
	lh      $t4, 0x0006($sp)
	lui     $t3, %hi(wave_80361300)
	lh      $t3, %lo(wave_80361300)($t3)
	sll     $t2, $t4, 2
	subu    $t2, $t2, $t4
	addiu   $t5, $t2, 0x00D3
	bne     $t3, $t5, 49$
	nop
	li      $t6, 0x0004
	sb      $t6, 0x0002($sp)
49$:
	lh      $t7, 0x0006($sp)
	lui     $t9, %hi(wave_80361300)
	lh      $t9, %lo(wave_80361300)($t9)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	addiu   $t0, $t8, 0x00D4
	bne     $t9, $t0, 59$
	nop
	li      $t1, 0x0002
	sb      $t1, 0x0001($sp)
59$:
	lh      $t2, 0x0006($sp)
	lui     $t4, %hi(wave_80361300)
	lh      $t4, %lo(wave_80361300)($t4)
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	addiu   $t5, $t3, 0x00D5
	bne     $t4, $t5, 69$
	nop
	li      $t6, 0x0001
	sb      $t6, 0x0000($sp)
69$:
	lb      $t7, 0x0005($a0)
	sb      $t7, 0x0004($a0)
	lb      $t8, 0x0005($sp)
	lb      $t9, 0x0004($sp)
	lb      $t1, 0x0003($sp)
	lb      $t3, 0x0002($sp)
	lb      $t5, 0x0001($sp)
	addu    $t0, $t8, $t9
	lb      $t7, 0x0000($sp)
	addu    $t2, $t0, $t1
	addu    $t4, $t2, $t3
	addu    $t6, $t4, $t5
	addu    $t8, $t6, $t7
	sb      $t8, 0x0005($a0)
	lb      $t9, 0x0004($a0)
	lb      $t0, 0x0005($a0)
	lb      $t2, 0x0005($a0)
	xor     $t1, $t9, $t0
	and     $t3, $t1, $t2
	sb      $t3, 0x0006($a0)
	lb      $t4, 0x006F($a0)
	sb      $t4, 0x006E($a0)
	lui     $at, %hi(wave_80361308)
	lwc1    $f4, %lo(wave_80361308)($at)
	lwc1    $f6, 0x0014($a0)
	c.lt.s  $f4, $f6
	nop
	bc1f    101$
	nop
	li      $t5, 0x0001
	b       102$
	sb      $t5, 0x006F($a0)
101$:
	sb      $0, 0x006F($a0)
102$:
	lb      $t6, 0x006E($a0)
	lb      $t7, 0x006F($a0)
	lb      $t9, 0x006F($a0)
	xor     $t8, $t6, $t7
	and     $t0, $t8, $t9
	sb      $t0, 0x0070($a0)
	b       110$
	nop
110$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wave_802D3BEC:
	lui     $t6, %hi(wave_80331358)
	lui     $t7, %hi(wave_8033135C)
	lh      $t7, %lo(wave_8033135C)($t7)
	lh      $t6, %lo(wave_80331358)($t6)
	beq     $t6, $t7, 18$
	nop
	lwc1    $f4, 0x001C($a0)
	lwc1    $f6, 0x0028($a0)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($a0)
	lwc1    $f10, 0x004C($a0)
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x004C($a0)
18$:
	lb      $t8, 0x006C($a0)
	li      $at, 0x000A
	bne     $t8, $at, 36$
	nop
	lwc1    $f8, 0x001C($a0)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	c.le.d  $f10, $f16
	nop
	bc1f    34$
	nop
	sb      $0, 0x0007($a0)
	lui     $at, %hi(wavedatap)
	sw      $0, %lo(wavedatap)($at)
34$:
	b       60$
	nop
36$:
	lb      $t9, 0x006C($a0)
	li      $at, 0x0014
	bne     $t9, $at, 60$
	nop
	lb      $t0, 0x0007($a0)
	li      $at, 0x0002
	bne     $t0, $at, 60$
	nop
	lwc1    $f18, 0x001C($a0)
	lwc1    $f4, 0x0020($a0)
	c.le.s  $f18, $f4
	nop
	bc1f    60$
	nop
	li      $t1, 0x0001
	sb      $t1, 0x0007($a0)
	lwc1    $f6, 0x0020($a0)
	swc1    $f6, 0x001C($a0)
	lwc1    $f8, 0x002C($a0)
	swc1    $f8, 0x0028($a0)
	lwc1    $f10, 0x0038($a0)
	swc1    $f10, 0x0034($a0)
	lwc1    $f16, 0x0044($a0)
	swc1    $f16, 0x0040($a0)
60$:
	jr      $ra
	nop
	jr      $ra
	nop

wave_802D3CEC:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	lw      $t6, 0x0040($sp)
	lwc1    $f4, 0x001C($t6)
	swc1    $f4, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lwc1    $f6, 0x0034($t7)
	swc1    $f6, 0x0038($sp)
	lw      $t8, 0x0040($sp)
	lwc1    $f8, 0x0040($t8)
	swc1    $f8, 0x0034($sp)
	lw      $t9, 0x0040($sp)
	lwc1    $f10, 0x004C($t9)
	swc1    $f10, 0x0030($sp)
	lw      $t0, 0x0040($sp)
	lwc1    $f16, 0x0050($t0)
	swc1    $f16, 0x002C($sp)
	lw      $t1, 0x0040($sp)
	lwc1    $f18, 0x0054($t1)
	swc1    $f18, 0x0028($sp)
	lw      $t2, 0x0040($sp)
	lui     $at, %hi(wave_80338170)
	ldc1    $f8, %lo(wave_80338170)($at)
	lwc1    $f4, 0x0074($t2)
	lwc1    $f16, 0x0044($sp)
	cvt.d.s $f6, $f4
	cvt.d.s $f18, $f16
	div.d   $f10, $f6, $f8
	mul.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0044($sp)
	lw      $t3, 0x0040($sp)
	lui     $at, %hi(wave_80338178)
	ldc1    $f18, %lo(wave_80338178)($at)
	lwc1    $f8, 0x0074($t3)
	lwc1    $f4, 0x0048($sp)
	cvt.d.s $f16, $f8
	cvt.d.s $f6, $f4
	div.d   $f10, $f16, $f18
	mul.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x0048($sp)
	lwc1    $f16, 0x0028($sp)
	sub.s   $f6, $f18, $f4
	sub.s   $f18, $f8, $f16
	mul.s   $f10, $f6, $f6
	nop
	mul.s   $f4, $f18, $f18
	jal     sqrtf
	add.s   $f12, $f10, $f4
	swc1    $f0, 0x0024($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x0034($sp)
	div.s   $f16, $f6, $f8
	swc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f10, 0x0020($sp)
	c.lt.s  $f18, $f10
	nop
	bc1f    71$
	nop
	b       92$
	move    $v0, $0
	b       90$
	nop
71$:
	lwc1    $f4, 0x0038($sp)
	lui     $at, %hi(wave_80338180)
	ldc1    $f8, %lo(wave_80338180)($at)
	cvt.d.s $f6, $f4
	lwc1    $f18, 0x0030($sp)
	lwc1    $f10, 0x0020($sp)
	mul.d   $f16, $f6, $f8
	sub.s   $f4, $f18, $f10
	cvt.d.s $f6, $f4
	mul.d   $f8, $f16, $f6
	jal     cosf
	cvt.s.d $f12, $f8
	lwc1    $f18, 0x003C($sp)
	mul.s   $f10, $f0, $f18
	swc1    $f10, 0x001C($sp)
	jal     roundftos
	lwc1    $f12, 0x001C($sp)
	b       92$
	nop
90$:
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

wave_802D3E6C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sh      $0, 0x001E($sp)
	lh      $t6, 0x0026($sp)
	beqz    $t6, 22$
	nop
	lh      $t7, 0x002A($sp)
	lh      $t8, 0x002E($sp)
	lw      $a0, 0x0020($sp)
	mtc1    $t7, $f4
	mtc1    $t8, $f6
	cvt.s.w $f4, $f4
	cvt.s.w $f6, $f6
	mfc1    $a1, $f4
	mfc1    $a2, $f6
	jal     wave_802D3CEC
	nop
	sh      $v0, 0x001E($sp)
22$:
	b       26$
	lh      $v0, 0x001E($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D3EE4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lh      $a1, 0x002A($sp)
	lui     $a0, %hi(mem_heap)
	lw      $a0, %lo(mem_heap)($a0)
	sll     $t6, $a1, 2
	addu    $t6, $t6, $a1
	sll     $t6, $t6, 1
	jal     heap_alloc
	move    $a1, $t6
	lui     $at, %hi(wave_80361310)
	sw      $v0, %lo(wave_80361310)($at)
	lui     $t7, %hi(wave_80361310)
	lw      $t7, %lo(wave_80361310)($t7)
	bnez    $t7, 19$
	nop
19$:
	lh      $t8, 0x002A($sp)
	sh      $0, 0x001E($sp)
	blez    $t8, 84$
	nop
23$:
	lh      $t0, 0x001E($sp)
	lw      $t9, 0x0024($sp)
	lui     $t5, %hi(wave_80361310)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t2, $t1, 1
	lw      $t5, %lo(wave_80361310)($t5)
	sll     $t6, $t0, 2
	addu    $t3, $t9, $t2
	lh      $t4, 0x0002($t3)
	addu    $t6, $t6, $t0
	sll     $t6, $t6, 1
	addu    $t7, $t5, $t6
	sh      $t4, 0x0000($t7)
	lh      $t1, 0x001E($sp)
	lw      $t8, 0x0024($sp)
	lui     $t5, %hi(wave_80361310)
	sll     $t9, $t1, 2
	subu    $t9, $t9, $t1
	sll     $t2, $t9, 1
	lw      $t5, %lo(wave_80361310)($t5)
	sll     $t6, $t1, 2
	addu    $t3, $t8, $t2
	lh      $t0, 0x0004($t3)
	addu    $t6, $t6, $t1
	sll     $t6, $t6, 1
	addu    $t4, $t5, $t6
	sh      $t0, 0x0002($t4)
	lh      $t9, 0x001E($sp)
	lui     $t1, %hi(wave_80361310)
	lw      $t1, %lo(wave_80361310)($t1)
	lw      $t7, 0x0024($sp)
	sll     $t8, $t9, 2
	sll     $t5, $t9, 2
	addu    $t5, $t5, $t9
	subu    $t8, $t8, $t9
	sll     $t2, $t8, 1
	sll     $t5, $t5, 1
	addu    $t6, $t1, $t5
	addu    $t3, $t7, $t2
	lh      $a1, 0x0006($t3)
	lh      $a2, 0x0000($t6)
	lh      $a3, 0x0002($t6)
	jal     wave_802D3E6C
	lw      $a0, 0x0020($sp)
	lh      $t4, 0x001E($sp)
	lui     $t0, %hi(wave_80361310)
	lw      $t0, %lo(wave_80361310)($t0)
	sll     $t8, $t4, 2
	addu    $t8, $t8, $t4
	sll     $t8, $t8, 1
	addu    $t7, $t0, $t8
	sh      $v0, 0x0004($t7)
	lh      $t2, 0x001E($sp)
	lh      $t5, 0x002A($sp)
	addiu   $t3, $t2, 0x0001
	sll     $t9, $t3, 16
	sra     $t1, $t9, 16
	slt     $at, $t1, $t5
	bnez    $at, 23$
	sh      $t3, 0x001E($sp)
84$:
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

wave_802D404C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	lh      $a1, 0x0052($sp)
	lui     $a0, %hi(mem_heap)
	lw      $a0, %lo(mem_heap)($a0)
	sll     $t6, $a1, 2
	subu    $t6, $t6, $a1
	sll     $t6, $t6, 2
	jal     heap_alloc
	move    $a1, $t6
	lui     $at, %hi(wave_80361314)
	sw      $v0, %lo(wave_80361314)($at)
	lui     $t7, %hi(wave_80361314)
	lw      $t7, %lo(wave_80361314)($t7)
	bnez    $t7, 19$
	nop
19$:
	lh      $t8, 0x0052($sp)
	sh      $0, 0x0046($sp)
	blez    $t8, 229$
	nop
23$:
	lh      $t9, 0x004E($sp)
	lh      $t1, 0x0046($sp)
	sll     $t0, $t9, 2
	sll     $t2, $t1, 2
	subu    $t0, $t0, $t9
	subu    $t2, $t2, $t1
	addu    $t3, $t0, $t2
	addiu   $t4, $t3, 0x0002
	sh      $t4, 0x0044($sp)
	lh      $t6, 0x0044($sp)
	lw      $t5, 0x0048($sp)
	sll     $t7, $t6, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0000($t8)
	sh      $t9, 0x0042($sp)
	lh      $t0, 0x0044($sp)
	lw      $t1, 0x0048($sp)
	sll     $t2, $t0, 1
	addu    $t3, $t1, $t2
	lh      $t4, 0x0002($t3)
	sh      $t4, 0x0040($sp)
	lh      $t5, 0x0044($sp)
	lw      $t6, 0x0048($sp)
	sll     $t7, $t5, 1
	addu    $t8, $t6, $t7
	lh      $t9, 0x0004($t8)
	sh      $t9, 0x003E($sp)
	lh      $t1, 0x0042($sp)
	lui     $t0, %hi(wave_80361310)
	lw      $t0, %lo(wave_80361310)($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	addu    $t3, $t0, $t2
	lh      $t4, 0x0000($t3)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0038($sp)
	lh      $t6, 0x0042($sp)
	lui     $t5, %hi(wave_80361310)
	lw      $t5, %lo(wave_80361310)($t5)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0002($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0034($sp)
	lh      $t0, 0x0042($sp)
	lui     $t1, %hi(wave_80361310)
	lw      $t1, %lo(wave_80361310)($t1)
	sll     $t2, $t0, 2
	addu    $t2, $t2, $t0
	sll     $t2, $t2, 1
	addu    $t3, $t1, $t2
	lh      $t4, 0x0004($t3)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0030($sp)
	lh      $t5, 0x0040($sp)
	lui     $t6, %hi(wave_80361310)
	lw      $t6, %lo(wave_80361310)($t6)
	sll     $t7, $t5, 2
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 1
	addu    $t8, $t6, $t7
	lh      $t9, 0x0000($t8)
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x002C($sp)
	lh      $t1, 0x0040($sp)
	lui     $t0, %hi(wave_80361310)
	lw      $t0, %lo(wave_80361310)($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	addu    $t3, $t0, $t2
	lh      $t4, 0x0002($t3)
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0028($sp)
	lh      $t6, 0x0040($sp)
	lui     $t5, %hi(wave_80361310)
	lw      $t5, %lo(wave_80361310)($t5)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0004($t8)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0024($sp)
	lh      $t0, 0x003E($sp)
	lui     $t1, %hi(wave_80361310)
	lw      $t1, %lo(wave_80361310)($t1)
	sll     $t2, $t0, 2
	addu    $t2, $t2, $t0
	sll     $t2, $t2, 1
	addu    $t3, $t1, $t2
	lh      $t4, 0x0000($t3)
	mtc1    $t4, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0020($sp)
	lh      $t5, 0x003E($sp)
	lui     $t6, %hi(wave_80361310)
	lw      $t6, %lo(wave_80361310)($t6)
	sll     $t7, $t5, 2
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 1
	addu    $t8, $t6, $t7
	lh      $t9, 0x0002($t8)
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x001C($sp)
	lh      $t1, 0x003E($sp)
	lui     $t0, %hi(wave_80361310)
	lw      $t0, %lo(wave_80361310)($t0)
	sll     $t2, $t1, 2
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 1
	addu    $t3, $t0, $t2
	lh      $t4, 0x0004($t3)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f16, 0x0024($sp)
	sub.s   $f8, $f4, $f6
	lh      $t6, 0x0046($sp)
	lui     $t5, %hi(wave_80361314)
	sub.s   $f18, $f10, $f16
	lwc1    $f10, 0x0030($sp)
	lw      $t5, %lo(wave_80361314)($t5)
	sll     $t7, $t6, 2
	mul.s   $f6, $f8, $f18
	lwc1    $f18, 0x001C($sp)
	sub.s   $f8, $f16, $f10
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	sub.s   $f16, $f18, $f4
	addu    $t8, $t5, $t7
	mul.s   $f10, $f8, $f16
	sub.s   $f18, $f6, $f10
	swc1    $f18, 0x0000($t8)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f10, 0x002C($sp)
	sub.s   $f16, $f4, $f8
	lh      $t1, 0x0046($sp)
	lui     $t9, %hi(wave_80361314)
	sub.s   $f18, $f6, $f10
	lwc1    $f6, 0x0038($sp)
	lw      $t9, %lo(wave_80361314)($t9)
	sll     $t0, $t1, 2
	mul.s   $f8, $f16, $f18
	lwc1    $f18, 0x0018($sp)
	sub.s   $f16, $f10, $f6
	subu    $t0, $t0, $t1
	sll     $t0, $t0, 2
	sub.s   $f10, $f18, $f4
	addu    $t2, $t9, $t0
	mul.s   $f6, $f16, $f10
	sub.s   $f18, $f8, $f6
	swc1    $f18, 0x0004($t2)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f6, 0x0028($sp)
	sub.s   $f10, $f4, $f16
	lh      $t4, 0x0046($sp)
	lui     $t3, %hi(wave_80361314)
	sub.s   $f18, $f8, $f6
	lwc1    $f8, 0x0034($sp)
	lw      $t3, %lo(wave_80361314)($t3)
	sll     $t6, $t4, 2
	mul.s   $f16, $f10, $f18
	lwc1    $f18, 0x0020($sp)
	sub.s   $f10, $f6, $f8
	subu    $t6, $t6, $t4
	sll     $t6, $t6, 2
	sub.s   $f6, $f18, $f4
	addu    $t5, $t3, $t6
	mul.s   $f8, $f10, $f6
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0008($t5)
	lh      $t7, 0x0046($sp)
	lh      $t0, 0x0052($sp)
	addiu   $t8, $t7, 0x0001
	sll     $t1, $t8, 16
	sra     $t9, $t1, 16
	slt     $at, $t9, $t0
	bnez    $at, 23$
	sh      $t8, 0x0046($sp)
229$:
	b       231$
	nop
231$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

wave_802D43F8:
	addiu   $sp, $sp, -0x0008
	mtc1    $0, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f12
	c.lt.d  $f6, $f4
	nop
	bc1f    21$
	nop
	lui     $at, %hi(wave_80338188)
	ldc1    $f10, %lo(wave_80338188)($at)
	cvt.d.s $f8, $f12
	li      $at, 0x3FE00000
	mul.d   $f16, $f8, $f10
	mtc1    $at, $f19
	mtc1    $0, $f18
	nop
	add.d   $f4, $f16, $f18
	trunc.w.d $f6, $f4
	mfc1    $t7, $f6
	b       43$
	sb      $t7, 0x0007($sp)
21$:
	mtc1    $0, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f12
	c.lt.d  $f8, $f10
	nop
	bc1f    42$
	nop
	li      $at, 0x40600000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f12
	li      $at, 0x3FE00000
	mul.d   $f4, $f16, $f18
	mtc1    $at, $f7
	mtc1    $0, $f6
	nop
	sub.d   $f8, $f4, $f6
	trunc.w.d $f10, $f8
	mfc1    $t9, $f10
	b       43$
	sb      $t9, 0x0007($sp)
42$:
	sb      $0, 0x0007($sp)
43$:
	b       47$
	lb      $v0, 0x0007($sp)
	b       47$
	nop
47$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

wave_802D44BC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sh      $0, 0x002C($sp)
	lh      $t6, 0x003E($sp)
	sh      $0, 0x0032($sp)
	blez    $t6, 191$
	nop
9$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0028($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0024($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0020($sp)
	lh      $t8, 0x002C($sp)
	lw      $t7, 0x0038($sp)
	sll     $t9, $t8, 1
	addu    $t0, $t7, $t9
	lh      $t1, 0x0000($t0)
	sh      $t1, 0x002E($sp)
	lh      $t2, 0x002E($sp)
	sh      $0, 0x0030($sp)
	blez    $t2, 77$
	nop
28$:
	lh      $t3, 0x002C($sp)
	lh      $t4, 0x0030($sp)
	lw      $t8, 0x0038($sp)
	addu    $t5, $t3, $t4
	sll     $t6, $t5, 1
	addu    $t7, $t8, $t6
	lh      $t9, 0x0002($t7)
	sh      $t9, 0x0034($sp)
	lh      $t1, 0x0034($sp)
	lui     $t0, %hi(wave_80361314)
	lw      $t0, %lo(wave_80361314)($t0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t3, $t0, $t2
	lwc1    $f10, 0x0000($t3)
	lwc1    $f16, 0x0028($sp)
	add.s   $f18, $f16, $f10
	swc1    $f18, 0x0028($sp)
	lh      $t5, 0x0034($sp)
	lui     $t4, %hi(wave_80361314)
	lw      $t4, %lo(wave_80361314)($t4)
	sll     $t8, $t5, 2
	subu    $t8, $t8, $t5
	sll     $t8, $t8, 2
	addu    $t6, $t4, $t8
	lwc1    $f4, 0x0004($t6)
	lwc1    $f6, 0x0024($sp)
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0024($sp)
	lh      $t9, 0x0034($sp)
	lui     $t7, %hi(wave_80361314)
	lw      $t7, %lo(wave_80361314)($t7)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	addu    $t0, $t7, $t1
	lwc1    $f16, 0x0008($t0)
	lwc1    $f10, 0x0020($sp)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lh      $t2, 0x0030($sp)
	lh      $t8, 0x002E($sp)
	addiu   $t3, $t2, 0x0001
	sll     $t5, $t3, 16
	sra     $t4, $t5, 16
	slt     $at, $t4, $t8
	bnez    $at, 28$
	sh      $t3, 0x0030($sp)
77$:
	lh      $t6, 0x002C($sp)
	lh      $t9, 0x002E($sp)
	addu    $t7, $t6, $t9
	addiu   $t1, $t7, 0x0001
	sh      $t1, 0x002C($sp)
	lh      $t0, 0x002E($sp)
	lwc1    $f6, 0x0028($sp)
	mtc1    $t0, $f4
	nop
	cvt.s.w $f8, $f4
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
	lh      $t2, 0x002E($sp)
	lwc1    $f16, 0x0024($sp)
	mtc1    $t2, $f18
	nop
	cvt.s.w $f4, $f18
	div.s   $f6, $f16, $f4
	swc1    $f6, 0x0024($sp)
	lh      $t3, 0x002E($sp)
	lwc1    $f8, 0x0020($sp)
	mtc1    $t3, $f10
	nop
	cvt.s.w $f18, $f10
	div.s   $f16, $f8, $f18
	swc1    $f16, 0x0020($sp)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f16, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f8, $f10, $f10
	add.s   $f18, $f6, $f8
	mul.s   $f4, $f16, $f16
	jal     sqrtf
	add.s   $f12, $f18, $f4
	swc1    $f0, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f10
	c.eq.d  $f6, $f8
	nop
	bc1f    147$
	nop
	lh      $t4, 0x0032($sp)
	lui     $t5, %hi(wave_80361310)
	lw      $t5, %lo(wave_80361310)($t5)
	sll     $t8, $t4, 2
	addu    $t8, $t8, $t4
	sll     $t8, $t8, 1
	addu    $t6, $t5, $t8
	sb      $0, 0x0006($t6)
	lh      $t7, 0x0032($sp)
	lui     $t9, %hi(wave_80361310)
	lw      $t9, %lo(wave_80361310)($t9)
	sll     $t1, $t7, 2
	addu    $t1, $t1, $t7
	sll     $t1, $t1, 1
	addu    $t0, $t9, $t1
	sb      $0, 0x0007($t0)
	lh      $t3, 0x0032($sp)
	lui     $t2, %hi(wave_80361310)
	lw      $t2, %lo(wave_80361310)($t2)
	sll     $t4, $t3, 2
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	b       183$
	sb      $0, 0x0008($t5)
147$:
	lwc1    $f16, 0x0028($sp)
	lwc1    $f18, 0x001C($sp)
	jal     wave_802D43F8
	div.s   $f12, $f16, $f18
	lh      $t6, 0x0032($sp)
	lui     $t8, %hi(wave_80361310)
	lw      $t8, %lo(wave_80361310)($t8)
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	addu    $t9, $t8, $t7
	sb      $v0, 0x0006($t9)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f10, 0x001C($sp)
	jal     wave_802D43F8
	div.s   $f12, $f4, $f10
	lh      $t0, 0x0032($sp)
	lui     $t1, %hi(wave_80361310)
	lw      $t1, %lo(wave_80361310)($t1)
	sll     $t3, $t0, 2
	addu    $t3, $t3, $t0
	sll     $t3, $t3, 1
	addu    $t2, $t1, $t3
	sb      $v0, 0x0007($t2)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	jal     wave_802D43F8
	div.s   $f12, $f6, $f8
	lh      $t5, 0x0032($sp)
	lui     $t4, %hi(wave_80361310)
	lw      $t4, %lo(wave_80361310)($t4)
	sll     $t6, $t5, 2
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 1
	addu    $t8, $t4, $t6
	sb      $v0, 0x0008($t8)
183$:
	lh      $t7, 0x0032($sp)
	lh      $t3, 0x003E($sp)
	addiu   $t9, $t7, 0x0001
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	slt     $at, $t1, $t3
	bnez    $at, 9$
	sh      $t9, 0x0032($sp)
191$:
	b       193$
	nop
193$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

wave_802D47D0:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x00A0($sp)
	sw      $a1, 0x00A4($sp)
	sw      $a2, 0x00A8($sp)
	sw      $a3, 0x00AC($sp)
	sw      $s2, 0x0040($sp)
	sw      $s1, 0x003C($sp)
	sw      $s0, 0x0038($sp)
	lh      $t6, 0x00B6($sp)
	li      $at, 0x0005
	div     $0, $t6, $at
	mflo    $t7
	sh      $t7, 0x0090($sp)
	nop
	lh      $t8, 0x00B6($sp)
	li      $at, 0x0005
	div     $0, $t8, $at
	mfhi    $t9
	sh      $t9, 0x008E($sp)
	nop
	lh      $t0, 0x00B6($sp)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sh      $t1, 0x008C($sp)
	lh      $t2, 0x0090($sp)
	lh      $t4, 0x008E($sp)
	sll     $t3, $t2, 1
	addu    $t5, $t3, $t4
	addiu   $t6, $t5, 0x0007
	sh      $t6, 0x008A($sp)
	lh      $a0, 0x008C($sp)
	sll     $t7, $a0, 4
	jal     gfx_alloc
	move    $a0, $t7
	sw      $v0, 0x0084($sp)
	lh      $a0, 0x008A($sp)
	sll     $t8, $a0, 3
	jal     gfx_alloc
	move    $a0, $t8
	sw      $v0, 0x0080($sp)
	lw      $t9, 0x0080($sp)
	sw      $t9, 0x007C($sp)
	lw      $t0, 0x0084($sp)
	beqz    $t0, 49$
	nop
	lw      $t1, 0x0080($sp)
	bnez    $t1, 49$
	nop
49$:
	lw      $t2, 0x007C($sp)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x007C($sp)
	sw      $t2, 0x0078($sp)
	lw      $t5, 0x0078($sp)
	li      $t4, 0xFD100000
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x00A0($sp)
	lw      $t7, 0x0078($sp)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x007C($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x007C($sp)
	sw      $t8, 0x0074($sp)
	lw      $t1, 0x0074($sp)
	li      $t0, 0xE8000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0074($sp)
	sw      $0, 0x0004($t2)
	lw      $t3, 0x007C($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x007C($sp)
	sw      $t3, 0x0070($sp)
	lw      $t6, 0x0070($sp)
	li      $t5, 0xF5100000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0070($sp)
	li      $t7, 0x07000000
	sw      $t7, 0x0004($t8)
	lw      $t9, 0x007C($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x007C($sp)
	sw      $t9, 0x006C($sp)
	lw      $t2, 0x006C($sp)
	li      $t1, 0xE6000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x006C($sp)
	sw      $0, 0x0004($t3)
	lw      $t4, 0x007C($sp)
	addiu   $t5, $t4, 0x0008
	sw      $t5, 0x007C($sp)
	sw      $t4, 0x0068($sp)
	lw      $t7, 0x0068($sp)
	li      $t6, 0xF3000000
	sw      $t6, 0x0000($t7)
	lh      $t8, 0x00A6($sp)
	lh      $t9, 0x00AA($sp)
	multu   $t8, $t9
	mflo    $t0
	addiu   $t1, $t0, -0x0001
	slti    $at, $t1, 0x07FF
	beqz    $at, 104$
	nop
	b       105$
	move    $s2, $t1
104$:
	li      $s2, 0x07FF
105$:
	lh      $t2, 0x00A6($sp)
	sll     $t3, $t2, 1
	bgez    $t3, 111$
	sra     $t4, $t3, 3
	addiu   $at, $t3, 0x0007
	sra     $t4, $at, 3
111$:
	bgtz    $t4, 115$
	nop
	b       123$
	li      $s1, 0x0001
115$:
	lh      $s1, 0x00A6($sp)
	sll     $t5, $s1, 1
	move    $s1, $t5
	bgez    $s1, 122$
	sra     $t6, $s1, 3
	addiu   $at, $s1, 0x0007
	sra     $t6, $at, 3
122$:
	move    $s1, $t6
123$:
	lh      $t7, 0x00A6($sp)
	sll     $t8, $t7, 1
	bgez    $t8, 129$
	sra     $t9, $t8, 3
	addiu   $at, $t8, 0x0007
	sra     $t9, $at, 3
129$:
	bgtz    $t9, 133$
	nop
	b       141$
	li      $s0, 0x0001
133$:
	lh      $s0, 0x00A6($sp)
	sll     $t0, $s0, 1
	move    $s0, $t0
	bgez    $s0, 140$
	sra     $t1, $s0, 3
	addiu   $at, $s0, 0x0007
	sra     $t1, $at, 3
140$:
	move    $s0, $t1
141$:
	addiu   $t2, $s1, 0x07FF
	div     $0, $t2, $s0
	bnez    $s0, 146$
	nop
	break   7
146$:
	li      $at, -0x0001
	bne     $s0, $at, 152$
	li      $at, 0x80000000
	bne     $t2, $at, 152$
	nop
	break   6
152$:
	andi    $t5, $s2, 0x0FFF
	lw      $t9, 0x0068($sp)
	sll     $t6, $t5, 12
	li      $at, 0x07000000
	mflo    $t3
	andi    $t4, $t3, 0x0FFF
	or      $t7, $t6, $at
	or      $t8, $t4, $t7
	sw      $t8, 0x0004($t9)
	lh      $t0, 0x0090($sp)
	sh      $0, 0x009E($sp)
	blez    $t0, 282$
	nop
165$:
	lh      $t1, 0x00B2($sp)
	lh      $t3, 0x009E($sp)
	sll     $t2, $t1, 2
	sll     $t5, $t3, 4
	subu    $t2, $t2, $t1
	subu    $t5, $t5, $t3
	addu    $t6, $t2, $t5
	addiu   $t4, $t6, 0x0002
	sh      $t4, 0x009A($sp)
	sh      $0, 0x009C($sp)
175$:
	lh      $t7, 0x009A($sp)
	lh      $t8, 0x009C($sp)
	lw      $t1, 0x00AC($sp)
	addu    $t9, $t7, $t8
	sll     $t0, $t9, 1
	addu    $t3, $t1, $t0
	lh      $t2, 0x0000($t3)
	sh      $t2, 0x0098($sp)
	lh      $t6, 0x0098($sp)
	lw      $t5, 0x00AC($sp)
	sll     $t4, $t6, 2
	subu    $t4, $t4, $t6
	sll     $t7, $t4, 1
	addu    $t8, $t5, $t7
	lh      $t9, 0x0002($t8)
	sh      $t9, 0x0096($sp)
	lh      $t0, 0x0098($sp)
	lw      $t1, 0x00AC($sp)
	sll     $t3, $t0, 2
	subu    $t3, $t3, $t0
	sll     $t2, $t3, 1
	addu    $t6, $t1, $t2
	lh      $t4, 0x0004($t6)
	sh      $t4, 0x0094($sp)
	lh      $t7, 0x0098($sp)
	lw      $t5, 0x00AC($sp)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t9, $t8, 1
	addu    $t0, $t5, $t9
	lh      $t3, 0x0006($t0)
	sh      $t3, 0x0092($sp)
	lh      $t7, 0x0096($sp)
	lui     $t4, %hi(wave_80361310)
	lw      $t4, %lo(wave_80361310)($t4)
	sll     $t8, $t7, 2
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	addu    $t5, $t4, $t8
	lh      $t1, 0x009E($sp)
	lh      $t9, 0x0004($t5)
	lh      $t0, 0x0094($sp)
	lh      $t3, 0x0092($sp)
	lh      $a2, 0x0000($t5)
	lh      $a3, 0x0002($t5)
	sll     $t2, $t1, 4
	subu    $t2, $t2, $t1
	sw      $t9, 0x0010($sp)
	sw      $t0, 0x0014($sp)
	sw      $t3, 0x0018($sp)
	lb      $t1, 0x0006($t5)
	lh      $t6, 0x009C($sp)
	lbu     $t7, 0x00BB($sp)
	sw      $t1, 0x001C($sp)
	addu    $a1, $t2, $t6
	lb      $t2, 0x0007($t5)
	lw      $a0, 0x0084($sp)
	sw      $t2, 0x0020($sp)
	lb      $t6, 0x0008($t5)
	sw      $t7, 0x0028($sp)
	jal     vtx_set
	sw      $t6, 0x0024($sp)
	lh      $t4, 0x009C($sp)
	addiu   $t8, $t4, 0x0001
	sll     $t9, $t8, 16
	sra     $t0, $t9, 16
	slti    $at, $t0, 0x000F
	bnez    $at, 175$
	sh      $t8, 0x009C($sp)
	lw      $t3, 0x007C($sp)
	addiu   $t1, $t3, 0x0008
	sw      $t1, 0x007C($sp)
	sw      $t3, 0x0064($sp)
	lw      $t5, 0x0064($sp)
	li.u    $t2, 0x04E000F0
	li.l    $t2, 0x04E000F0
	sw      $t2, 0x0000($t5)
	lh      $t6, 0x009E($sp)
	lw      $t8, 0x0084($sp)
	lw      $t3, 0x0064($sp)
	sll     $t7, $t6, 4
	subu    $t7, $t7, $t6
	sll     $t4, $t7, 4
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	addu    $t9, $t4, $t8
	and     $t0, $t9, $at
	sw      $t0, 0x0004($t3)
	lw      $t1, 0x007C($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x007C($sp)
	sw      $t1, 0x0060($sp)
	lw      $t6, 0x0060($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t4, 0x0060($sp)
	la.u    $t7, gfx_wave_draw
	la.l    $t7, gfx_wave_draw
	sw      $t7, 0x0004($t4)
	lh      $t8, 0x009E($sp)
	lh      $t1, 0x0090($sp)
	addiu   $t9, $t8, 0x0001
	sll     $t0, $t9, 16
	sra     $t3, $t0, 16
	slt     $at, $t3, $t1
	bnez    $at, 165$
	sh      $t9, 0x009E($sp)
282$:
	lh      $t2, 0x00B2($sp)
	lh      $t6, 0x0090($sp)
	sll     $t5, $t2, 2
	sll     $t7, $t6, 4
	subu    $t5, $t5, $t2
	subu    $t7, $t7, $t6
	addu    $t4, $t5, $t7
	addiu   $t8, $t4, 0x0002
	sh      $t8, 0x009A($sp)
	lh      $t9, 0x008E($sp)
	sh      $0, 0x009C($sp)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	blez    $t0, 369$
	nop
297$:
	lh      $t3, 0x009A($sp)
	lh      $t1, 0x009C($sp)
	lw      $t5, 0x00AC($sp)
	addu    $t2, $t3, $t1
	sll     $t6, $t2, 1
	addu    $t7, $t5, $t6
	lh      $t4, 0x0000($t7)
	sh      $t4, 0x0098($sp)
	lh      $t9, 0x0098($sp)
	lw      $t8, 0x00AC($sp)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t3, $t0, 1
	addu    $t1, $t8, $t3
	lh      $t2, 0x0002($t1)
	sh      $t2, 0x0096($sp)
	lh      $t6, 0x0098($sp)
	lw      $t5, 0x00AC($sp)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t4, $t7, 1
	addu    $t9, $t5, $t4
	lh      $t0, 0x0004($t9)
	sh      $t0, 0x0094($sp)
	lh      $t3, 0x0098($sp)
	lw      $t8, 0x00AC($sp)
	sll     $t1, $t3, 2
	subu    $t1, $t1, $t3
	sll     $t2, $t1, 1
	addu    $t6, $t8, $t2
	lh      $t7, 0x0006($t6)
	sh      $t7, 0x0092($sp)
	lh      $t3, 0x0096($sp)
	lui     $t0, %hi(wave_80361310)
	lw      $t0, %lo(wave_80361310)($t0)
	sll     $t1, $t3, 2
	addu    $t1, $t1, $t3
	sll     $t1, $t1, 1
	addu    $t8, $t0, $t1
	lh      $t5, 0x0090($sp)
	lh      $t2, 0x0004($t8)
	lh      $t6, 0x0094($sp)
	lh      $t7, 0x0092($sp)
	lh      $a2, 0x0000($t8)
	lh      $a3, 0x0002($t8)
	sll     $t4, $t5, 4
	subu    $t4, $t4, $t5
	sw      $t2, 0x0010($sp)
	sw      $t6, 0x0014($sp)
	sw      $t7, 0x0018($sp)
	lb      $t5, 0x0006($t8)
	lh      $t9, 0x009C($sp)
	lbu     $t3, 0x00BB($sp)
	sw      $t5, 0x001C($sp)
	addu    $a1, $t4, $t9
	lb      $t4, 0x0007($t8)
	lw      $a0, 0x0084($sp)
	sw      $t4, 0x0020($sp)
	lb      $t9, 0x0008($t8)
	sw      $t3, 0x0028($sp)
	jal     vtx_set
	sw      $t9, 0x0024($sp)
	lh      $t0, 0x009C($sp)
	lh      $t7, 0x008E($sp)
	addiu   $t1, $t0, 0x0001
	sll     $t2, $t1, 16
	sll     $t5, $t7, 2
	sra     $t6, $t2, 16
	subu    $t5, $t5, $t7
	slt     $at, $t6, $t5
	bnez    $at, 297$
	sh      $t1, 0x009C($sp)
369$:
	lw      $t4, 0x007C($sp)
	addiu   $t8, $t4, 0x0008
	sw      $t8, 0x007C($sp)
	sw      $t4, 0x005C($sp)
	lh      $t9, 0x008E($sp)
	li      $at, 0x04000000
	sll     $t3, $t9, 2
	subu    $t3, $t3, $t9
	addiu   $t0, $t3, -0x0001
	sll     $t1, $t0, 4
	andi    $t2, $t1, 0x00FF
	lw      $t9, 0x005C($sp)
	sll     $t7, $t2, 16
	sll     $t5, $t3, 4
	andi    $t4, $t5, 0xFFFF
	or      $t6, $t7, $at
	or      $t8, $t6, $t4
	sw      $t8, 0x0000($t9)
	lh      $t0, 0x0090($sp)
	lw      $t7, 0x0084($sp)
	lw      $t6, 0x005C($sp)
	sll     $t1, $t0, 4
	subu    $t1, $t1, $t0
	sll     $t2, $t1, 4
	li.u    $at, 0x1FFFFFFF
	li.l    $at, 0x1FFFFFFF
	addu    $t3, $t2, $t7
	and     $t5, $t3, $at
	sw      $t5, 0x0004($t6)
	lh      $t4, 0x008E($sp)
	sh      $0, 0x009E($sp)
	blez    $t4, 434$
	nop
402$:
	lw      $t8, 0x007C($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x007C($sp)
	sw      $t8, 0x0058($sp)
	lw      $t1, 0x0058($sp)
	li      $t0, 0xBF000000
	sw      $t0, 0x0000($t1)
	lh      $t2, 0x009E($sp)
	sll     $t7, $t2, 2
	subu    $t7, $t7, $t2
	sll     $t3, $t7, 2
	addu    $t3, $t3, $t7
	sll     $t3, $t3, 1
	andi    $t5, $t3, 0x00FF
	addiu   $t4, $t3, 0x000A
	andi    $t8, $t4, 0x00FF
	sll     $t6, $t5, 16
	lw      $t5, 0x0058($sp)
	sll     $t9, $t8, 8
	addiu   $t1, $t3, 0x0014
	andi    $t2, $t1, 0x00FF
	or      $t0, $t6, $t9
	or      $t7, $t0, $t2
	sw      $t7, 0x0004($t5)
	lh      $t4, 0x009E($sp)
	lh      $t3, 0x008E($sp)
	addiu   $t8, $t4, 0x0001
	sll     $t6, $t8, 16
	sra     $t9, $t6, 16
	slt     $at, $t9, $t3
	bnez    $at, 402$
	sh      $t8, 0x009E($sp)
434$:
	lw      $t1, 0x007C($sp)
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	li      $t0, 0xB8000000
	sw      $t0, 0x0000($t2)
	lw      $t7, 0x0054($sp)
	sw      $0, 0x0004($t7)
	b       445$
	lw      $v0, 0x0080($sp)
	b       445$
	nop
445$:
	lw      $ra, 0x0044($sp)
	lw      $s0, 0x0038($sp)
	lw      $s1, 0x003C($sp)
	lw      $s2, 0x0040($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00A0

wave_802D4EDC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0050($sp)
	lw      $t6, 0x0050($sp)
	lui     $at, %hi(wave_80338190)
	ldc1    $f8, %lo(wave_80338190)($at)
	lwc1    $f4, 0x0074($t6)
	cvt.d.s $f6, $f4
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x004C($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0048($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0044($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x0040($sp)
	jal     gfx_alloc
	li      $a0, 0x0040
	sw      $v0, 0x003C($sp)
	jal     gfx_alloc
	li      $a0, 0x0028
	sw      $v0, 0x0038($sp)
	lw      $t7, 0x0038($sp)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0048($sp)
	beqz    $t8, 40$
	nop
	lw      $t9, 0x0044($sp)
	beqz    $t9, 40$
	nop
	lw      $t0, 0x0040($sp)
	beqz    $t0, 40$
	nop
	lw      $t1, 0x0038($sp)
	bnez    $t1, 40$
	nop
40$:
	lw      $t2, 0x0050($sp)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0010($t2)
	lw      $a2, 0x0014($t2)
	jal     guTranslate
	lw      $a3, 0x0018($t2)
	lw      $t3, 0x0050($sp)
	mtc1    $0, $f18
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0008($t3)
	li      $a2, 0x3F800000
	li      $a3, 0x0000
	jal     guRotate
	swc1    $f18, 0x0010($sp)
	lw      $t4, 0x0050($sp)
	mtc1    $0, $f4
	lw      $a0, 0x0044($sp)
	lw      $a1, 0x000C($t4)
	li      $a2, 0x0000
	li      $a3, 0x3F800000
	jal     guRotate
	swc1    $f4, 0x0010($sp)
	lwc1    $f6, 0x004C($sp)
	lw      $a0, 0x003C($sp)
	mfc1    $a1, $f6
	mfc1    $a2, $f6
	mfc1    $a3, $f6
	jal     guScale
	nop
	lw      $t5, 0x0034($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x0034($sp)
	sw      $t5, 0x0030($sp)
	lw      $t8, 0x0030($sp)
	li.u    $t7, 0x01040040
	li.l    $t7, 0x01040040
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0040($sp)
	lw      $t0, 0x0030($sp)
	sw      $t9, 0x0004($t0)
	lw      $t1, 0x0034($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0034($sp)
	sw      $t1, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li.u    $t3, 0x01000040
	li.l    $t3, 0x01000040
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0048($sp)
	lw      $t6, 0x002C($sp)
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x0034($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0034($sp)
	sw      $t7, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	li.u    $t9, 0x01000040
	li.l    $t9, 0x01000040
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0044($sp)
	lw      $t2, 0x0028($sp)
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0034($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x0034($sp)
	sw      $t3, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	li.u    $t5, 0x01000040
	li.l    $t5, 0x01000040
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x003C($sp)
	lw      $t8, 0x0024($sp)
	sw      $t7, 0x0004($t8)
	lw      $t9, 0x0034($sp)
	sw      $t9, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $t0, 0xB8000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0020($sp)
	sw      $0, 0x0004($t2)
	b       124$
	lw      $v0, 0x0038($sp)
	b       124$
	nop
124$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

wave_802D50DC:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	lb      $t7, 0x0002($t6)
	sh      $t7, 0x005A($sp)
	lw      $t8, 0x0068($sp)
	lh      $t9, 0x0064($t8)
	sh      $t9, 0x0058($sp)
	lw      $t0, 0x0068($sp)
	lh      $t1, 0x0066($t0)
	sh      $t1, 0x0056($sp)
	lw      $t2, 0x0068($sp)
	jal     segment_to_virtual
	lw      $a0, 0x005C($t2)
	sw      $v0, 0x0050($sp)
	lw      $t3, 0x0068($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0060($t3)
	sw      $v0, 0x004C($sp)
	lh      $a0, 0x005A($sp)
	sll     $t4, $a0, 3
	move    $a0, $t4
	jal     gfx_alloc
	addiu   $a0, $a0, 0x0030
	sw      $v0, 0x0048($sp)
	lw      $t5, 0x0048($sp)
	sw      $t5, 0x0044($sp)
	lw      $t6, 0x0048($sp)
	bnez    $t6, 33$
	nop
	b       154$
	lw      $v0, 0x0048($sp)
33$:
	lw      $t7, 0x0044($sp)
	addiu   $t8, $t7, 0x0008
	sw      $t8, 0x0044($sp)
	sw      $t7, 0x0040($sp)
	lw      $t0, 0x0040($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t0)
	jal     wave_802D4EDC
	lw      $a0, 0x0068($sp)
	lw      $t1, 0x0040($sp)
	sw      $v0, 0x0004($t1)
	lw      $t2, 0x0044($sp)
	addiu   $t3, $t2, 0x0008
	sw      $t3, 0x0044($sp)
	sw      $t2, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	li      $t4, 0x06000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x003C($sp)
	la.u    $t6, gfx_wave_s_start
	la.l    $t6, gfx_wave_s_start
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0044($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0044($sp)
	sw      $t8, 0x0038($sp)
	lw      $t1, 0x0038($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0068($sp)
	lw      $t4, 0x0038($sp)
	lw      $t3, 0x0068($t2)
	sw      $t3, 0x0004($t4)
	lh      $t5, 0x005A($sp)
	sh      $0, 0x0062($sp)
	blez    $t5, 121$
	nop
70$:
	lh      $t7, 0x0062($sp)
	lw      $t6, 0x0050($sp)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	jal     segment_to_virtual
	lw      $a0, 0x0000($t9)
	sw      $v0, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	lh      $t1, 0x0000($t0)
	sh      $t1, 0x0066($sp)
	lh      $t3, 0x0066($sp)
	lw      $t2, 0x005C($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t5, $t4, 1
	addu    $t7, $t2, $t5
	lh      $t6, 0x0002($t7)
	sh      $t6, 0x0064($sp)
	lw      $t8, 0x0044($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0044($sp)
	sw      $t8, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lh      $t4, 0x0062($sp)
	lw      $t3, 0x004C($sp)
	lh      $t7, 0x0066($sp)
	sll     $t2, $t4, 2
	lh      $t6, 0x0064($sp)
	addu    $t5, $t3, $t2
	lw      $t8, 0x0068($sp)
	lw      $a0, 0x0000($t5)
	sw      $t7, 0x0010($sp)
	sw      $t6, 0x0014($sp)
	lbu     $t9, 0x006D($t8)
	lh      $a1, 0x0058($sp)
	lh      $a2, 0x0056($sp)
	lw      $a3, 0x005C($sp)
	jal     wave_802D47D0
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0034($sp)
	sw      $v0, 0x0004($t0)
	lh      $t1, 0x0062($sp)
	lh      $t5, 0x005A($sp)
	addiu   $t4, $t1, 0x0001
	sll     $t3, $t4, 16
	sra     $t2, $t3, 16
	slt     $at, $t2, $t5
	bnez    $at, 70$
	sh      $t4, 0x0062($sp)
121$:
	jal     wave_802D3BEC
	lw      $a0, 0x0068($sp)
	lw      $t7, 0x0044($sp)
	addiu   $t6, $t7, 0x0008
	sw      $t6, 0x0044($sp)
	sw      $t7, 0x0030($sp)
	lw      $t9, 0x0030($sp)
	li      $t8, 0xBD000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	sw      $0, 0x0004($t0)
	lw      $t1, 0x0044($sp)
	addiu   $t4, $t1, 0x0008
	sw      $t4, 0x0044($sp)
	sw      $t1, 0x002C($sp)
	lw      $t2, 0x002C($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t2)
	lw      $t7, 0x002C($sp)
	la.u    $t5, gfx_wave_s_end
	la.l    $t5, gfx_wave_s_end
	sw      $t5, 0x0004($t7)
	lw      $t6, 0x0044($sp)
	sw      $t6, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	li      $t8, 0xB8000000
	sw      $t8, 0x0000($t9)
	lw      $t0, 0x0028($sp)
	sw      $0, 0x0004($t0)
	b       154$
	lw      $v0, 0x0048($sp)
	b       154$
	nop
154$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

wave_802D5354:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0060($sp)
	lw      $t6, 0x0060($sp)
	lh      $t7, 0x0064($t6)
	sh      $t7, 0x0056($sp)
	lw      $t8, 0x0060($sp)
	lh      $t9, 0x0066($t8)
	sh      $t9, 0x0054($sp)
	lw      $t0, 0x0060($sp)
	jal     segment_to_virtual
	lw      $a0, 0x005C($t0)
	sw      $v0, 0x0050($sp)
	lw      $t1, 0x0060($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0060($t1)
	sw      $v0, 0x004C($sp)
	jal     gfx_alloc
	li      $a0, 0x0038
	sw      $v0, 0x0048($sp)
	lw      $t2, 0x0048($sp)
	sw      $t2, 0x0044($sp)
	lw      $t3, 0x0048($sp)
	bnez    $t3, 27$
	nop
	b       130$
	lw      $v0, 0x0048($sp)
27$:
	lw      $t4, 0x0044($sp)
	addiu   $t5, $t4, 0x0008
	sw      $t5, 0x0044($sp)
	sw      $t4, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	jal     wave_802D4EDC
	lw      $a0, 0x0060($sp)
	lw      $t8, 0x0040($sp)
	sw      $v0, 0x0004($t8)
	lw      $t9, 0x0044($sp)
	addiu   $t0, $t9, 0x0008
	sw      $t0, 0x0044($sp)
	sw      $t9, 0x003C($sp)
	lw      $t2, 0x003C($sp)
	li      $t1, 0x06000000
	sw      $t1, 0x0000($t2)
	lw      $t4, 0x003C($sp)
	la.u    $t3, gfx_wave_e_start
	la.l    $t3, gfx_wave_e_start
	sw      $t3, 0x0004($t4)
	lw      $t5, 0x0044($sp)
	addiu   $t6, $t5, 0x0008
	sw      $t6, 0x0044($sp)
	sw      $t5, 0x0038($sp)
	lw      $t8, 0x0038($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0060($sp)
	lw      $t1, 0x0038($sp)
	lw      $t0, 0x0068($t9)
	sw      $t0, 0x0004($t1)
	lw      $t2, 0x0050($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0000($t2)
	sw      $v0, 0x0058($sp)
	lw      $t3, 0x0058($sp)
	lh      $t4, 0x0000($t3)
	sh      $t4, 0x005E($sp)
	lh      $t6, 0x005E($sp)
	lw      $t5, 0x0058($sp)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t8, $t7, 1
	addu    $t9, $t5, $t8
	lh      $t0, 0x0002($t9)
	sh      $t0, 0x005C($sp)
	lw      $t1, 0x0044($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0044($sp)
	sw      $t1, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	li      $t3, 0x06000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x004C($sp)
	lh      $t7, 0x005E($sp)
	lh      $t5, 0x005C($sp)
	lw      $t8, 0x0060($sp)
	lw      $a0, 0x0000($t6)
	sw      $t7, 0x0010($sp)
	sw      $t5, 0x0014($sp)
	lbu     $t9, 0x006D($t8)
	lh      $a1, 0x0056($sp)
	lh      $a2, 0x0054($sp)
	lw      $a3, 0x0058($sp)
	jal     wave_802D47D0
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0034($sp)
	sw      $v0, 0x0004($t0)
	jal     wave_802D3BEC
	lw      $a0, 0x0060($sp)
	lw      $t1, 0x0044($sp)
	addiu   $t2, $t1, 0x0008
	sw      $t2, 0x0044($sp)
	sw      $t1, 0x0030($sp)
	lw      $t4, 0x0030($sp)
	li      $t3, 0xBD000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x0004($t6)
	lw      $t7, 0x0044($sp)
	addiu   $t5, $t7, 0x0008
	sw      $t5, 0x0044($sp)
	sw      $t7, 0x002C($sp)
	lw      $t9, 0x002C($sp)
	li      $t8, 0x06000000
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x002C($sp)
	la.u    $t0, gfx_wave_e_end
	la.l    $t0, gfx_wave_e_end
	sw      $t0, 0x0004($t1)
	lw      $t2, 0x0044($sp)
	sw      $t2, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0xB8000000
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0004($t6)
	b       130$
	lw      $v0, 0x0048($sp)
	b       130$
	nop
130$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

wave_802D556C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, wave_shape
	jal     segment_to_virtual
	la.l    $a0, wave_shape
	sw      $v0, 0x0034($sp)
	la.u    $a0, wave_shade
	jal     segment_to_virtual
	la.l    $a0, wave_shade
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0034($sp)
	lh      $t7, 0x0000($t6)
	sh      $t7, 0x002E($sp)
	lh      $t9, 0x002E($sp)
	lw      $t8, 0x0034($sp)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t1, $t0, 1
	addu    $t2, $t8, $t1
	lh      $t3, 0x0002($t2)
	sh      $t3, 0x002C($sp)
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x0034($sp)
	jal     wave_802D3EE4
	lh      $a2, 0x002E($sp)
	lw      $a0, 0x0034($sp)
	lh      $a1, 0x002E($sp)
	jal     wave_802D404C
	lh      $a2, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	jal     wave_802D44BC
	lh      $a1, 0x002E($sp)
	lw      $t4, 0x0038($sp)
	lb      $s0, 0x0003($t4)
	beqz    $s0, 43$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 48$
	nop
	b       53$
	nop
43$:
	jal     wave_802D50DC
	lw      $a0, 0x0038($sp)
	sw      $v0, 0x0028($sp)
	b       53$
	nop
48$:
	jal     wave_802D5354
	lw      $a0, 0x0038($sp)
	sw      $v0, 0x0028($sp)
	b       53$
	nop
53$:
	lui     $a0, %hi(mem_heap)
	lui     $a1, %hi(wave_80361310)
	lw      $a1, %lo(wave_80361310)($a1)
	jal     heap_free
	lw      $a0, %lo(mem_heap)($a0)
	lui     $a0, %hi(mem_heap)
	lui     $a1, %hi(wave_80361314)
	lw      $a1, %lo(wave_80361314)($a1)
	jal     heap_free
	lw      $a0, %lo(mem_heap)($a0)
	b       67$
	lw      $v0, 0x0028($sp)
	b       67$
	nop
67$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

wave_802D568C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	jal     gfx_alloc
	li      $a0, 0x0020
	sw      $v0, 0x002C($sp)
	lw      $t6, 0x002C($sp)
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	bnez    $t7, 13$
	nop
	b       55$
	lw      $v0, 0x002C($sp)
13$:
	lw      $t8, 0x0028($sp)
	addiu   $t9, $t8, 0x0008
	sw      $t9, 0x0028($sp)
	sw      $t8, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	jal     wave_802D4EDC
	lw      $a0, 0x0030($sp)
	lw      $t2, 0x0024($sp)
	sw      $v0, 0x0004($t2)
	lw      $t3, 0x0028($sp)
	addiu   $t4, $t3, 0x0008
	sw      $t4, 0x0028($sp)
	sw      $t3, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $t5, 0x06000000
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x0020($sp)
	lw      $t8, 0x0058($t7)
	sw      $t8, 0x0004($t9)
	lw      $t0, 0x0028($sp)
	addiu   $t1, $t0, 0x0008
	sw      $t1, 0x0028($sp)
	sw      $t0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	li      $t2, 0xBD000000
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x001C($sp)
	sw      $0, 0x0004($t4)
	lw      $t5, 0x0028($sp)
	sw      $t5, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0xB8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	sw      $0, 0x0004($t8)
	b       55$
	lw      $v0, 0x002C($sp)
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

wave_802D5778:
	sb      $0, 0x0004($a0)
	sb      $0, 0x0005($a0)
	sb      $0, 0x0006($a0)
	sb      $0, 0x006E($a0)
	sb      $0, 0x006F($a0)
	sb      $0, 0x0070($a0)
	lui     $at, %hi(wavedatap)
	sw      $0, %lo(wavedatap)($at)
	jr      $ra
	nop
	jr      $ra
	nop

wave_802D57A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lui     $a0, %hi(file_index)
	lh      $a0, %lo(file_index)($a0)
	li      $a1, 0x0008
	jal     save_file_get_star
	addiu   $a0, $a0, -0x0001
	sw      $v0, 0x0024($sp)
	jal     save_get_flag
	nop
	sw      $v0, 0x0020($sp)
	lw      $t6, 0x0024($sp)
	andi    $t7, $t6, 0x0001
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	andi    $t9, $t8, 0x0100
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x001C($sp)
	bnez    $t0, 33$
	nop
	lw      $t1, 0x0018($sp)
	bnez    $t1, 33$
	nop
	lwc1    $f4, 0x002C($sp)
	lw      $t2, 0x0028($sp)
	swc1    $f4, 0x0010($t2)
	lui     $at, %hi(wave_8036131C)
	b       73$
	sb      $0, %lo(wave_8036131C)($at)
33$:
	lw      $t3, 0x001C($sp)
	beqz    $t3, 61$
	nop
	lw      $t4, 0x0018($sp)
	bnez    $t4, 61$
	nop
	lw      $t5, 0x0028($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0010($t5)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0010($t5)
	li      $t6, 0x0002
	lui     $at, %hi(wave_8036131C)
	sb      $t6, %lo(wave_8036131C)($at)
	lw      $t7, 0x0028($sp)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x0010($t7)
	c.le.s  $f18, $f16
	nop
	bc1f    59$
	nop
	lwc1    $f4, 0x0030($sp)
	lw      $t8, 0x0028($sp)
	swc1    $f4, 0x0010($t8)
	jal     save_set_flag
	li      $a0, 0x0100
59$:
	b       73$
	nop
61$:
	lw      $t9, 0x001C($sp)
	beqz    $t9, 73$
	nop
	lw      $t0, 0x0018($sp)
	beqz    $t0, 73$
	nop
	lwc1    $f6, 0x0030($sp)
	lw      $t1, 0x0028($sp)
	swc1    $f6, 0x0010($t1)
	li      $t2, 0x0003
	lui     $at, %hi(wave_8036131C)
	sb      $t2, %lo(wave_8036131C)($at)
73$:
	b       75$
	nop
75$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

wave_802D58E4:
	lbu     $t6, 0x006D($a1)
	li      $at, 0x00FF
	bne     $t6, $at, 12$
	nop
	b       6$
	nop
6$:
	lh      $t7, 0x0002($a0)
	andi    $t8, $t7, 0x00FF
	ori     $t9, $t8, 0x0100
	sh      $t9, 0x0002($a0)
	b       18$
	nop
12$:
	lh      $t0, 0x0002($a0)
	andi    $t1, $t0, 0x00FF
	ori     $t2, $t1, 0x0500
	sh      $t2, 0x0002($a0)
	b       18$
	nop
18$:
	jr      $ra
	nop
	jr      $ra
	nop

wave_802D593C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lb      $t7, 0x0007($t6)
	bnez    $t7, 15$
	nop
	b       9$
	nop
9$:
	jal     wave_802D568C
	lw      $a0, 0x0018($sp)
	b       23$
	nop
	b       21$
	nop
15$:
	jal     wave_802D556C
	lw      $a0, 0x0018($sp)
	b       23$
	nop
	b       21$
	nop
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

wave_802D59A8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000A
	lb      $t7, 0x006C($t6)
	bne     $t7, $at, 31$
	nop
	lw      $t8, 0x0028($sp)
	lb      $s0, 0x0007($t8)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 24$
	nop
	b       29$
	nop
19$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D2FFC
	lw      $a1, 0x002C($sp)
	b       29$
	nop
24$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D319C
	lw      $a1, 0x002C($sp)
	b       29$
	nop
29$:
	b       55$
	nop
31$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x0014
	lb      $t0, 0x006C($t9)
	bne     $t0, $at, 55$
	nop
	lw      $t1, 0x0028($sp)
	lb      $s0, 0x0007($t1)
	beqz    $s0, 45$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 50$
	nop
	b       55$
	nop
45$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D327C
	lw      $a1, 0x002C($sp)
	b       55$
	nop
50$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D341C
	lw      $a1, 0x002C($sp)
	b       55$
	nop
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

wave_802D5AA0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x000A
	lb      $t7, 0x006C($t6)
	bne     $t7, $at, 31$
	nop
	lw      $t8, 0x0028($sp)
	lb      $s0, 0x0007($t8)
	beqz    $s0, 19$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 24$
	nop
	b       29$
	nop
19$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D34FC
	lw      $a1, 0x002C($sp)
	b       29$
	nop
24$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D36AC
	lw      $a1, 0x002C($sp)
	b       29$
	nop
29$:
	b       55$
	nop
31$:
	lw      $t9, 0x0028($sp)
	li      $at, 0x0014
	lb      $t0, 0x006C($t9)
	bne     $t0, $at, 55$
	nop
	lw      $t1, 0x0028($sp)
	lb      $s0, 0x0007($t1)
	beqz    $s0, 45$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 50$
	nop
	b       55$
	nop
45$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D379C
	lw      $a1, 0x002C($sp)
	b       55$
	nop
50$:
	lw      $a0, 0x0028($sp)
	jal     wave_802D393C
	lw      $a1, 0x002C($sp)
	b       55$
	nop
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl s_wave_802D5B98
s_wave_802D5B98:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	lw      $t8, 0x0018($t7)
	srl     $t9, $t8, 8
	andi    $t0, $t9, 0x00FF
	sw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0018($t1)
	andi    $t3, $t2, 0x00FF
	sw      $t3, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t4, 0x0028($sp)
	lui     $t6, %hi(wave_8033134C)
	sll     $t5, $t4, 2
	addu    $t6, $t6, $t5
	lw      $t6, %lo(wave_8033134C)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	jal     segment_to_virtual
	lw      $a0, 0x0000($t0)
	sw      $v0, 0x0018($sp)
	lw      $t1, 0x0030($sp)
	li      $at, 0x0001
	beq     $t1, $at, 38$
	nop
	jal     wave_802D5778
	lw      $a0, 0x0018($sp)
	b       85$
	nop
38$:
	lw      $t2, 0x0030($sp)
	li      $at, 0x0001
	bne     $t2, $at, 85$
	nop
	lw      $t3, 0x0028($sp)
	li      $at, 0x0001
	bne     $t3, $at, 56$
	nop
	lw      $t4, 0x0024($sp)
	li      $at, 0x0007
	bne     $t4, $at, 56$
	nop
	li.u    $a2, 0x45ACCCCD
	li.l    $a2, 0x45ACCCCD
	lw      $a0, 0x0018($sp)
	li      $a1, 0x45580000
	jal     wave_802D57A8
	li      $a3, 0x41A00000
56$:
	lw      $a0, 0x002C($sp)
	jal     wave_802D58E4
	lw      $a1, 0x0018($sp)
	jal     wave_802D593C
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x0020($sp)
	jal     wave_802D3A2C
	lw      $a0, 0x0018($sp)
	lw      $t5, 0x0018($sp)
	lwc1    $f4, 0x0008($t5)
	trunc.w.s $f6, $f4
	mfc1    $t8, $f6
	nop
	sll     $t7, $t8, 16
	sra     $t9, $t7, 16
	bnez    $t9, 80$
	nop
	b       75$
	nop
75$:
	lw      $a0, 0x0018($sp)
	jal     wave_802D59A8
	lw      $a1, 0x001C($sp)
	b       85$
	nop
80$:
	lw      $a0, 0x0018($sp)
	jal     wave_802D5AA0
	lw      $a1, 0x001C($sp)
	b       85$
	nop
85$:
	b       89$
	lw      $v0, 0x0020($sp)
	b       89$
	nop
89$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl s_wave_802D5D0C
s_wave_802D5D0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0001
	beq     $t6, $at, 19$
	nop
	lui     $t7, %hi(draw_timer)
	lhu     $t7, %lo(draw_timer)($t7)
	lui     $at, %hi(wave_8033135C)
	addiu   $t8, $t7, -0x0001
	sh      $t8, %lo(wave_8033135C)($at)
	lui     $t9, %hi(draw_timer)
	lhu     $t9, %lo(draw_timer)($t9)
	lui     $at, %hi(wave_80331358)
	b       53$
	sh      $t9, %lo(wave_80331358)($at)
19$:
	lui     $t0, %hi(wave_80331358)
	lh      $t0, %lo(wave_80331358)($t0)
	lui     $at, %hi(wave_8033135C)
	sh      $t0, %lo(wave_8033135C)($at)
	lui     $t1, %hi(draw_timer)
	lhu     $t1, %lo(draw_timer)($t1)
	lui     $at, %hi(wave_80331358)
	sh      $t1, %lo(wave_80331358)($at)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t2)
	lw      $t3, 0x001C($sp)
	lui     $at, %hi(wave_80361300)
	lh      $t4, 0x0000($t3)
	sh      $t4, %lo(wave_80361300)($at)
	lui     $t5, %hi(mario_obj)
	lw      $t5, %lo(mario_obj)($t5)
	lui     $at, %hi(wave_80361304)
	lwc1    $f4, 0x00A0($t5)
	swc1    $f4, %lo(wave_80361304)($at)
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $at, %hi(wave_80361308)
	lwc1    $f6, 0x00A4($t6)
	swc1    $f6, %lo(wave_80361308)($at)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lui     $at, %hi(wave_8036130C)
	lwc1    $f8, 0x00A8($t7)
	swc1    $f8, %lo(wave_8036130C)($at)
53$:
	b       57$
	move    $v0, $0
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop
