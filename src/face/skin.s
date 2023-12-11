.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_skin_80181720:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x001C
	lwc1    $f10, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f10, 0x0000($t9)
	lwc1    $f16, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f16, 0x0004($t0)
	lwc1    $f18, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f18, 0x0008($t1)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f4, 0x0010($t2)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f6, 0x0014($t3)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f8, 0x0018($t4)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x001C
	lwc1    $f10, 0x001C($sp)
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f10, 0x0010($t5)
	lwc1    $f16, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f16, 0x0014($t6)
	lwc1    $f18, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f18, 0x0018($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f4, 0x0020($t8)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t9, 0x0028($sp)
	nop
	lwc1    $f6, 0x0024($t9)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f8, 0x0028($t0)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x001C
	lwc1    $f10, 0x001C($sp)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f10, 0x0020($t1)
	lwc1    $f16, 0x0020($sp)
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f16, 0x0024($t2)
	lwc1    $f18, 0x0024($sp)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f18, 0x0028($t3)
	b       92$
	nop
92$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_skin_801818A0
face_skin_801818A0:
	addiu   $sp, $sp, -0x0010
	lw      $a1, 0x001C($a0)
	nop
	beqz    $a1, 51$
	nop
5$:
	lw      $t6, 0x0008($a1)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	mtc1    $0, $f4
	lwc1    $f12, 0x003C($t7)
	nop
	c.eq.s  $f12, $f4
	nop
	bc1t    35$
	nop
	lw      $t8, 0x0004($sp)
	nop
	lwc1    $f6, 0x0014($t8)
	nop
	mul.s   $f8, $f6, $f12
	swc1    $f8, 0x0020($t8)
	lw      $t9, 0x0004($sp)
	nop
	lwc1    $f10, 0x0018($t9)
	nop
	mul.s   $f16, $f10, $f12
	swc1    $f16, 0x0024($t9)
	lw      $t0, 0x0004($sp)
	nop
	lwc1    $f18, 0x001C($t0)
	nop
	mul.s   $f4, $f18, $f12
	b       47$
	swc1    $f4, 0x0028($t0)
35$:
	mtc1    $0, $f6
	lw      $t1, 0x0004($sp)
	nop
	swc1    $f6, 0x0028($t1)
	lw      $t2, 0x0004($sp)
	nop
	lwc1    $f14, 0x0028($t2)
	nop
	swc1    $f14, 0x0024($t2)
	lw      $t3, 0x0004($sp)
	nop
	swc1    $f14, 0x0020($t3)
47$:
	lw      $a1, 0x0004($a1)
	nop
	bnez    $a1, 5$
	nop
51$:
	b       53$
	nop
53$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl move_skinnet
move_skinnet:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x01A8($t6)
	nop
	beqz    $t7, 16$
	nop
	lw      $t8, 0x0020($sp)
	nop
	lw      $t9, 0x01A8($t8)
	nop
	lw      $a0, 0x0024($t9)
	jal     face_skin_801818A0
	nop
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_skin_801819D4
face_skin_801819D4:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0058($sp)
	sw      $s3, 0x0028($sp)
	sw      $s2, 0x0024($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $t6, 0x0058($sp)
	nop
	lw      $s0, 0x01F4($t6)
	nop
	beqz    $s0, 68$
	nop
	lw      $s3, 0x001C($s0)
	nop
	beqz    $s3, 68$
	nop
19$:
	lw      $t7, 0x0008($s3)
	nop
	sw      $t7, 0x0034($sp)
	lw      $s1, 0x0034($sp)
	nop
	lwc1    $f4, 0x0038($s1)
	mtc1    $0, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    64$
	nop
	lwc1    $f10, 0x0020($s1)
	nop
	swc1    $f10, 0x0048($sp)
	lwc1    $f16, 0x0024($s1)
	nop
	swc1    $f16, 0x004C($sp)
	lwc1    $f18, 0x0028($s1)
	nop
	swc1    $f18, 0x0050($sp)
	lw      $a1, 0x0058($sp)
	addiu   $a0, $sp, 0x0048
	jal     face_math_80196570
	addiu   $a1, $a1, 0x00E8
	lw      $s2, 0x003C($s1)
	nop
	lwc1    $f20, 0x0038($s1)
	nop
	lwc1    $f6, 0x0048($sp)
	lwc1    $f4, 0x0020($s2)
	mul.s   $f8, $f6, $f20
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0020($s2)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x0024($s2)
	mul.s   $f6, $f18, $f20
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x0024($s2)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f8, 0x0028($s2)
	mul.s   $f18, $f10, $f20
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0028($s2)
64$:
	lw      $s3, 0x0004($s3)
	nop
	bnez    $s3, 19$
	nop
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x002C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	lw      $s2, 0x0024($sp)
	lw      $s3, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0058

face_skin_80181B10:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	lui     $t7, %hi(_face_skin_bss-0x580+0x580)
	lw      $t7, %lo(_face_skin_bss-0x580+0x580)($t7)
	lui     $t6, %hi(_face_joint_bss-0x1040+0x1040)
	lw      $t6, %lo(_face_joint_bss-0x1040+0x1040)($t6)
	lw      $t8, 0x001C($t7)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1040)
	xor     $s0, $t6, $t8
	sltiu   $s0, $s0, 0x0001
	addiu   $t9, $t6, 0x0001
	beqz    $s0, 62$
	sw      $t9, %lo(_face_joint_bss-0x1040+0x1040)($at)
	lui     $t1, %hi(_face_skin_bss-0x580+0x580)
	lw      $t1, %lo(_face_skin_bss-0x580+0x580)($t1)
	lw      $t0, 0x0040($sp)
	nop
	sw      $t0, 0x003C($t1)
	lw      $t2, 0x0040($sp)
	nop
	lwc1    $f4, 0x0020($t2)
	nop
	swc1    $f4, 0x0034($sp)
	lw      $t3, 0x0040($sp)
	nop
	lwc1    $f6, 0x0024($t3)
	nop
	swc1    $f6, 0x0038($sp)
	lw      $t4, 0x0040($sp)
	nop
	lwc1    $f8, 0x0028($t4)
	nop
	swc1    $f8, 0x003C($sp)
	la.u    $a1, _face_skin_bss-0x580+0x588
	la.l    $a1, _face_skin_bss-0x580+0x588
	jal     face_math_80196570
	addiu   $a0, $sp, 0x0034
	lui     $t5, %hi(_face_skin_bss-0x580+0x580)
	lw      $t5, %lo(_face_skin_bss-0x580+0x580)($t5)
	lwc1    $f10, 0x0034($sp)
	nop
	swc1    $f10, 0x0020($t5)
	lui     $t7, %hi(_face_skin_bss-0x580+0x580)
	lw      $t7, %lo(_face_skin_bss-0x580+0x580)($t7)
	lwc1    $f16, 0x0038($sp)
	nop
	swc1    $f16, 0x0024($t7)
	lui     $t8, %hi(_face_skin_bss-0x580+0x580)
	lw      $t8, %lo(_face_skin_bss-0x580+0x580)($t8)
	lwc1    $f18, 0x003C($sp)
	nop
	swc1    $f18, 0x0028($t8)
	lui     $t9, %hi(_face_skin_bss-0x580+0x580)
	lw      $t9, %lo(_face_skin_bss-0x580+0x580)($t9)
	lw      $t6, 0x0040($sp)
	lwc1    $f6, 0x0038($t9)
	lwc1    $f4, 0x003C($t6)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($t6)
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

reset_weight:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lui     $at, %hi(_face_skin_bss-0x580+0x580)
	sw      $t6, %lo(_face_skin_bss-0x580+0x580)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1040)
	sw      $0, %lo(_face_joint_bss-0x1040+0x1040)($at)
	lui     $t7, %hi(face_net_801BAC80)
	lw      $t7, %lo(face_net_801BAC80)($t7)
	nop
	lw      $t8, 0x01C4($t7)
	nop
	beqz    $t8, 22$
	sw      $t8, 0x001C($sp)
	la.u    $a1, face_skin_80181B10
	lw      $a2, 0x001C($sp)
	la.l    $a1, face_skin_80181B10
	jal     face_object_8017E520
	li      $a0, 0x0100
	b       25$
	sw      $v0, 0x0024($sp)
22$:
	la.u    $a0, str_face_skin_801B5EE0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_skin_801B5EE0
25$:
	lw      $t9, 0x0028($sp)
	nop
	lw      $t0, 0x003C($t9)
	nop
	bnez    $t0, 36$
	nop
	lw      $t1, 0x0028($sp)
	la.u    $a0, str_face_skin_801B5F0C
	lw      $a1, 0x001C($t1)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_skin_801B5F0C
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_skin_80181CC8
face_skin_80181CC8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	la.u    $a1, _face_skin_bss-0x580+0x588
	la.l    $a1, _face_skin_bss-0x580+0x588
	jal     face_math_80194FBC
	addiu   $a0, $a0, 0x00E8
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(_face_skin_bss-0x580+0x5C8)
	sw      $t6, %lo(_face_skin_bss-0x580+0x5C8)($at)
	lw      $t7, 0x0020($sp)
	nop
	lw      $t8, 0x01F4($t7)
	nop
	beqz    $t8, 22$
	sw      $t8, 0x001C($sp)
	la.u    $a1, reset_weight
	lw      $a2, 0x001C($sp)
	la.l    $a1, reset_weight
	jal     face_object_8017E520
	li      $a0, 0x1000
22$:
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop
