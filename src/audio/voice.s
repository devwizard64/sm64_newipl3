.include "sm64/asm.inc"

.set noreorder
.set noat

.align 4

Na_voice_80319920:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lw      $v0, 0x002C($a0)
	move    $s0, $a0
	addiu   $a0, $a0, 0x0054
	lbu     $t6, 0x0014($v0)
	addiu   $a2, $s0, 0x0008
	bnezl   $t6, 17$
	addiu   $a0, $s0, 0x0054
	lw      $t7, 0x0050($v0)
	addiu   $a2, $s0, 0x0008
	jal     Na_effect_8031B58C
	lw      $a1, 0x007C($t7)
	b       20$
	li      $t8, 0x0001
	addiu   $a0, $s0, 0x0054
17$:
	jal     Na_effect_8031B58C
	lw      $a1, 0x0018($v0)
	li      $t8, 0x0001
20$:
	sb      $t8, 0x0055($s0)
	jal     Na_driver_80316AC8
	move    $a0, $s0
	jal     Na_driver_80316DB4
	move    $a0, $s0
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_voice_80319998:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     Na_driver_80316E00
	nop
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_voice_803199B8
Na_voice_803199B8:
	addiu   $sp, $sp, -0x0058
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sw      $ra, 0x003C($sp)
	sw      $s4, 0x0038($sp)
	sw      $s3, 0x0034($sp)
	sw      $s2, 0x0030($sp)
	sw      $s1, 0x002C($sp)
	sw      $s0, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	blez    $v0, 246$
	sdc1    $f20, 0x0018($sp)
	lui     $at, %hi(Na_voice_80338E10)
	la.u    $s1, _Na_work_bss+0x4F08
	la.l    $s1, _Na_work_bss+0x4F08
	lwc1    $f22, %lo(Na_voice_80338E10)($at)
	move    $s2, $0
	li      $s4, -0x0001
	li      $s3, 0x0001
19$:
	lui     $t6, %hi(_Na_work_bss+0x1870)
	lw      $t6, %lo(_Na_work_bss+0x1870)($t6)
	addu    $s0, $s2, $t6
	lbu     $v1, 0x0004($s0)
	beqzl   $v1, 240$
	sll     $v1, $v0, 2
	beql    $s3, $v1, 32$
	lh      $t0, 0x0008($s0)
	lw      $t7, 0x0000($s0)
	sll     $t9, $t7, 3
	bgezl   $t9, 148$
	lbu     $t0, 0x0055($s0)
	lh      $t0, 0x0008($s0)
32$:
	beqzl   $t0, 39$
	lw      $t4, 0x0030($s0)
	lw      $t1, 0x0000($s0)
	sll     $t3, $t1, 3
	bgez    $t3, 173$
	nop
	lw      $t4, 0x0030($s0)
39$:
	beq     $s4, $t4, 124$
	nop
	jal     Na_voice_80319998
	move    $a0, $s0
	lw      $a1, 0x0030($s0)
	lw      $t5, 0x0050($a1)
	beqz    $t5, 100$
	nop
	jal     Na_voice_8031A6CC
	move    $a0, $s0
	bne     $v0, $s3, 80$
	nop
	jal     Na_voice_80319998
	move    $a0, $s0
	lw      $v0, 0x00A4($s0)
	addiu   $a1, $s0, 0x00A4
	beqz    $v0, 65$
	nop
	lw      $t6, 0x0004($a1)
	lw      $t7, 0x0000($a1)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0000($a1)
	lw      $t9, 0x0004($a1)
	sw      $t8, 0x0000($t9)
	sw      $0, 0x0000($a1)
	lw      $v0, 0x00A4($s0)
65$:
	bnez    $v0, 173$
	addiu   $a1, $s0, 0x00A4
	sw      $s1, 0x0000($a1)
	lw      $t0, 0x0004($s1)
	lui     $at, %hi(_Na_work_bss+0x4F0C)
	sw      $t0, 0x0004($a1)
	lw      $t1, 0x0004($s1)
	sw      $a1, 0x0000($t1)
	sw      $a1, %lo(_Na_work_bss+0x4F0C)($at)
	lw      $t2, 0x0008($s1)
	lw      $t4, 0x000C($s1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0008($s1)
	b       173$
	sw      $t4, 0x000C($a1)
80$:
	jal     Na_effect_8031B4A0
	move    $a0, $s0
	lw      $t5, 0x00A4($s0)
	addiu   $a1, $s0, 0x00A4
	bnezl   $t5, 89$
	lw      $t6, 0x0004($a1)
	b       95$
	addiu   $a1, $s0, 0x00A4
	lw      $t6, 0x0004($a1)
89$:
	lw      $t7, 0x0000($a1)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0000($a1)
	lw      $t9, 0x0004($a1)
	sw      $t8, 0x0000($t9)
	sw      $0, 0x0000($a1)
95$:
	lw      $a0, 0x00B0($s0)
	jal     Na_sequence_8031BF14
	addiu   $a0, $a0, 0x0030
	b       173$
	sw      $s4, 0x0030($s0)
100$:
	jal     Na_voice_80319998
	move    $a0, $s0
	lw      $t0, 0x00A4($s0)
	addiu   $a1, $s0, 0x00A4
	bnezl   $t0, 109$
	lw      $t1, 0x0004($a1)
	b       115$
	addiu   $a1, $s0, 0x00A4
	lw      $t1, 0x0004($a1)
109$:
	lw      $t2, 0x0000($a1)
	sw      $t1, 0x0004($t2)
	lw      $t3, 0x0000($a1)
	lw      $t4, 0x0004($a1)
	sw      $t3, 0x0000($t4)
	sw      $0, 0x0000($a1)
115$:
	jal     Na_sequence_8031BF14
	lw      $a0, 0x00B0($s0)
	sw      $s4, 0x0030($s0)
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sll     $v1, $v0, 2
	subu    $v1, $v1, $v0
	b       242$
	sll     $v1, $v1, 6
124$:
	jal     Na_voice_80319998
	move    $a0, $s0
	lw      $t5, 0x00A4($s0)
	addiu   $a1, $s0, 0x00A4
	bnezl   $t5, 133$
	lw      $t6, 0x0004($a1)
	b       139$
	addiu   $a1, $s0, 0x00A4
	lw      $t6, 0x0004($a1)
133$:
	lw      $t7, 0x0000($a1)
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0000($a1)
	lw      $t9, 0x0004($a1)
	sw      $t8, 0x0000($t9)
	sw      $0, 0x0000($a1)
139$:
	jal     Na_sequence_8031BF14
	lw      $a0, 0x00B0($s0)
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sll     $v1, $v0, 2
	subu    $v1, $v1, $v0
	b       242$
	sll     $v1, $v1, 6
	lbu     $t0, 0x0055($s0)
148$:
	bnez    $t0, 173$
	nop
	jal     Na_voice_80319998
	move    $a0, $s0
	lw      $t1, 0x00A4($s0)
	addiu   $a1, $s0, 0x00A4
	bnezl   $t1, 159$
	lw      $t2, 0x0004($a1)
	b       165$
	addiu   $a1, $s0, 0x00A4
	lw      $t2, 0x0004($a1)
159$:
	lw      $t3, 0x0000($a1)
	sw      $t2, 0x0004($t3)
	lw      $t4, 0x0000($a1)
	lw      $t5, 0x0004($a1)
	sw      $t4, 0x0000($t5)
	sw      $0, 0x0000($a1)
165$:
	jal     Na_sequence_8031BF14
	lw      $a0, 0x00B0($s0)
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sll     $v1, $v0, 2
	subu    $v1, $v1, $v0
	b       242$
	sll     $v1, $v1, 6
173$:
	jal     Na_effect_8031B5AC
	addiu   $a0, $s0, 0x0054
	jal     Na_effect_8031B440
	move    $a0, $s0
	lbu     $t6, 0x0004($s0)
	addiu   $v0, $s0, 0x0044
	bnel    $s3, $t6, 187$
	lw      $v0, 0x002C($s0)
	lwc1    $f0, 0x0004($v0)
	lwc1    $f20, 0x0008($v0)
	lwc1    $f12, 0x000C($v0)
	b       192$
	lbu     $a3, 0x0000($v0)
	lw      $v0, 0x002C($s0)
187$:
	lw      $t7, 0x0050($v0)
	lwc1    $f0, 0x0034($v0)
	lwc1    $f20, 0x002C($v0)
	lwc1    $f12, 0x0030($v0)
	lbu     $a3, 0x0003($t7)
192$:
	lwc1    $f6, 0x001C($s0)
	lwc1    $f8, 0x0018($s0)
	lh      $t8, 0x0008($s0)
	lui     $v0, %hi(_Na_work_bss+0x5DC4)
	mul.s   $f10, $f6, $f8
	lw      $v0, %lo(_Na_work_bss+0x5DC4)($v0)
	mtc1    $t8, $f4
	li      $at, 0x7D06
	cvt.s.w $f2, $f4
	mul.s   $f0, $f0, $f10
	beql    $v0, $at, 212$
	c.lt.s  $f0, $f22
	mtc1    $v0, $f18
	li      $at, 0x46FA0000
	mtc1    $at, $f16
	cvt.s.w $f4, $f18
	div.s   $f6, $f16, $f4
	mul.s   $f0, $f0, $f6
	nop
	c.lt.s  $f0, $f22
212$:
	lui     $at, %hi(Na_voice_80338E14)
	bc1t    216$
	nop
	mov.s   $f0, $f22
216$:
	lwc1    $f8, %lo(Na_voice_80338E14)($at)
	mfc1    $a1, $f0
	move    $a0, $s0
	mul.s   $f2, $f2, $f8
	sb      $a3, 0x004F($sp)
	swc1    $f12, 0x0044($sp)
	mul.s   $f10, $f20, $f2
	nop
	mul.s   $f20, $f10, $f2
	jal     Na_driver_80316DA8
	nop
	lwc1    $f12, 0x0044($sp)
	mfc1    $a1, $f20
	lbu     $a3, 0x004F($sp)
	mfc1    $a2, $f12
	jal     Na_driver_80316AF4
	move    $a0, $s0
	lui     $v0, %hi(_Na_work_bss+0x5DD0)
	lw      $v0, %lo(_Na_work_bss+0x5DD0)($v0)
	sll     $v1, $v0, 2
	subu    $v1, $v1, $v0
	b       242$
	sll     $v1, $v1, 6
	sll     $v1, $v0, 2
240$:
	subu    $v1, $v1, $v0
	sll     $v1, $v1, 6
242$:
	addiu   $s2, $s2, 0x00C0
	slt     $at, $s2, $v1
	bnez    $at, 19$
	nop
246$:
	lw      $ra, 0x003C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	lw      $s0, 0x0028($sp)
	lw      $s1, 0x002C($sp)
	lw      $s2, 0x0030($sp)
	lw      $s3, 0x0034($sp)
	lw      $s4, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0058

Na_voice_80319DB8:
	addiu   $sp, $sp, -0x0028
	li      $a2, -0x0001
	sw      $ra, 0x0014($sp)
	beq     $a0, $a2, 103$
	move    $a3, $a1
	lw      $a1, 0x0044($a0)
	beqzl   $a1, 104$
	lw      $ra, 0x0014($sp)
	lw      $v1, 0x0050($a0)
	move    $v0, $a1
	beqzl   $v1, 17$
	lw      $t7, 0x0030($v0)
	lbu     $t6, 0x0001($v1)
	bnezl   $t6, 17$
	lw      $t7, 0x0030($v0)
	sw      $0, 0x0044($a0)
	lw      $t7, 0x0030($v0)
17$:
	bnel    $a0, $t7, 21$
	lw      $t8, 0x002C($v0)
	sw      $a2, 0x0030($v0)
	lw      $t8, 0x002C($v0)
21$:
	bnel    $a0, $t8, 104$
	lw      $ra, 0x0014($sp)
	sb      $0, 0x0001($a0)
	lbu     $t9, 0x0055($v0)
	li      $t0, 0x0006
	li      $t2, 0x0001
	beq     $t0, $t9, 92$
	li      $at, 0x0007
	lwc1    $f4, 0x0034($a0)
	addiu   $a1, $v0, 0x0044
	lui     $t4, %hi(_Na_work_bss+0x5DDE)
	swc1    $f4, 0x0004($a1)
	lwc1    $f6, 0x002C($a0)
	swc1    $f6, 0x0008($a1)
	lwc1    $f8, 0x0030($a0)
	swc1    $f8, 0x000C($a1)
	lw      $v1, 0x0050($a0)
	beqzl   $v1, 43$
	lw      $t3, 0x002C($v0)
	lbu     $t1, 0x0003($v1)
	sb      $t1, 0x0000($a1)
	lw      $t3, 0x002C($v0)
43$:
	sb      $t2, 0x0004($v0)
	sw      $a2, 0x002C($v0)
	bne     $a3, $at, 65$
	sw      $t3, 0x0028($v0)
	lb      $t4, %lo(_Na_work_bss+0x5DDE)($t4)
	li      $t5, 0x8000
	lbu     $t7, 0x0054($v0)
	div     $0, $t5, $t4
	mflo    $t6
	ori     $t8, $t7, 0x0010
	bnez    $t4, 56$
	nop
	break   7
56$:
	li      $at, -0x0001
	bne     $t4, $at, 62$
	li      $at, 0x80000000
	bne     $t5, $at, 62$
	nop
	break   6
62$:
	sh      $t6, 0x0062($v0)
	b       92$
	sb      $t8, 0x0054($v0)
65$:
	lbu     $t9, 0x0054($v0)
	ori     $t1, $t9, 0x0020
	sb      $t1, 0x0054($v0)
	lbu     $v1, 0x0014($a0)
	bnez    $v1, 78$
	sll     $t4, $v1, 2
	lw      $t2, 0x0050($a0)
	lbu     $t3, 0x0078($t2)
	sll     $t5, $t3, 2
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	b       81$
	sh      $t5, 0x0062($v0)
78$:
	subu    $t4, $t4, $v1
	sll     $t4, $t4, 3
	sh      $t4, 0x0062($v0)
81$:
	lw      $t7, 0x0050($a0)
	lh      $t6, 0x005A($v0)
	lhu     $t8, 0x007A($t7)
	multu   $t6, $t8
	mflo    $t9
	bgez    $t9, 91$
	sra     $t1, $t9, 16
	li      $at, 0xFFFF
	addu    $at, $at, $t9
	sra     $t1, $at, 16
91$:
	sh      $t1, 0x0060($v0)
92$:
	bne     $a3, $t0, 103$
	addiu   $a1, $v0, 0x00A4
	move    $a0, $a1
	sw      $v0, 0x0024($sp)
	jal     Na_voice_8031A610
	sw      $a1, 0x001C($sp)
	lw      $v0, 0x0024($sp)
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x00B0($v0)
	jal     Na_voice_8031A5D0
	addiu   $a0, $a0, 0x0010
103$:
	lw      $ra, 0x0014($sp)
104$:
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_voice_80319F64
Na_voice_80319F64:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     Na_voice_80319DB8
	li      $a1, 0x0006
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_voice_80319F84:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     Na_voice_80319DB8
	li      $a1, 0x0007
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_voice_80319FA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f0, 0x0020($a1)
	move    $a3, $a0
	lbu     $v0, 0x0005($a0)
	c.lt.s  $f0, $f4
	li      $t6, 0x0040
	li      $at, 0x40000000
	bc1fl   21$
	mtc1    $at, $f16
	sb      $t6, 0x0005($a0)
	lui     $at, %hi(Na_voice_80338E18)
	lwc1    $f8, %lo(Na_voice_80338E18)($at)
	lwc1    $f6, 0x0020($a1)
	li      $a2, 0x0001
	mul.s   $f10, $f6, $f8
	b       56$
	swc1    $f10, 0x0020($a1)
	mtc1    $at, $f16
21$:
	li      $t7, 0x0020
	li      $at, 0x40800000
	c.lt.s  $f0, $f16
	nop
	bc1fl   36$
	mtc1    $at, $f8
	sb      $t7, 0x0005($a3)
	lui     $at, %hi(Na_voice_80338E1C)
	lwc1    $f4, %lo(Na_voice_80338E1C)($at)
	lwc1    $f18, 0x0020($a1)
	li      $a2, 0x0002
	mul.s   $f6, $f18, $f4
	b       56$
	swc1    $f6, 0x0020($a1)
	mtc1    $at, $f8
36$:
	li      $t8, 0x0010
	li      $t9, 0x0008
	c.lt.s  $f0, $f8
	lui     $at, %hi(Na_voice_80338E24)
	bc1fl   51$
	sb      $t9, 0x0005($a3)
	sb      $t8, 0x0005($a3)
	lui     $at, %hi(Na_voice_80338E20)
	lwc1    $f16, %lo(Na_voice_80338E20)($at)
	lwc1    $f10, 0x0020($a1)
	li      $a2, 0x0004
	mul.s   $f18, $f10, $f16
	b       56$
	swc1    $f18, 0x0020($a1)
	sb      $t9, 0x0005($a3)
51$:
	lwc1    $f4, 0x0020($a1)
	lwc1    $f6, %lo(Na_voice_80338E24)($at)
	li      $a2, 0x0008
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a1)
56$:
	lbu     $t1, 0x0005($a3)
	bnel    $v0, $t1, 65$
	lw      $t5, 0x0050($a1)
	lw      $t3, 0x0050($a1)
	lbu     $t2, 0x0006($a3)
	lh      $t4, 0x0018($t3)
	beql    $t2, $t4, 136$
	lw      $ra, 0x0014($sp)
	lw      $t5, 0x0050($a1)
65$:
	la.u    $a0, Na_WaveTable
	la.l    $a0, Na_WaveTable
	lh      $t6, 0x0018($t5)
	move    $v0, $0
	li      $v1, -0x0002
	sb      $t6, 0x0006($a3)
71$:
	lw      $t7, 0x0050($a1)
	lw      $t6, 0x0034($a3)
	sll     $t2, $v0, 1
	lh      $t8, 0x0018($t7)
	addu    $v0, $v0, $a2
	addiu   $v1, $v1, 0x0002
	sll     $t9, $t8, 2
	addu    $t1, $a0, $t9
	lw      $t3, -0x0200($t1)
	slti    $at, $v0, 0x0040
	addu    $t7, $t6, $v1
	addu    $t4, $t3, $t2
	lh      $t5, 0x0000($t4)
	bnez    $at, 71$
	sh      $t5, 0x0110($t7)
	lbu     $v1, 0x0005($a3)
	slti    $at, $v1, 0x0040
	move    $t0, $v1
	beqz    $at, 131$
	move    $a2, $v1
	andi    $v0, $v1, 0x00FF
92$:
	bltz    $a2, 96$
	move    $a0, $0
	blez    $a2, 112$
	nop
96$:
	blez    $v0, 127$
	move    $a1, $v0
	move    $v0, $0
99$:
	lw      $v1, 0x0034($a3)
	sll     $t1, $a2, 1
	addiu   $a0, $a0, 0x0001
	addu    $t8, $v1, $v0
	lh      $t9, 0x0110($t8)
	addu    $t3, $v1, $t1
	addu    $t2, $t3, $v0
	addiu   $v0, $v0, 0x0002
	bne     $a0, $a1, 99$
	sh      $t9, 0x0110($t2)
	lbu     $v1, 0x0005($a3)
	b       127$
	move    $t0, $v1
112$:
	blez    $v0, 127$
	move    $a1, $v0
	move    $v0, $0
115$:
	lw      $v1, 0x0034($a3)
	sll     $t5, $a2, 1
	addiu   $a0, $a0, 0x0001
	addu    $t4, $v1, $v0
	lh      $t6, 0x0110($t4)
	addu    $t7, $v1, $t5
	addu    $t8, $t7, $v0
	addiu   $v0, $v0, 0x0002
	bne     $a0, $a1, 115$
	sh      $t6, 0x0110($t8)
	lbu     $v1, 0x0005($a3)
	move    $t0, $v1
127$:
	addu    $a2, $a2, $t0
	slti    $at, $a2, 0x0040
	bnezl   $at, 92$
	andi    $v0, $v1, 0x00FF
131$:
	lw      $a0, 0x0034($a3)
	li      $a1, 0x0080
	jal     osWritebackDCache
	addiu   $a0, $a0, 0x0110
	lw      $ra, 0x0014($sp)
136$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_voice_8031A1D0
Na_voice_8031A1D0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lbu     $v0, 0x0005($a0)
	sw      $a0, 0x0020($sp)
	jal     Na_voice_80319FA4
	sw      $v0, 0x001C($sp)
	lw      $v0, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	beqzl   $v0, 29$
	sw      $0, 0x0014($a0)
	lbu     $t7, 0x0005($a0)
	lw      $t6, 0x0014($a0)
	div     $0, $t7, $v0
	mflo    $t8
	bnez    $v0, 17$
	nop
	break   7
17$:
	li      $at, -0x0001
	bne     $v0, $at, 23$
	li      $at, 0x80000000
	bne     $t7, $at, 23$
	nop
	break   6
23$:
	multu   $t6, $t8
	mflo    $t9
	sw      $t9, 0x0014($a0)
	b       30$
	lw      $ra, 0x0014($sp)
	sw      $0, 0x0014($a0)
29$:
	lw      $ra, 0x0014($sp)
30$:
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_voice_8031A254:
	sw      $a0, 0x0000($a0)
	sw      $a0, 0x0004($a0)
	jr      $ra
	sw      $0, 0x0008($a0)

.globl Na_voice_8031A264
Na_voice_8031A264:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     Na_voice_8031A254
	move    $s0, $a0
	jal     Na_voice_8031A254
	addiu   $a0, $s0, 0x0010
	jal     Na_voice_8031A254
	addiu   $a0, $s0, 0x0020
	jal     Na_voice_8031A254
	addiu   $a0, $s0, 0x0030
	sw      $s0, 0x000C($s0)
	sw      $s0, 0x001C($s0)
	sw      $s0, 0x002C($s0)
	sw      $s0, 0x003C($s0)
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl Na_voice_8031A2B4
Na_voice_8031A2B4:
	addiu   $sp, $sp, -0x0030
	sw      $s3, 0x0024($sp)
	la.u    $s3, _Na_work_bss+0x4F08
	la.l    $s3, _Na_work_bss+0x4F08
	sw      $ra, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     Na_voice_8031A264
	move    $a0, $s3
	la.u    $s4, _Na_work_bss+0x5DD0
	la.l    $s4, _Na_work_bss+0x5DD0
	lw      $t6, 0x0000($s4)
	move    $s1, $0
	move    $s0, $0
	blez    $t6, 37$
	la.u    $s2, _Na_work_bss+0x1870
	la.l    $s2, _Na_work_bss+0x1870
	lw      $v0, 0x0000($s2)
20$:
	move    $a0, $s3
	addu    $t7, $s0, $v0
	addu    $t8, $v0, $s0
	sw      $t7, 0x00AC($t8)
	lw      $t9, 0x0000($s2)
	addu    $t0, $t9, $s0
	sw      $0, 0x00A4($t0)
	lw      $t1, 0x0000($s2)
	addu    $a1, $s0, $t1
	jal     Na_sequence_8031BF14
	addiu   $a1, $a1, 0x00A4
	lw      $t2, 0x0000($s4)
	addiu   $s1, $s1, 0x0001
	addiu   $s0, $s0, 0x00C0
	slt     $at, $s1, $t2
	bnezl   $at, 20$
	lw      $v0, 0x0000($s2)
37$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl Na_voice_8031A368
Na_voice_8031A368:
	addiu   $sp, $sp, -0x0050
	sw      $s4, 0x0028($sp)
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s6, 0x0030($sp)
	sw      $s5, 0x002C($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	la.u    $s4, _Na_work_bss+0x5DD0
	move    $s6, $a0
	sw      $ra, 0x003C($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	la.l    $s4, _Na_work_bss+0x5DD0
	lw      $s2, 0x0048($sp)
	lw      $s3, 0x0040($sp)
	move    $s5, $0
	li      $s7, 0x0001
	li      $s8, 0x0002
19$:
	beqz    $s5, 29$
	move    $s1, $0
	beq     $s5, $s7, 33$
	nop
	beq     $s5, $s8, 37$
	li      $at, 0x0003
	beq     $s5, $at, 41$
	nop
	b       45$
	lw      $s0, 0x0004($s2)
29$:
	la.u    $s3, _Na_work_bss+0x4F08
	move    $s2, $s6
	b       44$
	la.l    $s3, _Na_work_bss+0x4F08
33$:
	la.u    $s3, _Na_work_bss+0x4F18
	addiu   $s2, $s6, 0x0010
	b       44$
	la.l    $s3, _Na_work_bss+0x4F18
37$:
	la.u    $s3, _Na_work_bss+0x4F28
	addiu   $s2, $s6, 0x0020
	b       44$
	la.l    $s3, _Na_work_bss+0x4F28
41$:
	la.u    $s3, _Na_work_bss+0x4F38
	addiu   $s2, $s6, 0x0030
	la.l    $s3, _Na_work_bss+0x4F38
44$:
	lw      $s0, 0x0004($s2)
45$:
	beql    $s0, $s2, 58$
	addiu   $s5, $s5, 0x0001
	jal     Na_voice_8031A610
	move    $a0, $s0
	move    $a0, $s3
	jal     Na_sequence_8031BF14
	move    $a1, $s0
	lw      $t6, 0x0000($s4)
	addiu   $s1, $s1, 0x0001
	slt     $at, $t6, $s1
	beqzl   $at, 45$
	lw      $s0, 0x0004($s2)
	addiu   $s5, $s5, 0x0001
58$:
	li      $at, 0x0004
	bne     $s5, $at, 19$
	nop
	lw      $ra, 0x003C($sp)
	sw      $s3, 0x0040($sp)
	sw      $s2, 0x0048($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl Na_voice_8031A494
Na_voice_8031A494:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x003C($sp)
	sw      $s5, 0x002C($sp)
	sw      $s3, 0x0024($sp)
	move    $s3, $a1
	move    $s5, $a0
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s6, 0x0030($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	jal     Na_voice_8031A368
	sw      $s0, 0x0018($sp)
	move    $s4, $0
	blez    $s3, 67$
	move    $s0, $0
	li      $s8, 0x0002
	li      $s7, 0x0001
	li      $s6, 0x0004
	lw      $s2, 0x0044($sp)
	lw      $s1, 0x0048($sp)
22$:
	beql    $s4, $s6, 68$
	lw      $ra, 0x003C($sp)
	beqz    $s4, 34$
	nop
	beq     $s4, $s7, 38$
	nop
	beq     $s4, $s8, 42$
	li      $at, 0x0003
	beq     $s4, $at, 46$
	nop
	b       50$
	slt     $at, $s0, $s3
34$:
	la.u    $s1, _Na_work_bss+0x4F08
	la.l    $s1, _Na_work_bss+0x4F08
	b       49$
	move    $s2, $s5
38$:
	la.u    $s1, _Na_work_bss+0x4F18
	la.l    $s1, _Na_work_bss+0x4F18
	b       49$
	addiu   $s2, $s5, 0x0010
42$:
	la.u    $s1, _Na_work_bss+0x4F28
	la.l    $s1, _Na_work_bss+0x4F28
	b       49$
	addiu   $s2, $s5, 0x0020
46$:
	la.u    $s1, _Na_work_bss+0x4F38
	la.l    $s1, _Na_work_bss+0x4F38
	addiu   $s2, $s5, 0x0030
49$:
	slt     $at, $s0, $s3
50$:
	beqzl   $at, 63$
	slt     $at, $s0, $s3
52$:
	jal     Na_sequence_8031BF54
	move    $a0, $s1
	beqz    $v0, 62$
	move    $a0, $s2
	jal     Na_sequence_8031BF14
	addiu   $a1, $v0, 0x00A4
	addiu   $s0, $s0, 0x0001
	slt     $at, $s0, $s3
	bnez    $at, 52$
	nop
62$:
	slt     $at, $s0, $s3
63$:
	bnez    $at, 22$
	addiu   $s4, $s4, 0x0001
	sw      $s2, 0x0044($sp)
	sw      $s1, 0x0048($sp)
67$:
	lw      $ra, 0x003C($sp)
68$:
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0058

Na_voice_8031A5D0:
	lw      $t6, 0x0000($a1)
	bnez    $t6, 14$
	nop
	sw      $a0, 0x0000($a1)
	lw      $t7, 0x0004($a0)
	sw      $t7, 0x0004($a1)
	lw      $t8, 0x0004($a0)
	sw      $a1, 0x0000($t8)
	lw      $t9, 0x0008($a0)
	lw      $t1, 0x000C($a0)
	sw      $a1, 0x0004($a0)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0008($a0)
	sw      $t1, 0x000C($a1)
14$:
	jr      $ra
	nop

.globl Na_voice_8031A610
Na_voice_8031A610:
	lw      $v0, 0x0000($a0)
	beqz    $v0, 9$
	nop
	lw      $t6, 0x0004($a0)
	sw      $t6, 0x0004($v0)
	lw      $t7, 0x0000($a0)
	lw      $t8, 0x0004($a0)
	sw      $t7, 0x0000($t8)
	sw      $0, 0x0000($a0)
9$:
	jr      $ra
	nop

Na_voice_8031A63C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lw      $v0, 0x0004($a0)
	move    $a2, $a0
	bne     $v0, $a0, 8$
	nop
	b       32$
	move    $v0, $0
8$:
	beq     $v0, $a2, 21$
	move    $a0, $v0
	lw      $t6, 0x0008($a0)
11$:
	lw      $t8, 0x0008($v0)
	lbu     $t7, 0x0004($t6)
	lbu     $t9, 0x0004($t8)
	slt     $at, $t7, $t9
	bnezl   $at, 19$
	lw      $v0, 0x0004($v0)
	move    $a0, $v0
	lw      $v0, 0x0004($v0)
19$:
	bnel    $v0, $a2, 11$
	lw      $t6, 0x0008($a0)
21$:
	lw      $t0, 0x0008($a0)
	lbu     $t1, 0x0004($t0)
	slt     $at, $a1, $t1
	beqz    $at, 28$
	nop
	b       32$
	move    $v0, $0
28$:
	jal     Na_voice_8031A610
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lw      $v0, 0x0008($a0)
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_voice_8031A6CC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $t6, -0x0001
	sw      $t6, 0x0028($a0)
	sw      $a1, 0x002C($a0)
	lw      $t7, 0x0050($a1)
	lui     $t0, %hi(_Na_work_bss+0x730)
	lbu     $t8, 0x0004($t7)
	sb      $t8, 0x0004($a0)
	lw      $t9, 0x0050($a1)
	lbu     $v0, 0x0005($t9)
	addu    $t0, $t0, $v0
	lbu     $t0, %lo(_Na_work_bss+0x730)($t0)
	slti    $t1, $t0, 0x0002
	beqzl   $t1, 19$
	sb      $v0, 0x0007($a0)
	b       46$
	li      $v0, 0x0001
	sb      $v0, 0x0007($a0)
19$:
	lw      $t2, 0x0050($a1)
	lbu     $t7, 0x0000($a0)
	li      $t1, 0x0003
	lw      $t3, 0x0000($t2)
	andi    $t8, $t7, 0xFFFE
	sll     $t4, $t3, 5
	srl     $t5, $t4, 31
	andi    $t6, $t5, 0x0001
	or      $t9, $t6, $t8
	sb      $t9, 0x0000($a0)
	lw      $t0, 0x004C($a1)
	sw      $t0, 0x0024($a0)
	lw      $t2, 0x0050($a1)
	sb      $t1, 0x0001($a1)
	sw      $a0, 0x0044($a1)
	sw      $a0, 0x0034($t2)
	lw      $t3, 0x0050($a1)
	sw      $a1, 0x0038($t3)
	lw      $t4, 0x0024($a0)
	bnez    $t4, 43$
	nop
	jal     Na_voice_80319FA4
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
43$:
	jal     Na_voice_80319920
	nop
	move    $v0, $0
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_voice_8031A794:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     Na_voice_80319F84
	lw      $a0, 0x002C($a0)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	sw      $t7, 0x0030($t8)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_voice_8031A7C8:
	li      $t6, 0x0001
	sw      $a1, 0x0030($a0)
	sb      $t6, 0x0004($a0)
	lui     $t7, %hi(_Na_work_bss+0x5DDE)
	lb      $t7, %lo(_Na_work_bss+0x5DDE)($t7)
	li      $t8, 0x8000
	lbu     $t0, 0x0054($a0)
	div     $0, $t8, $t7
	mflo    $t9
	ori     $t1, $t0, 0x0010
	bnez    $t7, 13$
	nop
	break   7
13$:
	li      $at, -0x0001
	bne     $t7, $at, 19$
	li      $at, 0x80000000
	bne     $t8, $at, 19$
	nop
	break   6
19$:
	sh      $t9, 0x0062($a0)
	jr      $ra
	sb      $t1, 0x0054($a0)

Na_voice_8031A820:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     Na_sequence_8031BF54
	sw      $a1, 0x0024($sp)
	beqz    $v0, 26$
	move    $a2, $v0
	move    $a0, $v0
	lw      $a1, 0x0024($sp)
	jal     Na_voice_8031A6CC
	sw      $v0, 0x001C($sp)
	li      $at, 0x0001
	bne     $v0, $at, 20$
	lw      $a2, 0x001C($sp)
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A5D0
	addiu   $a1, $a2, 0x00A4
	b       27$
	move    $v0, $0
20$:
	lw      $a0, 0x0020($sp)
	addiu   $a1, $a2, 0x00A4
	sw      $a2, 0x001C($sp)
	jal     Na_voice_8031A5D0
	addiu   $a0, $a0, 0x0030
	lw      $a2, 0x001C($sp)
26$:
	move    $v0, $a2
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_voice_8031A89C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     Na_sequence_8031BF54
	addiu   $a0, $a0, 0x0010
	beqz    $v0, 16$
	sw      $v0, 0x001C($sp)
	move    $a0, $v0
	jal     Na_voice_8031A7C8
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	addiu   $a0, $a0, 0x0020
	jal     Na_sequence_8031BF14
	addiu   $a1, $a1, 0x00A4
16$:
	lw      $ra, 0x0014($sp)
	lw      $v0, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

Na_voice_8031A8F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t7, 0x0050($a1)
	addiu   $a0, $a0, 0x0030
	jal     Na_voice_8031A63C
	lbu     $a1, 0x0004($t7)
	beqz    $v0, 18$
	sw      $v0, 0x001C($sp)
	move    $a0, $v0
	jal     Na_voice_8031A794
	lw      $a1, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	addiu   $a0, $a0, 0x0020
	jal     Na_sequence_8031BF14
	addiu   $a1, $a1, 0x00A4
18$:
	lw      $ra, 0x0014($sp)
	lw      $v0, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl Na_voice_8031A94C
Na_voice_8031A94C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lw      $v1, 0x0050($a0)
	move    $s0, $a0
	lbu     $v0, 0x0001($v1)
	andi    $t6, $v0, 0x0001
	beqz    $t6, 28$
	andi    $t8, $v0, 0x0002
	lw      $a2, 0x0044($a0)
	beqz    $a2, 28$
	nop
	lw      $t7, 0x0028($a2)
	move    $a1, $s0
	bne     $a0, $t7, 28$
	move    $a0, $a2
	jal     Na_voice_8031A7C8
	sw      $a2, 0x0024($sp)
	lw      $a2, 0x0024($sp)
	addiu   $s0, $a2, 0x00A4
	jal     Na_voice_8031A610
	move    $a0, $s0
	la.u    $a0, _Na_work_bss+0x4F28
	la.l    $a0, _Na_work_bss+0x4F28
	jal     Na_sequence_8031BF14
	move    $a1, $s0
	b       181$
	lw      $v0, 0x0024($sp)
28$:
	beqz    $t8, 52$
	andi    $t9, $v0, 0x0004
	addiu   $a0, $v1, 0x0080
	jal     Na_voice_8031A820
	move    $a1, $s0
	bnez    $v0, 50$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A89C
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 50$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A8F0
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 50$
	move    $a2, $v0
	sb      $0, 0x0001($s0)
	b       181$
	move    $v0, $0
50$:
	b       181$
	move    $v0, $a2
52$:
	beqz    $t9, 97$
	andi    $t3, $v0, 0x0008
	addiu   $a0, $v1, 0x0080
	jal     Na_voice_8031A820
	move    $a1, $s0
	bnez    $v0, 95$
	move    $a2, $v0
	lw      $t0, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t0)
	jal     Na_voice_8031A820
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 95$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A89C
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 95$
	move    $a2, $v0
	lw      $t1, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t1)
	jal     Na_voice_8031A89C
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 95$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A8F0
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 95$
	move    $a2, $v0
	lw      $t2, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t2)
	jal     Na_voice_8031A8F0
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 95$
	move    $a2, $v0
	sb      $0, 0x0001($s0)
	b       181$
	move    $v0, $0
95$:
	b       181$
	move    $v0, $a2
97$:
	beqz    $t3, 122$
	addiu   $a0, $v1, 0x0080
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A820
	move    $a1, $s0
	bnez    $v0, 120$
	move    $a2, $v0
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A89C
	move    $a1, $s0
	bnez    $v0, 120$
	move    $a2, $v0
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A8F0
	move    $a1, $s0
	bnez    $v0, 120$
	move    $a2, $v0
	sb      $0, 0x0001($s0)
	b       181$
	move    $v0, $0
120$:
	b       181$
	move    $v0, $a2
122$:
	jal     Na_voice_8031A820
	move    $a1, $s0
	bnez    $v0, 180$
	move    $a2, $v0
	lw      $t4, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t4)
	jal     Na_voice_8031A820
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 180$
	move    $a2, $v0
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A820
	move    $a1, $s0
	bnez    $v0, 180$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A89C
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 180$
	move    $a2, $v0
	lw      $t5, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t5)
	jal     Na_voice_8031A89C
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 180$
	move    $a2, $v0
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A89C
	move    $a1, $s0
	bnez    $v0, 180$
	move    $a2, $v0
	lw      $a0, 0x0050($s0)
	move    $a1, $s0
	jal     Na_voice_8031A8F0
	addiu   $a0, $a0, 0x0080
	bnez    $v0, 180$
	move    $a2, $v0
	lw      $t6, 0x0050($s0)
	move    $a1, $s0
	lw      $a0, 0x0040($t6)
	jal     Na_voice_8031A8F0
	addiu   $a0, $a0, 0x0090
	bnez    $v0, 180$
	move    $a2, $v0
	la.u    $a0, _Na_work_bss+0x4F08
	la.l    $a0, _Na_work_bss+0x4F08
	jal     Na_voice_8031A8F0
	move    $a1, $s0
	bnez    $v0, 180$
	move    $a2, $v0
	sb      $0, 0x0001($s0)
	b       181$
	move    $v0, $0
180$:
	move    $v0, $a2
181$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_voice_8031AC34
Na_voice_8031AC34:
	addiu   $sp, $sp, -0x0040
	sw      $s5, 0x002C($sp)
	la.u    $s5, _Na_work_bss+0x5DD0
	la.l    $s5, _Na_work_bss+0x5DD0
	lw      $t6, 0x0000($s5)
	sw      $s2, 0x0020($sp)
	sw      $ra, 0x003C($sp)
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s6, 0x0030($sp)
	sw      $s4, 0x0028($sp)
	sw      $s3, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	blez    $t6, 82$
	move    $s2, $0
	la.u    $s8, _Na_work_bss+0x4EF8
	la.u    $s6, _Na_work_bss+0x1870
	la.l    $s6, _Na_work_bss+0x1870
	la.l    $s8, _Na_work_bss+0x4EF8
	move    $s3, $0
	li      $s7, -0x0001
	li      $s4, 0x0001
	lw      $t7, 0x0000($s6)
24$:
	addu    $s0, $s3, $t7
	lw      $v0, 0x002C($s0)
	beql    $s7, $v0, 77$
	lw      $t6, 0x0000($s5)
	lw      $t8, 0x0000($v0)
	move    $s1, $0
	srl     $t9, $t8, 31
	bnezl   $t9, 40$
	lw      $a0, 0x0050($v0)
	lbu     $t0, 0x0004($s0)
	slti    $at, $t0, 0x0002
	bnezl   $at, 40$
	lw      $a0, 0x0050($v0)
	b       65$
	li      $s1, 0x0001
	lw      $a0, 0x0050($v0)
40$:
	addiu   $a1, $v0, 0x0070
	bnezl   $a0, 50$
	lw      $v0, 0x0040($a0)
	jal     Na_sequence_8031BF14
	move    $a0, $s8
	jal     Na_sequence_8031BA30
	lw      $a0, 0x002C($s0)
	b       65$
	sb      $s4, 0x0004($s0)
	lw      $v0, 0x0040($a0)
50$:
	bnezl   $v0, 57$
	lw      $t1, 0x0000($v0)
	jal     Na_sequence_8031BAF0
	nop
	b       65$
	sb      $s4, 0x0004($s0)
	lw      $t1, 0x0000($v0)
57$:
	sll     $t3, $t1, 2
	bgez    $t3, 65$
	nop
	lbu     $t4, 0x0002($a0)
	andi    $t5, $t4, 0x00C0
	beqz    $t5, 65$
	nop
	li      $s1, 0x0001
65$:
	beqzl   $s1, 77$
	lw      $t6, 0x0000($s5)
	jal     Na_voice_80319F84
	lw      $a0, 0x002C($s0)
	addiu   $s1, $s0, 0x00A4
	jal     Na_voice_8031A610
	move    $a0, $s1
	lw      $a0, 0x00B0($s0)
	jal     Na_voice_8031A5D0
	move    $a1, $s1
	sb      $s4, 0x0004($s0)
	lw      $t6, 0x0000($s5)
77$:
	addiu   $s2, $s2, 0x0001
	addiu   $s3, $s3, 0x00C0
	slt     $at, $s2, $t6
	bnezl   $at, 24$
	lw      $t7, 0x0000($s6)
82$:
	lw      $ra, 0x003C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	lw      $s5, 0x002C($sp)
	lw      $s6, 0x0030($sp)
	lw      $s7, 0x0034($sp)
	lw      $s8, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl Na_voice_8031ADAC
Na_voice_8031ADAC:
	addiu   $sp, $sp, -0x0040
	sw      $s4, 0x002C($sp)
	la.u    $s4, _Na_work_bss+0x5DD0
	la.l    $s4, _Na_work_bss+0x5DD0
	lw      $t6, 0x0000($s4)
	sw      $s1, 0x0020($sp)
	sw      $ra, 0x003C($sp)
	sw      $s7, 0x0038($sp)
	sw      $s6, 0x0034($sp)
	sw      $s5, 0x0030($sp)
	sw      $s3, 0x0028($sp)
	sw      $s2, 0x0024($sp)
	sw      $s0, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	blez    $t6, 64$
	move    $s1, $0
	la.u    $s7, _Na_work_bss+0x128
	la.u    $s5, _Na_work_bss+0x1870
	mtc1    $0, $f20
	la.l    $s5, _Na_work_bss+0x1870
	la.l    $s7, _Na_work_bss+0x128
	move    $s2, $0
	li      $s6, 0x003F
	li      $s3, -0x0001
	lw      $t7, 0x0000($s5)
25$:
	move    $a0, $s7
	li      $a1, 0x0190
	addu    $s0, $s2, $t7
	lbu     $t8, 0x0000($s0)
	sb      $0, 0x0004($s0)
	sw      $s3, 0x002C($s0)
	andi    $t0, $t8, 0xFF7F
	andi    $t2, $t0, 0x00FB
	sb      $t0, 0x0000($s0)
	andi    $t4, $t2, 0x00FD
	sb      $t2, 0x0000($s0)
	sb      $t4, 0x0000($s0)
	andi    $t5, $t4, 0x00FE
	sb      $t5, 0x0000($s0)
	sw      $s3, 0x0030($s0)
	sw      $s3, 0x0028($s0)
	sb      $0, 0x0040($s0)
	sb      $0, 0x0001($s0)
	sb      $0, 0x0005($s0)
	sb      $0, 0x0006($s0)
	sh      $0, 0x003C($s0)
	sh      $0, 0x003E($s0)
	swc1    $f20, 0x0038($s0)
	sb      $s6, 0x0041($s0)
	swc1    $f20, 0x004C($s0)
	sh      $0, 0x0008($s0)
	sb      $0, 0x0055($s0)
	sb      $0, 0x0054($s0)
	sb      $0, 0x0090($s0)
	swc1    $f20, 0x0078($s0)
	jal     Na_memory_80317040
	swc1    $f20, 0x007C($s0)
	sw      $v0, 0x0034($s0)
	lw      $t6, 0x0000($s4)
	addiu   $s1, $s1, 0x0001
	addiu   $s2, $s2, 0x00C0
	slt     $at, $s1, $t6
	bnezl   $at, 25$
	lw      $t7, 0x0000($s5)
64$:
	lw      $ra, 0x003C($sp)
	ldc1    $f20, 0x0010($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	lw      $s2, 0x0024($sp)
	lw      $s3, 0x0028($sp)
	lw      $s4, 0x002C($sp)
	lw      $s5, 0x0030($sp)
	lw      $s6, 0x0034($sp)
	lw      $s7, 0x0038($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040
