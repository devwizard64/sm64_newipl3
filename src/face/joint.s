.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_joint_8018E660:
	addiu   $sp, $sp, -0x00C8
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x00C8($sp)
	sw      $s0, 0x0030($sp)
	swc1    $f25, 0x0028($sp)
	swc1    $f24, 0x002C($sp)
	swc1    $f23, 0x0020($sp)
	swc1    $f22, 0x0024($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lw      $t6, 0x00C8($sp)
	nop
	lwc1    $f4, 0x0158($t6)
	lwc1    $f6, 0x0054($t6)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0064($sp)
	lw      $t7, 0x00C8($sp)
	nop
	lwc1    $f10, 0x015C($t7)
	lwc1    $f16, 0x0058($t7)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0068($sp)
	lw      $t8, 0x00C8($sp)
	nop
	lwc1    $f4, 0x0160($t8)
	lwc1    $f6, 0x005C($t8)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x006C($sp)
	lw      $t9, 0x00C8($sp)
	nop
	lhu     $t0, 0x0012($t9)
	nop
	andi    $t1, $t0, 0x0004
	beqz    $t1, 73$
	nop
	lwc1    $f10, 0x0064($sp)
	li      $at, 0xBFD00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	lw      $t2, 0x00C8($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0078($t2)
	lwc1    $f8, 0x0068($sp)
	li      $at, 0xBFD00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	lw      $t3, 0x00C8($sp)
	cvt.s.d $f4, $f18
	swc1    $f4, 0x007C($t3)
	lwc1    $f6, 0x006C($sp)
	li      $at, 0xBFD00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	lw      $t4, 0x00C8($sp)
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0080($t4)
	lw      $t5, 0x00C8($sp)
	nop
	lw      $t6, 0x01BC($t5)
	nop
	ori     $t7, $t6, 0x2000
	sw      $t7, 0x01BC($t5)
	b       301$
	nop
73$:
	lui     $t8, %hi(face_control+0x48)
	lw      $t8, %lo(face_control+0x48)($t8)
	nop
	bnez    $t8, 289$
	nop
	lwc1    $f4, 0x0064($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	lw      $t9, 0x00C8($sp)
	nop
	lwc1    $f16, 0x0078($t9)
	nop
	cvt.d.s $f18, $f16
	sub.d   $f4, $f18, $f10
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0078($t9)
	lwc1    $f8, 0x0068($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f8
	mul.d   $f10, $f16, $f18
	lw      $t0, 0x00C8($sp)
	nop
	lwc1    $f4, 0x007C($t0)
	nop
	cvt.d.s $f6, $f4
	sub.d   $f8, $f6, $f10
	cvt.s.d $f16, $f8
	swc1    $f16, 0x007C($t0)
	lwc1    $f18, 0x006C($sp)
	li      $at, 0x3FE00000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f10, $f4, $f6
	lw      $t1, 0x00C8($sp)
	nop
	lwc1    $f8, 0x0080($t1)
	nop
	cvt.d.s $f16, $f8
	sub.d   $f18, $f16, $f10
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0080($t1)
	lw      $t2, 0x00C8($sp)
	lui     $at, %hi(face_joint_801B86B8+4)
	lwc1    $f6, 0x0078($t2)
	lwc1    $f17, %lo(face_joint_801B86B8+0)($at)
	lwc1    $f16, %lo(face_joint_801B86B8+4)($at)
	cvt.d.s $f8, $f6
	mul.d   $f10, $f8, $f16
	cvt.s.d $f18, $f10
	swc1    $f18, 0x0078($t2)
	lw      $t3, 0x00C8($sp)
	lui     $at, %hi(face_joint_801B86C0+4)
	lwc1    $f4, 0x007C($t3)
	lwc1    $f9, %lo(face_joint_801B86C0+0)($at)
	lwc1    $f8, %lo(face_joint_801B86C0+4)($at)
	cvt.d.s $f6, $f4
	mul.d   $f16, $f6, $f8
	cvt.s.d $f10, $f16
	swc1    $f10, 0x007C($t3)
	lw      $t4, 0x00C8($sp)
	lui     $at, %hi(face_joint_801B86C8+4)
	lwc1    $f18, 0x0080($t4)
	lwc1    $f7, %lo(face_joint_801B86C8+0)($at)
	lwc1    $f6, %lo(face_joint_801B86C8+4)($at)
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f16, $f8
	swc1    $f16, 0x0080($t4)
	lw      $t6, 0x00C8($sp)
	mtc1    $0, $f18
	lwc1    $f10, 0x007C($t6)
	nop
	c.lt.s  $f10, $f18
	nop
	bc1f    157$
	nop
	b       161$
	neg.s   $f24, $f10
157$:
	lw      $t7, 0x00C8($sp)
	nop
	lwc1    $f24, 0x007C($t7)
	nop
161$:
	lw      $t5, 0x00C8($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x0078($t5)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    171$
	nop
	b       175$
	neg.s   $f22, $f4
171$:
	lw      $t8, 0x00C8($sp)
	nop
	lwc1    $f22, 0x0078($t8)
	nop
175$:
	lw      $t9, 0x00C8($sp)
	mtc1    $0, $f16
	lwc1    $f8, 0x0080($t9)
	nop
	c.lt.s  $f8, $f16
	nop
	bc1f    185$
	nop
	b       189$
	neg.s   $f20, $f8
185$:
	lw      $t0, 0x00C8($sp)
	nop
	lwc1    $f20, 0x0080($t0)
	nop
189$:
	add.s   $f18, $f22, $f24
	li      $at, 0x3FF00000
	add.s   $f10, $f20, $f18
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f6, $f10
	c.lt.d  $f6, $f4
	nop
	bc1f    272$
	nop
	lwc1    $f16, 0x0068($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f16, $f8
	nop
	bc1f    208$
	nop
	b       210$
	neg.s   $f24, $f16
208$:
	lwc1    $f24, 0x0068($sp)
	nop
210$:
	lwc1    $f18, 0x0064($sp)
	mtc1    $0, $f10
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    219$
	nop
	b       221$
	neg.s   $f22, $f18
219$:
	lwc1    $f22, 0x0064($sp)
	nop
221$:
	lwc1    $f6, 0x006C($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    230$
	nop
	b       232$
	neg.s   $f20, $f6
230$:
	lwc1    $f20, 0x006C($sp)
	nop
232$:
	add.s   $f8, $f22, $f24
	li      $at, 0x3FF00000
	add.s   $f16, $f20, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f16
	c.lt.d  $f10, $f18
	nop
	bc1f    272$
	nop
	mtc1    $0, $f4
	lw      $t1, 0x00C8($sp)
	nop
	swc1    $f4, 0x0080($t1)
	lw      $t2, 0x00C8($sp)
	nop
	lwc1    $f20, 0x0080($t2)
	nop
	swc1    $f20, 0x007C($t2)
	lw      $t3, 0x00C8($sp)
	nop
	swc1    $f20, 0x0078($t3)
	lw      $t4, 0x00C8($sp)
	lwc1    $f8, 0x0064($sp)
	lwc1    $f6, 0x0158($t4)
	nop
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0158($t4)
	lw      $t6, 0x00C8($sp)
	lwc1    $f18, 0x0068($sp)
	lwc1    $f10, 0x015C($t6)
	nop
	sub.s   $f4, $f10, $f18
	swc1    $f4, 0x015C($t6)
	lw      $t7, 0x00C8($sp)
	lwc1    $f8, 0x006C($sp)
	lwc1    $f6, 0x0160($t7)
	nop
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0160($t7)
272$:
	lw      $t5, 0x00C8($sp)
	nop
	lw      $t8, 0x01BC($t5)
	nop
	andi    $t9, $t8, 0x2000
	beqz    $t9, 281$
	nop
	jal     face_sound_80178254
	li      $a0, 0x0020
281$:
	lw      $t0, 0x00C8($sp)
	li      $at, -0x2001
	lw      $t1, 0x01BC($t0)
	nop
	and     $t2, $t1, $at
	sw      $t2, 0x01BC($t0)
	b       301$
	nop
289$:
	mtc1    $0, $f10
	lw      $t3, 0x00C8($sp)
	nop
	swc1    $f10, 0x0080($t3)
	lw      $t4, 0x00C8($sp)
	nop
	lwc1    $f20, 0x0080($t4)
	nop
	swc1    $f20, 0x007C($t4)
	lw      $t6, 0x00C8($sp)
	nop
	swc1    $f20, 0x0078($t6)
301$:
	lw      $t7, 0x00C8($sp)
	nop
	lwc1    $f18, 0x0158($t7)
	lwc1    $f4, 0x0078($t7)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0158($t7)
	lw      $t5, 0x00C8($sp)
	nop
	lwc1    $f8, 0x015C($t5)
	lwc1    $f16, 0x007C($t5)
	nop
	add.s   $f10, $f8, $f16
	swc1    $f10, 0x015C($t5)
	lw      $t8, 0x00C8($sp)
	nop
	lwc1    $f18, 0x0160($t8)
	lwc1    $f4, 0x0080($t8)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0160($t8)
	lw      $t9, 0x00C8($sp)
	nop
	lhu     $t1, 0x0012($t9)
	nop
	andi    $t2, $t1, 0x0004
	beqz    $t2, 377$
	nop
	lui     $t0, %hi(face_control+0xD0)
	lui     $t3, %hi(face_control+0xB8)
	lw      $t3, %lo(face_control+0xB8)($t3)
	lw      $t0, %lo(face_control+0xD0)($t0)
	lui     $at, %hi(face_joint_801B86D0+4)
	subu    $t4, $t0, $t3
	mtc1    $t4, $f8
	lwc1    $f11, %lo(face_joint_801B86D0+0)($at)
	cvt.d.w $f16, $f8
	lwc1    $f10, %lo(face_joint_801B86D0+4)($at)
	mtc1    $t0, $f4
	mul.d   $f18, $f16, $f10
	cvt.d.w $f6, $f4
	sub.d   $f8, $f6, $f18
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(face_control+0xD0)
	cvt.w.d $f16, $f8
	ctc1    $t6, $31
	swc1    $f16, %lo(face_control+0xD0)($at)
	nop
	lui     $t7, %hi(face_control+0xD4)
	lui     $t5, %hi(face_control+0xBC)
	lw      $t5, %lo(face_control+0xBC)($t5)
	lw      $t7, %lo(face_control+0xD4)($t7)
	lui     $at, %hi(face_joint_801B86D8+4)
	subu    $t8, $t7, $t5
	mtc1    $t8, $f10
	lwc1    $f7, %lo(face_joint_801B86D8+0)($at)
	cvt.d.w $f4, $f10
	lwc1    $f6, %lo(face_joint_801B86D8+4)($at)
	mtc1    $t7, $f8
	mul.d   $f18, $f4, $f6
	cvt.d.w $f16, $f8
	sub.d   $f10, $f16, $f18
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(face_control+0xD4)
	cvt.w.d $f4, $f10
	ctc1    $t9, $31
	swc1    $f4, %lo(face_control+0xD4)($at)
	nop
377$:
	lw      $t1, 0x00C8($sp)
	nop
	lwc1    $f6, 0x0158($t1)
	lwc1    $f8, 0x0054($t1)
	nop
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x0064($sp)
	lw      $t2, 0x00C8($sp)
	nop
	lwc1    $f18, 0x015C($t2)
	lwc1    $f10, 0x0058($t2)
	nop
	sub.s   $f4, $f18, $f10
	swc1    $f4, 0x0068($sp)
	lw      $t3, 0x00C8($sp)
	nop
	lwc1    $f6, 0x0160($t3)
	lwc1    $f8, 0x005C($t3)
	nop
	sub.s   $f16, $f6, $f8
	swc1    $f16, 0x006C($sp)
	lw      $t4, 0x00C8($sp)
	nop
	lw      $t0, 0x01F8($t4)
	nop
	lw      $s0, 0x001C($t0)
	nop
	beqz    $s0, 422$
	nop
406$:
	lw      $t6, 0x0008($s0)
	nop
	sw      $t6, 0x0044($sp)
	lw      $a0, 0x0044($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0074($sp)
	lw      $a0, 0x0074($sp)
	jal     face_math_80194424
	addiu   $a1, $sp, 0x0064
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 406$
	nop
422$:
	b       424$
	nop
424$:
	lw      $ra, 0x0034($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lwc1    $f23, 0x0020($sp)
	lwc1    $f22, 0x0024($sp)
	lwc1    $f25, 0x0028($sp)
	lwc1    $f24, 0x002C($sp)
	lw      $s0, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00C8

.globl face_joint_8018ED28
face_joint_8018ED28:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x498)
	lw      $t6, %lo(_face_object_bss-0x480+0x498)($t6)
	nop
	bnez    $t6, 11$
	nop
	b       153$
	nop
11$:
	lw      $t7, 0x0060($sp)
	nop
	lw      $t8, 0x01D0($t7)
	nop
	beqz    $t8, 27$
	nop
	lw      $t9, 0x0060($sp)
	li      $at, 0x0007
	lw      $t0, 0x01D0($t9)
	nop
	lw      $t1, 0x004C($t0)
	nop
	beq     $t1, $at, 27$
	nop
	b       153$
	nop
27$:
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	lw      $t2, 0x005C($sp)
	nop
	lwc1    $f4, 0x0030($t2)
	nop
	swc1    $f4, 0x0044($sp)
	lw      $t3, 0x005C($sp)
	nop
	lwc1    $f6, 0x0034($t3)
	nop
	swc1    $f6, 0x0048($sp)
	lw      $t4, 0x005C($sp)
	nop
	lwc1    $f8, 0x0038($t4)
	nop
	swc1    $f8, 0x004C($sp)
	lui     $a1, %hi(_face_object_bss-0x480+0x498)
	lui     $a2, %hi(_face_object_bss-0x480+0x49C)
	lw      $a2, %lo(_face_object_bss-0x480+0x49C)($a2)
	lw      $a1, %lo(_face_object_bss-0x480+0x498)($a1)
	jal     face_draw_80179CDC
	addiu   $a0, $sp, 0x0044
	lui     $t5, %hi(face_control+0xD0)
	lw      $t5, %lo(face_control+0xD0)($t5)
	lwc1    $f18, 0x0044($sp)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f16, $f10
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0050($sp)
	lui     $t6, %hi(face_control+0xD4)
	lw      $t6, %lo(face_control+0xD4)($t6)
	lwc1    $f10, 0x0048($sp)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	sub.s   $f16, $f8, $f10
	neg.s   $f18, $f16
	swc1    $f18, 0x0054($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0058($sp)
	lwc1    $f6, 0x0050($sp)
	li      $at, 0x40000000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0050($sp)
	lwc1    $f4, 0x0054($sp)
	li      $at, 0x40000000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0054($sp)
	lwc1    $f18, 0x0058($sp)
	li      $at, 0x40000000
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0058($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x0050
	li      $at, 0x41F00000
	mtc1    $at, $f16
	nop
	c.lt.s  $f16, $f0
	nop
	bc1f    127$
	nop
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0050
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0050($sp)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0050($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($sp)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0058($sp)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0058($sp)
127$:
	lw      $t7, 0x0060($sp)
	nop
	lw      $t8, 0x01F8($t7)
	nop
	lw      $s0, 0x001C($t8)
	nop
	beqz    $s0, 151$
	nop
135$:
	lw      $t9, 0x0008($s0)
	nop
	sw      $t9, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	lw      $a0, 0x005C($sp)
	jal     face_math_80194424
	addiu   $a1, $sp, 0x0050
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 135$
	nop
151$:
	b       153$
	nop
153$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

face_joint_8018EF9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	nop
	bnez    $t6, 11$
	nop
	b       67$
	nop
11$:
	lw      $t7, 0x0030($sp)
	nop
	lwc1    $f4, 0x0014($t7)
	nop
	swc1    $f4, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	nop
	lwc1    $f6, 0x0018($t8)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t9, 0x0030($sp)
	nop
	lwc1    $f8, 0x001C($t9)
	nop
	swc1    $f8, 0x001C($sp)
	lw      $t0, 0x0028($sp)
	nop
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	nop
	beqz    $t1, 65$
	nop
33$:
	lw      $t2, 0x0018($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x0014($t2)
	lwc1    $f6, 0x0020($sp)
	add.s   $f18, $f10, $f16
	lwc1    $f16, 0x001C($sp)
	lwc1    $f10, 0x001C($t2)
	lwc1    $f4, 0x0018($t2)
	mfc1    $a1, $f18
	add.s   $f18, $f10, $f16
	move    $a0, $t2
	add.s   $f8, $f4, $f6
	mfc1    $a3, $f18
	mfc1    $a2, $f8
	jal     face_joint_8018F0B8
	nop
	lw      $t3, 0x0018($sp)
	lw      $t4, 0x002C($sp)
	nop
	bne     $t3, $t4, 56$
	nop
	b       65$
	nop
56$:
	lw      $t5, 0x0018($sp)
	nop
	lw      $t6, 0x0024($t5)
	nop
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	nop
	bnez    $t7, 33$
	nop
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_joint_8018F0B8:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0004($sp)
	nop
	swc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0008($sp)
	nop
	swc1    $f6, 0x0018($a0)
	lwc1    $f8, 0x000C($sp)
	nop
	swc1    $f8, 0x001C($a0)
	lwc1    $f10, 0x0004($sp)
	nop
	swc1    $f10, 0x0030($a0)
	lwc1    $f16, 0x0008($sp)
	nop
	swc1    $f16, 0x0034($a0)
	lwc1    $f18, 0x000C($sp)
	nop
	swc1    $f18, 0x0038($a0)
	lwc1    $f4, 0x0004($sp)
	nop
	swc1    $f4, 0x003C($a0)
	lwc1    $f6, 0x0008($sp)
	nop
	swc1    $f6, 0x0040($a0)
	lwc1    $f8, 0x000C($sp)
	nop
	swc1    $f8, 0x0044($a0)
	lwc1    $f10, 0x0004($sp)
	nop
	swc1    $f10, 0x0054($a0)
	lwc1    $f16, 0x0008($sp)
	nop
	swc1    $f16, 0x0058($a0)
	lwc1    $f18, 0x000C($sp)
	nop
	swc1    $f18, 0x005C($a0)
	lwc1    $f4, 0x0004($sp)
	nop
	swc1    $f4, 0x0158($a0)
	lwc1    $f6, 0x0008($sp)
	nop
	swc1    $f6, 0x015C($a0)
	lwc1    $f8, 0x000C($sp)
	nop
	swc1    $f8, 0x0160($a0)
	b       50$
	nop
50$:
	jr      $ra
	nop

.globl face_joint_8018F188
face_joint_8018F188:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     make_object
	li      $a0, 0x0004
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(_face_joint_bss-0x1040+0x1054)
	lw      $t6, %lo(_face_joint_bss-0x1040+0x1054)($t6)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1054)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_joint_bss-0x1040+0x1054)($at)
	lui     $t8, %hi(_face_object_bss-0x480+0x564)
	lw      $t8, %lo(_face_object_bss-0x480+0x564)($t8)
	nop
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x564)
	sw      $t9, %lo(_face_object_bss-0x480+0x564)($at)
	lw      $t0, 0x0020($sp)
	nop
	beqz    $t0, 33$
	nop
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x0028($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x0020($sp)
	nop
	sw      $t3, 0x0024($t4)
33$:
	lw      $a0, 0x0024($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00E8
	lw      $a0, 0x0024($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0128
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	lw      $a3, 0x0034($sp)
	jal     face_joint_8018F0B8
	nop
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x01CC($t5)
	lui     $t6, %hi(_face_joint_bss-0x1040+0x1054)
	lw      $t6, %lo(_face_joint_bss-0x1040+0x1054)($t6)
	lw      $t7, 0x0024($sp)
	nop
	sw      $t6, 0x01B4($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t8, 0x01BC($t9)
	lw      $t0, 0x0024($sp)
	nop
	lw      $t1, 0x01BC($t0)
	nop
	andi    $t2, $t1, 0x0001
	bnez    $t2, 69$
	nop
	lui     $t3, %hi(_face_joint_bss-0x1040+0x1058)
	lw      $t3, %lo(_face_joint_bss-0x1040+0x1058)($t3)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1058)
	addiu   $t4, $t3, 0x0001
	sw      $t4, %lo(_face_joint_bss-0x1040+0x1058)($at)
69$:
	lw      $t5, 0x0024($sp)
	nop
	lw      $t6, 0x01BC($t5)
	nop
	andi    $t7, $t6, 0x0001
	beqz    $t7, 80$
	nop
	lw      $t9, 0x0024($sp)
	li      $t8, 0x0002
	b       83$
	sw      $t8, 0x01C8($t9)
80$:
	lw      $t1, 0x0024($sp)
	li      $t0, 0x0009
	sw      $t0, 0x01C8($t1)
83$:
	lw      $t2, 0x0024($sp)
	nop
	sw      $0, 0x01C4($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $0, 0x0020($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f4, 0x009C($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t5, 0x0024($sp)
	nop
	swc1    $f6, 0x00A0($t5)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f8, 0x00A4($t6)
	mtc1    $0, $f10
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f10, 0x00DC($t7)
	mtc1    $0, $f16
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f16, 0x00E0($t8)
	mtc1    $0, $f18
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f18, 0x00E4($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x002C($t0)
	lw      $v0, 0x0024($sp)
	b       124$
	nop
	b       124$
	nop
124$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_joint_8018F388
face_joint_8018F388:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	lw      $a2, 0x002C($sp)
	lw      $a3, 0x0030($sp)
	jal     face_joint_8018F188
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0020($t7)
	lw      $t9, 0x001C($sp)
	li      $t8, 0x0005
	sw      $t8, 0x01CC($t9)
	lw      $t0, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	lw      $t1, 0x01BC($t0)
	nop
	or      $t3, $t1, $t2
	sw      $t3, 0x01BC($t0)
	lw      $t5, 0x001C($sp)
	li      $t4, 0x0009
	sw      $t4, 0x01C8($t5)
	lw      $t6, 0x001C($sp)
	nop
	lhu     $t7, 0x0012($t6)
	nop
	ori     $t8, $t7, 0x0008
	sh      $t8, 0x0012($t6)
	lw      $t9, 0x001C($sp)
	nop
	lhu     $t1, 0x0012($t9)
	nop
	ori     $t2, $t1, 0x0002
	sh      $t2, 0x0012($t9)
	lw      $t0, 0x001C($sp)
	la.u    $t3, face_joint_8018E660
	la.l    $t3, face_joint_8018E660
	sw      $t3, 0x002C($t0)
	lw      $t4, 0x001C($sp)
	nop
	sw      $0, 0x01D0($t4)
	lw      $v0, 0x001C($sp)
	b       52$
	nop
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_joint_8018F468
face_joint_8018F468:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x010C($t6)
	nop
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x0024($sp)
	lw      $t2, 0x0018($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x0020($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0020($sp)
	lwc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0014($t7)
	li      $at, 0x40000000
	add.s   $f8, $f4, $f6
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	lw      $t8, 0x0028($sp)
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0014($t8)
	lw      $t9, 0x0024($sp)
	lw      $t0, 0x0020($sp)
	lwc1    $f6, 0x0018($t9)
	lwc1    $f8, 0x0018($t0)
	li      $at, 0x40000000
	add.s   $f10, $f6, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	lw      $t1, 0x0028($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0018($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x0020($sp)
	lwc1    $f8, 0x001C($t2)
	lwc1    $f10, 0x001C($t3)
	li      $at, 0x40000000
	add.s   $f16, $f8, $f10
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	lw      $t4, 0x0028($sp)
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($t4)
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x0024($sp)
	lwc1    $f10, 0x0014($t5)
	lwc1    $f16, 0x0014($t6)
	lw      $t7, 0x0028($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0058($t7)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f4, 0x0018($t8)
	lwc1    $f6, 0x0018($t9)
	lw      $t0, 0x0028($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($t0)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f10, 0x001C($t1)
	lwc1    $f16, 0x001C($t2)
	lw      $t3, 0x0028($sp)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0060($t3)
	lw      $a0, 0x0028($sp)
	jal     face_math_80194D34
	addiu   $a0, $a0, 0x0058
	lw      $t4, 0x0028($sp)
	li      $a2, 0x0000
	addiu   $a0, $t4, 0x00B0
	jal     face_math_80194498
	addiu   $a1, $t4, 0x0058
	b       101$
	nop
101$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_joint_8018F60C:
	lw      $t6, 0x01BC($a0)
	nop
	andi    $t7, $t6, 0x1000
	beqz    $t7, 17$
	nop
	lui     $at, %hi(_face_joint_bss-0x1040+0x1048)
	lwc1    $f4, %lo(_face_joint_bss-0x1040+0x1048)($at)
	nop
	swc1    $f4, 0x00B4($a0)
	lui     $at, %hi(_face_joint_bss-0x1040+0x104C)
	lwc1    $f6, %lo(_face_joint_bss-0x1040+0x104C)($at)
	nop
	swc1    $f6, 0x00B8($a0)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1050)
	lwc1    $f8, %lo(_face_joint_bss-0x1040+0x1050)($at)
	nop
	swc1    $f8, 0x00BC($a0)
17$:
	jr      $ra
	nop
	jr      $ra
	nop

face_joint_8018F660:
	addiu   $sp, $sp, -0x00B0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00B0($sp)
	lw      $t6, 0x00B0($sp)
	nop
	lw      $t7, 0x010C($t6)
	nop
	sw      $t7, 0x0060($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x00AC($sp)
	lw      $t2, 0x005C($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t4, 0x005C($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x00A8($sp)
	lw      $t6, 0x00AC($sp)
	lw      $t7, 0x00A8($sp)
	lwc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0014($t7)
	li      $at, 0x40000000
	add.s   $f8, $f4, $f6
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	lw      $t8, 0x00B0($sp)
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0014($t8)
	lw      $t9, 0x00AC($sp)
	lw      $t0, 0x00A8($sp)
	lwc1    $f6, 0x0018($t9)
	lwc1    $f8, 0x0018($t0)
	li      $at, 0x40000000
	add.s   $f10, $f6, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	lw      $t1, 0x00B0($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0018($t1)
	lw      $t2, 0x00AC($sp)
	lw      $t3, 0x00A8($sp)
	lwc1    $f8, 0x001C($t2)
	lwc1    $f10, 0x001C($t3)
	li      $at, 0x40000000
	add.s   $f16, $f8, $f10
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	lw      $t4, 0x00B0($sp)
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($t4)
	lw      $t5, 0x00B0($sp)
	nop
	lwc1    $f10, 0x0058($t5)
	nop
	swc1    $f10, 0x0090($sp)
	lw      $t6, 0x00B0($sp)
	nop
	lwc1    $f16, 0x005C($t6)
	nop
	swc1    $f16, 0x0094($sp)
	lw      $t7, 0x00B0($sp)
	nop
	lwc1    $f18, 0x0060($t7)
	nop
	swc1    $f18, 0x0098($sp)
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f6, 0x0094($sp)
	nop
	swc1    $f6, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	lw      $t8, 0x00B0($sp)
	lwc1    $f10, 0x006C($sp)
	lwc1    $f16, 0x0064($t8)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x006C($sp)
	lw      $t9, 0x00B0($sp)
	lwc1    $f4, 0x0070($sp)
	lwc1    $f6, 0x0068($t9)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0070($sp)
	lw      $t0, 0x00B0($sp)
	lwc1    $f10, 0x0074($sp)
	lwc1    $f16, 0x006C($t0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0074($sp)
	lwc1    $f4, 0x0090($sp)
	lw      $t1, 0x00B0($sp)
	nop
	swc1    $f4, 0x0064($t1)
	lwc1    $f6, 0x0094($sp)
	lw      $t2, 0x00B0($sp)
	nop
	swc1    $f6, 0x0068($t2)
	lwc1    $f8, 0x0098($sp)
	lw      $t3, 0x00B0($sp)
	nop
	swc1    $f8, 0x006C($t3)
	lw      $t4, 0x00B0($sp)
	lui     $at, %hi(face_joint_801B86E0+4)
	lwc1    $f16, 0x00F8($t4)
	lwc1    $f11, %lo(face_joint_801B86E0+0)($at)
	lwc1    $f10, %lo(face_joint_801B86E0+4)($at)
	cvt.d.s $f18, $f16
	nop
	div.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0068($sp)
	lwc1    $f8, 0x006C($sp)
	lwc1    $f16, 0x0068($sp)
	nop
	mul.s   $f10, $f8, $f16
	swc1    $f10, 0x006C($sp)
	lwc1    $f18, 0x0070($sp)
	lwc1    $f4, 0x0068($sp)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0070($sp)
	lwc1    $f8, 0x0074($sp)
	lwc1    $f16, 0x0068($sp)
	nop
	mul.s   $f10, $f8, $f16
	swc1    $f10, 0x0074($sp)
	lwc1    $f18, 0x0090($sp)
	lwc1    $f4, 0x0068($sp)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0090($sp)
	lwc1    $f8, 0x0094($sp)
	lwc1    $f16, 0x0068($sp)
	nop
	mul.s   $f10, $f8, $f16
	swc1    $f10, 0x0094($sp)
	lwc1    $f18, 0x0098($sp)
	lwc1    $f4, 0x0068($sp)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0098($sp)
	addiu   $a0, $sp, 0x0090
	addiu   $a1, $sp, 0x006C
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0078
	lwc1    $f8, 0x0078($sp)
	nop
	swc1    $f8, 0x0084($sp)
	lwc1    $f16, 0x007C($sp)
	nop
	swc1    $f16, 0x0088($sp)
	lwc1    $f10, 0x0080($sp)
	nop
	swc1    $f10, 0x008C($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0084
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x0078
	swc1    $f0, 0x0064($sp)
	lw      $a2, 0x0064($sp)
	addiu   $a0, $sp, 0x001C
	jal     face_math_80196334
	addiu   $a1, $sp, 0x0084
	lw      $t5, 0x00B0($sp)
	addiu   $a1, $sp, 0x001C
	addiu   $t6, $t5, 0x0070
	move    $a0, $t6
	jal     face_math_80196754
	move    $a2, $t6
	lw      $t7, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1048)
	lwc1    $f18, 0x0090($t7)
	nop
	swc1    $f18, %lo(_face_joint_bss-0x1040+0x1048)($at)
	lw      $t8, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x104C)
	lwc1    $f4, 0x0094($t8)
	nop
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x104C)($at)
	lw      $t9, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1050)
	lwc1    $f6, 0x0098($t9)
	nop
	swc1    $f6, %lo(_face_joint_bss-0x1040+0x1050)($at)
	lw      $t0, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1044)
	addiu   $t1, $t0, 0x0070
	sw      $t1, %lo(_face_joint_bss-0x1040+0x1044)($at)
	lw      $t2, 0x00B0($sp)
	la.u    $a1, face_joint_8018F60C
	lw      $a2, 0x010C($t2)
	la.l    $a1, face_joint_8018F60C
	jal     face_object_8017E520
	li      $a0, 0x0004
	b       219$
	nop
219$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00B0
	jr      $ra
	nop

face_joint_8018F9DC:
	addiu   $sp, $sp, -0x00B0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00B0($sp)
	lw      $t6, 0x00B0($sp)
	nop
	lw      $t7, 0x010C($t6)
	nop
	sw      $t7, 0x0060($sp)
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x00AC($sp)
	lw      $t2, 0x005C($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t4, 0x005C($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x00A8($sp)
	lw      $t6, 0x00AC($sp)
	lw      $t7, 0x00A8($sp)
	lwc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0014($t7)
	li      $at, 0x40000000
	add.s   $f8, $f4, $f6
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	nop
	div.d   $f18, $f10, $f16
	lw      $t8, 0x00B0($sp)
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0014($t8)
	lw      $t9, 0x00AC($sp)
	lw      $t0, 0x00A8($sp)
	lwc1    $f6, 0x0018($t9)
	lwc1    $f8, 0x0018($t0)
	li      $at, 0x40000000
	add.s   $f10, $f6, $f8
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	lw      $t1, 0x00B0($sp)
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0018($t1)
	lw      $t2, 0x00AC($sp)
	lw      $t3, 0x00A8($sp)
	lwc1    $f8, 0x001C($t2)
	lwc1    $f10, 0x001C($t3)
	li      $at, 0x40000000
	add.s   $f16, $f8, $f10
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	lw      $t4, 0x00B0($sp)
	cvt.s.d $f8, $f6
	swc1    $f8, 0x001C($t4)
	lui     $a1, %hi(face_net_801BAC80)
	lw      $a1, %lo(face_net_801BAC80)($a1)
	lw      $a0, 0x00B0($sp)
	addiu   $a2, $sp, 0x001C
	addiu   $a1, $a1, 0x0128
	jal     face_math_80196754
	addiu   $a0, $a0, 0x00B0
	lw      $a1, 0x00B0($sp)
	addiu   $a0, $sp, 0x001C
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x0070
	lw      $t5, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1048)
	lwc1    $f10, 0x0090($t5)
	nop
	neg.s   $f16, $f10
	swc1    $f16, %lo(_face_joint_bss-0x1040+0x1048)($at)
	lw      $t6, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x104C)
	lwc1    $f18, 0x0094($t6)
	nop
	neg.s   $f4, $f18
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x104C)($at)
	lw      $t7, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1050)
	lwc1    $f6, 0x0098($t7)
	nop
	neg.s   $f8, $f6
	swc1    $f8, %lo(_face_joint_bss-0x1040+0x1050)($at)
	lw      $t8, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1044)
	addiu   $t9, $t8, 0x0070
	sw      $t9, %lo(_face_joint_bss-0x1040+0x1044)($at)
	lw      $t0, 0x00B0($sp)
	la.u    $a1, face_joint_8018F60C
	lw      $a2, 0x010C($t0)
	la.l    $a1, face_joint_8018F60C
	jal     face_object_8017E520
	li      $a0, 0x0004
	b       111$
	nop
111$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00B0
	jr      $ra
	nop

.globl face_joint_8018FBA8
face_joint_8018FBA8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0104($t6)
	nop
	andi    $t8, $t7, 0x000A
	beqz    $t8, 15$
	nop
	lw      $a0, 0x0018($sp)
	jal     face_joint_8018F9DC
	nop
	b       18$
	nop
15$:
	lw      $a0, 0x0018($sp)
	jal     face_joint_8018F660
	nop
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_joint_8018FC08
face_joint_8018FC08:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x01F4($t6)
	nop
	bnez    $t7, 17$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t8, 0x0020($sp)
	nop
	sw      $v0, 0x01F4($t8)
17$:
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	lw      $a3, 0x002C($sp)
	jal     face_object_8017D6F4
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x01F4($t9)
	jal     addto_group
	nop
	b       32$
	li      $v0, 0x0001
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_joint_8018FC98
face_joint_8018FC98:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	nop
	lw      $t7, 0x010C($t6)
	nop
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0020($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0020($sp)
	lw      $t4, 0x0020($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0024($sp)
	lwc1    $f4, 0x0014($t6)
	lwc1    $f6, 0x0014($t7)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f10, 0x0018($t8)
	lwc1    $f16, 0x0018($t9)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lwc1    $f4, 0x001C($t0)
	lwc1    $f6, 0x001C($t1)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f18, 0x0030($sp)
	mul.s   $f16, $f10, $f10
	lwc1    $f8, 0x0034($sp)
	mul.s   $f4, $f18, $f18
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f6, $f16, $f4
	add.s   $f18, $f6, $f10
	jal     face_gfx_8019B49C
	cvt.d.s $f12, $f18
	cvt.s.d $f16, $f0
	lw      $t2, 0x0038($sp)
	nop
	swc1    $f16, 0x00F8($t2)
	lw      $t3, 0x0038($sp)
	nop
	lwc1    $f4, 0x00F8($t3)
	nop
	swc1    $f4, 0x00F4($t3)
	lw      $t4, 0x0038($sp)
	nop
	lwc1    $f8, 0x00F8($t4)
	nop
	swc1    $f8, 0x00FC($t4)
	lw      $a0, 0x0038($sp)
	jal     face_joint_8018F468
	nop
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl add_joint2bone
add_joint2bone:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0004
	lw      $t7, 0x000C($t6)
	nop
	beq     $t7, $at, 13$
	nop
	la.u    $a0, str_face_joint_801B85B0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_joint_801B85B0
13$:
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x010C($t8)
	nop
	bnez    $t9, 24$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t0, 0x0018($sp)
	nop
	sw      $v0, 0x010C($t0)
24$:
	lw      $t1, 0x0018($sp)
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x010C($t1)
	jal     addto_group
	nop
	lw      $t2, 0x001C($sp)
	nop
	lw      $t3, 0x01C4($t2)
	nop
	bnez    $t3, 40$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t4, 0x001C($sp)
	nop
	sw      $v0, 0x01C4($t4)
40$:
	lw      $t5, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x01C4($t5)
	jal     addto_group
	nop
	lw      $t6, 0x0018($sp)
	li      $at, 0x0002
	lw      $t7, 0x010C($t6)
	nop
	lw      $t8, 0x0028($t7)
	nop
	bne     $t8, $at, 56$
	nop
	lw      $a0, 0x0018($sp)
	jal     face_joint_8018FC98
	nop
56$:
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_joint_8018FEDC
face_joint_8018FEDC:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	jal     make_object
	li      $a0, 0x0002
	sw      $v0, 0x0034($sp)
	lui     $t6, %hi(_face_joint_bss-0x1040+0x105C)
	lw      $t6, %lo(_face_joint_bss-0x1040+0x105C)($t6)
	lui     $at, %hi(_face_joint_bss-0x1040+0x105C)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_joint_bss-0x1040+0x105C)($at)
	lui     $t8, %hi(_face_joint_bss-0x1040+0x105C)
	lw      $t8, %lo(_face_joint_bss-0x1040+0x105C)($t8)
	lw      $t9, 0x0034($sp)
	nop
	sw      $t8, 0x0108($t9)
	lui     $t0, %hi(_face_object_bss-0x480+0x568)
	lw      $t0, %lo(_face_object_bss-0x480+0x568)($t0)
	nop
	sw      $t0, 0x0030($sp)
	lw      $t1, 0x0034($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x568)
	sw      $t1, %lo(_face_object_bss-0x480+0x568)($at)
	lw      $t2, 0x0030($sp)
	nop
	beqz    $t2, 38$
	nop
	lw      $t3, 0x0030($sp)
	lw      $t4, 0x0034($sp)
	nop
	sw      $t3, 0x0024($t4)
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	nop
	sw      $t5, 0x0020($t6)
38$:
	lw      $t7, 0x0034($sp)
	nop
	sw      $0, 0x010C($t7)
	lw      $t8, 0x0034($sp)
	nop
	sw      $0, 0x0100($t8)
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0034($sp)
	nop
	sw      $t9, 0x0104($t0)
	lw      $t1, 0x0034($sp)
	nop
	sw      $0, 0x00F0($t1)
	lw      $a0, 0x0034($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0070
	lui     $at, %hi(face_joint_801B86E8)
	lwc1    $f4, %lo(face_joint_801B86E8)($at)
	lw      $t2, 0x0034($sp)
	nop
	swc1    $f4, 0x0110($t2)
	lui     $at, %hi(face_joint_801B86EC)
	lwc1    $f6, %lo(face_joint_801B86EC)($at)
	lw      $t3, 0x0034($sp)
	nop
	swc1    $f6, 0x0114($t3)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	lw      $t4, 0x0034($sp)
	nop
	swc1    $f8, 0x00F8($t4)
	lw      $t5, 0x003C($sp)
	nop
	beqz    $t5, 85$
	nop
	lw      $t6, 0x0040($sp)
	nop
	beqz    $t6, 85$
	nop
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x003C($sp)
	jal     add_joint2bone
	nop
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x0040($sp)
	jal     add_joint2bone
	nop
85$:
	lw      $v0, 0x0034($sp)
	b       90$
	nop
	b       90$
	nop
90$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

face_joint_80190054:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_joint_80190068:
	lw      $t6, 0x01BC($a1)
	nop
	andi    $t7, $t6, 0x0001
	beqz    $t7, 20$
	nop
	lwc1    $f4, 0x0084($a0)
	lwc1    $f6, 0x0084($a1)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0084($a0)
	lwc1    $f10, 0x0088($a0)
	lwc1    $f16, 0x0088($a1)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0088($a0)
	lwc1    $f4, 0x008C($a0)
	lwc1    $f6, 0x008C($a1)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x008C($a0)
20$:
	jr      $ra
	nop
	jr      $ra
	nop

face_joint_801900C8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	sw      $0, 0x001C($sp)
	addiu   $t7, $t6, -0x0001
	blez    $t7, 18$
	nop
8$:
	la.u    $a0, str_face_joint_801B85F0
	jal     gd_printf
	la.l    $a0, str_face_joint_801B85F0
	lw      $t8, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	addiu   $t9, $t8, 0x0001
	addiu   $t1, $t0, -0x0001
	slt     $at, $t9, $t1
	bnez    $at, 8$
	sw      $t9, 0x001C($sp)
18$:
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_joint_80190128:
	addiu   $sp, $sp, -0x0020
	sw      $0, 0x0014($sp)
	lw      $t6, 0x01C4($a3)
	nop
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	nop
	bnez    $t7, 11$
	nop
	b       94$
	move    $v0, $0
11$:
	lw      $t8, 0x000C($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0004($sp)
	lw      $t0, 0x0004($sp)
	nop
	bnez    $t0, 22$
	nop
	b       94$
	move    $v0, $0
22$:
	lw      $t1, 0x0004($sp)
	nop
	beqz    $t1, 89$
	nop
26$:
	lw      $t2, 0x0004($sp)
	nop
	lw      $t3, 0x0008($t2)
	nop
	beqz    $t3, 80$
	sw      $t3, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	nop
	lw      $t5, 0x010C($t4)
	nop
	sw      $t5, 0x0010($sp)
	lw      $t6, 0x0010($sp)
	nop
	lw      $t7, 0x001C($t6)
	nop
	sw      $t7, 0x0008($sp)
	lw      $t8, 0x0008($sp)
	nop
	beqz    $t8, 80$
	nop
46$:
	lw      $t9, 0x0008($sp)
	nop
	lw      $t0, 0x0008($t9)
	nop
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	nop
	beq     $t1, $a3, 71$
	nop
	beq     $t1, $a2, 71$
	nop
	lw      $t3, 0x0014($sp)
	lw      $t2, 0x0018($sp)
	sll     $t4, $t3, 2
	addu    $t5, $a1, $t4
	sw      $t2, 0x0000($t5)
	lw      $t7, 0x0014($sp)
	lw      $t6, 0x001C($sp)
	sll     $t8, $t7, 2
	addu    $t9, $a0, $t8
	sw      $t6, 0x0000($t9)
	lw      $t0, 0x0014($sp)
	nop
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0014($sp)
71$:
	lw      $t3, 0x0008($sp)
	nop
	lw      $t4, 0x0004($t3)
	nop
	sw      $t4, 0x0008($sp)
	lw      $t2, 0x0008($sp)
	nop
	bnez    $t2, 46$
	nop
80$:
	lw      $t5, 0x0004($sp)
	nop
	lw      $t7, 0x0004($t5)
	nop
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	nop
	bnez    $t8, 26$
	nop
89$:
	lw      $v0, 0x0014($sp)
	b       94$
	nop
	b       94$
	nop
94$:
	jr      $ra
	addiu   $sp, $sp, 0x0020

face_joint_801902A8:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	sw      $a3, 0x0094($sp)
	b       156$
	nop
	lwc1    $f4, 0x007C($sp)
	lw      $t6, 0x0088($sp)
	nop
	swc1    $f4, 0x0058($t6)
	lwc1    $f6, 0x0080($sp)
	lw      $t7, 0x0088($sp)
	nop
	swc1    $f6, 0x005C($t7)
	lwc1    $f8, 0x0084($sp)
	lw      $t8, 0x0088($sp)
	nop
	swc1    $f8, 0x0060($t8)
	lw      $t9, 0x0088($sp)
	nop
	lw      $t0, 0x0104($t9)
	nop
	andi    $t1, $t0, 0x0008
	beqz    $t1, 48$
	nop
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x007C
	swc1    $f0, 0x0058($sp)
	lwc1    $f10, 0x0058($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1f    41$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0058($sp)
41$:
	lw      $t2, 0x0088($sp)
	lwc1    $f6, 0x0058($sp)
	lwc1    $f4, 0x00F8($t2)
	lwc1    $f10, 0x0110($t2)
	div.s   $f8, $f4, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0060($sp)
48$:
	lw      $t3, 0x0088($sp)
	nop
	lw      $t4, 0x0104($t3)
	nop
	andi    $t5, $t4, 0x0004
	beqz    $t5, 101$
	nop
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x007C
	swc1    $f0, 0x0058($sp)
	lwc1    $f4, 0x0058($sp)
	lwc1    $f18, 0x0060($sp)
	nop
	c.lt.s  $f4, $f18
	nop
	bc1f    89$
	nop
	lw      $t6, 0x0088($sp)
	nop
	lwc1    $f6, 0x0110($t6)
	nop
	swc1    $f6, 0x005C($sp)
	lw      $t7, 0x0094($sp)
	lwc1    $f10, 0x005C($sp)
	lwc1    $f8, 0x0000($t7)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x0094($sp)
	lwc1    $f4, 0x005C($sp)
	lwc1    $f18, 0x0004($t8)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0004($t8)
	lw      $t9, 0x0094($sp)
	lwc1    $f10, 0x005C($sp)
	lwc1    $f8, 0x0008($t9)
	nop
	mul.s   $f16, $f8, $f10
	b       101$
	swc1    $f16, 0x0008($t9)
89$:
	mtc1    $0, $f18
	lw      $t0, 0x0094($sp)
	nop
	swc1    $f18, 0x0000($t0)
	mtc1    $0, $f4
	lw      $t1, 0x0094($sp)
	nop
	swc1    $f4, 0x0004($t1)
	mtc1    $0, $f6
	lw      $t2, 0x0094($sp)
	nop
	swc1    $f6, 0x0008($t2)
101$:
	lw      $t3, 0x0088($sp)
	nop
	lw      $t4, 0x0104($t3)
	nop
	andi    $t5, $t4, 0x0002
	beqz    $t5, 154$
	nop
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x007C
	swc1    $f0, 0x0058($sp)
	lwc1    $f10, 0x0058($sp)
	lwc1    $f8, 0x0060($sp)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    142$
	nop
	lw      $t6, 0x0088($sp)
	nop
	lwc1    $f16, 0x0110($t6)
	nop
	swc1    $f16, 0x005C($sp)
	lw      $t7, 0x0094($sp)
	lwc1    $f4, 0x005C($sp)
	lwc1    $f18, 0x0000($t7)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0000($t7)
	lw      $t8, 0x0094($sp)
	lwc1    $f10, 0x005C($sp)
	lwc1    $f8, 0x0004($t8)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0004($t8)
	lw      $t9, 0x0094($sp)
	lwc1    $f4, 0x005C($sp)
	lwc1    $f18, 0x0008($t9)
	nop
	mul.s   $f6, $f18, $f4
	b       154$
	swc1    $f6, 0x0008($t9)
142$:
	mtc1    $0, $f8
	lw      $t0, 0x0094($sp)
	nop
	swc1    $f8, 0x0000($t0)
	mtc1    $0, $f10
	lw      $t1, 0x0094($sp)
	nop
	swc1    $f10, 0x0004($t1)
	mtc1    $0, $f16
	lw      $t2, 0x0094($sp)
	nop
	swc1    $f16, 0x0008($t2)
154$:
	b       156$
	nop
156$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

face_joint_80190528:
	addiu   $sp, $sp, -0x0018
	sw      $a2, 0x0020($sp)
	sw      $a3, 0x0024($sp)
	lw      $t6, 0x01BC($a0)
	nop
	andi    $t7, $t6, 0x0001
	bnez    $t7, 13$
	nop
	lw      $t8, 0x01BC($a0)
	nop
	andi    $t9, $t8, 0x1000
	bnez    $t9, 37$
	nop
13$:
	lwc1    $f4, 0x003C($a0)
	lwc1    $f6, 0x0020($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($a0)
	lwc1    $f10, 0x0040($a0)
	lwc1    $f16, 0x0024($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0040($a0)
	lwc1    $f4, 0x0044($a0)
	lwc1    $f6, 0x0028($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0044($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0008($a1)
	lwc1    $f12, 0x0008($a1)
	nop
	swc1    $f12, 0x0004($a1)
	swc1    $f12, 0x0000($a1)
	b       95$
	nop
37$:
	lwc1    $f16, 0x00B4($a0)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f6, 0x00B8($a0)
	mul.s   $f4, $f16, $f18
	lwc1    $f8, 0x0024($sp)
	lwc1    $f18, 0x00BC($a0)
	mul.s   $f10, $f6, $f8
	lwc1    $f6, 0x0028($sp)
	nop
	mul.s   $f8, $f18, $f6
	add.s   $f16, $f4, $f10
	add.s   $f4, $f16, $f8
	swc1    $f4, 0x0014($sp)
	lwc1    $f10, 0x00B4($a0)
	lwc1    $f18, 0x0014($sp)
	nop
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x0008($sp)
	lwc1    $f16, 0x00B8($a0)
	lwc1    $f8, 0x0014($sp)
	nop
	mul.s   $f4, $f16, $f8
	swc1    $f4, 0x000C($sp)
	lwc1    $f10, 0x00BC($a0)
	lwc1    $f18, 0x0014($sp)
	nop
	mul.s   $f6, $f10, $f18
	swc1    $f6, 0x0010($sp)
	lwc1    $f16, 0x003C($a0)
	lwc1    $f8, 0x0008($sp)
	nop
	add.s   $f4, $f16, $f8
	swc1    $f4, 0x003C($a0)
	lwc1    $f10, 0x0040($a0)
	lwc1    $f18, 0x000C($sp)
	nop
	add.s   $f6, $f10, $f18
	swc1    $f6, 0x0040($a0)
	lwc1    $f16, 0x0044($a0)
	lwc1    $f8, 0x0010($sp)
	nop
	add.s   $f4, $f16, $f8
	swc1    $f4, 0x0044($a0)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x0008($sp)
	nop
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0000($a1)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f8, 0x000C($sp)
	nop
	sub.s   $f4, $f16, $f8
	swc1    $f4, 0x0004($a1)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f18, 0x0010($sp)
	nop
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0008($a1)
95$:
	b       97$
	nop
97$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_joint_801906B4:
	addiu   $sp, $sp, -0x0278
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0278($sp)
	sw      $a1, 0x027C($sp)
	sw      $a2, 0x0280($sp)
	sw      $a3, 0x0284($sp)
	sw      $0, 0x0264($sp)
	li      $t6, 0x0001
	sw      $t6, 0x022C($sp)
	lw      $t8, 0x0278($sp)
	li      $t7, 0x0001
	slti    $at, $t8, 0x0002
	bnez    $at, 25$
	sw      $t7, 0x0230($sp)
14$:
	lw      $t9, 0x022C($sp)
	nop
	sll     $t0, $t9, 1
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x022C($sp)
	lw      $t2, 0x0230($sp)
	lw      $t4, 0x0278($sp)
	sll     $t3, $t2, 1
	slt     $at, $t3, $t4
	bnez    $at, 14$
	sw      $t3, 0x0230($sp)
25$:
	lw      $t5, 0x0278($sp)
	nop
	andi    $t6, $t5, 0x8000
	beqz    $t6, 33$
	nop
	la.u    $a0, str_face_joint_801B85F4
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_joint_801B85F4
33$:
	lw      $t7, 0x0280($sp)
	lw      $t9, 0x0278($sp)
	lw      $t8, 0x01C0($t7)
	nop
	or      $t0, $t8, $t9
	sw      $t0, 0x01C0($t7)
	lw      $a2, 0x027C($sp)
	lw      $a3, 0x0280($sp)
	addiu   $a0, $sp, 0x0020
	jal     face_joint_80190128
	addiu   $a1, $sp, 0x0120
	sw      $v0, 0x0224($sp)
	lwc1    $f4, 0x028C($sp)
	lw      $a0, 0x0280($sp)
	lw      $a2, 0x0284($sp)
	lw      $a3, 0x0288($sp)
	addiu   $a1, $sp, 0x0240
	jal     face_joint_80190528
	swc1    $f4, 0x0010($sp)
	lw      $t1, 0x0224($sp)
	sw      $0, 0x0234($sp)
	blez    $t1, 266$
	nop
56$:
	lw      $t2, 0x027C($sp)
	nop
	beqz    $t2, 62$
	nop
	b       62$
	nop
62$:
	lw      $t3, 0x0280($sp)
	nop
	sw      $t3, 0x0274($sp)
	lw      $t4, 0x0234($sp)
	nop
	sll     $t5, $t4, 2
	addu    $t6, $sp, $t5
	lw      $t6, 0x0120($t6)
	nop
	sw      $t6, 0x026C($sp)
	lw      $t8, 0x0234($sp)
	lw      $a1, 0x0274($sp)
	sll     $t9, $t8, 2
	addu    $a0, $sp, $t9
	lw      $a0, 0x0020($a0)
	lw      $a2, 0x026C($sp)
	jal     face_joint_801902A8
	addiu   $a3, $sp, 0x024C
80$:
	addiu   $a0, $sp, 0x0020
	addiu   $a1, $sp, 0x0120
	lw      $a2, 0x0274($sp)
	lw      $a3, 0x026C($sp)
	addiu   $a1, $a1, 0x0080
	jal     face_joint_80190128
	addiu   $a0, $a0, 0x0080
	sw      $v0, 0x0220($sp)
	addiu   $t0, $sp, 0x0120
	lw      $t7, 0x0080($t0)
	nop
	sw      $t7, 0x0270($sp)
	lw      $t1, 0x026C($sp)
	lw      $t3, 0x022C($sp)
	lw      $t2, 0x01C0($t1)
	nop
	and     $t4, $t2, $t3
	beqz    $t4, 101$
	nop
	b       260$
	nop
101$:
	lw      $t5, 0x0220($sp)
	nop
	slti    $at, $t5, 0x0002
	beqz    $at, 232$
	nop
	lw      $t6, 0x026C($sp)
	nop
	lw      $t8, 0x01BC($t6)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, 200$
	nop
	lui     $t0, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t0, %lo(_face_joint_bss-0x1040+0x1060)($t0)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1060)
	addiu   $t7, $t0, 0x0001
	sw      $t7, %lo(_face_joint_bss-0x1040+0x1060)($at)
	lui     $t2, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t2, %lo(_face_joint_bss-0x1040+0x1060)($t2)
	lw      $t1, 0x0274($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1068)
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	sw      $t1, %lo(_face_joint_bss-0x1040+0x1068)($at)
	lui     $t4, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t4, %lo(_face_joint_bss-0x1040+0x1060)($t4)
	lwc1    $f6, 0x024C($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	lui     $at, %hi(_face_joint_bss-0x1040+0x1090)
	addu    $at, $at, $t5
	neg.s   $f8, $f6
	swc1    $f8, %lo(_face_joint_bss-0x1040+0x1090)($at)
	lui     $t6, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t6, %lo(_face_joint_bss-0x1040+0x1060)($t6)
	lwc1    $f10, 0x0250($sp)
	sll     $t8, $t6, 2
	subu    $t8, $t8, $t6
	sll     $t8, $t8, 2
	lui     $at, %hi(_face_joint_bss-0x1040+0x1094)
	addu    $at, $at, $t8
	neg.s   $f16, $f10
	swc1    $f16, %lo(_face_joint_bss-0x1040+0x1094)($at)
	lui     $t9, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t9, %lo(_face_joint_bss-0x1040+0x1060)($t9)
	lwc1    $f18, 0x0254($sp)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	lui     $at, %hi(_face_joint_bss-0x1040+0x1098)
	addu    $at, $at, $t0
	neg.s   $f4, $f18
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x1098)($at)
	lw      $t7, 0x026C($sp)
	lwc1    $f8, 0x024C($sp)
	lwc1    $f6, 0x0090($t7)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0090($t7)
	lw      $t2, 0x026C($sp)
	lwc1    $f18, 0x0250($sp)
	lwc1    $f16, 0x0094($t2)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0094($t2)
	lw      $t1, 0x026C($sp)
	lwc1    $f8, 0x0254($sp)
	lwc1    $f6, 0x0098($t1)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0098($t1)
	lw      $t3, 0x026C($sp)
	lwc1    $f18, 0x0240($sp)
	lwc1    $f16, 0x0090($t3)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0090($t3)
	lw      $t4, 0x026C($sp)
	lwc1    $f8, 0x0244($sp)
	lwc1    $f6, 0x0094($t4)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0094($t4)
	lw      $t5, 0x026C($sp)
	lwc1    $f18, 0x0248($sp)
	lwc1    $f16, 0x0098($t5)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0098($t5)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0248($sp)
	swc1    $f6, 0x0244($sp)
	swc1    $f6, 0x0240($sp)
	b       260$
	nop
	b       222$
	nop
200$:
	lwc1    $f8, 0x024C($sp)
	lwc1    $f10, 0x0240($sp)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x024C($sp)
	lwc1    $f18, 0x0250($sp)
	lwc1    $f4, 0x0244($sp)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0250($sp)
	lwc1    $f8, 0x0254($sp)
	lwc1    $f10, 0x0248($sp)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0254($sp)
	lwc1    $f18, 0x0254($sp)
	lw      $a0, 0x026C($sp)
	lw      $a2, 0x024C($sp)
	lw      $a3, 0x0250($sp)
	addiu   $a1, $sp, 0x0240
	jal     face_joint_80190528
	swc1    $f18, 0x0010($sp)
222$:
	lw      $t6, 0x0220($sp)
	li      $at, 0x0001
	bne     $t6, $at, 232$
	nop
	addiu   $t8, $sp, 0x0020
	lw      $a0, 0x0080($t8)
	lw      $a1, 0x026C($sp)
	lw      $a2, 0x0270($sp)
	jal     face_joint_801902A8
	addiu   $a3, $sp, 0x024C
232$:
	lw      $t9, 0x0220($sp)
	nop
	slti    $at, $t9, 0x0002
	bnez    $at, 250$
	nop
	lw      $a0, 0x0278($sp)
	lwc1    $f4, 0x0250($sp)
	lwc1    $f6, 0x0254($sp)
	lw      $a1, 0x0274($sp)
	lw      $a2, 0x026C($sp)
	lw      $a3, 0x024C($sp)
	sll     $t0, $a0, 1
	move    $a0, $t0
	swc1    $f4, 0x0010($sp)
	jal     face_joint_801906B4
	swc1    $f6, 0x0014($sp)
	b       260$
	nop
250$:
	lw      $t7, 0x026C($sp)
	nop
	sw      $t7, 0x0274($sp)
	lw      $t2, 0x0270($sp)
	nop
	sw      $t2, 0x026C($sp)
	lw      $t1, 0x0220($sp)
	nop
	bnez    $t1, 80$
	nop
260$:
	lw      $t3, 0x0234($sp)
	lw      $t5, 0x0224($sp)
	addiu   $t4, $t3, 0x0001
	slt     $at, $t4, $t5
	bnez    $at, 56$
	sw      $t4, 0x0234($sp)
266$:
	b       268$
	nop
268$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0278
	jr      $ra
	nop

face_joint_80190AF4:
	addiu   $sp, $sp, -0x0008
	lui     $at, %hi(face_joint_801A8460)
	sw      $0, %lo(face_joint_801A8460)($at)
	lui     $t6, %hi(_face_object_bss-0x480+0x564)
	lw      $t6, %lo(_face_object_bss-0x480+0x564)($t6)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	nop
	beqz    $t7, 23$
	nop
11$:
	lw      $t8, 0x0004($sp)
	nop
	sw      $0, 0x01C0($t8)
	lw      $t9, 0x0004($sp)
	nop
	lw      $t0, 0x0028($t9)
	nop
	sw      $t0, 0x0004($sp)
	lw      $t1, 0x0004($sp)
	nop
	bnez    $t1, 11$
	nop
23$:
	b       25$
	nop
25$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_joint_80190B60:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x564)
	lw      $t6, %lo(_face_object_bss-0x480+0x564)($t6)
	nop
	sw      $t6, 0x003C($sp)
	lw      $t7, 0x003C($sp)
	nop
	beqz    $t7, 71$
	nop
10$:
	lw      $t8, 0x003C($sp)
	nop
	lw      $t9, 0x01BC($t8)
	nop
	andi    $t0, $t9, 0x0040
	beqz    $t0, 62$
	nop
	lw      $t1, 0x003C($sp)
	nop
	lw      $t2, 0x01C4($t1)
	nop
	sw      $t2, 0x0028($sp)
	lw      $t3, 0x0028($sp)
	nop
	lw      $t4, 0x001C($t3)
	nop
	sw      $t4, 0x0024($sp)
	lw      $t5, 0x0024($sp)
	nop
	lw      $t6, 0x0008($t5)
	nop
	sw      $t6, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0040($t7)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lw      $t8, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f16
	lwc1    $f10, 0x0044($t8)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t9, 0x0020($sp)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0048($t9)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x002C($sp)
	lw      $a2, 0x003C($sp)
	lw      $a3, 0x0034($sp)
	li      $a0, 0x0001
	move    $a1, $0
	swc1    $f10, 0x0010($sp)
	jal     face_joint_801906B4
	swc1    $f16, 0x0014($sp)
62$:
	lw      $t0, 0x003C($sp)
	nop
	lw      $t1, 0x0028($t0)
	nop
	sw      $t1, 0x003C($sp)
	lw      $t2, 0x003C($sp)
	nop
	bnez    $t2, 10$
	nop
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_joint_80190C94:
	addiu   $sp, $sp, -0x00B0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00B0($sp)
	sw      $a1, 0x00B4($sp)
	sw      $a2, 0x00B8($sp)
	lw      $t6, 0x00B4($sp)
	nop
	beqz    $t6, 143$
	nop
	lw      $t7, 0x00B4($sp)
	nop
	lwc1    $f4, 0x003C($t7)
	nop
	swc1    $f4, 0x00A4($sp)
	lw      $t8, 0x00B4($sp)
	nop
	lwc1    $f6, 0x0040($t8)
	nop
	swc1    $f6, 0x00A8($sp)
	lw      $t9, 0x00B4($sp)
	nop
	lwc1    $f8, 0x0044($t9)
	nop
	swc1    $f8, 0x00AC($sp)
	lw      $t0, 0x00B0($sp)
	lwc1    $f10, 0x00A4($sp)
	lwc1    $f16, 0x003C($t0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($sp)
	lw      $t1, 0x00B0($sp)
	lwc1    $f4, 0x00A8($sp)
	lwc1    $f6, 0x0040($t1)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($sp)
	lw      $t2, 0x00B0($sp)
	lwc1    $f10, 0x00AC($sp)
	lwc1    $f16, 0x0044($t2)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x00AC($sp)
	lwc1    $f4, 0x00A4($sp)
	nop
	swc1    $f4, 0x008C($sp)
	lwc1    $f6, 0x00A8($sp)
	nop
	swc1    $f6, 0x0090($sp)
	lwc1    $f8, 0x00AC($sp)
	nop
	swc1    $f8, 0x0094($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x008C
	lw      $t3, 0x00B4($sp)
	nop
	lwc1    $f10, 0x0228($t3)
	nop
	swc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x008C($sp)
	lwc1    $f18, 0x007C($sp)
	lwc1    $f6, 0x00A4($sp)
	mul.s   $f4, $f16, $f18
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C0)
	sub.s   $f8, $f6, $f4
	swc1    $f8, %lo(_face_joint_bss-0x1040+0x11C0)($at)
	lwc1    $f10, 0x0090($sp)
	lwc1    $f16, 0x007C($sp)
	lwc1    $f6, 0x00A8($sp)
	mul.s   $f18, $f10, $f16
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C4)
	sub.s   $f4, $f6, $f18
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x11C4)($at)
	lwc1    $f8, 0x0094($sp)
	lwc1    $f10, 0x007C($sp)
	lwc1    $f6, 0x00AC($sp)
	mul.s   $f16, $f8, $f10
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C8)
	sub.s   $f18, $f6, $f16
	swc1    $f18, %lo(_face_joint_bss-0x1040+0x11C8)($at)
	lui     $at, %hi(face_joint_801B86F0+4)
	lwc1    $f8, 0x007C($sp)
	lwc1    $f5, %lo(face_joint_801B86F0+0)($at)
	lwc1    $f4, %lo(face_joint_801B86F0+4)($at)
	cvt.d.s $f10, $f8
	nop
	div.d   $f6, $f4, $f10
	cvt.s.d $f16, $f6
	swc1    $f16, 0x0078($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B0)
	lwc1    $f18, %lo(_face_joint_bss-0x1040+0x11B0)($at)
	lwc1    $f8, 0x0078($sp)
	nop
	mul.s   $f4, $f18, $f8
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x11B0)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B4)
	lwc1    $f10, %lo(_face_joint_bss-0x1040+0x11B4)($at)
	lwc1    $f6, 0x0078($sp)
	nop
	mul.s   $f16, $f10, $f6
	swc1    $f16, %lo(_face_joint_bss-0x1040+0x11B4)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B8)
	lwc1    $f18, %lo(_face_joint_bss-0x1040+0x11B8)($at)
	lwc1    $f8, 0x0078($sp)
	nop
	mul.s   $f4, $f18, $f8
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x11B8)($at)
	lwc1    $f10, 0x00A4($sp)
	lwc1    $f6, 0x0078($sp)
	nop
	mul.s   $f16, $f10, $f6
	swc1    $f16, 0x00A4($sp)
	lwc1    $f18, 0x00A8($sp)
	lwc1    $f8, 0x0078($sp)
	nop
	mul.s   $f4, $f18, $f8
	swc1    $f4, 0x00A8($sp)
	lwc1    $f10, 0x00AC($sp)
	lwc1    $f6, 0x0078($sp)
	nop
	mul.s   $f16, $f10, $f6
	swc1    $f16, 0x00AC($sp)
	la.u    $a1, _face_joint_bss-0x1040+0x11B0
	la.l    $a1, _face_joint_bss-0x1040+0x11B0
	addiu   $a0, $sp, 0x00A4
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0080
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x0080
	swc1    $f0, 0x0078($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0080
	lw      $a2, 0x0078($sp)
	addiu   $a0, $sp, 0x0038
	jal     face_math_80196334
	addiu   $a1, $sp, 0x0080
	lw      $t4, 0x00B0($sp)
	addiu   $a1, $sp, 0x0038
	addiu   $t5, $t4, 0x00E8
	move    $a0, $t5
	jal     face_math_80196754
	move    $a2, $t5
	b       158$
	nop
143$:
	lw      $t6, 0x00B8($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C0)
	lwc1    $f18, 0x0000($t6)
	nop
	swc1    $f18, %lo(_face_joint_bss-0x1040+0x11C0)($at)
	lw      $t7, 0x00B8($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C4)
	lwc1    $f8, 0x0004($t7)
	nop
	swc1    $f8, %lo(_face_joint_bss-0x1040+0x11C4)($at)
	lw      $t8, 0x00B8($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C8)
	lwc1    $f4, 0x0008($t8)
	nop
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x11C8)($at)
158$:
	lw      $t9, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C0)
	lwc1    $f6, %lo(_face_joint_bss-0x1040+0x11C0)($at)
	lwc1    $f10, 0x003C($t9)
	nop
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x003C($t9)
	lw      $t0, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C4)
	lwc1    $f8, %lo(_face_joint_bss-0x1040+0x11C4)($at)
	lwc1    $f18, 0x0040($t0)
	nop
	add.s   $f4, $f18, $f8
	swc1    $f4, 0x0040($t0)
	lw      $t1, 0x00B0($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C8)
	lwc1    $f6, %lo(_face_joint_bss-0x1040+0x11C8)($at)
	lwc1    $f10, 0x0044($t1)
	nop
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x0044($t1)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C0)
	lwc1    $f18, %lo(_face_joint_bss-0x1040+0x11C0)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B0)
	swc1    $f18, %lo(_face_joint_bss-0x1040+0x11B0)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C4)
	lwc1    $f8, %lo(_face_joint_bss-0x1040+0x11C4)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B4)
	swc1    $f8, %lo(_face_joint_bss-0x1040+0x11B4)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11C8)
	lwc1    $f4, %lo(_face_joint_bss-0x1040+0x11C8)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x11B8)
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x11B8)($at)
	b       193$
	nop
193$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00B0
	jr      $ra
	nop

face_joint_80190FA8:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	sw      $a1, 0x004C($sp)
	sw      $a2, 0x0050($sp)
	sw      $a3, 0x0054($sp)
	lwc1    $f4, 0x004C($sp)
	nop
	swc1    $f4, 0x0034($sp)
	lwc1    $f6, 0x0050($sp)
	nop
	swc1    $f6, 0x0038($sp)
	lwc1    $f8, 0x0054($sp)
	nop
	swc1    $f8, 0x003C($sp)
	sw      $0, 0x0044($sp)
	lw      $t6, 0x0048($sp)
	nop
	sw      $t6, 0x0040($sp)
	lw      $t7, 0x0040($sp)
	nop
	beqz    $t7, 47$
	nop
23$:
	lw      $t8, 0x0040($sp)
	li      $at, 0x0004
	lw      $t9, 0x000C($t8)
	nop
	beq     $t9, $at, 31$
	nop
	b       47$
	nop
31$:
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	jal     face_joint_80190C94
	addiu   $a2, $sp, 0x0034
	lw      $t0, 0x0040($sp)
	nop
	sw      $t0, 0x0044($sp)
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x020C($t1)
	nop
	sw      $t2, 0x0040($sp)
	lw      $t3, 0x0040($sp)
	nop
	bnez    $t3, 23$
	nop
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

face_joint_8019107C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	lw      $t6, 0x0038($sp)
	nop
	lwc1    $f4, 0x003C($t6)
	nop
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0038($sp)
	nop
	lwc1    $f6, 0x0040($t7)
	nop
	swc1    $f6, 0x0028($sp)
	lw      $t8, 0x0038($sp)
	nop
	lwc1    $f8, 0x0044($t8)
	nop
	swc1    $f8, 0x002C($sp)
	jal     face_joint_80190AF4
	nop
	lui     $at, %hi(_face_joint_bss-0x1040+0x1060)
	sw      $0, %lo(_face_joint_bss-0x1040+0x1060)($at)
	lwc1    $f10, 0x0040($sp)
	lwc1    $f16, 0x0044($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x003C($sp)
	li      $a0, 0x0001
	move    $a1, $0
	swc1    $f10, 0x0010($sp)
	jal     face_joint_801906B4
	swc1    $f16, 0x0014($sp)
	lui     $t0, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t0, %lo(_face_joint_bss-0x1040+0x1060)($t0)
	li      $t9, 0x0001
	blez    $t0, 84$
	sw      $t9, 0x0030($sp)
39$:
	lw      $t1, 0x0030($sp)
	lui     $t3, %hi(_face_joint_bss-0x1040+0x1068)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(_face_joint_bss-0x1040+0x1068)($t3)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1110)
	addu    $at, $at, $t2
	sw      $t3, %lo(_face_joint_bss-0x1040+0x1110)($at)
	lw      $t4, 0x0030($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1090)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	addu    $at, $at, $t5
	lwc1    $f18, %lo(_face_joint_bss-0x1040+0x1090)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1138)
	addu    $at, $at, $t5
	swc1    $f18, %lo(_face_joint_bss-0x1040+0x1138)($at)
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1094)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(_face_joint_bss-0x1040+0x1094)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x113C)
	addu    $at, $at, $t7
	swc1    $f4, %lo(_face_joint_bss-0x1040+0x113C)($at)
	lw      $t8, 0x0030($sp)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1098)
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $at, $at, $t9
	lwc1    $f6, %lo(_face_joint_bss-0x1040+0x1098)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1140)
	addu    $at, $at, $t9
	swc1    $f6, %lo(_face_joint_bss-0x1040+0x1140)($at)
	lw      $t0, 0x0030($sp)
	lui     $t3, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t3, %lo(_face_joint_bss-0x1040+0x1060)($t3)
	addiu   $t1, $t0, 0x0001
	slt     $at, $t3, $t1
	beqz    $at, 39$
	sw      $t1, 0x0030($sp)
84$:
	lui     $t2, %hi(_face_joint_bss-0x1040+0x1060)
	lw      $t2, %lo(_face_joint_bss-0x1040+0x1060)($t2)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1108)
	sw      $t2, %lo(_face_joint_bss-0x1040+0x1108)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1060)
	sw      $0, %lo(_face_joint_bss-0x1040+0x1060)($at)
	lui     $t5, %hi(_face_joint_bss-0x1040+0x1108)
	lw      $t5, %lo(_face_joint_bss-0x1040+0x1108)($t5)
	li      $t4, 0x0001
	blez    $t5, 127$
	sw      $t4, 0x0030($sp)
95$:
	jal     face_joint_80190AF4
	nop
	lw      $t6, 0x0030($sp)
	lui     $t8, %hi(_face_joint_bss-0x1040+0x1110)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_joint_bss-0x1040+0x1110)($t8)
	nop
	sw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	la.u    $t1, _face_joint_bss-0x1040+0x1138
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	la.l    $t1, _face_joint_bss-0x1040+0x1138
	addu    $t3, $t0, $t1
	lwc1    $f8, 0x0004($t3)
	lw      $a3, 0x0000($t3)
	swc1    $f8, 0x0010($sp)
	lwc1    $f10, 0x0008($t3)
	lw      $a2, 0x0034($sp)
	li      $a0, 0x0001
	move    $a1, $0
	jal     face_joint_801906B4
	swc1    $f10, 0x0014($sp)
	lw      $t2, 0x0030($sp)
	lui     $t5, %hi(_face_joint_bss-0x1040+0x1108)
	lw      $t5, %lo(_face_joint_bss-0x1040+0x1108)($t5)
	addiu   $t4, $t2, 0x0001
	slt     $at, $t5, $t4
	beqz    $at, 95$
	sw      $t4, 0x0030($sp)
127$:
	lw      $t6, 0x0038($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x003C($t6)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
	lw      $t7, 0x0038($sp)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f8, 0x0040($t7)
	nop
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0044($t8)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x002C($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x0024
	b       151$
	nop
	b       151$
	nop
151$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl face_joint_801912E8
face_joint_801912E8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lwc1    $f4, 0x00C0($t6)
	nop
	swc1    $f4, 0x00CC($t6)
	lw      $t7, 0x0018($sp)
	nop
	lwc1    $f6, 0x00C4($t7)
	nop
	swc1    $f6, 0x00D0($t7)
	lw      $t8, 0x0018($sp)
	nop
	lwc1    $f8, 0x00C8($t8)
	nop
	swc1    $f8, 0x00D4($t8)
	lui     $a1, %hi(face_net_801BAC80)
	lw      $a1, %lo(face_net_801BAC80)($a1)
	lw      $a0, 0x0018($sp)
	addiu   $a1, $a1, 0x0128
	jal     face_math_80196570
	addiu   $a0, $a0, 0x00CC
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_joint_80191360
face_joint_80191360:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0054($t6)
	nop
	swc1    $f4, 0x0048($t6)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f6, 0x0058($t7)
	nop
	swc1    $f6, 0x004C($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f8, 0x005C($t8)
	nop
	swc1    $f8, 0x0050($t8)
	lui     $a1, %hi(face_net_801BAC80)
	lw      $a1, %lo(face_net_801BAC80)($a1)
	lw      $a0, 0x0028($sp)
	addiu   $a1, $a1, 0x0128
	jal     face_math_80196680
	addiu   $a0, $a0, 0x0048
	lw      $t9, 0x0028($sp)
	nop
	lwc1    $f10, 0x0048($t9)
	nop
	swc1    $f10, 0x003C($t9)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f16, 0x004C($t0)
	nop
	swc1    $f16, 0x0040($t0)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f18, 0x0050($t1)
	nop
	swc1    $f18, 0x0044($t1)
	lui     $t2, %hi(face_net_801BAC80)
	lw      $t2, %lo(face_net_801BAC80)($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f4, 0x0014($t2)
	nop
	swc1    $f4, 0x0014($t3)
	lui     $t4, %hi(face_net_801BAC80)
	lw      $t4, %lo(face_net_801BAC80)($t4)
	lw      $t5, 0x0028($sp)
	lwc1    $f6, 0x0018($t4)
	nop
	swc1    $f6, 0x0018($t5)
	lui     $t6, %hi(face_net_801BAC80)
	lw      $t6, %lo(face_net_801BAC80)($t6)
	lw      $t7, 0x0028($sp)
	lwc1    $f8, 0x001C($t6)
	nop
	swc1    $f8, 0x001C($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f10, 0x0014($t8)
	lwc1    $f16, 0x003C($t8)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t8)
	lw      $t9, 0x0028($sp)
	nop
	lwc1    $f4, 0x0018($t9)
	lwc1    $f6, 0x0040($t9)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($t9)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f10, 0x001C($t0)
	lwc1    $f16, 0x0044($t0)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($t0)
	mtc1    $0, $f4
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f4, 0x01B0($t1)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f20, 0x01B0($t2)
	nop
	swc1    $f20, 0x01AC($t2)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f20, 0x01A8($t3)
	lui     $t4, %hi(_face_object_bss-0x480+0x4A0)
	lw      $t4, %lo(_face_object_bss-0x480+0x4A0)($t4)
	lui     $at, %hi(_face_object_bss-0x480+0x4A0)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(_face_object_bss-0x480+0x4A0)($at)
	b       99$
	nop
99$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_joint_80191500
face_joint_80191500:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_skin_801819D4
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_joint_80191530
face_joint_80191530:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lwc1    $f4, 0x0014($t6)
	nop
	swc1    $f4, 0x0078($t6)
	lw      $t7, 0x0018($sp)
	nop
	lwc1    $f6, 0x0018($t7)
	nop
	swc1    $f6, 0x007C($t7)
	lw      $t8, 0x0018($sp)
	nop
	lwc1    $f8, 0x001C($t8)
	nop
	swc1    $f8, 0x0080($t8)
	lw      $t9, 0x0018($sp)
	nop
	lwc1    $f10, 0x0078($t9)
	lwc1    $f16, 0x0030($t9)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0078($t9)
	lw      $t0, 0x0018($sp)
	nop
	lwc1    $f4, 0x007C($t0)
	lwc1    $f6, 0x0034($t0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x007C($t0)
	lw      $t1, 0x0018($sp)
	nop
	lwc1    $f10, 0x0080($t1)
	lwc1    $f16, 0x0038($t1)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0080($t1)
	lw      $t2, 0x0018($sp)
	nop
	lwc1    $f4, 0x0014($t2)
	nop
	swc1    $f4, 0x0030($t2)
	lw      $t3, 0x0018($sp)
	nop
	lwc1    $f6, 0x0018($t3)
	nop
	swc1    $f6, 0x0034($t3)
	lw      $t4, 0x0018($sp)
	nop
	lwc1    $f8, 0x001C($t4)
	nop
	swc1    $f8, 0x0038($t4)
	lui     $a0, %hi(face_net_801BAC80)
	lw      $a0, %lo(face_net_801BAC80)($a0)
	lw      $a1, 0x0018($sp)
	addiu   $a0, $a0, 0x0128
	jal     face_math_801964A0
	addiu   $a1, $a1, 0x00E8
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_joint_80191638
face_joint_80191638:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_joint_8019164C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x40240000
	lwc1    $f4, 0x0030($t6)
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x001C($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x40240000
	lwc1    $f18, 0x0034($t7)
	mtc1    $at, $f7
	mtc1    $0, $f6
	cvt.d.s $f4, $f18
	nop
	div.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0020($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x40240000
	lwc1    $f16, 0x0038($t8)
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	nop
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f10, 0x0000($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0000($t9)
	lw      $t0, 0x002C($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f4, 0x0004($t0)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($t0)
	lw      $t1, 0x002C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f10, 0x0008($t1)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0008($t1)
	lw      $a0, 0x002C($sp)
	lw      $a1, 0x0028($sp)
	jal     face_math_80196680
	nop
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_joint_80191744
face_joint_80191744:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0054($t6)
	nop
	swc1    $f4, 0x0014($t6)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f6, 0x0058($t7)
	nop
	swc1    $f6, 0x0018($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f8, 0x005C($t8)
	nop
	swc1    $f8, 0x001C($t8)
	lw      $t9, 0x0028($sp)
	nop
	lwc1    $f10, 0x0054($t9)
	nop
	swc1    $f10, 0x0030($t9)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f16, 0x0058($t0)
	nop
	swc1    $f16, 0x0034($t0)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f18, 0x005C($t1)
	nop
	swc1    $f18, 0x0038($t1)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f4, 0x0054($t2)
	nop
	swc1    $f4, 0x003C($t2)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f6, 0x0058($t3)
	nop
	swc1    $f6, 0x0040($t3)
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f8, 0x005C($t4)
	nop
	swc1    $f8, 0x0044($t4)
	mtc1    $0, $f10
	lw      $t5, 0x0028($sp)
	nop
	swc1    $f10, 0x0080($t5)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f20, 0x0080($t6)
	nop
	swc1    $f20, 0x007C($t6)
	lw      $t7, 0x0028($sp)
	nop
	swc1    $f20, 0x0078($t7)
	mtc1    $0, $f16
	lw      $t8, 0x0028($sp)
	nop
	swc1    $f16, 0x008C($t8)
	lw      $t9, 0x0028($sp)
	nop
	lwc1    $f20, 0x008C($t9)
	nop
	swc1    $f20, 0x0088($t9)
	lw      $t0, 0x0028($sp)
	nop
	swc1    $f20, 0x0084($t0)
	mtc1    $0, $f18
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f18, 0x0098($t1)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f20, 0x0098($t2)
	nop
	swc1    $f20, 0x0094($t2)
	lw      $t3, 0x0028($sp)
	nop
	swc1    $f20, 0x0090($t3)
	mtc1    $0, $f4
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f4, 0x01B0($t4)
	lw      $t5, 0x0028($sp)
	nop
	lwc1    $f20, 0x01B0($t5)
	nop
	swc1    $f20, 0x01AC($t5)
	lw      $t6, 0x0028($sp)
	nop
	swc1    $f20, 0x01A8($t6)
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0168
	lw      $t7, 0x0028($sp)
	nop
	addiu   $a0, $t7, 0x0168
	jal     face_math_8019429C
	addiu   $a1, $t7, 0x009C
	lw      $t8, 0x0028($sp)
	nop
	addiu   $a0, $t8, 0x0168
	jal     face_math_80194360
	addiu   $a1, $t8, 0x006C
	lw      $t9, 0x0028($sp)
	nop
	addiu   $a0, $t9, 0x0168
	jal     face_math_80194424
	addiu   $a1, $t9, 0x0200
	lw      $t0, 0x0028($sp)
	nop
	addiu   $a0, $t0, 0x0168
	jal     face_math_801964A0
	addiu   $a1, $t0, 0x00E8
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0128
	lw      $t1, 0x0028($sp)
	nop
	addiu   $a0, $t1, 0x0128
	jal     face_math_80194424
	addiu   $a1, $t1, 0x0054
	b       131$
	nop
131$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_joint_80191964
face_joint_80191964:
	addiu   $sp, $sp, -0x0018
	lui     $t6, %hi(face_net_801BAC80)
	lw      $t6, %lo(face_net_801BAC80)($t6)
	nop
	lw      $t7, 0x01F0($t6)
	nop
	sw      $t7, 0x0014($sp)
	lw      $t8, 0x01BC($a0)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, 48$
	nop
	lui     $t0, %hi(face_net_801BAC80)
	lw      $t0, %lo(face_net_801BAC80)($t0)
	nop
	lwc1    $f4, 0x0014($t0)
	nop
	swc1    $f4, 0x0014($a0)
	lui     $t1, %hi(face_net_801BAC80)
	lw      $t1, %lo(face_net_801BAC80)($t1)
	nop
	lwc1    $f6, 0x0018($t1)
	nop
	swc1    $f6, 0x0018($a0)
	lui     $t2, %hi(face_net_801BAC80)
	lw      $t2, %lo(face_net_801BAC80)($t2)
	nop
	lwc1    $f8, 0x001C($t2)
	nop
	swc1    $f8, 0x001C($a0)
	lui     $t3, %hi(face_net_801BAC80)
	lw      $t3, %lo(face_net_801BAC80)($t3)
	nop
	lwc1    $f10, 0x0014($t3)
	nop
	swc1    $f10, 0x003C($a0)
	lui     $t4, %hi(face_net_801BAC80)
	lw      $t4, %lo(face_net_801BAC80)($t4)
	nop
	lwc1    $f16, 0x0018($t4)
	nop
	swc1    $f16, 0x0040($a0)
	lui     $t5, %hi(face_net_801BAC80)
	lw      $t5, %lo(face_net_801BAC80)($t5)
	nop
	lwc1    $f18, 0x001C($t5)
	nop
	swc1    $f18, 0x0044($a0)
48$:
	b       50$
	nop
50$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_joint_80191A34:
	addiu   $sp, $sp, -0x0008
	lwc1    $f4, 0x003C($a0)
	nop
	swc1    $f4, 0x0078($a0)
	lwc1    $f6, 0x0040($a0)
	nop
	swc1    $f6, 0x007C($a0)
	lwc1    $f8, 0x0044($a0)
	nop
	swc1    $f8, 0x0080($a0)
	lwc1    $f10, 0x0078($a0)
	lwc1    $f16, 0x0030($a0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0078($a0)
	lwc1    $f4, 0x007C($a0)
	lwc1    $f6, 0x0034($a0)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x007C($a0)
	lwc1    $f10, 0x0080($a0)
	lwc1    $f16, 0x0038($a0)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0080($a0)
	lwc1    $f4, 0x003C($a0)
	nop
	swc1    $f4, 0x0030($a0)
	lwc1    $f6, 0x0040($a0)
	nop
	swc1    $f6, 0x0034($a0)
	lwc1    $f8, 0x0044($a0)
	nop
	swc1    $f8, 0x0038($a0)
	li      $at, 0xC0800000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x0004($sp)
	lw      $t6, 0x01BC($a0)
	nop
	andi    $t7, $t6, 0x0041
	bnez    $t7, 70$
	nop
	lui     $at, %hi(face_joint_801B86F8+4)
	lwc1    $f16, 0x0004($sp)
	lwc1    $f5, %lo(face_joint_801B86F8+0)($at)
	lwc1    $f4, %lo(face_joint_801B86F8+4)($at)
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	lwc1    $f8, 0x007C($a0)
	nop
	cvt.d.s $f10, $f8
	add.d   $f16, $f10, $f6
	cvt.s.d $f18, $f16
	swc1    $f18, 0x007C($a0)
	lwc1    $f4, 0x003C($a0)
	lwc1    $f8, 0x0078($a0)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x003C($a0)
	lwc1    $f6, 0x0040($a0)
	lwc1    $f16, 0x007C($a0)
	nop
	add.s   $f18, $f6, $f16
	swc1    $f18, 0x0040($a0)
	lwc1    $f4, 0x0044($a0)
	lwc1    $f8, 0x0080($a0)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0044($a0)
70$:
	b       72$
	nop
72$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_joint_80191B5C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0038($sp)
	lui     $t6, %hi(face_joint_801A8464)
	lw      $t6, %lo(face_joint_801A8464)($t6)
	nop
	bnez    $t6, 14$
	nop
	lw      $t7, 0x0040($sp)
	lui     $at, %hi(face_joint_801A8464)
	sw      $t7, %lo(face_joint_801A8464)($at)
14$:
	lui     $a0, %hi(face_joint_801A8464)
	lw      $a0, %lo(face_joint_801A8464)($a0)
	lw      $a1, 0x0040($sp)
	addiu   $a0, $a0, 0x0040
	jal     face_math_80194EF8
	addiu   $a1, $a1, 0x0040
	swc1    $f0, 0x003C($sp)
	lwc1    $f6, 0x003C($sp)
	lw      $t8, 0x0040($sp)
	nop
	swc1    $f6, 0x0118($t8)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x0038($sp)
	mtc1    $0, $f18
	sub.s   $f16, $f8, $f10
	c.lt.s  $f16, $f18
	swc1    $f16, 0x003C($sp)
	bc1f    110$
	nop
	lui     $t9, %hi(face_joint_801A8464)
	lw      $t9, %lo(face_joint_801A8464)($t9)
	nop
	lw      $t0, 0x010C($t9)
	nop
	lw      $t1, 0x001C($t0)
	nop
	lw      $t2, 0x0008($t1)
	nop
	sw      $t2, 0x0030($sp)
	lw      $t3, 0x0040($sp)
	nop
	lw      $t4, 0x010C($t3)
	nop
	lw      $t5, 0x001C($t4)
	nop
	lw      $t6, 0x0004($t5)
	nop
	lw      $t7, 0x0008($t6)
	nop
	sw      $t7, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x0024
	lw      $a0, 0x0030($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRelPos
	addiu   $a0, $sp, 0x0018
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0018($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lwc1    $f10, 0x0028($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x002C($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0024
	lwc1    $f10, 0x003C($sp)
	li      $at, 0x40490000
	mtc1    $at, $f5
	mtc1    $0, $f4
	neg.s   $f16, $f10
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x003C($sp)
	lw      $t8, 0x0034($sp)
	nop
	lw      $t9, 0x01BC($t8)
	nop
	andi    $t0, $t9, 0x0001
	bnez    $t0, 110$
	nop
	lwc1    $f10, 0x0024($sp)
	lwc1    $f16, 0x003C($sp)
	lwc1    $f4, 0x0028($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f8, 0x002C($sp)
	lw      $a0, 0x0034($sp)
	mul.s   $f6, $f4, $f16
	mfc1    $a1, $f18
	mul.s   $f10, $f8, $f16
	mfc1    $a2, $f6
	mfc1    $a3, $f10
	jal     face_joint_8019107C
	nop
110$:
	lw      $t1, 0x0040($sp)
	lui     $at, %hi(face_joint_801A8464)
	sw      $t1, %lo(face_joint_801A8464)($at)
	b       115$
	nop
115$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_joint_80191D38:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	li      $at, 0xC0000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0018($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x01BC($t6)
	nop
	andi    $t8, $t7, 0x0001
	bnez    $t8, 20$
	nop
	lw      $t9, 0x0020($sp)
	lwc1    $f8, 0x0018($sp)
	lwc1    $f6, 0x0040($t9)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($t9)
20$:
	lui     $at, %hi(face_config_2)
	lwc1    $f16, %lo(face_config_2)($at)
	li      $at, 0x41F00000
	mtc1    $at, $f18
	lw      $t0, 0x0020($sp)
	add.s   $f4, $f16, $f18
	lwc1    $f6, 0x0040($t0)
	mtc1    $0, $f10
	sub.s   $f8, $f6, $f4
	c.lt.s  $f8, $f10
	swc1    $f8, 0x001C($sp)
	bc1f    79$
	nop
	lwc1    $f16, 0x007C($t0)
	mtc1    $0, $f18
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    79$
	nop
	lw      $t1, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	lwc1    $f4, 0x007C($t1)
	nop
	add.s   $f8, $f6, $f4
	swc1    $f8, 0x001C($sp)
	lui     $at, %hi(face_joint_801B8700+4)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f19, %lo(face_joint_801B8700+0)($at)
	lwc1    $f18, %lo(face_joint_801B8700+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f6, $f16, $f18
	cvt.s.d $f4, $f6
	swc1    $f4, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lui     $at, %hi(face_joint_801B8708+4)
	lwc1    $f8, 0x0078($t2)
	lwc1    $f19, %lo(face_joint_801B8708+0)($at)
	lwc1    $f18, %lo(face_joint_801B8708+4)($at)
	neg.s   $f10, $f8
	cvt.d.s $f16, $f10
	mul.d   $f6, $f16, $f18
	lwc1    $f16, 0x0080($t2)
	lui     $at, %hi(face_joint_801B8710+4)
	lwc1    $f8, 0x001C($sp)
	move    $a0, $t2
	cvt.s.d $f4, $f6
	lwc1    $f5, %lo(face_joint_801B8710+0)($at)
	mfc1    $a1, $f4
	lwc1    $f4, %lo(face_joint_801B8710+4)($at)
	neg.s   $f18, $f16
	cvt.d.s $f6, $f18
	neg.s   $f10, $f8
	mul.d   $f8, $f6, $f4
	mfc1    $a2, $f10
	cvt.s.d $f10, $f8
	mfc1    $a3, $f10
	jal     face_joint_8019107C
	nop
79$:
	lw      $a0, 0x0020($sp)
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     face_joint_8019107C
	li      $a3, 0x0000
	b       86$
	nop
86$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_joint_80191EA0:
	lwc1    $f4, 0x003C($a0)
	lwc1    $f6, 0x0014($a0)
	lwc1    $f10, 0x0078($a0)
	sub.s   $f8, $f4, $f6
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x0078($a0)
	lwc1    $f18, 0x0040($a0)
	lwc1    $f4, 0x0018($a0)
	lwc1    $f10, 0x007C($a0)
	sub.s   $f6, $f18, $f4
	add.s   $f8, $f10, $f6
	swc1    $f8, 0x007C($a0)
	lwc1    $f16, 0x0044($a0)
	lwc1    $f18, 0x001C($a0)
	lwc1    $f10, 0x0080($a0)
	sub.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0080($a0)
	lui     $at, %hi(face_joint_801B8718+4)
	lwc1    $f8, 0x0078($a0)
	lwc1    $f19, %lo(face_joint_801B8718+0)($at)
	lwc1    $f18, %lo(face_joint_801B8718+4)($at)
	cvt.d.s $f16, $f8
	mul.d   $f10, $f16, $f18
	cvt.s.d $f4, $f10
	swc1    $f4, 0x0078($a0)
	lui     $at, %hi(face_joint_801B8720+4)
	lwc1    $f6, 0x007C($a0)
	lwc1    $f17, %lo(face_joint_801B8720+0)($at)
	lwc1    $f16, %lo(face_joint_801B8720+4)($at)
	cvt.d.s $f8, $f6
	mul.d   $f18, $f8, $f16
	cvt.s.d $f10, $f18
	swc1    $f10, 0x007C($a0)
	lui     $at, %hi(face_joint_801B8728+4)
	lwc1    $f4, 0x0080($a0)
	lwc1    $f9, %lo(face_joint_801B8728+0)($at)
	lwc1    $f8, %lo(face_joint_801B8728+4)($at)
	cvt.d.s $f6, $f4
	mul.d   $f16, $f6, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0080($a0)
	lwc1    $f10, 0x0014($a0)
	lwc1    $f4, 0x0078($a0)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0014($a0)
	lwc1    $f8, 0x0018($a0)
	lwc1    $f16, 0x007C($a0)
	nop
	add.s   $f18, $f8, $f16
	swc1    $f18, 0x0018($a0)
	lwc1    $f10, 0x001C($a0)
	lwc1    $f4, 0x0080($a0)
	nop
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x001C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

face_joint_80191F94:
	lwc1    $f4, 0x0014($a0)
	nop
	swc1    $f4, 0x003C($a0)
	lwc1    $f6, 0x0018($a0)
	nop
	swc1    $f6, 0x0040($a0)
	lwc1    $f8, 0x001C($a0)
	nop
	swc1    $f8, 0x0044($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_joint_80191FC8
face_joint_80191FC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_joint_80191D38
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_joint_80191D38
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_80191EA0
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_joint_80191EA0
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_80191F94
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_joint_80191F94
	jal     face_object_8017E520
	li      $a0, 0x0004
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_joint_80192028
face_joint_80192028:
	lui     $at, %hi(_face_joint_bss-0x1040+0x1054)
	sw      $0, %lo(_face_joint_bss-0x1040+0x1054)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x1058)
	sw      $0, %lo(_face_joint_bss-0x1040+0x1058)($at)
	lui     $at, %hi(_face_joint_bss-0x1040+0x105C)
	sw      $0, %lo(_face_joint_bss-0x1040+0x105C)($at)
	jr      $ra
	nop
	jr      $ra
	nop
