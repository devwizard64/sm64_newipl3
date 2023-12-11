.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl s_objlib_8029D890
s_objlib_8029D890:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	lw      $t6, 0x0060($sp)
	li      $at, 0x0001
	bne     $t6, $at, 29$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x006C($t8)
	beqz    $t9, 29$
	nop
	lui     $t0, %hi(s_camera)
	lw      $t0, %lo(s_camera)($t0)
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0068($sp)
	jal     objlib_8029DE80
	lw      $a2, 0x0034($t0)
	lw      $t1, 0x001C($sp)
	addiu   $a0, $sp, 0x0020
	jal     objlib_8029DCD4
	lw      $a1, 0x006C($t1)
	lw      $t2, 0x001C($sp)
	jal     objlib_8029F188
	lw      $a0, 0x006C($t2)
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

.globl s_objlib_8029D924
s_objlib_8029D924:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $0, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	li      $at, 0x0001
	bne     $t6, $at, 129$
	nop
	lui     $t7, %hi(s_object)
	lw      $t7, %lo(s_object)($t7)
	sw      $t7, 0x0034($sp)
	lw      $t8, 0x0044($sp)
	sw      $t8, 0x0030($sp)
	lw      $t9, 0x0044($sp)
	sw      $t9, 0x002C($sp)
	lui     $t0, %hi(s_hand)
	lw      $t0, %lo(s_hand)($t0)
	beqz    $t0, 25$
	nop
	lui     $t1, %hi(s_hand)
	lw      $t1, %lo(s_hand)($t1)
	lw      $t2, 0x001C($t1)
	sw      $t2, 0x0034($sp)
25$:
	lw      $t3, 0x0034($sp)
	lw      $t4, 0x017C($t3)
	sw      $t4, 0x0028($sp)
	jal     gfx_alloc
	li      $a0, 0x0018
	sw      $v0, 0x003C($sp)
	lw      $t5, 0x003C($sp)
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0028($sp)
	li      $at, 0x00FF
	bne     $t6, $at, 56$
	nop
	lw      $t7, 0x0030($sp)
	li      $at, 0x0014
	lw      $t8, 0x0018($t7)
	bne     $t8, $at, 48$
	nop
	lw      $t9, 0x0030($sp)
	lh      $t0, 0x0002($t9)
	andi    $t1, $t0, 0x00FF
	ori     $t2, $t1, 0x0600
	b       53$
	sh      $t2, 0x0002($t9)
48$:
	lw      $t3, 0x0030($sp)
	lh      $t4, 0x0002($t3)
	andi    $t5, $t4, 0x00FF
	ori     $t6, $t5, 0x0100
	sh      $t6, 0x0002($t3)
53$:
	lw      $t7, 0x0034($sp)
	b       109$
	sw      $0, 0x00F0($t7)
56$:
	lw      $t8, 0x0030($sp)
	li      $at, 0x0014
	lw      $t0, 0x0018($t8)
	bne     $t0, $at, 67$
	nop
	lw      $t1, 0x0030($sp)
	lh      $t2, 0x0002($t1)
	andi    $t9, $t2, 0x00FF
	ori     $t4, $t9, 0x0600
	b       72$
	sh      $t4, 0x0002($t1)
67$:
	lw      $t5, 0x0030($sp)
	lh      $t6, 0x0002($t5)
	andi    $t3, $t6, 0x00FF
	ori     $t7, $t3, 0x0500
	sh      $t7, 0x0002($t5)
72$:
	lw      $t0, 0x0034($sp)
	li      $t8, 0x0001
	sw      $t8, 0x00F0($t0)
	lw      $t2, 0x0028($sp)
	bnez    $t2, 88$
	nop
	la.u    $a0, o_13001850
	jal     segment_to_virtual
	la.l    $a0, o_13001850
	lw      $t9, 0x0034($sp)
	lw      $t4, 0x020C($t9)
	bne     $v0, $t4, 88$
	nop
	lw      $t6, 0x0034($sp)
	li      $t1, 0x0002
	sw      $t1, 0x00F0($t6)
88$:
	lw      $t3, 0x0030($sp)
	li      $at, 0x000A
	lw      $t7, 0x0018($t3)
	beq     $t7, $at, 109$
	nop
	lw      $t5, 0x0034($sp)
	lh      $t8, 0x0074($t5)
	andi    $t0, $t8, 0x0080
	beqz    $t0, 109$
	nop
	lw      $t2, 0x0038($sp)
	addiu   $t9, $t2, 0x0008
	sw      $t9, 0x0038($sp)
	sw      $t2, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li.u    $t4, 0xB9000002
	li.l    $t4, 0xB9000002
	sw      $t4, 0x0000($t1)
	lw      $t3, 0x0024($sp)
	li      $t6, 0x0003
	sw      $t6, 0x0004($t3)
109$:
	lw      $t7, 0x0038($sp)
	addiu   $t5, $t7, 0x0008
	sw      $t5, 0x0038($sp)
	sw      $t7, 0x0020($sp)
	lw      $t0, 0x0020($sp)
	li      $t8, 0xFB000000
	sw      $t8, 0x0000($t0)
	lw      $t2, 0x0028($sp)
	lw      $t1, 0x0020($sp)
	li      $at, -0x0100
	andi    $t9, $t2, 0x00FF
	or      $t4, $t9, $at
	sw      $t4, 0x0004($t1)
	lw      $t6, 0x0038($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t3, 0xB8000000
	sw      $t3, 0x0000($t7)
	lw      $t5, 0x001C($sp)
	sw      $0, 0x0004($t5)
129$:
	b       133$
	lw      $v0, 0x003C($sp)
	b       133$
	nop
133$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl s_objlib_8029DB48
s_objlib_8029DB48:
	addiu   $sp, $sp, -0x0008
	li      $at, 0x0001
	bne     $a0, $at, 29$
	nop
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x0004($sp)
	sw      $a1, 0x0000($sp)
	lui     $t7, %hi(s_hand)
	lw      $t7, %lo(s_hand)($t7)
	beqz    $t7, 16$
	nop
	lui     $t8, %hi(s_hand)
	lw      $t8, %lo(s_hand)($t8)
	lw      $t9, 0x001C($t8)
	sw      $t9, 0x0004($sp)
16$:
	lw      $t0, 0x0004($sp)
	lw      $t2, 0x0000($sp)
	lw      $t1, 0x00F0($t0)
	lh      $t3, 0x001C($t2)
	slt     $at, $t1, $t3
	bnez    $at, 25$
	nop
	lw      $t4, 0x0004($sp)
	sw      $0, 0x00F0($t4)
25$:
	lw      $t5, 0x0004($sp)
	lw      $t7, 0x0000($sp)
	lw      $t6, 0x00F0($t5)
	sh      $t6, 0x001E($t7)
29$:
	b       33$
	move    $v0, $0
	b       33$
	nop
33$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl s_objlib_8029DBD4
s_objlib_8029DBD4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lui     $t6, %hi(s_object)
	lw      $t6, %lo(s_object)($t6)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x002C($sp)
	sw      $t7, 0x0018($sp)
	lw      $t8, 0x0028($sp)
	li      $at, 0x0001
	bne     $t8, $at, 54$
	nop
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	bnez    $t9, 20$
	nop
	lw      $t0, 0x0018($sp)
	b       52$
	sh      $0, 0x001E($t0)
20$:
	li      $t1, 0x0001
	lui     $at, %hi(object_80361182)
	sh      $t1, %lo(object_80361182)($at)
	lui     $t2, %hi(mario_obj)
	lw      $t2, %lo(mario_obj)($t2)
	addiu   $a3, $sp, 0x0020
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t2)
	lw      $t3, 0x0020($sp)
	beqz    $t3, 52$
	nop
	lw      $t4, 0x0020($sp)
	lui     $at, %hi(object_80361250)
	lb      $t5, 0x0005($t4)
	sh      $t5, %lo(object_80361250)($at)
	lw      $t6, 0x0020($sp)
	lb      $t7, 0x0005($t6)
	addiu   $t8, $t7, -0x0001
	sh      $t8, 0x0026($sp)
	lw      $t9, 0x0020($sp)
	la.u    $a0, str_objlib_areainfo
	la.l    $a0, str_objlib_areainfo
	jal     db_put
	lb      $a1, 0x0005($t9)
	lh      $t0, 0x0026($sp)
	bltz    $t0, 52$
	nop
	lh      $t1, 0x0026($sp)
	lw      $t2, 0x0018($sp)
	sh      $t1, 0x001E($t2)
52$:
	b       56$
	nop
54$:
	lw      $t3, 0x0018($sp)
	sh      $0, 0x001E($t3)
56$:
	b       60$
	move    $v0, $0
	b       60$
	nop
60$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_8029DCD4
objlib_8029DCD4:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0138($a1)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x013C($a1)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0140($a1)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0008($sp)
	lwc1    $f6, 0x0010($a0)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0020($a0)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x0030($a0)
	add.s   $f18, $f10, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x00A0($a1)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f10, 0x0004($a0)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f18, 0x0014($a0)
	mul.s   $f6, $f4, $f10
	lwc1    $f10, 0x0004($sp)
	mul.s   $f16, $f8, $f18
	lwc1    $f8, 0x0024($a0)
	mul.s   $f18, $f10, $f8
	add.s   $f4, $f6, $f16
	lwc1    $f16, 0x0034($a0)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x00A4($a1)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f4, 0x0008($a0)
	lwc1    $f16, 0x0008($sp)
	lwc1    $f6, 0x0018($a0)
	mul.s   $f18, $f8, $f4
	lwc1    $f4, 0x0004($sp)
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0028($a0)
	mul.s   $f6, $f4, $f16
	add.s   $f8, $f18, $f10
	lwc1    $f10, 0x0038($a0)
	add.s   $f18, $f8, $f6
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x00A8($a1)
	b       51$
	nop
51$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_8029DDA8
objlib_8029DDA8:
	lwc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0000($a2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a1)
	lwc1    $f10, 0x0030($a0)
	lwc1    $f16, 0x0010($a2)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0010($a1)
	lwc1    $f4, 0x0034($a0)
	lwc1    $f6, 0x0020($a2)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($a1)
	lwc1    $f10, 0x0030($a2)
	swc1    $f10, 0x0030($a1)
	lwc1    $f16, 0x002C($a0)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0004($a1)
	lwc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0014($a2)
	mul.s   $f10, $f6, $f8
	swc1    $f10, 0x0014($a1)
	lwc1    $f16, 0x0034($a0)
	lwc1    $f18, 0x0024($a2)
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($a1)
	lwc1    $f6, 0x0034($a2)
	swc1    $f6, 0x0034($a1)
	lwc1    $f8, 0x002C($a0)
	lwc1    $f10, 0x0008($a2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0008($a1)
	lwc1    $f18, 0x0030($a0)
	lwc1    $f4, 0x0018($a2)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x0018($a1)
	lwc1    $f8, 0x0034($a0)
	lwc1    $f10, 0x0028($a2)
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0028($a1)
	lwc1    $f18, 0x0038($a2)
	swc1    $f18, 0x0038($a1)
	lwc1    $f4, 0x000C($a2)
	swc1    $f4, 0x000C($a1)
	lwc1    $f6, 0x001C($a2)
	swc1    $f6, 0x001C($a1)
	lwc1    $f8, 0x002C($a2)
	swc1    $f8, 0x002C($a1)
	lwc1    $f10, 0x003C($a2)
	swc1    $f10, 0x003C($a1)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029DE80
objlib_8029DE80:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x0030($a2)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f10, 0x0034($a2)
	lwc1    $f16, 0x0004($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0038($a2)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x000C($sp)
	lwc1    $f18, 0x0030($a2)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f16, 0x0034($a2)
	lwc1    $f4, 0x0014($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0038($a2)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0008($sp)
	lwc1    $f8, 0x0030($a2)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f4, 0x0034($a2)
	lwc1    $f18, 0x0024($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0038($a2)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0004($sp)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f18, 0x0004($a1)
	lwc1    $f8, 0x0004($a2)
	mul.s   $f4, $f10, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x0008($a1)
	mul.s   $f8, $f6, $f18
	add.s   $f10, $f4, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0000($a0)
	lwc1    $f16, 0x0000($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f8, 0x0004($a1)
	lwc1    $f10, 0x0014($a2)
	mul.s   $f18, $f16, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f4, $f8, $f10
	lwc1    $f8, 0x0008($a1)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f4
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0004($a0)
	lwc1    $f4, 0x0000($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f10, 0x0004($a1)
	lwc1    $f16, 0x0024($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($a1)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0008($a0)
	lwc1    $f18, 0x0010($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0014($a1)
	lwc1    $f4, 0x0004($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0018($a1)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0010($a0)
	lwc1    $f8, 0x0010($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f4, 0x0014($a1)
	lwc1    $f18, 0x0014($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0018($a1)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	add.s   $f16, $f18, $f8
	swc1    $f16, 0x0014($a0)
	lwc1    $f10, 0x0010($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f18, 0x0014($a1)
	lwc1    $f8, 0x0024($a2)
	mul.s   $f4, $f10, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f16, $f18, $f8
	lwc1    $f18, 0x0018($a1)
	mul.s   $f8, $f6, $f18
	add.s   $f10, $f4, $f16
	add.s   $f4, $f8, $f10
	swc1    $f4, 0x0018($a0)
	lwc1    $f16, 0x0020($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f8, 0x0024($a1)
	lwc1    $f10, 0x0004($a2)
	mul.s   $f18, $f16, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f4, $f8, $f10
	lwc1    $f8, 0x0028($a1)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f4
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($a0)
	lwc1    $f4, 0x0020($a1)
	lwc1    $f6, 0x0010($a2)
	lwc1    $f10, 0x0024($a1)
	lwc1    $f16, 0x0014($a2)
	mul.s   $f8, $f4, $f6
	lwc1    $f6, 0x0018($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0028($a1)
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0024($a0)
	lwc1    $f18, 0x0020($a1)
	lwc1    $f6, 0x0020($a2)
	lwc1    $f16, 0x0024($a1)
	lwc1    $f4, 0x0024($a2)
	mul.s   $f10, $f18, $f6
	lwc1    $f6, 0x0028($a2)
	mul.s   $f8, $f16, $f4
	lwc1    $f16, 0x0028($a1)
	mul.s   $f4, $f6, $f16
	add.s   $f18, $f10, $f8
	add.s   $f10, $f4, $f18
	swc1    $f10, 0x0028($a0)
	lwc1    $f8, 0x0030($a1)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f4, 0x0034($a1)
	lwc1    $f18, 0x0004($a2)
	mul.s   $f16, $f8, $f6
	lwc1    $f6, 0x0008($a2)
	mul.s   $f10, $f4, $f18
	lwc1    $f4, 0x0038($a1)
	mul.s   $f18, $f6, $f4
	add.s   $f8, $f16, $f10
	lwc1    $f10, 0x000C($sp)
	add.s   $f16, $f18, $f8
	sub.s   $f6, $f16, $f10
	swc1    $f6, 0x0030($a0)
	lwc1    $f4, 0x0030($a1)
	lwc1    $f18, 0x0010($a2)
	lwc1    $f16, 0x0034($a1)
	lwc1    $f10, 0x0014($a2)
	mul.s   $f8, $f4, $f18
	lwc1    $f18, 0x0018($a2)
	mul.s   $f6, $f16, $f10
	lwc1    $f16, 0x0038($a1)
	mul.s   $f10, $f18, $f16
	add.s   $f4, $f8, $f6
	lwc1    $f6, 0x0008($sp)
	add.s   $f8, $f10, $f4
	sub.s   $f18, $f8, $f6
	swc1    $f18, 0x0034($a0)
	lwc1    $f16, 0x0030($a1)
	lwc1    $f10, 0x0020($a2)
	lwc1    $f8, 0x0034($a1)
	lwc1    $f6, 0x0024($a2)
	mul.s   $f4, $f16, $f10
	lwc1    $f10, 0x0028($a2)
	mul.s   $f18, $f8, $f6
	lwc1    $f8, 0x0038($a1)
	mul.s   $f6, $f10, $f8
	add.s   $f16, $f4, $f18
	lwc1    $f18, 0x0004($sp)
	add.s   $f4, $f6, $f16
	sub.s   $f10, $f4, $f18
	swc1    $f10, 0x0038($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x000C($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x001C($a0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x002C($a0)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x003C($a0)
	b       202$
	nop
202$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_8029E1B0
objlib_8029E1B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0018($sp)
	sw      $t6, 0x0068($t7)
	lw      $t8, 0x0018($sp)
	lw      $t9, 0x008C($t8)
	andi    $t0, $t9, 0x0400
	beqz    $t0, 39$
	nop
	lw      $t2, 0x001C($sp)
	la.u    $t1, o_13003464
	la.l    $t1, o_13003464
	bne     $t1, $t2, 21$
	nop
	lw      $t4, 0x0018($sp)
	li      $t3, 0x0001
	sw      $t3, 0x0124($t4)
21$:
	lw      $t6, 0x001C($sp)
	la.u    $t5, o_13003474
	la.l    $t5, o_13003474
	bne     $t5, $t6, 29$
	nop
	lw      $t8, 0x0018($sp)
	li      $t7, 0x0002
	sw      $t7, 0x0124($t8)
29$:
	lw      $t0, 0x001C($sp)
	la.u    $t9, o_1300346C
	la.l    $t9, o_1300346C
	bne     $t9, $t0, 37$
	nop
	lw      $t2, 0x0018($sp)
	li      $t1, 0x0003
	sw      $t1, 0x0124($t2)
37$:
	b       45$
	nop
39$:
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	sw      $v0, 0x01CC($t3)
	lw      $t4, 0x0018($sp)
	sw      $0, 0x01D0($t4)
45$:
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_8029E27C
objlib_8029E27C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0024($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f8, 0x0018($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	b       27$
	nop
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029E2F8
objlib_8029E2F8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x002C($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00A4($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lwc1    $f4, 0x00A8($t0)
	lwc1    $f6, 0x00A8($t1)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	b       36$
	nop
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_8029E398
objlib_8029E398:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00B8($t6)
	c.le.s  $f12, $f4
	nop
	bc1f    11$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       16$
	swc1    $f12, 0x00B8($t7)
11$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x00B8($t8)
	add.s   $f8, $f6, $f14
	swc1    $f8, 0x00B8($t8)
16$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029E3E8
objlib_8029E3E8:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	sw      $a2, 0x0010($sp)
	sw      $0, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0010($sp)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0010($sp)
	mtc1    $0, $f16
	nop
	c.le.s  $f16, $f10
	nop
	bc1f    27$
	nop
	lwc1    $f18, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	c.lt.s  $f4, $f18
	nop
	bc1f    25$
	nop
	lwc1    $f6, 0x000C($sp)
	swc1    $f6, 0x0000($a0)
	li      $t6, 0x0001
	sw      $t6, 0x0004($sp)
25$:
	b       37$
	nop
27$:
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    37$
	nop
	lwc1    $f16, 0x000C($sp)
	swc1    $f16, 0x0000($a0)
	li      $t7, 0x0001
	sw      $t7, 0x0004($sp)
37$:
	b       41$
	lw      $v0, 0x0004($sp)
	b       41$
	nop
41$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029E494
objlib_8029E494:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sub.s   $f4, $f14, $f12
	mtc1    $0, $f8
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	c.le.s  $f8, $f6
	nop
	bc1f    22$
	nop
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	c.lt.s  $f16, $f10
	nop
	bc1f    19$
	nop
	lwc1    $f18, 0x0010($sp)
	b       20$
	add.s   $f12, $f12, $f18
19$:
	mov.s   $f12, $f14
20$:
	b       33$
	nop
22$:
	lwc1    $f6, 0x0010($sp)
	lwc1    $f4, 0x0004($sp)
	neg.s   $f8, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    32$
	nop
	lwc1    $f10, 0x0010($sp)
	b       33$
	sub.s   $f12, $f12, $f10
32$:
	mov.s   $f12, $f14
33$:
	b       37$
	mov.s   $f0, $f12
	b       37$
	nop
37$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029E530
objlib_8029E530:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	bltz    $t7, 27$
	nop
	lh      $t8, 0x0006($sp)
	slt     $at, $a2, $t8
	beqz    $at, 22$
	nop
	addu    $a0, $a0, $a2
	sll     $t9, $a0, 16
	move    $a0, $t9
	sra     $t0, $a0, 16
	b       25$
	move    $a0, $t0
22$:
	sll     $a0, $a1, 16
	sra     $t1, $a0, 16
	move    $a0, $t1
25$:
	b       41$
	nop
27$:
	lh      $t2, 0x0006($sp)
	subu    $t3, $0, $a2
	slt     $at, $t2, $t3
	beqz    $at, 38$
	nop
	subu    $a0, $a0, $a2
	sll     $t4, $a0, 16
	move    $a0, $t4
	sra     $t5, $a0, 16
	b       41$
	move    $a0, $t5
38$:
	sll     $a0, $a1, 16
	sra     $t6, $a0, 16
	move    $a0, $t6
41$:
	b       45$
	move    $v0, $a0
	b       45$
	nop
45$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029E5EC
objlib_8029E5EC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C8($t6)
	sh      $t7, 0x0026($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $a1, 0x002A($sp)
	lh      $a2, 0x002E($sp)
	jal     objlib_8029E530
	lw      $a0, 0x00C8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $v0, 0x00C8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t2, 0x0026($sp)
	lh      $t1, 0x00CA($t0)
	subu    $s0, $t1, $t2
	sll     $t3, $s0, 16
	move    $s0, $t3
	sra     $t4, $s0, 16
	move    $s0, $t4
	bnez    $s0, 33$
	sw      $s0, 0x0118($t0)
	b       37$
	li      $v0, 0x0001
	b       35$
	nop
33$:
	b       37$
	move    $v0, $0
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_8029E694
objlib_8029E694:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t6, 0x0030($sp)
	lwc1    $f4, 0x00A8($t6)
	swc1    $f4, 0x002C($sp)
	lw      $t7, 0x0034($sp)
	lwc1    $f6, 0x00A8($t7)
	swc1    $f6, 0x0024($sp)
	lw      $t8, 0x0030($sp)
	lwc1    $f8, 0x00A0($t8)
	swc1    $f8, 0x0028($sp)
	lw      $t9, 0x0034($sp)
	lwc1    $f10, 0x00A0($t9)
	swc1    $f10, 0x0020($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0028($sp)
	sub.s   $f12, $f16, $f18
	jal     ATAN2
	sub.s   $f14, $f4, $f6
	sh      $v0, 0x001E($sp)
	b       28$
	lh      $v0, 0x001E($sp)
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl objlib_8029E714
objlib_8029E714:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	lh      $s0, 0x004A($sp)
	li      $at, 0x000F
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0010
	beq     $s0, $at, 58$
	nop
	li      $at, 0x0012
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0013
	beq     $s0, $at, 58$
	nop
	b       80$
	nop
22$:
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0040($sp)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00A0($t7)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lw      $t8, 0x0044($sp)
	lw      $t9, 0x0040($sp)
	lwc1    $f10, 0x00A8($t8)
	lwc1    $f16, 0x00A8($t9)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0034($sp)
	lwc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x0034($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x003C($sp)
	lw      $t0, 0x0040($sp)
	lwc1    $f16, 0x00A4($t0)
	neg.s   $f18, $f16
	swc1    $f18, 0x0038($sp)
	lw      $t1, 0x0044($sp)
	lwc1    $f4, 0x00A4($t1)
	neg.s   $f8, $f4
	swc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0030($sp)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f12, 0x003C($sp)
	jal     ATAN2
	sub.s   $f14, $f6, $f10
	sh      $v0, 0x002A($sp)
	b       80$
	nop
58$:
	lw      $t2, 0x0040($sp)
	lwc1    $f16, 0x00A8($t2)
	swc1    $f16, 0x003C($sp)
	lw      $t3, 0x0044($sp)
	lwc1    $f18, 0x00A8($t3)
	swc1    $f18, 0x0034($sp)
	lw      $t4, 0x0040($sp)
	lwc1    $f4, 0x00A0($t4)
	swc1    $f4, 0x0038($sp)
	lw      $t5, 0x0044($sp)
	lwc1    $f8, 0x00A0($t5)
	swc1    $f8, 0x0030($sp)
	lwc1    $f6, 0x0034($sp)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f18, 0x0038($sp)
	sub.s   $f12, $f6, $f10
	jal     ATAN2
	sub.s   $f14, $f16, $f18
	sh      $v0, 0x002A($sp)
	b       80$
	nop
80$:
	lh      $t7, 0x004A($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lw      $t0, 0x0088($t9)
	sh      $t0, 0x0028($sp)
	lh      $a0, 0x0028($sp)
	lh      $a1, 0x002A($sp)
	jal     objlib_8029E530
	lh      $a2, 0x004E($sp)
	lh      $t2, 0x004A($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	sw      $v0, 0x0088($t4)
	b       101$
	lh      $v0, 0x002A($sp)
	b       101$
	nop
101$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl objlib_8029E8BC
objlib_8029E8BC:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	mtc1    $a1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0138($a0)
	mtc1    $a2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x013C($a0)
	mtc1    $a3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0140($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029E914
objlib_8029E914:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	mtc1    $a1, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x00A0($a0)
	mtc1    $a2, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x00A4($a0)
	mtc1    $a3, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029E96C
objlib_8029E96C:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sw      $a1, 0x00D0($a0)
	sw      $a2, 0x00D4($a0)
	sw      $a3, 0x00D8($a0)
	sw      $a1, 0x00C4($a0)
	sw      $a2, 0x00C8($a0)
	sw      $a3, 0x00CC($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl obj_make_abs
obj_make_abs:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	lh      $a1, 0x0026($sp)
	lw      $a2, 0x0028($sp)
	jal     obj_make
	lw      $a3, 0x002C($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x0032($sp)
	lh      $a2, 0x0036($sp)
	jal     objlib_8029E914
	lh      $a3, 0x003A($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x003E($sp)
	lh      $a2, 0x0042($sp)
	jal     objlib_8029E96C
	lh      $a3, 0x0046($sp)
	b       26$
	lw      $v0, 0x001C($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_make_rel
obj_make_rel:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_make
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0200
	sw      $t8, 0x008C($t6)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x002E($sp)
	lh      $a2, 0x0032($sp)
	jal     objlib_8029E8BC
	lh      $a3, 0x0036($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x003A($sp)
	lh      $a2, 0x003E($sp)
	jal     objlib_8029E96C
	lh      $a3, 0x0036($sp)
	b       30$
	lw      $v0, 0x001C($sp)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_8029EAAC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	jal     obj_make_here
	lw      $a2, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	lw      $t7, 0x008C($t6)
	ori     $t8, $t7, 0x0820
	sw      $t8, 0x008C($t6)
	b       18$
	lw      $v0, 0x001C($sp)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029EB04
objlib_8029EB04:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	lh      $a1, 0x0002($t6)
	jal     obj_make_here
	lw      $a2, 0x0004($t6)
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0024($sp)
	lh      $t8, 0x0000($t7)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 19$
	nop
	jal     rand
	nop
	lw      $t0, 0x0018($sp)
	sw      $v0, 0x00C8($t0)
19$:
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0000($t1)
	andi    $t3, $t2, 0x0040
	beqz    $t3, 41$
	nop
	lw      $t4, 0x0024($sp)
	lh      $t5, 0x0008($t4)
	mtc1    $t5, $f4
	jal     objlib_802A2F14
	cvt.s.w $f12, $f4
	trunc.w.s $f6, $f0
	lw      $t0, 0x0018($sp)
	li      $at, 0x8000
	lw      $t1, 0x00C8($t0)
	mfc1    $t7, $f6
	addu    $t2, $t1, $at
	sll     $t3, $t2, 16
	sll     $t8, $t7, 16
	sra     $t9, $t8, 16
	sra     $t4, $t3, 16
	addu    $t5, $t9, $t4
	sw      $t5, 0x00C8($t0)
41$:
	lw      $t6, 0x0024($sp)
	lh      $t7, 0x0000($t6)
	andi    $t8, $t7, 0x0080
	beqz    $t8, 59$
	nop
	lw      $t1, 0x0024($sp)
	lh      $t2, 0x0008($t1)
	mtc1    $t2, $f8
	jal     objlib_802A2F14
	cvt.s.w $f12, $f8
	trunc.w.s $f10, $f0
	lw      $t0, 0x0018($sp)
	mfc1    $t9, $f10
	lh      $t6, 0x00CA($t0)
	sll     $t4, $t9, 16
	sra     $t5, $t4, 16
	addu    $t7, $t5, $t6
	sw      $t7, 0x00C8($t0)
59$:
	lw      $t8, 0x0024($sp)
	lh      $t1, 0x0000($t8)
	andi    $t2, $t1, 0x0020
	beqz    $t2, 70$
	nop
	lw      $t3, 0x0018($sp)
	lwc1    $f12, 0x00A0($t3)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t3)
	lw      $t9, 0x0018($sp)
	swc1    $f0, 0x00A4($t9)
70$:
	lw      $t4, 0x0024($sp)
	lh      $t5, 0x0000($t4)
	andi    $t6, $t5, 0x0004
	beqz    $t6, 84$
	nop
	lw      $t7, 0x0024($sp)
	lw      $a0, 0x0018($sp)
	lh      $t0, 0x000A($t7)
	mtc1    $t0, $f16
	nop
	cvt.s.w $f16, $f16
	mfc1    $a1, $f16
	jal     objlib_802A308C
	nop
84$:
	lw      $t8, 0x0024($sp)
	lh      $t1, 0x0000($t8)
	andi    $t2, $t1, 0x0008
	beqz    $t2, 98$
	nop
	lw      $t3, 0x0024($sp)
	lw      $a0, 0x0018($sp)
	lh      $t9, 0x000A($t3)
	mtc1    $t9, $f18
	nop
	cvt.s.w $f18, $f18
	mfc1    $a1, $f18
	jal     objlib_802A2FC0
	nop
98$:
	jal     randf
	nop
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x0018($sp)
	lwc1    $f4, 0x0010($t4)
	lwc1    $f8, 0x000C($t4)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00B8($t5)
	jal     randf
	nop
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x0018($sp)
	lwc1    $f16, 0x0018($t6)
	lwc1    $f4, 0x0014($t6)
	mul.s   $f18, $f0, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t7)
	jal     randf
	nop
	lw      $t0, 0x0024($sp)
	lwc1    $f8, 0x0020($t0)
	lwc1    $f16, 0x001C($t0)
	mul.s   $f10, $f0, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     obj_set_scale
	lw      $a1, 0x001C($sp)
	b       131$
	lw      $v0, 0x0018($sp)
	b       131$
	nop
131$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_make
obj_make:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x002C($sp)
	sw      $v0, 0x0018($sp)
	jal     obj_create
	lw      $a0, 0x0018($sp)
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x0068($t7)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lb      $t9, 0x0018($t8)
	sb      $t9, 0x0018($t0)
	lw      $t1, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	lb      $t2, 0x0018($t1)
	sb      $t2, 0x0019($t3)
	lw      $t5, 0x0028($sp)
	lui     $t4, %hi(shape_table)
	lw      $t4, %lo(shape_table)($t4)
	sll     $t6, $t5, 2
	la.u    $a2, vecf_0
	la.u    $a3, vecs_0
	addu    $t7, $t4, $t6
	lw      $a1, 0x0000($t7)
	la.l    $a3, vecs_0
	la.l    $a2, vecf_0
	jal     sobj_enter
	lw      $a0, 0x001C($sp)
	b       39$
	lw      $v0, 0x001C($sp)
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl obj_make_here
obj_make_here:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_make
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     objlib_8029F0E0
	lw      $a1, 0x0020($sp)
	b       18$
	lw      $v0, 0x001C($sp)
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029EE24
objlib_8029EE24:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lui     $t6, %hi(obj_freelist+0x60)
	lw      $t6, %lo(obj_freelist+0x60)($t6)
	beqz    $t6, 29$
	nop
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x002C($sp)
	jal     obj_make_here
	lw      $a2, 0x0030($sp)
	sw      $v0, 0x001C($sp)
	lh      $t8, 0x0022($sp)
	lw      $t7, 0x001C($sp)
	mtc1    $t8, $f6
	lwc1    $f4, 0x00A4($t7)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t7)
	lw      $a0, 0x001C($sp)
	jal     obj_set_scale
	lw      $a1, 0x0024($sp)
	b       33$
	lw      $v0, 0x001C($sp)
	b       31$
	nop
29$:
	b       33$
	move    $v0, $0
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029EEB8
objlib_8029EEB8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0020($sp)
	move    $a1, $0
	lw      $a2, 0x0024($sp)
	jal     obj_make
	lw      $a3, 0x0028($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     objlib_8029F0E0
	lw      $a1, 0x0020($sp)
	lw      $a0, 0x001C($sp)
	jal     obj_set_scale
	lw      $a1, 0x002C($sp)
	b       22$
	lw      $v0, 0x001C($sp)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_8029EF20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	li      $a1, 0x002C
	jal     objlib_802A2930
	li      $a2, 0x0012
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0006
	jal     objlib_802A2804
	li      $a2, 0x002C
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl obj_make_off
obj_make_off:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lw      $a0, 0x0030($sp)
	move    $a1, $0
	lw      $a2, 0x0034($sp)
	jal     obj_make
	lw      $a3, 0x0038($sp)
	sw      $v0, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	jal     objlib_8029F0E0
	lw      $a1, 0x0030($sp)
	lw      $a0, 0x001C($sp)
	lh      $a1, 0x0026($sp)
	lh      $a2, 0x002A($sp)
	jal     objlib_8029E8BC
	lh      $a3, 0x002E($sp)
	jal     objlib_8029EF20
	lw      $a0, 0x001C($sp)
	lh      $t6, 0x0022($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x0144($t7)
	lh      $t8, 0x0022($sp)
	lw      $t1, 0x001C($sp)
	andi    $t9, $t8, 0x00FF
	sll     $t0, $t9, 16
	sw      $t0, 0x0188($t1)
	b       34$
	lw      $v0, 0x001C($sp)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029EFFC
objlib_8029EFFC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	lw      $t8, 0x004C($sp)
	lh      $a0, 0x0032($sp)
	lh      $a1, 0x0036($sp)
	lh      $a2, 0x003A($sp)
	lh      $a3, 0x003E($sp)
	sw      $t6, 0x0010($sp)
	sw      $t7, 0x0014($sp)
	jal     obj_make_off
	sw      $t8, 0x0018($sp)
	sw      $v0, 0x002C($sp)
	lw      $a0, 0x002C($sp)
	jal     obj_set_scale
	lw      $a1, 0x0040($sp)
	b       25$
	lw      $v0, 0x002C($sp)
	b       25$
	nop
25$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

objlib_8029F070:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F0C8
objlib_8029F0C8:
	lwc1    $f4, 0x00DC($a1)
	swc1    $f4, 0x00DC($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F0E0
objlib_8029F0E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     objlib_8029F120
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     objlib_8029F148
	lw      $a1, 0x001C($sp)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_8029F120
objlib_8029F120:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x00A0($a0)
	lwc1    $f6, 0x00A4($a1)
	swc1    $f6, 0x00A4($a0)
	lwc1    $f8, 0x00A8($a1)
	swc1    $f8, 0x00A8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_8029F148:
	lw      $t6, 0x00C4($a1)
	sw      $t6, 0x00C4($a0)
	lw      $t7, 0x00C8($a1)
	sw      $t7, 0x00C8($a0)
	lw      $t8, 0x00CC($a1)
	sw      $t8, 0x00CC($a0)
	lw      $t9, 0x00D0($a1)
	sw      $t9, 0x00D0($a0)
	lw      $t0, 0x00D4($a1)
	sw      $t0, 0x00D4($a0)
	lw      $t1, 0x00D8($a1)
	sw      $t1, 0x00D8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F188
objlib_8029F188:
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0024($a0)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0028($a0)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_8029F1B0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	sll     $t9, $t8, 2
	jal     sobj_set_anime
	addu    $a1, $t9, $t0
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F200
objlib_8029F200:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
2$:
	lw      $t6, 0x0004($sp)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0004($a2)
	sll     $t7, $t6, 2
	addu    $t8, $a0, $t7
	lwc1    $f4, 0x0000($t8)
	addu    $t9, $a0, $t7
	lwc1    $f10, 0x0010($t9)
	mul.s   $f8, $f4, $f6
	addu    $t0, $a0, $t7
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0020($t0)
	addu    $t1, $a1, $t7
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0000($t1)
	lw      $t2, 0x0004($sp)
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0003
	bnez    $at, 2$
	sw      $t3, 0x0004($sp)
	b       27$
	nop
27$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029F274
objlib_8029F274:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
2$:
	lw      $t6, 0x0004($sp)
	lwc1    $f6, 0x0000($a2)
	lwc1    $f16, 0x0004($a2)
	sll     $t7, $t6, 4
	addu    $t8, $a0, $t7
	lwc1    $f4, 0x0000($t8)
	addu    $t9, $a0, $t7
	lwc1    $f10, 0x0004($t9)
	mul.s   $f8, $f4, $f6
	addu    $t0, $a0, $t7
	lwc1    $f6, 0x0008($a2)
	mul.s   $f18, $f10, $f16
	lwc1    $f10, 0x0008($t0)
	sll     $t1, $t6, 2
	addu    $t2, $a1, $t1
	mul.s   $f16, $f6, $f10
	add.s   $f4, $f8, $f18
	add.s   $f8, $f16, $f4
	swc1    $f8, 0x0000($t2)
	lw      $t3, 0x0004($sp)
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0003
	bnez    $at, 2$
	sw      $t4, 0x0004($sp)
	b       28$
	nop
28$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

objlib_8029F2EC:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x002C($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x0030($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0034($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x021C($a0)
	lwc1    $f4, 0x0220($a0)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0220($a0)
	lwc1    $f10, 0x0224($a0)
	lwc1    $f16, 0x000C($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0224($a0)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x022C($a0)
	lwc1    $f10, 0x0230($a0)
	lwc1    $f16, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0230($a0)
	lwc1    $f4, 0x0234($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0234($a0)
	lwc1    $f10, 0x023C($a0)
	lwc1    $f16, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x023C($a0)
	lwc1    $f4, 0x0240($a0)
	lwc1    $f6, 0x0004($sp)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0240($a0)
	lwc1    $f10, 0x0244($a0)
	lwc1    $f16, 0x0004($sp)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0244($a0)
	b       45$
	nop
45$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_8029F3A8
objlib_8029F3A8:
	lwc1    $f4, 0x002C($a1)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0030($a1)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0034($a1)
	swc1    $f8, 0x0034($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F3D0
objlib_8029F3D0:
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0008($sp)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x000C($sp)
	swc1    $f8, 0x0034($a0)
	b       11$
	nop
11$:
	jr      $ra
	nop

.globl obj_set_scale
obj_set_scale:
	sw      $a1, 0x0004($sp)
	lwc1    $f4, 0x0004($sp)
	swc1    $f4, 0x002C($a0)
	lwc1    $f6, 0x0004($sp)
	swc1    $f6, 0x0030($a0)
	lwc1    $f8, 0x0004($sp)
	swc1    $f8, 0x0034($a0)
	b       9$
	nop
9$:
	jr      $ra
	nop

.globl object_set_scale
object_set_scale:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x002C($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f12, 0x0030($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	swc1    $f12, 0x0034($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F464
objlib_8029F464:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t9, $t8, 2
	lw      $a0, %lo(object)($a0)
	jal     sobj_set_anime
	addu    $a1, $t9, $t0
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F4B4
objlib_8029F4B4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	lw      $t0, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t9, $t8, 2
	lw      $a0, %lo(object)($a0)
	jal     sobj_set_anime
	addu    $a1, $t9, $t0
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t1, 0x0020($sp)
	sw      $t1, 0x0178($t2)
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F514
objlib_8029F514:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0120($t6)
	sw      $t7, 0x001C($sp)
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0024($sp)
	mul.s   $f8, $f4, $f6
	trunc.w.s $f10, $f8
	mfc1    $t9, $f10
	nop
	sw      $t9, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	lui     $a0, %hi(object)
	sll     $t1, $t0, 2
	lw      $a0, %lo(object)($a0)
	lw      $a2, 0x0018($sp)
	jal     sobj_set_animev
	addu    $a1, $t1, $t2
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t3, 0x0020($sp)
	sw      $t3, 0x0178($t4)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F59C
objlib_8029F59C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0024($sp)
	lw      $t8, 0x0020($sp)
	sw      $t7, 0x0120($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	sll     $t0, $t9, 2
	jal     sobj_set_anime
	addu    $a1, $t0, $t1
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0020($sp)
	sw      $t2, 0x0178($t3)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_8029F600:
	lh      $t6, 0x0002($a0)
	ori     $t7, $t6, 0x0001
	sh      $t7, 0x0002($a0)
	sw      $0, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F620
objlib_8029F620:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0001
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_8029F644:
	lh      $t6, 0x0002($a0)
	li      $at, -0x0002
	and     $t7, $t6, $at
	sh      $t7, 0x0002($a0)
	li      $t8, -0x0001
	sw      $t8, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F66C
objlib_8029F66C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0002
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F694
objlib_8029F694:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0011
	lh      $t7, 0x0002($t6)
	and     $t8, $t7, $at
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F6BC
objlib_8029F6BC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0002($t6)
	ori     $t8, $t7, 0x0010
	sh      $t8, 0x0002($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F6E0
objlib_8029F6E0:
	addiu   $sp, $sp, -0x0010
	sw      $a1, 0x0014($sp)
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lhu     $t6, 0x00CA($a0)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x000C($sp)
	lhu     $t9, 0x00CA($a0)
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0014($sp)
	lwc1    $f4, 0x0008($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f8, $f16, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f16, 0x0014($sp)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x00C8($a0)
	sw      $t2, 0x00C8($t3)
	lwc1    $f18, 0x00A0($a0)
	lwc1    $f16, 0x0000($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t4)
	lwc1    $f4, 0x00A4($a0)
	lwc1    $f8, 0x0018($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t5)
	lwc1    $f18, 0x00A8($a0)
	lwc1    $f16, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A8($t6)
	b       60$
	nop
60$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

objlib_8029F7D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a1, 0x0018($sp)
	lw      $a2, 0x001C($sp)
	lw      $a3, 0x0020($sp)
	jal     objlib_8029F6E0
	lw      $a0, 0x0068($t6)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_8029F820
objlib_8029F820:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F620
	nop
	b       6$
	nop
6$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_8029F848:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground_y
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(objlib_803377BC)
	lwc1    $f6, %lo(objlib_803377BC)($at)
	lwc1    $f4, 0x00A4($t8)
	c.lt.s  $f4, $f6
	nop
	bc1f    35$
	nop
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     objlib_8029F7D8
	li      $a2, 0xC28C0000
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f12, 0x00A0($t9)
	lwc1    $f14, 0x00A4($t9)
	jal     bg_check_ground_y
	lw      $a2, 0x00A8($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	swc1    $f0, 0x00A4($t0)
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_8029F8EC
objlib_8029F8EC:
	lw      $t6, 0x00C4($a0)
	sw      $t6, 0x00D0($a0)
	lw      $t7, 0x00C8($a0)
	sw      $t7, 0x00D4($a0)
	lw      $t8, 0x00CC($a0)
	sw      $t8, 0x00D8($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029F914
objlib_8029F914:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x0000($a0)
	srl     $t7, $t6, 24
	bnez    $t7, 10$
	nop
	lw      $t8, 0x0000($a0)
	srl     $t9, $t8, 16
	andi    $t0, $t9, 0xFFFF
	b       12$
	sw      $t0, 0x0004($sp)
10$:
	li      $t1, 0x0008
	sw      $t1, 0x0004($sp)
12$:
	b       16$
	lw      $v0, 0x0004($sp)
	b       16$
	nop
16$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029F95C
objlib_8029F95C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	b       11$
	lw      $v0, 0x001C($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F998
objlib_8029F998:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     objlib_8029F9EC
	addiu   $a1, $sp, 0x0018
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	bnez    $t6, 13$
	nop
	lui     $at, %hi(objlib_803377C0)
	lwc1    $f4, %lo(objlib_803377C0)($at)
	swc1    $f4, 0x0018($sp)
13$:
	b       17$
	lwc1    $f0, 0x0018($sp)
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_8029F9EC
objlib_8029F9EC:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0030($sp)
	sw      $v0, 0x002C($sp)
	sw      $0, 0x0028($sp)
	li      $at, 0x48000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	jal     objlib_8029F914
	lw      $a0, 0x002C($sp)
	sll     $t6, $v0, 2
	subu    $t6, $t6, $v0
	lui     $t7, %hi(obj_rootlist)
	lw      $t7, %lo(obj_rootlist)($t7)
	sll     $t6, $t6, 2
	addu    $t6, $t6, $v0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x0024($sp)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	beq     $t1, $t2, 65$
	nop
30$:
	lw      $t3, 0x0024($sp)
	lw      $t5, 0x002C($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, 58$
	nop
	lw      $t6, 0x0024($sp)
	lh      $t7, 0x0074($t6)
	beqz    $t7, 58$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	beq     $t6, $t8, 58$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E2F8
	lw      $a1, 0x0024($sp)
	swc1    $f0, 0x0018($sp)
	lwc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    58$
	nop
	lw      $t9, 0x0024($sp)
	sw      $t9, 0x0028($sp)
	lwc1    $f10, 0x0018($sp)
	swc1    $f10, 0x001C($sp)
58$:
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x0024($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	bne     $t2, $t3, 30$
	nop
65$:
	lwc1    $f16, 0x001C($sp)
	lw      $t4, 0x0034($sp)
	swc1    $f16, 0x0000($t4)
	b       72$
	lw      $v0, 0x0028($sp)
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl objlib_8029FB1C
objlib_8029FB1C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(obj_rootlist)
	lw      $t6, %lo(obj_rootlist)($t6)
	addiu   $t7, $t6, 0x04E0
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0000($sp)
	lw      $t0, 0x0004($sp)
	lw      $t1, 0x0000($sp)
	bne     $t0, $t1, 13$
	nop
	sw      $0, 0x0000($sp)
13$:
	b       17$
	lw      $v0, 0x0000($sp)
	b       17$
	nop
17$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

objlib_8029FB68:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(obj_rootlist)
	lw      $t6, %lo(obj_rootlist)($t6)
	addiu   $t7, $t6, 0x04E0
	sw      $t7, 0x000C($sp)
	lw      $t8, 0x000C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x0008($sp)
	sw      $0, 0x0004($sp)
	lw      $t0, 0x000C($sp)
	lw      $t1, 0x0008($sp)
	beq     $t0, $t1, 23$
	nop
13$:
	lw      $t2, 0x0004($sp)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0004($sp)
	lw      $t4, 0x0008($sp)
	lw      $t5, 0x0060($t4)
	sw      $t5, 0x0008($sp)
	lw      $t6, 0x000C($sp)
	lw      $t7, 0x0008($sp)
	bne     $t6, $t7, 13$
	nop
23$:
	b       27$
	lw      $v0, 0x0004($sp)
	b       27$
	nop
27$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_8029FBDC
objlib_8029FBDC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	jal     objlib_8029F914
	lw      $a0, 0x0024($sp)
	sll     $t6, $v0, 2
	subu    $t6, $t6, $v0
	lui     $t7, %hi(obj_rootlist)
	lw      $t7, %lo(obj_rootlist)($t7)
	sll     $t6, $t6, 2
	addu    $t6, $t6, $v0
	sll     $t6, $t6, 3
	addu    $t8, $t6, $t7
	sw      $t8, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	lw      $t0, 0x0060($t9)
	sw      $t0, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	beq     $t1, $t2, 40$
	nop
25$:
	lw      $t3, 0x001C($sp)
	lw      $t5, 0x0024($sp)
	lw      $t4, 0x020C($t3)
	bne     $t4, $t5, 33$
	nop
	lw      $t6, 0x0018($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0018($sp)
33$:
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	bne     $t0, $t1, 25$
	nop
40$:
	b       44$
	lw      $v0, 0x0018($sp)
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_8029FC9C
objlib_8029FC9C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0028($sp)
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(obj_rootlist)
	lw      $t6, %lo(obj_rootlist)($t6)
	addiu   $t7, $t6, 0x01A0
	sw      $t7, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0060($t8)
	sw      $t9, 0x001C($sp)
	sw      $0, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	beq     $t0, $t1, 52$
	nop
19$:
	lw      $t2, 0x001C($sp)
	lw      $t4, 0x0024($sp)
	lw      $t3, 0x020C($t2)
	bne     $t3, $t4, 45$
	nop
	lw      $t5, 0x001C($sp)
	lh      $t6, 0x0074($t5)
	beqz    $t6, 45$
	nop
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0124($t7)
	beqz    $t8, 45$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_8029E2F8
	lw      $a1, 0x001C($sp)
	lwc1    $f4, 0x002C($sp)
	c.lt.s  $f0, $f4
	nop
	bc1f    45$
	nop
	lw      $t9, 0x001C($sp)
	sw      $t9, 0x0018($sp)
	b       52$
	nop
45$:
	lw      $t0, 0x001C($sp)
	lw      $t1, 0x0060($t0)
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x001C($sp)
	bne     $t2, $t3, 19$
	nop
52$:
	b       56$
	lw      $v0, 0x0018($sp)
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

objlib_8029FD8C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0154($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0150($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029FDB4
objlib_8029FDB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0018($sp)
	sw      $t6, 0x014C($t7)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, 0x0018($sp)
	sw      $t8, 0x018C($t9)
	jal     objlib_8029FD8C
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_8029FE00
objlib_8029FE00:
	addiu   $sp, $sp, -0x0008
	la.u    $t6, player_data
	la.l    $t6, player_data
	lwc1    $f4, 0x0054($t6)
	swc1    $f4, 0x0004($sp)
	mul.s   $f6, $f12, $f14
	swc1    $f6, 0x0000($sp)
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0000($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    18$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f16, 0x0000($sp)
	b       23$
	swc1    $f16, 0x00B8($t7)
18$:
	lwc1    $f18, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mul.s   $f4, $f18, $f14
	swc1    $f4, 0x00B8($t8)
23$:
	b       25$
	nop
25$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029FE6C
objlib_8029FE6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	bltz    $t7, 10$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0040($t8)
	addiu   $t0, $t9, -0x0001
	sh      $t0, 0x0040($t8)
10$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_8029FEA4
objlib_8029FEA4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0002
	sw      $t1, 0x0000($sp)
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	bne     $t2, $t3, 20$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0040($t4)
	addiu   $t6, $t5, -0x0001
	sh      $t6, 0x0040($t4)
20$:
	b       22$
	nop
22$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_8029FF04
objlib_8029FF04:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x003C($t6)
	lh      $t8, 0x0000($t7)
	sw      $t8, 0x000C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0040($t9)
	sw      $t0, 0x0008($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($t1)
	lh      $t3, 0x0008($t2)
	addiu   $t4, $t3, -0x0002
	sw      $t4, 0x0004($sp)
	sw      $0, 0x0000($sp)
	lw      $t5, 0x000C($sp)
	andi    $t6, $t5, 0x0001
	beqz    $t6, 28$
	nop
	lw      $t7, 0x0004($sp)
	lw      $t9, 0x0008($sp)
	addiu   $t8, $t7, 0x0001
	bne     $t8, $t9, 28$
	nop
	li      $t0, 0x0001
	sw      $t0, 0x0000($sp)
28$:
	lw      $t1, 0x0008($sp)
	lw      $t2, 0x0004($sp)
	bne     $t1, $t2, 34$
	nop
	li      $t3, 0x0001
	sw      $t3, 0x0000($sp)
34$:
	b       38$
	lw      $v0, 0x0000($sp)
	b       38$
	nop
38$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_8029FFA4
objlib_8029FFA4:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	addiu   $t1, $t0, -0x0001
	sw      $t1, 0x0000($sp)
	lw      $t2, 0x0004($sp)
	lw      $t3, 0x0000($sp)
	bne     $t2, $t3, 19$
	nop
	b       23$
	li      $v0, 0x0001
	b       21$
	nop
19$:
	b       23$
	move    $v0, $0
21$:
	b       23$
	nop
23$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A0008
objlib_802A0008:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	bne     $t8, $a0, 12$
	nop
	b       16$
	li      $v0, 0x0001
	b       14$
	nop
12$:
	b       16$
	move    $v0, $0
14$:
	b       16$
	nop
16$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A0050
objlib_802A0050:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x0004($sp)
	lw      $t8, 0x0004($sp)
	slt     $at, $t8, $a0
	bnez    $at, 17$
	nop
	addu    $t9, $a0, $a1
	slt     $at, $t8, $t9
	beqz    $at, 17$
	nop
	b       21$
	li      $v0, 0x0001
	b       19$
	nop
17$:
	b       21$
	move    $v0, $0
19$:
	b       21$
	nop
21$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

objlib_802A00AC:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sh      $t7, 0x0006($sp)
	lh      $t8, 0x0000($a0)
	li      $at, -0x0001
	beq     $t8, $at, 20$
	nop
9$:
	lh      $t9, 0x0000($a0)
	lh      $t0, 0x0006($sp)
	bne     $t9, $t0, 15$
	nop
	b       24$
	li      $v0, 0x0001
15$:
	addiu   $a0, $a0, 0x0002
	lh      $t1, 0x0000($a0)
	li      $at, -0x0001
	bne     $t1, $at, 9$
	nop
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A0114
objlib_802A0114:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, 10$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       12$
	nop
10$:
	jr      $ra
	move    $v0, $0
12$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A0154
objlib_802A0154:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x000C($t6)
	li.u    $at, 0x00880456
	li.l    $at, 0x00880456
	bne     $t7, $at, 11$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       13$
	nop
11$:
	jr      $ra
	move    $v0, $0
13$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A0198
objlib_802A0198:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x00B0($t6)
	jal     objlib_8029F4B4
	lw      $a0, 0x001C($sp)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A01D8
objlib_802A01D8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     objlib_802A05B4
	nop
	jal     objlib_8029F66C
	nop
	lw      $t6, 0x0018($sp)
	bltz    $t6, 13$
	nop
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
13$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x001C($sp)
	sw      $t7, 0x014C($t8)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A0234:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x00EC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x43200000
	mtc1    $at, $f6
	lwc1    $f4, 0x00A4($t7)
	lwc1    $f12, 0x00A0($t7)
	lw      $a2, 0x00A8($t7)
	jal     bg_check_ground_y
	add.s   $f14, $f4, $f6
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	swc1    $f0, 0x00E8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00E8($t9)
	lwc1    $f10, 0x00A4($t9)
	c.lt.s  $f10, $f8
	nop
	bc1f    32$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f16, 0x00E8($t0)
	b       55$
	swc1    $f16, 0x00A4($t0)
32$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lui     $at, %hi(objlib_803377C4)
	lwc1    $f4, %lo(objlib_803377C4)($at)
	lwc1    $f18, 0x00E8($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    55$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, %lo(object)($a0)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f12, 0x00A0($t2)
	lwc1    $f14, 0x00A4($t2)
	jal     bg_check_ground_y
	lw      $a2, 0x00A8($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	swc1    $f0, 0x00E8($t3)
55$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0018($sp)
	swc1    $f6, 0x00B8($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x00B0($t5)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B8($t6)
	c.eq.s  $f10, $f16
	nop
	bc1t    77$
	nop
	li      $at, 0xC0800000
	mtc1    $at, $f12
	lui     $at, %hi(objlib_803377C8)
	lwc1    $f14, %lo(objlib_803377C8)($at)
	jal     objlib_802A0E68
	li      $a2, 0x40000000
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A0380
objlib_802A0380:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	la.u    $a0, o_13001850
	jal     segment_to_virtual
	la.l    $a0, o_13001850
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, 22$
	nop
	lui     $at, %hi(objlib_803377CC)
	lwc1    $f12, %lo(objlib_803377CC)($at)
	lui     $at, %hi(objlib_803377D0)
	li.u    $a2, 0x43A0C9DB
	li.l    $a2, 0x43A0C9DB
	jal     objlib_8029F7D8
	lwc1    $f14, %lo(objlib_803377D0)($at)
	b       22$
	nop
22$:
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F620
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $0, 0x0124($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x0190($t9)
	andi    $t1, $t0, 0x0010
	bnez    $t1, 42$
	nop
	lwc1    $f4, 0x0018($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1f    48$
	nop
42$:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     objlib_802A0234
	nop
	b       55$
	nop
48$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t2, 0x0020($sp)
	sw      $t2, 0x014C($t3)
	lwc1    $f12, 0x0018($sp)
	jal     objlib_802A0234
	lwc1    $f14, 0x001C($sp)
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A0474
objlib_802A0474:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A05D4
	nop
	jal     objlib_8029F620
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0124($t6)
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     objlib_802A0234
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A04C0
objlib_802A04C0:
	lui     $t6, %hi(shape_table)
	lw      $t6, %lo(shape_table)($t6)
	sll     $t7, $a0, 2
	lui     $t0, %hi(object)
	addu    $t8, $t6, $t7
	lw      $t9, 0x0000($t8)
	lw      $t0, %lo(object)($t0)
	sw      $t9, 0x0014($t0)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A04F0:
	la.u    $t6, player_data
	la.l    $t6, player_data
	lw      $t7, 0x0004($t6)
	or      $t8, $t7, $a0
	sw      $t8, 0x0004($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A0514
objlib_802A0514:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	and     $t8, $t7, $a0
	beqz    $t8, 15$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0001
	xor     $t1, $a0, $at
	lw      $t0, 0x0134($t9)
	and     $t2, $t0, $t1
	sw      $t2, 0x0134($t9)
	jr      $ra
	li      $v0, 0x0001
15$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A0568
objlib_802A0568:
	sh      $0, 0x0074($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A057C
objlib_802A057C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_8029F66C
	nop
	jal     objlib_8029F6BC
	nop
	jal     objlib_802A05B4
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A05B4
objlib_802A05B4:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $t6, -0x0001
	sw      $t6, 0x009C($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A05D4
objlib_802A05D4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x009C($t6)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A05F0
objlib_802A05F0:
	sw      $0, 0x009C($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A0604
objlib_802A0604:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00E8($t7)
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A064C
objlib_802A064C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f0, 0x00E8($t7)
	b       16$
	lw      $v0, 0x001C($sp)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A069C:
	addiu   $sp, $sp, -0x0008
	sw      $a1, 0x000C($sp)
	lwc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    60$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0000($a0)
	lwc1    $f4, 0x000C($sp)
	lui     $at, %hi(objlib_803377D8)
	mul.s   $f16, $f8, $f10
	ldc1    $f8, %lo(objlib_803377D8)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.d.s $f18, $f16
	mul.d   $f16, $f18, $f10
	cvt.s.d $f4, $f16
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0000($a0)
	mtc1    $0, $f8
	nop
	c.lt.s  $f8, $f6
	nop
	bc1f    45$
	nop
	lwc1    $f18, 0x0000($a0)
	lwc1    $f10, 0x0004($sp)
	sub.s   $f16, $f18, $f10
	swc1    $f16, 0x0000($a0)
	lwc1    $f4, 0x0000($a0)
	lui     $at, %hi(objlib_803377E0)
	ldc1    $f8, %lo(objlib_803377E0)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    43$
	nop
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x0000($a0)
43$:
	b       60$
	nop
45$:
	lwc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0004($sp)
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a0)
	lui     $at, %hi(objlib_803377E8)
	ldc1    $f18, %lo(objlib_803377E8)($at)
	cvt.d.s $f8, $f6
	c.lt.d  $f18, $f8
	nop
	bc1f    60$
	nop
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0000($a0)
60$:
	b       62$
	nop
62$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A079C
objlib_802A079C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	jal     objlib_802A069C
	addiu   $a0, $a0, 0x00AC
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	lw      $a1, 0x0018($sp)
	jal     objlib_802A069C
	addiu   $a0, $a0, 0x00B4
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A07E8:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x003C($sp)
	swc1    $f12, 0x0038($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00AC($t6)
	lwc1    $f6, 0x00A0($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0030($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00B4($t7)
	lwc1    $f16, 0x00A8($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f12, 0x0030($sp)
	lw      $a2, 0x002C($sp)
	addiu   $a3, $sp, 0x0034
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t8)
	swc1    $f0, 0x0028($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f6, 0x00E8($t9)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0401
	lw      $t1, 0x00EC($t0)
	and     $t2, $t1, $at
	sw      $t2, 0x00EC($t0)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0001
	lw      $t4, 0x01A0($t3)
	beq     $t4, $at, 59$
	nop
	lw      $t5, 0x0034($sp)
	beqz    $t5, 59$
	nop
	lw      $t6, 0x0034($sp)
	lb      $t7, 0x0005($t6)
	beqz    $t7, 59$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01A0($t8)
	beq     $t9, $t7, 59$
	nop
	li      $at, 0x0012
	beq     $t7, $at, 59$
	nop
	b       174$
	move    $v0, $0
59$:
	lui     $at, %hi(objlib_803377F0)
	lwc1    $f16, %lo(objlib_803377F0)($at)
	lwc1    $f10, 0x0028($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    75$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	ori     $t0, $t2, 0x0400
	sw      $t0, 0x00EC($t1)
	b       174$
	move    $v0, $0
	b       170$
	nop
75$:
	li      $at, 0x40A00000
	mtc1    $at, $f4
	lwc1    $f18, 0x0024($sp)
	c.lt.s  $f18, $f4
	nop
	bc1f    147$
	nop
	lw      $t3, 0x003C($sp)
	bnez    $t3, 97$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t5)
	b       174$
	li      $v0, 0x0001
	b       145$
	nop
97$:
	li      $at, 0xC2480000
	mtc1    $at, $f16
	lwc1    $f10, 0x0024($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    119$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t8, 0x00EC($t6)
	andi    $t9, $t8, 0x0002
	beqz    $t9, 119$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t2, 0x00EC($t7)
	ori     $t0, $t2, 0x0400
	sw      $t0, 0x00EC($t7)
	b       174$
	move    $v0, $0
	b       145$
	nop
119$:
	lw      $t1, 0x0034($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f18, 0x0020($t1)
	c.lt.s  $f4, $f18
	nop
	bc1f    138$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t4)
	b       174$
	li      $v0, 0x0001
	b       145$
	nop
138$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t6, 0x00EC($t5)
	ori     $t8, $t6, 0x0400
	sw      $t8, 0x00EC($t5)
	b       174$
	move    $v0, $0
145$:
	b       170$
	nop
147$:
	lw      $t9, 0x0034($sp)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f10, 0x0020($t9)
	c.lt.s  $f16, $f10
	swc1    $f10, 0x001C($sp)
	bc1t    162$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f18, 0x00A4($t2)
	c.lt.s  $f4, $f18
	nop
	bc1f    170$
	nop
162$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x0030($sp)
	swc1    $f6, 0x00A0($t0)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f8, 0x002C($sp)
	swc1    $f8, 0x00A8($t7)
170$:
	b       174$
	move    $v0, $0
	b       174$
	nop
174$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

objlib_802A0AB0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sdc1    $f20, 0x0010($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00B0($t6)
	mul.s   $f12, $f4, $f4
	jal     sqrtf
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0x40E00000
	mtc1    $at, $f8
	lwc1    $f6, 0x012C($t7)
	mov.s   $f20, $f0
	li      $at, 0x40590000
	mul.s   $f10, $f6, $f8
	mtc1    $at, $f5
	mtc1    $0, $f4
	mul.s   $f16, $f10, $f20
	cvt.d.s $f18, $f16
	div.d   $f6, $f18, $f4
	cvt.s.d $f8, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t8)
	c.lt.s  $f16, $f10
	nop
	bc1f    39$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f18, 0x00B0($t9)
	sub.s   $f6, $f18, $f4
	b       45$
	swc1    $f6, 0x00B0($t9)
39$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f8, 0x00B0($t0)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x00B0($t0)
45$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f18, 0x00A4($t1)
	lwc1    $f4, 0x00E8($t1)
	c.lt.s  $f18, $f4
	nop
	bc1f    63$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f6, 0x00E8($t2)
	swc1    $f6, 0x00A4($t2)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t5, $t4, 0x0040
	b       68$
	sw      $t5, 0x00EC($t3)
63$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	ori     $t8, $t7, 0x0020
	sw      $t8, 0x00EC($t6)
68$:
	b       70$
	nop
70$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

objlib_802A0BDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x2001
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	lwc1    $f6, 0x00E8($t9)
	c.lt.s  $f4, $f6
	nop
	bc1f    76$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	andi    $t2, $t1, 0x0002
	bnez    $t2, 42$
	nop
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0001
	jal     objlib_802A10F0
	addiu   $a0, $a0, 0x00EC
	beqz    $v0, 37$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t5, $t4, 0x0002
	b       42$
	sw      $t5, 0x00EC($t3)
37$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x0001
	sw      $t6, 0x00EC($t7)
42$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f8, 0x00E8($t9)
	swc1    $f8, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	lwc1    $f10, 0x00B0($t0)
	c.lt.s  $f10, $f16
	nop
	bc1f    60$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f18, 0x00B0($t1)
	mul.s   $f6, $f18, $f4
	swc1    $f6, 0x00B0($t1)
60$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f10
	lwc1    $f8, 0x00B0($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    74$
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	ori     $t3, $t5, 0x2000
	sw      $t3, 0x00EC($t4)
74$:
	b       94$
	nop
76$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0002
	lw      $t6, 0x00EC($t8)
	and     $t7, $t6, $at
	sw      $t7, 0x00EC($t8)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x0002
	jal     objlib_802A10F0
	addiu   $a0, $a0, 0x00EC
	beqz    $v0, 94$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	ori     $t1, $t0, 0x0004
	sw      $t1, 0x00EC($t9)
94$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0079
	lw      $t5, 0x00EC($t2)
	and     $t3, $t5, $at
	sw      $t3, 0x00EC($t2)
	b       102$
	nop
102$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A0D84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	add.s   $f8, $f4, $f6
	lwc1    $f10, 0x00B0($t6)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00B0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $at, 0xC29C0000
	mtc1    $at, $f4
	lwc1    $f18, 0x00B0($t7)
	c.lt.s  $f18, $f4
	nop
	bc1f    27$
	nop
	li      $at, 0xC29C0000
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x00B0($t8)
27$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f8, 0x00B0($t9)
	add.s   $f16, $f10, $f8
	swc1    $f16, 0x00A4($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	andi    $t2, $t1, 0x0400
	beqz    $t2, 43$
	nop
	lui     $at, %hi(objlib_803377F4)
	lwc1    $f18, %lo(objlib_803377F4)($at)
	b       49$
	swc1    $f18, 0x001C($sp)
43$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f12, 0x00A0($t3)
	jal     bg_check_water
	lwc1    $f14, 0x00A8($t3)
	swc1    $f0, 0x001C($sp)
49$:
	b       53$
	lwc1    $f0, 0x001C($sp)
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A0E68
objlib_802A0E68:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0005
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0010
	beqz    $t1, 37$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t2)
	c.lt.s  $f6, $f4
	nop
	bc1f    37$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0079
	lw      $t4, 0x00EC($t3)
	and     $t5, $t4, $at
	sw      $t5, 0x00EC($t3)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x1000
	sw      $t6, 0x00EC($t7)
37$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x00EC($t9)
	andi    $t1, $t0, 0x0078
	bnez    $t1, 73$
	nop
	mtc1    $0, $f14
	jal     objlib_802A0D84
	lwc1    $f12, 0x0020($sp)
	swc1    $f0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f8, 0x00A4($t2)
	c.lt.s  $f10, $f8
	nop
	bc1f    60$
	nop
	lwc1    $f12, 0x0020($sp)
	jal     objlib_802A0BDC
	lwc1    $f14, 0x0024($sp)
	b       71$
	nop
60$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00EC($t4)
	ori     $t3, $t5, 0x0008
	sw      $t3, 0x00EC($t4)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0004
	lw      $t6, 0x00EC($t8)
	and     $t7, $t6, $at
	sw      $t7, 0x00EC($t8)
71$:
	b       134$
	nop
73$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0009
	lw      $t0, 0x00EC($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x00EC($t9)
	lwc1    $f12, 0x0020($sp)
	jal     objlib_802A0D84
	lwc1    $f14, 0x0028($sp)
	swc1    $f0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x001C($sp)
	lwc1    $f16, 0x00A4($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    95$
	nop
	jal     objlib_802A0AB0
	nop
	b       134$
	nop
95$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00E8($t5)
	c.lt.s  $f4, $f6
	nop
	bc1f    114$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f8, 0x00E8($t3)
	swc1    $f8, 0x00A4($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $at, -0x0079
	lw      $t6, 0x00EC($t4)
	and     $t7, $t6, $at
	b       134$
	sw      $t7, 0x00EC($t4)
114$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x001C($sp)
	swc1    $f10, 0x00A4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00B0($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0061
	lw      $t9, 0x00EC($t1)
	and     $t2, $t9, $at
	sw      $t2, 0x00EC($t1)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lw      $t3, 0x00EC($t5)
	ori     $t6, $t3, 0x0010
	sw      $t6, 0x00EC($t5)
134$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t4, 0x00EC($t7)
	andi    $t8, $t4, 0x0033
	beqz    $t8, 147$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $at, -0x0081
	lw      $t9, 0x00EC($t0)
	and     $t2, $t9, $at
	b       152$
	sw      $t2, 0x00EC($t0)
147$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t3, 0x00EC($t1)
	ori     $t6, $t3, 0x0080
	sw      $t6, 0x00EC($t1)
152$:
	b       154$
	nop
154$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A10E0:
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A10F0:
	lw      $t6, 0x0000($a0)
	and     $t7, $t6, $a1
	beqz    $t7, 13$
	nop
	lw      $t8, 0x0000($a0)
	li      $at, -0x0001
	xor     $t9, $a1, $at
	and     $t0, $t8, $t9
	sw      $t0, 0x0000($a0)
	jr      $ra
	li      $v0, 0x0001
	b       15$
	nop
13$:
	jr      $ra
	move    $v0, $0
15$:
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A113C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lwc1    $f4, 0x0024($sp)
	lui     $at, %hi(objlib_803377F8)
	ldc1    $f8, %lo(objlib_803377F8)($at)
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    21$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f10, 0x0024($sp)
	lw      $a3, 0x0020($sp)
	addiu   $a0, $t6, 0x00A0
	addiu   $a1, $t6, 0x00A4
	addiu   $a2, $t6, 0x00A8
	jal     bg_hit_wall
	swc1    $f10, 0x0010($sp)
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A11A8
objlib_802A11A8:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	addiu   $sp, $sp, -0x0008
	subu    $t6, $a1, $a0
	sh      $t6, 0x0006($sp)
	lh      $t7, 0x0006($sp)
	li      $at, -0x8000
	bne     $t7, $at, 13$
	nop
	li      $t8, -0x7FFF
	sh      $t8, 0x0006($sp)
13$:
	lh      $t9, 0x0006($sp)
	bgez    $t9, 19$
	nop
	lh      $t0, 0x0006($sp)
	subu    $t1, $0, $t0
	sh      $t1, 0x0006($sp)
19$:
	b       23$
	lh      $v0, 0x0006($sp)
	b       23$
	nop
23$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A120C
objlib_802A120C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f4, 0x00A0($t4)
	lwc1    $f6, 0x00AC($t4)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x00A8($t5)
	lwc1    $f16, 0x00B4($t5)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t5)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A12A4
objlib_802A12A4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0xC28C0000
	mtc1    $at, $f6
	lwc1    $f4, 0x00B0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	li      $at, 0xC28C0000
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x00B0($t7)
15$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f10, 0x00A4($t8)
	lwc1    $f16, 0x00B0($t8)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A1308
objlib_802A1308:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(math_sin)
	lhu     $t7, 0x00CA($t6)
	lwc1    $f6, 0x00B8($t6)
	sra     $t8, $t7, 4
	sll     $t9, $t8, 2
	addu    $at, $at, $t9
	lwc1    $f4, %lo(math_sin)($at)
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x00AC($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lui     $at, %hi(math_cos)
	lhu     $t1, 0x00CA($t0)
	lwc1    $f16, 0x00B8($t0)
	sra     $t2, $t1, 4
	sll     $t3, $t2, 2
	addu    $at, $at, $t3
	lwc1    $f10, %lo(math_cos)($at)
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x00B4($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A1370
objlib_802A1370:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	sub.s   $f4, $f12, $f14
	mtc1    $0, $f8
	swc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0004($sp)
	c.lt.s  $f8, $f6
	nop
	bc1f    27$
	nop
	lwc1    $f10, 0x0004($sp)
	lwc1    $f16, 0x0010($sp)
	c.lt.s  $f10, $f16
	nop
	bc1f    22$
	nop
	mtc1    $0, $f0
	b       43$
	nop
	b       25$
	nop
22$:
	lwc1    $f0, 0x0014($sp)
	b       43$
	neg.s   $f0, $f0
25$:
	b       41$
	nop
27$:
	lwc1    $f4, 0x0010($sp)
	lwc1    $f18, 0x0004($sp)
	neg.s   $f6, $f4
	c.lt.s  $f6, $f18
	nop
	bc1f    39$
	nop
	mtc1    $0, $f0
	b       43$
	nop
	b       41$
	nop
39$:
	b       43$
	lwc1    $f0, 0x0014($sp)
41$:
	b       43$
	nop
43$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A1424
objlib_802A1424:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lh      $t6, 0x0076($a0)
	blez    $t6, 20$
	nop
5$:
	lw      $t7, 0x0004($sp)
	sll     $t8, $t7, 2
	addu    $t9, $a0, $t8
	lw      $t0, 0x0078($t9)
	bne     $t0, $a1, 13$
	nop
	b       24$
	li      $v0, 0x0001
13$:
	lw      $t1, 0x0004($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0004($sp)
	lh      $t3, 0x0076($a0)
	slt     $at, $t2, $t3
	bnez    $at, 5$
	nop
20$:
	b       24$
	move    $v0, $0
	b       24$
	nop
24$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A148C
objlib_802A148C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $v0, 0x020C($t6)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A14C4
objlib_802A14C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	sw      $v0, 0x020C($t6)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A14FC
objlib_802A14FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     segment_to_virtual
	lw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, 14$
	nop
	b       18$
	li      $v0, 0x0001
	b       16$
	nop
14$:
	b       18$
	move    $v0, $0
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A1554
objlib_802A1554:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x020C($t6)
	bne     $v0, $t7, 14$
	nop
	b       18$
	li      $v0, 0x0001
	b       16$
	nop
14$:
	b       18$
	move    $v0, $0
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A15AC
objlib_802A15AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0164($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A8($t9)
	lwc1    $f10, 0x016C($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	b       30$
	lwc1    $f0, 0x0024($sp)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A1634
objlib_802A1634:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0024($sp)
	b       26$
	lwc1    $f0, 0x0024($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

objlib_802A16AC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f8, 0x00A0($t6)
	sub.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    11$
	nop
	jr      $ra
	li      $v0, 0x0001
11$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0164($t7)
	lwc1    $f18, 0x00A0($t7)
	add.s   $f16, $f10, $f12
	c.lt.s  $f16, $f18
	nop
	bc1f    22$
	nop
	jr      $ra
	li      $v0, 0x0001
22$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f8, 0x00A8($t8)
	sub.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    33$
	nop
	jr      $ra
	li      $v0, 0x0001
33$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x016C($t9)
	lwc1    $f18, 0x00A8($t9)
	add.s   $f16, $f10, $f12
	c.lt.s  $f16, $f18
	nop
	bc1f    44$
	nop
	jr      $ra
	li      $v0, 0x0001
44$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A1774:
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f8, 0x00A0($t6)
	add.s   $f6, $f4, $f12
	c.lt.s  $f8, $f6
	nop
	bc1f    13$
	nop
	b       52$
	li      $v0, 0x0001
13$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x0164($t7)
	lwc1    $f18, 0x00A0($t7)
	add.s   $f16, $f10, $f14
	c.lt.s  $f16, $f18
	nop
	bc1f    24$
	nop
	b       52$
	li      $v0, 0x0001
24$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x016C($t8)
	lwc1    $f10, 0x00A8($t8)
	add.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    36$
	nop
	b       52$
	li      $v0, 0x0001
36$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f18, 0x000C($sp)
	lwc1    $f16, 0x016C($t9)
	lwc1    $f6, 0x00A8($t9)
	add.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    48$
	nop
	b       52$
	li      $v0, 0x0001
48$:
	b       52$
	move    $v0, $0
	b       52$
	nop
52$:
	jr      $ra
	nop

.globl objlib_802A184C
objlib_802A184C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	swc1    $f4, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0168($t7)
	swc1    $f6, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x016C($t8)
	swc1    $f8, 0x00A8($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A188C
objlib_802A188C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A184C
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00B8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B0($t7)
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A18DC
objlib_802A18DC:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	andi    $t8, $t7, 0x0001
	bnez    $t8, 12$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f4, 0x00A4($t9)
	add.s   $f6, $f4, $f12
	b       17$
	swc1    $f6, 0x00A4($t9)
12$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x00A4($t0)
	sub.s   $f10, $f8, $f12
	swc1    $f10, 0x00A4($t0)
17$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A1930
objlib_802A1930:
	sw      $a0, 0x0000($sp)
	la.u    $t6, pl_camera_data
	la.l    $t6, pl_camera_data
	sh      $a1, 0x001E($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(camera_8032DF30)
	sw      $t7, %lo(camera_8032DF30)($at)
	b       10$
	nop
10$:
	jr      $ra
	nop

objlib_802A1960:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0008($sp)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $t7, 0x0001
	sw      $t7, 0x0134($t8)
15$:
	b       17$
	nop
17$:
	jr      $ra
	nop

.globl objlib_802A19AC
objlib_802A19AC:
	lh      $t6, 0x0002($a0)
	ori     $t7, $t6, 0x0004
	sh      $t7, 0x0002($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A19C8
objlib_802A19C8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x01F8($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f14, 0x01FC($t7)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A19F0
objlib_802A19F0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	swc1    $f12, 0x0200($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	swc1    $f14, 0x0204($t7)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A1A18:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	lw      $t6, 0x0028($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0020($sp)
	lw      $t7, 0x0028($sp)
	lwc1    $f6, 0x0020($sp)
	li      $at, 0x42C80000
	lwc1    $f4, 0x00A4($t7)
	mtc1    $at, $f10
	sub.s   $f8, $f4, $f6
	c.lt.s  $f10, $f8
	nop
	bc1f    26$
	nop
	lw      $t8, 0x0028($sp)
	lwc1    $f16, 0x00A4($t8)
	swc1    $f16, 0x0020($sp)
26$:
	lw      $t9, 0x002C($sp)
	sw      $0, 0x0024($sp)
	blez    $t9, 65$
	nop
30$:
	lw      $t0, 0x0028($sp)
	lw      $t1, 0x0198($t0)
	bgtz    $t1, 36$
	nop
	b       65$
	nop
36$:
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x0198($t2)
	addiu   $t4, $t3, -0x0001
	sw      $t4, 0x0198($t2)
	lw      $a0, 0x0028($sp)
	lh      $a1, 0x003E($sp)
	jal     obj_make_here
	lw      $a2, 0x0034($sp)
	sw      $v0, 0x0018($sp)
	lh      $t5, 0x003A($sp)
	lw      $a0, 0x0018($sp)
	mtc1    $t5, $f18
	nop
	cvt.s.w $f18, $f18
	mfc1    $a1, $f18
	jal     objlib_802A308C
	nop
	lwc1    $f4, 0x0020($sp)
	lw      $t6, 0x0018($sp)
	swc1    $f4, 0x00A4($t6)
	lwc1    $f6, 0x0030($sp)
	lw      $t7, 0x0018($sp)
	swc1    $f6, 0x0110($t7)
	lw      $t8, 0x0024($sp)
	lw      $t0, 0x002C($sp)
	addiu   $t9, $t8, 0x0001
	slt     $at, $t9, $t0
	bnez    $at, 30$
	sw      $t9, 0x0024($sp)
65$:
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

objlib_802A1B34:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	lh      $t6, 0x002E($sp)
	la.u    $a3, o_13003104
	li      $t7, 0x0076
	sw      $t7, 0x0014($sp)
	la.l    $a3, o_13003104
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     objlib_802A1A18
	sw      $t6, 0x0010($sp)
	b       18$
	nop
18$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A1B8C
objlib_802A1B8C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	la.u    $a3, o_130009A4
	li      $t6, 0x0074
	sw      $t6, 0x0014($sp)
	la.l    $a3, o_130009A4
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0028($sp)
	jal     objlib_802A1A18
	sw      $0, 0x0010($sp)
	b       16$
	nop
16$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A1BDC
objlib_802A1BDC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0198($t6)
	bgtz    $t7, 9$
	nop
	b       31$
	nop
9$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0198($t8)
	addiu   $t0, $t9, -0x0001
	sw      $t0, 0x0198($t8)
	lui     $a0, %hi(object)
	la.u    $a2, o_130009A4
	la.l    $a2, o_130009A4
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0074
	sw      $v0, 0x001C($sp)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t1, 0x001C($sp)
	swc1    $f4, 0x00B0($t1)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029F120
	lw      $a0, 0x001C($sp)
	b       31$
	nop
31$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A1C68:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0168($t6)
	lwc1    $f6, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0004($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    17$
	nop
	lwc1    $f18, 0x0004($sp)
	neg.s   $f4, $f18
	swc1    $f4, 0x0004($sp)
17$:
	b       21$
	lwc1    $f0, 0x0004($sp)
	b       21$
	nop
21$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

objlib_802A1CC4:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0040($t6)
	sw      $t7, 0x000C($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x003C($t8)
	lh      $t0, 0x0008($t9)
	sw      $t0, 0x0008($sp)
	lw      $t1, 0x000C($sp)
	bgez    $t1, 15$
	nop
	b       25$
	sw      $0, 0x000C($sp)
15$:
	lw      $t3, 0x000C($sp)
	lw      $t2, 0x0008($sp)
	addiu   $t4, $t3, 0x0001
	bne     $t2, $t4, 22$
	nop
	b       25$
	sw      $0, 0x000C($sp)
22$:
	lw      $t5, 0x000C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x000C($sp)
25$:
	lw      $t7, 0x000C($sp)
	lw      $t9, 0x0008($sp)
	sll     $t8, $t7, 16
	div     $0, $t8, $t9
	mflo    $t0
	sw      $t0, 0x0004($sp)
	bnez    $t9, 34$
	nop
	break   7
34$:
	li      $at, -0x0001
	bne     $t9, $at, 40$
	li      $at, 0x80000000
	bne     $t8, $at, 40$
	nop
	break   6
40$:
	b       44$
	lw      $v0, 0x0004($sp)
	b       44$
	nop
44$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

objlib_802A1D7C:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lh      $t6, 0x0032($sp)
	lui     $at, %hi(math_cos)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 3
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	andi    $t8, $t7, 0xFFFF
	sra     $t9, $t8, 4
	sll     $t0, $t9, 2
	addu    $at, $at, $t0
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x0018($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $0, $f8
	lwc1    $f6, 0x00B8($t1)
	c.eq.s  $f6, $f8
	nop
	bc1t    104$
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f10, 0x00AC($t2)
	lwc1    $f16, 0x00A0($t2)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f4, 0x00B4($t3)
	lwc1    $f6, 0x00A8($t3)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f12, 0x0028($sp)
	lw      $a2, 0x0020($sp)
	addiu   $a3, $sp, 0x002C
	jal     bg_check_ground
	lwc1    $f14, 0x00A4($t4)
	swc1    $f0, 0x0024($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f16, 0x00E8($t5)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lui     $at, %hi(objlib_80337800)
	lwc1    $f6, %lo(objlib_80337800)($at)
	lwc1    $f4, 0x0024($sp)
	c.lt.s  $f4, $f6
	nop
	bc1f    69$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lw      $t7, 0x00C8($t6)
	addu    $t8, $t7, $at
	sw      $t8, 0x01B4($t6)
	b       108$
	li      $v0, 0x0002
	b       104$
	nop
69$:
	lw      $t9, 0x002C($sp)
	lwc1    $f10, 0x0018($sp)
	lwc1    $f8, 0x0020($t9)
	c.lt.s  $f8, $f10
	nop
	bc1f    102$
	nop
	lwc1    $f16, 0x001C($sp)
	mtc1    $0, $f18
	nop
	c.lt.s  $f18, $f16
	nop
	bc1f    102$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x00A4($t0)
	c.lt.s  $f6, $f4
	nop
	bc1f    102$
	nop
	lw      $t1, 0x002C($sp)
	lwc1    $f12, 0x0024($t1)
	jal     ATAN2
	lwc1    $f14, 0x001C($t1)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $v0, 0x01B4($t2)
	b       108$
	li      $v0, 0x0001
	b       104$
	nop
102$:
	b       108$
	move    $v0, $0
104$:
	b       108$
	move    $v0, $0
	b       108$
	nop
108$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl objlib_802A1F3C
objlib_802A1F3C:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	li      $at, 0x41200000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x0128($t6)
	swc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x0018($sp)
	lui     $at, %hi(objlib_80337808)
	ldc1    $f16, %lo(objlib_80337808)($at)
	cvt.d.s $f10, $f8
	c.lt.d  $f16, $f10
	nop
	bc1f    102$
	nop
	lwc1    $f18, 0x001C($sp)
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0018($sp)
	swc1    $f4, 0x0030($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x00A0($t7)
	trunc.w.s $f8, $f6
	mfc1    $t9, $f8
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0020($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lwc1    $f18, 0x00A4($t2)
	trunc.w.s $f4, $f18
	mfc1    $t4, $f4
	nop
	sll     $t5, $t4, 16
	sra     $t6, $t5, 16
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A8($t7)
	trunc.w.s $f16, $f10
	mfc1    $t9, $f16
	nop
	sll     $t0, $t9, 16
	sra     $t1, $t0, 16
	mtc1    $t1, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0028($sp)
	jal     bg_check_wall
	addiu   $a0, $sp, 0x0020
	sw      $v0, 0x004C($sp)
	lw      $t2, 0x004C($sp)
	beqz    $t2, 102$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lwc1    $f6, 0x0020($sp)
	swc1    $f6, 0x00A0($t3)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f8, 0x0024($sp)
	swc1    $f8, 0x00A4($t4)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f10, 0x0028($sp)
	swc1    $f10, 0x00A8($t5)
	lh      $t6, 0x0036($sp)
	sll     $t7, $t6, 2
	addu    $t8, $sp, $t7
	lw      $t8, 0x0034($t8)
	sw      $t8, 0x0048($sp)
	lw      $t9, 0x0048($sp)
	lwc1    $f12, 0x0024($t9)
	jal     ATAN2
	lwc1    $f14, 0x001C($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x01B4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $a0, 0x01B4($t1)
	jal     objlib_802A11A8
	lw      $a1, 0x00C8($t1)
	slti    $at, $v0, 0x4001
	bnez    $at, 100$
	nop
	b       106$
	li      $v0, 0x0001
	b       102$
	nop
100$:
	b       106$
	move    $v0, $0
102$:
	b       106$
	move    $v0, $0
	b       106$
	nop
106$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

objlib_802A20F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     objlib_802A064C
	nop
	sw      $v0, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sw      $t6, 0x01C0($t7)
	lw      $t8, 0x001C($sp)
	beqz    $t8, 44$
	nop
	lw      $t9, 0x001C($sp)
	li      $at, 0x0001
	lh      $t0, 0x0000($t9)
	bne     $t0, $at, 23$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00EC($t1)
	ori     $t3, $t2, 0x0800
	b       33$
	sw      $t3, 0x00EC($t1)
23$:
	lw      $t4, 0x001C($sp)
	li      $at, 0x000A
	lh      $t5, 0x0000($t4)
	bne     $t5, $at, 33$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	ori     $t8, $t7, 0x4000
	sw      $t8, 0x00EC($t6)
33$:
	lw      $t9, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t0, 0x0000($t9)
	sh      $t0, 0x01B8($t2)
	lw      $t3, 0x001C($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lb      $t1, 0x0005($t3)
	b       50$
	sh      $t1, 0x01BA($t4)
44$:
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	sh      $0, 0x01B8($t5)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x01BA($t7)
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A21D4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x4801
	lw      $t7, 0x00EC($t6)
	and     $t8, $t7, $at
	sw      $t8, 0x00EC($t6)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0074($t9)
	andi    $t1, $t0, 0x000A
	beqz    $t1, 38$
	nop
	jal     objlib_802A20F4
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0279
	lw      $t3, 0x00EC($t2)
	and     $t4, $t3, $at
	sw      $t4, 0x00EC($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f4, 0x00A4($t5)
	lwc1    $f6, 0x00E8($t5)
	c.lt.s  $f6, $f4
	nop
	bc1f    36$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t8, 0x00EC($t7)
	ori     $t6, $t8, 0x0080
	sw      $t6, 0x00EC($t7)
36$:
	b       77$
	nop
38$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, -0x0201
	lw      $t0, 0x00EC($t9)
	and     $t1, $t0, $at
	sw      $t1, 0x00EC($t9)
	jal     objlib_802A1F3C
	nop
	beqz    $v0, 53$
	nop
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lw      $t4, 0x00EC($t3)
	ori     $t2, $t4, 0x0200
	sw      $t2, 0x00EC($t3)
53$:
	jal     objlib_802A20F4
	nop
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lwc1    $f8, 0x00A4($t5)
	lwc1    $f10, 0x00E8($t5)
	c.lt.s  $f10, $f8
	nop
	bc1f    68$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t6, 0x00EC($t8)
	ori     $t7, $t6, 0x0080
	sw      $t7, 0x00EC($t8)
68$:
	jal     objlib_802A1D7C
	lh      $a0, 0x001A($sp)
	beqz    $v0, 77$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00EC($t0)
	ori     $t9, $t1, 0x0200
	sw      $t9, 0x00EC($t0)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A2320
objlib_802A2320:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A21D4
	li      $a0, 0x003C
	b       6$
	nop
6$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A2348
objlib_802A2348:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00E4($t6)
	swc1    $f4, 0x0034($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f6, 0x0158($t7)
	swc1    $f6, 0x0030($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f8, 0x0174($t8)
	swc1    $f8, 0x002C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x012C($t9)
	swc1    $f10, 0x0028($sp)
	sw      $0, 0x0020($sp)
	sw      $0, 0x001C($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0074($t0)
	andi    $t2, $t1, 0x000A
	bnez    $t2, 92$
	nop
	lh      $t3, 0x003A($sp)
	bgez    $t3, 35$
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0020($sp)
	lh      $t5, 0x003A($sp)
	subu    $t6, $0, $t5
	sh      $t6, 0x003A($sp)
35$:
	lh      $t7, 0x003A($sp)
	lui     $at, %hi(math_cos)
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 3
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 1
	andi    $t9, $t8, 0xFFFF
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f16, %lo(math_cos)($at)
	swc1    $f16, 0x0024($sp)
	jal     objlib_802A1308
	nop
	jal     objlib_802A079C
	lwc1    $f12, 0x0028($sp)
	lwc1    $f12, 0x0024($sp)
	jal     objlib_802A07E8
	lw      $a1, 0x0020($sp)
	lwc1    $f12, 0x0034($sp)
	lwc1    $f14, 0x0030($sp)
	jal     objlib_802A0E68
	lw      $a2, 0x002C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	mtc1    $0, $f4
	lwc1    $f18, 0x00B8($t2)
	c.lt.s  $f18, $f4
	nop
	bc1f    71$
	nop
	li      $t3, 0x0001
	sw      $t3, 0x001C($sp)
71$:
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lwc1    $f6, 0x00B4($t4)
	lwc1    $f10, 0x00AC($t4)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f16, $f10, $f10
	jal     sqrtf
	add.s   $f12, $f8, $f16
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	swc1    $f0, 0x00B8($t5)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	bne     $t6, $at, 92$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f18, 0x00B8($t7)
	neg.s   $f4, $f18
	swc1    $f4, 0x00B8($t7)
92$:
	b       94$
	nop
94$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

objlib_802A24D0:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(objlib_80337810)
	lwc1    $f6, %lo(objlib_80337810)($at)
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f4, $f6
	nop
	bc1t    15$
	nop
	lui     $at, %hi(objlib_80337814)
	lwc1    $f8, %lo(objlib_80337814)($at)
	c.lt.s  $f8, $f4
	nop
	bc1f    17$
	nop
15$:
	jr      $ra
	move    $v0, $0
17$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $at, %hi(objlib_80337818)
	lwc1    $f16, %lo(objlib_80337818)($at)
	lwc1    $f10, 0x00A4($t7)
	c.lt.s  $f10, $f16
	nop
	bc1t    32$
	nop
	lui     $at, %hi(objlib_8033781C)
	lwc1    $f18, %lo(objlib_8033781C)($at)
	c.lt.s  $f18, $f10
	nop
	bc1f    34$
	nop
32$:
	jr      $ra
	move    $v0, $0
34$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lui     $at, %hi(objlib_80337820)
	lwc1    $f8, %lo(objlib_80337820)($at)
	lwc1    $f6, 0x00A8($t8)
	c.lt.s  $f6, $f8
	nop
	bc1t    49$
	nop
	lui     $at, %hi(objlib_80337824)
	lwc1    $f4, %lo(objlib_80337824)($at)
	c.lt.s  $f4, $f6
	nop
	bc1f    51$
	nop
49$:
	jr      $ra
	move    $v0, $0
51$:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A25B4
objlib_802A25B4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A24D0
	nop
	beqz    $v0, 30$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A8($t7)
	lwc1    $f16, 0x00B4($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00B0($t8)
	lwc1    $f6, 0x00E4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00B0($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lwc1    $f10, 0x00A4($t9)
	lwc1    $f16, 0x00B0($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t9)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A2644
objlib_802A2644:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     objlib_802A1308
	nop
	jal     objlib_802A25B4
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A2674:
	addiu   $sp, $sp, -0x0010
	sw      $a2, 0x0018($sp)
	sw      $a3, 0x001C($sp)
	lhu     $t6, 0x00CA($a1)
	lui     $at, %hi(math_cos)
	sra     $t7, $t6, 4
	sll     $t8, $t7, 2
	addu    $at, $at, $t8
	lwc1    $f4, %lo(math_cos)($at)
	swc1    $f4, 0x000C($sp)
	lhu     $t9, 0x00CA($a1)
	lui     $at, %hi(math_sin)
	sra     $t0, $t9, 4
	sll     $t1, $t0, 2
	addu    $at, $at, $t1
	lwc1    $f6, %lo(math_sin)($at)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x0020($sp)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x0008($sp)
	mul.s   $f16, $f8, $f10
	nop
	mul.s   $f6, $f18, $f4
	sub.s   $f8, $f16, $f6
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0020($sp)
	lwc1    $f18, 0x0008($sp)
	lwc1    $f16, 0x0018($sp)
	lwc1    $f6, 0x000C($sp)
	mul.s   $f4, $f10, $f18
	nop
	mul.s   $f8, $f16, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x0000($sp)
	lw      $t2, 0x00C8($a1)
	sw      $t2, 0x00C8($a0)
	lwc1    $f18, 0x00A0($a1)
	lwc1    $f16, 0x0000($sp)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($a0)
	lwc1    $f4, 0x00A4($a1)
	lwc1    $f8, 0x001C($sp)
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($a0)
	lwc1    $f18, 0x00A8($a1)
	lwc1    $f16, 0x0004($sp)
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A8($a0)
	b       51$
	nop
51$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_802A2748
objlib_802A2748:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x0164($t6)
	lwc1    $f6, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x016C($t7)
	lwc1    $f16, 0x00A8($t7)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0020($sp)
	sh      $v0, 0x0026($sp)
	b       22$
	lh      $v0, 0x0026($sp)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A27B0
objlib_802A27B0:
	lwc1    $f4, 0x00A0($a1)
	swc1    $f4, 0x0020($a0)
	lwc1    $f6, 0x00DC($a1)
	lwc1    $f8, 0x00A4($a1)
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($a0)
	lwc1    $f16, 0x00A8($a1)
	swc1    $f16, 0x0028($a0)
	lw      $t6, 0x00C4($a1)
	andi    $t7, $t6, 0xFFFF
	sh      $t7, 0x001A($a0)
	lw      $t8, 0x00C8($a1)
	andi    $t9, $t8, 0xFFFF
	sh      $t9, 0x001C($a0)
	lw      $t0, 0x00CC($a1)
	andi    $t1, $t0, 0xFFFF
	sh      $t1, 0x001E($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A2804
objlib_802A2804:
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	addiu   $sp, $sp, -0x0010
	sll     $t6, $a2, 2
	addu    $t7, $a0, $t6
	lwc1    $f4, 0x0088($t7)
	swc1    $f4, 0x000C($sp)
	sll     $t8, $a2, 2
	addu    $t9, $a0, $t8
	lwc1    $f6, 0x008C($t9)
	swc1    $f6, 0x0008($sp)
	sll     $t0, $a2, 2
	addu    $t1, $a0, $t0
	lwc1    $f8, 0x0090($t1)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x023C($a0)
	sll     $t2, $a1, 2
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0004($sp)
	addu    $t3, $a0, $t2
	sll     $t4, $a1, 2
	mul.s   $f6, $f16, $f4
	addu    $t5, $a0, $t4
	add.s   $f10, $f18, $f8
	lwc1    $f8, 0x0088($t3)
	add.s   $f18, $f10, $f6
	add.s   $f16, $f8, $f18
	swc1    $f16, 0x0088($t5)
	lwc1    $f4, 0x0220($a0)
	lwc1    $f10, 0x000C($sp)
	lwc1    $f8, 0x0230($a0)
	lwc1    $f18, 0x0008($sp)
	mul.s   $f6, $f4, $f10
	lwc1    $f10, 0x0240($a0)
	sll     $t6, $a1, 2
	mul.s   $f16, $f8, $f18
	lwc1    $f8, 0x0004($sp)
	addu    $t7, $a0, $t6
	sll     $t8, $a1, 2
	mul.s   $f18, $f10, $f8
	addu    $t9, $a0, $t8
	add.s   $f4, $f6, $f16
	lwc1    $f16, 0x008C($t7)
	add.s   $f6, $f4, $f18
	add.s   $f10, $f16, $f6
	swc1    $f10, 0x008C($t9)
	lwc1    $f8, 0x0224($a0)
	lwc1    $f4, 0x000C($sp)
	lwc1    $f16, 0x0234($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f8, $f4
	lwc1    $f4, 0x0244($a0)
	sll     $t0, $a1, 2
	mul.s   $f10, $f16, $f6
	lwc1    $f16, 0x0004($sp)
	addu    $t1, $a0, $t0
	sll     $t2, $a1, 2
	mul.s   $f6, $f4, $f16
	addu    $t3, $a0, $t2
	add.s   $f8, $f18, $f10
	lwc1    $f10, 0x0090($t1)
	add.s   $f18, $f8, $f6
	add.s   $f4, $f10, $f18
	swc1    $f4, 0x0090($t3)
	b       73$
	nop
73$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_802A2930
objlib_802A2930:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	lh      $t7, 0x0036($sp)
	lw      $t6, 0x0030($sp)
	addiu   $t0, $sp, 0x0024
	sll     $t8, $t7, 2
	addu    $t9, $t6, $t8
	lwc1    $f4, 0x0088($t9)
	swc1    $f4, 0x0000($t0)
	lh      $t2, 0x0036($sp)
	lw      $t1, 0x0030($sp)
	addiu   $t5, $sp, 0x0024
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	lwc1    $f6, 0x008C($t4)
	swc1    $f6, 0x0004($t5)
	lh      $t6, 0x0036($sp)
	lw      $t7, 0x0030($sp)
	addiu   $t0, $sp, 0x0024
	sll     $t8, $t6, 2
	addu    $t9, $t7, $t8
	lwc1    $f8, 0x0090($t9)
	swc1    $f8, 0x0008($t0)
	lh      $t1, 0x003A($sp)
	lw      $t2, 0x0030($sp)
	addiu   $t6, $sp, 0x001C
	sll     $t3, $t1, 2
	addu    $t4, $t2, $t3
	lw      $t5, 0x0088($t4)
	sh      $t5, 0x0000($t6)
	lh      $t8, 0x003A($sp)
	lw      $t7, 0x0030($sp)
	addiu   $t2, $sp, 0x001C
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	lw      $t1, 0x008C($t0)
	sh      $t1, 0x0002($t2)
	lh      $t4, 0x003A($sp)
	lw      $t3, 0x0030($sp)
	addiu   $t7, $sp, 0x001C
	sll     $t5, $t4, 2
	addu    $t6, $t3, $t5
	lw      $t8, 0x0090($t6)
	sh      $t8, 0x0004($t7)
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0024
	addiu   $a2, $sp, 0x001C
	jal     mtxf_coord
	addiu   $a0, $a0, 0x021C
	b       54$
	nop
54$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl objlib_802A2A18
objlib_802A2A18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x008C($t6)
	andi    $t8, $t7, 0x0020
	beqz    $t8, 14$
	nop
	lw      $a0, 0x0018($sp)
	li      $a1, 0x0006
	jal     objlib_802A2930
	li      $a2, 0x0012
	jal     objlib_8029F2EC
	lw      $a0, 0x0018($sp)
14$:
	lw      $t9, 0x0018($sp)
	addiu   $t0, $t9, 0x021C
	sw      $t0, 0x0050($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A2A84
objlib_802A2A84:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x0068($t6)
	sw      $t7, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	li      $a1, 0x002C
	jal     objlib_802A2930
	li      $a2, 0x0012
	jal     objlib_8029F2EC
	lw      $a0, 0x0020($sp)
	lw      $t8, 0x0020($sp)
	lw      $a2, 0x001C($sp)
	addiu   $t9, $t8, 0x021C
	move    $a0, $t9
	move    $a1, $t9
	jal     mtxf_cat
	addiu   $a2, $a2, 0x021C
	lw      $t0, 0x0020($sp)
	lwc1    $f4, 0x024C($t0)
	swc1    $f4, 0x00A0($t0)
	lw      $t1, 0x0020($sp)
	lwc1    $f6, 0x0250($t1)
	swc1    $f6, 0x00A4($t1)
	lw      $t2, 0x0020($sp)
	lwc1    $f8, 0x0254($t2)
	swc1    $f8, 0x00A8($t2)
	lw      $t3, 0x0020($sp)
	addiu   $t4, $t3, 0x021C
	sw      $t4, 0x0050($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f12
	jal     object_set_scale
	nop
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A2B28:
	lw      $t6, 0x008C($a0)
	li      $at, -0x0201
	and     $t7, $t6, $at
	sw      $t7, 0x008C($a0)
	lw      $t8, 0x008C($a0)
	ori     $t9, $t8, 0x0800
	sw      $t9, 0x008C($a0)
	lwc1    $f4, 0x00A0($a0)
	swc1    $f4, 0x024C($a0)
	lwc1    $f6, 0x00A4($a0)
	swc1    $f6, 0x0250($a0)
	lwc1    $f8, 0x00A8($a0)
	swc1    $f8, 0x0254($a0)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A2B6C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C4($t6)
	lw      $t8, 0x0114($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00C4($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00C8($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00C8($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00CC($t4)
	lw      $t7, 0x011C($t4)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00CC($t4)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A2BC4
objlib_802A2BC4:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00D0($t6)
	lw      $t8, 0x0114($t6)
	addu    $t9, $t7, $t8
	sw      $t9, 0x00D0($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00D4($t0)
	lw      $t2, 0x0118($t0)
	addu    $t3, $t1, $t2
	sw      $t3, 0x00D4($t0)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x00D8($t4)
	lw      $t7, 0x011C($t4)
	addu    $t8, $t5, $t7
	sw      $t8, 0x00D8($t4)
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A2C1C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00C4($t6)
	sw      $t7, 0x00D0($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00C8($t8)
	sw      $t9, 0x00D4($t8)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lw      $t1, 0x00CC($t0)
	sw      $t1, 0x00D8($t0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A2C5C
objlib_802A2C5C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0104($t6)
	bnez    $t7, 16$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x00FC($t8)
	sw      $t9, 0x0100($t8)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $t0, 0x8000
	sw      $t0, 0x0104($t1)
16$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lw      $t3, 0x00FC($t2)
	sw      $t3, 0x0044($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lw      $t5, 0x0100($t4)
	sw      $t5, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	li      $at, -0x0001
	lh      $t7, 0x0008($t6)
	beq     $t7, $at, 33$
	nop
	lw      $t9, 0x0040($sp)
	addiu   $t8, $t9, 0x0008
	b       35$
	sw      $t8, 0x003C($sp)
33$:
	lw      $t0, 0x0044($sp)
	sw      $t0, 0x003C($sp)
35$:
	lw      $t1, 0x0040($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t2, 0x0000($t1)
	ori     $t3, $t2, 0x8000
	sw      $t3, 0x0104($t4)
	lw      $t5, 0x003C($sp)
	lw      $t7, 0x0040($sp)
	lh      $t6, 0x0002($t5)
	lh      $t9, 0x0002($t7)
	subu    $t8, $t6, $t9
	mtc1    $t8, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t0, 0x003C($sp)
	lw      $t2, 0x0040($sp)
	lh      $t1, 0x0004($t0)
	lh      $t3, 0x0004($t2)
	subu    $t4, $t1, $t3
	mtc1    $t4, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0034($sp)
	lw      $t5, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	lh      $t7, 0x0006($t5)
	lh      $t9, 0x0006($t6)
	subu    $t8, $t7, $t9
	mtc1    $t8, $f16
	nop
	cvt.s.w $f18, $f16
	swc1    $f18, 0x0030($sp)
	lw      $t0, 0x003C($sp)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lh      $t2, 0x0002($t0)
	lwc1    $f8, 0x00A0($t1)
	mtc1    $t2, $f4
	nop
	cvt.s.w $f6, $f4
	sub.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
	lw      $t3, 0x003C($sp)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t4, 0x0004($t3)
	lwc1    $f4, 0x00A4($t5)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f18, $f16
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x0020($sp)
	lw      $t6, 0x003C($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t7, 0x0006($t6)
	lwc1    $f16, 0x00A8($t9)
	mtc1    $t7, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0028($sp)
	lwc1    $f12, 0x001C($sp)
	jal     ATAN2
	lwc1    $f14, 0x0024($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sw      $v0, 0x010C($t8)
	lwc1    $f14, 0x0020($sp)
	lwc1    $f12, 0x0028($sp)
	jal     ATAN2
	neg.s   $f14, $f14
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sw      $v0, 0x0108($t0)
	lwc1    $f16, 0x0038($sp)
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0020($sp)
	mul.s   $f4, $f16, $f18
	lwc1    $f18, 0x0030($sp)
	mul.s   $f10, $f8, $f6
	lwc1    $f8, 0x001C($sp)
	mul.s   $f6, $f18, $f8
	add.s   $f16, $f4, $f10
	mtc1    $0, $f10
	add.s   $f4, $f16, $f6
	c.le.s  $f4, $f10
	nop
	bc1f    150$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x003C($sp)
	sw      $t2, 0x0100($t1)
	lw      $t3, 0x003C($sp)
	li      $at, -0x0001
	lh      $t4, 0x0008($t3)
	bne     $t4, $at, 148$
	nop
	b       154$
	li      $v0, -0x0001
	b       150$
	nop
148$:
	b       154$
	li      $v0, 0x0001
150$:
	b       154$
	move    $v0, $0
	b       154$
	nop
154$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl objlib_802A2ED4
objlib_802A2ED4:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0004($a0)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0008($a0)
	sh      $0, 0x000C($a0)
	sh      $0, 0x000E($a0)
	sh      $0, 0x0010($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A2F14
objlib_802A2F14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	jal     randf
	nop
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	div.s   $f8, $f4, $f6
	mul.s   $f10, $f0, $f4
	b       14$
	sub.s   $f0, $f10, $f8
	b       14$
	nop
14$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A2F5C
objlib_802A2F5C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     randf
	nop
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0028($sp)
	mul.s   $f6, $f0, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x001C($sp)
	lw      $a0, 0x0020($sp)
	mfc1    $a1, $f16
	mfc1    $a2, $f16
	mfc1    $a3, $f16
	jal     objlib_8029F3D0
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A2FC0
objlib_802A2FC0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t6)
	mul.s   $f10, $f20, $f4
	sub.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	mul.s   $f8, $f4, $f10
	lwc1    $f6, 0x00A4($t7)
	mul.s   $f18, $f20, $f4
	sub.s   $f16, $f18, $f8
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A4($t7)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f18
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t8, 0x0028($sp)
	mul.s   $f8, $f4, $f18
	lwc1    $f10, 0x00A8($t8)
	mul.s   $f6, $f20, $f4
	sub.s   $f16, $f6, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t8)
	b       46$
	nop
46$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A308C
objlib_802A308C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sdc1    $f20, 0x0010($sp)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t6, 0x0028($sp)
	mul.s   $f8, $f4, $f6
	lwc1    $f18, 0x00A0($t6)
	mul.s   $f10, $f20, $f4
	sub.s   $f16, $f10, $f8
	add.s   $f6, $f18, $f16
	swc1    $f6, 0x00A0($t6)
	jal     randf
	nop
	li      $at, 0x3F000000
	mtc1    $at, $f10
	lwc1    $f4, 0x002C($sp)
	mov.s   $f20, $f0
	lw      $t7, 0x0028($sp)
	mul.s   $f8, $f4, $f10
	lwc1    $f6, 0x00A8($t7)
	mul.s   $f18, $f20, $f4
	sub.s   $f16, $f18, $f8
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x00A8($t7)
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	ldc1    $f20, 0x0010($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

objlib_802A3124:
	addiu   $sp, $sp, -0x0010
	lwc1    $f4, 0x00C0($a0)
	swc1    $f4, 0x000C($sp)
	lwc1    $f6, 0x00BC($a0)
	swc1    $f6, 0x0008($sp)
	lwc1    $f8, 0x00B8($a0)
	swc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x021C($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f4, 0x022C($a0)
	lwc1    $f6, 0x0008($sp)
	mul.s   $f18, $f10, $f16
	lwc1    $f16, 0x023C($a0)
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0004($sp)
	mul.s   $f6, $f16, $f4
	add.s   $f10, $f18, $f8
	add.s   $f18, $f6, $f10
	swc1    $f18, 0x00AC($a0)
	lwc1    $f8, 0x0220($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f6, 0x0230($a0)
	lwc1    $f10, 0x0008($sp)
	mul.s   $f4, $f8, $f16
	lwc1    $f16, 0x0240($a0)
	mul.s   $f18, $f6, $f10
	lwc1    $f6, 0x0004($sp)
	mul.s   $f10, $f16, $f6
	add.s   $f8, $f4, $f18
	add.s   $f4, $f10, $f8
	swc1    $f4, 0x00B0($a0)
	lwc1    $f18, 0x0224($a0)
	lwc1    $f16, 0x000C($sp)
	lwc1    $f10, 0x0234($a0)
	lwc1    $f8, 0x0008($sp)
	mul.s   $f6, $f18, $f16
	lwc1    $f16, 0x0244($a0)
	mul.s   $f4, $f10, $f8
	lwc1    $f10, 0x0004($sp)
	mul.s   $f8, $f16, $f10
	add.s   $f18, $f6, $f4
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x00B4($a0)
	b       45$
	nop
45$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_802A31E0
objlib_802A31E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	li      $a1, 0x002C
	jal     objlib_802A2930
	li      $a2, 0x000F
	lui     $a0, %hi(object)
	jal     objlib_802A3124
	lw      $a0, %lo(object)($a0)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A3268
objlib_802A3268:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, 0x8000
	lh      $t7, 0x00CA($t6)
	lh      $t8, 0x01B6($t6)
	lw      $t0, 0x01B4($t6)
	subu    $t9, $t7, $t8
	subu    $t1, $t0, $t9
	addu    $t2, $t1, $at
	sh      $t2, 0x0006($sp)
	b       15$
	lh      $v0, 0x0006($sp)
	b       15$
	nop
15$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A32AC
objlib_802A32AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lb      $t7, 0x0001($t6)
	sw      $t7, 0x0018($sp)
	lui     $t8, %hi(obj_prevcount)
	lh      $t8, %lo(obj_prevcount)($t8)
	slti    $at, $t8, 0x0097
	bnez    $at, 17$
	nop
	lw      $t9, 0x0018($sp)
	slti    $at, $t9, 0x000B
	bnez    $at, 17$
	nop
	li      $t0, 0x000A
	sw      $t0, 0x0018($sp)
17$:
	lui     $t1, %hi(obj_prevcount)
	lh      $t1, %lo(obj_prevcount)($t1)
	slti    $at, $t1, 0x00D3
	bnez    $at, 23$
	nop
	sw      $0, 0x0018($sp)
23$:
	lw      $t2, 0x0018($sp)
	sw      $0, 0x0020($sp)
	blez    $t2, 120$
	nop
27$:
	jal     randf
	nop
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(objlib_80337828)
	lwc1    $f6, %lo(objlib_80337828)($at)
	lwc1    $f4, 0x0010($t3)
	lui     $at, %hi(objlib_8033782C)
	lwc1    $f18, %lo(objlib_8033782C)($at)
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x000C($t3)
	mul.s   $f10, $f0, $f8
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x001C($sp)
	lw      $t4, 0x0028($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_130007DC
	la.l    $a2, o_130007DC
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	lbu     $a1, 0x0002($t4)
	sw      $v0, 0x0024($sp)
	lw      $t5, 0x0028($sp)
	lw      $t7, 0x0024($sp)
	lb      $t6, 0x0000($t5)
	sw      $t6, 0x0144($t7)
	jal     rand
	nop
	lw      $t8, 0x0024($sp)
	sw      $v0, 0x00C8($t8)
	lw      $t9, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lb      $t0, 0x0008($t9)
	mtc1    $t0, $f8
	nop
	cvt.s.w $f16, $f8
	swc1    $f16, 0x00E4($t1)
	lw      $t2, 0x0028($sp)
	lw      $t4, 0x0024($sp)
	lb      $t3, 0x0009($t2)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f10, $f18
	swc1    $f10, 0x012C($t4)
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	lb      $t7, 0x0003($t6)
	lwc1    $f4, 0x00A4($t5)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f8, $f6
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00A4($t5)
	jal     randf
	nop
	lw      $t8, 0x0028($sp)
	lw      $t1, 0x0024($sp)
	lb      $t9, 0x0005($t8)
	lb      $t0, 0x0004($t8)
	mtc1    $t9, $f18
	mtc1    $t0, $f4
	cvt.s.w $f10, $f18
	cvt.s.w $f8, $f4
	mul.s   $f6, $f0, $f10
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x00B8($t1)
	jal     randf
	nop
	lw      $t2, 0x0028($sp)
	lw      $t6, 0x0024($sp)
	lb      $t3, 0x0007($t2)
	lb      $t4, 0x0006($t2)
	mtc1    $t3, $f18
	mtc1    $t4, $f6
	cvt.s.w $f10, $f18
	cvt.s.w $f8, $f6
	mul.s   $f4, $f0, $f10
	add.s   $f16, $f4, $f8
	swc1    $f16, 0x00B0($t6)
	lwc1    $f18, 0x001C($sp)
	lw      $a0, 0x0024($sp)
	mfc1    $a1, $f18
	mfc1    $a2, $f18
	mfc1    $a3, $f18
	jal     objlib_8029F3D0
	nop
	lw      $t7, 0x0020($sp)
	lw      $t9, 0x0018($sp)
	addiu   $t5, $t7, 0x0001
	slt     $at, $t5, $t9
	bnez    $at, 27$
	sw      $t5, 0x0020($sp)
120$:
	b       122$
	nop
122$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A34A4
objlib_802A34A4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x40000000
	lw      $t7, 0x008C($t6)
	and     $t8, $t7, $at
	bnez    $t8, 33$
	nop
	lw      $t9, 0x0018($sp)
	li      $at, 0x40000000
	lw      $t0, 0x008C($t9)
	or      $t1, $t0, $at
	sw      $t1, 0x008C($t9)
	lw      $t2, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lw      $t3, 0x0000($t2)
	sw      $t3, 0x0130($t4)
	lw      $t5, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lb      $t6, 0x0005($t5)
	sw      $t6, 0x0180($t7)
	lw      $t8, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lb      $t0, 0x0006($t8)
	sw      $t0, 0x0184($t1)
	lw      $t9, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	lb      $t2, 0x0007($t9)
	sw      $t2, 0x0198($t3)
	jal     objlib_802A05D4
	nop
33$:
	lw      $t5, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lh      $t6, 0x0008($t5)
	lwc1    $f4, 0x002C($t4)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f10, $f4, $f8
	swc1    $f10, 0x01F8($t4)
	lw      $t8, 0x001C($sp)
	lw      $t7, 0x0018($sp)
	lh      $t0, 0x000A($t8)
	lwc1    $f16, 0x0030($t7)
	mtc1    $t0, $f18
	nop
	cvt.s.w $f6, $f18
	mul.s   $f4, $f16, $f6
	swc1    $f4, 0x01FC($t7)
	lw      $t9, 0x001C($sp)
	lw      $t1, 0x0018($sp)
	lh      $t2, 0x000C($t9)
	lwc1    $f8, 0x002C($t1)
	mtc1    $t2, $f10
	nop
	cvt.s.w $f18, $f10
	mul.s   $f16, $f8, $f18
	swc1    $f16, 0x0200($t1)
	lw      $t5, 0x001C($sp)
	lw      $t3, 0x0018($sp)
	lh      $t6, 0x000E($t5)
	lwc1    $f6, 0x0030($t3)
	mtc1    $t6, $f4
	nop
	cvt.s.w $f10, $f4
	mul.s   $f8, $f6, $f10
	swc1    $f8, 0x0204($t3)
	lw      $t8, 0x001C($sp)
	lw      $t4, 0x0018($sp)
	lbu     $t0, 0x0004($t8)
	lwc1    $f18, 0x0030($t4)
	mtc1    $t0, $f16
	bgez    $t0, 80$
	cvt.s.w $f4, $f16
	li      $at, 0x4F800000
	mtc1    $at, $f6
	nop
	add.s   $f4, $f4, $f6
80$:
	mul.s   $f10, $f18, $f4
	swc1    $f10, 0x0208($t4)
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A3604
objlib_802A3604:
	bltz    $a0, 6$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       8$
	nop
6$:
	jr      $ra
	li      $v0, -0x0001
8$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3634
objlib_802A3634:
	mtc1    $0, $f4
	nop
	c.le.s  $f4, $f12
	nop
	bc1f    10$
	nop
	jr      $ra
	mov.s   $f0, $f12
	b       12$
	nop
10$:
	jr      $ra
	neg.s   $f0, $f12
12$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3674
objlib_802A3674:
	bltz    $a0, 6$
	nop
	jr      $ra
	move    $v0, $a0
	b       8$
	nop
6$:
	jr      $ra
	subu    $v0, $0, $a0
8$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A36A4
objlib_802A36A4:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	slt     $at, $t7, $a0
	bnez    $at, 38$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0154($t8)
	subu    $t0, $t9, $a0
	andi    $t1, $t0, 0x0001
	beqz    $t1, 32$
	sw      $t0, 0x0000($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0002($t2)
	ori     $t4, $t3, 0x0010
	sh      $t4, 0x0002($t2)
	lw      $t5, 0x0000($sp)
	bgez    $t5, 25$
	sra     $t6, $t5, 1
	addiu   $at, $t5, 0x0001
	sra     $t6, $at, 1
25$:
	slt     $at, $a1, $t6
	beqz    $at, 30$
	nop
	li      $t7, 0x0001
	sw      $t7, 0x0004($sp)
30$:
	b       38$
	nop
32$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0011
	lh      $t9, 0x0002($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0002($t8)
38$:
	b       42$
	lw      $v0, 0x0004($sp)
	b       42$
	nop
42$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A3754
objlib_802A3754:
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 16$
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lw      $t0, 0x000C($t9)
	li.u    $at, 0x0080023C
	li.l    $at, 0x0080023C
	bne     $t0, $at, 16$
	nop
	jr      $ra
	li      $v0, 0x0001
16$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A37AC
objlib_802A37AC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A37DC
objlib_802A37DC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	li      $a2, 0x42380000
	jal     object_makesound
	lw      $a0, 0x0018($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A3818
objlib_802A3818:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0028($sp)
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x00A0($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(mario_obj)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t8, %lo(mario_obj)($t8)
	lwc1    $f16, 0x00A8($t9)
	lwc1    $f10, 0x00A8($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x001C($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0028($sp)
	c.lt.s  $f16, $f18
	nop
	bc1f    55$
	nop
	lwc1    $f4, 0x0028($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f16, 0x0024($sp)
	la.u    $t0, player_data
	sub.s   $f6, $f4, $f8
	la.l    $t0, player_data
	lwc1    $f8, 0x003C($t0)
	div.s   $f10, $f6, $f4
	mul.s   $f18, $f10, $f16
	add.s   $f6, $f8, $f18
	swc1    $f6, 0x003C($t0)
	lwc1    $f4, 0x0028($sp)
	lwc1    $f10, 0x001C($sp)
	lwc1    $f18, 0x0020($sp)
	la.u    $t1, player_data
	sub.s   $f16, $f4, $f10
	la.l    $t1, player_data
	lwc1    $f10, 0x0044($t1)
	div.s   $f8, $f16, $f4
	mul.s   $f6, $f8, $f18
	add.s   $f16, $f10, $f6
	swc1    $f16, 0x0044($t1)
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A390C
objlib_802A390C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(mario_obj)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, %lo(mario_obj)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x001C($sp)
	mtc1    $0, $f16
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    22$
	nop
	lwc1    $f18, 0x001C($sp)
	neg.s   $f4, $f18
	swc1    $f4, 0x001C($sp)
22$:
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0024($sp)
	c.lt.s  $f6, $f8
	nop
	bc1f    30$
	nop
	jal     objlib_802A3818
	lwc1    $f12, 0x0020($sp)
30$:
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A399C
objlib_802A399C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A0($t6)
	lwc1    $f6, 0x00AC($t6)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A0($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lwc1    $f10, 0x00A4($t7)
	lwc1    $f16, 0x00B0($t7)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A4($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lwc1    $f4, 0x00A8($t8)
	lwc1    $f6, 0x00B4($t8)
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x00A8($t8)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $at, 0x000A
	lw      $t0, 0x00F4($t9)
	bne     $t0, $at, 29$
	nop
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
29$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x00F4($t1)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x00F4($t1)
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A3A3C:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3A4C
objlib_802A3A4C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $a0, 0x01AC($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01AC($t8)
	jr      $ra
	lb      $v0, 0x0000($t9)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3A88
objlib_802A3A88:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x01AC($t6)
	sw      $t7, 0x0008($sp)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x01B0($t8)
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0004($sp)
	lw      $t1, 0x0008($sp)
	lw      $t2, 0x0004($sp)
	li      $at, -0x0001
	addu    $t3, $t1, $t2
	lb      $t4, 0x0000($t3)
	beq     $t4, $at, 28$
	nop
	lw      $t5, 0x0008($sp)
	lw      $t6, 0x0004($sp)
	addu    $t7, $t5, $t6
	lb      $t8, 0x0000($t7)
	sb      $t8, 0x000F($sp)
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B0($t9)
	addiu   $t1, $t0, 0x0001
	b       34$
	sw      $t1, 0x01B0($t9)
28$:
	lw      $t2, 0x0008($sp)
	lb      $t3, 0x0000($t2)
	sb      $t3, 0x000F($sp)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	sw      $0, 0x01B0($t4)
34$:
	b       38$
	lb      $v0, 0x000F($sp)
	b       38$
	nop
38$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

objlib_802A3B28:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	b       4$
	nop
4$:
	jr      $ra
	nop

.globl objlib_802A3B40
objlib_802A3B40:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lwc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0010($sp)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0004($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $a1, $f18
	lw      $t7, 0x0154($t6)
	cvt.s.w $f4, $f18
	mtc1    $t7, $f10
	nop
	cvt.s.w $f16, $f10
	div.s   $f6, $f16, $f4
	swc1    $f6, 0x0000($sp)
	andi    $t8, $a0, 0x0001
	beqz    $t8, 28$
	nop
	lwc1    $f8, 0x0004($sp)
	lwc1    $f10, 0x0000($sp)
	lwc1    $f16, 0x0010($sp)
	lui     $t9, %hi(object)
	mul.s   $f18, $f8, $f10
	lw      $t9, %lo(object)($t9)
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x002C($t9)
28$:
	andi    $t0, $a0, 0x0002
	beqz    $t0, 39$
	nop
	lwc1    $f6, 0x0004($sp)
	lwc1    $f8, 0x0000($sp)
	lwc1    $f18, 0x0010($sp)
	lui     $t1, %hi(object)
	mul.s   $f10, $f6, $f8
	lw      $t1, %lo(object)($t1)
	add.s   $f16, $f10, $f18
	swc1    $f16, 0x0030($t1)
39$:
	andi    $t2, $a0, 0x0004
	beqz    $t2, 50$
	nop
	lwc1    $f4, 0x0004($sp)
	lwc1    $f6, 0x0000($sp)
	lwc1    $f10, 0x0010($sp)
	lui     $t3, %hi(object)
	mul.s   $f8, $f4, $f6
	lw      $t3, %lo(object)($t3)
	add.s   $f18, $f8, $f10
	swc1    $f18, 0x0034($t3)
50$:
	b       52$
	nop
52$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl objlib_802A3C18
objlib_802A3C18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t7, 0x0050($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	mtc1    $t7, $f4
	lwc1    $f8, 0x0164($t8)
	cvt.s.w $f6, $f4
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x00A0($t8)
	la.u    $t9, db_work
	la.l    $t9, db_work
	lh      $t0, 0x0052($t9)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	mtc1    $t0, $f16
	lwc1    $f4, 0x0168($t1)
	cvt.s.w $f18, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x00A4($t1)
	la.u    $t2, db_work
	la.l    $t2, db_work
	lh      $t3, 0x0054($t2)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	mtc1    $t3, $f8
	lwc1    $f16, 0x016C($t4)
	cvt.s.w $f10, $f8
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x00A8($t4)
	la.u    $t5, db_work
	la.l    $t5, db_work
	lh      $t6, 0x0056($t5)
	li      $at, 0x42C80000
	mtc1    $at, $f8
	mtc1    $t6, $f4
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	cvt.s.w $f6, $f4
	mtc1    $0, $f18
	div.s   $f10, $f6, $f8
	cvt.d.s $f16, $f10
	add.d   $f4, $f16, $f18
	jal     object_set_scale
	cvt.s.d $f12, $f4
	b       49$
	nop
49$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A3CEC:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3CFC
objlib_802A3CFC:
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t7, 0x0214($t6)
	bne     $t7, $t8, 11$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       13$
	nop
11$:
	jr      $ra
	move    $v0, $0
13$:
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A3D40:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0154($t6)
	andi    $t8, $t7, 0x0001
	beqz    $t8, 14$
	nop
	mtc1    $a1, $f6
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x00A4($t9)
	sub.s   $f10, $f4, $f8
	b       21$
	swc1    $f10, 0x00A4($t9)
14$:
	mtc1    $a1, $f18
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	cvt.s.w $f6, $f18
	lwc1    $f16, 0x00A4($t0)
	add.s   $f4, $f16, $f6
	swc1    $f4, 0x00A4($t0)
21$:
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sll     $t3, $a0, 1
	lw      $t2, 0x0154($t1)
	bne     $t2, $t3, 31$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       33$
	nop
31$:
	jr      $ra
	move    $v0, $0
33$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3DD4
objlib_802A3DD4:
	slti    $at, $a0, 0x0004
	beqz    $at, 5$
	nop
	bgez    $a0, 7$
	nop
5$:
	jr      $ra
	li      $v0, 0x0001
7$:
	lui     $t7, %hi(objlib_80330000)
	addu    $t7, $t7, $a0
	lb      $t7, %lo(objlib_80330000)($t7)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	mtc1    $t7, $f6
	lwc1    $f4, 0x00A4($t6)
	cvt.s.w $f8, $f6
	add.s   $f10, $f4, $f8
	swc1    $f10, 0x00A4($t6)
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3E30
objlib_802A3E30:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x014C($t7)
	sll     $t9, $t8, 2
	addu    $t0, $t6, $t9
	lw      $t1, 0x0000($t0)
	sw      $t1, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	jalr    $t9
	nop
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A3E80:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lui     $a0, %hi(object)
	la.u    $a2, o_1300080C
	la.l    $a2, o_1300080C
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x007A
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	sw      $t6, 0x01B0($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t0, 0x001C($sp)
	lw      $t9, 0x0188($t8)
	sw      $t9, 0x0188($t0)
	lw      $t1, 0x0020($sp)
	lw      $t2, 0x001C($sp)
	sw      $t1, 0x0144($t2)
	b       26$
	lw      $v0, 0x001C($sp)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

objlib_802A3EF8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	move    $a0, $0
	jal     objlib_802A3E80
	move    $a1, $0
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A3F24
objlib_802A3F24:
	sll     $t6, $a0, 1
	lui     $v0, %hi(objlib_80330004)
	addu    $v0, $v0, $t6
	jr      $ra
	lh      $v0, %lo(objlib_80330004)($v0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A3F48
objlib_802A3F48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A0($t7)
	lwc1    $f4, 0x0164($t6)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0024($sp)
	lui     $t8, %hi(object)
	lui     $t9, %hi(mario_obj)
	lw      $t9, %lo(mario_obj)($t9)
	lw      $t8, %lo(object)($t8)
	lwc1    $f16, 0x00A4($t9)
	lwc1    $f10, 0x0168($t8)
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0020($sp)
	lui     $t0, %hi(object)
	lui     $t1, %hi(mario_obj)
	lw      $t1, %lo(mario_obj)($t1)
	lw      $t0, %lo(object)($t0)
	lwc1    $f6, 0x00A8($t1)
	lwc1    $f4, 0x016C($t0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0024($sp)
	lwc1    $f18, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	mul.s   $f16, $f10, $f10
	nop
	mul.s   $f4, $f18, $f18
	add.s   $f6, $f16, $f4
	mul.s   $f10, $f8, $f8
	jal     sqrtf
	add.s   $f12, $f6, $f10
	swc1    $f0, 0x0018($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, 0x44FA0000
	mtc1    $at, $f16
	lwc1    $f18, 0x015C($t2)
	c.lt.s  $f16, $f18
	nop
	bc1f    57$
	nop
	li      $at, 0x44FA0000
	mtc1    $at, $f8
	lwc1    $f4, 0x0018($sp)
	c.lt.s  $f8, $f4
	nop
	bc1f    57$
	nop
	b       61$
	li      $v0, 0x0001
	b       59$
	nop
57$:
	b       61$
	move    $v0, $0
59$:
	b       61$
	nop
61$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A404C
objlib_802A404C:
	mtc1    $a0, $f6
	la.u    $t6, player_data
	la.l    $t6, player_data
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x0054($t6)
	c.lt.s  $f8, $f4
	nop
	bc1f    11$
	nop
	jr      $ra
	li      $v0, 0x0001
11$:
	la.u    $t7, player_data
	la.l    $t7, player_data
	lw      $t8, 0x000C($t7)
	andi    $t9, $t8, 0x0800
	beqz    $t9, 21$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       23$
	nop
21$:
	jr      $ra
	move    $v0, $0
23$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A40B8
objlib_802A40B8:
	sll     $a0, $a0, 24
	sra     $a0, $a0, 24
	lb      $t6, 0x0000($a1)
	li      $at, -0x0001
	beq     $t6, $at, 16$
	nop
6$:
	lb      $t7, 0x0000($a1)
	bne     $t7, $a0, 11$
	nop
	jr      $ra
	li      $v0, 0x0001
11$:
	addiu   $a1, $a1, 0x0001
	lb      $t8, 0x0000($a1)
	li      $at, -0x0001
	bne     $t8, $at, 6$
	nop
16$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

objlib_802A4110:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4120
objlib_802A4120:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $a0, %hi(stage_index)
	la.u    $a1, objlib_80330014
	la.l    $a1, objlib_80330014
	jal     objlib_802A40B8
	lh      $a0, %lo(stage_index)($a0)
	beqz    $v0, 50$
	nop
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t6)
	lwc1    $f14, 0x00A4($t6)
	jal     bg_check_ground
	lw      $a2, 0x00A8($t6)
	swc1    $f0, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	beqz    $t7, 48$
	nop
	lw      $t8, 0x001C($sp)
	lb      $t9, 0x0005($t8)
	beqz    $t9, 30$
	nop
	lw      $t0, 0x001C($sp)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lb      $t1, 0x0005($t0)
	b       48$
	sw      $t1, 0x01A0($t2)
30$:
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, 0x42C80000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	addiu   $a3, $sp, 0x001C
	lwc1    $f12, 0x00A0($t3)
	lw      $a2, 0x00A8($t3)
	jal     bg_check_ground
	sub.s   $f14, $f4, $f6
	lw      $t4, 0x001C($sp)
	beqz    $t4, 48$
	nop
	lw      $t5, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lb      $t6, 0x0005($t5)
	sw      $t6, 0x01A0($t7)
48$:
	b       54$
	nop
50$:
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $t8, -0x0001
	sw      $t8, 0x01A0($t9)
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A4210
objlib_802A4210:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	li      $at, -0x0001
	lw      $t7, 0x01A0($t6)
	beq     $t7, $at, 77$
	nop
	lui     $t8, %hi(object_80361250)
	lh      $t8, %lo(object_80361250)($t8)
	beqz    $t8, 77$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lui     $t1, %hi(object_80361250)
	lh      $t1, %lo(object_80361250)($t1)
	lw      $t0, 0x01A0($t9)
	bne     $t0, $t1, 22$
	nop
	b       49$
	li      $s0, 0x0001
22$:
	lui     $t4, %hi(object_80361250)
	lh      $t4, %lo(object_80361250)($t4)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lui     $t6, %hi(area_table+0)
	sll     $t5, $t4, 1
	addu    $t6, $t6, $t5
	lb      $t6, %lo(area_table+0)($t6)
	lw      $t3, 0x01A0($t2)
	bne     $t3, $t6, 35$
	nop
	b       49$
	li      $s0, 0x0001
35$:
	lui     $t9, %hi(object_80361250)
	lh      $t9, %lo(object_80361250)($t9)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lui     $t1, %hi(area_table+1)
	sll     $t0, $t9, 1
	addu    $t1, $t1, $t0
	lb      $t1, %lo(area_table+1)($t1)
	lw      $t8, 0x01A0($t7)
	bne     $t8, $t1, 48$
	nop
	b       49$
	li      $s0, 0x0001
48$:
	move    $s0, $0
49$:
	beqz    $s0, 65$
	nop
	jal     objlib_8029F620
	nop
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	li      $at, -0x0009
	lh      $t4, 0x0074($t2)
	and     $t5, $t4, $at
	sh      $t5, 0x0074($t2)
	lui     $t3, %hi(object_8036125E)
	lh      $t3, %lo(object_8036125E)($t3)
	lui     $at, %hi(object_8036125E)
	addiu   $t6, $t3, 0x0001
	b       77$
	sh      $t6, %lo(object_8036125E)($at)
65$:
	jal     objlib_8029F66C
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t9, 0x0074($t7)
	ori     $t0, $t9, 0x0008
	sh      $t0, 0x0074($t7)
	lui     $t8, %hi(object_80361260)
	lh      $t8, %lo(object_80361260)($t8)
	lui     $at, %hi(object_80361260)
	addiu   $t1, $t8, 0x0001
	sh      $t1, %lo(object_80361260)($at)
77$:
	b       79$
	nop
79$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl objlib_802A4360
objlib_802A4360:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $0, 0x001C($sp)
	lui     $a0, %hi(object)
	lw      $a0, %lo(object)($a0)
	jal     objlib_802A34A4
	lw      $a1, 0x0020($sp)
	lw      $t6, 0x0028($sp)
	beqz    $t6, 16$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sw      $0, 0x0198($t7)
16$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0134($t8)
	andi    $t0, $t9, 0x8000
	beqz    $t0, 45$
	nop
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	lw      $t2, 0x0134($t1)
	andi    $t3, $t2, 0x4000
	beqz    $t3, 43$
	nop
	jal     objlib_802A37AC
	nop
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	li      $a2, 0x41A00000
	move    $a0, $t4
	jal     objlib_802A1B8C
	lw      $a1, 0x0198($t4)
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	jal     object_makesound
	lw      $a0, 0x0024($sp)
	b       45$
	nop
43$:
	li      $t5, 0x0001
	sw      $t5, 0x001C($sp)
45$:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sw      $0, 0x0134($t6)
	b       52$
	lw      $v0, 0x001C($sp)
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A4440
objlib_802A4440:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x001C($sp)
	swc1    $f12, 0x0018($sp)
	move    $a0, $0
	move    $a1, $0
	jal     object_a_802AAE8C
	lw      $a2, 0x0018($sp)
	li      $a0, 0x001E
	li      $a1, 0x008A
	li      $a2, 0x40400000
	jal     object_a_802AE0CC
	li      $a3, 0x0004
	lui     $a0, %hi(object)
	jal     objlib_802A0568
	lw      $a0, %lo(object)($a0)
	lw      $t6, 0x001C($sp)
	li      $at, 0x0001
	bne     $t6, $at, 28$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	li      $a2, 0x41A00000
	move    $a0, $t7
	jal     objlib_802A1B8C
	lw      $a1, 0x0198($t7)
	b       39$
	nop
28$:
	lw      $t8, 0x001C($sp)
	li      $at, 0x0002
	bne     $t8, $at, 39$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	li      $a2, 0x41A00000
	li      $a3, 0x0096
	move    $a0, $t9
	jal     objlib_802A1B34
	lw      $a1, 0x0198($t9)
39$:
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A44F4
objlib_802A44F4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     segment_to_virtual
	lw      $a0, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	sw      $v0, 0x0218($t6)
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A452C
objlib_802A452C:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x00EC($t6)
	andi    $t8, $t7, 0x0200
	beqz    $t8, 10$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lw      $t0, 0x01B4($t9)
	sw      $t0, 0x00C8($t9)
10$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4564
objlib_802A4564:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	lui     $t6, %hi(object)
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	lw      $t6, %lo(object)($t6)
	lwc1    $f6, 0x00A4($t7)
	lwc1    $f4, 0x00A4($t6)
	jal     objlib_802A3634
	sub.s   $f12, $f4, $f6
	lwc1    $f8, 0x0018($sp)
	c.lt.s  $f0, $f8
	nop
	bc1f    22$
	nop
	jal     objlib_8029F694
	nop
	b       28$
	move    $v0, $0
	b       26$
	nop
22$:
	jal     objlib_8029F6BC
	nop
	b       28$
	li      $v0, 0x0001
26$:
	b       28$
	nop
28$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl s_objlib_802A45E4
s_objlib_802A45E4:
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, 12$
	nop
	lw      $t7, 0x0008($a1)
	li      $t6, 0x012C
	sh      $t6, 0x0018($t7)
	lw      $t9, 0x0008($a1)
	li      $t8, 0x012C
	sh      $t8, 0x001A($t9)
	lw      $t0, 0x0008($a1)
	sh      $0, 0x001C($t0)
12$:
	b       16$
	move    $v0, $0
	b       16$
	nop
16$:
	jr      $ra
	nop

objlib_802A462C:
	sw      $a2, 0x0008($sp)
	li      $at, 0x0001
	bne     $a0, $at, 34$
	nop
	la.u    $t6, db_work
	la.l    $t6, db_work
	lh      $t7, 0x0040($t6)
	lw      $t8, 0x0008($a1)
	sh      $t7, 0x0018($t8)
	la.u    $t9, db_work
	la.l    $t9, db_work
	lh      $t0, 0x0042($t9)
	lw      $t1, 0x0008($a1)
	sh      $t0, 0x001A($t1)
	la.u    $t2, db_work
	la.l    $t2, db_work
	lh      $t3, 0x0044($t2)
	lw      $t4, 0x0008($a1)
	sh      $t3, 0x001C($t4)
	la.u    $t5, db_work
	la.l    $t5, db_work
	lh      $t6, 0x0046($t5)
	lw      $t7, 0x0008($a1)
	sh      $t6, 0x001E($t7)
	la.u    $t8, db_work
	la.l    $t8, db_work
	lh      $t9, 0x0048($t8)
	lw      $t0, 0x0008($a1)
	sh      $t9, 0x0020($t0)
	la.u    $t1, db_work
	la.l    $t1, db_work
	lh      $t2, 0x004A($t1)
	lw      $t3, 0x0008($a1)
	sh      $t2, 0x0022($t3)
34$:
	b       38$
	move    $v0, $0
	b       38$
	nop
38$:
	jr      $ra
	nop

.globl objlib_802A46CC
objlib_802A46CC:
	lh      $t6, 0x0002($a0)
	andi    $t7, $t6, 0x0010
	beqz    $t7, 8$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       10$
	nop
8$:
	jr      $ra
	move    $v0, $0
10$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4704
objlib_802A4704:
	lui     $t6, %hi(object_flag)
	lw      $t6, %lo(object_flag)($t6)
	lui     $at, %hi(object_flag)
	ori     $t7, $t6, 0x0002
	sw      $t7, %lo(object_flag)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4728
objlib_802A4728:
	lui     $t6, %hi(object_flag)
	lw      $t6, %lo(object_flag)($t6)
	li      $at, -0x0003
	and     $t7, $t6, $at
	lui     $at, %hi(object_flag)
	sw      $t7, %lo(object_flag)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4750
objlib_802A4750:
	lui     $t6, %hi(object_flag)
	lw      $t6, %lo(object_flag)($t6)
	lui     $at, %hi(object_flag)
	or      $t7, $t6, $a0
	sw      $t7, %lo(object_flag)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4774
objlib_802A4774:
	lui     $t7, %hi(object_flag)
	lw      $t7, %lo(object_flag)($t7)
	li      $at, -0x0001
	xor     $t6, $a0, $at
	lui     $at, %hi(object_flag)
	and     $t8, $t6, $t7
	sw      $t8, %lo(object_flag)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A47A0
objlib_802A47A0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lui     $at, %hi(objlib_80337830)
	lwc1    $f6, %lo(objlib_80337830)($at)
	lwc1    $f4, 0x015C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    63$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E27C
	lw      $a0, %lo(object)($a0)
	swc1    $f0, 0x001C($sp)
	lui     $a0, %hi(mario_obj)
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(mario_obj)($a0)
	sh      $v0, 0x001A($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x0020($sp)
	c.lt.s  $f8, $f10
	nop
	bc1f    63$
	nop
	lui     $t8, %hi(mario_obj)
	lw      $t8, %lo(mario_obj)($t8)
	li      $at, 0x43200000
	mtc1    $at, $f4
	lwc1    $f18, 0x00A4($t8)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	add.s   $f6, $f18, $f4
	lwc1    $f16, 0x00A4($t7)
	c.lt.s  $f16, $f6
	nop
	bc1f    63$
	nop
	lwc1    $f8, 0x0024($sp)
	add.s   $f10, $f16, $f8
	c.lt.s  $f18, $f10
	nop
	bc1f    63$
	nop
	la.u    $t9, player_data
	la.l    $t9, player_data
	lw      $t0, 0x000C($t9)
	andi    $t1, $t0, 0x0800
	bnez    $t1, 63$
	nop
	jal     pl_demo_802575A8
	nop
	beqz    $v0, 63$
	nop
	b       67$
	li      $v0, 0x0001
63$:
	b       67$
	move    $v0, $0
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A48BC
objlib_802A48BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f14, 0x001C($sp)
	jal     objlib_802A47A0
	li      $a2, 0x1000
	b       12$
	nop
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A48FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sh      $t6, 0x0090($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0092($t8)
	addiu   $t0, $t9, 0x0001
	sh      $t0, 0x0092($t8)
	lw      $t1, 0x0018($sp)
	andi    $t2, $t1, 0x0010
	bnez    $t2, 19$
	nop
	jal     pl_demo_80257640
	move    $a0, $0
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A4960
objlib_802A4960:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	sw      $0, 0x001C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lhu     $t8, 0x0092($t7)
	sltiu   $at, $t8, 0x0005
	beqz    $at, 148$
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(objlib_80337834)
	addu    $at, $at, $t8
	lw      $t8, %lo(objlib_80337834)($at)
	jr      $t8
	nop
.globl L802A49B4
L802A49B4:
	jal     pl_demo_802575A8
	nop
	bnez    $v0, 32$
	nop
	lui     $t9, %hi(mario)
	lw      $t9, %lo(mario)($t9)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t0, 0x000C($t9)
	bne     $t0, $at, 48$
	nop
32$:
	lui     $t1, %hi(object_flag)
	lw      $t1, %lo(object_flag)($t1)
	lui     $at, %hi(object_flag)
	ori     $t2, $t1, 0x0002
	sw      $t2, %lo(object_flag)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0074($t3)
	ori     $t5, $t4, 0x0020
	sh      $t5, 0x0074($t3)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lh      $t7, 0x0092($t6)
	addiu   $t8, $t7, 0x0001
	b       L802A4A28
	sh      $t8, 0x0092($t6)
48$:
	b       153$
	nop
.globl L802A4A28
L802A4A28:
	jal     pl_demo_80257640
	lw      $a0, 0x0020($sp)
	li      $at, 0x0002
	bne     $v0, $at, 60$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	lh      $t0, 0x0092($t9)
	addiu   $t1, $t0, 0x0001
	sh      $t1, 0x0092($t9)
60$:
	b       153$
	nop
.globl L802A4A58
L802A4A58:
	lw      $t2, 0x0024($sp)
	andi    $t4, $t2, 0x0004
	beqz    $t4, 70$
	nop
	jal     msg_open_prompt
	lw      $a0, 0x0028($sp)
	b       76$
	nop
70$:
	lw      $t5, 0x0024($sp)
	andi    $t3, $t5, 0x0002
	beqz    $t3, 76$
	nop
	jal     msg_open
	lw      $a0, 0x0028($sp)
76$:
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0092($t7)
	addiu   $t6, $t8, 0x0001
	sh      $t6, 0x0092($t7)
	b       153$
	nop
.globl L802A4AAC
L802A4AAC:
	lw      $t0, 0x0024($sp)
	andi    $t1, $t0, 0x0004
	beqz    $t1, 97$
	nop
	lui     $t9, %hi(msg_answer)
	lw      $t9, %lo(msg_answer)($t9)
	beqz    $t9, 95$
	nop
	lui     $a1, %hi(msg_answer)
	lw      $a1, %lo(msg_answer)($a1)
	jal     objlib_802A48FC
	lw      $a0, 0x0024($sp)
95$:
	b       114$
	nop
97$:
	lw      $t2, 0x0024($sp)
	andi    $t4, $t2, 0x0002
	beqz    $t4, 111$
	nop
	jal     msg_get
	nop
	li      $at, -0x0001
	bne     $v0, $at, 109$
	nop
	lw      $a0, 0x0024($sp)
	jal     objlib_802A48FC
	li      $a1, 0x0003
109$:
	b       114$
	nop
111$:
	lw      $a0, 0x0024($sp)
	jal     objlib_802A48FC
	li      $a1, 0x0003
114$:
	b       153$
	nop
.globl L802A4B30
L802A4B30:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t3, 0x000C($t5)
	bne     $t3, $at, 127$
	nop
	lw      $t8, 0x0024($sp)
	andi    $t6, $t8, 0x0010
	beqz    $t6, 146$
	nop
127$:
	lui     $t7, %hi(object_flag)
	lw      $t7, %lo(object_flag)($t7)
	li      $at, -0x0003
	and     $t0, $t7, $at
	lui     $at, %hi(object_flag)
	sw      $t0, %lo(object_flag)($at)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	li      $at, -0x0021
	lh      $t9, 0x0074($t1)
	and     $t2, $t9, $at
	sh      $t2, 0x0074($t1)
	lui     $t4, %hi(object)
	lw      $t4, %lo(object)($t4)
	lh      $t5, 0x0090($t4)
	sw      $t5, 0x001C($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	sh      $0, 0x0092($t3)
146$:
	b       153$
	nop
148$:
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	sh      $0, 0x0092($t8)
	b       153$
	nop
153$:
	b       157$
	lw      $v0, 0x001C($sp)
	b       157$
	nop
157$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A4BE4
objlib_802A4BE4:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	sw      $0, 0x002C($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0028($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $s0, 0x0092($t7)
	beqz    $s0, 27$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 59$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 107$
	nop
	li      $at, 0x0003
	beq     $s0, $at, 148$
	nop
	b       191$
	nop
27$:
	jal     pl_demo_802575A8
	nop
	bnez    $v0, 38$
	nop
	lui     $t8, %hi(mario)
	lw      $t8, %lo(mario)($t8)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t9, 0x000C($t8)
	bne     $t9, $at, 57$
	nop
38$:
	lui     $t0, %hi(object_flag)
	lw      $t0, %lo(object_flag)($t0)
	lui     $at, %hi(object_flag)
	ori     $t1, $t0, 0x0002
	sw      $t1, %lo(object_flag)($at)
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	lh      $t3, 0x0074($t2)
	ori     $t4, $t3, 0x0020
	sh      $t4, 0x0074($t2)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t6, 0x0092($t5)
	addiu   $t7, $t6, 0x0001
	sh      $t7, 0x0092($t5)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	b       59$
	sh      $0, 0x0090($t8)
57$:
	b       191$
	nop
59$:
	lw      $t9, 0x0034($sp)
	andi    $t0, $t9, 0x0001
	beqz    $t0, 83$
	nop
	lui     $a0, %hi(object)
	lui     $a1, %hi(mario_obj)
	lw      $a1, %lo(mario_obj)($a1)
	jal     objlib_8029E694
	lw      $a0, %lo(object)($a0)
	sll     $s1, $v0, 16
	sra     $t1, $s1, 16
	move    $s1, $t1
	move    $a0, $s1
	jal     objlib_8029E5EC
	li      $a1, 0x0800
	sw      $v0, 0x0028($sp)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t4, 0x0090($t3)
	slti    $at, $t4, 0x0021
	bnez    $at, 83$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0028($sp)
83$:
	jal     pl_demo_80257640
	lw      $a0, 0x0030($sp)
	li      $at, 0x0002
	bne     $v0, $at, 100$
	nop
	lw      $t6, 0x0028($sp)
	beqz    $t6, 100$
	nop
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	sh      $0, 0x0090($t7)
	lui     $t5, %hi(object)
	lw      $t5, %lo(object)($t5)
	lh      $t8, 0x0092($t5)
	addiu   $t9, $t8, 0x0001
	b       105$
	sh      $t9, 0x0092($t5)
100$:
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lh      $t1, 0x0090($t0)
	addiu   $t3, $t1, 0x0001
	sh      $t3, 0x0090($t0)
105$:
	b       191$
	nop
107$:
	lw      $t4, 0x0038($sp)
	li      $at, 0x00A1
	bne     $t4, $at, 129$
	nop
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	jal     camera_8028FFC8
	lw      $a0, 0x0038($sp)
	sll     $s1, $v0, 16
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	sra     $t2, $s1, 16
	move    $s1, $t2
	beqz    $s1, 127$
	sh      $s1, 0x0090($t6)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lh      $t8, 0x0092($t7)
	addiu   $t9, $t8, 0x0001
	sh      $t9, 0x0092($t7)
127$:
	b       146$
	nop
129$:
	lui     $a1, %hi(object)
	lw      $a1, %lo(object)($a1)
	lw      $a0, 0x0038($sp)
	jal     camera_8028FF04
	lw      $a2, 0x003C($sp)
	sll     $s1, $v0, 16
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	sra     $t5, $s1, 16
	move    $s1, $t5
	beqz    $s1, 146$
	sh      $s1, 0x0090($t1)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	lh      $t0, 0x0092($t3)
	addiu   $t4, $t0, 0x0001
	sh      $t4, 0x0092($t3)
146$:
	b       191$
	nop
148$:
	lw      $t2, 0x0034($sp)
	andi    $t6, $t2, 0x0010
	beqz    $t6, 160$
	nop
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0090($t8)
	sw      $t9, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       189$
	sh      $0, 0x0092($t7)
160$:
	lui     $t5, %hi(mario)
	lw      $t5, %lo(mario)($t5)
	li.u    $at, 0x20001306
	li.l    $at, 0x20001306
	lw      $t1, 0x000C($t5)
	beq     $t1, $at, 187$
	nop
	lui     $t0, %hi(object_flag)
	lw      $t0, %lo(object_flag)($t0)
	li      $at, -0x0003
	and     $t4, $t0, $at
	lui     $at, %hi(object_flag)
	sw      $t4, %lo(object_flag)($at)
	lui     $t3, %hi(object)
	lw      $t3, %lo(object)($t3)
	li      $at, -0x0021
	lh      $t2, 0x0074($t3)
	and     $t6, $t2, $at
	sh      $t6, 0x0074($t3)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0090($t8)
	sw      $t9, 0x002C($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	b       189$
	sh      $0, 0x0092($t7)
187$:
	jal     pl_demo_80257640
	move    $a0, $0
189$:
	b       191$
	nop
191$:
	b       195$
	lw      $v0, 0x002C($sp)
	b       195$
	nop
195$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl objlib_802A4F04
objlib_802A4F04:
	andi    $a0, $a0, 0xFFFF
	lui     $t6, %hi(shape_table)
	lw      $t6, %lo(shape_table)($t6)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	sll     $t7, $a0, 2
	addu    $t8, $t6, $t7
	lw      $t9, 0x0000($t8)
	lw      $t1, 0x0014($t0)
	bne     $t9, $t1, 15$
	nop
	jr      $ra
	li      $v0, 0x0001
	b       17$
	nop
15$:
	jr      $ra
	move    $v0, $0
17$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A4F58
objlib_802A4F58:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	addiu   $t7, $sp, 0x001C
	lwc1    $f4, 0x00A0($t6)
	swc1    $f4, 0x0000($t7)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	addiu   $t9, $sp, 0x001C
	lwc1    $f6, 0x00A4($t8)
	swc1    $f6, 0x0004($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $t1, $sp, 0x001C
	lwc1    $f8, 0x00A8($t0)
	swc1    $f8, 0x0008($t1)
	addiu   $t2, $sp, 0x001C
	lwc1    $f12, 0x0000($t2)
	lwc1    $f14, 0x0004($t2)
	lw      $a2, 0x0008($t2)
	jal     bg_check_ground
	addiu   $a3, $sp, 0x0034
	lw      $t3, 0x0034($sp)
	beqz    $t3, 49$
	nop
	lw      $t4, 0x0034($sp)
	addiu   $t5, $sp, 0x0028
	lwc1    $f10, 0x001C($t4)
	swc1    $f10, 0x0000($t5)
	lw      $t6, 0x0034($sp)
	addiu   $t7, $sp, 0x0028
	lwc1    $f16, 0x0020($t6)
	swc1    $f16, 0x0004($t7)
	lw      $t8, 0x0034($sp)
	addiu   $t9, $sp, 0x0028
	lwc1    $f18, 0x0024($t8)
	swc1    $f18, 0x0008($t9)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	addiu   $a1, $sp, 0x0028
	addiu   $a2, $sp, 0x001C
	addiu   $a0, $t0, 0x021C
	jal     mtxf_stand
	lw      $a3, 0x00D4($t0)
	lui     $t1, %hi(object)
	lw      $t1, %lo(object)($t1)
	addiu   $t2, $t1, 0x021C
	sw      $t2, 0x0050($t1)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

objlib_802A5034:
	sll     $a0, $a0, 16
	sll     $a1, $a1, 16
	sll     $a2, $a2, 16
	sll     $a3, $a3, 16
	sra     $a3, $a3, 16
	sra     $a2, $a2, 16
	sra     $a1, $a1, 16
	sra     $a0, $a0, 16
	mtc1    $a0, $f6
	lui     $t6, %hi(mario_obj)
	lw      $t6, %lo(mario_obj)($t6)
	cvt.s.w $f8, $f6
	lwc1    $f4, 0x00A0($t6)
	c.lt.s  $f4, $f8
	nop
	bc1t    24$
	nop
	mtc1    $a1, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f4
	nop
	bc1f    26$
	nop
24$:
	jr      $ra
	move    $v0, $0
26$:
	mtc1    $a2, $f6
	lui     $t7, %hi(mario_obj)
	lw      $t7, %lo(mario_obj)($t7)
	cvt.s.w $f8, $f6
	lwc1    $f18, 0x00A8($t7)
	c.lt.s  $f18, $f8
	nop
	bc1t    42$
	nop
	mtc1    $a3, $f10
	nop
	cvt.s.w $f16, $f10
	c.lt.s  $f16, $f18
	nop
	bc1f    44$
	nop
42$:
	jr      $ra
	move    $v0, $0
44$:
	jr      $ra
	li      $v0, 0x0001
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A50FC
objlib_802A50FC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $a0, 0x0018($sp)
	lw      $a1, 0x00A0($t6)
	lw      $a2, 0x00A4($t6)
	jal     camera_8027F9F0
	lw      $a3, 0x00A8($t6)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A513C
objlib_802A513C:
	addiu   $sp, $sp, -0x0010
	sw      $0, 0x0004($sp)
	lh      $t6, 0x0076($a0)
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	beqz    $t7, 22$
	nop
	lw      $t8, 0x0078($a0)
	sw      $t8, 0x0008($sp)
	lui     $t0, %hi(mario_obj)
	lw      $t0, %lo(mario_obj)($t0)
	lw      $t9, 0x0008($sp)
	beq     $t9, $t0, 22$
	nop
	lw      $t1, 0x0008($sp)
	li.u    $at, 0x0080C001
	li.l    $at, 0x0080C001
	lw      $t2, 0x0134($t1)
	or      $t3, $t2, $at
	sw      $t3, 0x0134($t1)
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
22$:
	b       26$
	lw      $v0, 0x0004($sp)
	b       26$
	nop
26$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl objlib_802A51AC
objlib_802A51AC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 14$
	nop
	andi    $t9, $t7, 0x4000
	beqz    $t9, 14$
	nop
	li      $t0, 0x0001
	sw      $t0, 0x001C($sp)
14$:
	jal     objlib_802A3754
	nop
	beqz    $v0, 20$
	nop
	li      $t1, 0x0001
	sw      $t1, 0x001C($sp)
20$:
	lui     $t2, %hi(object)
	lw      $t2, %lo(object)($t2)
	sw      $0, 0x0134($t2)
	b       27$
	lw      $v0, 0x001C($sp)
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl objlib_802A5228
objlib_802A5228:
	lw      $t6, 0x0188($a1)
	sw      $t6, 0x0188($a0)
	lw      $t7, 0x0144($a1)
	sw      $t7, 0x0144($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A5248
objlib_802A5248:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	lui     $t7, %hi(object)
	lw      $t7, %lo(object)($t7)
	lw      $t6, 0x001C($sp)
	sh      $t6, 0x0040($t7)
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A5288
objlib_802A5288:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_8029FF04
	nop
	b       11$
	nop
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A52C4
objlib_802A52C4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	jal     objlib_8029F4B4
	lw      $a0, 0x0018($sp)
	jal     objlib_8029FEA4
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A52F8
objlib_802A52F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x0800
	beqz    $t8, 16$
	nop
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	li      $t9, 0x0001
	sw      $t9, 0x0088($t0)
	jal     objlib_802A05B4
	nop
	b       20$
	li      $v0, 0x0001
16$:
	b       20$
	move    $v0, $0
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A5358
objlib_802A5358:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lui     $t6, %hi(cont1)
	lw      $t6, %lo(cont1)($t6)
	li      $at, 0x41F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x000C($t6)
	c.lt.s  $f4, $f6
	nop
	bc1f    13$
	nop
	lui     $at, %hi(objlib_80361270)
	sw      $0, %lo(objlib_80361270)($at)
13$:
	lui     $t7, %hi(objlib_80361270)
	lw      $t7, %lo(objlib_80361270)($t7)
	bnez    $t7, 31$
	nop
	lui     $t8, %hi(cont1)
	lw      $t8, %lo(cont1)($t8)
	li      $at, 0x42200000
	mtc1    $at, $f10
	lwc1    $f8, 0x000C($t8)
	c.lt.s  $f10, $f8
	nop
	bc1f    31$
	nop
	li      $t9, 0x0001
	lui     $at, %hi(objlib_80361270)
	sw      $t9, %lo(objlib_80361270)($at)
	li      $t0, 0x0001
	sw      $t0, 0x0004($sp)
31$:
	lui     $t1, %hi(cont1)
	lw      $t1, %lo(cont1)($t1)
	lhu     $t2, 0x0012($t1)
	andi    $t3, $t2, 0x8000
	beqz    $t3, 39$
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0004($sp)
39$:
	b       43$
	lw      $v0, 0x0004($sp)
	b       43$
	nop
43$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

objlib_802A540C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	jal     objlib_802A0008
	lw      $a0, 0x0018($sp)
	bnez    $v0, 13$
	nop
	jal     objlib_802A0008
	lw      $a0, 0x001C($sp)
	beqz    $v0, 15$
	nop
13$:
	jal     object_playsound
	lw      $a0, 0x0020($sp)
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

objlib_802A5460:
	lui     $t6, %hi(object_flag)
	lw      $t6, %lo(object_flag)($t6)
	lui     $at, %hi(object_flag)
	ori     $t7, $t6, 0x000A
	sw      $t7, %lo(object_flag)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lh      $t9, 0x0074($t8)
	ori     $t0, $t9, 0x0020
	sh      $t0, 0x0074($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A5498
objlib_802A5498:
	lui     $t6, %hi(object_flag)
	lw      $t6, %lo(object_flag)($t6)
	li      $at, -0x000B
	and     $t7, $t6, $at
	lui     $at, %hi(object_flag)
	sw      $t7, %lo(object_flag)($at)
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	li      $at, -0x0021
	lh      $t9, 0x0074($t8)
	and     $t0, $t9, $at
	sh      $t0, 0x0074($t8)
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A54D8
objlib_802A54D8:
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0134($t6)
	andi    $t8, $t7, 0x8000
	beqz    $t8, 13$
	nop
	lui     $t9, %hi(object)
	lw      $t9, %lo(object)($t9)
	sw      $0, 0x0134($t9)
	jr      $ra
	li      $v0, 0x0001
	b       15$
	nop
13$:
	jr      $ra
	move    $v0, $0
15$:
	jr      $ra
	nop
	jr      $ra
	nop

.globl objlib_802A5524
objlib_802A5524:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lw      $t7, 0x0198($t6)
	slti    $at, $t7, 0x0005
	bnez    $at, 19$
	nop
	lui     $a0, %hi(object)
	la.u    $a2, o_13000830
	la.l    $a2, o_13000830
	lw      $a0, %lo(object)($a0)
	jal     obj_make_here
	li      $a1, 0x0076
	lui     $t8, %hi(object)
	lw      $t8, %lo(object)($t8)
	lw      $t9, 0x0198($t8)
	addiu   $t0, $t9, -0x0005
	sw      $t0, 0x0198($t8)
19$:
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl objlib_802A5588
objlib_802A5588:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(object)
	lw      $t6, %lo(object)($t6)
	lwc1    $f4, 0x00A4($t6)
	swc1    $f4, 0x001C($sp)
	la.u    $t7, db_work
	la.l    $t7, db_work
	lh      $t8, 0x0050($t7)
	lwc1    $f6, 0x002C($sp)
	lui     $t9, %hi(object)
	mtc1    $t8, $f8
	lw      $t9, %lo(object)($t9)
	cvt.s.w $f10, $f8
	lwc1    $f18, 0x00A4($t9)
	add.s   $f16, $f6, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x00A4($t9)
	lwc1    $f12, 0x0020($sp)
	lwc1    $f14, 0x0024($sp)
	jal     object_b_802F2B88
	lw      $a2, 0x0028($sp)
	lui     $t0, %hi(object)
	lw      $t0, %lo(object)($t0)
	lwc1    $f8, 0x001C($sp)
	swc1    $f8, 0x00A4($t0)
	b       32$
	nop
32$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop
