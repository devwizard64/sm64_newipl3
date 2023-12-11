.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_stdio_8018C2F0:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0000($sp)
	sw      $0, 0x0004($sp)
3$:
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0xE00)($t8)
	nop
	bnez    $t8, 24$
	nop
	lw      $t9, 0x0004($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t0, $t9, 4
	addu    $at, $at, $t0
	sw      $a0, %lo(_face_stdio_bss-0x870+0xE00)($at)
	lw      $t1, 0x0004($sp)
	la.u    $t3, _face_stdio_bss-0x870+0xE00
	la.l    $t3, _face_stdio_bss-0x870+0xE00
	sll     $t2, $t1, 4
	addu    $t4, $t2, $t3
	sw      $t4, 0x0000($sp)
	b       30$
	nop
24$:
	lw      $t5, 0x0004($sp)
	nop
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0020
	bnez    $at, 3$
	sw      $t6, 0x0004($sp)
30$:
	lw      $t7, 0x0000($sp)
	nop
	beqz    $t7, 38$
	nop
	mtc1    $0, $f4
	lw      $t8, 0x0000($sp)
	nop
	swc1    $f4, 0x000C($t8)
38$:
	lw      $v0, 0x0000($sp)
	b       43$
	nop
	b       43$
	nop
43$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018C3A4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
4$:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0xE00)($t8)
	nop
	beqz    $t8, 28$
	nop
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t0, $t9, 4
	addu    $a0, $a0, $t0
	lw      $a0, %lo(_face_stdio_bss-0x870+0xE00)($a0)
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, 28$
	nop
	lw      $t1, 0x001C($sp)
	la.u    $t3, _face_stdio_bss-0x870+0xE00
	la.l    $t3, _face_stdio_bss-0x870+0xE00
	sll     $t2, $t1, 4
	b       38$
	addu    $v0, $t2, $t3
28$:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, 4$
	sw      $t5, 0x001C($sp)
	b       38$
	move    $v0, $0
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018C44C
face_stdio_8018C44C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018C3A4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 23$
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018C2F0
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 23$
	nop
	la.u    $a0, str_face_stdio_801B82F0
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B82F0
23$:
	jal     face_gfx_8019B060
	nop
	mtc1    $v0, $f4
	bgez    $v0, 32$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
32$:
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f6, 0x0004($t8)
	lui     $t9, %hi(face_stdio_801A8430)
	lw      $t9, %lo(face_stdio_801A8430)($t9)
	nop
	slti    $at, $t9, 0x0010
	bnez    $at, 44$
	nop
	la.u    $a0, str_face_stdio_801B8310
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8310
44$:
	lui     $t1, %hi(face_stdio_801A8430)
	lw      $t1, %lo(face_stdio_801A8430)($t1)
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x1000)
	lui     $t3, %hi(face_stdio_801A8430)
	sll     $t2, $t1, 2
	lw      $t3, %lo(face_stdio_801A8430)($t3)
	addu    $at, $at, $t2
	sw      $t0, %lo(_face_stdio_bss-0x870+0x1000)($at)
	lui     $at, %hi(face_stdio_801A8430)
	addiu   $t4, $t3, 0x0001
	sw      $t4, %lo(face_stdio_801A8430)($at)
	lw      $v0, 0x001C($sp)
	b       61$
	nop
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018C550:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_stdio_801A8430)
	lw      $t6, %lo(face_stdio_801A8430)($t6)
	lui     $t8, %hi(_face_stdio_bss-0x870+0xFFC)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0xFFC)($t8)
	la.u    $a0, str_face_stdio_801B832C
	lw      $a1, 0x0000($t8)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B832C
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_stdio_8018C598
face_stdio_8018C598:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_stdio_801A8430)
	lw      $t6, %lo(face_stdio_801A8430)($t6)
	lui     $at, %hi(face_stdio_801A8430)
	slti    $s0, $t6, 0x0000
	addiu   $t7, $t6, -0x0001
	beqz    $s0, 14$
	sw      $t7, %lo(face_stdio_801A8430)($at)
	la.u    $a0, str_face_stdio_801B8330
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8330
14$:
	lw      $a0, 0x0028($sp)
	jal     face_stdio_8018C3A4
	nop
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	nop
	bnez    $t8, 26$
	nop
	la.u    $a0, str_face_stdio_801B8348
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8348
26$:
	jal     face_gfx_8019B060
	nop
	mtc1    $v0, $f4
	bgez    $v0, 35$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
35$:
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f6, 0x0008($t9)
	lw      $t0, 0x0024($sp)
	nop
	lwc1    $f10, 0x0008($t0)
	lwc1    $f16, 0x0004($t0)
	lwc1    $f4, 0x000C($t0)
	sub.s   $f18, $f10, $f16
	add.s   $f8, $f4, $f18
	swc1    $f8, 0x000C($t0)
	lw      $t1, 0x0024($sp)
	cfc1    $t2, $31
	li      $v0, 0x0001
	ctc1    $v0, $31
	lwc1    $f6, 0x000C($t1)
	nop
	cvt.w.s $f10, $f6
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	beqz    $v0, 78$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $v0, 0x0001
	sub.s   $f10, $f6, $f10
	ctc1    $v0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $v0, $31
	nop
	andi    $at, $v0, 0x0004
	andi    $v0, $v0, 0x0078
	bnez    $v0, 76$
	nop
	mfc1    $v0, $f10
	li      $at, 0x80000000
	b       82$
	or      $v0, $v0, $at
76$:
	b       82$
	li      $v0, -0x0001
78$:
	mfc1    $v0, $f10
	nop
	bltz    $v0, 76$
	nop
82$:
	ctc1    $t2, $31
	b       87$
	nop
	b       87$
	nop
87$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_stdio_8018C704
face_stdio_8018C704:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
2$:
	lw      $t6, 0x0004($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t7, $t6, 4
	addu    $at, $at, $t7
	sw      $0, %lo(_face_stdio_bss-0x870+0xE00)($at)
	lw      $t8, 0x0004($sp)
	mtc1    $0, $f4
	lui     $at, %hi(_face_stdio_bss-0x870+0xE04)
	sll     $t9, $t8, 4
	addu    $at, $at, $t9
	swc1    $f4, %lo(_face_stdio_bss-0x870+0xE04)($at)
	lw      $t0, 0x0004($sp)
	mtc1    $0, $f6
	lui     $at, %hi(_face_stdio_bss-0x870+0xE08)
	sll     $t1, $t0, 4
	addu    $at, $at, $t1
	swc1    $f6, %lo(_face_stdio_bss-0x870+0xE08)($at)
	lw      $t2, 0x0004($sp)
	mtc1    $0, $f8
	lui     $at, %hi(_face_stdio_bss-0x870+0xE0C)
	sll     $t3, $t2, 4
	addu    $at, $at, $t3
	swc1    $f8, %lo(_face_stdio_bss-0x870+0xE0C)($at)
	lw      $t4, 0x0004($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, 2$
	sw      $t5, 0x0004($sp)
	b       33$
	nop
33$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018C790
face_stdio_8018C790:
	la.u    $t7, _face_stdio_bss-0x870+0xE00
	la.l    $t7, _face_stdio_bss-0x870+0xE00
	sll     $t6, $a0, 4
	jr      $ra
	addu    $v0, $t6, $t7
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C7B4
face_stdio_8018C7B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0xE00)
	sll     $t7, $t6, 4
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0xE00)($t8)
	nop
	beqz    $t8, 34$
	nop
	lw      $t9, 0x001C($sp)
	la.u    $t1, _face_stdio_bss-0x870+0xE00
	la.l    $t1, _face_stdio_bss-0x870+0xE00
	sll     $t0, $t9, 4
	addu    $t2, $t0, $t1
	li      $at, 0x44800000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t2)
	lw      $a1, 0x0000($t2)
	div.s   $f8, $f4, $f6
	la.u    $a0, str_face_stdio_801B8364
	la.l    $a0, str_face_stdio_801B8364
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $a2, $f10
	ctc1    $t3, $31
	jal     gd_printf
	nop
34$:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, 3$
	sw      $t5, 0x001C($sp)
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018C86C
face_stdio_8018C86C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	la.u    $a0, str_face_stdio_801B8370
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8370
	sw      $0, 0x0024($sp)
6$:
	lw      $t6, 0x0024($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0x998)($t8)
	nop
	beqz    $t8, 33$
	nop
	lw      $t9, 0x0024($sp)
	la.u    $t1, _face_stdio_bss-0x870+0x980
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	la.l    $t1, _face_stdio_bss-0x870+0x980
	addu    $t2, $t0, $t1
	lwc1    $f4, 0x0010($t2)
	lw      $t3, 0x0020($t2)
	cvt.d.s $f6, $f4
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	lw      $a1, 0x0018($t2)
	la.u    $a0, str_face_stdio_801B837C
	la.l    $a0, str_face_stdio_801B837C
	jal     gd_printf
	sw      $t3, 0x0010($sp)
33$:
	lw      $t4, 0x0024($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, 6$
	sw      $t5, 0x0024($sp)
	b       41$
	nop
41$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_stdio_8018C920
face_stdio_8018C920:
	lui     $at, %hi(_face_stdio_bss-0x870+0x978)
	sw      $0, %lo(_face_stdio_bss-0x870+0x978)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C938
face_stdio_8018C938:
	li      $t6, 0x0001
	lui     $at, %hi(_face_stdio_bss-0x870+0x978)
	sw      $t6, %lo(_face_stdio_bss-0x870+0x978)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018C954
face_stdio_8018C954:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	sw      $0, %lo(_face_stdio_bss-0x870+0x998)($at)
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x988)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	sw      $0, %lo(_face_stdio_bss-0x870+0x988)($at)
	lw      $t0, 0x001C($sp)
	mtc1    $0, $f4
	sll     $t1, $t0, 3
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_stdio_bss-0x870+0x98C)
	addu    $at, $at, $t1
	swc1    $f4, %lo(_face_stdio_bss-0x870+0x98C)($at)
	lw      $t2, 0x001C($sp)
	mtc1    $0, $f6
	sll     $t3, $t2, 3
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	lui     $at, %hi(_face_stdio_bss-0x870+0x990)
	addu    $at, $at, $t3
	swc1    $f6, %lo(_face_stdio_bss-0x870+0x990)($at)
	lw      $t4, 0x001C($sp)
	mtc1    $0, $f8
	sll     $t5, $t4, 3
	addu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	lui     $at, %hi(_face_stdio_bss-0x870+0x994)
	addu    $at, $at, $t5
	swc1    $f8, %lo(_face_stdio_bss-0x870+0x994)($at)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0007
	divu    $0, $t6, $at
	lui     $t9, %hi(face_stdio_801A8414)
	sll     $t0, $t6, 3
	addu    $t0, $t0, $t6
	sll     $t0, $t0, 2
	lui     $at, %hi(_face_stdio_bss-0x870+0x99C)
	addu    $at, $at, $t0
	mfhi    $t7
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(face_stdio_801A8414)($t9)
	nop
	sw      $t9, %lo(_face_stdio_bss-0x870+0x99C)($at)
	lw      $t1, 0x001C($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x9A0)
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	sw      $0, %lo(_face_stdio_bss-0x870+0x9A0)($at)
	lw      $t3, 0x001C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0020
	bnez    $at, 3$
	sw      $t4, 0x001C($sp)
	jal     face_stdio_8018C938
	nop
	b       73$
	nop
73$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CA88:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0000($sp)
	sw      $0, 0x0004($sp)
3$:
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0x998)($t8)
	nop
	bnez    $t8, 30$
	nop
	lw      $t9, 0x0004($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $at, $at, $t0
	sw      $a0, %lo(_face_stdio_bss-0x870+0x998)($at)
	lw      $t1, 0x0004($sp)
	la.u    $t3, _face_stdio_bss-0x870+0x980
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	la.l    $t3, _face_stdio_bss-0x870+0x980
	addu    $t4, $t2, $t3
	sw      $t4, 0x0000($sp)
	b       36$
	nop
30$:
	lw      $t5, 0x0004($sp)
	nop
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0020
	bnez    $at, 3$
	sw      $t6, 0x0004($sp)
36$:
	lw      $v0, 0x0000($sp)
	b       41$
	nop
	b       41$
	nop
41$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018CB34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
4$:
	lw      $t6, 0x001C($sp)
	lui     $t8, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t7, $t6, 3
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_stdio_bss-0x870+0x998)($t8)
	nop
	beqz    $t8, 34$
	nop
	lw      $t9, 0x001C($sp)
	lui     $a0, %hi(_face_stdio_bss-0x870+0x998)
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $a0, $a0, $t0
	lw      $a0, %lo(_face_stdio_bss-0x870+0x998)($a0)
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, 34$
	nop
	lw      $t1, 0x001C($sp)
	la.u    $t3, _face_stdio_bss-0x870+0x980
	sll     $t2, $t1, 3
	addu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	la.l    $t3, _face_stdio_bss-0x870+0x980
	b       44$
	addu    $v0, $t2, $t3
34$:
	lw      $t4, 0x001C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	slti    $at, $t5, 0x0020
	bnez    $at, 4$
	sw      $t5, 0x001C($sp)
	b       44$
	move    $v0, $0
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CBF4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 15$
	nop
	la.u    $a0, str_face_stdio_801B838C
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B838C
15$:
	lw      $v0, 0x001C($sp)
	b       20$
	nop
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl get_timernum
get_timernum:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	slti    $at, $t6, 0x0020
	bnez    $at, 13$
	nop
	la.u    $a0, str_face_stdio_801B83A4
	lw      $a1, 0x0018($sp)
	la.l    $a0, str_face_stdio_801B83A4
	jal     face_stdio_8018D298
	li      $a2, 0x0020
13$:
	lw      $t7, 0x0018($sp)
	la.u    $t9, _face_stdio_bss-0x870+0x980
	sll     $t8, $t7, 3
	addu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	la.l    $t9, _face_stdio_bss-0x870+0x980
	b       23$
	addu    $v0, $t8, $t9
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018CCC0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       51$
	nop
10$:
	jal     face_gfx_8019B080
	nop
	lw      $t7, 0x0018($sp)
	nop
	sw      $v0, 0x0004($t7)
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x0004($t8)
	lw      $t0, 0x0000($t8)
	lw      $t2, 0x0008($t8)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0008($t8)
	lw      $t4, 0x0018($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	bgez    $t5, 32$
	nop
	lw      $t6, 0x0018($sp)
	nop
	sw      $0, 0x0008($t6)
32$:
	jal     face_gfx_8019B0B0
	nop
	lw      $t7, 0x0018($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	nop
	div.s   $f8, $f6, $f0
	swc1    $f8, 0x0010($t7)
	lw      $t0, 0x0018($sp)
	nop
	lw      $t2, 0x0004($t0)
	nop
	sw      $t2, 0x0000($t0)
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018CD9C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
3$:
	lw      $a0, 0x001C($sp)
	jal     get_timernum
	nop
	sw      $v0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0018($t6)
	nop
	beqz    $t7, 16$
	nop
	lw      $a0, 0x0018($sp)
	jal     face_stdio_8018CCC0
	nop
16$:
	lw      $t8, 0x001C($sp)
	nop
	addiu   $t9, $t8, 0x0001
	slti    $at, $t9, 0x0020
	bnez    $at, 3$
	sw      $t9, 0x001C($sp)
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018CE0C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 9$
	nop
	b       33$
	nop
9$:
	sw      $0, 0x001C($sp)
10$:
	lw      $a0, 0x001C($sp)
	jal     get_timernum
	nop
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x0018($t7)
	nop
	beqz    $t8, 25$
	nop
	jal     face_gfx_8019B080
	nop
	lw      $t9, 0x0018($sp)
	nop
	sw      $v0, 0x0000($t9)
25$:
	lw      $t0, 0x001C($sp)
	nop
	addiu   $t1, $t0, 0x0001
	slti    $at, $t1, 0x0020
	bnez    $at, 10$
	sw      $t1, 0x001C($sp)
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl start_timer
start_timer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       48$
	nop
10$:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 30$
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CA88
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, 30$
	nop
	la.u    $a0, str_face_stdio_801B83DC
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B83DC
30$:
	lw      $t9, 0x001C($sp)
	nop
	lwc1    $f4, 0x0010($t9)
	nop
	swc1    $f4, 0x0014($t9)
	jal     face_gfx_8019B080
	nop
	lw      $t0, 0x001C($sp)
	nop
	sw      $v0, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	nop
	sw      $0, 0x0008($t1)
	lw      $t3, 0x001C($sp)
	li      $t2, 0x0001
	sw      $t2, 0x0020($t3)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl restart_timer
restart_timer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       43$
	nop
10$:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CB34
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 30$
	nop
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CA88
	nop
	sw      $v0, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	bnez    $t8, 30$
	nop
	la.u    $a0, str_face_stdio_801B8408
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8408
30$:
	jal     face_gfx_8019B080
	nop
	lw      $t9, 0x001C($sp)
	nop
	sw      $v0, 0x0000($t9)
	lw      $t0, 0x001C($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0020($t0)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D02C
face_stdio_8018D02C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       19$
	nop
10$:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018CCC0
	nop
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl stop_timer
stop_timer:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(_face_stdio_bss-0x870+0x978)
	lw      $t6, %lo(_face_stdio_bss-0x870+0x978)($t6)
	nop
	bnez    $t6, 10$
	nop
	b       50$
	nop
10$:
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	jal     face_gfx_8019B080
	nop
	lw      $t7, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t7)
	lw      $t8, 0x001C($sp)
	nop
	lw      $t9, 0x0004($t8)
	lw      $t0, 0x0000($t8)
	lw      $t2, 0x0008($t8)
	subu    $t1, $t9, $t0
	addu    $t3, $t2, $t1
	sw      $t3, 0x0008($t8)
	lw      $t4, 0x001C($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	bgez    $t5, 36$
	nop
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x0008($t6)
36$:
	jal     face_gfx_8019B0B0
	nop
	lw      $t7, 0x001C($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	mtc1    $t9, $f4
	nop
	cvt.s.w $f6, $f4
	nop
	div.s   $f8, $f6, $f0
	swc1    $f8, 0x0010($t7)
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D160
face_stdio_8018D160:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	lwc1    $f0, 0x0010($t6)
	b       14$
	nop
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_stdio_8018D1A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_stdio_8018CBF4
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	lw      $t7, 0x0008($t6)
	nop
	mtc1    $t7, $f4
	b       16$
	cvt.s.w $f0, $f4
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D1F8
face_stdio_8018D1F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_stdio_8018D298
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018D228:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_stdio_801A8410)
	lw      $t6, %lo(face_stdio_801A8410)($t6)
	sw      $0, 0x001C($sp)
	blez    $t6, 22$
	nop
7$:
	lw      $t7, 0x001C($sp)
	lui     $a1, %hi(_face_stdio_bss-0x870+0x878)
	sll     $t8, $t7, 2
	addu    $a1, $a1, $t8
	lw      $a1, %lo(_face_stdio_bss-0x870+0x878)($a1)
	la.u    $a0, str_face_stdio_801B8434
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8434
	lw      $t9, 0x001C($sp)
	lui     $t1, %hi(face_stdio_801A8410)
	lw      $t1, %lo(face_stdio_801A8410)($t1)
	addiu   $t0, $t9, 0x0001
	slt     $at, $t0, $t1
	bnez    $at, 7$
	sw      $t0, 0x001C($sp)
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D298
face_stdio_8018D298:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	addiu   $t6, $sp, 0x0038
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	nop
	lb      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	move    $s0, $t9
	sw      $t0, 0x0038($sp)
	beqz    $s0, 161$
	sb      $t9, 0x0037($sp)
.L8018D2E4:
	lb      $s0, 0x0037($sp)
	li      $at, 0x000A
	beq     $s0, $at, 144$
	nop
	li      $at, 0x0025
	beq     $s0, $at, 31$
	nop
	li      $at, 0x005C
	beq     $s0, $at, 139$
	nop
	b       149$
	nop
31$:
	lw      $t1, 0x0038($sp)
	nop
	lb      $t2, 0x0000($t1)
	addiu   $t3, $t1, 0x0001
	move    $s1, $t2
	addiu   $t4, $s1, -0x0063
	sltiu   $at, $t4, 0x0016
	sw      $t3, 0x0038($sp)
	beqz    $at, L8018D4AC
	sb      $t2, 0x0037($sp)
	sll     $t4, $t4, 2
	lui     $at, %hi(face_stdio_801B854C)
	addu    $at, $at, $t4
	lw      $t4, %lo(face_stdio_801B854C)($at)
	nop
	jr      $t4
	nop
.globl L8018D358
L8018D358:
	lw      $t5, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t6, $t5, 0x0003
	and     $t7, $t6, $at
	addiu   $t9, $t7, 0x0004
	sw      $t9, 0x002C($sp)
	move    $s0, $t9
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8440
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8440
	b       137$
	nop
.globl L8018D38C
L8018D38C:
	lw      $t8, 0x002C($sp)
	nop
	andi    $t0, $t8, 0x0001
	beqz    $t0, 70$
	nop
	addiu   $t2, $t8, 0x0007
	sw      $t2, 0x002C($sp)
	b       87$
	addiu   $s0, $t2, -0x0016
70$:
	lw      $t1, 0x002C($sp)
	nop
	andi    $t3, $t1, 0x0002
	beqz    $t3, 79$
	nop
	addiu   $t4, $t1, 0x000A
	sw      $t4, 0x002C($sp)
	b       86$
	addiu   $s1, $t4, -0x0028
79$:
	lw      $t5, 0x002C($sp)
	li      $at, -0x0008
	addiu   $t6, $t5, 0x0007
	and     $t7, $t6, $at
	addiu   $t9, $t7, 0x0008
	sw      $t9, 0x002C($sp)
	move    $s1, $t9
86$:
	move    $s0, $s1
87$:
	la.u    $a0, str_face_stdio_801B8444
	lw      $a2, -0x0008($s0)
	lw      $a3, -0x0004($s0)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8444
	b       137$
	nop
.globl L8018D410
L8018D410:
	lw      $t0, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t8, $t0, 0x0003
	and     $t2, $t8, $at
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x002C($sp)
	move    $s0, $t3
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8448
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8448
	b       137$
	nop
.globl L8018D444
L8018D444:
	lw      $t1, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t4, $t1, 0x0003
	and     $t5, $t4, $at
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x002C($sp)
	addiu   $s0, $t6, -0x0003
	lb      $a1, -0x0001($s0)
	la.u    $a0, str_face_stdio_801B844C
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B844C
	b       137$
	nop
.globl L8018D478
L8018D478:
	lw      $t7, 0x002C($sp)
	li      $at, -0x0004
	addiu   $t9, $t7, 0x0003
	and     $t0, $t9, $at
	addiu   $t8, $t0, 0x0004
	sw      $t8, 0x002C($sp)
	move    $s0, $t8
	lw      $a1, -0x0004($s0)
	la.u    $a0, str_face_stdio_801B8450
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8450
	b       137$
	nop
.globl L8018D4AC
L8018D4AC:
	la.u    $a0, str_face_stdio_801B8454
	lb      $a1, 0x0037($sp)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8454
137$:
	b       153$
	nop
139$:
	la.u    $a0, str_face_stdio_801B8458
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8458
	b       153$
	nop
144$:
	la.u    $a0, str_face_stdio_801B845C
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B845C
	b       153$
	nop
149$:
	la.u    $a0, str_face_stdio_801B8460
	lb      $a1, 0x0037($sp)
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8460
153$:
	lw      $t2, 0x0038($sp)
	nop
	lb      $t3, 0x0000($t2)
	addiu   $t1, $t2, 0x0001
	move    $s0, $t3
	sw      $t1, 0x0038($sp)
	bnez    $s0, .L8018D2E4
	sb      $t3, 0x0037($sp)
161$:
	la.u    $a0, str_face_stdio_801B8464
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8464
	jal     face_stdio_8018D228
	nop
	la.u    $a0, str_face_stdio_801B8468
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8468
	jal     gd_exit
	li      $a0, -0x0001
	b       173$
	nop
173$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl imin
imin:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(face_stdio_801A8410)
	lw      $t7, %lo(face_stdio_801A8410)($t7)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_stdio_bss-0x870+0x878)
	lui     $t9, %hi(face_stdio_801A8410)
	sll     $t8, $t7, 2
	lw      $t9, %lo(face_stdio_801A8410)($t9)
	addu    $at, $at, $t8
	sw      $t6, %lo(_face_stdio_bss-0x870+0x878)($at)
	lui     $at, %hi(face_stdio_801A8410)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(face_stdio_801A8410)($at)
	lui     $t1, %hi(face_stdio_801A8410)
	lw      $t1, %lo(face_stdio_801A8410)($t1)
	lui     $at, %hi(_face_stdio_bss-0x870+0x878)
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	sw      $0, %lo(_face_stdio_bss-0x870+0x878)($at)
	lui     $t3, %hi(face_stdio_801A8410)
	lw      $t3, %lo(face_stdio_801A8410)($t3)
	nop
	slti    $at, $t3, 0x0040
	bnez    $at, 30$
	nop
	la.u    $a0, str_face_stdio_801B846C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B846C
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl imout
imout:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_stdio_801A8410)
	lw      $t6, %lo(face_stdio_801A8410)($t6)
	lui     $at, %hi(face_stdio_801A8410)
	addiu   $t7, $t6, -0x0001
	bgez    $t7, 38$
	sw      $t7, %lo(face_stdio_801A8410)($at)
	sw      $0, 0x001C($sp)
9$:
	lw      $t8, 0x001C($sp)
	lui     $t0, %hi(_face_stdio_bss-0x870+0x878)
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_face_stdio_bss-0x870+0x878)($t0)
	nop
	beqz    $t0, 27$
	nop
	lw      $t1, 0x001C($sp)
	lui     $a1, %hi(_face_stdio_bss-0x870+0x878)
	sll     $t2, $t1, 2
	addu    $a1, $a1, $t2
	lw      $a1, %lo(_face_stdio_bss-0x870+0x878)($a1)
	la.u    $a0, str_face_stdio_801B8488
	jal     gd_printf
	la.l    $a0, str_face_stdio_801B8488
	b       29$
	nop
27$:
	b       35$
	nop
29$:
	lw      $t3, 0x001C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0040
	bnez    $at, 9$
	sw      $t4, 0x001C($sp)
35$:
	la.u    $a0, str_face_stdio_801B8490
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B8490
38$:
	b       40$
	nop
40$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_stdio_8018D6A0
face_stdio_8018D6A0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
4$:
	lui     $t6, %hi(face_stdio_801A8434)
	lw      $t6, %lo(face_stdio_801A8434)($t6)
	li      $at, 0x80000000
	and     $t7, $t6, $at
	beqz    $t7, 17$
	nop
	lui     $t8, %hi(face_stdio_801A8434)
	lw      $t8, %lo(face_stdio_801A8434)($t8)
	lui     $at, %hi(face_stdio_801A8434)
	sll     $t9, $t8, 1
	ori     $t0, $t9, 0x0001
	b       22$
	sw      $t0, %lo(face_stdio_801A8434)($at)
17$:
	lui     $t1, %hi(face_stdio_801A8434)
	lw      $t1, %lo(face_stdio_801A8434)($t1)
	lui     $at, %hi(face_stdio_801A8434)
	sll     $t2, $t1, 1
	sw      $t2, %lo(face_stdio_801A8434)($at)
22$:
	lw      $t3, 0x0028($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sltiu   $at, $t4, 0x0004
	bnez    $at, 4$
	sw      $t4, 0x0028($sp)
	lui     $t5, %hi(face_stdio_801A8434)
	lw      $t5, %lo(face_stdio_801A8434)($t5)
	lui     $at, %hi(face_stdio_801A8434)
	addiu   $t6, $t5, 0x0004
	sw      $t6, %lo(face_stdio_801A8434)($at)
	jal     face_gfx_8019B080
	nop
	lui     $t7, %hi(face_stdio_801A8434)
	lw      $t7, %lo(face_stdio_801A8434)($t7)
	move    $s0, $v0
	xor     $t8, $t7, $s0
	andi    $t9, $t8, 0x0001
	lui     $at, %hi(face_stdio_801A8434)
	beqz    $t9, 54$
	sw      $t8, %lo(face_stdio_801A8434)($at)
	lui     $t0, %hi(face_stdio_801A8434)
	lw      $t0, %lo(face_stdio_801A8434)($t0)
	nop
	sw      $t0, 0x002C($sp)
	lui     $t1, %hi(face_stdio_801A8438)
	lw      $t1, %lo(face_stdio_801A8438)($t1)
	lui     $at, %hi(face_stdio_801A8434)
	sw      $t1, %lo(face_stdio_801A8434)($at)
	lw      $t2, 0x002C($sp)
	lui     $at, %hi(face_stdio_801A8438)
	sw      $t2, %lo(face_stdio_801A8438)($at)
54$:
	lui     $t3, %hi(face_stdio_801A8434)
	lw      $t3, %lo(face_stdio_801A8434)($t3)
	nop
	andi    $t4, $t3, 0xFFFF
	mtc1    $t4, $f4
	bgez    $t4, 66$
	cvt.d.w $f6, $f4
	li      $at, 0x41F00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	nop
	add.d   $f6, $f6, $f8
66$:
	lui     $at, %hi(face_stdio_801B85A8+4)
	lwc1    $f11, %lo(face_stdio_801B85A8+0)($at)
	lwc1    $f10, %lo(face_stdio_801B85A8+4)($at)
	nop
	div.d   $f16, $f6, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f0, 0x0024($sp)
	b       78$
	nop
	b       78$
	nop
78$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl gd_atoi
gd_atoi:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	nop
	sw      $t6, 0x0028($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
8$:
	lw      $t7, 0x0030($sp)
	nop
	lb      $t8, 0x0000($t7)
	addiu   $t9, $t7, 0x0001
	sw      $t9, 0x0030($sp)
	sb      $t8, 0x002F($sp)
	lb      $t0, 0x002F($sp)
	nop
	slti    $at, $t0, 0x0030
	bnez    $at, 22$
	nop
	slti    $at, $t0, 0x003A
	bnez    $at, 30$
	nop
22$:
	lb      $t1, 0x002F($sp)
	li      $at, 0x002D
	beq     $t1, $at, 30$
	nop
	la.u    $a0, str_face_stdio_801B84B8
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84B8
30$:
	lb      $t2, 0x002F($sp)
	li      $at, 0x002D
	bne     $t2, $at, 37$
	nop
	li      $t3, 0x0001
	b       69$
	sw      $t3, 0x001C($sp)
37$:
	lb      $t4, 0x002F($sp)
	nop
	addiu   $t5, $t4, -0x0030
	sw      $t5, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	andi    $t7, $t8, 0x00FF
	addu    $t9, $t6, $t7
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0030($sp)
	nop
	lb      $t1, 0x0000($t0)
	nop
	beqz    $t1, 61$
	nop
	li      $at, 0x002E
	beq     $t1, $at, 61$
	nop
	slti    $at, $t1, 0x0030
	bnez    $at, 61$
	nop
	slti    $at, $t1, 0x003A
	bnez    $at, 63$
	nop
61$:
	b       71$
	nop
63$:
	lw      $t2, 0x0020($sp)
	nop
	sll     $t3, $t2, 2
	addu    $t3, $t3, $t2
	sll     $t3, $t3, 1
	sw      $t3, 0x0020($sp)
69$:
	b       8$
	nop
71$:
	lw      $t4, 0x001C($sp)
	nop
	beqz    $t4, 79$
	nop
	lw      $t5, 0x0020($sp)
	nop
	subu    $t8, $0, $t5
	sw      $t8, 0x0020($sp)
79$:
	lw      $v0, 0x0020($sp)
	b       84$
	nop
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_stdio_8018D948
face_stdio_8018D948:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     gd_atoi
	nop
	mtc1    $v0, $f4
	b       12$
	cvt.d.w $f0, $f4
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_stdio_8018D988:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x001C
	sw      $t6, 0x0004($sp)
3$:
	lw      $t7, 0x0004($sp)
	lui     $t0, %hi(face_stdio_801A843C)
	srav    $t8, $a1, $t7
	andi    $t9, $t8, 0x000F
	addu    $t0, $t0, $t9
	lb      $t0, %lo(face_stdio_801A843C)($t0)
	addiu   $a0, $a0, 0x0001
	sb      $t0, -0x0001($a0)
	lw      $t1, 0x0004($sp)
	nop
	addiu   $t2, $t1, -0x0004
	slti    $at, $t2, -0x0003
	beqz    $at, 3$
	sw      $t2, 0x0004($sp)
	sb      $0, 0x0000($a0)
	b       22$
	move    $v0, $a0
	b       22$
	nop
22$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018D9E8:
	addiu   $sp, $sp, -0x0008
	bnez    $a1, 9$
	nop
	li      $t6, 0x0030
	sb      $t6, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	sb      $0, 0x0000($a0)
	b       61$
	move    $v0, $a0
9$:
	bgez    $a1, 15$
	nop
	subu    $a1, $0, $a1
	li      $t7, 0x002D
	sb      $t7, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
15$:
	blez    $a2, 56$
	nop
17$:
	slt     $at, $a1, $a2
	bnez    $at, 41$
	nop
	li      $t8, 0x0001
	lui     $at, %hi(face_stdio_801A8450)
	sw      $t8, %lo(face_stdio_801A8450)($at)
	sw      $0, 0x0004($sp)
24$:
	subu    $a1, $a1, $a2
	bgez    $a1, 30$
	nop
	addu    $a1, $a1, $a2
	b       36$
	nop
30$:
	lw      $t9, 0x0004($sp)
	nop
	addiu   $t0, $t9, 0x0001
	slti    $at, $t0, 0x0009
	bnez    $at, 24$
	sw      $t0, 0x0004($sp)
36$:
	lw      $t1, 0x0004($sp)
	addiu   $a0, $a0, 0x0001
	addiu   $t2, $t1, 0x0030
	b       49$
	sb      $t2, -0x0001($a0)
41$:
	lui     $t3, %hi(face_stdio_801A8450)
	lw      $t3, %lo(face_stdio_801A8450)($t3)
	nop
	beqz    $t3, 49$
	nop
	li      $t4, 0x0030
	sb      $t4, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
49$:
	li      $at, 0x000A
	div     $0, $a2, $at
	mflo    $t5
	move    $a2, $t5
	nop
	bgtz    $a2, 17$
	nop
56$:
	sb      $0, 0x0000($a0)
	b       61$
	move    $v0, $a0
	b       61$
	nop
61$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018DAE4:
	addiu   $sp, $sp, -0x0008
	li      $t6, 0x0001
	slti    $at, $a1, 0x0002
	bnez    $at, 15$
	sw      $t6, 0x0004($sp)
5$:
	sll     $t7, $a0, 2
	addu    $t7, $t7, $a0
	sll     $t7, $t7, 1
	move    $a0, $t7
	lw      $t8, 0x0004($sp)
	nop
	addiu   $t9, $t8, 0x0001
	slt     $at, $t9, $a1
	bnez    $at, 5$
	sw      $t9, 0x0004($sp)
15$:
	b       19$
	move    $v0, $a0
	b       19$
	nop
19$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DB38
face_stdio_8018DB38:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0006
	sw      $t6, 0x0030($sp)
	li      $t7, 0x0006
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	nop
	lb      $t9, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	move    $s0, $t9
	sw      $t0, 0x0050($sp)
	beqz    $s0, 159$
	sb      $t9, 0x002B($sp)
18$:
	lb      $t1, 0x002B($sp)
	li      $at, 0x0064
	bne     $t1, $at, 31$
	nop
	lui     $at, %hi(face_stdio_801A8450)
	sw      $0, %lo(face_stdio_801A8450)($at)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0048($sp)
	li.u    $a2, 0x3B9ACA00
	jal     face_stdio_8018D9E8
	li.l    $a2, 0x3B9ACA00
	b       151$
	sw      $v0, 0x0040($sp)
31$:
	lb      $t2, 0x002B($sp)
	li      $at, 0x0078
	bne     $t2, $at, 44$
	nop
	li      $t3, 0x0001
	lui     $at, %hi(face_stdio_801A8450)
	sw      $t3, %lo(face_stdio_801A8450)($at)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0048($sp)
	jal     face_stdio_8018D988
	nop
	b       151$
	sw      $v0, 0x0040($sp)
44$:
	lb      $t4, 0x002B($sp)
	li      $at, 0x0066
	bne     $t4, $at, 113$
	nop
	cfc1    $t5, $31
	lwc1    $f4, 0x0048($sp)
	ori     $at, $t5, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t6, $f6
	ctc1    $t5, $31
	sw      $t6, 0x0038($sp)
	nop
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018DAE4
	li      $a0, 0x000A
	lw      $t7, 0x0038($sp)
	mtc1    $v0, $f4
	mtc1    $t7, $f10
	lwc1    $f8, 0x0048($sp)
	cvt.s.w $f16, $f10
	cvt.s.w $f6, $f4
	sub.s   $f18, $f8, $f16
	mul.s   $f10, $f6, $f18
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f10
	mfc1    $t8, $f8
	ctc1    $t9, $31
	sw      $t8, 0x003C($sp)
	nop
	lui     $at, %hi(face_stdio_801A8450)
	sw      $0, %lo(face_stdio_801A8450)($at)
	lw      $a1, 0x0034($sp)
	jal     face_stdio_8018DAE4
	li      $a0, 0x000A
	move    $s0, $v0
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D9E8
	move    $a2, $s0
	sw      $v0, 0x0040($sp)
	lw      $t1, 0x0040($sp)
	li      $t0, 0x002E
	sb      $t0, 0x0000($t1)
	lw      $t2, 0x0040($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0040($sp)
	li      $t4, 0x0001
	lui     $at, %hi(face_stdio_801A8450)
	sw      $t4, %lo(face_stdio_801A8450)($at)
	lw      $a1, 0x0030($sp)
	li      $a0, 0x000A
	jal     face_stdio_8018DAE4
	addiu   $a1, $a1, -0x0001
	move    $s0, $v0
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x003C($sp)
	jal     face_stdio_8018D9E8
	move    $a2, $s0
	b       151$
	sw      $v0, 0x0040($sp)
113$:
	lb      $t5, 0x002B($sp)
	nop
	slti    $at, $t5, 0x0030
	bnez    $at, 143$
	nop
	slti    $at, $t5, 0x003A
	beqz    $at, 143$
	nop
	lb      $t6, 0x002B($sp)
	nop
	addiu   $t7, $t6, -0x0030
	sb      $t7, 0x002B($sp)
	lb      $t9, 0x002B($sp)
	nop
	sw      $t9, 0x0034($sp)
	lw      $t8, 0x0050($sp)
	nop
	lb      $s0, 0x0000($t8)
	addiu   $t0, $t8, 0x0001
	beqz    $s0, 141$
	sw      $t0, 0x0050($sp)
	lw      $t1, 0x0050($sp)
	nop
	lb      $t2, 0x0000($t1)
	addiu   $t4, $t1, 0x0001
	addiu   $t3, $t2, -0x0030
	sw      $t3, 0x0030($sp)
	sw      $t4, 0x0050($sp)
141$:
	b       151$
	nop
143$:
	lw      $a0, 0x0040($sp)
	la.u    $a1, str_face_stdio_801B84D4
	jal     face_stdio_8018DDD8
	la.l    $a1, str_face_stdio_801B84D4
	lw      $t5, 0x0040($sp)
	nop
	addiu   $t6, $t5, 0x000A
	sw      $t6, 0x0040($sp)
151$:
	lw      $t7, 0x0050($sp)
	nop
	lb      $t9, 0x0000($t7)
	addiu   $t8, $t7, 0x0001
	move    $s0, $t9
	sw      $t8, 0x0050($sp)
	bnez    $s0, 18$
	sb      $t9, 0x002B($sp)
159$:
	lw      $v0, 0x0040($sp)
	b       164$
	nop
	b       164$
	nop
164$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

.globl face_stdio_8018DDD8
face_stdio_8018DDD8:
	addiu   $sp, $sp, -0x0008
	lb      $a2, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a3, $a2
	addiu   $a1, $a1, 0x0001
	beqz    $a3, 13$
	sb      $a2, -0x0001($a0)
7$:
	lb      $a2, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a3, $a2
	addiu   $a1, $a1, 0x0001
	bnez    $a3, 7$
	sb      $a2, -0x0001($a0)
13$:
	b       15$
	nop
15$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_stdio_8018DE1C:
	addiu   $sp, $sp, -0x0008
	lb      $t6, 0x0000($a0)
	nop
	sb      $t6, 0x0007($sp)
	lb      $t7, 0x0007($sp)
	nop
	beqz    $t7, 28$
	nop
8$:
	lb      $t8, 0x0007($sp)
	nop
	slti    $at, $t8, 0x0061
	bnez    $at, 20$
	nop
	slti    $at, $t8, 0x007B
	beqz    $at, 20$
	nop
	lb      $t9, 0x0007($sp)
	nop
	andi    $t0, $t9, 0x00DF
	sb      $t0, 0x0000($a0)
20$:
	addiu   $a0, $a0, 0x0001
	lb      $t1, 0x0000($a0)
	nop
	sb      $t1, 0x0007($sp)
	lb      $t2, 0x0007($sp)
	nop
	bnez    $t2, 8$
	nop
28$:
	b       30$
	nop
30$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl gd_strdup
gd_strdup:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_stdio_8018DF18
	nop
	move    $s0, $v0
	jal     gd_malloc
	addiu   $a0, $s0, 0x0001
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, 18$
	nop
	la.u    $a0, str_face_stdio_801B84E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84E0
18$:
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x0028($sp)
	jal     face_stdio_8018DDD8
	nop
	lw      $v0, 0x0024($sp)
	b       27$
	nop
	b       27$
	nop
27$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_stdio_8018DF18
face_stdio_8018DF18:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lb      $a1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	beqz    $a1, 14$
	nop
6$:
	lw      $t6, 0x0004($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0004($sp)
	lb      $a1, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	bnez    $a1, 6$
	nop
14$:
	lw      $v0, 0x0004($sp)
	b       19$
	nop
	b       19$
	nop
19$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DF6C
face_stdio_8018DF6C:
	addiu   $sp, $sp, -0x0008
	lb      $a2, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	beqz    $a2, 9$
	nop
5$:
	lb      $a2, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	bnez    $a2, 5$
	nop
9$:
	lb      $t6, 0x0000($a1)
	nop
	beqz    $t6, 26$
	nop
	addiu   $a0, $a0, -0x0001
	lb      $a3, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a2, $a3
	addiu   $a1, $a1, 0x0001
	beqz    $a2, 26$
	sb      $a3, -0x0001($a0)
20$:
	lb      $a3, 0x0000($a1)
	addiu   $a0, $a0, 0x0001
	move    $a2, $a3
	addiu   $a1, $a1, 0x0001
	bnez    $a2, 20$
	sb      $a3, -0x0001($a0)
26$:
	addiu   $a0, $a0, -0x0001
	b       31$
	move    $v0, $a0
	b       31$
	nop
31$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018DFF0
face_stdio_8018DFF0:
	addiu   $sp, $sp, -0x0008
	lb      $t6, 0x0000($a0)
	nop
	beqz    $t6, 26$
	nop
	lb      $t7, 0x0000($a1)
	nop
	beqz    $t7, 26$
	nop
9$:
	lb      $t8, 0x0000($a1)
	lb      $t9, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	xor     $a2, $t8, $t9
	sltu    $a2, $0, $a2
	beqz    $a2, 18$
	addiu   $a1, $a1, 0x0001
	b       40$
	li      $v0, 0x0001
18$:
	lb      $t0, 0x0000($a0)
	nop
	beqz    $t0, 26$
	nop
	lb      $t1, 0x0000($a1)
	nop
	bnez    $t1, 9$
	nop
26$:
	lb      $v0, 0x0000($a0)
	nop
	sltu    $t2, $0, $v0
	move    $v0, $t2
	bnez    $v0, 36$
	nop
	lb      $v0, 0x0000($a1)
	nop
	sltu    $t3, $0, $v0
	move    $v0, $t3
36$:
	b       40$
	nop
	b       40$
	nop
40$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018E098
face_stdio_8018E098:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x0004($sp)
	lb      $t6, 0x0000($a0)
	nop
	beqz    $t6, 27$
	nop
	lb      $t7, 0x0000($a1)
	nop
	beqz    $t7, 27$
	nop
10$:
	lb      $t8, 0x0000($a1)
	lb      $t9, 0x0000($a0)
	addiu   $a0, $a0, 0x0001
	xor     $a2, $t8, $t9
	sltu    $a2, $0, $a2
	beqz    $a2, 19$
	addiu   $a1, $a1, 0x0001
	lw      $a1, 0x0004($sp)
	nop
19$:
	lb      $t0, 0x0000($a0)
	nop
	beqz    $t0, 27$
	nop
	lb      $t1, 0x0000($a1)
	nop
	bnez    $t1, 10$
	nop
27$:
	lb      $v0, 0x0000($a1)
	nop
	sltiu   $t2, $v0, 0x0001
	b       34$
	move    $v0, $t2
	b       34$
	nop
34$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_stdio_8018E128
face_stdio_8018E128:
	lw      $v0, 0x000C($a0)
	nop
	andi    $t6, $v0, 0x0004
	jr      $ra
	move    $v0, $t6
	jr      $ra
	nop
	jr      $ra
	nop

face_stdio_8018E14C:
	lw      $t6, 0x000C($a0)
	nop
	ori     $t7, $t6, 0x0004
	sw      $t7, 0x000C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl gd_fopen
gd_fopen:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0078($sp)
	sw      $a1, 0x007C($sp)
	sw      $0, 0x0018($sp)
5$:
	addiu   $t6, $sp, 0x0024
	sw      $t6, 0x0020($sp)
	sw      $0, 0x006C($sp)
8$:
	lui     $t8, %hi(_face_stdio_bss-0x870+0x870)
	lw      $t8, %lo(_face_stdio_bss-0x870+0x870)($t8)
	lw      $t7, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	addu    $t9, $t7, $t8
	lbu     $t0, 0x0000($t9)
	nop
	sb      $t0, 0x0000($t1)
	lw      $t4, 0x0018($sp)
	lw      $t2, 0x0020($sp)
	addiu   $t5, $t4, 0x0001
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0020($sp)
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x006C($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sltiu   $at, $t7, 0x0044
	bnez    $at, 8$
	sw      $t7, 0x006C($sp)
	jal     face_gfx_801A5AEC
	addiu   $a0, $sp, 0x0024
	lui     $t8, %hi(_face_stdio_bss-0x870+0x870)
	lw      $t8, %lo(_face_stdio_bss-0x870+0x870)($t8)
	lw      $t9, 0x0018($sp)
	nop
	addu    $t0, $t8, $t9
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lw      $t2, 0x0024($sp)
	nop
	addu    $t3, $t1, $t2
	sw      $t3, 0x0018($sp)
	addiu   $t4, $sp, 0x0024
	addiu   $t5, $t4, 0x0004
	sw      $t5, 0x0070($sp)
	lw      $t6, 0x0024($sp)
	nop
	bnez    $t6, 50$
	nop
	b       60$
	nop
50$:
	lw      $a0, 0x0078($sp)
	lw      $a1, 0x0070($sp)
	jal     face_stdio_8018DFF0
	nop
	bnez    $v0, 58$
	nop
	b       60$
	nop
58$:
	b       5$
	nop
60$:
	lw      $t7, 0x0024($sp)
	nop
	bnez    $t7, 70$
	nop
	la.u    $a0, str_face_stdio_801B84FC
	lw      $a1, 0x0078($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B84FC
	b       128$
	move    $v0, $0
70$:
	jal     gd_malloc
	li      $a0, 0x0054
	sw      $v0, 0x0074($sp)
	lw      $t8, 0x0074($sp)
	nop
	bnez    $t8, 83$
	nop
	la.u    $a0, str_face_stdio_801B851C
	lw      $a1, 0x0078($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_stdio_801B851C
	b       128$
	move    $v0, $0
83$:
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0074($sp)
	nop
	sw      $t9, 0x0008($t0)
	lw      $t1, 0x0024($sp)
	lw      $t2, 0x0074($sp)
	nop
	sw      $t1, 0x0050($t2)
	lw      $t3, 0x0074($sp)
	nop
	sw      $0, 0x000C($t3)
	lw      $t4, 0x0074($sp)
	nop
	lw      $t5, 0x000C($t4)
	nop
	sw      $t5, 0x0004($t4)
	lw      $a0, 0x007C($sp)
	la.u    $a1, str_face_stdio_801B8544
	jal     face_stdio_8018E098
	la.l    $a1, str_face_stdio_801B8544
	beqz    $v0, 111$
	nop
	lw      $t6, 0x0074($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	ori     $t8, $t7, 0x0001
	sw      $t8, 0x000C($t6)
111$:
	lw      $a0, 0x007C($sp)
	la.u    $a1, str_face_stdio_801B8548
	jal     face_stdio_8018E098
	la.l    $a1, str_face_stdio_801B8548
	beqz    $v0, 123$
	nop
	lw      $t9, 0x0074($sp)
	nop
	lw      $t0, 0x000C($t9)
	nop
	ori     $t1, $t0, 0x0002
	sw      $t1, 0x000C($t9)
123$:
	lw      $v0, 0x0074($sp)
	b       128$
	nop
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl face_stdio_8018E37C
face_stdio_8018E37C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0034($sp)
	nop
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	lw      $t9, 0x002C($sp)
	lw      $t8, 0x0004($t7)
	lw      $t1, 0x0050($t7)
	addu    $t0, $t8, $t9
	sltu    $at, $t1, $t0
	beqz    $at, 25$
	nop
	lw      $t2, 0x003C($sp)
	nop
	lw      $t3, 0x0050($t2)
	lw      $t4, 0x0004($t2)
	nop
	subu    $t5, $t3, $t4
	sw      $t5, 0x002C($sp)
25$:
	lw      $t6, 0x002C($sp)
	nop
	bnez    $t6, 34$
	nop
	lw      $a0, 0x003C($sp)
	jal     face_stdio_8018E14C
	nop
	b       71$
	li      $v0, -0x0001
34$:
	lw      $t8, 0x002C($sp)
	nop
	sw      $t8, 0x0028($sp)
	lw      $t9, 0x0028($sp)
	nop
	move    $s0, $t9
	addiu   $t7, $t9, -0x0001
	beqz    $s0, 66$
	sw      $t7, 0x0028($sp)
43$:
	lw      $t0, 0x003C($sp)
	lw      $t5, 0x0030($sp)
	lw      $t1, 0x0004($t0)
	lw      $t2, 0x0008($t0)
	nop
	addu    $t3, $t1, $t2
	lb      $t4, 0x0000($t3)
	nop
	sb      $t4, 0x0000($t5)
	lw      $t6, 0x0030($sp)
	lw      $t9, 0x003C($sp)
	addiu   $t8, $t6, 0x0001
	sw      $t8, 0x0030($sp)
	lw      $t7, 0x0004($t9)
	nop
	addiu   $t0, $t7, 0x0001
	sw      $t0, 0x0004($t9)
	lw      $t1, 0x0028($sp)
	nop
	move    $s0, $t1
	addiu   $t2, $t1, -0x0001
	bnez    $s0, 43$
	sw      $t2, 0x0028($sp)
66$:
	lw      $v0, 0x002C($sp)
	b       71$
	nop
	b       71$
	nop
71$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_stdio_8018E4A8
face_stdio_8018E4A8:
	sw      $a0, 0x0000($sp)
	b       5$
	nop
	b       5$
	nop
5$:
	jr      $ra
	nop

.globl face_stdio_8018E4C4
face_stdio_8018E4C4:
	lw      $v0, 0x0050($a0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_stdio_8018E4E0:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	xori    $v0, $a0, 0x000D
	sltiu   $v0, $v0, 0x0001
	bnez    $v0, 8$
	nop
	xori    $v0, $a0, 0x000A
	sltiu   $v0, $v0, 0x0001
8$:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_stdio_8018E518
face_stdio_8018E518:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0020($sp)
6$:
	lw      $a3, 0x0030($sp)
	addiu   $a0, $sp, 0x0027
	li      $a1, 0x0001
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	li      $at, -0x0001
	bne     $v0, $at, 16$
	nop
	b       21$
	nop
16$:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	bnez    $v0, 6$
	nop
21$:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	bnez    $v0, 64$
	nop
26$:
	lb      $t6, 0x0027($sp)
	li      $at, -0x0001
	bne     $t6, $at, 32$
	nop
	b       64$
	nop
32$:
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x002C($sp)
	nop
	sltu    $at, $t8, $t7
	beqz    $at, 40$
	nop
	b       64$
	nop
40$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	lb      $t9, 0x0027($sp)
	addu    $t2, $t0, $t1
	sb      $t9, 0x0000($t2)
	lw      $t3, 0x0020($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0020($sp)
	lw      $a3, 0x0030($sp)
	addiu   $a0, $sp, 0x0027
	li      $a1, 0x0001
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	li      $at, -0x0001
	bne     $v0, $at, 59$
	nop
	b       64$
	nop
59$:
	lb      $a0, 0x0027($sp)
	jal     face_stdio_8018E4E0
	nop
	beqz    $v0, 26$
	nop
64$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	nop
	addu    $t7, $t5, $t6
	sb      $0, 0x0000($t7)
	lw      $t8, 0x0020($sp)
	nop
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0020($sp)
	lw      $v0, 0x0020($sp)
	b       78$
	nop
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
