.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_particle_80181D40:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	lw      $t7, 0x0034($sp)
	nop
	bne     $t6, $t7, 12$
	nop
	b       65$
	nop
12$:
	lui     $t8, %hi(face_net_801BAC80)
	lw      $t8, %lo(face_net_801BAC80)($t8)
	nop
	lw      $t9, 0x01C0($t8)
	nop
	lw      $s0, 0x001C($t9)
	nop
	beqz    $s0, 50$
	nop
21$:
	lw      $t0, 0x0008($s0)
	nop
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	lw      $t3, 0x0030($sp)
	lw      $t2, 0x001C($t1)
	nop
	beq     $t2, $t3, 34$
	nop
	lw      $t4, 0x0034($sp)
	nop
	bne     $t2, $t4, 46$
	nop
34$:
	lw      $t5, 0x0024($sp)
	lw      $t7, 0x0030($sp)
	lw      $t6, 0x0020($t5)
	nop
	beq     $t6, $t7, 44$
	nop
	lw      $t8, 0x0034($sp)
	nop
	bne     $t6, $t8, 46$
	nop
44$:
	b       50$
	nop
46$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 21$
	nop
50$:
	bnez    $s0, 63$
	nop
	lw      $a0, 0x0030($sp)
	lw      $a1, 0x0034($sp)
	jal     face_particle_8018273C
	nop
	sw      $v0, 0x002C($sp)
	lui     $t9, %hi(face_net_801BAC80)
	lw      $t9, %lo(face_net_801BAC80)($t9)
	lw      $a1, 0x002C($sp)
	lw      $a0, 0x01C0($t9)
	jal     addto_group
	nop
63$:
	b       65$
	nop
65$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_particle_80181E54:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t7, 0x0030($t6)
	nop
	addiu   $t8, $t7, -0x0001
	blez    $t8, 38$
	nop
10$:
	lw      $t0, 0x0024($sp)
	lw      $t9, 0x0028($sp)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $t3, 0x0034($t2)
	nop
	sw      $t3, 0x001C($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x0028($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x0038($t7)
	nop
	sw      $t8, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	jal     face_particle_80181D40
	nop
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x0024($sp)
	lw      $t2, 0x0030($t1)
	nop
	addiu   $t3, $t2, -0x0001
	slt     $at, $t9, $t3
	bnez    $at, 10$
	nop
38$:
	lui     $t5, %hi(face_particle_801BA080)
	lw      $t5, %lo(face_particle_801BA080)($t5)
	nop
	beqz    $t5, 94$
	nop
	lw      $t4, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0030($t4)
	nop
	blez    $t6, 94$
	nop
49$:
	lw      $t8, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	sll     $t0, $t8, 2
	addu    $t1, $t7, $t0
	lw      $t2, 0x0034($t1)
	nop
	sw      $t2, 0x001C($sp)
	lui     $t9, %hi(face_particle_801BA080)
	lw      $t9, %lo(face_particle_801BA080)($t9)
	sw      $0, 0x0020($sp)
	lw      $t3, 0x0030($t9)
	nop
	blez    $t3, 85$
	nop
63$:
	lw      $t4, 0x0020($sp)
	lui     $t5, %hi(face_particle_801BA080)
	lw      $t5, %lo(face_particle_801BA080)($t5)
	sll     $t6, $t4, 2
	addu    $t8, $t5, $t6
	lw      $t7, 0x0034($t8)
	nop
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	jal     face_particle_80181D40
	nop
	lw      $t0, 0x0020($sp)
	lui     $t2, %hi(face_particle_801BA080)
	lw      $t2, %lo(face_particle_801BA080)($t2)
	addiu   $t1, $t0, 0x0001
	sw      $t1, 0x0020($sp)
	lw      $t9, 0x0030($t2)
	nop
	slt     $at, $t1, $t9
	bnez    $at, 63$
	nop
85$:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0024($sp)
	lw      $t6, 0x0030($t5)
	nop
	slt     $at, $t4, $t6
	bnez    $at, 49$
	nop
94$:
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(face_particle_801BA080)
	sw      $t8, %lo(face_particle_801BA080)($at)
	b       99$
	nop
99$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_particle_80181FF0:
	addiu   $sp, $sp, -0x0040
	lw      $t6, 0x001C($a0)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0020($a0)
	nop
	sw      $t7, 0x0000($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0034($sp)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0000($sp)
	lwc1    $f6, 0x0024($t8)
	lwc1    $f8, 0x0024($t9)
	nop
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0038($sp)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x003C($sp)
	lui     $at, %hi(face_particle_801B5F90+4)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f7, %lo(face_particle_801B5F90+0)($at)
	lwc1    $f6, %lo(face_particle_801B5F90+4)($at)
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0038($sp)
	lw      $t0, 0x0004($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f16, 0x0038($t0)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0038($t0)
	lw      $t1, 0x0004($sp)
	lwc1    $f8, 0x0038($sp)
	lwc1    $f6, 0x003C($t1)
	nop
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x003C($t1)
	lw      $t2, 0x0004($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f16, 0x0040($t2)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0040($t2)
	lw      $t3, 0x0000($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0038($t3)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0038($t3)
	lw      $t4, 0x0000($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f16, 0x003C($t4)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x003C($t4)
	lw      $t5, 0x0000($sp)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f6, 0x0040($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($t5)
	lw      $t6, 0x0004($sp)
	nop
	lw      $t7, 0x0054($t6)
	nop
	andi    $t8, $t7, 0x0002
	bnez    $t8, 89$
	nop
	lw      $t9, 0x0004($sp)
	lwc1    $f18, 0x0034($sp)
	lwc1    $f16, 0x0020($t9)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0020($t9)
	lw      $t0, 0x0004($sp)
	lwc1    $f8, 0x0038($sp)
	lwc1    $f6, 0x0024($t0)
	nop
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($t0)
	lw      $t1, 0x0004($sp)
	lwc1    $f18, 0x003C($sp)
	lwc1    $f16, 0x0028($t1)
	nop
	sub.s   $f4, $f16, $f18
	swc1    $f4, 0x0028($t1)
89$:
	lw      $t2, 0x0000($sp)
	nop
	lw      $t3, 0x0054($t2)
	nop
	andi    $t4, $t3, 0x0002
	bnez    $t4, 114$
	nop
	lw      $t5, 0x0000($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0020($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($t5)
	lw      $t6, 0x0000($sp)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f16, 0x0024($t6)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($t6)
	lw      $t7, 0x0000($sp)
	lwc1    $f8, 0x003C($sp)
	lwc1    $f6, 0x0028($t7)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($t7)
114$:
	b       116$
	nop
116$:
	jr      $ra
	addiu   $sp, $sp, 0x0040

face_particle_801821C8:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	nop
	lw      $t7, 0x0028($t6)
	nop
	andi    $t8, $t7, 0x0001
	beqz    $t8, 15$
	nop
	lw      $a0, 0x0058($sp)
	jal     face_particle_80181FF0
	nop
	b       194$
	nop
15$:
	lw      $t9, 0x0058($sp)
	nop
	lw      $t0, 0x001C($t9)
	nop
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0058($sp)
	nop
	lw      $t2, 0x0020($t1)
	nop
	sw      $t2, 0x0018($sp)
	lw      $t3, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lwc1    $f4, 0x0020($t3)
	lwc1    $f6, 0x0020($t4)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lw      $t5, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lwc1    $f10, 0x0024($t5)
	lwc1    $f16, 0x0024($t6)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0050($sp)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	lwc1    $f4, 0x0028($t7)
	lwc1    $f6, 0x0028($t8)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x004C
	swc1    $f0, 0x0020($sp)
	lw      $t9, 0x0058($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0024($t9)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lwc1    $f4, 0x004C($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x004C($sp)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f16, 0x0020($sp)
	nop
	div.s   $f18, $f10, $f16
	swc1    $f18, 0x0050($sp)
	lwc1    $f4, 0x0054($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($sp)
	lui     $at, %hi(face_particle_801B5F98+4)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f19, %lo(face_particle_801B5F98+0)($at)
	lwc1    $f18, %lo(face_particle_801B5F98+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	lwc1    $f6, 0x004C($sp)
	nop
	cvt.d.s $f8, $f6
	mul.d   $f10, $f8, $f4
	cvt.s.d $f16, $f10
	swc1    $f16, 0x004C($sp)
	lui     $at, %hi(face_particle_801B5FA0+4)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f9, %lo(face_particle_801B5FA0+0)($at)
	lwc1    $f8, %lo(face_particle_801B5FA0+4)($at)
	cvt.d.s $f6, $f18
	mul.d   $f4, $f6, $f8
	lwc1    $f10, 0x0050($sp)
	nop
	cvt.d.s $f16, $f10
	mul.d   $f18, $f16, $f4
	cvt.s.d $f6, $f18
	swc1    $f6, 0x0050($sp)
	lui     $at, %hi(face_particle_801B5FA8+4)
	lwc1    $f8, 0x0024($sp)
	lwc1    $f17, %lo(face_particle_801B5FA8+0)($at)
	lwc1    $f16, %lo(face_particle_801B5FA8+4)($at)
	cvt.d.s $f10, $f8
	mul.d   $f4, $f10, $f16
	lwc1    $f18, 0x0054($sp)
	nop
	cvt.d.s $f6, $f18
	mul.d   $f8, $f6, $f4
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0054($sp)
	lw      $t0, 0x001C($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x0038($t0)
	nop
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0038($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f8, 0x0050($sp)
	lwc1    $f4, 0x003C($t1)
	nop
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x003C($t1)
	lw      $t2, 0x001C($sp)
	lwc1    $f18, 0x0054($sp)
	lwc1    $f16, 0x0040($t2)
	nop
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0040($t2)
	lw      $t3, 0x0018($sp)
	lwc1    $f8, 0x004C($sp)
	lwc1    $f4, 0x0038($t3)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0038($t3)
	lw      $t4, 0x0018($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f16, 0x003C($t4)
	nop
	add.s   $f6, $f16, $f18
	swc1    $f6, 0x003C($t4)
	lw      $t5, 0x0018($sp)
	lwc1    $f8, 0x0054($sp)
	lwc1    $f4, 0x0040($t5)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0040($t5)
	lw      $t6, 0x001C($sp)
	nop
	lw      $t7, 0x0054($t6)
	nop
	andi    $t8, $t7, 0x0002
	bnez    $t8, 167$
	nop
	lw      $t9, 0x001C($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x0020($t9)
	nop
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0020($t9)
	lw      $t0, 0x001C($sp)
	lwc1    $f8, 0x0050($sp)
	lwc1    $f4, 0x0024($t0)
	nop
	sub.s   $f10, $f4, $f8
	swc1    $f10, 0x0024($t0)
	lw      $t1, 0x001C($sp)
	lwc1    $f18, 0x0054($sp)
	lwc1    $f16, 0x0028($t1)
	nop
	sub.s   $f6, $f16, $f18
	swc1    $f6, 0x0028($t1)
167$:
	lw      $t2, 0x0018($sp)
	nop
	lw      $t3, 0x0054($t2)
	nop
	andi    $t4, $t3, 0x0002
	bnez    $t4, 192$
	nop
	lw      $t5, 0x0018($sp)
	lwc1    $f8, 0x004C($sp)
	lwc1    $f4, 0x0020($t5)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0020($t5)
	lw      $t6, 0x0018($sp)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f16, 0x0024($t6)
	nop
	add.s   $f6, $f16, $f18
	swc1    $f6, 0x0024($t6)
	lw      $t7, 0x0018($sp)
	lwc1    $f8, 0x0054($sp)
	lwc1    $f4, 0x0028($t7)
	nop
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0028($t7)
192$:
	b       194$
	nop
194$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl face_particle_801824E0
face_particle_801824E0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	lw      $t6, 0x0030($sp)
	lui     $at, %hi(face_net_801BAC80)
	sw      $t6, %lo(face_net_801BAC80)($at)
	lw      $t7, 0x0030($sp)
	li      $at, 0x0001
	lw      $s1, 0x003C($t7)
	nop
	beq     $s1, $at, 19$
	nop
	li      $at, 0x0002
	beq     $s1, $at, 45$
	nop
	b       77$
	nop
19$:
	lw      $t8, 0x0030($sp)
	nop
	lw      $t9, 0x01A8($t8)
	nop
	lw      $t0, 0x0020($t9)
	nop
	sw      $t0, 0x01C8($t8)
	jal     make_group
	move    $a0, $0
	lw      $t1, 0x0030($sp)
	nop
	sw      $v0, 0x01C0($t1)
	lui     $at, %hi(face_particle_801BA080)
	sw      $0, %lo(face_particle_801BA080)($at)
	lw      $t2, 0x0030($sp)
	la.u    $a1, face_particle_80181E54
	lw      $t3, 0x01A8($t2)
	la.l    $a1, face_particle_80181E54
	lw      $a2, 0x001C($t3)
	jal     face_object_8017E520
	li      $a0, 0x0080
	lw      $t5, 0x0030($sp)
	li      $t4, 0x0002
	sw      $t4, 0x003C($t5)
	b       77$
	nop
45$:
	lw      $t6, 0x0030($sp)
	nop
	lw      $t7, 0x01C0($t6)
	nop
	lw      $s0, 0x001C($t7)
	nop
	beqz    $s0, 63$
	nop
53$:
	lw      $t9, 0x0008($s0)
	nop
	sw      $t9, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_particle_801821C8
	nop
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 53$
	nop
63$:
	lw      $t0, 0x0030($sp)
	la.u    $a1, face_particle_80182DC4
	lw      $a2, 0x01C8($t0)
	la.l    $a1, face_particle_80182DC4
	jal     face_object_8017E520
	li      $a0, 0x0008
	lw      $t8, 0x0030($sp)
	la.u    $a1, reset_plane
	lw      $a2, 0x01CC($t8)
	la.l    $a1, reset_plane
	jal     face_object_8017E520
	li      $a0, 0x0040
	b       77$
	nop
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_particle_80182630
face_particle_80182630:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x0008
	sw      $v0, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lw      $t6, 0x002C($sp)
	nop
	swc1    $f4, 0x0020($t6)
	lwc1    $f6, 0x003C($sp)
	lw      $t7, 0x002C($sp)
	nop
	swc1    $f6, 0x0024($t7)
	lwc1    $f8, 0x0040($sp)
	lw      $t8, 0x002C($sp)
	nop
	swc1    $f8, 0x0028($t8)
	mtc1    $0, $f10
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f10, 0x0040($t9)
	lw      $t0, 0x002C($sp)
	nop
	lwc1    $f20, 0x0040($t0)
	nop
	swc1    $f20, 0x003C($t0)
	lw      $t1, 0x002C($sp)
	nop
	swc1    $f20, 0x0038($t1)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x002C($sp)
	nop
	sw      $t2, 0x0058($t3)
	lw      $t4, 0x0030($sp)
	lw      $t6, 0x002C($sp)
	ori     $t5, $t4, 0x0008
	sw      $t5, 0x0054($t6)
	lw      $t8, 0x002C($sp)
	li      $t7, -0x0001
	sw      $t7, 0x005C($t8)
	lui     $t9, %hi(_face_object_bss-0x480+0x520)
	lw      $t9, %lo(_face_object_bss-0x480+0x520)($t9)
	lw      $t0, 0x002C($sp)
	nop
	sw      $t9, 0x0050($t0)
	lw      $t1, 0x002C($sp)
	nop
	sw      $0, 0x001C($t1)
	lw      $t3, 0x002C($sp)
	li      $t2, 0x0001
	sw      $t2, 0x00B0($t3)
	lw      $v0, 0x002C($sp)
	b       62$
	nop
	b       62$
	nop
62$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_particle_8018273C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	sw      $a1, 0x003C($sp)
	jal     gd_malloc
	li      $a0, 0x002C
	sw      $v0, 0x0034($sp)
	lw      $t6, 0x0034($sp)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_particle_801B5F40
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_particle_801B5F40
14$:
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0034($sp)
	nop
	sw      $t7, 0x001C($t8)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0034($sp)
	nop
	sw      $t9, 0x0020($t0)
	jal     face_dynlist_80183A50
	nop
	lw      $a0, 0x0038($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0028
	lw      $a0, 0x003C($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x001C($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f16, 0x0020($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0024($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	jal     face_math_80194CD8
	addiu   $a0, $sp, 0x0028
	lw      $t1, 0x0034($sp)
	nop
	swc1    $f0, 0x0024($t1)
	lw      $t2, 0x0038($sp)
	nop
	lw      $t3, 0x000C($t2)
	nop
	xori    $t4, $t3, 0x0008
	sltiu   $t4, $t4, 0x0001
	beqz    $t4, 84$
	nop
	beqz    $t4, 84$
	nop
	lw      $t5, 0x0038($sp)
	nop
	lw      $t6, 0x0054($t5)
	nop
	andi    $t7, $t6, 0x0004
	beqz    $t7, 84$
	nop
	lw      $t8, 0x003C($sp)
	nop
	lw      $t9, 0x0054($t8)
	nop
	andi    $t0, $t9, 0x0004
	beqz    $t0, 84$
	nop
	lw      $t1, 0x0034($sp)
	nop
	lw      $t2, 0x0028($t1)
	nop
	ori     $t3, $t2, 0x0001
	sw      $t3, 0x0028($t1)
84$:
	jal     face_dynlist_80183A80
	nop
	lw      $v0, 0x0034($sp)
	b       91$
	nop
	b       91$
	nop
91$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

face_particle_801828B8:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $t6, 0x007C($a0)
	li      $at, 0x0002
	lw      $t7, 0x0020($t6)
	nop
	bne     $t7, $at, 80$
	nop
	lw      $t8, 0x0074($a0)
	li      $at, 0x0001
	bne     $t8, $at, 80$
	nop
	lw      $t9, 0x0004($sp)
	lui     $t1, %hi(face_particle_801A8364+4*0)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(face_particle_801A8364+4*0)($t1)
	nop
	beqz    $t1, 80$
	nop
20$:
	lw      $t2, 0x0004($sp)
	lui     $t4, %hi(face_particle_801A8364+4*0)
	sll     $t3, $t2, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(face_particle_801A8364+4*0)($t4)
	lw      $t5, 0x007C($a0)
	mtc1    $t4, $f4
	lwc1    $f8, 0x0028($t5)
	cvt.s.w $f6, $f4
	c.eq.s  $f6, $f8
	nop
	bc1f    68$
	nop
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(face_particle_801A8364+4*1)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(face_particle_801A8364+4*1)($t8)
	li      $at, 0x41200000
	mtc1    $t8, $f10
	mtc1    $at, $f18
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0020($a0)
	lw      $t9, 0x0004($sp)
	lui     $t1, %hi(face_particle_801A8364+4*2)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(face_particle_801A8364+4*2)($t1)
	li      $at, 0x41200000
	mtc1    $t1, $f6
	mtc1    $at, $f10
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0024($a0)
	lw      $t2, 0x0004($sp)
	lui     $t4, %hi(face_particle_801A8364+4*3)
	sll     $t3, $t2, 2
	addu    $t4, $t4, $t3
	lw      $t4, %lo(face_particle_801A8364+4*3)($t4)
	li      $at, 0x41200000
	mtc1    $t4, $f18
	mtc1    $at, $f6
	cvt.s.w $f4, $f18
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($a0)
	b       162$
	li      $v0, 0x0001
68$:
	lw      $t5, 0x0004($sp)
	nop
	addiu   $t6, $t5, 0x0004
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	lui     $t9, %hi(face_particle_801A8364+4*0)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(face_particle_801A8364+4*0)($t9)
	nop
	bnez    $t9, 20$
	nop
80$:
	lw      $t0, 0x007C($a0)
	li      $at, 0x0001
	lw      $t1, 0x0020($t0)
	nop
	bne     $t1, $at, 158$
	nop
	lw      $t2, 0x0074($a0)
	li      $at, 0x0001
	bne     $t2, $at, 158$
	nop
	lw      $t3, 0x0004($sp)
	lui     $t5, %hi(face_particle_801A83C8+4*0)
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(face_particle_801A83C8+4*0)($t5)
	nop
	beqz    $t5, 158$
	nop
98$:
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(face_particle_801A83C8+4*0)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(face_particle_801A83C8+4*0)($t8)
	lw      $t9, 0x007C($a0)
	mtc1    $t8, $f10
	lwc1    $f18, 0x0028($t9)
	cvt.s.w $f16, $f10
	c.eq.s  $f16, $f18
	nop
	bc1f    146$
	nop
	lw      $t0, 0x0004($sp)
	lui     $t2, %hi(face_particle_801A83C8+4*1)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(face_particle_801A83C8+4*1)($t2)
	li      $at, 0x41200000
	mtc1    $t2, $f4
	mtc1    $at, $f8
	cvt.s.w $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($a0)
	lw      $t3, 0x0004($sp)
	lui     $t5, %hi(face_particle_801A83C8+4*2)
	sll     $t4, $t3, 2
	addu    $t5, $t5, $t4
	lw      $t5, %lo(face_particle_801A83C8+4*2)($t5)
	li      $at, 0x41200000
	mtc1    $t5, $f16
	mtc1    $at, $f4
	cvt.s.w $f18, $f16
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0024($a0)
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(face_particle_801A83C8+4*3)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(face_particle_801A83C8+4*3)($t8)
	li      $at, 0x41200000
	mtc1    $t8, $f8
	mtc1    $at, $f16
	cvt.s.w $f10, $f8
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($a0)
	b       162$
	li      $v0, 0x0001
146$:
	lw      $t9, 0x0004($sp)
	nop
	addiu   $t0, $t9, 0x0004
	sw      $t0, 0x0004($sp)
	lw      $t1, 0x0004($sp)
	lui     $t3, %hi(face_particle_801A83C8+4*0)
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(face_particle_801A83C8+4*0)($t3)
	nop
	bnez    $t3, 98$
	nop
158$:
	b       162$
	move    $v0, $0
	b       162$
	nop
162$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_particle_80182B48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x006C($t6)
	nop
	beqz    $t7, 153$
	nop
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x006C($t8)
	nop
	lw      $s0, 0x001C($t9)
	nop
	beqz    $s0, 153$
	nop
19$:
	lw      $t0, 0x0008($s0)
	nop
	sw      $t0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	nop
	lw      $t2, 0x005C($t1)
	nop
	bgtz    $t2, 149$
	nop
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x0020($sp)
	lwc1    $f4, 0x0020($t3)
	nop
	swc1    $f4, 0x0020($t4)
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0020($sp)
	lwc1    $f6, 0x0024($t5)
	nop
	swc1    $f6, 0x0024($t6)
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x0020($sp)
	lwc1    $f8, 0x0028($t7)
	nop
	swc1    $f8, 0x0028($t8)
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x41400000
	mtc1    $at, $f10
	li      $at, 0x40A00000
	mtc1    $at, $f16
	lw      $t1, 0x0020($sp)
	mul.s   $f18, $f0, $f16
	sub.s   $f4, $f10, $f18
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t0, $f6
	ctc1    $t9, $31
	sw      $t0, 0x005C($t1)
	nop
63$:
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40490000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f8, $f0
	mul.d   $f10, $f8, $f16
	li      $at, 0x40390000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lw      $t2, 0x0020($sp)
	sub.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0038($t2)
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40490000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f8, $f0
	mul.d   $f10, $f8, $f16
	li      $at, 0x40390000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lw      $t3, 0x0020($sp)
	sub.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x003C($t3)
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40490000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f8, $f0
	mul.d   $f10, $f8, $f16
	li      $at, 0x40390000
	mtc1    $at, $f19
	mtc1    $0, $f18
	lw      $t4, 0x0020($sp)
	sub.d   $f4, $f10, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0040($t4)
	lw      $a0, 0x0020($sp)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x0038
	li      $at, 0x403E0000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f8, $f0
	c.lt.d  $f16, $f8
	nop
	bc1t    63$
	nop
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x002C($sp)
	lwc1    $f10, 0x0038($t5)
	lwc1    $f18, 0x0000($t6)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0038($t5)
	lw      $t7, 0x0020($sp)
	lw      $t8, 0x002C($sp)
	lwc1    $f6, 0x003C($t7)
	lwc1    $f8, 0x0004($t8)
	nop
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x003C($t7)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x002C($sp)
	lwc1    $f10, 0x0040($t9)
	lwc1    $f18, 0x0008($t0)
	nop
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0040($t9)
	lw      $t1, 0x0020($sp)
	li      $at, -0x0003
	lhu     $t2, 0x0012($t1)
	nop
	and     $t3, $t2, $at
	sh      $t3, 0x0012($t1)
	lw      $t4, 0x0020($sp)
	nop
	lw      $t6, 0x0054($t4)
	nop
	ori     $t5, $t6, 0x0008
	sw      $t5, 0x0054($t4)
149$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 19$
	nop
153$:
	b       155$
	nop
155$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_particle_80182DC4:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0080($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	lw      $t6, 0x0080($sp)
	nop
	lw      $t7, 0x0054($t6)
	nop
	andi    $t8, $t7, 0x0002
	beqz    $t8, 14$
	nop
	b       566$
	nop
14$:
	lw      $t9, 0x0080($sp)
	nop
	lw      $t0, 0x0054($t9)
	nop
	andi    $t1, $t0, 0x0008
	bnez    $t1, 23$
	nop
	b       566$
	nop
23$:
	lw      $t2, 0x0080($sp)
	li      $at, 0x0003
	lw      $t3, 0x0060($t2)
	nop
	bne     $t3, $at, 77$
	nop
	lui     $t4, %hi(face_draw_801A8288)
	lw      $t4, %lo(face_draw_801A8288)($t4)
	li      $at, 0x42480000
	lwc1    $f4, 0x0108($t4)
	mtc1    $at, $f8
	neg.s   $f6, $f4
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0040($sp)
	lui     $t5, %hi(face_draw_801A8288)
	lw      $t5, %lo(face_draw_801A8288)($t5)
	li      $at, 0x42480000
	lwc1    $f16, 0x010C($t5)
	mtc1    $at, $f4
	neg.s   $f18, $f16
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0044($sp)
	lui     $t6, %hi(face_draw_801A8288)
	lw      $t6, %lo(face_draw_801A8288)($t6)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x0110($t6)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0048($sp)
	lui     $t7, %hi(face_draw_801A8288)
	lw      $t7, %lo(face_draw_801A8288)($t7)
	li      $at, 0xC1A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0108($t7)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0034($sp)
	lui     $t8, %hi(face_draw_801A8288)
	lw      $t8, %lo(face_draw_801A8288)($t8)
	li      $at, 0xC1A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x010C($t8)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0038($sp)
	lui     $t9, %hi(face_draw_801A8288)
	lw      $t9, %lo(face_draw_801A8288)($t9)
	li      $at, 0xC1A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0110($t9)
	nop
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x003C($sp)
77$:
	lw      $t0, 0x0080($sp)
	nop
	lw      $t1, 0x00BC($t0)
	nop
	beqz    $t1, 154$
	nop
	lw      $t2, 0x0080($sp)
	nop
	lw      $a0, 0x00BC($t2)
	jal     face_dynlist_80186C84
	nop
	lw      $t3, 0x0080($sp)
	li      $at, 0x0003
	lw      $t4, 0x0060($t3)
	nop
	bne     $t4, $at, 140$
	nop
	lw      $t5, 0x0080($sp)
	li      $at, 0x0003
	lw      $t6, 0x0064($t5)
	nop
	bne     $t6, $at, 140$
	nop
	lw      $t7, 0x0080($sp)
	nop
	lw      $t8, 0x00BC($t7)
	nop
	sw      $t8, 0x004C($sp)
	lw      $t9, 0x004C($sp)
	nop
	lw      $t0, 0x018C($t9)
	nop
	lw      $t1, 0x0030($t0)
	nop
	beqz    $t1, 128$
	nop
	lw      $t2, 0x004C($sp)
	nop
	lw      $t3, 0x018C($t2)
	nop
	lw      $a0, 0x0030($t3)
	jal     face_dynlist_80186C84
	nop
	lw      $t4, 0x0080($sp)
	nop
	lw      $t5, 0x0054($t4)
	nop
	ori     $t6, $t5, 0x0020
	sw      $t6, 0x0054($t4)
	b       140$
	nop
128$:
	lw      $t7, 0x0080($sp)
	li      $at, -0x0011
	lw      $t8, 0x0054($t7)
	nop
	and     $t9, $t8, $at
	sw      $t9, 0x0054($t7)
	lw      $t0, 0x0080($sp)
	li      $at, -0x0021
	lw      $t1, 0x0054($t0)
	nop
	and     $t2, $t1, $at
	sw      $t2, 0x0054($t0)
140$:
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0064
	lwc1    $f8, 0x0064($sp)
	lw      $t3, 0x0080($sp)
	nop
	swc1    $f8, 0x0020($t3)
	lwc1    $f10, 0x0068($sp)
	lw      $t5, 0x0080($sp)
	nop
	swc1    $f10, 0x0024($t5)
	lwc1    $f16, 0x006C($sp)
	lw      $t6, 0x0080($sp)
	nop
	swc1    $f16, 0x0028($t6)
154$:
	lui     $at, %hi(face_particle_801B5FB0)
	lwc1    $f18, %lo(face_particle_801B5FB0)($at)
	nop
	swc1    $f18, 0x007C($sp)
	lw      $t4, 0x0080($sp)
	nop
	lwc1    $f4, 0x0020($t4)
	lwc1    $f6, 0x0038($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($t4)
	lw      $t8, 0x0080($sp)
	nop
	lwc1    $f10, 0x0024($t8)
	lwc1    $f16, 0x003C($t8)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($t8)
	lw      $t9, 0x0080($sp)
	nop
	lwc1    $f4, 0x0028($t9)
	lwc1    $f6, 0x0040($t9)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($t9)
	lw      $t7, 0x0080($sp)
	nop
	lw      $t1, 0x0054($t7)
	nop
	andi    $t2, $t1, 0x0001
	beqz    $t2, 192$
	nop
	lw      $t0, 0x0080($sp)
	lwc1    $f16, 0x007C($sp)
	lwc1    $f10, 0x003C($t0)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x003C($t0)
192$:
	lw      $a0, 0x0080($sp)
	jal     face_particle_80183A10
	nop
	lw      $t3, 0x0080($sp)
	li      $at, 0x0001
	lw      $t5, 0x00B0($t3)
	nop
	bne     $t5, $at, 306$
	nop
	b       203$
	nop
203$:
	lw      $t4, 0x0080($sp)
	li      $t6, 0x0002
	sw      $t6, 0x00B0($t4)
	lw      $t8, 0x0080($sp)
	li      $at, 0x0003
	lw      $t9, 0x0060($t8)
	nop
	bne     $t9, $at, 304$
	nop
	lw      $t7, 0x0080($sp)
	li      $at, 0x0001
	lw      $s1, 0x0064($t7)
	nop
	beq     $s1, $at, 226$
	nop
	li      $at, 0x0002
	beq     $s1, $at, 265$
	nop
	li      $at, 0x0003
	beq     $s1, $at, 265$
	nop
	b       304$
	nop
226$:
	jal     make_group
	move    $a0, $0
	lw      $t1, 0x0080($sp)
	nop
	sw      $v0, 0x006C($t1)
	sw      $0, 0x0058($sp)
232$:
	lw      $t2, 0x0080($sp)
	li      $a0, 0x0001
	lwc1    $f4, 0x0028($t2)
	lw      $a2, 0x0020($t2)
	lw      $a3, 0x0024($t2)
	li      $a1, -0x0001
	jal     face_particle_80182630
	swc1    $f4, 0x0010($sp)
	sw      $v0, 0x0060($sp)
	lw      $t0, 0x0080($sp)
	lw      $t5, 0x0060($sp)
	lw      $t3, 0x001C($t0)
	nop
	sw      $t3, 0x001C($t5)
	lw      $t6, 0x0080($sp)
	lw      $a1, 0x0060($sp)
	lw      $a0, 0x006C($t6)
	jal     addto_group
	nop
	lw      $t4, 0x0060($sp)
	li      $at, -0x0009
	lw      $t8, 0x0054($t4)
	nop
	and     $t9, $t8, $at
	sw      $t9, 0x0054($t4)
	lw      $t7, 0x0058($sp)
	nop
	addiu   $t1, $t7, 0x0001
	slti    $at, $t1, 0x0032
	bnez    $at, 232$
	sw      $t1, 0x0058($sp)
	b       304$
	nop
265$:
	jal     make_group
	move    $a0, $0
	lw      $t2, 0x0080($sp)
	nop
	sw      $v0, 0x006C($t2)
	sw      $0, 0x0058($sp)
271$:
	lw      $t0, 0x0080($sp)
	li      $a0, 0x0001
	lwc1    $f6, 0x0028($t0)
	lw      $a2, 0x0020($t0)
	lw      $a3, 0x0024($t0)
	li      $a1, -0x0001
	jal     face_particle_80182630
	swc1    $f6, 0x0010($sp)
	sw      $v0, 0x0060($sp)
	lw      $t3, 0x0080($sp)
	lw      $t6, 0x0060($sp)
	lw      $t5, 0x001C($t3)
	nop
	sw      $t5, 0x001C($t6)
	lw      $t8, 0x0080($sp)
	lw      $a1, 0x0060($sp)
	lw      $a0, 0x006C($t8)
	jal     addto_group
	nop
	lw      $t9, 0x0060($sp)
	li      $at, -0x0009
	lw      $t4, 0x0054($t9)
	nop
	and     $t7, $t4, $at
	sw      $t7, 0x0054($t9)
	lw      $t1, 0x0058($sp)
	nop
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x001E
	bnez    $at, 271$
	sw      $t2, 0x0058($sp)
	b       304$
	nop
304$:
	b       308$
	nop
306$:
	b       308$
	nop
308$:
	lw      $t0, 0x0080($sp)
	lui     $at, %hi(face_particle_801B5FB8+4)
	lwc1    $f8, 0x0038($t0)
	lwc1    $f17, %lo(face_particle_801B5FB8+0)($at)
	lwc1    $f16, %lo(face_particle_801B5FB8+4)($at)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0038($t0)
	lw      $t3, 0x0080($sp)
	lui     $at, %hi(face_particle_801B5FC0+4)
	lwc1    $f6, 0x003C($t3)
	lwc1    $f11, %lo(face_particle_801B5FC0+0)($at)
	lwc1    $f10, %lo(face_particle_801B5FC0+4)($at)
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x003C($t3)
	lw      $t5, 0x0080($sp)
	lui     $at, %hi(face_particle_801B5FC8+4)
	lwc1    $f4, 0x0040($t5)
	lwc1    $f9, %lo(face_particle_801B5FC8+0)($at)
	lwc1    $f8, %lo(face_particle_801B5FC8+4)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0040($t5)
	lw      $t6, 0x0080($sp)
	li      $at, 0x0003
	lw      $t8, 0x0060($t6)
	nop
	bne     $t8, $at, 537$
	nop
	lw      $t4, 0x0080($sp)
	li      $at, 0x0001
	lw      $s1, 0x0064($t4)
	nop
	beq     $s1, $at, 355$
	nop
	li      $at, 0x0002
	beq     $s1, $at, 526$
	nop
	li      $at, 0x0003
	beq     $s1, $at, 505$
	nop
	b       531$
	nop
355$:
	lw      $a0, 0x0080($sp)
	jal     face_particle_801828B8
	nop
	beqz    $v0, 503$
	nop
	lw      $t7, 0x0080($sp)
	nop
	lw      $t9, 0x006C($t7)
	nop
	beqz    $t9, 503$
	nop
	lw      $t1, 0x0080($sp)
	nop
	lw      $t2, 0x0080($t1)
	nop
	beqz    $t2, 398$
	nop
	lw      $t0, 0x0080($sp)
	nop
	lw      $t3, 0x0080($t0)
	nop
	lw      $t5, 0x003C($t3)
	nop
	ori     $t6, $t5, 0x0001
	sw      $t6, 0x003C($t3)
	lw      $t8, 0x0080($sp)
	nop
	lwc1    $f18, 0x0020($t8)
	lw      $t4, 0x0080($t8)
	nop
	swc1    $f18, 0x0074($t4)
	lw      $t7, 0x0080($sp)
	nop
	lwc1    $f4, 0x0024($t7)
	lw      $t9, 0x0080($t7)
	nop
	swc1    $f4, 0x0078($t9)
	lw      $t1, 0x0080($sp)
	nop
	lwc1    $f6, 0x0028($t1)
	lw      $t2, 0x0080($t1)
	nop
	swc1    $f6, 0x007C($t2)
398$:
	lw      $t0, 0x0080($sp)
	nop
	lw      $t5, 0x006C($t0)
	nop
	lw      $s0, 0x001C($t5)
	nop
	beqz    $s0, 503$
	nop
406$:
	lw      $t6, 0x0008($s0)
	nop
	sw      $t6, 0x002C($sp)
	lw      $t3, 0x0080($sp)
	lw      $t8, 0x002C($sp)
	lwc1    $f8, 0x0020($t3)
	nop
	swc1    $f8, 0x0020($t8)
	lw      $t4, 0x0080($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f10, 0x0024($t4)
	nop
	swc1    $f10, 0x0024($t7)
	lw      $t9, 0x0080($sp)
	lw      $t1, 0x002C($sp)
	lwc1    $f16, 0x0028($t9)
	nop
	swc1    $f16, 0x0028($t1)
	lw      $t0, 0x002C($sp)
	li      $t2, 0x0014
	sw      $t2, 0x005C($t0)
427$:
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40500000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	mul.d   $f6, $f18, $f4
	li      $at, 0x40400000
	mtc1    $at, $f9
	mtc1    $0, $f8
	lw      $t5, 0x002C($sp)
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0038($t5)
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40500000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	mul.d   $f6, $f18, $f4
	li      $at, 0x40400000
	mtc1    $at, $f9
	mtc1    $0, $f8
	lw      $t6, 0x002C($sp)
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x003C($t6)
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x40500000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	mul.d   $f6, $f18, $f4
	li      $at, 0x40400000
	mtc1    $at, $f9
	mtc1    $0, $f8
	lw      $t3, 0x002C($sp)
	sub.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0040($t3)
	lw      $a0, 0x002C($sp)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x0038
	li      $at, 0x40400000
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f0
	c.lt.d  $f4, $f18
	nop
	bc1t    427$
	nop
	jal     face_stdio_8018D6A0
	nop
	li      $at, 0x43340000
	mtc1    $at, $f6
	lw      $t8, 0x002C($sp)
	mul.s   $f8, $f0, $f6
	swc1    $f8, 0x0030($t8)
	lw      $t4, 0x002C($sp)
	li      $at, -0x0003
	lhu     $t7, 0x0012($t4)
	nop
	and     $t9, $t7, $at
	sh      $t9, 0x0012($t4)
	lw      $t1, 0x002C($sp)
	nop
	lw      $t2, 0x0054($t1)
	nop
	ori     $t0, $t2, 0x0008
	sw      $t0, 0x0054($t1)
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 406$
	nop
503$:
	b       531$
	nop
505$:
	lw      $t5, 0x0080($sp)
	nop
	lw      $t6, 0x0054($t5)
	nop
	andi    $t3, $t6, 0x0020
	beqz    $t3, 524$
	nop
	andi    $t8, $t6, 0x0010
	bnez    $t8, 524$
	nop
	lw      $a0, 0x0080($sp)
	jal     face_particle_80182B48
	addiu   $a1, $sp, 0x0040
	lw      $t7, 0x0080($sp)
	nop
	lw      $t9, 0x0054($t7)
	nop
	ori     $t4, $t9, 0x0010
	sw      $t4, 0x0054($t7)
524$:
	b       531$
	nop
526$:
	lw      $a0, 0x0080($sp)
	jal     face_particle_80182B48
	addiu   $a1, $sp, 0x0034
	b       531$
	nop
531$:
	lw      $t2, 0x0080($sp)
	la.u    $a1, face_particle_80182DC4
	lw      $a2, 0x006C($t2)
	la.l    $a1, face_particle_80182DC4
	jal     face_object_8017E520
	li      $a0, 0x0008
537$:
	lw      $t0, 0x0080($sp)
	nop
	lw      $t1, 0x005C($t0)
	nop
	bltz    $t1, 564$
	nop
	lw      $t5, 0x0080($sp)
	nop
	lw      $s1, 0x005C($t5)
	lw      $t6, 0x005C($t5)
	slti    $t3, $s1, 0x0001
	move    $s1, $t3
	addiu   $t8, $t6, -0x0001
	beqz    $s1, 564$
	sw      $t8, 0x005C($t5)
	lw      $t9, 0x0080($sp)
	nop
	lhu     $t4, 0x0012($t9)
	nop
	ori     $t7, $t4, 0x0002
	sh      $t7, 0x0012($t9)
	lw      $t2, 0x0080($sp)
	li      $at, -0x0009
	lw      $t0, 0x0054($t2)
	nop
	and     $t1, $t0, $at
	sw      $t1, 0x0054($t2)
564$:
	b       566$
	nop
566$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0080

.globl face_particle_801836B0
face_particle_801836B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_particle_801B5F64
	jal     start_timer
	la.l    $a0, str_face_particle_801B5F64
	lui     $at, %hi(face_net_801BAC80)
	sw      $0, %lo(face_net_801BAC80)($at)
	la.u    $a1, face_particle_80182DC4
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_particle_80182DC4
	jal     face_object_8017E520
	li      $a0, 0x0008
	la.u    $a0, str_face_particle_801B5F70
	jal     stop_timer
	la.l    $a0, str_face_particle_801B5F70
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_particle_80183708:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0060($sp)
	sw      $s0, 0x0030($sp)
	swc1    $f25, 0x0028($sp)
	swc1    $f24, 0x002C($sp)
	swc1    $f23, 0x0020($sp)
	swc1    $f22, 0x0024($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	lw      $t6, 0x0060($sp)
	la.u    $a0, str_face_particle_801B5F7C
	lw      $t7, 0x00B4($t6)
	la.l    $a0, str_face_particle_801B5F7C
	lw      $a1, 0x0028($t7)
	jal     gd_printf
	nop
	lw      $t8, 0x0060($sp)
	nop
	lw      $t9, 0x00B4($t8)
	nop
	lw      $s0, 0x001C($t9)
	nop
	beqz    $s0, 155$
	nop
25$:
	lw      $t0, 0x0008($s0)
	nop
	sw      $t0, 0x0048($sp)
	lw      $t1, 0x0048($sp)
	lw      $t2, 0x0060($sp)
	lwc1    $f4, 0x0020($t1)
	lwc1    $f6, 0x0020($t2)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0054($sp)
	lw      $t3, 0x0048($sp)
	lw      $t4, 0x0060($sp)
	lwc1    $f10, 0x0024($t3)
	lwc1    $f16, 0x0024($t4)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0058($sp)
	lw      $t5, 0x0048($sp)
	lw      $t6, 0x0060($sp)
	lwc1    $f4, 0x0028($t5)
	lwc1    $f6, 0x0028($t6)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($sp)
	lwc1    $f10, 0x0058($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    58$
	nop
	b       60$
	neg.s   $f24, $f10
58$:
	lwc1    $f24, 0x0058($sp)
	nop
60$:
	lwc1    $f18, 0x0054($sp)
	mtc1    $0, $f4
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    69$
	nop
	b       71$
	neg.s   $f22, $f18
69$:
	lwc1    $f22, 0x0054($sp)
	nop
71$:
	lwc1    $f6, 0x005C($sp)
	mtc1    $0, $f8
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    80$
	nop
	b       82$
	neg.s   $f20, $f6
80$:
	lwc1    $f20, 0x005C($sp)
	nop
82$:
	add.s   $f10, $f22, $f24
	li      $at, 0x43160000
	mtc1    $at, $f16
	add.s   $f4, $f20, $f10
	sub.s   $f18, $f16, $f4
	swc1    $f18, 0x0050($sp)
	lwc1    $f8, 0x0050($sp)
	la.u    $a0, str_face_particle_801B5F84
	cvt.d.s $f6, $f8
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	jal     gd_printf
	la.l    $a0, str_face_particle_801B5F84
	lui     $at, %hi(face_particle_801B5FD0+4)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f5, %lo(face_particle_801B5FD0+0)($at)
	lwc1    $f4, %lo(face_particle_801B5FD0+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f18, $f16, $f4
	cvt.s.d $f8, $f18
	swc1    $f8, 0x0050($sp)
	lwc1    $f6, 0x0050($sp)
	lwc1    $f10, 0x0054($sp)
	lw      $t7, 0x0060($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f4, 0x0020($t7)
	nop
	add.s   $f18, $f4, $f16
	swc1    $f18, 0x0020($t7)
	lwc1    $f8, 0x0050($sp)
	lwc1    $f6, 0x0058($sp)
	lw      $t8, 0x0060($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f4, 0x0024($t8)
	nop
	add.s   $f16, $f4, $f10
	swc1    $f16, 0x0024($t8)
	lwc1    $f18, 0x0050($sp)
	lwc1    $f8, 0x005C($sp)
	lw      $t9, 0x0060($sp)
	mul.s   $f6, $f18, $f8
	lwc1    $f4, 0x0028($t9)
	nop
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0028($t9)
	lwc1    $f16, 0x0050($sp)
	lwc1    $f18, 0x0054($sp)
	lw      $t0, 0x0048($sp)
	mul.s   $f8, $f16, $f18
	lwc1    $f4, 0x0020($t0)
	nop
	sub.s   $f6, $f4, $f8
	swc1    $f6, 0x0020($t0)
	lwc1    $f10, 0x0050($sp)
	lwc1    $f16, 0x0058($sp)
	lw      $t1, 0x0048($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f4, 0x0024($t1)
	nop
	sub.s   $f8, $f4, $f18
	swc1    $f8, 0x0024($t1)
	lwc1    $f6, 0x0050($sp)
	lwc1    $f10, 0x005C($sp)
	lw      $t2, 0x0048($sp)
	mul.s   $f16, $f6, $f10
	lwc1    $f4, 0x0028($t2)
	nop
	sub.s   $f18, $f4, $f16
	swc1    $f18, 0x0028($t2)
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 25$
	nop
155$:
	la.u    $a0, str_face_particle_801B5F8C
	jal     gd_printf
	la.l    $a0, str_face_particle_801B5F8C
	b       160$
	nop
160$:
	lw      $ra, 0x0034($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lwc1    $f23, 0x0020($sp)
	lwc1    $f22, 0x0024($sp)
	lwc1    $f25, 0x0028($sp)
	lwc1    $f24, 0x002C($sp)
	lw      $s0, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

face_particle_801839B0:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_particle_801839C4:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_particle_801839D8:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       5$
	nop
5$:
	jr      $ra
	nop

face_particle_801839F4:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	b       5$
	nop
5$:
	jr      $ra
	nop

face_particle_80183A10:
	lui     $at, %hi(_face_object_bss-0x480+0x51C)
	sw      $a0, %lo(_face_object_bss-0x480+0x51C)($at)
	li      $at, 0xC1700000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($a0)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    10$
	nop
10$:
	jr      $ra
	nop
	jr      $ra
	nop
