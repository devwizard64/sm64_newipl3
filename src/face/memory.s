.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_mem_80177820:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x000C($a0)
	nop
	beqz    $t6, 9$
	nop
	lw      $t7, 0x0010($a0)
	lw      $t8, 0x000C($a0)
	nop
	sw      $t7, 0x0010($t8)
9$:
	lw      $t9, 0x0010($a0)
	nop
	beqz    $t9, 17$
	nop
	lw      $t0, 0x000C($a0)
	lw      $t1, 0x0010($a0)
	nop
	sw      $t0, 0x000C($t1)
17$:
	lbu     $a1, 0x0008($a0)
	li      $at, 0x0001
	beq     $a1, $at, 26$
	nop
	li      $at, 0x0002
	beq     $a1, $at, 35$
	nop
	b       44$
	nop
26$:
	lw      $t2, 0x0010($a0)
	nop
	bnez    $t2, 33$
	nop
	lw      $t3, 0x000C($a0)
	lui     $at, %hi(face_mem_801B9CA0)
	sw      $t3, %lo(face_mem_801B9CA0)($at)
33$:
	b       44$
	nop
35$:
	lw      $t4, 0x0010($a0)
	nop
	bnez    $t4, 42$
	nop
	lw      $t5, 0x000C($a0)
	lui     $at, %hi(face_mem_801B9CA4)
	sw      $t5, %lo(face_mem_801B9CA4)($at)
42$:
	b       44$
	nop
44$:
	lui     $t6, %hi(face_mem_801B9CA8)
	lw      $t6, %lo(face_mem_801B9CA8)($t6)
	nop
	sw      $t6, 0x000C($a0)
	lw      $t7, 0x000C($a0)
	nop
	beqz    $t7, 56$
	nop
	lui     $t8, %hi(face_mem_801B9CA8)
	lw      $t8, %lo(face_mem_801B9CA8)($t8)
	nop
	sw      $a0, 0x0010($t8)
56$:
	lui     $at, %hi(face_mem_801B9CA8)
	sw      $a0, %lo(face_mem_801B9CA8)($at)
	sw      $0, 0x0010($a0)
	sw      $0, 0x0000($a0)
	sw      $0, 0x0004($a0)
	b       63$
	nop
63$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_mem_80177924:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x0004($t8)
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0028($sp)
	nop
	lbu     $t1, 0x0009($t0)
	nop
	sb      $t1, 0x001F($sp)
	lw      $a0, 0x0028($sp)
	jal     face_mem_80177820
	nop
	lbu     $a1, 0x001F($sp)
	jal     MakeMemBlock
	li      $a0, 0x0001
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0018($sp)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t4, 0x0004($t5)
	lbu     $t6, 0x001F($sp)
	lw      $t7, 0x0024($sp)
	nop
	sb      $t6, 0x0009($t7)
	lw      $v0, 0x0024($sp)
	b       42$
	nop
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

MakeMemBlock:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_mem_801B9CA8)
	lw      $t6, %lo(face_mem_801B9CA8)($t6)
	nop
	bnez    $t6, 30$
	nop
	jal     gd_allocblock
	li      $a0, 0x0014
	lui     $at, %hi(face_mem_801B9CA8)
	sw      $v0, %lo(face_mem_801B9CA8)($at)
	lui     $t7, %hi(face_mem_801B9CA8)
	lw      $t7, %lo(face_mem_801B9CA8)($t7)
	nop
	bnez    $t7, 22$
	nop
	la.u    $a0, str_face_mem_801B5500
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B5500
22$:
	lui     $t8, %hi(face_mem_801B9CA8)
	lw      $t8, %lo(face_mem_801B9CA8)($t8)
	nop
	sw      $0, 0x000C($t8)
	lui     $t9, %hi(face_mem_801B9CA8)
	lw      $t9, %lo(face_mem_801B9CA8)($t9)
	nop
	sw      $0, 0x0010($t9)
30$:
	lui     $t0, %hi(face_mem_801B9CA8)
	lw      $t0, %lo(face_mem_801B9CA8)($t0)
	nop
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	lui     $at, %hi(face_mem_801B9CA8)
	lw      $t2, 0x000C($t1)
	nop
	beqz    $t2, 45$
	sw      $t2, %lo(face_mem_801B9CA8)($at)
	lw      $t3, 0x0024($sp)
	nop
	lw      $t4, 0x000C($t3)
	nop
	sw      $0, 0x0010($t4)
45$:
	lw      $s0, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, 54$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 75$
	nop
	b       96$
	nop
54$:
	lui     $t5, %hi(face_mem_801B9CA0)
	lw      $t5, %lo(face_mem_801B9CA0)($t5)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x000C($t6)
	lw      $t7, 0x0024($sp)
	nop
	lw      $t8, 0x000C($t7)
	nop
	beqz    $t8, 70$
	nop
	lui     $t0, %hi(face_mem_801B9CA0)
	lw      $t0, %lo(face_mem_801B9CA0)($t0)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t9, 0x0010($t0)
70$:
	lw      $t1, 0x0024($sp)
	lui     $at, %hi(face_mem_801B9CA0)
	sw      $t1, %lo(face_mem_801B9CA0)($at)
	b       99$
	nop
75$:
	lui     $t2, %hi(face_mem_801B9CA4)
	lw      $t2, %lo(face_mem_801B9CA4)($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x000C($t3)
	lw      $t4, 0x0024($sp)
	nop
	lw      $t5, 0x000C($t4)
	nop
	beqz    $t5, 91$
	nop
	lui     $t7, %hi(face_mem_801B9CA4)
	lw      $t7, %lo(face_mem_801B9CA4)($t7)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t6, 0x0010($t7)
91$:
	lw      $t8, 0x0024($sp)
	lui     $at, %hi(face_mem_801B9CA4)
	sw      $t8, %lo(face_mem_801B9CA4)($at)
	b       99$
	nop
96$:
	la.u    $a0, str_face_mem_801B5524
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B5524
99$:
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0010($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	nop
	sb      $t0, 0x0008($t1)
	lbu     $t2, 0x002F($sp)
	lw      $t3, 0x0024($sp)
	nop
	sb      $t2, 0x0009($t3)
	lw      $v0, 0x0024($sp)
	b       115$
	nop
	b       115$
	nop
115$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl Free
Free:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $s1, 0x0030($sp)
	nop
	lui     $s0, %hi(face_mem_801B9CA4)
	lw      $s0, %lo(face_mem_801B9CA4)($s0)
	nop
	beqz    $s0, 28$
	nop
12$:
	lw      $t6, 0x0000($s0)
	nop
	bne     $t6, $s1, 24$
	nop
	lw      $t7, 0x0004($s0)
	nop
	sw      $t7, 0x0028($sp)
	jal     face_mem_80177924
	move    $a0, $s0
	lw      $v0, 0x0028($sp)
	b       35$
	nop
24$:
	lw      $s0, 0x000C($s0)
	nop
	bnez    $s0, 12$
	nop
28$:
	la.u    $a0, str_face_mem_801B553C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_mem_801B553C
	b       35$
	move    $v0, $0
	b       35$
	nop
35$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_mem_80177C58
face_mem_80177C58:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $0, 0x0024($sp)
	lbu     $a1, 0x002F($sp)
	jal     MakeMemBlock
	li      $a0, 0x0002
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(face_mem_801B9CA0)
	lw      $t6, %lo(face_mem_801B9CA0)($t6)
	nop
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, 73$
	nop
17$:
	lw      $t8, 0x0020($sp)
	lbu     $t0, 0x002F($sp)
	lbu     $t9, 0x0009($t8)
	nop
	and     $t1, $t9, $t0
	beqz    $t1, 64$
	nop
	lw      $t2, 0x0020($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0004($t2)
	nop
	bne     $t3, $t4, 37$
	nop
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0024($sp)
	b       73$
	nop
	b       64$
	nop
37$:
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	nop
	sltu    $at, $t8, $t7
	beqz    $at, 64$
	nop
	lw      $t9, 0x0024($sp)
	nop
	beqz    $t9, 61$
	nop
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x0004($t0)
	lw      $t3, 0x0004($t2)
	nop
	sltu    $at, $t1, $t3
	beqz    $at, 59$
	nop
	lw      $t4, 0x0020($sp)
	nop
	sw      $t4, 0x0024($sp)
59$:
	b       64$
	nop
61$:
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0024($sp)
64$:
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	nop
	bnez    $t8, 17$
	nop
73$:
	lw      $t9, 0x0024($sp)
	nop
	bnez    $t9, 79$
	nop
	b       133$
	move    $v0, $0
79$:
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	lw      $t2, 0x0004($t0)
	nop
	sltu    $at, $t1, $t2
	beqz    $at, 108$
	nop
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	lw      $t4, 0x0000($t3)
	nop
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0004($t7)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x0028($sp)
	lw      $t9, 0x0004($t8)
	nop
	subu    $t2, $t9, $t0
	sw      $t2, 0x0004($t8)
	lw      $t1, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	lw      $t3, 0x0000($t1)
	nop
	addu    $t5, $t3, $t4
	b       126$
	sw      $t5, 0x0000($t1)
108$:
	lw      $t6, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	lw      $t7, 0x0004($t6)
	nop
	bne     $t7, $t9, 126$
	nop
	lw      $t0, 0x0024($sp)
	lw      $t8, 0x001C($sp)
	lw      $t2, 0x0000($t0)
	nop
	sw      $t2, 0x0000($t8)
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0004($t4)
	lw      $a0, 0x0024($sp)
	jal     face_mem_80177820
	nop
126$:
	lw      $t5, 0x001C($sp)
	nop
	lw      $v0, 0x0000($t5)
	b       133$
	nop
	b       133$
	nop
133$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_mem_80177E7C
face_mem_80177E7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, -0x0008
	and     $t8, $t7, $at
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	li      $at, -0x0008
	addiu   $t0, $t9, 0x0008
	and     $t1, $t0, $at
	sw      $t1, 0x0024($sp)
	lbu     $a1, 0x002B($sp)
	jal     MakeMemBlock
	li      $a0, 0x0001
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x001C($sp)
	nop
	sw      $t2, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	lw      $t5, 0x001C($sp)
	nop
	sw      $t4, 0x0004($t5)
	lw      $v0, 0x001C($sp)
	b       32$
	nop
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_mem_80177F0C
face_mem_80177F0C:
	lui     $at, %hi(face_mem_801B9CA0)
	sw      $0, %lo(face_mem_801B9CA0)($at)
	lui     $at, %hi(face_mem_801B9CA4)
	sw      $0, %lo(face_mem_801B9CA4)($at)
	lui     $at, %hi(face_mem_801B9CA8)
	sw      $0, %lo(face_mem_801B9CA8)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_mem_80177F34:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $0, 0x0024($sp)
	sw      $0, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	nop
	beqz    $t6, 63$
	nop
11$:
	lw      $t7, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	lbu     $t8, 0x0009($t7)
	nop
	and     $t0, $t8, $t9
	beqz    $t0, 54$
	nop
	lw      $t1, 0x0024($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0024($sp)
	lw      $t3, 0x002C($sp)
	nop
	beqz    $t3, 48$
	nop
	lw      $t4, 0x0028($sp)
	la.u    $a0, str_face_mem_801B555C
	lw      $t5, 0x0004($t4)
	la.l    $a0, str_face_mem_801B555C
	mtc1    $t5, $f4
	bgez    $t5, 37$
	cvt.s.w $f6, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f8
	nop
	add.s   $f6, $f6, $f8
37$:
	li      $at, 0x40900000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f6
	nop
	div.d   $f18, $f10, $f16
	sw      $t5, 0x0010($sp)
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	jal     gd_printf
	nop
48$:
	lw      $t7, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0004($t7)
	nop
	addu    $t9, $t6, $t8
	sw      $t9, 0x0020($sp)
54$:
	lw      $t0, 0x0028($sp)
	nop
	lw      $t1, 0x000C($t0)
	nop
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	nop
	bnez    $t2, 11$
	nop
63$:
	lw      $t3, 0x0020($sp)
	la.u    $a0, str_face_mem_801B5574
	mtc1    $t3, $f4
	la.l    $a0, str_face_mem_801B5574
	bgez    $t3, 73$
	cvt.s.w $f8, $f4
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f8, $f8, $f6
73$:
	li      $at, 0x40900000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	lw      $t4, 0x0024($sp)
	sw      $t3, 0x0010($sp)
	sw      $t4, 0x0014($sp)
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	jal     gd_printf
	nop
	lw      $v0, 0x0024($sp)
	b       91$
	nop
	b       91$
	nop
91$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_mem_801780B0
face_mem_801780B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_mem_801B559C
	jal     gd_printf
	la.l    $a0, str_face_mem_801B559C
	lui     $t6, %hi(face_mem_801B9CA4)
	lw      $t6, %lo(face_mem_801B9CA4)($t6)
	nop
	sw      $t6, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00F0
	la.u    $a0, str_face_mem_801B55B0
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55B0
	la.u    $a0, str_face_mem_801B55B4
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55B4
	lui     $t7, %hi(face_mem_801B9CA0)
	lw      $t7, %lo(face_mem_801B9CA0)($t7)
	nop
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00F0
	la.u    $a0, str_face_mem_801B55C8
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55C8
	la.u    $a0, str_face_mem_801B55CC
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55CC
	lui     $t8, %hi(face_mem_801B9CA4)
	lw      $t8, %lo(face_mem_801B9CA4)($t8)
	nop
	sw      $t8, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x000F
	la.u    $a0, str_face_mem_801B55E0
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55E0
	la.u    $a0, str_face_mem_801B55E4
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55E4
	lui     $t9, %hi(face_mem_801B9CA0)
	lw      $t9, %lo(face_mem_801B9CA0)($t9)
	nop
	sw      $t9, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x000F
	la.u    $a0, str_face_mem_801B55F8
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55F8
	la.u    $a0, str_face_mem_801B55FC
	jal     gd_printf
	la.l    $a0, str_face_mem_801B55FC
	lui     $t0, %hi(face_mem_801B9CA8)
	lw      $t0, %lo(face_mem_801B9CA8)($t0)
	nop
	sw      $t0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	move    $a1, $0
	jal     face_mem_80177F34
	li      $a2, 0x00FF
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop
