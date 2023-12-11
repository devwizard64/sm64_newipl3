.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_net_80192050:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     face_object_8017BDF0
	nop
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x01D0($t6)
	nop
	beqz    $t7, 18$
	nop
	lw      $t8, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_object_8017BE60
	lw      $a2, 0x01D0($t8)
	la.l    $a1, face_object_8017BE60
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
18$:
	lw      $t9, 0x0018($sp)
	nop
	lw      $t0, 0x01C8($t9)
	nop
	beqz    $t0, 31$
	nop
	lw      $t1, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_object_8017BE60
	lw      $a2, 0x01C8($t1)
	la.l    $a1, face_object_8017BE60
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
31$:
	lw      $t2, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x480)($at)
	lwc1    $f6, 0x01AC($t2)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_object_bss-0x480+0x480)($at)
	lw      $t3, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x48C)($at)
	lwc1    $f16, 0x01AC($t3)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_object_bss-0x480+0x48C)($at)
	lw      $t4, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x484)($at)
	lwc1    $f6, 0x01B0($t4)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_object_bss-0x480+0x484)($at)
	lw      $t5, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x490)($at)
	lwc1    $f16, 0x01B0($t5)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_object_bss-0x480+0x490)($at)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x488)($at)
	lwc1    $f6, 0x01B4($t6)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x494)($at)
	lwc1    $f16, 0x01B4($t7)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_object_bss-0x480+0x494)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x480)($at)
	lw      $t8, 0x0018($sp)
	nop
	swc1    $f4, 0x00BC($t8)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x484)($at)
	lw      $t9, 0x0018($sp)
	nop
	swc1    $f6, 0x00C0($t9)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	lwc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
	lw      $t0, 0x0018($sp)
	nop
	swc1    $f8, 0x00C4($t0)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x48C)($at)
	lw      $t1, 0x0018($sp)
	nop
	swc1    $f10, 0x00C8($t1)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x490)($at)
	lw      $t2, 0x0018($sp)
	nop
	swc1    $f16, 0x00CC($t2)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	lwc1    $f18, %lo(_face_object_bss-0x480+0x494)($at)
	lw      $t3, 0x0018($sp)
	nop
	swc1    $f18, 0x00D0($t3)
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl reset_net
reset_net:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0020($t6)
	nop
	swc1    $f4, 0x0014($t6)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f6, 0x0024($t7)
	nop
	swc1    $f6, 0x0018($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f8, 0x0028($t8)
	nop
	swc1    $f8, 0x001C($t8)
	mtc1    $0, $f10
	lw      $t9, 0x0028($sp)
	nop
	swc1    $f10, 0x0058($t9)
	lw      $t0, 0x0028($sp)
	nop
	lwc1    $f20, 0x0058($t0)
	nop
	swc1    $f20, 0x0054($t0)
	lw      $t1, 0x0028($sp)
	nop
	swc1    $f20, 0x0050($t1)
	mtc1    $0, $f16
	lw      $t2, 0x0028($sp)
	nop
	swc1    $f16, 0x00AC($t2)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f20, 0x00AC($t3)
	nop
	swc1    $f20, 0x00A8($t3)
	lw      $t4, 0x0028($sp)
	nop
	swc1    $f20, 0x00A4($t4)
	lw      $a0, 0x0028($sp)
	jal     face_net_80192050
	nop
	lw      $a1, 0x0028($sp)
	la.u    $a0, str_face_net_801B8740
	la.l    $a0, str_face_net_801B8740
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x01AC
	lw      $a1, 0x0028($sp)
	la.u    $a0, str_face_net_801B874C
	la.l    $a0, str_face_net_801B874C
	jal     face_math_801970E8
	addiu   $a1, $a1, 0x00BC
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(face_net_801BAC80)
	sw      $t5, %lo(face_net_801BAC80)($at)
	lui     $at, %hi(face_net_801BAC84)
	sw      $0, %lo(face_net_801BAC84)($at)
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0168
	lw      $a0, 0x0028($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00E8
	lw      $t6, 0x0028($sp)
	nop
	addiu   $a0, $t6, 0x00E8
	jal     face_math_80194360
	addiu   $a1, $t6, 0x0068
	lw      $t7, 0x0028($sp)
	nop
	addiu   $a0, $t7, 0x00E8
	jal     face_math_80194424
	addiu   $a1, $t7, 0x0014
	lw      $t8, 0x0028($sp)
	nop
	addiu   $a0, $t8, 0x00E8
	jal     face_math_801964A0
	addiu   $a1, $t8, 0x0128
	lw      $t9, 0x0028($sp)
	nop
	lw      $t0, 0x01C8($t9)
	nop
	beqz    $t0, 109$
	sw      $t0, 0x0024($sp)
	la.u    $a1, face_joint_80191744
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_joint_80191744
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_80191360
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_joint_80191360
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_8018FC98
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_joint_8018FC98
	jal     face_object_8017E520
	li      $a0, 0x0002
	la.u    $a1, face_joint_8018FBA8
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_joint_8018FBA8
	jal     face_object_8017E520
	li      $a0, 0x0002
109$:
	b       111$
	nop
111$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_net_801923D4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x01E8($t6)
	nop
	bnez    $t7, 20$
	nop
	la.u    $a0, str_face_net_801B8758
	jal     restart_timer
	la.l    $a0, str_face_net_801B8758
	lw      $a0, 0x0020($sp)
	jal     face_object_8017F194
	move    $a1, $0
	sw      $v0, 0x001C($sp)
	la.u    $a0, str_face_net_801B8764
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_net_801B8764
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_net_8019243C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lui     $at, %hi(face_net_801BAC80)
	sw      $t6, %lo(face_net_801BAC80)($at)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0004
	lw      $t8, 0x01EC($t7)
	nop
	bne     $t8, $at, 40$
	nop
	lw      $t9, 0x0028($sp)
	nop
	lw      $t0, 0x01A8($t9)
	nop
	beqz    $t0, 29$
	nop
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x518)
	addiu   $t2, $t1, 0x0128
	sw      $t2, %lo(_face_object_bss-0x480+0x518)($at)
	lw      $t3, 0x0028($sp)
	nop
	lw      $t4, 0x01A8($t3)
	nop
	lw      $a0, 0x0020($t4)
	jal     face_skin_801818A0
	nop
29$:
	lw      $t5, 0x0028($sp)
	nop
	lw      $t6, 0x01C8($t5)
	nop
	beqz    $t6, 40$
	sw      $t6, 0x0024($sp)
	la.u    $a1, face_skin_80181CC8
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_skin_80181CC8
	jal     face_object_8017E520
	li      $a0, 0x0004
40$:
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_net_801924F4
face_net_801924F4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x0020
	sw      $v0, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0128
	mtc1    $0, $f4
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f4, 0x0028($t6)
	lw      $t7, 0x0024($sp)
	nop
	lwc1    $f20, 0x0028($t7)
	nop
	swc1    $f20, 0x0024($t7)
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f20, 0x0020($t8)
	lui     $t9, %hi(face_net_801BAC88)
	lw      $t9, %lo(face_net_801BAC88)($t9)
	lw      $t1, 0x0024($sp)
	lui     $at, %hi(face_net_801BAC88)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(face_net_801BAC88)($at)
	sw      $t0, 0x0038($t1)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f6, 0x01B4($t2)
	lw      $t3, 0x0024($sp)
	nop
	lwc1    $f20, 0x01B4($t3)
	nop
	swc1    $f20, 0x01B0($t3)
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f20, 0x01AC($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x01A8($t6)
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x01C8($t8)
	lw      $t9, 0x0034($sp)
	lw      $t0, 0x0024($sp)
	nop
	sw      $t9, 0x01CC($t0)
	lw      $t1, 0x0038($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x01D0($t2)
	lw      $t3, 0x0024($sp)
	nop
	sw      $0, 0x01EC($t3)
	lw      $t4, 0x0024($sp)
	nop
	sw      $0, 0x0210($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x021C($t5)
	lw      $t7, 0x0024($sp)
	li      $t6, 0x0001
	sw      $t6, 0x003C($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $0, 0x0040($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x01C4($t9)
	lw      $a0, 0x0024($sp)
	jal     reset_net
	nop
	lw      $v0, 0x0024($sp)
	b       88$
	nop
	b       88$
	nop
88$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_net_80192668:
	addiu   $sp, $sp, -0x0008
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x004C($a0)
	lwc1    $f12, 0x004C($a0)
	nop
	swc1    $f12, 0x0048($a0)
	swc1    $f12, 0x0044($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x007C($a0)
	lwc1    $f12, 0x007C($a0)
	nop
	swc1    $f12, 0x0078($a0)
	swc1    $f12, 0x0074($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0088($a0)
	lwc1    $f12, 0x0088($a0)
	nop
	swc1    $f12, 0x0084($a0)
	swc1    $f12, 0x0080($a0)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x00DC($a0)
	lwc1    $f12, 0x00DC($a0)
	nop
	swc1    $f12, 0x00D8($a0)
	swc1    $f12, 0x00D4($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00E0($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x4A0)
	sw      $0, %lo(_face_object_bss-0x480+0x4A0)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x4A4)
	sw      $0, %lo(_face_object_bss-0x480+0x4A4)($at)
	mtc1    $0, $f18
	lui     $at, %hi(_face_object_bss-0x480+0x4F8)
	swc1    $f18, %lo(_face_object_bss-0x480+0x4F8)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_face_object_bss-0x480+0x4FC)
	swc1    $f4, %lo(_face_object_bss-0x480+0x4FC)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_face_object_bss-0x480+0x500)
	swc1    $f6, %lo(_face_object_bss-0x480+0x500)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_face_object_bss-0x480+0x508)
	swc1    $f8, %lo(_face_object_bss-0x480+0x508)($at)
	mtc1    $0, $f10
	lui     $at, %hi(_face_object_bss-0x480+0x50C)
	swc1    $f10, %lo(_face_object_bss-0x480+0x50C)($at)
	mtc1    $0, $f16
	lui     $at, %hi(_face_object_bss-0x480+0x510)
	swc1    $f16, %lo(_face_object_bss-0x480+0x510)($at)
	mtc1    $0, $f18
	lui     $at, %hi(_face_object_bss-0x480+0x514)
	swc1    $f18, %lo(_face_object_bss-0x480+0x514)($at)
	lw      $t6, 0x0034($a0)
	nop
	andi    $t7, $t6, 0x0001
	beqz    $t7, 70$
	nop
	lwc1    $f4, 0x0054($a0)
	li      $at, 0xC0100000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	add.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0054($a0)
70$:
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0050($a0)
	lwc1    $f8, 0x0014($a0)
	div.s   $f6, $f18, $f4
	add.s   $f10, $f8, $f6
	swc1    $f10, 0x0014($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($a0)
	lwc1    $f8, 0x0018($a0)
	div.s   $f4, $f16, $f18
	add.s   $f6, $f8, $f4
	swc1    $f6, 0x0018($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lwc1    $f10, 0x0058($a0)
	lwc1    $f8, 0x001C($a0)
	div.s   $f18, $f10, $f16
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x001C($a0)
	b       93$
	nop
93$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_net_801927E4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t6, %lo(_face_object_bss-0x480+0x4A4)($t6)
	nop
	beqz    $t6, 141$
	nop
	lui     $at, %hi(_face_object_bss-0x480+0x514)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x514)($at)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    37$
	nop
	lui     $at, %hi(_face_object_bss-0x480+0x508)
	lwc1    $f8, %lo(_face_object_bss-0x480+0x508)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x514)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x514)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x508)
	div.s   $f16, $f8, $f10
	swc1    $f16, %lo(_face_object_bss-0x480+0x508)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x50C)
	lwc1    $f18, %lo(_face_object_bss-0x480+0x50C)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x514)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x514)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x50C)
	div.s   $f6, $f18, $f4
	swc1    $f6, %lo(_face_object_bss-0x480+0x50C)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x510)
	lwc1    $f8, %lo(_face_object_bss-0x480+0x510)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x514)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x514)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x510)
	div.s   $f16, $f8, $f10
	swc1    $f16, %lo(_face_object_bss-0x480+0x510)($at)
37$:
	lui     $t7, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t7, %lo(_face_object_bss-0x480+0x4A4)($t7)
	li      $at, 0x3FF00000
	mtc1    $t7, $f4
	mtc1    $at, $f19
	cvt.d.w $f6, $f4
	mtc1    $0, $f18
	lui     $at, %hi(_face_object_bss-0x480+0x508)
	div.d   $f8, $f18, $f6
	lwc1    $f10, %lo(_face_object_bss-0x480+0x508)($at)
	nop
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f8
	cvt.s.d $f18, $f4
	swc1    $f18, %lo(_face_object_bss-0x480+0x508)($at)
	lui     $t8, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t8, %lo(_face_object_bss-0x480+0x4A4)($t8)
	li      $at, 0x3FF00000
	mtc1    $t8, $f10
	mtc1    $at, $f7
	cvt.d.w $f16, $f10
	mtc1    $0, $f6
	lui     $at, %hi(_face_object_bss-0x480+0x50C)
	div.d   $f8, $f6, $f16
	lwc1    $f4, %lo(_face_object_bss-0x480+0x50C)($at)
	nop
	cvt.d.s $f18, $f4
	mul.d   $f10, $f18, $f8
	cvt.s.d $f6, $f10
	swc1    $f6, %lo(_face_object_bss-0x480+0x50C)($at)
	lui     $t9, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t9, %lo(_face_object_bss-0x480+0x4A4)($t9)
	li      $at, 0x3FF00000
	mtc1    $t9, $f4
	mtc1    $at, $f17
	cvt.d.w $f18, $f4
	mtc1    $0, $f16
	lui     $at, %hi(_face_object_bss-0x480+0x510)
	div.d   $f8, $f16, $f18
	lwc1    $f10, %lo(_face_object_bss-0x480+0x510)($at)
	nop
	cvt.d.s $f6, $f10
	mul.d   $f4, $f6, $f8
	cvt.s.d $f16, $f4
	swc1    $f16, %lo(_face_object_bss-0x480+0x510)($at)
	lui     $t0, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t0, %lo(_face_object_bss-0x480+0x4A4)($t0)
	li      $at, 0x3FF00000
	mtc1    $t0, $f10
	mtc1    $at, $f19
	cvt.d.w $f6, $f10
	mtc1    $0, $f18
	lui     $at, %hi(_face_object_bss-0x480+0x4F8)
	div.d   $f8, $f18, $f6
	lwc1    $f4, %lo(_face_object_bss-0x480+0x4F8)($at)
	nop
	cvt.d.s $f16, $f4
	mul.d   $f10, $f16, $f8
	cvt.s.d $f18, $f10
	swc1    $f18, %lo(_face_object_bss-0x480+0x4F8)($at)
	lui     $t1, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t1, %lo(_face_object_bss-0x480+0x4A4)($t1)
	li      $at, 0x3FF00000
	mtc1    $t1, $f4
	mtc1    $at, $f7
	cvt.d.w $f16, $f4
	mtc1    $0, $f6
	lui     $at, %hi(_face_object_bss-0x480+0x4FC)
	div.d   $f8, $f6, $f16
	lwc1    $f10, %lo(_face_object_bss-0x480+0x4FC)($at)
	nop
	cvt.d.s $f18, $f10
	mul.d   $f4, $f18, $f8
	cvt.s.d $f6, $f4
	swc1    $f6, %lo(_face_object_bss-0x480+0x4FC)($at)
	lui     $t2, %hi(_face_object_bss-0x480+0x4A4)
	lw      $t2, %lo(_face_object_bss-0x480+0x4A4)($t2)
	li      $at, 0x3FF00000
	mtc1    $t2, $f10
	mtc1    $at, $f17
	cvt.d.w $f18, $f10
	mtc1    $0, $f16
	lui     $at, %hi(_face_object_bss-0x480+0x500)
	div.d   $f8, $f16, $f18
	lwc1    $f4, %lo(_face_object_bss-0x480+0x500)($at)
	nop
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, %lo(_face_object_bss-0x480+0x500)($at)
	lui     $a0, %hi(face_net_801BAC80)
	lw      $a0, %lo(face_net_801BAC80)($a0)
	la.u    $a1, _face_object_bss-0x480+0x508
	la.u    $a2, _face_object_bss-0x480+0x4F8
	la.l    $a2, _face_object_bss-0x480+0x4F8
	jal     face_object_8017E6C4
	la.l    $a1, _face_object_bss-0x480+0x508
	lui     $a0, %hi(face_net_801BAC80)
	lw      $a0, %lo(face_net_801BAC80)($a0)
	la.u    $a1, _face_object_bss-0x480+0x508
	la.u    $a2, _face_object_bss-0x480+0x4F8
	la.l    $a2, _face_object_bss-0x480+0x4F8
	jal     face_object_8017E978
	la.l    $a1, _face_object_bss-0x480+0x508
141$:
	lw      $t3, 0x0018($sp)
	nop
	lwc1    $f18, 0x00A4($t3)
	lwc1    $f4, 0x0080($t3)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t3)
	lw      $t4, 0x0018($sp)
	nop
	lwc1    $f8, 0x00A8($t4)
	lwc1    $f10, 0x0084($t4)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00A8($t4)
	lw      $t5, 0x0018($sp)
	nop
	lwc1    $f18, 0x00AC($t5)
	lwc1    $f4, 0x0088($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00AC($t5)
	lw      $t6, 0x0018($sp)
	li      $at, 0x3FF00000
	lwc1    $f8, 0x0074($t6)
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0074($t6)
	lw      $t7, 0x0018($sp)
	li      $at, 0x3FF00000
	lwc1    $f6, 0x0078($t7)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x0078($t7)
	lw      $t8, 0x0018($sp)
	li      $at, 0x3FF00000
	lwc1    $f4, 0x007C($t8)
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x007C($t8)
	lw      $t9, 0x0018($sp)
	nop
	lwc1    $f18, 0x0050($t9)
	lwc1    $f4, 0x0074($t9)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0050($t9)
	lw      $t0, 0x0018($sp)
	nop
	lwc1    $f8, 0x0054($t0)
	lwc1    $f10, 0x0078($t0)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($t0)
	lw      $t1, 0x0018($sp)
	nop
	lwc1    $f18, 0x0058($t1)
	lwc1    $f4, 0x007C($t1)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0058($t1)
	lw      $t2, 0x0018($sp)
	nop
	lwc1    $f8, 0x0014($t2)
	lwc1    $f10, 0x0074($t2)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($t2)
	lw      $t3, 0x0018($sp)
	nop
	lwc1    $f18, 0x0018($t3)
	lwc1    $f4, 0x0078($t3)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0018($t3)
	lw      $t4, 0x0018($sp)
	nop
	lwc1    $f8, 0x001C($t4)
	lwc1    $f10, 0x007C($t4)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x001C($t4)
	lw      $a0, 0x0018($sp)
	jal     face_object_8017EB2C
	nop
	lw      $t5, 0x0018($sp)
	lui     $at, %hi(face_net_801B8930+4)
	lwc1    $f18, 0x00A4($t5)
	lwc1    $f7, %lo(face_net_801B8930+0)($at)
	lwc1    $f6, %lo(face_net_801B8930+4)($at)
	cvt.d.s $f4, $f18
	mul.d   $f8, $f4, $f6
	cvt.s.d $f10, $f8
	swc1    $f10, 0x00A4($t5)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(face_net_801B8938+4)
	lwc1    $f16, 0x00AC($t6)
	lwc1    $f5, %lo(face_net_801B8938+0)($at)
	lwc1    $f4, %lo(face_net_801B8938+4)($at)
	cvt.d.s $f18, $f16
	mul.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x00AC($t6)
	lw      $t7, 0x0018($sp)
	lui     $at, %hi(face_net_801B8940+4)
	lwc1    $f10, 0x00A8($t7)
	lwc1    $f19, %lo(face_net_801B8940+0)($at)
	lwc1    $f18, %lo(face_net_801B8940+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x00A8($t7)
	b       263$
	nop
263$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_net_80192C10:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	nop
	lw      $t7, 0x01C8($t6)
	nop
	bnez    $t7, 11$
	sw      $t7, 0x0060($sp)
	b       95$
	nop
11$:
	lw      $t8, 0x0068($sp)
	nop
	lw      $t9, 0x01F0($t8)
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0068($sp)
	nop
	lwc1    $f4, 0x01F4($t0)
	nop
	swc1    $f4, 0x0014($t0)
	lw      $t1, 0x0068($sp)
	nop
	lwc1    $f6, 0x01F8($t1)
	nop
	swc1    $f6, 0x0018($t1)
	lw      $t2, 0x0068($sp)
	nop
	lwc1    $f8, 0x01FC($t2)
	nop
	swc1    $f8, 0x001C($t2)
	lw      $a0, 0x0068($sp)
	lw      $a1, 0x0018($sp)
	addiu   $a0, $a0, 0x0014
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	lw      $t3, 0x0068($sp)
	nop
	lw      $t4, 0x01F0($t3)
	lwc1    $f10, 0x0014($t3)
	lwc1    $f16, 0x0014($t4)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t3)
	lw      $t5, 0x0068($sp)
	nop
	lw      $t6, 0x01F0($t5)
	lwc1    $f4, 0x0018($t5)
	lwc1    $f6, 0x0018($t6)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($t5)
	lw      $t7, 0x0068($sp)
	nop
	lw      $t8, 0x01F0($t7)
	lwc1    $f10, 0x001C($t7)
	lwc1    $f16, 0x001C($t8)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($t7)
	mtc1    $0, $f4
	lw      $t9, 0x0068($sp)
	nop
	swc1    $f4, 0x0200($t9)
	li      $at, 0x41200000
	mtc1    $at, $f6
	lw      $t0, 0x0068($sp)
	nop
	swc1    $f6, 0x0204($t0)
	li      $at, 0xC0800000
	mtc1    $at, $f8
	lw      $t1, 0x0068($sp)
	nop
	swc1    $f8, 0x0208($t1)
	lw      $a0, 0x0068($sp)
	lw      $a1, 0x0018($sp)
	addiu   $a0, $a0, 0x0200
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	la.u    $a1, face_joint_80191964
	lw      $a2, 0x0060($sp)
	la.l    $a1, face_joint_80191964
	jal     face_object_8017E520
	li      $a0, 0x0004
	lw      $a0, 0x0060($sp)
	jal     face_joint_80191FC8
	nop
	lw      $t2, 0x0068($sp)
	la.u    $a1, face_joint_8018F468
	lw      $a2, 0x020C($t2)
	la.l    $a1, face_joint_8018F468
	jal     face_object_8017E520
	li      $a0, 0x0002
	b       95$
	nop
95$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

move_bonesnet:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a0, str_face_net_801B8770
	jal     imin
	la.l    $a0, str_face_net_801B8770
	la.u    $a0, _face_object_bss-0x480+0x4A8
	jal     face_math_801963C0
	la.l    $a0, _face_object_bss-0x480+0x4A8
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x01C8($t6)
	nop
	beqz    $t7, 20$
	sw      $t7, 0x0024($sp)
	la.u    $a1, face_joint_80191500
	lw      $a2, 0x0024($sp)
	la.l    $a1, face_joint_80191500
	jal     face_object_8017E520
	li      $a0, 0x0004
20$:
	jal     imout
	nop
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_net_80192E0C:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0078($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	la.u    $t6, face_control+0x00
	la.l    $t6, face_control+0x00
	sw      $t6, 0x0034($sp)
	lui     $t7, %hi(face_control+0x2C)
	lw      $t7, %lo(face_control+0x2C)($t7)
	nop
	beqz    $t7, 15$
	nop
	jal     face_object_8017E3F8
	nop
15$:
	la.u    $a0, _face_object_bss-0x480+0x4A8
	jal     face_math_801963C0
	la.l    $a0, _face_object_bss-0x480+0x4A8
	lui     $t8, %hi(face_control+0x30)
	lw      $t8, %lo(face_control+0x30)($t8)
	nop
	beqz    $t8, 60$
	nop
	lw      $t9, 0x0078($sp)
	nop
	lwc1    $f4, 0x0128($t9)
	nop
	swc1    $f4, 0x0024($sp)
	lw      $t0, 0x0078($sp)
	nop
	lwc1    $f6, 0x012C($t0)
	nop
	swc1    $f6, 0x0028($sp)
	lw      $t1, 0x0078($sp)
	nop
	lwc1    $f8, 0x0130($t1)
	nop
	swc1    $f8, 0x002C($sp)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0024
	jal     face_math_80196334
	li      $a2, 0x40800000
	la.u    $t2, _face_object_bss-0x480+0x4A8
	la.l    $t2, _face_object_bss-0x480+0x4A8
	move    $a1, $t2
	move    $a2, $t2
	jal     face_math_80196754
	addiu   $a0, $sp, 0x0038
	mtc1    $0, $f10
	lw      $t3, 0x0078($sp)
	nop
	swc1    $f10, 0x00AC($t3)
	lw      $t4, 0x0078($sp)
	nop
	lwc1    $f20, 0x00AC($t4)
	nop
	swc1    $f20, 0x00A8($t4)
	lw      $t5, 0x0078($sp)
	nop
	swc1    $f20, 0x00A4($t5)
60$:
	lui     $t6, %hi(face_control+0x28)
	lw      $t6, %lo(face_control+0x28)($t6)
	nop
	beqz    $t6, 102$
	nop
	lw      $t7, 0x0078($sp)
	nop
	lwc1    $f16, 0x0128($t7)
	nop
	swc1    $f16, 0x0024($sp)
	lw      $t8, 0x0078($sp)
	nop
	lwc1    $f18, 0x012C($t8)
	nop
	swc1    $f18, 0x0028($sp)
	lw      $t9, 0x0078($sp)
	nop
	lwc1    $f4, 0x0130($t9)
	nop
	swc1    $f4, 0x002C($sp)
	addiu   $a0, $sp, 0x0038
	addiu   $a1, $sp, 0x0024
	jal     face_math_80196334
	li      $a2, 0xC0800000
	la.u    $t0, _face_object_bss-0x480+0x4A8
	la.l    $t0, _face_object_bss-0x480+0x4A8
	move    $a1, $t0
	move    $a2, $t0
	jal     face_math_80196754
	addiu   $a0, $sp, 0x0038
	mtc1    $0, $f6
	lw      $t1, 0x0078($sp)
	nop
	swc1    $f6, 0x00AC($t1)
	lw      $t2, 0x0078($sp)
	nop
	lwc1    $f20, 0x00AC($t2)
	nop
	swc1    $f20, 0x00A8($t2)
	lw      $t3, 0x0078($sp)
	nop
	swc1    $f20, 0x00A4($t3)
102$:
	lui     $t4, %hi(face_control+0x54)
	lw      $t4, %lo(face_control+0x54)($t4)
	nop
	beqz    $t4, 109$
	nop
	b       174$
	nop
109$:
	lw      $t5, 0x0078($sp)
	li      $at, 0x0002
	lw      $t6, 0x0210($t5)
	nop
	bne     $t6, $at, 119$
	nop
	b       117$
	nop
117$:
	b       119$
	nop
119$:
	lw      $a0, 0x0078($sp)
	jal     face_net_80192668
	nop
	lw      $t7, 0x0078($sp)
	nop
	lw      $t8, 0x01C8($t7)
	nop
	beqz    $t8, 148$
	sw      $t8, 0x0030($sp)
	la.u    $a1, face_joint_80191360
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_80191360
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_80191530
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_80191530
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_80191638
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_80191638
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_801912E8
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_801912E8
	jal     face_object_8017E520
	li      $a0, 0x0004
148$:
	lw      $a0, 0x0078($sp)
	jal     face_net_801927E4
	nop
	lw      $t9, 0x0078($sp)
	la.u    $a1, _face_object_bss-0x480+0x4A8
	addiu   $t0, $t9, 0x0128
	move    $a0, $t0
	move    $a2, $t0
	jal     face_math_80196754
	la.l    $a1, _face_object_bss-0x480+0x4A8
	lw      $t1, 0x0030($sp)
	nop
	beqz    $t1, 172$
	nop
	la.u    $a1, face_joint_80191500
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_80191500
	jal     face_object_8017E520
	li      $a0, 0x0004
	la.u    $a1, face_joint_8018FBA8
	lw      $a2, 0x0030($sp)
	la.l    $a1, face_joint_8018FBA8
	jal     face_object_8017E520
	li      $a0, 0x0002
172$:
	b       174$
	nop
174$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0078

face_net_801930D8:
	addiu   $sp, $sp, -0x0040
	lw      $t3, 0x001C($a0)
	nop
	beqz    $t3, 207$
	nop
5$:
	lw      $t6, 0x0008($t3)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t2, 0x0004($sp)
	nop
	cfc1    $t7, $31
	lwc1    $f4, 0x0020($t2)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $a3, $f6
	ctc1    $t7, $31
	sll     $t8, $a3, 16
	move    $a3, $t8
	sra     $t9, $a3, 16
	move    $a3, $t9
	cfc1    $t4, $31
	lwc1    $f8, 0x0024($t2)
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t0, $f10
	ctc1    $t4, $31
	sll     $t5, $t0, 16
	move    $t0, $t5
	sra     $t6, $t0, 16
	move    $t0, $t6
	cfc1    $t7, $31
	lwc1    $f16, 0x0028($t2)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t1, $f18
	ctc1    $t7, $31
	sll     $t8, $t1, 16
	move    $t1, $t8
	sra     $t9, $t1, 16
	move    $t1, $t9
	li      $at, 0x437F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($t2)
	li      $t5, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t4, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 83$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t5, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t5, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	bnez    $t5, 81$
	nop
	mfc1    $t5, $f10
	li      $at, 0x80000000
	b       87$
	or      $t5, $t5, $at
81$:
	b       87$
	li      $t5, -0x0001
83$:
	mfc1    $t5, $f10
	nop
	bltz    $t5, 81$
	nop
87$:
	ctc1    $t4, $31
	sb      $t5, 0x0027($sp)
	nop
	li      $at, 0x437F0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0030($t2)
	li      $t7, 0x0001
	mul.s   $f4, $f16, $f18
	cfc1    $t6, $31
	ctc1    $t7, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	beqz    $t7, 124$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t7, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t7, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	bnez    $t7, 122$
	nop
	mfc1    $t7, $f6
	li      $at, 0x80000000
	b       128$
	or      $t7, $t7, $at
122$:
	b       128$
	li      $t7, -0x0001
124$:
	mfc1    $t7, $f6
	nop
	bltz    $t7, 122$
	nop
128$:
	ctc1    $t6, $31
	sb      $t7, 0x0026($sp)
	nop
	li      $at, 0x437F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0034($t2)
	li      $t9, 0x0001
	mul.s   $f16, $f8, $f10
	cfc1    $t8, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 165$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t9, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t9, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, 163$
	nop
	mfc1    $t9, $f18
	li      $at, 0x80000000
	b       169$
	or      $t9, $t9, $at
163$:
	b       169$
	li      $t9, -0x0001
165$:
	mfc1    $t9, $f18
	nop
	bltz    $t9, 163$
	nop
169$:
	ctc1    $t8, $31
	sb      $t9, 0x0025($sp)
	nop
	lw      $a1, 0x0044($t2)
	nop
	beqz    $a1, 203$
	nop
176$:
	lw      $a2, 0x0008($a1)
	nop
	lw      $t4, 0x0008($a1)
	nop
	sw      $t4, 0x0028($sp)
	sh      $a3, 0x0000($a2)
	addiu   $a2, $a2, 0x0002
	sh      $t0, 0x0000($a2)
	addiu   $a2, $a2, 0x0002
	sh      $t1, 0x0000($a2)
	addiu   $a2, $a2, 0x0002
	lbu     $t5, 0x0027($sp)
	lw      $t6, 0x0028($sp)
	nop
	sb      $t5, 0x000C($t6)
	lbu     $t7, 0x0026($sp)
	lw      $t8, 0x0028($sp)
	nop
	sb      $t7, 0x000D($t8)
	lbu     $t9, 0x0025($sp)
	lw      $t4, 0x0028($sp)
	nop
	sb      $t9, 0x000E($t4)
	lw      $a1, 0x0000($a1)
	nop
	bnez    $a1, 176$
	nop
203$:
	lw      $t3, 0x0004($t3)
	nop
	bnez    $t3, 5$
	nop
207$:
	b       209$
	nop
209$:
	jr      $ra
	addiu   $sp, $sp, 0x0040

face_net_80193424:
	addiu   $sp, $sp, -0x0038
	lw      $t3, 0x001C($a0)
	nop
	beqz    $t3, 66$
	nop
5$:
	lw      $t6, 0x0008($t3)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t2, 0x0004($sp)
	nop
	cfc1    $t7, $31
	lwc1    $f4, 0x0020($t2)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $a3, $f6
	ctc1    $t7, $31
	sll     $t8, $a3, 16
	move    $a3, $t8
	sra     $t9, $a3, 16
	move    $a3, $t9
	cfc1    $t4, $31
	lwc1    $f8, 0x0024($t2)
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t0, $f10
	ctc1    $t4, $31
	sll     $t5, $t0, 16
	move    $t0, $t5
	sra     $t6, $t0, 16
	move    $t0, $t6
	cfc1    $t7, $31
	lwc1    $f16, 0x0028($t2)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t1, $f18
	ctc1    $t7, $31
	sll     $t8, $t1, 16
	move    $t1, $t8
	sra     $t9, $t1, 16
	move    $t1, $t9
	lw      $a1, 0x0044($t2)
	nop
	beqz    $a1, 62$
	nop
53$:
	lw      $a2, 0x0008($a1)
	nop
	sh      $a3, 0x0000($a2)
	sh      $t0, 0x0002($a2)
	sh      $t1, 0x0004($a2)
	lw      $a1, 0x0000($a1)
	nop
	bnez    $a1, 53$
	nop
62$:
	lw      $t3, 0x0004($t3)
	nop
	bnez    $t3, 5$
	nop
66$:
	b       68$
	nop
68$:
	jr      $ra
	addiu   $sp, $sp, 0x0038

.globl face_net_8019353C
face_net_8019353C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x01A8($t6)
	nop
	beqz    $t7, 24$
	nop
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x01A8($t8)
	nop
	lw      $t0, 0x0030($t9)
	nop
	beqz    $t0, 24$
	nop
	lw      $t1, 0x0018($sp)
	nop
	lw      $t2, 0x01A8($t1)
	nop
	lw      $a0, 0x0020($t2)
	jal     face_net_801930D8
	nop
24$:
	lw      $t3, 0x0018($sp)
	li      $at, 0x0002
	lw      $t4, 0x01EC($t3)
	nop
	bne     $t4, $at, 47$
	nop
	b       32$
	nop
32$:
	lw      $t5, 0x0018($sp)
	nop
	lw      $t6, 0x01A8($t5)
	nop
	beqz    $t6, 45$
	nop
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x01A8($t7)
	nop
	lw      $a0, 0x0024($t8)
	jal     face_net_80193424
	nop
45$:
	b       47$
	nop
47$:
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_net_80193610:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $t7, 0x01C8($t6)
	nop
	beqz    $t7, 45$
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	nop
	lw      $s0, 0x001C($t8)
	nop
	beqz    $s0, 45$
	nop
16$:
	lw      $t9, 0x0008($s0)
	nop
	sw      $t9, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $at, 0x0004
	lw      $t1, 0x000C($t0)
	nop
	bne     $t1, $at, 41$
	nop
	b       27$
	nop
27$:
	lw      $t2, 0x0024($sp)
	nop
	lw      $t3, 0x002C($t2)
	nop
	beqz    $t3, 39$
	nop
	lw      $t4, 0x0024($sp)
	nop
	lw      $t9, 0x002C($t4)
	move    $a0, $t4
	jalr    $t9
	nop
39$:
	b       41$
	nop
41$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 16$
	nop
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

move_net:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(face_net_801BAC80)
	sw      $t6, %lo(face_net_801BAC80)($at)
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x01EC($t7)
	nop
	addiu   $t9, $t8, -0x0001
	sltiu   $at, $t9, 0x0007
	beqz    $at, 62$
	nop
	sll     $t9, $t9, 2
	lui     $at, %hi(face_net_801B8948)
	addu    $at, $at, $t9
	lw      $t9, %lo(face_net_801B8948)($at)
	nop
	jr      $t9
	nop
.globl L80193730
L80193730:
	b       68$
	nop
.globl L80193738
L80193738:
	lw      $a0, 0x0018($sp)
	jal     face_net_80192E0C
	nop
	b       68$
	nop
.globl L8019374C
L8019374C:
	la.u    $a0, str_face_net_801B8780
	jal     restart_timer
	la.l    $a0, str_face_net_801B8780
	lw      $a0, 0x0018($sp)
	jal     move_bonesnet
	nop
	la.u    $a0, str_face_net_801B878C
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_net_801B878C
	b       68$
	nop
.globl L80193778
L80193778:
	la.u    $a0, str_face_net_801B8798
	jal     restart_timer
	la.l    $a0, str_face_net_801B8798
	lw      $a0, 0x0018($sp)
	jal     move_skinnet
	nop
	la.u    $a0, str_face_net_801B87A4
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_net_801B87A4
	b       68$
	nop
.globl L801937A4
L801937A4:
	lw      $a0, 0x0018($sp)
	jal     face_net_80193610
	nop
	b       68$
	nop
.globl L801937B8
L801937B8:
	lw      $a0, 0x0018($sp)
	jal     face_particle_801824E0
	nop
	b       68$
	nop
.globl L801937CC
L801937CC:
	b       68$
	nop
62$:
	lw      $t0, 0x0018($sp)
	la.u    $a0, str_face_net_801B87B0
	lw      $a1, 0x0038($t0)
	lw      $a2, 0x01EC($t0)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_net_801B87B0
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl move_nets
move_nets:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_net_801B87D8
	jal     imin
	la.l    $a0, str_face_net_801B87D8
	la.u    $a0, str_face_net_801B87E4
	jal     restart_timer
	la.l    $a0, str_face_net_801B87E4
	la.u    $a1, face_net_801923D4
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_net_801923D4
	jal     face_object_8017E520
	li      $a0, 0x0020
	la.u    $a1, move_net
	lw      $a2, 0x0018($sp)
	la.l    $a1, move_net
	jal     face_object_8017E520
	li      $a0, 0x0020
	la.u    $a0, str_face_net_801B87F0
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_net_801B87F0
	jal     imout
	nop
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_net_8019387C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x0002
	lw      $t7, 0x01EC($t6)
	nop
	bne     $t7, $at, 61$
	nop
	b       12$
	nop
12$:
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x01A8($t8)
	nop
	beqz    $t9, 59$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t0, 0x0028($sp)
	nop
	lw      $t1, 0x01A8($t0)
	nop
	sw      $v0, 0x0024($t1)
	lw      $t2, 0x0028($sp)
	nop
	lw      $t3, 0x01A8($t2)
	nop
	lw      $t4, 0x0020($t3)
	nop
	lw      $s0, 0x001C($t4)
	nop
	beqz    $s0, 59$
	nop
35$:
	lw      $t5, 0x0008($s0)
	nop
	sw      $t5, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x3FF00000
	lwc1    $f4, 0x003C($t6)
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.eq.d  $f6, $f8
	nop
	bc1t    55$
	nop
	lw      $t7, 0x0028($sp)
	lw      $a1, 0x0020($sp)
	lw      $t8, 0x01A8($t7)
	nop
	lw      $a0, 0x0024($t8)
	jal     addto_group
	nop
55$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 35$
	nop
59$:
	b       61$
	nop
61$:
	b       63$
	nop
63$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_net_80193988
face_net_80193988:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, reset_net
	lw      $a2, 0x0018($sp)
	la.l    $a1, reset_net
	jal     face_object_8017E520
	li      $a0, 0x0020
	la.u    $a1, face_net_801923D4
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_net_801923D4
	jal     face_object_8017E520
	li      $a0, 0x0020
	la.u    $a1, face_net_8019243C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_net_8019243C
	jal     face_object_8017E520
	li      $a0, 0x0020
	la.u    $a1, face_net_8019387C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_net_8019387C
	jal     face_object_8017E520
	li      $a0, 0x0020
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_net_801939FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	la.u    $a0, str_face_net_801B87FC
	lw      $a1, 0x0034($t6)
	jal     gd_printf
	la.l    $a0, str_face_net_801B87FC
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8808
	la.l    $a0, str_face_net_801B8808
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0014
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8810
	la.l    $a0, str_face_net_801B8810
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0044
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8818
	la.l    $a0, str_face_net_801B8818
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0050
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8820
	la.l    $a0, str_face_net_801B8820
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x005C
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8828
	la.l    $a0, str_face_net_801B8828
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0074
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8834
	la.l    $a0, str_face_net_801B8834
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0080
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8840
	la.l    $a0, str_face_net_801B8840
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x008C
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8850
	la.l    $a0, str_face_net_801B8850
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x0098
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8860
	la.l    $a0, str_face_net_801B8860
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x00A4
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8868
	la.l    $a0, str_face_net_801B8868
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x00B0
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B8870
	la.l    $a0, str_face_net_801B8870
	jal     face_math_801970E8
	addiu   $a1, $a1, 0x00BC
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B887C
	la.l    $a0, str_face_net_801B887C
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x00D4
	lw      $t7, 0x0018($sp)
	la.u    $a0, str_face_net_801B888C
	lwc1    $f4, 0x00E0($t7)
	la.l    $a0, str_face_net_801B888C
	cvt.d.s $f6, $f4
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	jal     gd_printf
	nop
	lw      $t8, 0x0018($sp)
	la.u    $a0, str_face_net_801B889C
	lwc1    $f8, 0x00E4($t8)
	la.l    $a0, str_face_net_801B889C
	cvt.d.s $f10, $f8
	mfc1    $a3, $f10
	mfc1    $a2, $f11
	jal     gd_printf
	nop
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B88AC
	la.l    $a0, str_face_net_801B88AC
	jal     face_math_80197104
	addiu   $a1, $a1, 0x0128
	lw      $t9, 0x0018($sp)
	nop
	lw      $t0, 0x01A8($t9)
	nop
	beqz    $t0, 106$
	nop
	lw      $t1, 0x0018($sp)
	la.u    $a0, str_face_net_801B88B4
	lw      $t2, 0x01A8($t1)
	la.l    $a0, str_face_net_801B88B4
	move    $a1, $t2
	jal     gd_printf
	addiu   $a2, $t2, 0x005C
	b       109$
	nop
106$:
	la.u    $a0, str_face_net_801B88C8
	jal     gd_printf
	la.l    $a0, str_face_net_801B88C8
109$:
	lw      $a1, 0x0018($sp)
	la.u    $a0, str_face_net_801B88D8
	la.l    $a0, str_face_net_801B88D8
	jal     face_math_801970CC
	addiu   $a1, $a1, 0x01AC
	lw      $t3, 0x0018($sp)
	la.u    $a0, str_face_net_801B88E0
	lwc1    $f16, 0x01B8($t3)
	la.l    $a0, str_face_net_801B88E0
	cvt.d.s $f18, $f16
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	jal     gd_printf
	nop
	lw      $t4, 0x0018($sp)
	la.u    $a0, str_face_net_801B88EC
	lw      $a1, 0x01BC($t4)
	jal     gd_printf
	la.l    $a0, str_face_net_801B88EC
	lw      $t5, 0x0018($sp)
	la.u    $a0, str_face_net_801B88FC
	lw      $a1, 0x01C8($t5)
	jal     gd_printf
	la.l    $a0, str_face_net_801B88FC
	lw      $t6, 0x0018($sp)
	la.u    $a0, str_face_net_801B890C
	lw      $a1, 0x01CC($t6)
	jal     gd_printf
	la.l    $a0, str_face_net_801B890C
	lw      $t7, 0x0018($sp)
	la.u    $a0, str_face_net_801B891C
	lw      $a1, 0x01D0($t7)
	jal     gd_printf
	la.l    $a0, str_face_net_801B891C
	b       145$
	nop
145$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_net_80193C50
face_net_80193C50:
	lui     $at, %hi(face_net_801BAC88)
	sw      $0, %lo(face_net_801BAC88)($at)
	jr      $ra
	nop
	jr      $ra
	nop
	nop
	nop
