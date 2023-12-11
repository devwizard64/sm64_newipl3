.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_shape_801973C0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1334)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1334)($at)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1330)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1330)($at)
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_draw_bss-0x210+0x298)
	sw      $v0, %lo(_face_draw_bss-0x210+0x298)($at)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl calc_facenormal
calc_facenormal:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8A80
	jal     imin
	la.l    $a0, str_face_shape_801B8A80
	lw      $t6, 0x0060($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	slti    $at, $t7, 0x0003
	bnez    $at, 139$
	nop
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x0034($t8)
	nop
	sw      $t9, 0x0028($sp)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f6, 0x0020($t0)
	nop
	swc1    $f6, 0x0050($sp)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f8, 0x0024($t1)
	nop
	swc1    $f8, 0x0054($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f10, 0x0028($t2)
	nop
	swc1    $f10, 0x0058($sp)
	lw      $t3, 0x0060($sp)
	nop
	lw      $t4, 0x0038($t3)
	nop
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	nop
	lwc1    $f16, 0x0020($t5)
	nop
	swc1    $f16, 0x0044($sp)
	lw      $t6, 0x0024($sp)
	nop
	lwc1    $f18, 0x0024($t6)
	nop
	swc1    $f18, 0x0048($sp)
	lw      $t7, 0x0024($sp)
	nop
	lwc1    $f4, 0x0028($t7)
	nop
	swc1    $f4, 0x004C($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x003C($t8)
	nop
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	nop
	lwc1    $f6, 0x0020($t0)
	nop
	swc1    $f6, 0x0038($sp)
	lw      $t1, 0x0020($sp)
	nop
	lwc1    $f8, 0x0024($t1)
	nop
	swc1    $f8, 0x003C($sp)
	lw      $t2, 0x0020($sp)
	nop
	lwc1    $f10, 0x0028($t2)
	nop
	swc1    $f10, 0x0040($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0054($sp)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f8, 0x004C($sp)
	sub.s   $f4, $f16, $f18
	sub.s   $f10, $f6, $f8
	lwc1    $f6, 0x0058($sp)
	mul.s   $f18, $f4, $f10
	lwc1    $f10, 0x003C($sp)
	sub.s   $f4, $f8, $f6
	sub.s   $f8, $f10, $f16
	lwc1    $f16, 0x0018($sp)
	mul.s   $f6, $f4, $f8
	sub.s   $f10, $f18, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x002C($sp)
	lwc1    $f8, 0x004C($sp)
	lwc1    $f18, 0x0058($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f16, 0x0044($sp)
	sub.s   $f6, $f8, $f18
	sub.s   $f4, $f10, $f16
	lwc1    $f10, 0x0050($sp)
	mul.s   $f18, $f6, $f4
	lwc1    $f4, 0x0040($sp)
	sub.s   $f6, $f16, $f10
	sub.s   $f16, $f4, $f8
	lwc1    $f8, 0x0018($sp)
	mul.s   $f10, $f6, $f16
	sub.s   $f4, $f18, $f10
	mul.s   $f6, $f4, $f8
	swc1    $f6, 0x0030($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x0048($sp)
	sub.s   $f10, $f16, $f18
	sub.s   $f6, $f4, $f8
	lwc1    $f4, 0x0054($sp)
	mul.s   $f18, $f10, $f6
	lwc1    $f6, 0x0038($sp)
	sub.s   $f10, $f8, $f4
	sub.s   $f8, $f6, $f16
	lwc1    $f16, 0x0018($sp)
	mul.s   $f4, $f10, $f8
	sub.s   $f6, $f18, $f4
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0034($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x002C
	lwc1    $f8, 0x002C($sp)
	lw      $t3, 0x0060($sp)
	nop
	swc1    $f8, 0x0024($t3)
	lwc1    $f18, 0x0030($sp)
	lw      $t4, 0x0060($sp)
	nop
	swc1    $f18, 0x0028($t4)
	lwc1    $f4, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	nop
	swc1    $f4, 0x002C($t5)
139$:
	jal     imout
	nop
	b       143$
	nop
143$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl face_shape_8019764C
face_shape_8019764C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	jal     make_object
	li      $a0, 0x0100
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, -0x2E2C
	sh      $t6, 0x0038($t7)
	lwc1    $f4, 0x0020($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f4, 0x0020($t8)
	lwc1    $f6, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	swc1    $f6, 0x0024($t9)
	lwc1    $f8, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	nop
	swc1    $f8, 0x0028($t0)
	lwc1    $f10, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	swc1    $f10, 0x0014($t1)
	lwc1    $f16, 0x0024($sp)
	lw      $t2, 0x001C($sp)
	nop
	swc1    $f16, 0x0018($t2)
	lwc1    $f18, 0x0028($sp)
	lw      $t3, 0x001C($sp)
	nop
	swc1    $f18, 0x001C($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x001C($sp)
	nop
	swc1    $f4, 0x003C($t4)
	lw      $t5, 0x001C($sp)
	nop
	sw      $0, 0x0044($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f6, 0x0040($t6)
	mtc1    $0, $f8
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f8, 0x002C($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f10, 0x0030($t8)
	mtc1    $0, $f16
	lw      $t9, 0x001C($sp)
	nop
	swc1    $f16, 0x0034($t9)
	lw      $v0, 0x001C($sp)
	b       66$
	nop
	b       66$
	nop
66$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl make_face
make_face:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	la.u    $a0, str_face_shape_801B8A90
	jal     imin
	la.l    $a0, str_face_shape_801B8A90
	jal     make_object
	li      $a0, 0x0080
	sw      $v0, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f6, 0x0018($t7)
	lwc1    $f8, 0x0028($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f8, 0x001C($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x0030($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, -0x0001
	sw      $t0, 0x0044($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0048($t2)
	jal     imout
	nop
	lw      $v0, 0x001C($sp)
	b       39$
	nop
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80197810:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     make_object
	li      $a0, 0x0080
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x0030($t6)
	lw      $t7, 0x0020($sp)
	lw      $t9, 0x001C($sp)
	lw      $t8, 0x001C($t7)
	nop
	sw      $t8, 0x0044($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0048($t1)
	lw      $v0, 0x001C($sp)
	b       23$
	nop
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_8019787C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	nop
	sw      $t6, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0038($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x003C($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0018($sp)
	nop
	sw      $t2, 0x0040($t3)
	lw      $t5, 0x0018($sp)
	li      $t4, 0x0004
	sw      $t4, 0x0030($t5)
	lw      $a0, 0x0018($sp)
	jal     calc_facenormal
	nop
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_shape_80197904
face_shape_80197904:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	nop
	sw      $t6, 0x0034($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0038($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x003C($t1)
	lw      $t3, 0x0018($sp)
	li      $t2, 0x0003
	sw      $t2, 0x0030($t3)
	lw      $a0, 0x0018($sp)
	jal     calc_facenormal
	nop
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_shape_8019797C
face_shape_8019797C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	jal     make_object
	li      $a0, 0x0010
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	nop
	beqz    $t6, 17$
	nop
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x005C
	b       22$
	nop
17$:
	lw      $a0, 0x0024($sp)
	la.u    $a1, str_face_shape_801B8A9C
	la.l    $a1, str_face_shape_801B8A9C
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x005C
22$:
	lui     $t7, %hi(_face_shape_bss-0x11E0+0x1334)
	lw      $t7, %lo(_face_shape_bss-0x11E0+0x1334)($t7)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1334)
	addiu   $t8, $t7, 0x0001
	sw      $t8, %lo(_face_shape_bss-0x11E0+0x1334)($at)
	lui     $t9, %hi(_face_shape_bss-0x11E0+0x1330)
	lw      $t9, %lo(_face_shape_bss-0x11E0+0x1330)($t9)
	nop
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0024($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1330)
	sw      $t0, %lo(_face_shape_bss-0x11E0+0x1330)($at)
	lw      $t1, 0x0020($sp)
	nop
	beqz    $t1, 46$
	nop
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x0018($t3)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x0020($sp)
	nop
	sw      $t4, 0x0014($t5)
46$:
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x1334)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x1334)($t6)
	lw      $t7, 0x0024($sp)
	nop
	sw      $t6, 0x0040($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t8, 0x0044($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x0038($t0)
	lw      $t1, 0x0024($sp)
	nop
	sw      $0, 0x0034($t1)
	lw      $t2, 0x0024($sp)
	nop
	sw      $0, 0x0048($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $0, 0x004C($t3)
	lw      $t4, 0x0024($sp)
	nop
	sw      $0, 0x003C($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x001C($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f4, 0x0058($t6)
	lw      $t7, 0x0024($sp)
	nop
	sw      $0, 0x0020($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $0, 0x001C($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x002C($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x0030($t0)
	lw      $t1, 0x0024($sp)
	nop
	sw      $0, 0x0050($t1)
	lw      $v0, 0x0024($sp)
	b       98$
	nop
	b       98$
	nop
98$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_80197B14:
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1328)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1328)($at)
	lui     $t7, %hi(_face_shape_bss-0x11E0+0x1328)
	lw      $t7, %lo(_face_shape_bss-0x11E0+0x1328)($t7)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1228)
	li      $t6, 0x000D
	addu    $at, $at, $t7
	sb      $t6, %lo(_face_shape_bss-0x11E0+0x1228)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197B44:
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x1328)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x1328)($t6)
	lui     $v0, %hi(_face_shape_bss-0x11E0+0x1228)
	addu    $v0, $v0, $t6
	lb      $v0, %lo(_face_shape_bss-0x11E0+0x1228)($v0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197B70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	jal     face_shape_80197B44
	nop
	bnez    $v0, 9$
	nop
	b       21$
	move    $v0, $0
9$:
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x1328)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x1328)($t6)
	lui     $s0, %hi(_face_shape_bss-0x11E0+0x1228)
	addu    $s0, $s0, $t6
	lb      $s0, %lo(_face_shape_bss-0x11E0+0x1228)($s0)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1328)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_shape_bss-0x11E0+0x1328)($at)
	b       21$
	move    $v0, $s0
	b       21$
	nop
21$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_shape_80197BD4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1328)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1328)($at)
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x132C)($a0)
	jal     face_stdio_8018E128
	nop
	beqz    $v0, 16$
	nop
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x1328)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x1328)($t6)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1228)
	addu    $at, $at, $t6
	b       22$
	sb      $0, %lo(_face_shape_bss-0x11E0+0x1228)($at)
16$:
	lui     $a2, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a2, %lo(_face_shape_bss-0x11E0+0x132C)($a2)
	la.u    $a0, _face_shape_bss-0x11E0+0x1228
	la.l    $a0, _face_shape_bss-0x11E0+0x1228
	jal     face_stdio_8018E518
	li      $a1, 0x00FF
22$:
	jal     face_shape_80197B44
	nop
	b       28$
	nop
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80197C54:
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

face_shape_80197C8C:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	xori    $v0, $a0, 0x0020
	sltiu   $v0, $v0, 0x0001
	bnez    $v0, 8$
	nop
	xori    $v0, $a0, 0x0009
	sltiu   $v0, $v0, 0x0001
8$:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80197CC4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_shape_80197B44
	nop
	sb      $v0, 0x001F($sp)
	lb      $t6, 0x001F($sp)
	nop
	beqz    $t6, 48$
	nop
9$:
	lb      $a0, 0x001F($sp)
	jal     face_shape_80197C8C
	nop
	beqz    $v0, 18$
	nop
	jal     face_shape_80197B70
	nop
	b       41$
	nop
18$:
	lb      $t7, 0x001F($sp)
	li      $at, 0x001A
	bne     $t7, $at, 26$
	nop
	b       55$
	move    $v0, $0
	b       41$
	nop
26$:
	lb      $a0, 0x001F($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, 39$
	nop
	jal     face_shape_80197BD4
	nop
	bnez    $v0, 37$
	nop
	b       55$
	move    $v0, $0
37$:
	b       41$
	nop
39$:
	b       48$
	nop
41$:
	jal     face_shape_80197B44
	nop
	sb      $v0, 0x001F($sp)
	lb      $t8, 0x001F($sp)
	nop
	bnez    $t8, 9$
	nop
48$:
	lb      $v0, 0x001F($sp)
	nop
	sltu    $t9, $0, $v0
	b       55$
	move    $v0, $t9
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80197DB0:
	addiu   $sp, $sp, -0x0120
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0120($sp)
	sw      $0, 0x001C($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x011F($sp)
	lb      $t6, 0x011F($sp)
	nop
	beqz    $t6, 40$
	nop
11$:
	lb      $a0, 0x011F($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, 21$
	nop
	lb      $a0, 0x011F($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, 25$
	nop
21$:
	b       40$
	nop
	b       33$
	nop
25$:
	lw      $t8, 0x001C($sp)
	lb      $t7, 0x011F($sp)
	addu    $t9, $sp, $t8
	sb      $t7, 0x0020($t9)
	lw      $t0, 0x001C($sp)
	nop
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x001C($sp)
33$:
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x011F($sp)
	lb      $t2, 0x011F($sp)
	nop
	bnez    $t2, 11$
	nop
40$:
	lw      $t3, 0x001C($sp)
	nop
	addu    $t4, $sp, $t3
	sb      $0, 0x0020($t4)
	lw      $a0, 0x0120($sp)
	jal     face_stdio_8018DFF0
	addiu   $a1, $sp, 0x0020
	sltiu   $t5, $v0, 0x0001
	b       52$
	move    $v0, $t5
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0120
	jr      $ra
	nop

getfloat:
	addiu   $sp, $sp, -0x0140
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0140($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8AA4
	jal     imin
	la.l    $a0, str_face_shape_801B8AA4
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t6, $s0, 24
	move    $s0, $t6
	jal     face_shape_80197C54
	move    $a0, $s0
	beqz    $v0, 19$
	nop
	la.u    $a0, str_face_shape_801B8AB0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8AB0
19$:
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t7, $s0, 24
	move    $s0, $t7
	jal     face_shape_80197C8C
	move    $a0, $s0
	beqz    $v0, 39$
	nop
28$:
	jal     face_shape_80197B70
	nop
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t8, $s0, 24
	move    $s0, $t8
	jal     face_shape_80197C8C
	move    $a0, $s0
	bnez    $v0, 28$
	nop
39$:
	sw      $0, 0x003C($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x003B($sp)
	lb      $t9, 0x003B($sp)
	nop
	beqz    $t9, 75$
	nop
47$:
	lb      $a0, 0x003B($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, 66$
	nop
	lb      $a0, 0x003B($sp)
	jal     face_shape_80197C54
	nop
	bnez    $v0, 66$
	nop
	lw      $t1, 0x003C($sp)
	lb      $t0, 0x003B($sp)
	addu    $t2, $sp, $t1
	sb      $t0, 0x0040($t2)
	lw      $t3, 0x003C($sp)
	nop
	addiu   $t4, $t3, 0x0001
	b       68$
	sw      $t4, 0x003C($sp)
66$:
	b       75$
	nop
68$:
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x003B($sp)
	lb      $t5, 0x003B($sp)
	nop
	bnez    $t5, 47$
	nop
75$:
	lw      $t6, 0x003C($sp)
	nop
	addu    $t7, $sp, $t6
	sb      $0, 0x0040($t7)
	addiu   $a0, $sp, 0x0040
	jal     face_stdio_8018D948
	addiu   $a1, $sp, 0x0034
	swc1    $f1, 0x0028($sp)
	swc1    $f0, 0x002C($sp)
	lwc1    $f5, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lw      $t8, 0x0140($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0000($t8)
	jal     imout
	nop
	lw      $v0, 0x003C($sp)
	nop
	sltu    $t9, $0, $v0
	b       98$
	move    $v0, $t9
	b       98$
	nop
98$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0140

getint:
	addiu   $sp, $sp, -0x0128
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0128($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_shape_801B8ACC
	jal     imin
	la.l    $a0, str_face_shape_801B8ACC
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t6, $s0, 24
	move    $s0, $t6
	jal     face_shape_80197C54
	move    $a0, $s0
	beqz    $v0, 19$
	nop
	la.u    $a0, str_face_shape_801B8AD4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8AD4
19$:
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t7, $s0, 24
	move    $s0, $t7
	jal     face_shape_80197C8C
	move    $a0, $s0
	beqz    $v0, 39$
	nop
28$:
	jal     face_shape_80197B70
	nop
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t8, $s0, 24
	move    $s0, $t8
	jal     face_shape_80197C8C
	move    $a0, $s0
	bnez    $v0, 28$
	nop
39$:
	sw      $0, 0x0024($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x0023($sp)
	lb      $t9, 0x0023($sp)
	nop
	beqz    $t9, 74$
	nop
47$:
	lb      $a0, 0x0023($sp)
	jal     face_shape_80197C8C
	nop
	bnez    $v0, 57$
	nop
	lb      $a0, 0x0023($sp)
	jal     face_shape_80197C54
	nop
	beqz    $v0, 59$
	nop
57$:
	b       74$
	nop
59$:
	lw      $t1, 0x0024($sp)
	lb      $t0, 0x0023($sp)
	addu    $t2, $sp, $t1
	sb      $t0, 0x0028($t2)
	lw      $t3, 0x0024($sp)
	nop
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0024($sp)
	jal     face_shape_80197B70
	nop
	sb      $v0, 0x0023($sp)
	lb      $t5, 0x0023($sp)
	nop
	bnez    $t5, 47$
	nop
74$:
	lw      $t6, 0x0024($sp)
	nop
	addu    $t7, $sp, $t6
	sb      $0, 0x0028($t7)
	jal     gd_atoi
	addiu   $a0, $sp, 0x0028
	lw      $t8, 0x0128($sp)
	nop
	sw      $v0, 0x0000($t8)
	jal     imout
	nop
	lw      $v0, 0x0024($sp)
	nop
	sltu    $t9, $0, $v0
	b       92$
	move    $v0, $t9
	b       92$
	nop
92$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0128

face_shape_801981A8:
	swc1    $f12, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_shape_801981BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1340)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1340)($at)
	addiu   $a1, $t6, 0x0024
	jal     face_math_801949C0
	addiu   $a2, $t6, 0x0028
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1344)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1344)($at)
	addiu   $a1, $t7, 0x0020
	jal     face_math_801949C0
	addiu   $a2, $t7, 0x0028
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1348)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1348)($at)
	addiu   $a1, $t8, 0x0020
	jal     face_math_801949C0
	addiu   $a2, $t8, 0x0024
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198228:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1340)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1340)($at)
	addiu   $a1, $t6, 0x0004
	jal     face_math_801949C0
	addiu   $a2, $t6, 0x0008
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1344)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1344)($at)
	move    $a1, $t7
	jal     face_math_801949C0
	addiu   $a2, $t7, 0x0008
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1348)
	lwc1    $f12, %lo(_face_shape_bss-0x11E0+0x1348)($at)
	move    $a1, $t8
	jal     face_math_801949C0
	addiu   $a2, $t8, 0x0004
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198294:
	sw      $a2, 0x0008($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1340)
	swc1    $f12, %lo(_face_shape_bss-0x11E0+0x1340)($at)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1344)
	swc1    $f14, %lo(_face_shape_bss-0x11E0+0x1344)($at)
	lwc1    $f4, 0x0008($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1348)
	swc1    $f4, %lo(_face_shape_bss-0x11E0+0x1348)($at)
	b       10$
	nop
10$:
	jr      $ra
	nop

face_shape_801982C4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lwc1    $f4, 0x002C($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0030($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0034($sp)
	nop
	swc1    $f8, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	la.u    $a1, face_shape_801981BC
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_801981BC
	jal     face_object_8017E520
	li      $a0, 0x0100
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_80198330:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0001
	lw      $t7, 0x000C($t6)
	nop
	bne     $t7, $at, 11$
	nop
	b       46$
	nop
11$:
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1398)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x1398)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x139C)
	lwc1    $f16, %lo(_face_shape_bss-0x11E0+0x139C)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13A0)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x13A0)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetRelPos
	nop
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetInitPos
	nop
	b       46$
	nop
46$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_801983F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13A8)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x13A8)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13AC)
	lwc1    $f16, %lo(_face_shape_bss-0x11E0+0x13AC)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13B0)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x13B0)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     dSetRelPos
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_shape_8019848C
face_shape_8019848C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1398)
	swc1    $f4, %lo(_face_shape_bss-0x11E0+0x1398)($at)
	lwc1    $f6, 0x0020($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x139C)
	swc1    $f6, %lo(_face_shape_bss-0x11E0+0x139C)($at)
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13A0)
	swc1    $f8, %lo(_face_shape_bss-0x11E0+0x13A0)($at)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0020($t6)
	nop
	beqz    $t7, 28$
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_shape_80198330
	lw      $a2, 0x0020($t8)
	la.l    $a1, face_shape_80198330
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198514:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lwc1    $f4, 0x001C($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13A8)
	swc1    $f4, %lo(_face_shape_bss-0x11E0+0x13A8)($at)
	lwc1    $f6, 0x0020($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13AC)
	swc1    $f6, %lo(_face_shape_bss-0x11E0+0x13AC)($at)
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13B0)
	swc1    $f8, %lo(_face_shape_bss-0x11E0+0x13B0)($at)
	lw      $t6, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_shape_801983F8
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_801983F8
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_80198584:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_object_8017BE60
	nop
	lw      $t6, 0x0020($sp)
	nop
	lwc1    $f4, 0x0020($t6)
	lwc1    $f8, 0x0024($t6)
	mul.s   $f6, $f4, $f4
	lwc1    $f18, 0x0028($t6)
	mul.s   $f10, $f8, $f8
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f16, $f6, $f10
	add.s   $f8, $f16, $f4
	cvt.d.s $f6, $f8
	swc1    $f6, 0x001C($sp)
	swc1    $f7, 0x0018($sp)
	lwc1    $f11, 0x0018($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f19
	mtc1    $0, $f18
	nop
	c.eq.d  $f10, $f18
	nop
	bc1t    50$
	nop
	lwc1    $f13, 0x0018($sp)
	lwc1    $f12, 0x001C($sp)
	jal     face_gfx_8019B49C
	nop
	swc1    $f1, 0x0018($sp)
	swc1    $f0, 0x001C($sp)
	lui     $at, %hi(face_shape_801A87F8+4)
	lwc1    $f5, %lo(face_shape_801A87F8+0)($at)
	lwc1    $f4, %lo(face_shape_801A87F8+4)($at)
	lwc1    $f17, 0x0018($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	c.lt.d  $f4, $f16
	nop
	bc1f    50$
	nop
	lwc1    $f9, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(face_shape_801A87F8+4)
	swc1    $f9, %lo(face_shape_801A87F8+0)($at)
	swc1    $f8, %lo(face_shape_801A87F8+4)($at)
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80198664:
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1410)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x1410)($at)
	lwc1    $f4, 0x0020($a0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a0)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1414)
	lwc1    $f16, %lo(_face_shape_bss-0x11E0+0x1414)($at)
	lwc1    $f10, 0x0024($a0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($a0)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1418)
	lwc1    $f6, %lo(_face_shape_bss-0x11E0+0x1418)($at)
	lwc1    $f4, 0x0028($a0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($a0)
	lui     $at, %hi(face_shape_801A87F8+4)
	lwc1    $f10, 0x0020($a0)
	lwc1    $f19, %lo(face_shape_801A87F8+0)($at)
	lwc1    $f18, %lo(face_shape_801A87F8+4)($at)
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0020($a0)
	lui     $at, %hi(face_shape_801A87F8+4)
	lwc1    $f8, 0x0024($a0)
	lwc1    $f17, %lo(face_shape_801A87F8+0)($at)
	lwc1    $f16, %lo(face_shape_801A87F8+4)($at)
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0024($a0)
	lui     $at, %hi(face_shape_801A87F8+4)
	lwc1    $f6, 0x0028($a0)
	lwc1    $f11, %lo(face_shape_801A87F8+0)($at)
	lwc1    $f10, %lo(face_shape_801A87F8+4)($at)
	cvt.d.s $f8, $f6
	nop
	div.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0028($a0)
	jr      $ra
	nop
	jr      $ra
	nop

face_shape_80198728:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	mtc1    $0, $f5
	mtc1    $0, $f4
	lui     $at, %hi(face_shape_801A87F8+4)
	swc1    $f5, %lo(face_shape_801A87F8+0)($at)
	swc1    $f4, %lo(face_shape_801A87F8+4)($at)
	jal     face_object_8017BDF0
	nop
	lw      $t6, 0x0030($sp)
	la.u    $a1, face_shape_80198584
	lw      $a2, 0x0020($t6)
	la.l    $a1, face_shape_80198584
	jal     face_object_8017E520
	li      $a0, 0x0100
	jal     face_object_8017BFA0
	addiu   $a0, $sp, 0x0018
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0024($sp)
	li      $at, 0x40000000
	add.s   $f10, $f6, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1410)
	cvt.s.d $f6, $f4
	swc1    $f6, %lo(_face_shape_bss-0x11E0+0x1410)($at)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0028($sp)
	li      $at, 0x40000000
	add.s   $f16, $f8, $f10
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1414)
	cvt.s.d $f8, $f6
	swc1    $f8, %lo(_face_shape_bss-0x11E0+0x1414)($at)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x40000000
	add.s   $f18, $f10, $f16
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	nop
	div.d   $f8, $f4, $f6
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1418)
	cvt.s.d $f10, $f8
	swc1    $f10, %lo(_face_shape_bss-0x11E0+0x1418)($at)
	la.u    $a0, str_face_shape_801B8AF8
	la.u    $a1, _face_shape_bss-0x11E0+0x1410
	la.l    $a1, _face_shape_bss-0x11E0+0x1410
	jal     face_math_801970CC
	la.l    $a0, str_face_shape_801B8AF8
	lw      $t7, 0x0030($sp)
	la.u    $a1, face_shape_80198664
	lw      $a2, 0x0020($t7)
	la.l    $a1, face_shape_80198664
	jal     face_object_8017E520
	li      $a0, 0x0100
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

get_3DG1_shape:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0080($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0048($sp)
	sw      $0, 0x0044($sp)
	sw      $0, 0x0040($sp)
	sw      $0, 0x003C($sp)
	jal     make_group
	move    $a0, $0
	lw      $t6, 0x0080($sp)
	nop
	sw      $v0, 0x002C($t6)
	la.u    $a0, str_face_shape_801B8AFC
	jal     imin
	la.l    $a0, str_face_shape_801B8AFC
	li.u    $a0, 0x00046500
	jal     gd_malloc
	li.l    $a0, 0x00046500
	sw      $v0, 0x0034($sp)
	li.u    $a0, 0x0004A380
	jal     gd_malloc
	li.l    $a0, 0x0004A380
	sw      $v0, 0x0038($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x006C($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0070($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0074($sp)
	jal     face_shape_80197BD4
	nop
	jal     getint
	addiu   $a0, $sp, 0x0060
	bnez    $v0, 43$
	nop
	la.u    $a0, str_face_shape_801B8B0C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B0C
43$:
	jal     face_shape_80197BD4
	nop
	jal     face_shape_80197CC4
	nop
	beqz    $v0, 116$
	nop
49$:
	jal     getfloat
	addiu   $a0, $sp, 0x0050
	addiu   $a0, $sp, 0x0050
	jal     getfloat
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0050
	jal     getfloat
	addiu   $a0, $a0, 0x0008
	lwc1    $f12, 0x0050($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0058($sp)
	jal     face_shape_8019764C
	nop
	lw      $t8, 0x0044($sp)
	lw      $t7, 0x0034($sp)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $v0, 0x0000($t0)
	lw      $t1, 0x0048($sp)
	nop
	bnez    $t1, 78$
	nop
	lw      $t3, 0x0044($sp)
	lw      $t2, 0x0034($sp)
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	lw      $t6, 0x0000($t5)
	nop
	sw      $t6, 0x0048($sp)
78$:
	lw      $t7, 0x0044($sp)
	lw      $t8, 0x0034($sp)
	sll     $t9, $t7, 2
	addu    $t0, $t8, $t9
	lw      $a0, 0x0000($t0)
	jal     face_shape_801981BC
	nop
	lw      $t1, 0x0044($sp)
	nop
	addiu   $t3, $t1, 0x0001
	sw      $t3, 0x0044($sp)
	lw      $t2, 0x0044($sp)
	nop
	slti    $at, $t2, 0x0FA0
	bnez    $at, 97$
	nop
	la.u    $a0, str_face_shape_801B8B28
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B28
97$:
	lw      $t4, 0x0080($sp)
	nop
	lw      $t5, 0x0038($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($t4)
	jal     face_shape_80197B14
	nop
	lw      $t7, 0x0060($sp)
	nop
	addiu   $t8, $t7, -0x0001
	bnez    $t8, 112$
	sw      $t8, 0x0060($sp)
	b       116$
	nop
112$:
	jal     face_shape_80197CC4
	nop
	bnez    $v0, 49$
	nop
116$:
	jal     face_shape_80197CC4
	nop
	beqz    $v0, 291$
	nop
120$:
	jal     getint
	addiu   $a0, $sp, 0x005C
	bnez    $v0, 127$
	nop
	la.u    $a0, str_face_shape_801B8B48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B48
127$:
	lw      $t9, 0x0080($sp)
	lwc1    $f10, 0x0074($sp)
	lw      $a2, 0x006C($sp)
	lw      $a3, 0x0070($sp)
	lw      $a0, 0x002C($t9)
	move    $a1, $0
	jal     face_shape_801991F4
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     face_shape_80197810
	nop
	sw      $v0, 0x004C($sp)
	lw      $t0, 0x0040($sp)
	nop
	bnez    $t0, 147$
	nop
	lw      $t1, 0x004C($sp)
	nop
	sw      $t1, 0x0040($sp)
147$:
	lw      $t5, 0x003C($sp)
	lw      $t2, 0x0038($sp)
	lw      $t3, 0x004C($sp)
	sll     $t6, $t5, 2
	addu    $t4, $t2, $t6
	sw      $t3, 0x0000($t4)
	lw      $t7, 0x003C($sp)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	nop
	slti    $at, $t9, 0x0FA0
	bnez    $at, 165$
	nop
	la.u    $a0, str_face_shape_801B8B6C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B6C
165$:
	sw      $0, 0x0068($sp)
	jal     face_shape_80197B44
	nop
	beqz    $v0, 215$
	nop
170$:
	jal     getint
	addiu   $a0, $sp, 0x0064
	lw      $t0, 0x0068($sp)
	nop
	slti    $at, $t0, 0x0004
	bnez    $at, 181$
	nop
	la.u    $a0, str_face_shape_801B8B8C
	lw      $a1, 0x0068($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8B8C
181$:
	lw      $t5, 0x0064($sp)
	lw      $t1, 0x0034($sp)
	lw      $t7, 0x0068($sp)
	sll     $t2, $t5, 2
	lw      $t4, 0x004C($sp)
	addu    $t6, $t1, $t2
	lw      $t3, 0x0000($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t4, $t8
	sw      $t3, 0x0034($t9)
	lw      $t0, 0x0068($sp)
	nop
	addiu   $t5, $t0, 0x0001
	sw      $t5, 0x0068($sp)
	jal     face_shape_80197B44
	nop
	sll     $s0, $v0, 24
	sra     $t1, $s0, 24
	move    $s0, $t1
	jal     face_shape_80197C54
	move    $a0, $s0
	bnez    $v0, 209$
	nop
	lw      $t2, 0x005C($sp)
	nop
	addiu   $t6, $t2, -0x0001
	bnez    $t6, 211$
	sw      $t6, 0x005C($sp)
209$:
	b       215$
	nop
211$:
	jal     face_shape_80197B44
	nop
	bnez    $v0, 170$
	nop
215$:
	lw      $t7, 0x0068($sp)
	lw      $t4, 0x004C($sp)
	nop
	sw      $t7, 0x0030($t4)
	lw      $t8, 0x004C($sp)
	nop
	lw      $t3, 0x0030($t8)
	nop
	slti    $at, $t3, 0x0004
	bnez    $at, 231$
	nop
	lw      $t9, 0x004C($sp)
	la.u    $a0, str_face_shape_801B8BAC
	lw      $a1, 0x0030($t9)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BAC
231$:
	lw      $a0, 0x004C($sp)
	jal     calc_facenormal
	nop
	lw      $t0, 0x004C($sp)
	mtc1    $0, $f18
	lwc1    $f16, 0x0024($t0)
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    246$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	b       249$
	swc1    $f4, 0x006C($sp)
246$:
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x006C($sp)
249$:
	lw      $t5, 0x004C($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0028($t5)
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    261$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	b       264$
	swc1    $f16, 0x0070($sp)
261$:
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0070($sp)
264$:
	lw      $t1, 0x004C($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x002C($t1)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    276$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	b       279$
	swc1    $f8, 0x0074($sp)
276$:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0074($sp)
279$:
	lw      $t2, 0x0080($sp)
	nop
	lw      $t6, 0x0034($t2)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0034($t2)
	jal     face_shape_80197B14
	nop
	jal     face_shape_80197CC4
	nop
	bnez    $v0, 120$
	nop
291$:
	lw      $a0, 0x0034($sp)
	jal     gd_free
	nop
	lw      $a0, 0x0038($sp)
	jal     gd_free
	nop
	lw      $a1, 0x0048($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t4, 0x0080($sp)
	nop
	sw      $v0, 0x0020($t4)
	lw      $a1, 0x0040($sp)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t8, 0x0080($sp)
	nop
	sw      $v0, 0x001C($t8)
	jal     imout
	nop
	b       315$
	nop
315$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

face_shape_80198D40:
	addiu   $sp, $sp, -0x7D58
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x7D58($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x002C($sp)
	sw      $0, 0x0028($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x7D48($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x7D4C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x7D50($sp)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1328)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1328)($at)
	jal     face_shape_80197CC4
	nop
	beqz    $v0, 205$
	nop
25$:
	jal     face_shape_80197B70
	nop
	move    $s0, $v0
	li      $at, 0x0023
	beq     $s0, $at, 195$
	nop
	li      $at, 0x0066
	beq     $s0, $at, 87$
	nop
	li      $at, 0x0067
	beq     $s0, $at, 193$
	nop
	li      $at, 0x0076
	beq     $s0, $at, 42$
	nop
	b       197$
	nop
42$:
	jal     getfloat
	addiu   $a0, $sp, 0x7D34
	addiu   $a0, $sp, 0x7D34
	jal     getfloat
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x7D34
	jal     getfloat
	addiu   $a0, $a0, 0x0008
	lwc1    $f12, 0x7D34($sp)
	lwc1    $f14, 0x7D38($sp)
	lw      $a2, 0x7D3C($sp)
	jal     face_shape_8019764C
	nop
	lw      $t6, 0x0028($sp)
	nop
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	sw      $v0, 0x3EB0($t8)
	lw      $t9, 0x0028($sp)
	nop
	sll     $t0, $t9, 2
	addu    $a0, $sp, $t0
	lw      $a0, 0x3EB0($a0)
	jal     face_shape_801981BC
	nop
	lw      $t1, 0x0028($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	nop
	slti    $at, $t3, 0x0FA0
	bnez    $at, 79$
	nop
	la.u    $a0, str_face_shape_801B8BCC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BCC
79$:
	lw      $t4, 0x7D58($sp)
	nop
	lw      $t5, 0x0038($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0038($t4)
	b       199$
	nop
87$:
	lwc1    $f12, 0x7D48($sp)
	lwc1    $f14, 0x7D4C($sp)
	lw      $a2, 0x7D50($sp)
	jal     make_face
	nop
	sw      $v0, 0x7D30($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x7D30($sp)
	sll     $t9, $t8, 2
	addu    $t0, $sp, $t9
	sw      $t7, 0x0030($t0)
	lw      $t1, 0x002C($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x002C($sp)
	lw      $t3, 0x002C($sp)
	nop
	slti    $at, $t3, 0x0FA0
	bnez    $at, 110$
	nop
	la.u    $a0, str_face_shape_801B8BEC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8BEC
110$:
	sw      $0, 0x7D44($sp)
	jal     face_shape_80197B44
	nop
	beqz    $v0, 154$
	nop
115$:
	jal     getint
	addiu   $a0, $sp, 0x7D40
	lw      $t5, 0x7D44($sp)
	nop
	slti    $at, $t5, 0x0004
	bnez    $at, 126$
	nop
	la.u    $a0, str_face_shape_801B8C0C
	lw      $a1, 0x7D44($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C0C
126$:
	lw      $t6, 0x7D40($sp)
	lw      $t9, 0x7D44($sp)
	sll     $t4, $t6, 2
	lw      $t7, 0x7D30($sp)
	addu    $t8, $sp, $t4
	lw      $t8, 0x3EAC($t8)
	sll     $t0, $t9, 2
	addu    $t1, $t7, $t0
	sw      $t8, 0x0034($t1)
	lw      $t2, 0x7D44($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x7D44($sp)
	jal     face_shape_80197B44
	nop
	sll     $s1, $v0, 24
	sra     $t5, $s1, 24
	move    $s1, $t5
	jal     face_shape_80197C54
	move    $a0, $s1
	beqz    $v0, 150$
	nop
	b       154$
	nop
150$:
	jal     face_shape_80197B44
	nop
	bnez    $v0, 115$
	nop
154$:
	lwc1    $f10, 0x7D48($sp)
	lw      $t6, 0x7D30($sp)
	nop
	swc1    $f10, 0x0014($t6)
	lwc1    $f16, 0x7D4C($sp)
	lw      $t4, 0x7D30($sp)
	nop
	swc1    $f16, 0x0018($t4)
	lwc1    $f18, 0x7D50($sp)
	lw      $t9, 0x7D30($sp)
	nop
	swc1    $f18, 0x001C($t9)
	lw      $t7, 0x7D44($sp)
	lw      $t0, 0x7D30($sp)
	nop
	sw      $t7, 0x0030($t0)
	lw      $t8, 0x7D30($sp)
	nop
	lw      $t1, 0x0030($t8)
	nop
	slti    $at, $t1, 0x0004
	bnez    $at, 182$
	nop
	lw      $t2, 0x7D30($sp)
	la.u    $a0, str_face_shape_801B8C2C
	lw      $a1, 0x0030($t2)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C2C
182$:
	lw      $a0, 0x7D30($sp)
	jal     calc_facenormal
	nop
	lw      $t3, 0x7D58($sp)
	nop
	lw      $t5, 0x0034($t3)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0034($t3)
	b       199$
	nop
193$:
	b       199$
	nop
195$:
	b       199$
	nop
197$:
	b       199$
	nop
199$:
	jal     face_shape_80197B14
	nop
	jal     face_shape_80197CC4
	nop
	bnez    $v0, 25$
	nop
205$:
	addiu   $t4, $sp, 0x3EB0
	lw      $a1, 0x0000($t4)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t9, 0x7D58($sp)
	nop
	sw      $v0, 0x0020($t9)
	addiu   $t7, $sp, 0x0030
	lw      $a1, 0x0000($t7)
	li      $a0, 0x0080
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t0, 0x7D58($sp)
	nop
	sw      $v0, 0x001C($t0)
	b       223$
	nop
223$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x7D58

face_shape_801990D0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $s0, 0x0018($sp)
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, 64$
	nop
15$:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x003C($sp)
	nop
	sw      $t9, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	nop
	beqz    $t0, 60$
	nop
28$:
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0040($sp)
	nop
	bne     $t1, $t2, 35$
	nop
	b       60$
	nop
35$:
	lw      $t3, 0x002C($sp)
	li      $at, 0x0080
	lw      $t4, 0x000C($t3)
	nop
	bne     $t4, $at, 51$
	nop
	lw      $t5, 0x002C($sp)
	lw      $t7, 0x0034($sp)
	lw      $t6, 0x0048($t5)
	nop
	bne     $t6, $t7, 51$
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
51$:
	lw      $t8, 0x002C($sp)
	nop
	lw      $t9, 0x0000($t8)
	nop
	sw      $t9, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	nop
	bnez    $t0, 28$
	nop
60$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 15$
	nop
64$:
	lw      $v0, 0x0030($sp)
	b       69$
	nop
	b       69$
	nop
69$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0038

face_shape_801991F4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, 53$
	nop
13$:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0800
	lw      $t9, 0x000C($t8)
	nop
	bne     $t9, $at, 49$
	nop
	lw      $t0, 0x0024($sp)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f4, 0x003C($t0)
	nop
	c.eq.s  $f4, $f6
	nop
	bc1f    49$
	nop
	lw      $t1, 0x0024($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f8, 0x0040($t1)
	nop
	c.eq.s  $f8, $f10
	nop
	bc1f    49$
	nop
	lw      $t2, 0x0024($sp)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f16, 0x0044($t2)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    49$
	nop
	lw      $v0, 0x0024($sp)
	b       75$
	nop
49$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 13$
	nop
53$:
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0001
	sw      $v0, 0x002C($sp)
	lw      $a0, 0x002C($sp)
	jal     face_dynlist_80186C84
	nop
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     dSetDiffuse
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
	lw      $v0, 0x002C($sp)
	b       75$
	nop
	b       75$
	nop
75$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_shape_80199330:
	addiu   $sp, $sp, -0x00D8
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x00D8($sp)
	sw      $a1, 0x00DC($sp)
	sw      $s0, 0x0020($sp)
	sw      $0, 0x0040($sp)
	sw      $0, 0x0038($sp)
	sw      $0, 0x0030($sp)
	sw      $0, 0x002C($sp)
	jal     make_group
	move    $a0, $0
	lw      $t6, 0x00D8($sp)
	nop
	sw      $v0, 0x002C($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0048($sp)
	li      $at, 0x3F000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0050($sp)
	lw      $a0, 0x00DC($sp)
	la.u    $a1, str_face_shape_801B8C4C
	jal     gd_fopen
	la.l    $a1, str_face_shape_801B8C4C
	lui     $at, %hi(_face_shape_bss-0x11E0+0x132C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x132C)($at)
	lui     $t7, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $t7, %lo(_face_shape_bss-0x11E0+0x132C)($t7)
	nop
	bnez    $t7, 41$
	nop
	la.u    $a0, str_face_shape_801B8C50
	lw      $a1, 0x00DC($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C50
41$:
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x132C)($a3)
	addiu   $a0, $sp, 0x0090
	li      $a1, 0x0048
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	addiu   $a0, $sp, 0x0090
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x0040
	addiu   $a0, $sp, 0x0090
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x0044
	lw      $t8, 0x00D0($sp)
	nop
	slt     $s0, $0, $t8
	addiu   $t9, $t8, -0x0001
	beqz    $s0, 259$
	sw      $t9, 0x00D0($sp)
59$:
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x132C)($a3)
	addiu   $a0, $sp, 0x0080
	li      $a1, 0x0010
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	jal     face_gfx_801A5B00
	addiu   $a0, $sp, 0x0080
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $t0, $sp, 0x0080
	lwc1    $f10, 0x0000($t0)
	nop
	swc1    $f10, 0x0048($sp)
	addiu   $t1, $sp, 0x0080
	lwc1    $f16, 0x0004($t1)
	nop
	swc1    $f16, 0x004C($sp)
	addiu   $t2, $sp, 0x0080
	lwc1    $f18, 0x0008($t2)
	nop
	swc1    $f18, 0x0050($sp)
	lw      $t3, 0x00D8($sp)
	lwc1    $f4, 0x0050($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	lw      $a0, 0x002C($t3)
	move    $a1, $0
	jal     face_shape_801991F4
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0034($sp)
	addiu   $a0, $sp, 0x0080
	jal     face_gfx_801A5AD8
	addiu   $a0, $a0, 0x000C
	lw      $t4, 0x008C($sp)
	nop
	slt     $s0, $0, $t4
	addiu   $t5, $t4, -0x0001
	beqz    $s0, 253$
	sw      $t5, 0x008C($sp)
103$:
	lw      $t6, 0x00D8($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0034($t6)
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x132C)($a3)
	addiu   $a0, $sp, 0x0070
	li      $a1, 0x0010
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $a0, $sp, 0x0070
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x000C
	lw      $a0, 0x0034($sp)
	jal     face_shape_80197810
	nop
	sw      $v0, 0x0044($sp)
	lw      $t9, 0x0040($sp)
	nop
	bnez    $t9, 135$
	nop
	lw      $t0, 0x0044($sp)
	nop
	sw      $t0, 0x0040($sp)
135$:
	jal     face_gfx_801A5AD8
	addiu   $a0, $sp, 0x0070
	lw      $t1, 0x0070($sp)
	nop
	slti    $at, $t1, 0x0004
	bnez    $at, 162$
	nop
	lw      $t2, 0x0070($sp)
	nop
	slt     $s0, $0, $t2
	addiu   $t3, $t2, -0x0001
	beqz    $s0, 160$
	sw      $t3, 0x0070($sp)
148$:
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x132C)($a3)
	addiu   $a0, $sp, 0x0058
	li      $a1, 0x0018
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	lw      $t4, 0x0070($sp)
	nop
	slt     $s0, $0, $t4
	addiu   $t5, $t4, -0x0001
	bnez    $s0, 148$
	sw      $t5, 0x0070($sp)
160$:
	b       247$
	nop
162$:
	lw      $t7, 0x0070($sp)
	nop
	slt     $s0, $0, $t7
	addiu   $t8, $t7, -0x0001
	beqz    $s0, 244$
	sw      $t8, 0x0070($sp)
168$:
	lw      $t6, 0x00D8($sp)
	nop
	lw      $t9, 0x0038($t6)
	nop
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0038($t6)
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x132C)($a3)
	addiu   $a0, $sp, 0x0058
	li      $a1, 0x0018
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	jal     face_gfx_801A5B00
	addiu   $a0, $sp, 0x0058
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0004
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0008
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x000C
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0010
	addiu   $a0, $sp, 0x0058
	jal     face_gfx_801A5B00
	addiu   $a0, $a0, 0x0014
	jal     face_shape_80198228
	addiu   $a0, $sp, 0x0058
	addiu   $t1, $sp, 0x0058
	lwc1    $f12, 0x0000($t1)
	lwc1    $f14, 0x0004($t1)
	lw      $a2, 0x0008($t1)
	jal     face_shape_8019764C
	nop
	sw      $v0, 0x003C($sp)
	lw      $t2, 0x0044($sp)
	nop
	lw      $t3, 0x0030($t2)
	nop
	slti    $at, $t3, 0x0004
	bnez    $at, 218$
	nop
	lw      $t4, 0x0044($sp)
	la.u    $a0, str_face_shape_801B8C68
	lw      $a1, 0x0030($t4)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8C68
218$:
	lw      $t7, 0x0044($sp)
	lw      $t5, 0x003C($sp)
	lw      $t8, 0x0030($t7)
	nop
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $t5, 0x0034($t0)
	lw      $t6, 0x0044($sp)
	nop
	lw      $t1, 0x0030($t6)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0030($t6)
	lw      $t3, 0x0038($sp)
	nop
	bnez    $t3, 238$
	nop
	lw      $t4, 0x003C($sp)
	nop
	sw      $t4, 0x0038($sp)
238$:
	lw      $t8, 0x0070($sp)
	nop
	slt     $s0, $0, $t8
	addiu   $t7, $t8, -0x0001
	bnez    $s0, 168$
	sw      $t7, 0x0070($sp)
244$:
	lw      $a0, 0x0044($sp)
	jal     calc_facenormal
	nop
247$:
	lw      $t9, 0x008C($sp)
	nop
	slt     $s0, $0, $t9
	addiu   $t5, $t9, -0x0001
	bnez    $s0, 103$
	sw      $t5, 0x008C($sp)
253$:
	lw      $t0, 0x00D0($sp)
	nop
	slt     $s0, $0, $t0
	addiu   $t1, $t0, -0x0001
	bnez    $s0, 59$
	sw      $t1, 0x00D0($sp)
259$:
	lw      $a1, 0x0038($sp)
	li      $a0, 0x0100
	jal     face_object_8017D76C
	move    $a2, $0
	lw      $t2, 0x00D8($sp)
	nop
	sw      $v0, 0x0020($t2)
	lw      $t6, 0x00D8($sp)
	lw      $a1, 0x0040($sp)
	lw      $a0, 0x002C($t6)
	jal     face_shape_801990D0
	move    $a2, $0
	lw      $t3, 0x00D8($sp)
	nop
	sw      $v0, 0x001C($t3)
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x132C)($a0)
	jal     face_stdio_8018E4A8
	nop
	b       280$
	nop
280$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00D8

face_shape_801997A0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018C44C
	nop
	lw      $t6, 0x0018($sp)
	nop
	sw      $0, 0x003C($t6)
	lw      $t7, 0x0018($sp)
	nop
	sw      $0, 0x0034($t7)
	lw      $t8, 0x0018($sp)
	nop
	sw      $0, 0x0038($t8)
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_shape_801B8C98
	jal     face_stdio_8018E098
	la.l    $a1, str_face_shape_801B8C98
	beqz    $v0, 28$
	nop
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	jal     face_shape_80199330
	nop
	b       69$
	nop
28$:
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_shape_801B8CA0
	jal     gd_fopen
	la.l    $a1, str_face_shape_801B8CA0
	lui     $at, %hi(_face_shape_bss-0x11E0+0x132C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x132C)($at)
	lui     $t9, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $t9, %lo(_face_shape_bss-0x11E0+0x132C)($t9)
	nop
	bnez    $t9, 43$
	nop
	la.u    $a0, str_face_shape_801B8CA4
	lw      $a1, 0x001C($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8CA4
43$:
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1328)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1328)($at)
	lui     $t0, %hi(_face_shape_bss-0x11E0+0x1328)
	lw      $t0, %lo(_face_shape_bss-0x11E0+0x1328)($t0)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1228)
	addu    $at, $at, $t0
	sb      $0, %lo(_face_shape_bss-0x11E0+0x1228)($at)
	jal     face_shape_80197BD4
	nop
	la.u    $a0, str_face_shape_801B8CBC
	jal     face_shape_80197DB0
	la.l    $a0, str_face_shape_801B8CBC
	beqz    $v0, 62$
	nop
	lw      $a0, 0x0018($sp)
	jal     get_3DG1_shape
	nop
	b       65$
	nop
62$:
	lw      $a0, 0x0018($sp)
	jal     face_shape_80198D40
	nop
65$:
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x132C)($a0)
	jal     face_stdio_8018E4A8
	nop
69$:
	lw      $a0, 0x001C($sp)
	jal     face_stdio_8018C598
	nop
	lui     $v0, %hi(_face_shape_bss-0x11E0+0x132C)
	lw      $v0, %lo(_face_shape_bss-0x11E0+0x132C)($v0)
	b       78$
	nop
	b       78$
	nop
78$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_801998E8:
	addiu   $sp, $sp, -0x1078
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x1078($sp)
	sw      $a1, 0x107C($sp)
	sw      $a2, 0x1080($sp)
	sw      $a3, 0x1084($sp)
	sw      $0, 0x004C($sp)
	sw      $0, 0x0040($sp)
	lw      $a0, 0x107C($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x1080($sp)
	jal     face_draw_80178ED8
	nop
	sw      $v0, 0x002C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0001
	sw      $v0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t6, 0x0030($sp)
	nop
	lwc1    $f12, 0x0000($t6)
	lwc1    $f14, 0x0004($t6)
	lw      $a2, 0x0008($t6)
	jal     dSetDiffuse
	nop
	lw      $t8, 0x0028($sp)
	li      $t7, 0x0040
	sw      $t7, 0x0028($t8)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D22C
	li      $a2, 0x0002
	sw      $v0, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t9, 0x002C($sp)
	nop
	lwc1    $f12, 0x0000($t9)
	lwc1    $f14, 0x0004($t9)
	lw      $a2, 0x0008($t9)
	jal     dSetDiffuse
	nop
	lw      $t1, 0x0024($sp)
	li      $t0, 0x0040
	sw      $t0, 0x0028($t1)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	jal     make_group
	li      $a0, 0x0002
	sw      $v0, 0x0034($sp)
	la.u    $a1, str_face_shape_801B8CEC
	la.l    $a1, str_face_shape_801B8CEC
	jal     face_shape_8019797C
	move    $a0, $0
	sw      $v0, 0x0048($sp)
	lw      $t2, 0x0048($sp)
	nop
	sw      $0, 0x0034($t2)
	lw      $t3, 0x0048($sp)
	nop
	sw      $0, 0x0038($t3)
	lw      $t4, 0x1084($sp)
	li      $at, 0x40000000
	mtc1    $t4, $f6
	mtc1    $at, $f5
	cvt.d.w $f8, $f6
	mtc1    $0, $f4
	nop
	div.d   $f10, $f4, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0044($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x005C($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x006C($sp)
	li      $at, 0xBF800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0070($sp)
	lw      $t5, 0x1088($sp)
	sw      $0, 0x0050($sp)
	bltz    $t5, 205$
	nop
93$:
	lwc1    $f8, 0x005C($sp)
	nop
	swc1    $f8, 0x0068($sp)
	lw      $t6, 0x1084($sp)
	sw      $0, 0x0054($sp)
	bltz    $t6, 194$
	nop
100$:
	lw      $t7, 0x0048($sp)
	nop
	lw      $t8, 0x0038($t7)
	nop
	addiu   $t9, $t8, 0x0001
	sw      $t9, 0x0038($t7)
	lw      $t0, 0x1078($sp)
	li      $at, 0x0100
	bne     $t0, $at, 123$
	nop
	lwc1    $f12, 0x0068($sp)
	lwc1    $f14, 0x006C($sp)
	lw      $a2, 0x0070($sp)
	jal     face_shape_8019764C
	nop
	lw      $t1, 0x0054($sp)
	lw      $t3, 0x0050($sp)
	sll     $t2, $t1, 7
	sll     $t4, $t3, 2
	addu    $t5, $t2, $t4
	addu    $t6, $sp, $t5
	b       183$
	sw      $v0, 0x0074($t6)
123$:
	lw      $t8, 0x1078($sp)
	li      $at, 0x0008
	bne     $t8, $at, 183$
	nop
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x006C($sp)
	lwc1    $f6, 0x0070($sp)
	add.s   $f18, $f10, $f16
	lw      $a2, 0x0068($sp)
	mfc1    $a3, $f18
	move    $a0, $0
	move    $a1, $0
	jal     face_particle_80182630
	swc1    $f6, 0x0010($sp)
	lw      $t9, 0x0054($sp)
	lw      $t0, 0x0050($sp)
	sll     $t7, $t9, 7
	sll     $t1, $t0, 2
	addu    $t3, $t7, $t1
	addu    $t2, $sp, $t3
	sw      $v0, 0x0074($t2)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	lwc1    $f4, 0x0068($sp)
	mtc1    $0, $f10
	li      $at, 0x40000000
	cvt.d.s $f8, $f4
	mtc1    $at, $f19
	mtc1    $0, $f18
	add.d   $f16, $f8, $f10
	lw      $t4, 0x0054($sp)
	div.d   $f6, $f16, $f18
	lw      $t6, 0x0050($sp)
	sll     $t5, $t4, 7
	sll     $t8, $t6, 2
	addu    $t9, $t5, $t8
	addu    $t0, $sp, $t9
	lw      $t0, 0x0074($t0)
	cvt.s.d $f4, $f6
	swc1    $f4, 0x0044($t0)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	lwc1    $f8, 0x0070($sp)
	mtc1    $0, $f16
	li      $at, 0x40000000
	cvt.d.s $f10, $f8
	mtc1    $at, $f7
	mtc1    $0, $f6
	add.d   $f18, $f10, $f16
	lw      $t7, 0x0054($sp)
	div.d   $f4, $f18, $f6
	lw      $t3, 0x0050($sp)
	sll     $t1, $t7, 7
	sll     $t2, $t3, 2
	addu    $t4, $t1, $t2
	addu    $t6, $sp, $t4
	lw      $t6, 0x0074($t6)
	cvt.s.d $f8, $f4
	swc1    $f8, 0x0048($t6)
183$:
	lwc1    $f10, 0x0068($sp)
	lwc1    $f16, 0x0044($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0068($sp)
	lw      $t5, 0x0054($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t8, $t5, 0x0001
	slt     $at, $t9, $t8
	beqz    $at, 100$
	sw      $t8, 0x0054($sp)
194$:
	lwc1    $f6, 0x0070($sp)
	lwc1    $f4, 0x0044($sp)
	nop
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x0070($sp)
	lw      $t0, 0x0050($sp)
	lw      $t3, 0x1088($sp)
	addiu   $t7, $t0, 0x0001
	slt     $at, $t3, $t7
	beqz    $at, 93$
	sw      $t7, 0x0050($sp)
205$:
	lw      $t1, 0x1088($sp)
	sw      $0, 0x0050($sp)
	blez    $t1, 320$
	nop
209$:
	lw      $t2, 0x1084($sp)
	sw      $0, 0x0054($sp)
	blez    $t2, 314$
	nop
213$:
	lw      $t4, 0x0048($sp)
	nop
	lw      $t6, 0x0034($t4)
	nop
	addiu   $t5, $t6, 0x0002
	sw      $t5, 0x0034($t4)
	lw      $t8, 0x107C($sp)
	lw      $t9, 0x1080($sp)
	nop
	beq     $t8, $t9, 254$
	nop
	lw      $t0, 0x0054($sp)
	lw      $t7, 0x0050($sp)
	nop
	addu    $t3, $t0, $t7
	andi    $t1, $t3, 0x0001
	beqz    $t1, 242$
	nop
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x137C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x137C)($at)
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1380)
	b       252$
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x1380)($at)
242$:
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x137C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x137C)($at)
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1380)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x1380)($at)
252$:
	b       264$
	nop
254$:
	lw      $a0, 0x0028($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x137C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x137C)($at)
	lw      $a0, 0x0024($sp)
	jal     face_shape_80197810
	nop
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1380)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x1380)($at)
264$:
	lw      $t2, 0x0040($sp)
	nop
	bnez    $t2, 272$
	nop
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x137C)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x137C)($t6)
	nop
	sw      $t6, 0x0040($sp)
272$:
	lw      $t5, 0x0054($sp)
	lw      $t8, 0x0050($sp)
	sll     $t4, $t5, 7
	sll     $t9, $t8, 2
	addiu   $t7, $sp, 0x0074
	addu    $t0, $t4, $t9
	addu    $t1, $t4, $t9
	addu    $t6, $t4, $t9
	addu    $t5, $t6, $t7
	addu    $t2, $t1, $t7
	addu    $t3, $t0, $t7
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x137C)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x137C)($a0)
	lw      $a1, 0x0004($t3)
	lw      $a2, 0x0084($t2)
	lw      $a3, 0x0000($t5)
	jal     face_shape_80197904
	nop
	lw      $t8, 0x0054($sp)
	lw      $t3, 0x0050($sp)
	sll     $t0, $t8, 7
	sll     $t1, $t3, 2
	addiu   $t4, $sp, 0x0074
	addu    $t2, $t0, $t1
	addu    $t6, $t0, $t1
	addu    $t5, $t0, $t1
	addu    $t8, $t5, $t4
	addu    $t7, $t6, $t4
	addu    $t9, $t2, $t4
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x1380)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x1380)($a0)
	lw      $a1, 0x0084($t9)
	lw      $a2, 0x0080($t7)
	lw      $a3, 0x0000($t8)
	jal     face_shape_80197904
	nop
	lw      $t3, 0x0054($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t2, $t3, 0x0001
	slt     $at, $t2, $t9
	bnez    $at, 213$
	sw      $t2, 0x0054($sp)
314$:
	lw      $t6, 0x0050($sp)
	lw      $t0, 0x1088($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t0
	bnez    $at, 209$
	sw      $t7, 0x0050($sp)
320$:
	lw      $t1, 0x1078($sp)
	li      $at, 0x0008
	bne     $t1, $at, 392$
	nop
	lw      $t5, 0x1084($sp)
	sw      $0, 0x0058($sp)
	bltz    $t5, 358$
	nop
328$:
	lw      $t4, 0x0058($sp)
	nop
	sll     $t8, $t4, 7
	addu    $t3, $sp, $t8
	lw      $t3, 0x0074($t3)
	nop
	lw      $t2, 0x0054($t3)
	nop
	ori     $t9, $t2, 0x0002
	sw      $t9, 0x0054($t3)
	lw      $t6, 0x0058($sp)
	lw      $t0, 0x1088($sp)
	sll     $t7, $t6, 7
	sll     $t1, $t0, 2
	addu    $t5, $t7, $t1
	addiu   $t4, $sp, 0x0074
	addu    $t8, $t5, $t4
	lw      $t2, 0x0000($t8)
	addu    $t6, $t7, $t1
	lw      $t9, 0x0054($t2)
	addu    $t0, $t6, $t4
	lw      $t5, 0x0000($t0)
	ori     $t3, $t9, 0x0002
	sw      $t3, 0x0054($t5)
	lw      $t8, 0x0058($sp)
	lw      $t9, 0x1084($sp)
	addiu   $t2, $t8, 0x0001
	slt     $at, $t9, $t2
	beqz    $at, 328$
	sw      $t2, 0x0058($sp)
358$:
	lw      $t7, 0x1088($sp)
	sw      $0, 0x0058($sp)
	bltz    $t7, 392$
	nop
362$:
	lw      $t1, 0x0058($sp)
	nop
	sll     $t6, $t1, 2
	addu    $t4, $sp, $t6
	lw      $t4, 0x0074($t4)
	nop
	lw      $t0, 0x0054($t4)
	nop
	ori     $t3, $t0, 0x0002
	sw      $t3, 0x0054($t4)
	lw      $t5, 0x1084($sp)
	lw      $t2, 0x0058($sp)
	sll     $t8, $t5, 7
	sll     $t9, $t2, 2
	addu    $t7, $t8, $t9
	addiu   $t1, $sp, 0x0074
	addu    $t6, $t7, $t1
	lw      $t0, 0x0000($t6)
	addu    $t5, $t8, $t9
	lw      $t3, 0x0054($t0)
	addu    $t2, $t5, $t1
	lw      $t7, 0x0000($t2)
	ori     $t4, $t3, 0x0002
	sw      $t4, 0x0054($t7)
	lw      $t6, 0x0058($sp)
	lw      $t3, 0x1088($sp)
	addiu   $t0, $t6, 0x0001
	slt     $at, $t3, $t0
	beqz    $at, 362$
	sw      $t0, 0x0058($sp)
392$:
	addiu   $t8, $sp, 0x0074
	lw      $a1, 0x0000($t8)
	lw      $a0, 0x1078($sp)
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x003C($sp)
	lw      $t9, 0x003C($sp)
	lw      $t5, 0x0048($sp)
	nop
	sw      $t9, 0x0020($t5)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0048($sp)
	nop
	sw      $t1, 0x002C($t2)
	lw      $t4, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	lw      $a0, 0x002C($t4)
	jal     face_shape_801990D0
	move    $a2, $0
	lw      $t7, 0x0048($sp)
	nop
	sw      $v0, 0x001C($t7)
	lw      $v0, 0x0048($sp)
	b       419$
	nop
	b       419$
	nop
419$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x1078
	jr      $ra
	nop

face_shape_80199F84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     make_group
	li      $a0, 0x0002
	sw      $v0, 0x001C($sp)
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_shape_80199FC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a1, 0x0018($sp)
	jal     face_object_8017CF7C
	move    $a0, $0
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1354)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x1354)($at)
	lui     $t6, %hi(_face_shape_bss-0x11E0+0x1358)
	lw      $t6, %lo(_face_shape_bss-0x11E0+0x1358)($t6)
	nop
	bnez    $t6, 17$
	nop
	lui     $t7, %hi(_face_shape_bss-0x11E0+0x1354)
	lw      $t7, %lo(_face_shape_bss-0x11E0+0x1354)($t7)
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1358)
	sw      $t7, %lo(_face_shape_bss-0x11E0+0x1358)($at)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl make_netfromshape
make_netfromshape:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	bnez    $t6, 10$
	nop
	la.u    $a0, str_face_shape_801B8D10
	jal     face_stdio_8018D298
	la.l    $a0, str_face_shape_801B8D10
10$:
	lui     $at, %hi(_face_shape_bss-0x11E0+0x1358)
	sw      $0, %lo(_face_shape_bss-0x11E0+0x1358)($at)
	lw      $t7, 0x0028($sp)
	la.u    $a1, face_shape_80199FC8
	lw      $a2, 0x001C($t7)
	la.l    $a1, face_shape_80199FC8
	jal     face_object_8017E520
	li      $a0, 0x0080
	lui     $a1, %hi(_face_shape_bss-0x11E0+0x1358)
	lw      $a1, %lo(_face_shape_bss-0x11E0+0x1358)($a1)
	li      $a0, 0x0040
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_shape_bss-0x11E0+0x13E8)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x13E8)($at)
	lw      $t8, 0x0028($sp)
	lui     $a3, %hi(_face_shape_bss-0x11E0+0x13E8)
	lw      $t9, 0x0020($t8)
	lw      $a3, %lo(_face_shape_bss-0x11E0+0x13E8)($a3)
	move    $a0, $0
	move    $a2, $0
	move    $a1, $t8
	jal     face_net_801924F4
	sw      $t9, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x0001
	sw      $t0, 0x01EC($t1)
	lw      $v0, 0x0024($sp)
	b       43$
	nop
	b       43$
	nop
43$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_shape_8019A0E0
face_shape_8019A0E0:
	addiu   $sp, $sp, -0x0008
	lw      $a1, 0x004C($a0)
	nop
	beqz    $a1, 10$
	nop
	li      $at, 0x0001
	beq     $a1, $at, 20$
	nop
	b       46$
	nop
10$:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t6, 0x0001
	sw      $t6, 0x0020($a0)
	li      $t7, 0x0001
	sw      $t7, 0x004C($a0)
	b       46$
	nop
20$:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x43260000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    44$
	nop
	li      $at, 0x428A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t8, 0x0004
	sw      $t8, 0x004C($a0)
	la.u    $t9, face_shape_8019A1A8
	la.l    $t9, face_shape_8019A1A8
	sw      $t9, 0x0048($a0)
	sw      $0, 0x0020($a0)
44$:
	b       46$
	nop
46$:
	b       48$
	nop
48$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_shape_8019A1A8
face_shape_8019A1A8:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(face_control+0xD8)
	lw      $t6, %lo(face_control+0xD8)($t6)
	nop
	srl     $t7, $t6, 31
	sw      $t7, 0x0000($sp)
	lw      $t8, 0x004C($a0)
	nop
	sltiu   $at, $t8, 0x0008
	beqz    $at, L8019A48C
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_shape_801B8DF4)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_shape_801B8DF4)($at)
	nop
	jr      $t8
	nop
.globl L8019A1F4
L8019A1F4:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	sw      $0, 0x0020($a0)
	li      $t9, 0x0002
	sw      $t9, 0x0004($sp)
	li      $t0, 0x0005
	sw      $t0, 0x0050($a0)
	b       L8019A48C
	nop
.globl L8019A220
L8019A220:
	lw      $t1, 0x0000($sp)
	nop
	beqz    $t1, 36$
	nop
	li      $t2, 0x0005
	sw      $t2, 0x0004($sp)
36$:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	lui     $at, %hi(face_shape_801B8E14)
	lwc1    $f18, %lo(face_shape_801B8E14)($at)
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    64$
	nop
	lui     $at, %hi(face_shape_801B8E18)
	lwc1    $f4, %lo(face_shape_801B8E18)($at)
	nop
	swc1    $f4, 0x0028($a0)
	lw      $t3, 0x0050($a0)
	nop
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0050($a0)
	lw      $t5, 0x0050($a0)
	nop
	bnez    $t5, 64$
	nop
	li      $t6, 0x0003
	sw      $t6, 0x0004($sp)
64$:
	b       L8019A48C
	nop
.globl L8019A2B0
L8019A2B0:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x444D0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    86$
	nop
	li      $at, 0x428A0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0028($a0)
	li      $t7, 0x0004
	sw      $t7, 0x0004($sp)
86$:
	b       L8019A48C
	nop
.globl L8019A308
L8019A308:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($a0)
	li      $at, 0x44250000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    110$
	nop
	lui     $at, %hi(face_shape_801B8E1C)
	lwc1    $f4, %lo(face_shape_801B8E1C)($at)
	nop
	swc1    $f4, 0x0028($a0)
	li      $t8, 0x0002
	sw      $t8, 0x0004($sp)
	li      $t9, 0x0005
	sw      $t9, 0x0050($a0)
110$:
	b       L8019A48C
	nop
.globl L8019A368
L8019A368:
	li      $at, 0x44250000
	mtc1    $at, $f8
	lwc1    $f6, 0x0028($a0)
	nop
	c.eq.s  $f6, $f8
	nop
	bc1f    123$
	nop
	li      $t0, 0x0007
	b       152$
	sw      $t0, 0x0004($sp)
123$:
	li      $at, 0x44250000
	mtc1    $at, $f16
	lwc1    $f10, 0x0028($a0)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    138$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0028($a0)
	nop
	sub.s   $f6, $f18, $f4
	b       152$
	swc1    $f6, 0x0028($a0)
138$:
	li      $at, 0x44250000
	mtc1    $at, $f10
	lwc1    $f8, 0x0028($a0)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    152$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0028($a0)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($a0)
152$:
	li      $t1, 0x0096
	sw      $t1, 0x0054($a0)
	b       L8019A48C
	nop
.globl L8019A418
L8019A418:
	lw      $t2, 0x0000($sp)
	nop
	beqz    $t2, 163$
	nop
	li      $t3, 0x012C
	b       173$
	sw      $t3, 0x0054($a0)
163$:
	lw      $t4, 0x0054($a0)
	nop
	addiu   $t5, $t4, -0x0001
	sw      $t5, 0x0054($a0)
	lw      $t6, 0x0054($a0)
	nop
	bnez    $t6, 173$
	nop
	li      $t7, 0x0006
	sw      $t7, 0x0004($sp)
173$:
	li      $at, 0x44250000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0028($a0)
	b       L8019A48C
	nop
.globl L8019A474
L8019A474:
	li      $t8, 0x0002
	sw      $t8, 0x0004($sp)
	li      $t9, 0x0005
	sw      $t9, 0x0050($a0)
	b       L8019A48C
	nop
.globl L8019A48C
L8019A48C:
	lw      $t0, 0x0004($sp)
	nop
	beqz    $t0, 192$
	nop
	lw      $t1, 0x0004($sp)
	nop
	sw      $t1, 0x004C($a0)
192$:
	b       194$
	nop
194$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_shape_8019A4B8
face_shape_8019A4B8:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0058($sp)
	la.u    $a0, str_face_shape_801B8D34
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_shape_801B8D34
	la.u    $a0, str_face_shape_801B8D40
	jal     face_dynlist_8018435C
	la.l    $a0, str_face_shape_801B8D40
	jal     face_dynlist_80186E5C
	li      $a0, 0x0001
	li      $a0, 0x000E
	jal     dMakeObj
	li      $a1, 0x03E9
	sw      $v0, 0x0028($sp)
	lw      $t6, 0x0058($sp)
	lw      $t7, 0x0028($sp)
	nop
	sw      $t6, 0x0048($t7)
	jal     face_dynlist_80186E5C
	move    $a0, $0
	la.u    $a0, dyn_mario
	jal     load_dynlist
	la.l    $a0, dyn_mario
	lui     $at, %hi(face_shape_801A8470)
	sw      $v0, %lo(face_shape_801A8470)($at)
	la.u    $a0, str_face_shape_801B8D44
	jal     face_stdio_8018C598
	la.l    $a0, str_face_shape_801B8D44
	li      $a0, 0x0004
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x002C($sp)
	li      $at, 0x43480000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     dSetRelPos
	li      $a2, 0x44FA0000
	li      $at, 0x43480000
	mtc1    $at, $f14
	mtc1    $0, $f12
	jal     dSetWorldPos
	li      $a2, 0x44FA0000
	jal     dSetFlags
	li      $a0, 0x0004
	mtc1    $0, $f4
	lw      $t8, 0x002C($sp)
	nop
	swc1    $f4, 0x0034($t8)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f6, 0x0038($t9)
	mtc1    $0, $f8
	lw      $t0, 0x002C($sp)
	nop
	swc1    $f8, 0x003C($t0)
	lui     $a0, %hi(face_shape_801A8470)
	lw      $a0, %lo(face_shape_801A8470)($a0)
	lw      $a1, 0x002C($sp)
	jal     addto_group
	nop
	lui     $a0, %hi(face_shape_801A8470)
	lw      $a0, %lo(face_shape_801A8470)($a0)
	lw      $a1, 0x0028($sp)
	jal     addto_group
	nop
	jal     face_dynlist_8018435C
	move    $a0, $0
	mtc1    $0, $f10
	move    $a0, $0
	li      $a1, 0x0001
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0003
	sw      $t1, 0x0060($t2)
	lw      $t4, 0x0024($sp)
	li      $t3, 0x0003
	sw      $t3, 0x0064($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x00BC($t6)
	lui     $t7, %hi(face_shape_801A8480)
	lw      $t7, %lo(face_shape_801A8480)($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x001C($t8)
	lui     $a0, %hi(_face_draw_bss-0x210+0x298)
	lw      $a0, %lo(_face_draw_bss-0x210+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	mtc1    $0, $f16
	move    $a0, $0
	li      $a1, 0x0001
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f16, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $t9, 0x0003
	sw      $t9, 0x0060($t0)
	lw      $t2, 0x0024($sp)
	li      $t1, 0x0002
	sw      $t1, 0x0064($t2)
	la.u    $a0, str_face_shape_801B8D50
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D50
	lw      $t3, 0x0024($sp)
	nop
	sw      $v0, 0x00BC($t3)
	lui     $t4, %hi(face_shape_801A8480)
	lw      $t4, %lo(face_shape_801A8480)($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t4, 0x001C($t5)
	lui     $a0, %hi(_face_draw_bss-0x210+0x298)
	lw      $a0, %lo(_face_draw_bss-0x210+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	mtc1    $0, $f18
	move    $a0, $0
	li      $a1, 0x0002
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_particle_80182630
	swc1    $f18, 0x0010($sp)
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	li      $t6, 0x0003
	sw      $t6, 0x0060($t7)
	lw      $t9, 0x0024($sp)
	li      $t8, 0x0002
	sw      $t8, 0x0064($t9)
	la.u    $a0, str_face_shape_801B8D58
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D58
	lw      $t0, 0x0024($sp)
	nop
	sw      $v0, 0x00BC($t0)
	lui     $t1, %hi(face_shape_801A847C)
	lw      $t1, %lo(face_shape_801A847C)($t1)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x001C($t2)
	lui     $a0, %hi(_face_draw_bss-0x210+0x298)
	lw      $a0, %lo(_face_draw_bss-0x210+0x298)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D60
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D60
	sw      $v0, 0x003C($sp)
	lw      $a0, 0x003C($sp)
	jal     face_draw_8017B168
	nop
	lui     $t3, %hi(_face_object_bss-0x480+0x56C)
	lw      $t3, %lo(_face_object_bss-0x480+0x56C)($t3)
	nop
	sw      $t3, 0x0038($sp)
	li      $at, 0xC3160000
	mtc1    $at, $f4
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0xC3FA0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D68
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D68
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t4, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t4)
	li      $at, 0xC3160000
	mtc1    $at, $f6
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x43FA0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D70
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D70
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x442F0000
	jal     face_joint_8018F388
	swc1    $f8, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8D78
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D78
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t6, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t6)
	la.u    $a0, str_face_shape_801B8D80
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D80
	sw      $v0, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t7)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D88
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D88
	sw      $v0, 0x0034($sp)
	lw      $t8, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t8)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D90
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D90
	sw      $v0, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t9)
	jal     addto_group
	nop
	la.u    $a0, str_face_shape_801B8D98
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8D98
	sw      $v0, 0x0034($sp)
	lw      $t0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t0)
	jal     addto_group
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0x0000
	jal     face_joint_8018F388
	swc1    $f10, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DA0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DA0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t1, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t1)
	li      $at, 0x43960000
	mtc1    $at, $f16
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x0000
	li      $a3, 0xC3960000
	jal     face_joint_8018F388
	swc1    $f16, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DA8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DA8
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t2, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t2)
	li      $at, 0x43960000
	mtc1    $at, $f18
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x437A0000
	li      $a3, 0xC3160000
	jal     face_joint_8018F388
	swc1    $f18, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DB0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DB0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t3, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t3)
	la.u    $a0, str_face_shape_801B8DB8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DB8
	sw      $v0, 0x0034($sp)
	lw      $t4, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t4)
	jal     addto_group
	nop
	li      $at, 0x43960000
	mtc1    $at, $f4
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0xC37A0000
	li      $a3, 0xC3160000
	jal     face_joint_8018F388
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DC0
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DC0
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	la.u    $a0, str_face_shape_801B8DC8
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DC8
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x01F8($t6)
	jal     addto_group
	nop
	li      $at, 0x43C80000
	mtc1    $at, $f6
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0x42C80000
	li      $a3, 0x43480000
	jal     face_joint_8018F388
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DCC
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DCC
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t7, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t7)
	lw      $t9, 0x0030($sp)
	la.u    $t8, face_joint_8018ED28
	la.l    $t8, face_joint_8018ED28
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0030($sp)
	nop
	sw      $t0, 0x01D0($t1)
	lw      $t2, 0x0030($sp)
	li      $at, -0x0009
	lhu     $t3, 0x0012($t2)
	nop
	and     $t4, $t3, $at
	sh      $t4, 0x0012($t2)
	li      $at, 0x43C80000
	mtc1    $at, $f8
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	move    $a1, $0
	li      $a2, 0xC2C80000
	li      $a3, 0x43480000
	jal     face_joint_8018F388
	swc1    $f8, 0x0010($sp)
	sw      $v0, 0x0030($sp)
	la.u    $a0, str_face_shape_801B8DD4
	jal     dUseObj
	la.l    $a0, str_face_shape_801B8DD4
	sw      $v0, 0x0034($sp)
	lw      $a1, 0x0034($sp)
	jal     make_group
	li      $a0, 0x0001
	lw      $t5, 0x0030($sp)
	nop
	sw      $v0, 0x01F8($t5)
	lw      $t7, 0x0030($sp)
	la.u    $t6, face_joint_8018ED28
	la.l    $t6, face_joint_8018ED28
	sw      $t6, 0x002C($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0030($sp)
	nop
	sw      $t8, 0x01D0($t9)
	lw      $t0, 0x0030($sp)
	li      $at, -0x0009
	lhu     $t1, 0x0012($t0)
	nop
	and     $t3, $t1, $at
	sh      $t3, 0x0012($t0)
	lw      $a1, 0x0038($sp)
	li      $a0, 0x0004
	jal     face_object_8017D76C
	move    $a2, $0
	sw      $v0, 0x0048($sp)
	lw      $a2, 0x0048($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a3, $0
	jal     face_net_801924F4
	sw      $0, 0x0010($sp)
	sw      $v0, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	li      $t4, 0x0003
	sw      $t4, 0x01EC($t2)
	lui     $a0, %hi(face_shape_801A8470)
	lw      $a0, %lo(face_shape_801A8470)($a0)
	lw      $a1, 0x0048($sp)
	jal     addto_group
	nop
	lui     $a0, %hi(face_shape_801A8470)
	lw      $a0, %lo(face_shape_801A8470)($a0)
	lw      $a1, 0x0054($sp)
	jal     addto_groupfirst
	nop
	b       460$
	move    $v0, $0
	b       460$
	nop
460$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl load_shapes2
load_shapes2:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_shape_801B8DDC
	jal     imin
	la.l    $a0, str_face_shape_801B8DDC
	jal     face_dynlist_80183AB0
	nop
	jal     face_shape_801973C0
	nop
	la.u    $a1, str_face_shape_801B8DEC
	la.l    $a1, str_face_shape_801B8DEC
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(_face_shape_bss-0x11E0+0x121C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x121C)($at)
	la.u    $a0, dyn_spot
	jal     load_dynlist
	la.l    $a0, dyn_spot
	lui     $at, %hi(face_shape_801A8474)
	sw      $v0, %lo(face_shape_801A8474)($at)
	lui     $a0, %hi(face_shape_801A8474)
	lw      $a0, %lo(face_shape_801A8474)($a0)
	li      $a1, 0x43480000
	li      $a2, 0x43480000
	jal     face_shape_8019848C
	li      $a3, 0x43480000
	la.u    $a0, dyn_ico1
	jal     load_dynlist
	la.l    $a0, dyn_ico1
	lui     $at, %hi(face_shape_801A8478)
	sw      $v0, %lo(face_shape_801A8478)($at)
	lui     $a0, %hi(face_shape_801A8478)
	lw      $a0, %lo(face_shape_801A8478)($a0)
	li      $a1, 0x41F00000
	li      $a2, 0x41F00000
	jal     face_shape_8019848C
	li      $a3, 0x41F00000
	lui     $a1, %hi(_face_shape_bss-0x11E0+0x121C)
	lw      $a1, %lo(_face_shape_bss-0x11E0+0x121C)($a1)
	li      $a0, 0x0010
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_shape_bss-0x11E0+0x120C)
	sw      $v0, %lo(_face_shape_bss-0x11E0+0x120C)($at)
	lui     $a0, %hi(_face_shape_bss-0x11E0+0x120C)
	lw      $a0, %lo(_face_shape_bss-0x11E0+0x120C)($a0)
	jal     face_draw_8017B168
	nop
	jal     imout
	nop
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_shape_8019ACD8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x56C)
	lw      $t6, %lo(_face_object_bss-0x480+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0024($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f4, 0x0074($t7)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f6, 0x0078($t8)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f8, 0x007C($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t0, 0x0024($sp)
	nop
	swc1    $f10, 0x0050($t0)
	mtc1    $0, $f16
	lw      $t1, 0x0024($sp)
	nop
	swc1    $f16, 0x0054($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f18, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f4, 0x0030($t3)
	lui     $at, %hi(face_shape_801B8E20)
	lwc1    $f6, %lo(face_shape_801B8E20)($at)
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f6, 0x0068($t4)
	lui     $at, %hi(face_shape_801B8E24)
	lwc1    $f8, %lo(face_shape_801B8E24)($at)
	lw      $t5, 0x0024($sp)
	nop
	swc1    $f8, 0x006C($t5)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f10, 0x0080($t6)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f16, 0x0084($t7)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f18, 0x0088($t8)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	li      $a2, 0x0001
	sw      $v0, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f4
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f4, 0x0074($t9)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f6, 0x0078($t0)
	li      $at, 0x43960000
	mtc1    $at, $f8
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f8, 0x007C($t1)
	mtc1    $0, $f10
	lw      $t2, 0x0020($sp)
	nop
	swc1    $f10, 0x0050($t2)
	mtc1    $0, $f16
	lw      $t3, 0x0020($sp)
	nop
	swc1    $f16, 0x0054($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t4, 0x0020($sp)
	nop
	swc1    $f18, 0x0058($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t5, 0x0020($sp)
	nop
	swc1    $f4, 0x0030($t5)
	li      $at, 0xC0800000
	mtc1    $at, $f6
	lw      $t6, 0x0020($sp)
	nop
	swc1    $f6, 0x0080($t6)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f8, 0x0084($t7)
	li      $at, 0xC0000000
	mtc1    $at, $f10
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f10, 0x0088($t8)
	lw      $a1, 0x001C($sp)
	li      $a0, 0x00080000
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_draw_bss-0x210+0x298)
	sw      $v0, %lo(_face_draw_bss-0x210+0x298)($at)
	lui     $v0, %hi(_face_draw_bss-0x210+0x298)
	lw      $v0, %lo(_face_draw_bss-0x210+0x298)($v0)
	b       135$
	nop
	b       135$
	nop
135$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_8019AF04:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x56C)
	lw      $t6, %lo(_face_object_bss-0x480+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	move    $a0, $0
	move    $a1, $0
	jal     face_object_8017D2D4
	move    $a2, $0
	sw      $v0, 0x0020($sp)
	mtc1    $0, $f4
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f4, 0x0074($t7)
	li      $at, 0xC3FA0000
	mtc1    $at, $f6
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f6, 0x0078($t8)
	mtc1    $0, $f8
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f8, 0x007C($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f10, 0x0050($t0)
	mtc1    $0, $f16
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f16, 0x0054($t1)
	mtc1    $0, $f18
	lw      $t2, 0x0020($sp)
	nop
	swc1    $f18, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t3, 0x0020($sp)
	nop
	swc1    $f4, 0x0030($t3)
	lw      $a1, 0x001C($sp)
	li      $a0, 0x00080000
	jal     face_object_8017D76C
	move    $a2, $0
	lui     $at, %hi(_face_draw_bss-0x210+0x298)
	sw      $v0, %lo(_face_draw_bss-0x210+0x298)($at)
	lui     $v0, %hi(_face_draw_bss-0x210+0x298)
	lw      $v0, %lo(_face_draw_bss-0x210+0x298)($v0)
	b       60$
	nop
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_shape_8019B004:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x56C)
	lw      $t6, %lo(_face_object_bss-0x480+0x56C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_draw_bss-0x210+0x298)
	sw      $v0, %lo(_face_draw_bss-0x210+0x298)($at)
	lui     $v0, %hi(_face_draw_bss-0x210+0x298)
	lw      $v0, %lo(_face_draw_bss-0x210+0x298)($v0)
	b       17$
	nop
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop
	nop
	nop
