.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

Na_game_8031E4F0:
	lui     $v1, %hi(_Na_work_bss+0x188)
	lw      $v1, %lo(_Na_work_bss+0x188)($v1)
	move    $v0, $0
	beqz    $v1, 10$
	nop
	addiu   $v0, $v0, 0x0001
6$:
	sltu    $at, $v0, $v1
	bnezl   $at, 6$
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
10$:
	lui     $v1, %hi(_Na_work_bss+0x358)
	lw      $v1, %lo(_Na_work_bss+0x358)($v1)
	beqzl   $v1, 20$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v0, 0x0001
15$:
	sltu    $at, $v0, $v1
	bnezl   $at, 15$
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
	addiu   $v0, $v0, 0x0001
20$:
	slti    $at, $v0, 0x0028
	bnezl   $at, 20$
	addiu   $v0, $v0, 0x0001
	move    $v0, $0
	li      $v1, 0x0028
	addiu   $v0, $v0, 0x0004
26$:
	bnel    $v0, $v1, 26$
	addiu   $v0, $v0, 0x0004
	jr      $ra
	nop

Na_game_8031E568:
	la.u    $t6, _Na_work_bss+0x5DE0
	la.l    $t6, _Na_work_bss+0x5DE0
	jr      $ra
	lw      $0, 0x0000($t6)

Na_game_8031E578:
	bnez    $a1, 3$
	sll     $t6, $a0, 2
	addiu   $a1, $a1, 0x0001
3$:
	mtc1    $a1, $f6
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_work_bss+0x1878
	cvt.s.w $f8, $f6
	la.l    $t7, _Na_work_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lwc1    $f4, 0x0018($v0)
	li      $t8, 0x0001
	sb      $t8, 0x0002($v0)
	div.s   $f10, $f4, $f8
	sh      $a1, 0x000E($v0)
	neg.s   $f16, $f10
	jr      $ra
	swc1    $f16, 0x001C($v0)

Na_game_8031E5C0:
	beqz    $a1, 17$
	sll     $t6, $a0, 2
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_work_bss+0x1878
	la.l    $t7, _Na_work_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lbu     $t8, 0x0002($v0)
	li      $at, 0x0001
	li      $t9, 0x0002
	beq     $t8, $at, 17$
	nop
	mtc1    $0, $f0
	sb      $t9, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	swc1    $f0, 0x0018($v0)
	swc1    $f0, 0x001C($v0)
17$:
	jr      $ra
	nop

Na_game_8031E60C:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	la.u    $t8, _Na_work_bss+0x1878
	la.l    $t8, _Na_work_bss+0x1878
	sll     $t7, $t7, 6
	addu    $v0, $t7, $t8
	lbu     $t9, 0x0002($v0)
	sw      $a2, 0x0008($sp)
	andi    $t6, $a2, 0x00FF
	li      $at, 0x0001
	beq     $t9, $at, 36$
	move    $a2, $t6
	mtc1    $a2, $f4
	li      $at, 0x40590000
	mtc1    $at, $f11
	cvt.s.w $f6, $f4
	mtc1    $0, $f10
	lwc1    $f2, 0x0018($v0)
	sh      $0, 0x000E($v0)
	cvt.d.s $f18, $f2
	cvt.d.s $f8, $f6
	swc1    $f2, 0x0020($v0)
	div.d   $f16, $f8, $f10
	mul.d   $f4, $f16, $f18
	bnez    $a1, 28$
	cvt.s.d $f0, $f4
	jr      $ra
	swc1    $f0, 0x0018($v0)
28$:
	mtc1    $a1, $f8
	sub.s   $f6, $f0, $f2
	li      $t0, 0x0004
	sb      $t0, 0x0002($v0)
	cvt.s.w $f10, $f8
	sh      $a1, 0x000E($v0)
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x001C($v0)
36$:
	jr      $ra
	nop

Na_game_8031E6A4:
	sll     $t6, $a0, 2
	addu    $t6, $t6, $a0
	la.u    $t7, _Na_work_bss+0x1878
	la.l    $t7, _Na_work_bss+0x1878
	sll     $t6, $t6, 6
	addu    $v0, $t6, $t7
	lbu     $t8, 0x0002($v0)
	li      $at, 0x0001
	beq     $t8, $at, 25$
	nop
	bnez    $a1, 15$
	sh      $0, 0x000E($v0)
	lwc1    $f4, 0x0020($v0)
	jr      $ra
	swc1    $f4, 0x0018($v0)
15$:
	mtc1    $a1, $f16
	lwc1    $f6, 0x0020($v0)
	lwc1    $f8, 0x0018($v0)
	cvt.s.w $f18, $f16
	li      $t9, 0x0002
	sb      $t9, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	sub.s   $f10, $f6, $f8
	div.s   $f4, $f10, $f18
	swc1    $f4, 0x001C($v0)
25$:
	jr      $ra
	nop

Na_game_8031E710:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	la.u    $t8, _Na_work_bss+0x1878
	la.l    $t8, _Na_work_bss+0x1878
	sll     $t7, $t7, 6
	addu    $v0, $t7, $t8
	lbu     $t9, 0x0002($v0)
	sw      $a2, 0x0008($sp)
	andi    $t6, $a2, 0x00FF
	li      $at, 0x0001
	beq     $t9, $at, 40$
	move    $a2, $t6
	bnez    $a1, 23$
	sh      $0, 0x000E($v0)
	mtc1    $a2, $f4
	lui     $at, %hi(Na_game_80339710)
	ldc1    $f10, %lo(Na_game_80339710)($at)
	cvt.s.w $f6, $f4
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	jr      $ra
	swc1    $f18, 0x0018($v0)
23$:
	mtc1    $a2, $f4
	lui     $at, %hi(Na_game_80339718)
	ldc1    $f10, %lo(Na_game_80339718)($at)
	cvt.s.w $f6, $f4
	lwc1    $f4, 0x0018($v0)
	li      $t0, 0x0004
	sb      $t0, 0x0002($v0)
	sh      $a1, 0x000E($v0)
	cvt.d.s $f8, $f6
	div.d   $f16, $f8, $f10
	mtc1    $a1, $f8
	nop
	cvt.s.w $f10, $f8
	cvt.s.d $f18, $f16
	sub.s   $f6, $f18, $f4
	div.s   $f16, $f6, $f10
	swc1    $f16, 0x001C($v0)
40$:
	jr      $ra
	nop

.globl Na_Main
Na_Main:
	la.u    $a0, _Na_work_bss+0x5DE0
	la.l    $a0, _Na_work_bss+0x5DE0
	lw      $v0, 0x0000($a0)
	addiu   $sp, $sp, -0x0048
	la.u    $t7, Na_data_80335004
	addiu   $t6, $v0, 0x0001
	sw      $ra, 0x0014($sp)
	sw      $t6, 0x0000($a0)
	la.l    $t7, Na_data_80335004
	lw      $t8, 0x0000($t7)
	li.u    $at, 0x76557364
	li.l    $at, 0x76557364
	beq     $t8, $at, 16$
	li      $v0, 0x0003
	b       206$
	move    $v0, $0
16$:
	la.u    $a3, _Na_work_bss+0x5DEC
	la.l    $a3, _Na_work_bss+0x5DEC
	lw      $t5, 0x0000($a3)
	la.u    $v1, _Na_work_bss+0x5DE8
	la.l    $v1, _Na_work_bss+0x5DE8
	addiu   $t6, $t5, 0x0001
	div     $0, $t6, $v0
	lw      $t9, 0x0000($v1)
	mfhi    $t8
	move    $t7, $t6
	xori    $t4, $t9, 0x0001
	sw      $t4, 0x0000($v1)
	addiu   $t4, $t8, 0x0001
	div     $0, $t4, $v0
	sw      $t6, 0x0000($a3)
	bnez    $v0, 34$
	nop
	break   7
34$:
	li      $at, -0x0001
	bne     $v0, $at, 40$
	li      $at, 0x80000000
	bne     $t7, $at, 40$
	nop
	break   6
40$:
	mfhi    $a2
	sw      $t8, 0x0000($a3)
	move    $t9, $t8
	bnez    $v0, 46$
	nop
	break   7
46$:
	li      $at, -0x0001
	bne     $v0, $at, 52$
	li      $at, 0x80000000
	bne     $t4, $at, 52$
	nop
	break   6
52$:
	sw      $a2, 0x003C($sp)
	jal     osAiGetLength
	nop
	lw      $a2, 0x003C($sp)
	lui     $v1, %hi(_Na_work_bss+0x5EAC)
	la.u    $a3, _Na_work_bss+0x5DEC
	sll     $t5, $a2, 1
	addu    $v1, $v1, $t5
	lh      $v1, %lo(_Na_work_bss+0x5EAC)($v1)
	la.l    $a3, _Na_work_bss+0x5DEC
	srl     $t2, $v0, 2
	beqz    $v1, 74$
	sll     $t6, $a2, 2
	lui     $a0, %hi(_Na_work_bss+0x5EA0)
	addu    $a0, $a0, $t6
	lw      $a0, %lo(_Na_work_bss+0x5EA0)($a0)
	sll     $a1, $v1, 2
	jal     osAiSetNextBuffer
	sw      $t2, 0x0044($sp)
	la.u    $a3, _Na_work_bss+0x5DEC
	la.l    $a3, _Na_work_bss+0x5DEC
	lw      $t2, 0x0044($sp)
74$:
	la.u    $t3, _Na_work_bss+0x5DE4
	la.l    $t3, _Na_work_bss+0x5DE4
	lw      $v0, 0x0000($t3)
	sw      $0, 0x0000($t3)
	lui     $v0, %hi(_Na_work_bss+0x5DE8)
	lw      $v0, %lo(_Na_work_bss+0x5DE8)($v0)
	la.u    $t8, _Na_work_bss+0x5E00
	la.u    $t1, _Na_work_bss+0x5DFC
	sll     $t7, $v0, 2
	addu    $t7, $t7, $v0
	sll     $t7, $t7, 4
	la.l    $t8, _Na_work_bss+0x5E00
	la.l    $t1, _Na_work_bss+0x5DFC
	addu    $t9, $t7, $t8
	lui     $t5, %hi(_Na_work_bss+0x5DF0)
	sll     $t4, $v0, 2
	sw      $t9, 0x0000($t1)
	addu    $t5, $t5, $t4
	lw      $t5, %lo(_Na_work_bss+0x5DF0)($t5)
	lui     $at, %hi(_Na_work_bss+0x5DF8)
	lui     $a0, %hi(_Na_work_bss+0x5DD4)
	sw      $t5, %lo(_Na_work_bss+0x5DF8)($at)
	lw      $a2, 0x0000($a3)
	lw      $a0, %lo(_Na_work_bss+0x5DD4)($a0)
	lui     $t7, %hi(_Na_work_bss+0x5EA0)
	sll     $t6, $a2, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_Na_work_bss+0x5EA0)($t7)
	subu    $t4, $a0, $t2
	lui     $at, %hi(_Na_game_bss+0x00)
	addiu   $t5, $t4, 0x0040
	la.u    $t9, _Na_work_bss+0x5EAC
	la.l    $t9, _Na_work_bss+0x5EAC
	andi    $t6, $t5, 0xFFF0
	sll     $t8, $a2, 1
	sw      $t7, %lo(_Na_game_bss+0x00)($at)
	addiu   $t7, $t6, 0x0010
	addu    $t0, $t8, $t9
	sh      $t7, 0x0000($t0)
	lui     $a1, %hi(_Na_work_bss+0x5DD8)
	lw      $a1, %lo(_Na_work_bss+0x5DD8)($a1)
	lh      $v1, 0x0000($t0)
	lui     $t8, %hi(Na_game_80332E54)
	addiu   $v0, $a0, 0x0010
	slt     $at, $v1, $a1
	beqzl   $at, 124$
	slt     $at, $v0, $v1
	sh      $a1, 0x0000($t0)
	lh      $v1, 0x0000($t0)
	slt     $at, $v0, $v1
124$:
	beqz    $at, 127$
	nop
	sh      $v0, 0x0000($t0)
127$:
	lw      $t8, %lo(Na_game_80332E54)($t8)
	beqz    $t8, 135$
	nop
	jal     Na_game_8031FDAC
	sw      $t0, 0x0028($sp)
	lui     $at, %hi(Na_game_80332E54)
	lw      $t0, 0x0028($sp)
	sw      $0, %lo(Na_game_80332E54)($at)
135$:
	lui     $a0, %hi(_Na_work_bss+0x5DF8)
	lui     $a2, %hi(_Na_game_bss+0x00)
	lw      $a2, %lo(_Na_game_bss+0x00)($a2)
	lw      $a0, %lo(_Na_work_bss+0x5DF8)($a0)
	addiu   $a1, $sp, 0x0040
	jal     Na_driver_80314DE4
	lh      $a3, 0x0000($t0)
	la.u    $t0, _Na_work_bss+0x5DE0
	lui     $at, %hi(_Na_work_bss+0x5DF8)
	sw      $v0, %lo(_Na_work_bss+0x5DF8)($at)
	la.l    $t0, _Na_work_bss+0x5DE0
	la.u    $a0, _Na_work_bss+0x5F18
	lw      $t9, 0x0000($t0)
	la.l    $a0, _Na_work_bss+0x5F18
	lw      $t4, 0x0000($a0)
	lw      $t6, 0x0000($t0)
	la.u    $t1, _Na_work_bss+0x5DFC
	addu    $t5, $t9, $t4
	multu   $t5, $t6
	la.l    $t1, _Na_work_bss+0x5DFC
	lw      $t8, 0x0000($t1)
	lui     $a2, %hi(_Na_work_bss+0x5DE8)
	la.u    $a1, rspbootTextStart
	la.u    $t5, rspbootTextEnd
	la.l    $a1, rspbootTextStart
	la.u    $a3, aspMainDataStart
	li      $t4, 0x0002
	la.l    $t5, rspbootTextEnd
	mflo    $t7
	sw      $t7, 0x0000($a0)
	lw      $a2, %lo(_Na_work_bss+0x5DE8)($a2)
	sw      $0, 0x0040($t8)
	lw      $t9, 0x0000($t1)
	la.l    $a3, aspMainDataStart
	subu    $t6, $t5, $a1
	sw      $0, 0x0044($t9)
	lw      $v1, 0x0000($t1)
	la.u    $t9, aspMainDataEnd
	la.u    $t7, aspMainTextStart
	la.l    $t9, aspMainDataEnd
	sw      $t4, 0x0000($v1)
	la.l    $t7, aspMainTextStart
	li      $t8, 0x0800
	subu    $t4, $t9, $a3
	sra     $t5, $t4, 3
	sw      $t6, 0x000C($v1)
	sw      $t7, 0x0010($v1)
	sw      $t8, 0x0014($v1)
	sll     $t6, $t5, 3
	lui     $t8, %hi(_Na_work_bss+0x5DF0)
	sll     $t7, $a2, 2
	addu    $t8, $t8, $t7
	sw      $0, 0x0004($v1)
	sw      $a1, 0x0008($v1)
	sw      $a3, 0x0018($v1)
	sw      $t6, 0x001C($v1)
	sw      $0, 0x0020($v1)
	sw      $0, 0x0024($v1)
	sw      $0, 0x0028($v1)
	sw      $0, 0x002C($v1)
	lw      $t8, %lo(_Na_work_bss+0x5DF0)($t8)
	sw      $t8, 0x0030($v1)
	lw      $t9, 0x0040($sp)
	sw      $0, 0x0038($v1)
	sw      $0, 0x003C($v1)
	sll     $t4, $t9, 3
	jal     Na_system_803181EC
	sw      $t4, 0x0034($v1)
	la.u    $t1, _Na_work_bss+0x5DFC
	la.l    $t1, _Na_work_bss+0x5DFC
	lw      $v0, 0x0000($t1)
206$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl Na_SePlay
Na_SePlay:
	la.u    $a2, Na_game_80332F44
	la.l    $a2, Na_game_80332F44
	lbu     $v0, 0x0000($a2)
	la.u    $t7, _Na_game_bss+0x08
	la.l    $t7, _Na_game_bss+0x08
	sll     $t6, $v0, 3
	addu    $v1, $t6, $t7
	addiu   $t8, $v0, 0x0001
	sw      $a0, 0x0000($v1)
	sw      $a1, 0x0004($v1)
	jr      $ra
	sb      $t8, 0x0000($a2)

Na_game_8031EB30:
	addiu   $sp, $sp, -0x0048
	sw      $s6, 0x0030($sp)
	li      $at, 0x00FF0000
	and     $s6, $a0, $at
	sw      $s5, 0x002C($sp)
	li      $at, 0xF0000000
	and     $s5, $a0, $at
	srl     $t6, $s5, 28
	andi    $t7, $t6, 0x00FF
	lui     $t0, %hi(Na_game_803331E4)
	addu    $t0, $t0, $t7
	lbu     $t0, %lo(Na_game_803331E4)($t0)
	srl     $t8, $s6, 16
	andi    $t9, $t8, 0x00FF
	sw      $s8, 0x0038($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	slt     $at, $t9, $t0
	move    $s2, $a0
	move    $s8, $a1
	sw      $ra, 0x003C($sp)
	sw      $s7, 0x0034($sp)
	sw      $s4, 0x0028($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	move    $s3, $0
	beqz    $at, 163$
	move    $s5, $t7
	lui     $t1, %hi(Na_PortStatus)
	addu    $t1, $t1, $t7
	lbu     $t1, %lo(Na_PortStatus)($t1)
	sll     $t2, $t7, 3
	addu    $t2, $t2, $t7
	bnez    $t1, 163$
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t7
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	sll     $t2, $t2, 5
	addu    $t4, $t2, $t3
	lbu     $a1, 0x001B($t4)
	li      $a2, 0x00FF
	beq     $a2, $a1, 86$
	move    $v0, $a1
	beqz    $a1, 86$
	sll     $t5, $t7, 3
	addu    $t5, $t5, $t7
	sll     $t5, $t5, 2
	subu    $t5, $t5, $t7
	sll     $t5, $t5, 5
	addu    $s4, $t5, $t3
	li      $s7, 0x001C
52$:
	multu   $a1, $s7
	mflo    $t6
	addu    $s0, $s4, $t6
	lw      $t7, 0x0000($s0)
	bnel    $s8, $t7, 79$
	lbu     $a1, 0x001B($s0)
	lw      $v0, 0x0014($s0)
	andi    $t8, $s2, 0xFF00
	andi    $t9, $v0, 0xFF00
	sltu    $at, $t8, $t9
	bnez    $at, 76$
	andi    $t0, $v0, 0x0080
	bnez    $t0, 68$
	li      $at, 0x00FF0000
	and     $t1, $v0, $at
	beq     $s6, $t1, 74$
68$:
	andi    $a0, $s5, 0x00FF
	jal     Na_game_8031EF6C
	andi    $s1, $s2, 0x000F
	li      $a2, 0x00FF
	sw      $s2, 0x0014($s0)
	sb      $s1, 0x0018($s0)
74$:
	li      $t2, 0x000A
	sb      $t2, 0x0019($s0)
76$:
	b       79$
	move    $a1, $0
	lbu     $a1, 0x001B($s0)
79$:
	addiu   $s3, $s3, 0x0001
	andi    $t4, $s3, 0x00FF
	move    $s3, $t4
	beq     $a2, $a1, 86$
	move    $v0, $a1
	bnez    $a1, 52$
	nop
86$:
	sll     $t5, $s5, 3
	addu    $t5, $t5, $s5
	sll     $t5, $t5, 2
	subu    $t5, $t5, $s5
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	sll     $t5, $t5, 5
	li      $s7, 0x001C
	bnez    $s3, 100$
	addu    $s4, $t5, $t3
	lui     $at, %hi(_Na_game_bss+0x36E8)
	addu    $at, $at, $s5
	li      $t6, 0x0020
	sb      $t6, %lo(_Na_game_bss+0x36E8)($at)
100$:
	la.u    $t7, Na_game_803331C0
	la.l    $t7, Na_game_803331C0
	addu    $s3, $s5, $t7
	lbu     $v1, 0x0000($s3)
	multu   $v1, $s7
	mflo    $t8
	addu    $t9, $s4, $t8
	lbu     $t0, 0x001B($t9)
	beql    $a2, $t0, 164$
	lw      $ra, 0x003C($sp)
	beqzl   $v0, 164$
	lw      $ra, 0x003C($sp)
	lwc1    $f2, 0x0000($s8)
	lwc1    $f14, 0x0004($s8)
	lwc1    $f0, 0x0008($s8)
	mul.s   $f4, $f2, $f2
	sb      $v1, 0x0046($sp)
	andi    $s1, $s2, 0x000F
	mul.s   $f6, $f14, $f14
	add.s   $f8, $f4, $f6
	mul.s   $f10, $f0, $f0
	jal     sqrtf
	add.s   $f12, $f10, $f8
	lbu     $a1, 0x0046($sp)
	la.u    $t3, Na_game_803331B4
	la.l    $t3, Na_game_803331B4
	multu   $a1, $s7
	addu    $v0, $s5, $t3
	lbu     $a0, 0x0000($v0)
	lbu     $v1, 0x0000($s3)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	addiu   $t2, $s8, 0x0004
	addiu   $t4, $s8, 0x0008
	mul.s   $f18, $f0, $f16
	li      $t5, 0x000A
	mflo    $t1
	addu    $s0, $s4, $t1
	sw      $s8, 0x0000($s0)
	multu   $a0, $s7
	sw      $t2, 0x0004($s0)
	sw      $t4, 0x0008($s0)
	swc1    $f18, 0x000C($s0)
	sw      $s2, 0x0014($s0)
	sb      $s1, 0x0018($s0)
	sb      $t5, 0x0019($s0)
	sb      $a0, 0x001A($s0)
	li      $a1, 0x00FF
	mflo    $t6
	addu    $t7, $s4, $t6
	sb      $v1, 0x001B($t7)
	multu   $v1, $s7
	sb      $v1, 0x0000($v0)
	mflo    $t8
	addu    $t9, $s4, $t8
	lbu     $t0, 0x001B($t9)
	andi    $t1, $t0, 0x00FF
	multu   $t1, $s7
	sb      $t0, 0x0000($s3)
	mflo    $t2
	addu    $t4, $s4, $t2
	sb      $a1, 0x001A($t4)
	sb      $a1, 0x001B($s0)
163$:
	lw      $ra, 0x003C($sp)
164$:
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
	addiu   $sp, $sp, 0x0048

Na_game_8031EDEC:
	addiu   $sp, $sp, -0x0028
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	la.u    $s1, Na_game_80332F40
	la.u    $s2, Na_game_80332F44
	la.l    $s2, Na_game_80332F44
	la.l    $s1, Na_game_80332F40
	sw      $s0, 0x0014($sp)
	lbu     $s0, 0x0000($s1)
	lbu     $t6, 0x0000($s2)
	sw      $s3, 0x0020($sp)
	sw      $ra, 0x0024($sp)
	beq     $s0, $t6, 26$
	la.u    $s3, _Na_game_bss+0x08
	la.l    $s3, _Na_game_bss+0x08
15$:
	sll     $t7, $s0, 3
	addu    $v0, $s3, $t7
	lw      $a0, 0x0000($v0)
	jal     Na_game_8031EB30
	lw      $a1, 0x0004($v0)
	lbu     $t8, 0x0000($s1)
	lbu     $t0, 0x0000($s2)
	addiu   $t9, $t8, 0x0001
	andi    $s0, $t9, 0x00FF
	bne     $s0, $t0, 15$
	sb      $t9, 0x0000($s1)
26$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

Na_game_8031EE70:
	la.u    $t8, Na_game_803331B4
	andi    $t6, $a0, 0x00FF
	la.l    $t8, Na_game_803331B4
	addu    $v0, $t6, $t8
	lbu     $t9, 0x0000($v0)
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t7, $a1, 0x00FF
	move    $a1, $t7
	bne     $t7, $t9, 26$
	move    $a0, $t6
	li      $t1, 0x001C
	multu   $t7, $t1
	sll     $t2, $t6, 3
	addu    $t2, $t2, $t6
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t6
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	sll     $t2, $t2, 5
	addu    $v1, $t2, $t3
	mflo    $t4
	addu    $a2, $v1, $t4
	lbu     $a3, 0x001A($a2)
	b       45$
	sb      $a3, 0x0000($v0)
26$:
	li      $t1, 0x001C
	multu   $a1, $t1
	sll     $t5, $a0, 3
	addu    $t5, $t5, $a0
	sll     $t5, $t5, 2
	subu    $t5, $t5, $a0
	la.u    $t6, _Na_game_bss+0xB28
	la.l    $t6, _Na_game_bss+0xB28
	sll     $t5, $t5, 5
	addu    $v1, $t5, $t6
	mflo    $t7
	addu    $a2, $v1, $t7
	lbu     $t9, 0x001B($a2)
	lbu     $t8, 0x001A($a2)
	multu   $t9, $t1
	mflo    $t2
	addu    $t3, $v1, $t2
	sb      $t8, 0x001A($t3)
	lbu     $a3, 0x001A($a2)
45$:
	multu   $a3, $t1
	lbu     $t4, 0x001B($a2)
	la.u    $t7, Na_game_803331C0
	la.l    $t7, Na_game_803331C0
	addu    $v0, $a0, $t7
	li      $t9, 0x00FF
	mflo    $t5
	addu    $t6, $v1, $t5
	sb      $t4, 0x001B($t6)
	lbu     $t0, 0x0000($v0)
	sb      $t9, 0x001A($a2)
	multu   $t0, $t1
	sb      $t0, 0x001B($a2)
	mflo    $t2
	addu    $t8, $v1, $t2
	sb      $a1, 0x001A($t8)
	jr      $ra
	sb      $a1, 0x0000($v0)

Na_game_8031EF6C:
	andi    $a2, $a0, 0x00FF
	sll     $t7, $a2, 3
	andi    $t6, $a1, 0x00FF
	addu    $t7, $t7, $a2
	sll     $t7, $t7, 2
	sll     $t8, $t6, 3
	subu    $t8, $t8, $t6
	subu    $t7, $t7, $a2
	sll     $t7, $t7, 5
	sll     $t8, $t8, 2
	addu    $t9, $t7, $t8
	lui     $t0, %hi(_Na_game_bss+0xB3C)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_game_bss+0xB3C)($t0)
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	andi    $t1, $t0, 0x0010
	sw      $a0, 0x0018($sp)
	beqz    $t1, 30$
	sw      $a1, 0x001C($sp)
	la.u    $v0, Na_game_80333220
	la.l    $v0, Na_game_80333220
	lhu     $t2, 0x0000($v0)
	li      $t3, 0x0001
	sllv    $t4, $t3, $a2
	xori    $t5, $t4, 0xFFFF
	and     $t6, $t2, $t5
	sh      $t6, 0x0000($v0)
	jal     Na_game_80320F68
	li      $a0, 0x0032
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_game_8031EFF4:
	addiu   $sp, $sp, -0x00D8
	sw      $s0, 0x0018($sp)
	la.u    $t6, Na_game_80333240
	addiu   $s0, $sp, 0x0090
	sw      $s8, 0x0038($sp)
	sw      $s7, 0x0034($sp)
	sw      $s3, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t6, Na_game_80333240
	la.l    $t3, _Na_game_bss+0xB28
	addiu   $s1, $sp, 0x0070
	addiu   $s3, $sp, 0x0080
	andi    $s7, $a0, 0x00FF
	li      $s8, 0x00FF
	sw      $ra, 0x003C($sp)
	sw      $s6, 0x0030($sp)
	sw      $s5, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s2, 0x0020($sp)
	sw      $a0, 0x00D8($sp)
	addiu   $t9, $t6, 0x003C
	move    $t5, $s0
23$:
	lw      $at, 0x0000($t6)
	addiu   $t6, $t6, 0x000C
	addiu   $t5, $t5, 0x000C
	sw      $at, -0x000C($t5)
	lw      $at, -0x0008($t6)
	sw      $at, -0x0008($t5)
	lw      $at, -0x0004($t6)
	bne     $t6, $t9, 23$
	sw      $at, -0x0004($t5)
	lw      $at, 0x0000($t6)
	la.u    $t8, Na_game_80333280
	la.l    $t8, Na_game_80333280
	sw      $at, 0x0000($t5)
	lw      $at, 0x0000($t8)
	la.u    $t5, Na_game_80333290
	la.l    $t5, Na_game_80333290
	sw      $at, 0x0000($s3)
	lw      $t6, 0x0004($t8)
	sll     $t9, $s7, 3
	addu    $t9, $t9, $s7
	sw      $t6, 0x0004($s3)
	lw      $at, 0x0008($t8)
	sll     $t9, $t9, 2
	subu    $t9, $t9, $s7
	sw      $at, 0x0008($s3)
	lw      $t6, 0x000C($t8)
	sll     $t9, $t9, 5
	addu    $t4, $t3, $t9
	sw      $t6, 0x000C($s3)
	lw      $at, 0x0000($t5)
	sll     $t6, $s7, 3
	addu    $t6, $t6, $s7
	sw      $at, 0x0000($s1)
	lw      $t8, 0x0004($t5)
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s7
	sw      $t8, 0x0004($s1)
	lw      $at, 0x0008($t5)
	sll     $t6, $t6, 5
	addu    $t7, $t3, $t6
	sw      $at, 0x0008($s1)
	lw      $t8, 0x000C($t5)
	lbu     $s4, 0x001B($t7)
	li      $t2, 0x001C
	sw      $t8, 0x000C($s1)
	sb      $0, 0x006F($sp)
	beq     $s8, $s4, 347$
	move    $s2, $s4
71$:
	multu   $s4, $t2
	li      $at, 0x0081
	sb      $s4, 0x00D3($sp)
	mflo    $t5
	addu    $s5, $t4, $t5
	lw      $v0, 0x0014($s5)
	andi    $t8, $v0, 0x008F
	bne     $t8, $at, 87$
	andi    $t7, $v0, 0x0080
	lbu     $v0, 0x0019($s5)
	sltiu   $v1, $v0, 0x0001
	addiu   $t6, $v0, -0x0001
	beqz    $v1, 103$
	sb      $t6, 0x0019($s5)
	b       103$
	sw      $0, 0x0014($s5)
87$:
	bnezl   $t7, 104$
	lw      $t5, 0x0014($s5)
	lbu     $v0, 0x0019($s5)
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s4, 0x00FF
	xori    $v1, $v0, 0x0008
	addiu   $t9, $v0, -0x0001
	bnez    $v1, 103$
	sb      $t9, 0x0019($s5)
	jal     Na_game_8031EF6C
	sw      $t4, 0x0060($sp)
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
	sw      $0, 0x0014($s5)
103$:
	lw      $t5, 0x0014($s5)
104$:
	bnezl   $t5, 121$
	lbu     $t7, 0x0018($s5)
	lbu     $t8, 0x0018($s5)
	li      $at, 0x0001
	andi    $a0, $s7, 0x00FF
	bne     $t8, $at, 120$
	andi    $a1, $s4, 0x00FF
	lbu     $t6, 0x001A($s5)
	sb      $0, 0x0018($s5)
	sw      $t4, 0x0060($sp)
	jal     Na_game_8031EE70
	sb      $t6, 0x00D3($sp)
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
120$:
	lbu     $t7, 0x0018($s5)
121$:
	lbu     $t9, 0x00D3($sp)
	beqzl   $t7, 341$
	lbu     $t9, 0x00D3($sp)
	bnel    $t9, $s2, 341$
	lbu     $t9, 0x00D3($sp)
	lw      $t8, 0x0000($s5)
	lw      $t6, 0x0004($s5)
	lw      $t5, 0x0008($s5)
	lwc1    $f2, 0x0000($t8)
	lwc1    $f14, 0x0000($t6)
	lwc1    $f0, 0x0000($t5)
	mul.s   $f4, $f2, $f2
	la.u    $t7, Na_game_803331D8
	la.l    $t7, Na_game_803331D8
	mul.s   $f6, $f14, $f14
	addu    $s6, $s7, $t7
	sw      $t4, 0x0060($sp)
	mul.s   $f10, $f0, $f0
	move    $s2, $0
	add.s   $f8, $f4, $f6
	jal     sqrtf
	add.s   $f12, $f10, $f8
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $v0, 0x0014($s5)
	la.u    $t3, _Na_game_bss+0xB28
	mul.s   $f18, $f0, $f16
	andi    $v1, $v0, 0xFF00
	srl     $t9, $v1, 8
	andi    $t5, $t9, 0x00FF
	sll     $t8, $v0, 5
	la.l    $t3, _Na_game_bss+0xB28
	li      $t2, 0x001C
	swc1    $f18, 0x000C($s5)
	lw      $t4, 0x0060($sp)
	bgez    $t8, 166$
	move    $v1, $t5
	subu    $t6, $s8, $t5
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	b       291$
	sw      $t7, 0x0010($s5)
166$:
	lw      $t9, 0x0008($s5)
	mtc1    $0, $f4
	li      $t5, 0x0001
	lwc1    $f0, 0x0000($t9)
	subu    $t9, $s8, $v1
	sll     $t6, $t9, 2
	c.lt.s  $f4, $f0
	addu    $t6, $t6, $t9
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t9
	bc1f    257$
	sll     $t6, $t6, 2
	li      $at, 0x40C00000
	mtc1    $at, $f6
	li      $t8, 0x0001
	li      $at, 0x4F000000
	div.s   $f10, $f0, $f6
	cfc1    $t5, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f8, $f10
	cfc1    $t8, $31
	nop
	andi    $t8, $t8, 0x0078
	beqzl   $t8, 210$
	mfc1    $t8, $f8
	mtc1    $at, $f8
	li      $t8, 0x0001
	sub.s   $f8, $f10, $f8
	ctc1    $t8, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $t8, $31
	nop
	andi    $t8, $t8, 0x0078
	bnez    $t8, 207$
	nop
	mfc1    $t8, $f8
	li      $at, 0x80000000
	b       213$
	or      $t8, $t8, $at
207$:
	b       213$
	li      $t8, -0x0001
	mfc1    $t8, $f8
210$:
	nop
	bltz    $t8, 207$
	nop
213$:
	ctc1    $t5, $31
	li      $t7, 0x0001
	lwc1    $f16, 0x000C($s5)
	subu    $t5, $s8, $v1
	cfc1    $t6, $31
	ctc1    $t7, $31
	li      $at, 0x4F000000
	cvt.w.s $f18, $f16
	cfc1    $t7, $31
	nop
	andi    $t7, $t7, 0x0078
	beqzl   $t7, 244$
	mfc1    $t7, $f18
	mtc1    $at, $f18
	li      $t7, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t7, $31
	nop
	andi    $t7, $t7, 0x0078
	bnez    $t7, 241$
	nop
	mfc1    $t7, $f18
	li      $at, 0x80000000
	b       247$
	or      $t7, $t7, $at
241$:
	b       247$
	li      $t7, -0x0001
	mfc1    $t7, $f18
244$:
	nop
	bltz    $t7, 241$
	nop
247$:
	ctc1    $t6, $31
	sll     $t6, $t5, 2
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t9, $t8, $t7
	addu    $t8, $t9, $t6
	b       291$
	sw      $t8, 0x0010($s5)
257$:
	cfc1    $t7, $31
	ctc1    $t5, $31
	lwc1    $f4, 0x000C($s5)
	li      $at, 0x4F000000
	cvt.w.s $f6, $f4
	cfc1    $t5, $31
	nop
	andi    $t5, $t5, 0x0078
	beqzl   $t5, 285$
	mfc1    $t5, $f6
	mtc1    $at, $f6
	li      $t5, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t5, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t5, $31
	nop
	andi    $t5, $t5, 0x0078
	bnez    $t5, 282$
	nop
	mfc1    $t5, $f6
	li      $at, 0x80000000
	b       288$
	or      $t5, $t5, $at
282$:
	b       288$
	li      $t5, -0x0001
	mfc1    $t5, $f6
285$:
	nop
	bltz    $t5, 282$
	nop
288$:
	ctc1    $t7, $31
	addu    $t8, $t5, $t6
	sw      $t8, 0x0010($s5)
291$:
	lbu     $t1, 0x0000($s6)
	blez    $t1, 337$
	move    $a3, $t1
	lw      $t0, 0x0010($s5)
295$:
	sll     $t7, $s2, 2
	addu    $a2, $s0, $t7
	lw      $t9, 0x0000($a2)
	addiu   $v0, $a3, -0x0001
	andi    $v1, $v0, 0x00FF
	sltu    $at, $t9, $t0
	bnez    $at, 332$
	move    $v0, $v1
	slt     $at, $s2, $v1
	move    $a0, $s2
	beqz    $at, 326$
	lbu     $a1, 0x0018($s5)
307$:
	sll     $t6, $v1, 2
	addu    $t8, $s0, $t6
	lw      $t7, -0x0004($t8)
	sll     $t9, $v0, 2
	addu    $t5, $s0, $t9
	addu    $t6, $s3, $v1
	sw      $t7, 0x0000($t5)
	lbu     $t8, -0x0001($t6)
	addu    $t9, $s3, $v0
	addu    $t6, $s1, $v0
	addu    $t7, $s1, $v1
	addiu   $v0, $v0, -0x0001
	sb      $t8, 0x0000($t9)
	lbu     $t5, -0x0001($t7)
	andi    $v1, $v0, 0x00FF
	slt     $at, $a0, $v1
	move    $v0, $v1
	bnez    $at, 307$
	sb      $t5, 0x0000($t6)
326$:
	addu    $t9, $s3, $s2
	addu    $t7, $s1, $s2
	sb      $s4, 0x0000($t9)
	sw      $t0, 0x0000($a2)
	sb      $a1, 0x0000($t7)
	andi    $s2, $t1, 0x00FF
332$:
	addiu   $s2, $s2, 0x0001
	andi    $t5, $s2, 0x00FF
	slt     $at, $t5, $a3
	bnez    $at, 295$
	move    $s2, $t5
337$:
	lbu     $t6, 0x006F($sp)
	addiu   $t8, $t6, 0x0001
	sb      $t8, 0x006F($sp)
	lbu     $t9, 0x00D3($sp)
341$:
	multu   $t9, $t2
	mflo    $t7
	addu    $t5, $t4, $t7
	lbu     $s4, 0x001B($t5)
	bne     $s8, $s4, 71$
	move    $s2, $s4
347$:
	lui     $t7, %hi(Na_game_803331D8)
	addu    $t7, $t7, $s7
	lbu     $t6, 0x006F($sp)
	lbu     $t7, %lo(Na_game_803331D8)($t7)
	la.u    $t8, _Na_game_bss+0xB08
	lui     $at, %hi(Na_game_803331CC)
	la.l    $t8, _Na_game_bss+0xB08
	addu    $at, $at, $s7
	addu    $t9, $s7, $t8
	sw      $t9, 0x0064($sp)
	sb      $t6, %lo(Na_game_803331CC)($at)
	andi    $a3, $t7, 0x00FF
	li      $t2, 0x001C
	move    $s2, $0
	blez    $a3, 462$
	sb      $t7, 0x0000($t9)
	la.u    $s6, _Na_game_bss+0xB18
	la.l    $s6, _Na_game_bss+0xB18
	li      $s5, 0x00FF
366$:
	blez    $a3, 384$
	move    $s4, $0
368$:
	addu    $a0, $s3, $s4
	lbu     $v0, 0x0000($a0)
	addu    $t6, $s6, $s7
	addu    $t8, $t6, $s2
	beql    $s8, $v0, 380$
	addiu   $s4, $s4, 0x0001
	lbu     $t9, 0x0000($t8)
	bnel    $t9, $v0, 380$
	addiu   $s4, $s4, 0x0001
	sb      $s5, 0x0000($a0)
	li      $s4, 0x00FE
	addiu   $s4, $s4, 0x0001
380$:
	andi    $t7, $s4, 0x00FF
	slt     $at, $t7, $a3
	bnez    $at, 368$
	move    $s4, $t7
384$:
	beq     $s8, $s4, 457$
	addu    $t5, $s6, $s7
	addu    $s0, $t5, $s2
	lbu     $s1, 0x0000($s0)
	beql    $s8, $s1, 457$
	sb      $s5, 0x0000($s0)
	multu   $s1, $t2
	sll     $t6, $s7, 3
	addu    $t6, $t6, $s7
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s7
	sll     $t6, $t6, 5
	addu    $t4, $t3, $t6
	mflo    $t8
	addu    $s4, $t4, $t8
	lw      $v0, 0x0014($s4)
	bnezl   $v0, 421$
	andi    $v1, $v0, 0x008F
	lbu     $t9, 0x0018($s4)
	li      $at, 0x0002
	andi    $a0, $s7, 0x00FF
	bne     $t9, $at, 420$
	andi    $a1, $s1, 0x00FF
	sb      $0, 0x0018($s4)
	jal     Na_game_8031EE70
	sw      $t4, 0x0060($sp)
	lbu     $s1, 0x0000($s0)
	lw      $t4, 0x0060($sp)
	la.u    $t3, _Na_game_bss+0xB28
	sll     $t7, $s1, 3
	subu    $t7, $t7, $s1
	sll     $t7, $t7, 2
	addu    $s4, $t4, $t7
	lw      $v0, 0x0014($s4)
	la.l    $t3, _Na_game_bss+0xB28
	li      $t2, 0x001C
420$:
	andi    $v1, $v0, 0x008F
421$:
	sltiu   $at, $v1, 0x0082
	bnez    $at, 448$
	lw      $t9, 0x0064($sp)
	lbu     $t5, 0x0018($s4)
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s1, 0x00FF
	beqzl   $t5, 449$
	li      $at, 0x0002
	jal     Na_game_8031EF6C
	sw      $t4, 0x0060($sp)
	lbu     $s1, 0x0000($s0)
	li      $t2, 0x001C
	lw      $t4, 0x0060($sp)
	multu   $s1, $t2
	andi    $a0, $s7, 0x00FF
	andi    $a1, $s1, 0x00FF
	mflo    $t6
	addu    $s4, $t4, $t6
	sw      $0, 0x0014($s4)
	jal     Na_game_8031EE70
	sb      $0, 0x0018($s4)
	lw      $t8, 0x0064($sp)
	la.u    $t3, _Na_game_bss+0xB28
	la.l    $t3, _Na_game_bss+0xB28
	li      $t2, 0x001C
	b       456$
	lbu     $a3, 0x0000($t8)
448$:
	li      $at, 0x0002
449$:
	bne     $v1, $at, 456$
	lbu     $a3, 0x0000($t9)
	lbu     $t7, 0x0018($s4)
	li      $t5, 0x0001
	beqzl   $t7, 457$
	sb      $s5, 0x0000($s0)
	sb      $t5, 0x0018($s4)
456$:
	sb      $s5, 0x0000($s0)
457$:
	addiu   $s2, $s2, 0x0001
	andi    $t6, $s2, 0x00FF
	slt     $at, $t6, $a3
	bnez    $at, 366$
	move    $s2, $t6
462$:
	li      $s5, 0x00FF
	blez    $a3, 507$
	move    $s4, $0
	li      $a2, -0x0010
466$:
	addu    $a0, $s3, $s4
	lbu     $t8, 0x0000($a0)
	addiu   $s4, $s4, 0x0001
	beql    $s8, $t8, 504$
	andi    $t9, $s4, 0x00FF
	blez    $a3, 503$
	move    $s2, $0
	la.u    $t9, _Na_game_bss+0xB18
	la.l    $t9, _Na_game_bss+0xB18
	addu    $a1, $s7, $t9
476$:
	addu    $s0, $a1, $s2
	lbu     $t7, 0x0000($s0)
	bnel    $s8, $t7, 499$
	addiu   $s2, $s2, 0x0001
	lbu     $v0, 0x0000($a0)
	sll     $t5, $s7, 3
	addu    $t5, $t5, $s7
	multu   $v0, $t2
	sll     $t5, $t5, 2
	subu    $t5, $t5, $s7
	sll     $t5, $t5, 5
	addu    $t6, $t3, $t5
	sb      $v0, 0x0000($s0)
	mflo    $t8
	addu    $v1, $t6, $t8
	lw      $t9, 0x0014($v1)
	addu    $t6, $s3, $s2
	sb      $s5, 0x0000($t6)
	and     $t7, $t9, $a2
	addiu   $t5, $t7, 0x0001
	sw      $t5, 0x0014($v1)
	li      $s2, 0x00FE
	addiu   $s2, $s2, 0x0001
499$:
	andi    $t8, $s2, 0x00FF
	slt     $at, $t8, $a3
	bnez    $at, 476$
	move    $s2, $t8
503$:
	andi    $t9, $s4, 0x00FF
504$:
	slt     $at, $t9, $a3
	bnez    $at, 466$
	move    $s4, $t9
507$:
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
	addiu   $sp, $sp, 0x00D8

Na_game_8031F810:
	mtc1    $0, $f16
	lui     $at, %hi(Na_game_80339720)
	c.lt.s  $f12, $f16
	nop
	bc1fl   9$
	mov.s   $f2, $f12
	b       9$
	neg.s   $f2, $f12
	mov.s   $f2, $f12
9$:
	lwc1    $f18, %lo(Na_game_80339720)($at)
	c.lt.s  $f18, $f2
	nop
	bc1fl   16$
	c.lt.s  $f14, $f16
	mov.s   $f2, $f18
	c.lt.s  $f14, $f16
16$:
	nop
	bc1fl   22$
	mov.s   $f0, $f14
	b       22$
	neg.s   $f0, $f14
	mov.s   $f0, $f14
22$:
	c.lt.s  $f18, $f0
	nop
	bc1fl   28$
	mtc1    $0, $f18
	mov.s   $f0, $f18
	mtc1    $0, $f18
28$:
	nop
	c.eq.s  $f12, $f18
	nop
	bc1fl   41$
	c.le.s  $f18, $f12
	c.eq.s  $f14, $f18
	li      $at, 0x3F000000
	bc1fl   41$
	c.le.s  $f18, $f12
	mtc1    $at, $f0
	jr      $ra
	nop
	c.le.s  $f18, $f12
41$:
	nop
	bc1fl   60$
	c.lt.s  $f12, $f16
	c.le.s  $f0, $f2
	lui     $at, %hi(Na_game_80339724)
	bc1fl   60$
	c.lt.s  $f12, $f16
	lwc1    $f12, %lo(Na_game_80339724)($at)
	li      $at, 0x40400000
	mtc1    $at, $f4
	sub.s   $f6, $f12, $f0
	li      $at, 0x3F800000
	sub.s   $f10, $f12, $f2
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f6
	div.s   $f4, $f10, $f8
	jr      $ra
	sub.s   $f0, $f6, $f4
	c.lt.s  $f12, $f16
60$:
	li      $at, 0x40C00000
	bc1fl   77$
	mtc1    $at, $f10
	c.lt.s  $f0, $f2
	nop
	bc1fl   77$
	mtc1    $at, $f10
	lui     $at, %hi(Na_game_80339728)
	lwc1    $f12, %lo(Na_game_80339728)($at)
	li      $at, 0x40400000
	mtc1    $at, $f10
	sub.s   $f8, $f12, $f0
	sub.s   $f4, $f12, $f2
	mul.s   $f6, $f10, $f8
	jr      $ra
	div.s   $f0, $f4, $f6
	mtc1    $at, $f10
77$:
	li      $at, 0x3FE00000
	mtc1    $at, $f11
	mul.s   $f8, $f10, $f0
	mtc1    $0, $f10
	div.s   $f4, $f12, $f8
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f10
	cvt.s.d $f14, $f8
	jr      $ra
	mov.s   $f0, $f14

Na_game_8031F96C:
	andi    $t6, $a0, 0x00FF
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t7, $a1, 0x00FF
	mtc1    $a2, $f14
	slti    $at, $t6, 0x0003
	move    $a1, $t7
	beqz    $at, 11$
	move    $a0, $t6
	b       12$
	li      $v0, 0x0002
11$:
	li      $v0, 0x0003
12$:
	sll     $t8, $a0, 3
	addu    $t8, $t8, $a0
	sll     $t8, $t8, 2
	sll     $t9, $a1, 3
	subu    $t9, $t9, $a1
	subu    $t8, $t8, $a0
	sll     $t8, $t8, 5
	sll     $t9, $t9, 2
	la.u    $t1, _Na_game_bss+0xB28
	la.l    $t1, _Na_game_bss+0xB28
	addu    $t0, $t8, $t9
	addu    $v1, $t0, $t1
	lw      $a2, 0x0014($v1)
	li      $at, 0x01000000
	and     $t2, $a2, $at
	bnez    $t2, 100$
	li      $at, 0x3F800000
	lui     $at, %hi(Na_game_8033972C)
	lwc1    $f16, %lo(Na_game_8033972C)($at)
	lwc1    $f0, 0x000C($v1)
	lui     $t3, %hi(stage_index)
	sll     $t7, $a2, 6
	c.lt.s  $f16, $f0
	nop
	bc1f    41$
	nop
	mtc1    $0, $f2
	b       77$
	nop
41$:
	lh      $t3, %lo(stage_index)($t3)
	lui     $t5, %hi(Na_game_80333138)
	sll     $t4, $t3, 1
	addu    $t5, $t5, $t4
	lhu     $t5, %lo(Na_game_80333138)($t5)
	div     $0, $t5, $v0
	mflo    $t6
	mtc1    $t6, $f4
	bnez    $v0, 52$
	nop
	break   7
52$:
	li      $at, -0x0001
	bne     $v0, $at, 58$
	li      $at, 0x80000000
	bne     $t5, $at, 58$
	nop
	break   6
58$:
	cvt.s.w $f12, $f4
	c.lt.s  $f12, $f0
	nop
	bc1fl   73$
	div.s   $f8, $f0, $f12
	sub.s   $f6, $f16, $f0
	li      $at, 0x3F800000
	mtc1    $at, $f18
	sub.s   $f8, $f16, $f12
	sub.s   $f4, $f18, $f14
	div.s   $f10, $f6, $f8
	mul.s   $f2, $f10, $f4
	b       77$
	nop
	div.s   $f8, $f0, $f12
73$:
	li      $at, 0x3F800000
	mtc1    $at, $f6
	mul.s   $f18, $f8, $f14
	sub.s   $f2, $f6, $f18
77$:
	bgez    $t7, 102$
	lui     $at, %hi(Na_game_80339730)
	lwc1    $f10, %lo(Na_game_80339730)($at)
	lui     $t8, %hi(_Na_work_bss+0x5F18)
	c.le.s  $f10, $f2
	nop
	bc1f    102$
	nop
	lw      $t8, %lo(_Na_work_bss+0x5F18)($t8)
	li      $at, 0x4F800000
	andi    $t9, $t8, 0x000F
	mtc1    $t9, $f4
	bgez    $t9, 94$
	cvt.s.w $f8, $f4
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
94$:
	li      $at, 0x43400000
	mtc1    $at, $f18
	nop
	div.s   $f10, $f8, $f18
	b       102$
	sub.s   $f2, $f2, $f10
100$:
	mtc1    $at, $f2
	nop
102$:
	mul.s   $f4, $f14, $f2
	li      $at, 0x3F800000
	mtc1    $at, $f8
	mul.s   $f6, $f4, $f2
	add.s   $f18, $f6, $f8
	jr      $ra
	sub.s   $f0, $f18, $f14

Na_game_8031FB20:
	andi    $t6, $a0, 0x00FF
	sll     $t8, $t6, 3
	andi    $t7, $a1, 0x00FF
	addu    $t8, $t8, $t6
	sll     $t8, $t8, 2
	sll     $t9, $t7, 3
	subu    $t9, $t9, $t7
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 5
	sll     $t9, $t9, 2
	la.u    $t1, _Na_game_bss+0xB28
	la.l    $t1, _Na_game_bss+0xB28
	addu    $t0, $t8, $t9
	addu    $v0, $t0, $t1
	lw      $v1, 0x0014($v0)
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sll     $t2, $v1, 4
	bltz    $t2, 41$
	lui     $at, %hi(Na_game_80339734)
	lwc1    $f4, 0x000C($v0)
	lwc1    $f6, %lo(Na_game_80339734)($at)
	sll     $t3, $v1, 6
	bgez    $t3, 43$
	div.s   $f2, $f4, $f6
	lui     $t4, %hi(_Na_work_bss+0x5F18)
	lw      $t4, %lo(_Na_work_bss+0x5F18)($t4)
	li      $at, 0x4F800000
	andi    $t5, $t4, 0x00FF
	mtc1    $t5, $f8
	bgez    $t5, 35$
	cvt.s.w $f10, $f8
	mtc1    $at, $f16
	nop
	add.s   $f10, $f10, $f16
35$:
	li      $at, 0x3C800000
	mtc1    $at, $f18
	nop
	mul.s   $f4, $f10, $f18
	b       43$
	add.s   $f2, $f2, $f4
41$:
	mtc1    $0, $f2
	nop
43$:
	li      $at, 0x41700000
	mtc1    $at, $f6
	li      $at, 0x3F800000
	mtc1    $at, $f16
	div.s   $f8, $f2, $f6
	jr      $ra
	add.s   $f0, $f8, $f16

Na_game_8031FBE8:
	andi    $t6, $a0, 0x00FF
	sll     $t9, $t6, 3
	andi    $t7, $a1, 0x00FF
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 2
	sll     $t0, $t7, 3
	subu    $t0, $t0, $t7
	subu    $t9, $t9, $t6
	sll     $t9, $t9, 5
	sll     $t0, $t0, 2
	addu    $t1, $t9, $t0
	lui     $t2, %hi(_Na_game_bss+0xB3C)
	addu    $t2, $t2, $t1
	lw      $t2, %lo(_Na_game_bss+0xB3C)($t2)
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	andi    $t3, $t2, 0x0020
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	beqz    $t3, 24$
	sw      $a1, 0x0004($sp)
	move    $v0, $0
	b       39$
	move    $v1, $0
24$:
	lui     $v1, %hi(stage_index)
	lh      $v1, %lo(stage_index)($v1)
	slti    $at, $v1, 0x0027
	bnez    $at, 31$
	andi    $v0, $v1, 0x00FF
	b       31$
	li      $v0, 0x0026
31$:
	lui     $v1, %hi(scene_index)
	lh      $v1, %lo(scene_index)($v1)
	addiu   $v1, $v1, -0x0001
	andi    $t4, $v1, 0x00FF
	slti    $at, $t4, 0x0003
	bnez    $at, 39$
	move    $v1, $t4
	li      $v1, 0x0002
39$:
	sll     $t5, $a2, 2
	lui     $a1, %hi(_Na_work_bss+0x1B24)
	addu    $a1, $a1, $t5
	lw      $a1, %lo(_Na_work_bss+0x1B24)($a1)
	sll     $t7, $v0, 2
	subu    $t7, $t7, $v0
	addu    $t8, $t7, $v1
	li      $at, 0x3F800000
	lui     $t9, %hi(Na_game_803330C0)
	mtc1    $at, $f4
	lwc1    $f6, 0x0020($a1)
	addu    $t9, $t9, $t8
	lbu     $t9, %lo(Na_game_803330C0)($t9)
	lbu     $t6, 0x0059($a1)
	sub.s   $f8, $f4, $f6
	li      $at, 0x42200000
	mtc1    $at, $f10
	addu    $t0, $t6, $t9
	mtc1    $t0, $f18
	mul.s   $f16, $f8, $f10
	li      $a0, 0x0001
	li      $at, 0x4F000000
	cvt.s.w $f4, $f18
	add.s   $f6, $f16, $f4
	cfc1    $t1, $31
	ctc1    $a0, $31
	nop
	cvt.w.s $f8, $f6
	cfc1    $a0, $31
	nop
	andi    $a0, $a0, 0x0078
	beqzl   $a0, 90$
	mfc1    $a0, $f8
	mtc1    $at, $f8
	li      $a0, 0x0001
	sub.s   $f8, $f6, $f8
	ctc1    $a0, $31
	nop
	cvt.w.s $f8, $f8
	cfc1    $a0, $31
	nop
	andi    $a0, $a0, 0x0078
	bnez    $a0, 87$
	nop
	mfc1    $a0, $f8
	li      $at, 0x80000000
	b       93$
	or      $a0, $a0, $at
87$:
	b       93$
	li      $a0, -0x0001
	mfc1    $a0, $f8
90$:
	nop
	bltz    $a0, 87$
	nop
93$:
	andi    $t2, $a0, 0x00FF
	ctc1    $t1, $31
	slti    $at, $t2, 0x0080
	bnez    $at, 99$
	move    $a0, $t2
	li      $a0, 0x007F
99$:
	jr      $ra
	move    $v0, $a0

Na_game_8031FD7C:
	jr      $ra
	nop

.globl Na_Tick
Na_Tick:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $t6, 0x0001
	lui     $at, %hi(Na_game_80332E54)
	jal     Na_game_8031FD7C
	sw      $t6, %lo(Na_game_80332E54)($at)
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_game_8031FDAC:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x006C($sp)
	sw      $s6, 0x0060($sp)
	sw      $s8, 0x0068($sp)
	sw      $s7, 0x0064($sp)
	sw      $s5, 0x005C($sp)
	sw      $s4, 0x0058($sp)
	sw      $s3, 0x0054($sp)
	sw      $s2, 0x0050($sp)
	sw      $s1, 0x004C($sp)
	sw      $s0, 0x0048($sp)
	sdc1    $f30, 0x0040($sp)
	sdc1    $f28, 0x0038($sp)
	sdc1    $f26, 0x0030($sp)
	sdc1    $f24, 0x0028($sp)
	sdc1    $f22, 0x0020($sp)
	sdc1    $f20, 0x0018($sp)
	jal     Na_game_8031EDEC
	move    $s6, $0
	jal     Na_game_803208EC
	nop
	la.u    $s8, _Na_work_bss+0x1878
	la.l    $s8, _Na_work_bss+0x1878
	lw      $t7, 0x02AC($s8)
	la.u    $t6, _Na_work_bss+0x4E38
	la.l    $t6, _Na_work_bss+0x4E38
	beq     $t6, $t7, 468$
	move    $s4, $0
	li      $at, 0x41800000
	mtc1    $at, $f30
	li      $at, 0x41000000
	mtc1    $at, $f28
	li      $at, 0x43C80000
	mtc1    $at, $f26
	li      $at, 0x42A00000
	mtc1    $at, $f24
	li      $at, 0x3F800000
	mtc1    $at, $f22
	lui     $at, %hi(Na_game_80339738)
	lwc1    $f20, %lo(Na_game_80339738)($at)
.L8031FE4C:
	jal     Na_game_8031EFF4
	andi    $a0, $s4, 0x00FF
	la.u    $t8, _Na_game_bss+0xB18
	la.l    $t8, _Na_game_bss+0xB18
	addu    $t9, $s4, $t8
	sw      $t9, 0x0070($sp)
	move    $s7, $0
.L8031FE68:
	lw      $t0, 0x0070($sp)
	sll     $t2, $s4, 3
	addu    $t2, $t2, $s4
	addu    $t1, $t0, $s7
	lbu     $s2, 0x0000($t1)
	sll     $t2, $t2, 2
	subu    $t2, $t2, $s4
	slti    $at, $s2, 0x00FF
	beqz    $at, 446$
	sll     $t2, $t2, 5
	sll     $t3, $s2, 3
	subu    $t3, $t3, $s2
	sll     $t3, $t3, 2
	la.u    $t5, _Na_game_bss+0xB28
	la.l    $t5, _Na_game_bss+0xB28
	addu    $t4, $t2, $t3
	addu    $s1, $t4, $t5
	lbu     $t6, 0x0018($s1)
	beqzl   $t6, 447$
	addiu   $s7, $s7, 0x0001
	lw      $v1, 0x0014($s1)
	li      $at, 0x0001
	sll     $t3, $s6, 2
	srl     $s5, $v1, 16
	andi    $t8, $s5, 0x00FF
	andi    $a0, $v1, 0x000F
	move    $s5, $t8
	bne     $a0, $at, 253$
	sb      $a0, 0x0018($s1)
	andi    $t9, $v1, 0x0010
	beqz    $t9, 89$
	move    $s3, $s4
	la.u    $v0, Na_game_80333220
	la.l    $v0, Na_game_80333220
	lhu     $t0, 0x0000($v0)
	li      $t1, 0x0001
	sllv    $t2, $t1, $s3
	or      $t3, $t0, $t2
	sh      $t3, 0x0000($v0)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $v1, 0x0014($s1)
89$:
	sll     $t6, $s6, 2
	addu    $s0, $s8, $t6
	lw      $t7, 0x02AC($s0)
	addiu   $t4, $v1, 0x0001
	li      $t5, 0x0002
	sw      $t4, 0x0014($s1)
	sb      $t5, 0x0018($s1)
	sb      $s5, 0x0058($t7)
	lw      $t9, 0x02AC($s0)
	li      $t8, 0x0001
	sltiu   $at, $s3, 0x000A
	beqz    $at, 446$
	sb      $t8, 0x0054($t9)
	sll     $t1, $s3, 2
	lui     $at, %hi(Na_game_8033973C)
	addu    $at, $at, $t1
	lw      $t1, %lo(Na_game_8033973C)($at)
	jr      $t1
	nop
.globl L8031FF5C
L8031FF5C:
	lw      $t0, 0x0014($s1)
	la.u    $t3, _Na_game_bss+0x36E8
	la.l    $t3, _Na_game_bss+0x36E8
	sll     $t2, $t0, 4
	bltz    $t2, L803200B0
	addu    $s3, $s4, $t3
	lbu     $t4, 0x0000($s3)
	andi    $a1, $s2, 0x00FF
	andi    $a0, $s4, 0x00FF
	slti    $at, $t4, 0x0009
	bnezl   $at, 127$
	mfc1    $a2, $f20
	mfc1    $a2, $f20
	jal     Na_game_8031F96C
	andi    $a0, $s4, 0x00FF
	lw      $t5, 0x02AC($s0)
	b       142$
	swc1    $f0, 0x0020($t5)
	mfc1    $a2, $f20
127$:
	jal     Na_game_8031F96C
	andi    $a1, $s2, 0x00FF
	lbu     $t6, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t6, $f4
	bgez    $t6, 137$
	cvt.s.w $f6, $f4
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
137$:
	add.s   $f10, $f6, $f28
	lw      $t7, 0x02AC($s0)
	div.s   $f16, $f10, $f30
	mul.s   $f18, $f16, $f0
	swc1    $f18, 0x0020($t7)
142$:
	lw      $t8, 0x0000($s1)
	lw      $t9, 0x0008($s1)
	lwc1    $f12, 0x0000($t8)
	jal     Na_game_8031F810
	lwc1    $f14, 0x0000($t9)
	lw      $t1, 0x02AC($s0)
	li      $at, 0x00FF0000
	andi    $a1, $s2, 0x00FF
	swc1    $f0, 0x0024($t1)
	lw      $t0, 0x0014($s1)
	andi    $a0, $s4, 0x00FF
	and     $t2, $t0, $at
	li      $at, 0x00170000
	bne     $t2, $at, 172$
	nop
	jal     Na_game_8031FB20
	andi    $a0, $s4, 0x00FF
	lbu     $t3, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t3, $f4
	bgez    $t3, 167$
	cvt.s.w $f8, $f4
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
167$:
	div.s   $f10, $f8, $f24
	lw      $t4, 0x02AC($s0)
	add.s   $f16, $f10, $f0
	b       186$
	swc1    $f16, 0x002C($t4)
172$:
	jal     Na_game_8031FB20
	andi    $a1, $s2, 0x00FF
	lbu     $t5, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t5, $f18
	bgez    $t5, 182$
	cvt.s.w $f4, $f18
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
182$:
	div.s   $f8, $f4, $f26
	lw      $t6, 0x02AC($s0)
	add.s   $f10, $f8, $f0
	swc1    $f10, 0x002C($t6)
186$:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t7, 0x02AC($s0)
	b       446$
	sb      $v0, 0x0003($t7)
.globl L803200B0
L803200B0:
	lw      $t8, 0x02AC($s0)
	li      $at, 0x3F000000
	mtc1    $at, $f16
	swc1    $f22, 0x0020($t8)
	lw      $t9, 0x02AC($s0)
	swc1    $f16, 0x0024($t9)
	lw      $t1, 0x02AC($s0)
	b       446$
	swc1    $f22, 0x002C($t1)
.globl L803200D4
L803200D4:
	mfc1    $a2, $f20
	andi    $a0, $s4, 0x00FF
	jal     Na_game_8031F96C
	andi    $a1, $s2, 0x00FF
	lw      $t0, 0x02AC($s0)
	swc1    $f0, 0x0020($t0)
	lw      $t3, 0x0008($s1)
	lw      $t2, 0x0000($s1)
	lwc1    $f14, 0x0000($t3)
	jal     Na_game_8031F810
	lwc1    $f12, 0x0000($t2)
	lw      $t4, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FB20
	swc1    $f0, 0x0024($t4)
	lw      $t5, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	andi    $a2, $s6, 0x00FF
	jal     Na_game_8031FBE8
	swc1    $f0, 0x002C($t5)
	lw      $t6, 0x02AC($s0)
	b       446$
	sb      $v0, 0x0003($t6)
.globl L80320138
L80320138:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t7, 0x02AC($s0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031F96C
	sb      $v0, 0x0003($t7)
	lw      $t8, 0x02AC($s0)
	swc1    $f0, 0x0020($t8)
	lw      $t1, 0x0008($s1)
	lw      $t9, 0x0000($s1)
	lwc1    $f14, 0x0000($t1)
	jal     Na_game_8031F810
	lwc1    $f12, 0x0000($t9)
	lw      $t0, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FB20
	swc1    $f0, 0x0024($t0)
	lw      $t2, 0x02AC($s0)
	b       446$
	swc1    $f0, 0x002C($t2)
253$:
	addu    $s0, $s8, $t3
	lw      $a1, 0x02AC($s0)
	lw      $v0, 0x0044($a1)
	bnez    $v0, 267$
	nop
	andi    $a0, $s4, 0x00FF
	jal     Na_game_8031EF6C
	andi    $a1, $s2, 0x00FF
	sb      $0, 0x0018($s1)
	andi    $a0, $s4, 0x00FF
	jal     Na_game_8031EE70
	andi    $a1, $s2, 0x00FF
	b       447$
	addiu   $s7, $s7, 0x0001
267$:
	bnezl   $a0, 284$
	lw      $t8, 0x0000($v0)
	lw      $t4, 0x0000($v0)
	andi    $a0, $s4, 0x00FF
	sll     $t6, $t4, 1
	bltzl   $t6, 284$
	lw      $t8, 0x0000($v0)
	jal     Na_game_8031EF6C
	andi    $a1, $s2, 0x00FF
	lw      $t7, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031EE70
	sb      $0, 0x0054($t7)
	b       447$
	addiu   $s7, $s7, 0x0001
	lw      $t8, 0x0000($v0)
284$:
	andi    $a0, $s4, 0x00FF
	sltiu   $at, $s4, 0x000A
	srl     $t9, $t8, 31
	bnez    $t9, 297$
	nop
	jal     Na_game_8031EF6C
	andi    $a1, $s2, 0x00FF
	sb      $0, 0x0018($s1)
	andi    $a0, $s4, 0x00FF
	jal     Na_game_8031EE70
	andi    $a1, $s2, 0x00FF
	b       447$
	addiu   $s7, $s7, 0x0001
297$:
	beqz    $at, 446$
	sll     $t1, $s4, 2
	lui     $at, %hi(Na_game_80339764)
	addu    $at, $at, $t1
	lw      $t1, %lo(Na_game_80339764)($at)
	jr      $t1
	nop
.globl L8032026C
L8032026C:
	sll     $t0, $v1, 4
	bltz    $t0, L803203BC
	la.u    $t2, _Na_game_bss+0x36E8
	la.l    $t2, _Na_game_bss+0x36E8
	addu    $s3, $s4, $t2
	lbu     $t3, 0x0000($s3)
	andi    $a1, $s2, 0x00FF
	andi    $a0, $s4, 0x00FF
	slti    $at, $t3, 0x0009
	bnezl   $at, 322$
	mfc1    $a2, $f20
	mfc1    $a2, $f20
	jal     Na_game_8031F96C
	andi    $a0, $s4, 0x00FF
	lw      $t4, 0x02AC($s0)
	b       337$
	swc1    $f0, 0x0020($t4)
	mfc1    $a2, $f20
322$:
	jal     Na_game_8031F96C
	andi    $a1, $s2, 0x00FF
	lbu     $t5, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t5, $f18
	bgez    $t5, 332$
	cvt.s.w $f6, $f18
	mtc1    $at, $f4
	nop
	add.s   $f6, $f6, $f4
332$:
	add.s   $f8, $f6, $f28
	lw      $t6, 0x02AC($s0)
	div.s   $f10, $f8, $f30
	mul.s   $f16, $f10, $f0
	swc1    $f16, 0x0020($t6)
337$:
	lw      $t7, 0x0000($s1)
	lw      $t8, 0x0008($s1)
	lwc1    $f12, 0x0000($t7)
	jal     Na_game_8031F810
	lwc1    $f14, 0x0000($t8)
	lw      $t9, 0x02AC($s0)
	li      $at, 0x00FF0000
	andi    $a1, $s2, 0x00FF
	swc1    $f0, 0x0024($t9)
	lw      $t1, 0x0014($s1)
	andi    $a0, $s4, 0x00FF
	and     $t0, $t1, $at
	li      $at, 0x00170000
	bne     $t0, $at, 367$
	nop
	jal     Na_game_8031FB20
	andi    $a0, $s4, 0x00FF
	lbu     $t2, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t2, $f18
	bgez    $t2, 362$
	cvt.s.w $f4, $f18
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
362$:
	div.s   $f8, $f4, $f24
	lw      $t3, 0x02AC($s0)
	add.s   $f10, $f8, $f0
	b       381$
	swc1    $f10, 0x002C($t3)
367$:
	jal     Na_game_8031FB20
	andi    $a1, $s2, 0x00FF
	lbu     $t4, 0x0000($s3)
	li      $at, 0x4F800000
	mtc1    $t4, $f16
	bgez    $t4, 377$
	cvt.s.w $f18, $f16
	mtc1    $at, $f6
	nop
	add.s   $f18, $f18, $f6
377$:
	div.s   $f4, $f18, $f26
	lw      $t5, 0x02AC($s0)
	add.s   $f8, $f4, $f0
	swc1    $f8, 0x002C($t5)
381$:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t6, 0x02AC($s0)
	b       446$
	sb      $v0, 0x0003($t6)
.globl L803203BC
L803203BC:
	swc1    $f22, 0x0020($a1)
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lw      $t7, 0x02AC($s0)
	swc1    $f10, 0x0024($t7)
	lw      $t8, 0x02AC($s0)
	b       446$
	swc1    $f22, 0x002C($t8)
.globl L803203DC
L803203DC:
	mfc1    $a2, $f20
	andi    $a0, $s4, 0x00FF
	jal     Na_game_8031F96C
	andi    $a1, $s2, 0x00FF
	lw      $t9, 0x02AC($s0)
	swc1    $f0, 0x0020($t9)
	lw      $t0, 0x0008($s1)
	lw      $t1, 0x0000($s1)
	lwc1    $f14, 0x0000($t0)
	jal     Na_game_8031F810
	lwc1    $f12, 0x0000($t1)
	lw      $t2, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FB20
	swc1    $f0, 0x0024($t2)
	lw      $t3, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	andi    $a2, $s6, 0x00FF
	jal     Na_game_8031FBE8
	swc1    $f0, 0x002C($t3)
	lw      $t4, 0x02AC($s0)
	b       446$
	sb      $v0, 0x0003($t4)
.globl L80320440
L80320440:
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FBE8
	andi    $a2, $s6, 0x00FF
	lw      $t5, 0x02AC($s0)
	li.u    $a2, 0x3F4CCCCD
	li.l    $a2, 0x3F4CCCCD
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031F96C
	sb      $v0, 0x0003($t5)
	lw      $t6, 0x02AC($s0)
	swc1    $f0, 0x0020($t6)
	lw      $t8, 0x0008($s1)
	lw      $t7, 0x0000($s1)
	lwc1    $f14, 0x0000($t8)
	jal     Na_game_8031F810
	lwc1    $f12, 0x0000($t7)
	lw      $t9, 0x02AC($s0)
	andi    $a0, $s4, 0x00FF
	andi    $a1, $s2, 0x00FF
	jal     Na_game_8031FB20
	swc1    $f0, 0x0024($t9)
	lw      $t1, 0x02AC($s0)
	swc1    $f0, 0x002C($t1)
446$:
	addiu   $s7, $s7, 0x0001
447$:
	addiu   $s6, $s6, 0x0001
	andi    $t2, $s7, 0x00FF
	andi    $t0, $s6, 0x00FF
	move    $s7, $t2
	blez    $t2, .L8031FE68
	move    $s6, $t0
	lui     $t3, %hi(Na_game_803331D8)
	addu    $t3, $t3, $s4
	lui     $t5, %hi(_Na_game_bss+0xB08)
	lbu     $t3, %lo(Na_game_803331D8)($t3)
	addu    $t5, $t5, $s4
	lbu     $t5, %lo(_Na_game_bss+0xB08)($t5)
	addiu   $s4, $s4, 0x0001
	addu    $t4, $t0, $t3
	andi    $t7, $s4, 0x00FF
	subu    $s6, $t4, $t5
	slti    $at, $t7, 0x000A
	andi    $t6, $s6, 0x00FF
	move    $s4, $t7
	bnez    $at, .L8031FE4C
	move    $s6, $t6
468$:
	lw      $ra, 0x006C($sp)
	ldc1    $f20, 0x0018($sp)
	ldc1    $f22, 0x0020($sp)
	ldc1    $f24, 0x0028($sp)
	ldc1    $f26, 0x0030($sp)
	ldc1    $f28, 0x0038($sp)
	ldc1    $f30, 0x0040($sp)
	lw      $s0, 0x0048($sp)
	lw      $s1, 0x004C($sp)
	lw      $s2, 0x0050($sp)
	lw      $s3, 0x0054($sp)
	lw      $s4, 0x0058($sp)
	lw      $s5, 0x005C($sp)
	lw      $s6, 0x0060($sp)
	lw      $s7, 0x0064($sp)
	lw      $s8, 0x0068($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

Na_game_80320544:
	addiu   $sp, $sp, -0x0028
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	andi    $t0, $a0, 0x00FF
	andi    $t7, $a1, 0x00FF
	move    $a1, $t7
	move    $a0, $t0
	sw      $ra, 0x0014($sp)
	bnez    $t0, 21$
	sw      $a2, 0x0030($sp)
	andi    $t8, $t7, 0x007F
	lui     $at, %hi(Na_game_803331AC)
	sb      $t8, %lo(Na_game_803331AC)($at)
	li      $v0, 0x00FF
	lui     $at, %hi(Na_game_80332FC0)
	sb      $v0, %lo(Na_game_80332FC0)($at)
	lui     $at, %hi(Na_game_80332FBC)
	sb      $v0, %lo(Na_game_80332FBC)($at)
	lui     $at, %hi(Na_game_803331B0)
	li      $t9, 0x0002
	sb      $t9, %lo(Na_game_803331B0)($at)
21$:
	la.u    $t3, _Na_game_bss+0x808
	la.l    $t3, _Na_game_bss+0x808
	andi    $t1, $a1, 0x007F
	sll     $t2, $a0, 8
	addu    $v1, $t2, $t3
	sw      $t1, 0x0018($sp)
	move    $v0, $0
	move    $a3, $a1
29$:
	sll     $t4, $v0, 4
	addiu   $v0, $v0, 0x0001
	andi    $t6, $v0, 0x00FF
	slti    $at, $t6, 0x0010
	addu    $t5, $v1, $t4
	move    $v0, $t6
	bnez    $at, 29$
	sh      $0, 0x000C($t5)
	sll     $t8, $a0, 2
	addu    $t8, $t8, $a0
	sll     $t8, $t8, 6
	lui     $at, %hi(_Na_work_bss+0x1879)
	addu    $at, $at, $t8
	andi    $t7, $a3, 0x0080
	sb      $t7, %lo(_Na_work_bss+0x1879)($at)
	lw      $a1, 0x0018($sp)
	move    $a2, $0
	jal     Na_system_80319328
	sw      $t0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	bnez    $a0, 71$
	nop
	jal     Na_game_80320F68
	move    $a0, $0
	li      $at, 0x00FF
	beq     $v0, $at, 73$
	li      $t9, 0x0004
	mtc1    $v0, $f4
	lui     $at, %hi(_Na_work_bss+0x187A)
	sb      $t9, %lo(_Na_work_bss+0x187A)($at)
	bgez    $v0, 65$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
65$:
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lui     $at, %hi(_Na_work_bss+0x1890)
	div.s   $f16, $f6, $f10
	b       73$
	swc1    $f16, %lo(_Na_work_bss+0x1890)($at)
71$:
	jal     Na_game_8031E5C0
	lhu     $a1, 0x0032($sp)
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_SeqFadeout
Na_SeqFadeout:
	addiu   $sp, $sp, -0x0018
	andi    $a2, $a0, 0x00FF
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	bnez    $a2, 10$
	andi    $a3, $a1, 0xFFFF
	li      $t7, 0x00FF
	lui     $at, %hi(Na_game_803331AC)
	sb      $t7, %lo(Na_game_803331AC)($at)
10$:
	move    $a0, $a2
	jal     Na_game_8031E578
	move    $a1, $a3
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_game_803206BC
Na_game_803206BC:
	addiu   $sp, $sp, -0x0028
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	andi    $s1, $a0, 0x00FF
	andi    $s2, $a1, 0x00FF
	andi    $s3, $a2, 0xFFFF
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	move    $s0, $0
13$:
	andi    $a0, $s1, 0x00FF
	andi    $a1, $s0, 0x00FF
	andi    $a2, $s2, 0x00FF
	jal     Na_game_80320734
	andi    $a3, $s3, 0xFFFF
	addiu   $s0, $s0, 0x0001
	andi    $t6, $s0, 0x00FF
	slti    $at, $t6, 0x0010
	bnez    $at, 13$
	move    $s0, $t6
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

Na_game_80320734:
	andi    $t6, $a0, 0x00FF
	sll     $t0, $t6, 2
	andi    $t7, $a1, 0x00FF
	addu    $t0, $t0, $t6
	sll     $t0, $t0, 6
	sll     $t1, $t7, 2
	addu    $t2, $t0, $t1
	lui     $v0, %hi(_Na_work_bss+0x18A4)
	addu    $v0, $v0, $t2
	lw      $v0, %lo(_Na_work_bss+0x18A4)($v0)
	la.u    $t3, _Na_work_bss+0x4E38
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	sw      $a3, 0x000C($sp)
	andi    $t9, $a3, 0xFFFF
	la.l    $t3, _Na_work_bss+0x4E38
	move    $a3, $t9
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	beq     $t3, $v0, 52$
	sw      $a1, 0x0004($sp)
	sll     $t5, $t7, 4
	la.u    $t7, _Na_game_bss+0x808
	sll     $t4, $t6, 8
	mtc1    $a2, $f4
	addu    $t6, $t4, $t5
	la.l    $t7, _Na_game_bss+0x808
	addu    $v1, $t6, $t7
	sh      $t9, 0x000C($v1)
	bgez    $t8, 35$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
35$:
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lwc1    $f18, 0x001C($v0)
	mtc1    $a3, $f8
	div.s   $f16, $f6, $f10
	li      $at, 0x4F800000
	cvt.s.w $f6, $f8
	bgez    $a3, 47$
	sub.s   $f4, $f16, $f18
	mtc1    $at, $f10
	nop
	add.s   $f6, $f6, $f10
47$:
	div.s   $f16, $f4, $f6
	sb      $a2, 0x0004($v1)
	swc1    $f16, 0x0000($v1)
	lwc1    $f18, 0x001C($v0)
	swc1    $f18, 0x0008($v1)
52$:
	jr      $ra
	nop

Na_game_8032080C:
	andi    $t6, $a0, 0x00FF
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	la.u    $t8, _Na_work_bss+0x1878
	li      $at, 0x42FE0000
	sw      $a0, 0x0000($sp)
	la.l    $t8, _Na_work_bss+0x1878
	sll     $t7, $t7, 6
	la.u    $t1, _Na_game_bss+0x808
	la.u    $t0, _Na_work_bss+0x4E38
	mtc1    $at, $f0
	move    $a0, $t6
	la.l    $t0, _Na_work_bss+0x4E38
	la.l    $t1, _Na_game_bss+0x808
	addu    $v1, $t7, $t8
	move    $v0, $0
16$:
	sll     $t9, $v0, 2
	addu    $a1, $v1, $t9
	lw      $a2, 0x002C($a1)
	sll     $t2, $a0, 8
	addu    $t3, $t1, $t2
	beq     $t0, $a2, 49$
	sll     $t4, $v0, 4
	addu    $a3, $t3, $t4
	lhu     $t5, 0x000C($a3)
	beqzl   $t5, 50$
	addiu   $v0, $v0, 0x0001
	lwc1    $f4, 0x0008($a3)
	lwc1    $f6, 0x0000($a3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0008($a3)
	lwc1    $f10, 0x0008($a3)
	swc1    $f10, 0x001C($a2)
	lhu     $t6, 0x000C($a3)
	addiu   $t7, $t6, -0x0001
	andi    $t8, $t7, 0xFFFF
	bnez    $t8, 49$
	sh      $t7, 0x000C($a3)
	lbu     $t9, 0x0004($a3)
	li      $at, 0x4F800000
	mtc1    $t9, $f16
	bgez    $t9, 46$
	cvt.s.w $f18, $f16
	mtc1    $at, $f4
	nop
	add.s   $f18, $f18, $f4
46$:
	div.s   $f6, $f18, $f0
	lw      $t2, 0x002C($a1)
	swc1    $f6, 0x001C($t2)
49$:
	addiu   $v0, $v0, 0x0001
50$:
	andi    $t3, $v0, 0x00FF
	slti    $at, $t3, 0x0010
	bnez    $at, 16$
	move    $v0, $t3
	jr      $ra
	nop

Na_game_803208EC:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     Na_game_8032080C
	move    $a0, $0
	jal     Na_game_8032080C
	li      $a0, 0x0002
	jal     Na_game_80321D9C
	nop
	la.u    $v1, Na_game_803331B0
	la.l    $v1, Na_game_803331B0
	lbu     $v0, 0x0000($v1)
	beqz    $v0, 18$
	addiu   $t6, $v0, -0x0001
	b       22$
	sb      $t6, 0x0000($v1)
18$:
	lui     $t7, %hi(Na_game_803331AC)
	lbu     $t7, %lo(Na_game_803331AC)($t7)
	lui     $at, %hi(Na_game_80332FC0)
	sb      $t7, %lo(Na_game_80332FC0)($at)
22$:
	lui     $t8, %hi(stage_index)
	lh      $t8, %lo(stage_index)($t8)
	lui     $t1, %hi(Na_BgmCtlTable)
	lui     $t4, %hi(Na_game_80332FC0)
	sll     $t9, $t8, 2
	addu    $t1, $t1, $t9
	lw      $t1, %lo(Na_BgmCtlTable)($t1)
	lbu     $t4, %lo(Na_game_80332FC0)($t4)
	lh      $t5, 0x0000($t1)
	bnel    $t4, $t5, 284$
	lw      $ra, 0x0024($sp)
	lh      $t7, 0x0002($t1)
	li      $s1, 0x0002
	la.u    $t3, scene_index
	andi    $s0, $t7, 0xFF00
	andi    $t8, $s0, 0xFF00
	beqz    $t8, 224$
	sb      $t7, 0x0057($sp)
	la.u    $t2, object_80361250
	la.u    $a3, player_data
	la.l    $a3, player_data
	la.l    $t2, object_80361250
	la.l    $t3, scene_index
	addiu   $t0, $sp, 0x003C
	addiu   $a2, $sp, 0x0044
.L803209A8:
	move    $v0, $0
	move    $a0, $0
	li      $a1, 0x8000
50$:
	and     $t9, $a1, $s0
	beqz    $t9, 67$
	move    $v1, $a1
	sll     $t4, $s1, 1
	addu    $t5, $t1, $t4
	lh      $t6, 0x0000($t5)
	sll     $t7, $a0, 1
	addu    $t4, $t0, $a0
	addu    $t8, $a2, $t7
	addiu   $s1, $s1, 0x0001
	addiu   $a0, $a0, 0x0001
	andi    $t9, $s1, 0x00FF
	andi    $t5, $a0, 0x00FF
	sh      $t6, 0x0000($t8)
	move    $s1, $t9
	sb      $v0, 0x0000($t4)
	move    $a0, $t5
67$:
	addiu   $v0, $v0, 0x0001
	andi    $t7, $v0, 0x00FF
	sra     $a1, $v1, 1
	andi    $t6, $a1, 0xFFFF
	slti    $at, $t7, 0x0008
	move    $v0, $t7
	bnez    $at, 50$
	move    $a1, $t6
	move    $v0, $0
	blez    $a0, 208$
	move    $v1, $a0
.L80320A24:
	addu    $t8, $t0, $v0
	lbu     $t9, 0x0000($t8)
	sltiu   $at, $t9, 0x0008
	beqz    $at, 203$
	sll     $t9, $t9, 2
	lui     $at, %hi(Na_game_8033978C)
	addu    $at, $at, $t9
	lw      $t9, %lo(Na_game_8033978C)($at)
	jr      $t9
	nop
.globl L80320A4C
L80320A4C:
	lwc1    $f4, 0x003C($a3)
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	trunc.w.s $f6, $f4
	lh      $t4, 0x0000($t9)
	mfc1    $t5, $f6
	nop
	sll     $t7, $t5, 16
	sra     $t6, $t7, 16
	slt     $at, $t6, $t4
	beqzl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t5, $v0, 0x00FF
	b       203$
	move    $v0, $t5
.globl L80320A8C
L80320A8C:
	lwc1    $f8, 0x0040($a3)
	sll     $t4, $v0, 1
	addu    $t5, $a2, $t4
	trunc.w.s $f10, $f8
	lh      $t7, 0x0000($t5)
	mfc1    $t8, $f10
	nop
	sll     $t9, $t8, 16
	sra     $t6, $t9, 16
	slt     $at, $t6, $t7
	beqzl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t8, $v0, 0x00FF
	b       203$
	move    $v0, $t8
.globl L80320ACC
L80320ACC:
	lwc1    $f16, 0x0044($a3)
	sll     $t7, $v0, 1
	addu    $t8, $a2, $t7
	trunc.w.s $f18, $f16
	lh      $t9, 0x0000($t8)
	mfc1    $t4, $f18
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	slt     $at, $t6, $t9
	beqzl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t4, $v0, 0x00FF
	b       203$
	move    $v0, $t4
.globl L80320B0C
L80320B0C:
	lwc1    $f4, 0x003C($a3)
	sll     $t9, $v0, 1
	addu    $t4, $a2, $t9
	trunc.w.s $f6, $f4
	lh      $t5, 0x0000($t4)
	mfc1    $t7, $f6
	nop
	sll     $t8, $t7, 16
	sra     $t6, $t8, 16
	slt     $at, $t6, $t5
	bnezl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t7, $v0, 0x00FF
	b       203$
	move    $v0, $t7
.globl L80320B4C
L80320B4C:
	lwc1    $f8, 0x0040($a3)
	sll     $t5, $v0, 1
	addu    $t7, $a2, $t5
	trunc.w.s $f10, $f8
	lh      $t8, 0x0000($t7)
	mfc1    $t9, $f10
	nop
	sll     $t4, $t9, 16
	sra     $t6, $t4, 16
	slt     $at, $t6, $t8
	bnezl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t9, $v0, 0x00FF
	b       203$
	move    $v0, $t9
.globl L80320B8C
L80320B8C:
	lwc1    $f16, 0x0044($a3)
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	trunc.w.s $f18, $f16
	lh      $t4, 0x0000($t9)
	mfc1    $t5, $f18
	nop
	sll     $t7, $t5, 16
	sra     $t6, $t7, 16
	slt     $at, $t6, $t4
	bnezl   $at, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t5, $v0, 0x00FF
	b       203$
	move    $v0, $t5
.globl L80320BCC
L80320BCC:
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	lh      $t6, 0x0000($t9)
	lh      $t7, 0x0000($t3)
	beql    $t7, $t6, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t4, $v0, 0x00FF
	b       203$
	move    $v0, $t4
.globl L80320BF4
L80320BF4:
	sll     $t8, $v0, 1
	addu    $t9, $a2, $t8
	lh      $t7, 0x0000($t9)
	lh      $t5, 0x0000($t2)
	beql    $t5, $t7, 204$
	addiu   $v0, $v0, 0x0001
	addiu   $v0, $v1, 0x0001
	andi    $t6, $v0, 0x00FF
	move    $v0, $t6
203$:
	addiu   $v0, $v0, 0x0001
204$:
	andi    $t4, $v0, 0x00FF
	slt     $at, $t4, $v1
	bnez    $at, .L80320A24
	move    $v0, $t4
208$:
	bne     $v1, $v0, 212$
	sll     $t8, $s1, 1
	b       221$
	move    $v1, $0
212$:
	addu    $t9, $t1, $t8
	lh      $t7, 0x0000($t9)
	addiu   $s1, $s1, 0x0001
	andi    $t6, $s1, 0x00FF
	move    $v1, $t7
	andi    $t5, $v1, 0xFF00
	move    $v1, $t5
	move    $s1, $t6
	sb      $t7, 0x0057($sp)
221$:
	andi    $t4, $v1, 0xFF00
	bnez    $t4, .L803209A8
	move    $s0, $v1
224$:
	lui     $v0, %hi(Na_game_80332FBC)
	lbu     $v0, %lo(Na_game_80332FBC)($v0)
	lbu     $t8, 0x0057($sp)
	li      $at, 0x00FF
	move    $s1, $0
	beql    $t8, $v0, 284$
	lw      $ra, 0x0024($sp)
	bne     $v0, $at, 244$
	li      $v1, 0x0001
	sll     $t7, $t8, 2
	subu    $t7, $t7, $t8
	la.u    $t6, Na_BgmCtlData
	li      $t9, 0x0001
	la.l    $t6, Na_BgmCtlData
	sll     $t7, $t7, 2
	li      $t5, 0x0001
	sh      $t9, 0x003A($sp)
	sh      $t5, 0x0038($sp)
	b       255$
	addu    $s2, $t7, $t6
244$:
	lbu     $t4, 0x0057($sp)
	la.u    $t5, Na_BgmCtlData
	la.l    $t5, Na_BgmCtlData
	sll     $t9, $t4, 2
	subu    $t9, $t9, $t4
	sll     $t9, $t9, 2
	addu    $s2, $t9, $t5
	lh      $t8, 0x0004($s2)
	lh      $t7, 0x000A($s2)
	sh      $t8, 0x003A($sp)
	sh      $t7, 0x0038($sp)
255$:
	lh      $t6, 0x0000($s2)
	move    $s0, $v1
	move    $a0, $0
	and     $t4, $t6, $v1
	beqz    $t4, 264$
	andi    $a1, $s1, 0x00FF
	lbu     $a2, 0x0003($s2)
	jal     Na_game_80320734
	lhu     $a3, 0x003A($sp)
264$:
	lh      $t9, 0x0006($s2)
	move    $a0, $0
	andi    $a1, $s1, 0x00FF
	and     $t5, $t9, $s0
	beqz    $t5, 272$
	lhu     $a3, 0x0038($sp)
	jal     Na_game_80320734
	lbu     $a2, 0x0009($s2)
272$:
	addiu   $s1, $s1, 0x0001
	andi    $t7, $s1, 0x00FF
	sll     $v1, $s0, 1
	slti    $at, $t7, 0x0010
	andi    $t8, $v1, 0xFFFF
	move    $s1, $t7
	bnez    $at, 255$
	move    $v1, $t8
	lbu     $t6, 0x0057($sp)
	lui     $at, %hi(Na_game_80332FBC)
	sb      $t6, %lo(Na_game_80332FBC)($at)
	lw      $ra, 0x0024($sp)
284$:
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

Na_game_80320D70:
	sll     $t7, $a2, 24
	sra     $t8, $t7, 24
	sw      $a0, 0x0000($sp)
	andi    $t6, $a0, 0x00FF
	sw      $a2, 0x0008($sp)
	move    $a2, $t8
	bgez    $t8, 11$
	move    $a0, $t6
	subu    $a2, $0, $t8
	sll     $t9, $a2, 24
	sra     $a2, $t9, 24
11$:
	sll     $t1, $a0, 2
	addu    $t1, $t1, $a0
	la.u    $t2, _Na_work_bss+0x1878
	li      $at, 0x3F800000
	la.l    $t2, _Na_work_bss+0x1878
	sll     $t1, $t1, 6
	la.u    $a3, _Na_work_bss+0x4E38
	mtc1    $at, $f2
	la.l    $a3, _Na_work_bss+0x4E38
	addu    $v1, $t1, $t2
	move    $v0, $0
22$:
	sll     $t3, $v0, 2
	addu    $t4, $v1, $t3
	lw      $a0, 0x002C($t4)
	addiu   $v0, $v0, 0x0001
	andi    $t8, $v0, 0x00FF
	beq     $a3, $a0, 45$
	srl     $t7, $a1, 2
	andi    $t5, $a1, 0x0003
	bnezl   $t5, 35$
	mtc1    $a2, $f4
	b       45$
	swc1    $f2, 0x001C($a0)
	mtc1    $a2, $f4
35$:
	li      $at, 0x42FE0000
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	andi    $t6, $a1, 0x0001
	beqz    $t6, 43$
	div.s   $f0, $f6, $f8
	b       45$
	swc1    $f0, 0x001C($a0)
43$:
	sub.s   $f10, $f2, $f0
	swc1    $f10, 0x001C($a0)
45$:
	slti    $at, $t8, 0x0010
	move    $v0, $t8
	bnez    $at, 22$
	move    $a1, $t7
	jr      $ra
	nop

.globl Na_SeqMute
Na_SeqMute:
	addiu   $sp, $sp, -0x0018
	sw      $a0, 0x0018($sp)
	sw      $a2, 0x0020($sp)
	andi    $a3, $a0, 0x00FF
	andi    $t7, $a2, 0x00FF
	move    $a2, $t7
	move    $a0, $a3
	sw      $ra, 0x0014($sp)
	bnez    $a3, 17$
	sw      $a1, 0x001C($sp)
	li      $t8, 0x0001
	lui     $at, %hi(_Na_game_bss+0x36F3)
	sb      $t8, %lo(_Na_game_bss+0x36F3)($at)
	jal     Na_game_80320F68
	lhu     $a0, 0x001E($sp)
	b       31$
	lw      $ra, 0x0014($sp)
17$:
	sll     $t9, $a0, 2
	addu    $t9, $t9, $a0
	sll     $t9, $t9, 6
	lui     $t0, %hi(_Na_work_bss+0x1878)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_work_bss+0x1878)($t0)
	li      $at, 0x0001
	move    $a0, $a3
	srl     $t1, $t0, 31
	bnel    $t1, $at, 31$
	lw      $ra, 0x0014($sp)
	jal     Na_game_8031E60C
	lhu     $a1, 0x001E($sp)
	lw      $ra, 0x0014($sp)
31$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_SeqUnmute
Na_SeqUnmute:
	addiu   $sp, $sp, -0x0018
	andi    $t6, $a0, 0x00FF
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_Na_game_bss+0x36F3)
	move    $a0, $t6
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	andi    $a3, $a1, 0xFFFF
	sb      $0, %lo(_Na_game_bss+0x36F3)($at)
	bnez    $t6, 24$
	move    $a2, $t6
	sll     $t7, $t6, 2
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 6
	lui     $t8, %hi(_Na_work_bss+0x187A)
	addu    $t8, $t8, $t7
	lbu     $t8, %lo(_Na_work_bss+0x187A)($t8)
	li      $at, 0x0001
	beql    $t8, $at, 38$
	lw      $ra, 0x0014($sp)
	jal     Na_game_80320F68
	andi    $a0, $a3, 0xFFFF
	b       38$
	lw      $ra, 0x0014($sp)
24$:
	sll     $t9, $a0, 2
	addu    $t9, $t9, $a0
	sll     $t9, $t9, 6
	lui     $t0, %hi(_Na_work_bss+0x1878)
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_Na_work_bss+0x1878)($t0)
	li      $at, 0x0001
	move    $a0, $a2
	srl     $t1, $t0, 31
	bnel    $t1, $at, 38$
	lw      $ra, 0x0014($sp)
	jal     Na_game_8031E6A4
	move    $a1, $a3
	lw      $ra, 0x0014($sp)
38$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

Na_game_80320F68:
	lui     $t0, %hi(Na_game_803331AC)
	lbu     $t0, %lo(Na_game_803331AC)($t0)
	addiu   $sp, $sp, -0x0020
	li      $a1, 0x00FF
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	beq     $a1, $t0, 11$
	li      $a2, 0x00FF
	li      $at, 0x001A
	bne     $t0, $at, 13$
	la.u    $a3, _Na_work_bss+0x1878
11$:
	b       87$
	li      $v0, 0x00FF
13$:
	la.l    $a3, _Na_work_bss+0x1878
	lwc1    $f6, 0x0020($a3)
	mtc1    $0, $f4
	lhu     $t6, 0x0022($sp)
	lui     $v0, %hi(_Na_game_bss+0x36F2)
	c.eq.s  $f4, $f6
	lui     $t9, %hi(_Na_game_bss+0x36F3)
	lui     $t1, %hi(Na_game_80333220)
	bc1f    27$
	nop
	beqz    $t6, 27$
	nop
	lwc1    $f8, 0x0018($a3)
	swc1    $f8, 0x0020($a3)
27$:
	lbu     $v0, %lo(_Na_game_bss+0x36F2)($v0)
	beqz    $v0, 33$
	nop
	move    $a2, $v0
	andi    $t7, $a2, 0x007F
	move    $a2, $t7
33$:
	lui     $v0, %hi(Na_game_8033322C)
	lbu     $v0, %lo(Na_game_8033322C)($v0)
	beqz    $v0, 41$
	andi    $t8, $v0, 0x007F
	slt     $at, $t8, $a2
	beqz    $at, 41$
	nop
	andi    $a2, $t8, 0x00FF
41$:
	lbu     $t9, %lo(_Na_game_bss+0x36F3)($t9)
	slti    $at, $a2, 0x0029
	beqz    $t9, 48$
	nop
	bnez    $at, 48$
	nop
	li      $a2, 0x0028
48$:
	lhu     $t1, %lo(Na_game_80333220)($t1)
	slti    $at, $a2, 0x0015
	beqzl   $t1, 56$
	lw      $t2, 0x0000($a3)
	bnezl   $at, 56$
	lw      $t2, 0x0000($a3)
	li      $a2, 0x0014
	lw      $t2, 0x0000($a3)
56$:
	li      $at, 0x0001
	srl     $t3, $t2, 31
	bnel    $t3, $at, 87$
	move    $v0, $a2
	beq     $a1, $a2, 68$
	lui     $t4, %hi(Na_BgmVolTable)
	move    $a0, $0
	lhu     $a1, 0x0022($sp)
	jal     Na_game_8031E710
	sb      $a2, 0x001F($sp)
	b       86$
	lbu     $a2, 0x001F($sp)
68$:
	addu    $t4, $t4, $t0
	lbu     $t4, %lo(Na_BgmVolTable)($t4)
	li      $at, 0x4F800000
	mtc1    $t4, $f10
	bgez    $t4, 77$
	cvt.s.w $f16, $f10
	mtc1    $at, $f18
	nop
	add.s   $f16, $f16, $f18
77$:
	li      $at, 0x42FE0000
	mtc1    $at, $f4
	move    $a0, $0
	lhu     $a1, 0x0022($sp)
	div.s   $f6, $f16, $f4
	sb      $a2, 0x001F($sp)
	jal     Na_game_8031E6A4
	swc1    $f6, 0x0020($a3)
	lbu     $a2, 0x001F($sp)
86$:
	move    $v0, $a2
87$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl Na_Pause
Na_Pause:
	move    $a1, $a0
	sw      $a0, 0x0000($sp)
	la.u    $a0, _Na_work_bss+0x1878
	sll     $t7, $a1, 5
	andi    $a1, $t7, 0x0020
	la.l    $a0, _Na_work_bss+0x1878
	move    $v0, $0
	li      $a2, 0x0140
8$:
	multu   $v0, $a2
	addiu   $v0, $v0, 0x0001
	andi    $t3, $v0, 0x00FF
	slti    $at, $t3, 0x0003
	move    $v0, $t3
	mflo    $t9
	addu    $v1, $a0, $t9
	lbu     $t0, 0x0000($v1)
	andi    $t1, $t0, 0xFFDF
	or      $t2, $a1, $t1
	bnez    $at, 8$
	sb      $t2, 0x0000($v1)
	jr      $ra
	nop

.globl Na_Init
Na_Init:
	addiu   $sp, $sp, -0x0018
	la.u    $t3, Na_game_803331CC
	la.u    $t1, Na_game_803331C0
	la.u    $a0, Na_game_803331B4
	sw      $ra, 0x0014($sp)
	la.l    $a0, Na_game_803331B4
	la.l    $t1, Na_game_803331C0
	la.l    $t3, Na_game_803331CC
	move    $a1, $0
	li      $t2, 0x0001
	li      $t0, 0x00FF
	li      $a3, 0x001C
12$:
	sll     $t6, $a1, 3
	addu    $t6, $t6, $a1
	sll     $t6, $t6, 2
	subu    $t6, $t6, $a1
	la.u    $t7, _Na_game_bss+0xB28
	la.l    $t7, _Na_game_bss+0xB28
	sll     $t6, $t6, 5
	addu    $a2, $t6, $t7
	move    $v0, $0
21$:
	multu   $v0, $a3
	addiu   $v0, $v0, 0x0001
	andi    $t4, $v0, 0x00FF
	slti    $at, $t4, 0x0028
	move    $v0, $t4
	mflo    $t8
	addu    $t9, $a2, $t8
	bnez    $at, 21$
	sb      $0, 0x0018($t9)
	la.u    $t5, _Na_game_bss+0xB18
	la.l    $t5, _Na_game_bss+0xB18
	addu    $v1, $a1, $t5
	move    $v0, $0
34$:
	addu    $t6, $v1, $v0
	addiu   $v0, $v0, 0x0001
	andi    $t7, $v0, 0x00FF
	move    $v0, $t7
	blez    $t7, 34$
	sb      $t0, 0x0000($t6)
	addu    $t8, $a0, $a1
	addu    $t9, $t1, $a1
	addu    $t4, $t3, $a1
	addiu   $a1, $a1, 0x0001
	andi    $t5, $a1, 0x00FF
	sb      $0, 0x0000($t8)
	slti    $at, $t5, 0x000A
	sb      $t2, 0x0000($t9)
	move    $a1, $t5
	bnez    $at, 12$
	sb      $0, 0x0000($t4)
	la.u    $t1, _Na_game_bss+0xB28
	la.l    $t1, _Na_game_bss+0xB28
	move    $a1, $0
	li      $t2, 0x0460
55$:
	multu   $a1, $t2
	sll     $t7, $a1, 3
	addu    $t7, $t7, $a1
	sll     $t7, $t7, 2
	subu    $t7, $t7, $a1
	sll     $t7, $t7, 5
	addu    $a2, $t1, $t7
	li      $v0, 0x0001
	li      $v1, 0x0001
	mflo    $t6
	addu    $a0, $t1, $t6
	sb      $t0, 0x001A($a0)
	sb      $t0, 0x001B($a0)
68$:
	multu   $v0, $a3
	addiu   $v0, $v0, 0x0001
	andi    $t5, $v0, 0x00FF
	slti    $at, $t5, 0x0027
	addiu   $t9, $v1, -0x0001
	addiu   $t4, $v1, 0x0001
	move    $v1, $t5
	move    $v0, $t5
	mflo    $t8
	addu    $a0, $a2, $t8
	sb      $t9, 0x001A($a0)
	bnez    $at, 68$
	sb      $t4, 0x001B($a0)
	multu   $t5, $a3
	addiu   $a1, $a1, 0x0001
	andi    $t8, $a1, 0x00FF
	slti    $at, $t8, 0x000A
	addiu   $t7, $t5, -0x0001
	move    $a1, $t8
	mflo    $t6
	addu    $a0, $a2, $t6
	sb      $t7, 0x001A($a0)
	bnez    $at, 55$
	sb      $t0, 0x001B($a0)
	move    $v0, $0
93$:
	la.u    $t4, _Na_game_bss+0x808
	la.l    $t4, _Na_game_bss+0x808
	sll     $t9, $v0, 8
	addu    $v1, $t9, $t4
	move    $a1, $0
98$:
	sll     $t5, $a1, 4
	addiu   $a1, $a1, 0x0001
	andi    $t7, $a1, 0x00FF
	slti    $at, $t7, 0x0010
	addu    $t6, $v1, $t5
	move    $a1, $t7
	bnez    $at, 98$
	sh      $0, 0x000C($t6)
	addiu   $v0, $v0, 0x0001
	andi    $t8, $v0, 0x00FF
	slti    $at, $t8, 0x0003
	bnez    $at, 93$
	move    $v0, $t8
	la.u    $v0, _Na_game_bss+0x36F8
	la.l    $v0, _Na_game_bss+0x36F8
	move    $a1, $0
114$:
	sll     $t9, $a1, 1
	addiu   $a1, $a1, 0x0001
	andi    $t5, $a1, 0x00FF
	slti    $at, $t5, 0x0006
	addu    $t4, $v0, $t9
	move    $a1, $t5
	bnez    $at, 114$
	sb      $0, 0x0001($t4)
	li      $a0, 0x0002
	jal     Na_PortUnlock
	li      $a1, 0xFFFF
	lui     $at, %hi(Na_game_80333228)
	sh      $0, %lo(Na_game_80333228)($at)
	lui     $at, %hi(_Na_game_bss+0x36F2)
	sb      $0, %lo(_Na_game_bss+0x36F2)($at)
	lui     $at, %hi(_Na_game_bss+0x36F3)
	sb      $0, %lo(_Na_game_bss+0x36F3)($at)
	lui     $at, %hi(Na_game_80333220)
	sh      $0, %lo(Na_game_80333220)($at)
	lui     $at, %hi(Na_game_80333224)
	sb      $0, %lo(Na_game_80333224)($at)
	li      $t0, 0x00FF
	lui     $at, %hi(Na_game_803331AC)
	sb      $t0, %lo(Na_game_803331AC)($at)
	lui     $at, %hi(_Na_work_bss+0x5DDF)
	sb      $0, %lo(_Na_work_bss+0x5DDF)($at)
	lui     $at, %hi(Na_game_80333238)
	sb      $0, %lo(Na_game_80333238)($at)
	lui     $at, %hi(Na_game_8033322C)
	sb      $0, %lo(Na_game_8033322C)($at)
	lui     $at, %hi(Na_game_80333230)
	sb      $0, %lo(Na_game_80333230)($at)
	lui     $at, %hi(Na_game_80333234)
	sb      $0, %lo(Na_game_80333234)($at)
	lw      $ra, 0x0014($sp)
	lui     $at, %hi(Na_game_80332F40)
	sb      $0, %lo(Na_game_80332F40)($at)
	lui     $at, %hi(Na_game_80332F44)
	sb      $0, %lo(Na_game_80332F44)($at)
	jr      $ra
	addiu   $sp, $sp, 0x0018

Na_game_80321398:
	andi    $t6, $a0, 0x00FF
	lui     $t0, %hi(Na_game_803331D8)
	addu    $t0, $t0, $t6
	lbu     $t0, %lo(Na_game_803331D8)($t0)
	sw      $a0, 0x0000($sp)
	move    $a0, $t6
	sw      $a1, 0x0004($sp)
	move    $v0, $0
	blez    $t0, 25$
	move    $v1, $0
	la.u    $t7, _Na_game_bss+0xB18
	la.l    $t7, _Na_game_bss+0xB18
	addu    $a1, $t6, $t7
	li      $t1, 0x00FF
14$:
	addu    $t8, $a1, $v1
	lbu     $t9, 0x0000($t8)
	addiu   $v1, $v1, 0x0001
	andi    $t3, $v1, 0x00FF
	beq     $t1, $t9, 23$
	slt     $at, $t3, $t0
	addiu   $v0, $v0, 0x0001
	andi    $t2, $v0, 0x00FF
	move    $v0, $t2
23$:
	bnez    $at, 14$
	move    $v1, $t3
25$:
	lw      $t4, 0x0004($sp)
	lui     $t5, %hi(Na_game_803331CC)
	addu    $t5, $t5, $a0
	sb      $v0, 0x0000($t4)
	lbu     $t5, %lo(Na_game_803331CC)($t5)
	lui     $v1, %hi(_Na_game_bss+0xB18)
	addu    $v1, $v1, $a0
	sb      $t5, 0x0000($a2)
	lbu     $v1, %lo(_Na_game_bss+0xB18)($v1)
	li      $t1, 0x00FF
	sll     $t6, $a0, 3
	beq     $t1, $v1, 52$
	li      $t3, 0x00FF
	addu    $t6, $t6, $a0
	sll     $t6, $t6, 2
	sll     $t7, $v1, 3
	subu    $t7, $t7, $v1
	subu    $t6, $t6, $a0
	sll     $t6, $t6, 5
	sll     $t7, $t7, 2
	addu    $t8, $t6, $t7
	lui     $t9, %hi(_Na_game_bss+0xB3C)
	addu    $t9, $t9, $t8
	lw      $t9, %lo(_Na_game_bss+0xB3C)($t9)
	srl     $t2, $t9, 16
	jr      $ra
	sb      $t2, 0x0000($a3)
52$:
	sb      $t3, 0x0000($a3)
	jr      $ra
	nop

.globl Na_SeStop
Na_SeStop:
	addiu   $sp, $sp, -0x0038
	sw      $s2, 0x001C($sp)
	li      $at, 0xF0000000
	and     $s2, $a0, $at
	srl     $t6, $s2, 28
	andi    $t7, $t6, 0x00FF
	sll     $t8, $t7, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	subu    $t8, $t8, $t7
	la.u    $t9, _Na_game_bss+0xB28
	la.l    $t9, _Na_game_bss+0xB28
	sll     $t8, $t8, 5
	sw      $ra, 0x0034($sp)
	sw      $s7, 0x0030($sp)
	sw      $s6, 0x002C($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	addu    $t0, $t8, $t9
	lbu     $s1, 0x001B($t0)
	li      $s6, 0x00FF
	move    $s5, $a1
	beq     $s6, $s1, 57$
	move    $s2, $t7
	sll     $t2, $t7, 3
	addu    $t2, $t2, $t7
	sll     $t2, $t2, 2
	subu    $t2, $t2, $t7
	srl     $s3, $a0, 16
	andi    $t1, $s3, 0xFFFF
	sll     $t2, $t2, 5
	addu    $s4, $t2, $t9
	move    $s3, $t1
	li      $s7, 0x001C
37$:
	multu   $s1, $s7
	mflo    $t3
	addu    $s0, $s4, $t3
	lw      $t4, 0x0014($s0)
	srl     $t5, $t4, 16
	andi    $t6, $t5, 0xFFFF
	bnel    $s3, $t6, 55$
	lbu     $s1, 0x001B($s0)
	lw      $t7, 0x0000($s0)
	andi    $a0, $s2, 0x00FF
	bnel    $s5, $t7, 55$
	lbu     $s1, 0x001B($s0)
	jal     Na_game_8031EF6C
	andi    $a1, $s1, 0x00FF
	sw      $0, 0x0014($s0)
	b       55$
	li      $s1, 0x00FF
	lbu     $s1, 0x001B($s0)
55$:
	bne     $s6, $s1, 37$
	nop
57$:
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl Na_SeKill
Na_SeKill:
	addiu   $sp, $sp, -0x0038
	sw      $s6, 0x002C($sp)
	sw      $s7, 0x0030($sp)
	sw      $s5, 0x0028($sp)
	sw      $s4, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s2, 0x001C($sp)
	la.u    $s6, _Na_game_bss+0xB28
	move    $s4, $a0
	sw      $ra, 0x0034($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.l    $s6, _Na_game_bss+0xB28
	move    $s2, $0
	li      $s3, 0x00FF
	li      $s5, 0x001C
	li      $s7, 0x0460
17$:
	multu   $s2, $s7
	sll     $t8, $s2, 3
	addu    $t8, $t8, $s2
	sll     $t8, $t8, 2
	subu    $t8, $t8, $s2
	sll     $t8, $t8, 5
	addu    $s1, $s6, $t8
	mflo    $t6
	addu    $t7, $s6, $t6
	lbu     $a1, 0x001B($t7)
	beql    $s3, $a1, 42$
	addiu   $s2, $s2, 0x0001
29$:
	multu   $a1, $s5
	mflo    $t9
	addu    $s0, $s1, $t9
	lw      $t0, 0x0000($s0)
	bnel    $s4, $t0, 39$
	lbu     $a1, 0x001B($s0)
	jal     Na_game_8031EF6C
	andi    $a0, $s2, 0x00FF
	sw      $0, 0x0014($s0)
	lbu     $a1, 0x001B($s0)
39$:
	bne     $s3, $a1, 29$
	nop
	addiu   $s2, $s2, 0x0001
42$:
	andi    $t1, $s2, 0x00FF
	slti    $at, $t1, 0x000A
	bnez    $at, 17$
	move    $s2, $t1
	lw      $ra, 0x0034($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	lw      $s4, 0x0024($sp)
	lw      $s5, 0x0028($sp)
	lw      $s6, 0x002C($sp)
	lw      $s7, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

Na_game_80321668:
	addiu   $sp, $sp, -0x0030
	sw      $s1, 0x001C($sp)
	andi    $s1, $a0, 0x00FF
	sll     $t6, $s1, 3
	addu    $t6, $t6, $s1
	sll     $t6, $t6, 2
	subu    $t6, $t6, $s1
	la.u    $t7, _Na_game_bss+0xB28
	la.l    $t7, _Na_game_bss+0xB28
	sll     $t6, $t6, 5
	sw      $ra, 0x002C($sp)
	sw      $s4, 0x0028($sp)
	sw      $s3, 0x0024($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	sw      $a0, 0x0030($sp)
	addu    $t8, $t6, $t7
	lbu     $s0, 0x001B($t8)
	li      $s3, 0x00FF
	sll     $t9, $s1, 3
	beq     $s3, $s0, 37$
	addu    $t9, $t9, $s1
	sll     $t9, $t9, 2
	subu    $t9, $t9, $s1
	sll     $t9, $t9, 5
	addu    $s2, $t9, $t7
	li      $s4, 0x001C
	andi    $a0, $s1, 0x00FF
28$:
	jal     Na_game_8031EF6C
	andi    $a1, $s0, 0x00FF
	multu   $s0, $s4
	mflo    $t0
	addu    $v0, $s2, $t0
	lbu     $s0, 0x001B($v0)
	sw      $0, 0x0014($v0)
	bnel    $s3, $s0, 28$
	andi    $a0, $s1, 0x00FF
37$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	lw      $s3, 0x0024($sp)
	lw      $s4, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl Na_SeClear
Na_SeClear:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     Na_game_80321668
	li      $a0, 0x0001
	jal     Na_game_80321668
	li      $a0, 0x0004
	jal     Na_game_80321668
	li      $a0, 0x0006
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_PortLock
Na_PortLock:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $a0, Na_PortStatus
	move    $a1, $t6
	la.l    $a0, Na_PortStatus
	move    $v0, $0
	li      $a2, 0x0001
8$:
	andi    $t7, $a1, 0x0001
	beqz    $t7, 13$
	move    $v1, $a1
	addu    $t8, $a0, $v0
	sb      $a2, 0x0000($t8)
13$:
	addiu   $v0, $v0, 0x0001
	andi    $t0, $v0, 0x00FF
	sra     $a1, $v1, 1
	slti    $at, $t0, 0x000A
	andi    $t9, $a1, 0xFFFF
	move    $v0, $t0
	bnez    $at, 8$
	move    $a1, $t9
	jr      $ra
	nop

Na_game_803217A8:
	addiu   $sp, $sp, -0x0028
	sw      $s1, 0x001C($sp)
	sw      $s2, 0x0020($sp)
	sw      $s0, 0x0018($sp)
	la.u    $s1, _Na_work_bss+0x1878
	sw      $ra, 0x0024($sp)
	la.l    $s1, _Na_work_bss+0x1878
	move    $s0, $0
	li      $s2, 0x0140
9$:
	multu   $s0, $s2
	mflo    $t6
	addu    $a0, $s1, $t6
	jal     Na_sequence_8031BE44
	nop
	addiu   $s0, $s0, 0x0001
	andi    $t7, $s0, 0x00FF
	slti    $at, $t7, 0x0003
	bnez    $at, 9$
	move    $s0, $t7
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Na_PortUnlock
Na_PortUnlock:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	andi    $t6, $a1, 0xFFFF
	la.u    $a0, Na_PortStatus
	move    $a1, $t6
	la.l    $a0, Na_PortStatus
	move    $v0, $0
7$:
	andi    $t7, $a1, 0x0001
	beqz    $t7, 12$
	move    $v1, $a1
	addu    $t8, $a0, $v0
	sb      $0, 0x0000($t8)
12$:
	addiu   $v0, $v0, 0x0001
	andi    $t0, $v0, 0x00FF
	sra     $a1, $v1, 1
	slti    $at, $t0, 0x000A
	andi    $t9, $a1, 0xFFFF
	move    $v0, $t0
	bnez    $at, 7$
	move    $a1, $t9
	jr      $ra
	nop

Na_game_80321864:
	andi    $t6, $a0, 0x00FF
	sll     $t9, $t6, 2
	andi    $t7, $a1, 0x00FF
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 6
	sll     $t0, $t7, 2
	addu    $t1, $t9, $t0
	lui     $v0, %hi(_Na_work_bss+0x18A4)
	addu    $v0, $v0, $t1
	lw      $v0, %lo(_Na_work_bss+0x18A4)($v0)
	la.u    $t2, _Na_work_bss+0x4E38
	sw      $a2, 0x0008($sp)
	andi    $t8, $a2, 0x00FF
	la.l    $t2, _Na_work_bss+0x4E38
	move    $a2, $t8
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	beq     $t2, $v0, 27$
	move    $v1, $0
	lbu     $t6, 0x0000($v0)
	move    $t3, $t8
	sll     $t4, $t3, 4
	andi    $t5, $t4, 0x0010
	andi    $t7, $t6, 0xFFEF
	or      $t8, $t5, $t7
	sb      $t8, 0x0000($v0)
	andi    $v1, $a2, 0x00FF
27$:
	jr      $ra
	move    $v0, $v1

.globl Na_game_803218D8
Na_game_803218D8:
	andi    $t6, $a0, 0x00FF
	lui     $at, %hi(_Na_game_bss+0x36E8)
	addu    $at, $at, $t6
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	jr      $ra
	sb      $a1, %lo(_Na_game_bss+0x36E8)($at)

.globl Na_MessageSound
Na_MessageSound:
	addiu   $sp, $sp, -0x0028
	andi    $v0, $a0, 0x00FF
	sw      $a0, 0x0028($sp)
	slti    $at, $v0, 0x00AA
	move    $a0, $v0
	bnez    $at, 9$
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	move    $v0, $0
9$:
	lui     $v1, %hi(Na_MsgSeTable)
	addu    $v1, $v1, $a0
	lbu     $v1, %lo(Na_MsgSeTable)($v1)
	li      $at, 0x00FF
	lui     $a0, %hi(Na_MsgSeData)
	beq     $v1, $at, 33$
	sll     $t7, $v1, 2
	addu    $a0, $a0, $t7
	la.u    $a1, Na_0
	la.l    $a1, Na_0
	lw      $a0, %lo(Na_MsgSeData)($a0)
	sw      $v0, 0x0020($sp)
	jal     Na_SePlay
	sw      $v1, 0x001C($sp)
	lw      $a2, 0x001C($sp)
	li      $at, 0x0002
	lw      $v0, 0x0020($sp)
	bne     $a2, $at, 33$
	li      $a0, 0x0001
	li      $a1, 0x0010
	move    $a2, $0
	jal     Na_game_80320544
	sw      $v0, 0x0020($sp)
	lw      $v0, 0x0020($sp)
33$:
	li      $at, 0x000A
	beq     $v0, $at, 40$
	li      $at, 0x000B
	beq     $v0, $at, 40$
	li      $at, 0x000C
	bnel    $v0, $at, 43$
	lw      $ra, 0x0014($sp)
40$:
	jal     Na_Solution
	nop
	lw      $ra, 0x0014($sp)
43$:
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_BgmPlay
Na_BgmPlay:
	addiu   $sp, $sp, -0x0030
	sw      $a0, 0x0030($sp)
	andi    $t6, $a0, 0x00FF
	move    $a0, $t6
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	beqz    $t6, 15$
	move    $t1, $0
	lhu     $t7, 0x0036($sp)
	lhu     $a2, 0x003A($sp)
	jal     Na_game_80320544
	andi    $a1, $t7, 0x00FF
	b       125$
	lw      $ra, 0x0014($sp)
15$:
	la.u    $t3, Na_game_80333238
	la.l    $t3, Na_game_80333238
	lbu     $a1, 0x0000($t3)
	li      $at, 0x0006
	beq     $a1, $at, 124$
	move    $v1, $a1
	blez    $a1, 56$
	move    $a0, $0
	lhu     $t4, 0x0036($sp)
	la.u    $a3, _Na_game_bss+0x36F8
	la.l    $a3, _Na_game_bss+0x36F8
	andi    $v0, $t4, 0x00FF
	sw      $v0, 0x0018($sp)
28$:
	sll     $t6, $a0, 1
	addu    $t7, $a3, $t6
	lbu     $t8, 0x0000($t7)
	bnel    $v0, $t8, 51$
	addiu   $a0, $a0, 0x0001
	bnez    $a0, 41$
	la.u    $t9, _Na_work_bss+0x1878
	move    $a0, $0
	lbu     $a1, 0x001B($sp)
	jal     Na_game_80320544
	lhu     $a2, 0x003A($sp)
	b       125$
	lw      $ra, 0x0014($sp)
41$:
	la.l    $t9, _Na_work_bss+0x1878
	lw      $t4, 0x0000($t9)
	srl     $t5, $t4, 31
	bnezl   $t5, 125$
	lw      $ra, 0x0014($sp)
	jal     Na_BgmStop
	lbu     $a0, 0x0000($a3)
	b       125$
	lw      $ra, 0x0014($sp)
	addiu   $a0, $a0, 0x0001
51$:
	andi    $t6, $a0, 0x00FF
	slt     $at, $t6, $v1
	bnez    $at, 28$
	move    $a0, $t6
	move    $a0, $0
56$:
	lhu     $a2, 0x0036($sp)
	la.u    $a3, _Na_game_bss+0x36F8
	la.l    $a3, _Na_game_bss+0x36F8
	andi    $t8, $a2, 0x00FF
	blez    $v1, 78$
	sw      $t8, 0x0018($sp)
	sra     $v0, $a2, 8
	andi    $t9, $v0, 0x00FF
	move    $v0, $t9
65$:
	sll     $t4, $a0, 1
	addu    $t5, $a3, $t4
	lbu     $t6, 0x0001($t5)
	slt     $at, $v0, $t6
	bnezl   $at, 74$
	addiu   $a0, $a0, 0x0001
	andi    $t1, $a0, 0x00FF
	andi    $a0, $a1, 0x00FF
	addiu   $a0, $a0, 0x0001
74$:
	andi    $t7, $a0, 0x00FF
	slt     $at, $t7, $v1
	bnez    $at, 65$
	move    $a0, $t7
78$:
	sra     $t2, $a2, 8
	andi    $t8, $t2, 0x00FF
	move    $t2, $t8
	bnez    $t1, 101$
	move    $t0, $t1
	move    $a0, $0
	lbu     $a1, 0x001B($sp)
	lhu     $a2, 0x003A($sp)
	sw      $t0, 0x0024($sp)
	sb      $t1, 0x002C($sp)
	jal     Na_game_80320544
	sw      $t8, 0x001C($sp)
	la.u    $t3, Na_game_80333238
	la.l    $t3, Na_game_80333238
	lbu     $t9, 0x0000($t3)
	la.u    $a3, _Na_game_bss+0x36F8
	la.l    $a3, _Na_game_bss+0x36F8
	addiu   $t4, $t9, 0x0001
	lw      $t0, 0x0024($sp)
	lbu     $t1, 0x002C($sp)
	lw      $t2, 0x001C($sp)
	sb      $t4, 0x0000($t3)
	andi    $v1, $t4, 0x00FF
101$:
	addiu   $a0, $v1, -0x0001
	andi    $a1, $a0, 0x00FF
	slt     $at, $t0, $a1
	beqz    $at, 119$
	move    $a0, $a1
106$:
	sll     $t7, $a1, 1
	addu    $v1, $a3, $t7
	lbu     $t8, -0x0001($v1)
	sll     $t6, $a0, 1
	addu    $v0, $a3, $t6
	addiu   $a0, $a0, -0x0001
	sb      $t8, 0x0001($v0)
	lbu     $t9, -0x0002($v1)
	andi    $a1, $a0, 0x00FF
	slt     $at, $t0, $a1
	move    $a0, $a1
	bnez    $at, 106$
	sb      $t9, 0x0000($v0)
119$:
	lw      $t6, 0x0018($sp)
	sll     $t5, $t1, 1
	addu    $v0, $a3, $t5
	sb      $t2, 0x0001($v0)
	sb      $t6, 0x0000($v0)
124$:
	lw      $ra, 0x0014($sp)
125$:
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl Na_BgmStop
Na_BgmStop:
	addiu   $sp, $sp, -0x0028
	sw      $s2, 0x001C($sp)
	la.u    $s2, Na_game_80333238
	la.l    $s2, Na_game_80333238
	lbu     $v0, 0x0000($s2)
	sw      $ra, 0x0024($sp)
	sw      $s3, 0x0020($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	andi    $t6, $a0, 0xFFFF
	beqz    $v0, 71$
	move    $a1, $v0
	andi    $v1, $v0, 0x00FF
	blez    $v0, 49$
	move    $s0, $0
	move    $s3, $t6
	andi    $t7, $s3, 0x00FF
	la.u    $s1, _Na_game_bss+0x36F8
	la.l    $s1, _Na_game_bss+0x36F8
	move    $s3, $t7
21$:
	sll     $t8, $s0, 1
	addu    $t9, $s1, $t8
	lbu     $t0, 0x0000($t9)
	addiu   $t1, $v0, -0x0001
	bnel    $s3, $t0, 45$
	addiu   $s0, $s0, 0x0001
	bnez    $s0, 40$
	sb      $t1, 0x0000($s2)
	andi    $t2, $t1, 0x00FF
	beqz    $t2, 38$
	move    $a0, $0
	move    $a0, $0
	lbu     $a1, 0x0002($s1)
	jal     Na_game_80320544
	move    $a2, $0
	b       41$
	lbu     $v0, 0x0000($s2)
38$:
	jal     Na_SeqFadeout
	li      $a1, 0x0014
40$:
	lbu     $v0, 0x0000($s2)
41$:
	andi    $v1, $s0, 0x00FF
	move    $s0, $v0
	move    $a1, $v0
	addiu   $s0, $s0, 0x0001
45$:
	andi    $t3, $s0, 0x00FF
	slt     $at, $t3, $a1
	bnez    $at, 21$
	move    $s0, $t3
49$:
	la.u    $s1, _Na_game_bss+0x36F8
	slt     $at, $v1, $a1
	la.l    $s1, _Na_game_bss+0x36F8
	beqz    $at, 68$
	andi    $s0, $v1, 0x00FF
	move    $a0, $s0
55$:
	sll     $t5, $a0, 1
	addu    $v1, $s1, $t5
	lbu     $t6, 0x0003($v1)
	sll     $t4, $s0, 1
	addu    $v0, $s1, $t4
	addiu   $s0, $s0, 0x0001
	sb      $t6, 0x0001($v0)
	lbu     $t7, 0x0002($v1)
	andi    $a0, $s0, 0x00FF
	slt     $at, $a0, $a1
	move    $s0, $a0
	bnez    $at, 55$
	sb      $t7, 0x0000($v0)
68$:
	sll     $t9, $s0, 1
	addu    $t0, $s1, $t9
	sb      $0, 0x0001($t0)
71$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	lw      $s2, 0x001C($sp)
	lw      $s3, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Na_BgmFadeout
Na_BgmFadeout:
	lui     $t8, %hi(Na_game_80333238)
	lbu     $t8, %lo(Na_game_80333238)($t8)
	addiu   $sp, $sp, -0x0018
	sw      $a1, 0x001C($sp)
	andi    $t7, $a1, 0xFFFF
	move    $a1, $t7
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	beqz    $t8, 17$
	andi    $t6, $a0, 0xFFFF
	lui     $t1, %hi(_Na_game_bss+0x36F8)
	lbu     $t1, %lo(_Na_game_bss+0x36F8)($t1)
	andi    $t0, $t6, 0x00FF
	bnel    $t0, $t1, 18$
	lw      $ra, 0x0014($sp)
	jal     Na_SeqFadeout
	move    $a0, $0
17$:
	lw      $ra, 0x0014($sp)
18$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_game_80321D38
Na_game_80321D38:
	la.u    $v0, Na_game_80333238
	la.l    $v0, Na_game_80333238
	lbu     $t6, 0x0000($v0)
	li      $t7, 0x0001
	beqz    $t6, 7$
	nop
	sb      $t7, 0x0000($v0)
7$:
	jr      $ra
	nop

.globl Na_BgmGet
Na_BgmGet:
	lui     $t6, %hi(Na_game_80333238)
	lbu     $t6, %lo(Na_game_80333238)($t6)
	la.u    $v1, _Na_game_bss+0x36F8
	la.l    $v1, _Na_game_bss+0x36F8
	beqzl   $t6, 14$
	li      $v0, 0xFFFF
	lbu     $t8, 0x0001($v1)
	lbu     $t7, 0x0000($v1)
	sll     $t9, $t8, 8
	addu    $v0, $t7, $t9
	andi    $t0, $v0, 0xFFFF
	jr      $ra
	move    $v0, $t0
	li      $v0, 0xFFFF
14$:
	jr      $ra
	nop

Na_game_80321D9C:
	addiu   $sp, $sp, -0x0018
	la.u    $t6, _Na_work_bss+0x1878
	sw      $ra, 0x0014($sp)
	la.l    $t6, _Na_work_bss+0x1878
	lw      $t7, 0x0140($t6)
	la.u    $v0, Na_game_8033322C
	la.l    $v0, Na_game_8033322C
	srl     $t8, $t7, 31
	bnezl   $t8, 40$
	lw      $ra, 0x0014($sp)
	lbu     $t9, 0x0000($v0)
	li      $a0, 0x0032
	beqzl   $t9, 40$
	lw      $ra, 0x0014($sp)
	jal     Na_game_80320F68
	sb      $0, 0x0000($v0)
	lui     $t0, %hi(_Na_game_bss+0x36F2)
	lbu     $t0, %lo(_Na_game_bss+0x36F2)($t0)
	lui     $a1, %hi(Na_game_80333230)
	beqzl   $t0, 40$
	lw      $ra, 0x0014($sp)
	lbu     $a1, %lo(Na_game_80333230)($a1)
	li      $at, 0x0013
	li      $a0, 0x0001
	beq     $a1, $at, 29$
	move    $v0, $a1
	li      $at, 0x000B
	bnel    $v0, $at, 40$
	lw      $ra, 0x0014($sp)
29$:
	jal     Na_game_80320544
	li      $a2, 0x0001
	lui     $a2, %hi(Na_game_80333234)
	lbu     $a2, %lo(Na_game_80333234)($a2)
	li      $at, 0x00FF
	li      $a0, 0x0001
	beql    $a2, $at, 40$
	lw      $ra, 0x0014($sp)
	jal     Na_game_8031E710
	li      $a1, 0x0001
	lw      $ra, 0x0014($sp)
40$:
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_SeqPush
Na_SeqPush:
	addiu   $sp, $sp, -0x0028
	lui     $v0, %hi(Na_game_803331AC)
	lbu     $v0, %lo(Na_game_803331AC)($v0)
	sw      $s0, 0x0018($sp)
	sw      $a1, 0x002C($sp)
	andi    $t6, $a1, 0x00FF
	li      $v1, 0x00FF
	lui     $at, %hi(Na_game_80333228)
	move    $a1, $t6
	andi    $s0, $a2, 0x00FF
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	beq     $v1, $v0, 59$
	sh      $0, %lo(Na_game_80333228)($at)
	li      $at, 0x0002
	beq     $v0, $at, 59$
	la.u    $v0, _Na_game_bss+0x36F2
	la.l    $v0, _Na_game_bss+0x36F2
	lbu     $t7, 0x0000($v0)
	addiu   $t8, $t6, 0x0080
	bnez    $t7, 48$
	nop
	sb      $t8, 0x0000($v0)
	jal     Na_game_80320F68
	lhu     $a0, 0x0036($sp)
	lhu     $a3, 0x0036($sp)
	li      $a0, 0x0001
	lbu     $a1, 0x002B($sp)
	sra     $a2, $a3, 1
	andi    $t9, $a2, 0xFFFF
	move    $a2, $t9
	jal     Na_game_80320544
	sw      $a3, 0x0020($sp)
	slti    $at, $s0, 0x0080
	beqz    $at, 42$
	lw      $a3, 0x0020($sp)
	li      $a0, 0x0001
	move    $a1, $a3
	jal     Na_game_8031E710
	andi    $a2, $s0, 0x00FF
42$:
	lui     $at, %hi(Na_game_80333234)
	lbu     $t0, 0x002B($sp)
	sb      $s0, %lo(Na_game_80333234)($at)
	lui     $at, %hi(Na_game_80333230)
	b       59$
	sb      $t0, %lo(Na_game_80333230)($at)
48$:
	beq     $v1, $s0, 59$
	addiu   $t1, $a1, 0x0080
	sb      $t1, 0x0000($v0)
	jal     Na_game_80320F68
	lhu     $a0, 0x0036($sp)
	li      $a0, 0x0001
	lhu     $a1, 0x0036($sp)
	jal     Na_game_8031E710
	andi    $a2, $s0, 0x00FF
	lui     $at, %hi(Na_game_80333234)
	sb      $s0, %lo(Na_game_80333234)($at)
59$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Na_SeqPull
Na_SeqPull:
	la.u    $v0, _Na_game_bss+0x36F2
	la.l    $v0, _Na_game_bss+0x36F2
	lbu     $t6, 0x0000($v0)
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	beqz    $t6, 17$
	sw      $a0, 0x0018($sp)
	sb      $0, 0x0000($v0)
	lui     $at, %hi(Na_game_80333230)
	sb      $0, %lo(Na_game_80333230)($at)
	lui     $at, %hi(Na_game_80333234)
	sb      $0, %lo(Na_game_80333234)($at)
	jal     Na_game_80320F68
	lhu     $a0, 0x001A($sp)
	li      $a0, 0x0001
	jal     Na_SeqFadeout
	lhu     $a1, 0x001A($sp)
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_Fadeout
Na_Fadeout:
	addiu   $sp, $sp, -0x0028
	lui     $t6, %hi(Na_game_8033321C)
	lbu     $t6, %lo(Na_game_8033321C)($t6)
	sw      $s2, 0x0020($sp)
	andi    $s2, $a0, 0xFFFF
	sw      $ra, 0x0024($sp)
	sw      $s1, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	bnez    $t6, 49$
	sw      $a0, 0x0028($sp)
	la.u    $s1, _Na_work_bss+0x1878
	la.l    $s1, _Na_work_bss+0x1878
	lw      $t7, 0x0000($s1)
	li      $s0, 0x0001
	move    $a0, $0
	srl     $t8, $t7, 31
	bnel    $s0, $t8, 21$
	lw      $t9, 0x0140($s1)
	jal     Na_game_8031E578
	move    $a1, $s2
	lw      $t9, 0x0140($s1)
21$:
	li      $a0, 0x0001
	srl     $t0, $t9, 31
	bnel    $s0, $t0, 28$
	move    $s0, $0
	jal     Na_game_8031E578
	move    $a1, $s2
	move    $s0, $0
28$:
	move    $v0, $0
	li      $s1, 0x0007
30$:
	beq     $s1, $v0, 41$
	li      $a0, 0x0002
	andi    $a1, $s0, 0x00FF
	move    $a2, $0
	bgez    $s2, 38$
	sra     $a3, $s2, 4
	addiu   $at, $s2, 0x000F
	sra     $a3, $at, 4
38$:
	andi    $t1, $a3, 0xFFFF
	jal     Na_game_80320734
	move    $a3, $t1
41$:
	addiu   $s0, $s0, 0x0001
	andi    $v0, $s0, 0x00FF
	slti    $at, $v0, 0x000A
	bnez    $at, 30$
	move    $s0, $v0
	li      $t3, 0x0001
	lui     $at, %hi(Na_game_8033321C)
	sb      $t3, %lo(Na_game_8033321C)($at)
49$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0018($sp)
	lw      $s1, 0x001C($sp)
	lw      $s2, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Na_StarCatch
Na_StarCatch:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0001
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0080
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_PeachMessage
Na_PeachMessage:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001D
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0080
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_Solution
Na_Solution:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001B
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_HiScore
Na_HiScore:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0012
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_StarAppear
Na_StarAppear:
	addiu   $sp, $sp, -0x0018
	andi    $t6, $a0, 0x00FF
	sw      $ra, 0x0014($sp)
	bnez    $t6, 7$
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_Na_game_bss+0x36F2)
	sb      $0, %lo(_Na_game_bss+0x36F2)($at)
7$:
	li      $a0, 0x0001
	li      $a1, 0x0015
	jal     Na_game_80320544
	move    $a2, $0
	li      $t7, 0x0094
	lui     $at, %hi(Na_game_8033322C)
	sb      $t7, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_Fanfare
Na_Fanfare:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x0014
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_ToadMessage
Na_ToadMessage:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	li      $a0, 0x0001
	li      $a1, 0x001C
	jal     Na_game_80320544
	move    $a2, $0
	li      $t6, 0x0094
	lui     $at, %hi(Na_game_8033322C)
	sb      $t6, %lo(Na_game_8033322C)($at)
	jal     Na_game_80320F68
	li      $a0, 0x0032
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl Na_Mode
Na_Mode:
	addiu   $sp, $sp, -0x0020
	andi    $a1, $a0, 0x00FF
	sw      $s0, 0x0018($sp)
	slti    $at, $a1, 0x0008
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	bnez    $at, 12$
	move    $s0, $a1
	lui     $at, %hi(Na_game_8033323C)
	move    $a1, $0
	sb      $0, %lo(Na_game_8033323C)($at)
	move    $s0, $0
12$:
	lui     $at, %hi(Na_game_80332E54)
	sw      $0, %lo(Na_game_80332E54)($at)
	jal     Na_game_803217A8
	sb      $a1, 0x0023($sp)
	jal     Na_Init
	nop
	lbu     $a1, 0x0023($sp)
	la.u    $t7, Na_CfgTable
	la.l    $t7, Na_CfgTable
	sll     $t6, $a1, 3
	subu    $t6, $t6, $a1
	sll     $t6, $t6, 2
	jal     Na_memory_80317948
	addu    $a0, $t6, $t7
	jal     osWritebackDCacheAll
	nop
	li      $at, 0x0007
	beq     $s0, $at, 39$
	li      $a0, 0x001B
	jal     Na_system_80319220
	li      $a1, 0x0003
	li      $a0, 0x001D
	jal     Na_system_80319220
	li      $a1, 0x0003
	li      $a0, 0x0015
	jal     Na_system_80319220
	li      $a1, 0x0003
39$:
	li      $a0, 0x0002
	move    $a1, $0
	jal     Na_game_80320544
	move    $a2, $0
	la.u    $v0, Na_game_80333218
	la.l    $v0, Na_game_80333218
	lbu     $t8, 0x0000($v0)
	lw      $ra, 0x001C($sp)
	lui     $at, %hi(_Na_work_bss+0x5DDF)
	andi    $t9, $t8, 0x00F0
	addu    $t0, $t9, $s0
	andi    $t1, $t0, 0x00FF
	sb      $t0, 0x0000($v0)
	sra     $t2, $t1, 4
	sb      $t2, %lo(_Na_work_bss+0x5DDF)($at)
	lui     $at, %hi(Na_game_8033321C)
	lw      $s0, 0x0018($sp)
	sb      $0, %lo(Na_game_8033321C)($at)
	jr      $ra
	addiu   $sp, $sp, 0x0020

.globl Na_Output
Na_Output:
	la.u    $v1, Na_game_80333218
	la.l    $v1, Na_game_80333218
	lbu     $t7, 0x0000($v1)
	sll     $t9, $a0, 4
	lui     $at, %hi(_Na_work_bss+0x5DDF)
	andi    $t8, $t7, 0x000F
	addu    $t0, $t8, $t9
	sb      $t0, 0x0000($v1)
	sw      $a0, 0x0000($sp)
	jr      $ra
	sb      $a0, %lo(_Na_work_bss+0x5DDF)($at)

Na_game_80322348:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	jr      $ra
	sw      $a3, 0x000C($sp)

Na_game_8032235C:
	jr      $ra
	sw      $a0, 0x0000($sp)
