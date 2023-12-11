.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl face_gfx_8019B060
face_gfx_8019B060:
	lui     $v0, %hi(_face_gfx_bss-0x1540+0x16F0)
	lw      $v0, %lo(_face_gfx_bss-0x1540+0x16F0)($v0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_8019B080
face_gfx_8019B080:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     osGetTime
	nop
	b       8$
	move    $v0, $v1
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019B0B0
face_gfx_8019B0B0:
	lui     $at, %hi(face_gfx_801A8824)
	lwc1    $f0, %lo(face_gfx_801A8824)($at)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019B0D0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x002C($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	la.u    $a0, str_face_gfx_801B8E30
	lw      $a1, 0x0040($t6)
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B8E30
	lui     $t7, %hi(face_gfx_801A888C)
	lw      $t7, %lo(face_gfx_801A888C)($t7)
	la.u    $a0, str_face_gfx_801B8E34
	lw      $t8, 0x0010($t7)
	lw      $a1, 0x0000($t7)
	lw      $a2, 0x0004($t7)
	lw      $a3, 0x000C($t7)
	sw      $t8, 0x0010($sp)
	lw      $t9, 0x0018($t7)
	la.l    $a0, str_face_gfx_801B8E34
	sw      $t9, 0x0014($sp)
	lw      $t0, 0x001C($t7)
	nop
	sw      $t0, 0x0018($sp)
	lw      $t1, 0x0024($t7)
	nop
	sw      $t1, 0x001C($sp)
	lw      $t2, 0x0028($t7)
	jal     gd_printf
	sw      $t2, 0x0020($sp)
	b       30$
	nop
30$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

face_gfx_8019B158:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x0024($t6)
	lw      $t8, 0x0028($t6)
	nop
	slt     $at, $t7, $t8
	bnez    $at, 17$
	nop
	jal     face_gfx_8019B0D0
	nop
	la.u    $a0, str_face_gfx_801B8E64
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8E64
17$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x0024($t9)
	lw      $t2, 0x002C($t9)
	lw      $t3, 0x0024($t9)
	sll     $t1, $t0, 3
	addu    $s0, $t1, $t2
	addiu   $t4, $t3, 0x0001
	move    $v0, $s0
	b       31$
	sw      $t4, 0x0024($t9)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019B1E4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x0018($t6)
	lw      $t8, 0x001C($t6)
	nop
	slt     $at, $t7, $t8
	bnez    $at, 17$
	nop
	jal     face_gfx_8019B0D0
	nop
	la.u    $a0, str_face_gfx_801B8E78
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8E78
17$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x0018($t9)
	lw      $t2, 0x0020($t9)
	sll     $t1, $t0, 3
	lw      $t3, 0x0018($t9)
	addu    $t1, $t1, $t0
	sll     $t1, $t1, 3
	addu    $s0, $t1, $t2
	addiu   $t4, $t3, 0x0001
	move    $v0, $s0
	b       33$
	sw      $t4, 0x0018($t9)
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019B278:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x000C($t6)
	lw      $t8, 0x0010($t6)
	nop
	slt     $at, $t7, $t8
	bnez    $at, 17$
	nop
	jal     face_gfx_8019B0D0
	nop
	la.u    $a0, str_face_gfx_801B8E8C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8E8C
17$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x000C($t9)
	lw      $t2, 0x0014($t9)
	lw      $t3, 0x000C($t9)
	sll     $t1, $t0, 6
	addu    $s0, $t1, $t2
	addiu   $t4, $t3, 0x0001
	move    $v0, $s0
	b       31$
	sw      $t4, 0x000C($t9)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019B304:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x0000($t6)
	lw      $t8, 0x0004($t6)
	nop
	slt     $at, $t7, $t8
	bnez    $at, 17$
	nop
	jal     face_gfx_8019B0D0
	nop
	la.u    $a0, str_face_gfx_801B8EA0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8EA0
17$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x0000($t9)
	lw      $t2, 0x0008($t9)
	lw      $t3, 0x0000($t9)
	sll     $t1, $t0, 4
	addu    $s0, $t1, $t2
	addiu   $t4, $t3, 0x0001
	move    $v0, $s0
	b       31$
	sw      $t4, 0x0000($t9)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019B390:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x0034($t6)
	lw      $t8, 0x0038($t6)
	nop
	slt     $at, $t7, $t8
	bnez    $at, 17$
	nop
	jal     face_gfx_8019B0D0
	nop
	la.u    $a0, str_face_gfx_801B8EB4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8EB4
17$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x0034($t9)
	lw      $t2, 0x003C($t9)
	lw      $t3, 0x0034($t9)
	sll     $t1, $t0, 4
	addu    $s0, $t1, $t2
	addiu   $t4, $t3, 0x0001
	move    $v0, $s0
	b       31$
	sw      $t4, 0x0034($t9)
	b       31$
	nop
31$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_gfx_8019B41C
face_gfx_8019B41C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f13, 0x0018($sp)
	swc1    $f12, 0x001C($sp)
	lwc1    $f5, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	jal     sinf
	cvt.s.d $f12, $f4
	b       12$
	cvt.d.s $f0, $f0
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019B45C
face_gfx_8019B45C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f13, 0x0018($sp)
	swc1    $f12, 0x001C($sp)
	lwc1    $f5, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	jal     cosf
	cvt.s.d $f12, $f4
	b       12$
	cvt.d.s $f0, $f0
	b       12$
	nop
12$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019B49C
face_gfx_8019B49C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f13, 0x0018($sp)
	swc1    $f12, 0x001C($sp)
	lui     $at, %hi(face_gfx_801B9878+4)
	lwc1    $f7, %lo(face_gfx_801B9878+0)($at)
	lwc1    $f6, %lo(face_gfx_801B9878+4)($at)
	lwc1    $f5, 0x0018($sp)
	lwc1    $f4, 0x001C($sp)
	nop
	c.lt.d  $f4, $f6
	nop
	bc1f    18$
	nop
	mtc1    $0, $f1
	mtc1    $0, $f0
	b       26$
	nop
18$:
	lwc1    $f9, 0x0018($sp)
	lwc1    $f8, 0x001C($sp)
	jal     sqrtf
	cvt.s.d $f12, $f8
	b       26$
	cvt.d.s $f0, $f0
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019B514:
	swc1    $f13, 0x0000($sp)
	swc1    $f12, 0x0004($sp)
	mtc1    $0, $f1
	mtc1    $0, $f0
	b       8$
	nop
	b       8$
	nop
8$:
	jr      $ra
	nop

.globl gd_printf
gd_printf:
	addiu   $sp, $sp, -0x0160
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0160($sp)
	sw      $a1, 0x0164($sp)
	sw      $a2, 0x0168($sp)
	sw      $a3, 0x016C($sp)
	sw      $s1, 0x0020($sp)
	sw      $s0, 0x001C($sp)
	addiu   $t6, $sp, 0x0050
	sw      $t6, 0x004C($sp)
	lw      $t7, 0x004C($sp)
	nop
	sb      $0, 0x0000($t7)
	addiu   $t8, $sp, 0x0160
	addiu   $t9, $t8, 0x0004
	sw      $t9, 0x0034($sp)
	lw      $t0, 0x0160($sp)
	nop
	lb      $t1, 0x0000($t0)
	addiu   $t2, $t0, 0x0001
	move    $s0, $t1
	sw      $t2, 0x0160($sp)
	beqz    $s0, 353$
	sb      $t1, 0x0157($sp)
.L8019B59C:
	lb      $s0, 0x0157($sp)
	li      $at, 0x000A
	beq     $s0, $at, 320$
	nop
	li      $at, 0x0025
	beq     $s0, $at, 36$
	nop
	li      $at, 0x005C
	beq     $s0, $at, 308$
	nop
	b       332$
	nop
36$:
	lw      $t3, 0x0160($sp)
	nop
	lb      $t4, 0x0000($t3)
	addiu   $t5, $t3, 0x0001
	sw      $t5, 0x0160($sp)
	sb      $t4, 0x0156($sp)
	sw      $0, 0x015C($sp)
	lb      $t6, 0x0156($sp)
	nop
	slti    $at, $t6, 0x0030
	bnez    $at, 83$
	nop
	slti    $at, $t6, 0x003A
	beqz    $at, 83$
	nop
	sw      $0, 0x015C($sp)
52$:
	lb      $t7, 0x0156($sp)
	nop
	slti    $at, $t7, 0x0030
	bnez    $at, 60$
	nop
	slti    $at, $t7, 0x003A
	bnez    $at, 64$
	nop
60$:
	lb      $t8, 0x0156($sp)
	li      $at, 0x002E
	bne     $t8, $at, 69$
	nop
64$:
	lw      $t1, 0x015C($sp)
	lb      $t9, 0x0156($sp)
	addu    $t0, $sp, $t1
	b       71$
	sb      $t9, 0x0044($t0)
69$:
	b       83$
	nop
71$:
	lw      $t2, 0x0160($sp)
	nop
	lb      $t4, 0x0000($t2)
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0160($sp)
	sb      $t4, 0x0156($sp)
	lw      $t5, 0x015C($sp)
	nop
	addiu   $t6, $t5, 0x0001
	slti    $at, $t6, 0x0003
	bnez    $at, 52$
	sw      $t6, 0x015C($sp)
83$:
	lw      $t8, 0x015C($sp)
	lb      $t7, 0x0156($sp)
	addu    $t9, $sp, $t8
	sb      $t7, 0x0044($t9)
	lw      $t1, 0x015C($sp)
	nop
	addiu   $t0, $t1, 0x0001
	sw      $t0, 0x015C($sp)
	lw      $t4, 0x015C($sp)
	nop
	addu    $t2, $sp, $t4
	sb      $0, 0x0044($t2)
	addiu   $t3, $sp, 0x0044
	lb      $t5, 0x0000($t3)
	nop
	move    $s0, $t5
	slti    $at, $s0, 0x0026
	bnez    $at, 113$
	sb      $t5, 0x0157($sp)
	addiu   $t6, $s0, -0x0063
	sltiu   $at, $t6, 0x0016
	beqz    $at, L8019B93C
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_gfx_801B9880)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_gfx_801B9880)($at)
	nop
	jr      $t6
	nop
113$:
	li      $at, 0x0025
	beq     $s0, $at, 164$
	nop
	b       L8019B93C
	nop
.globl L8019B714
L8019B714:
	lw      $t7, 0x0034($sp)
	li      $at, -0x0004
	addiu   $t8, $t7, 0x0003
	and     $t9, $t8, $at
	addiu   $t1, $t9, 0x0004
	sw      $t1, 0x0034($sp)
	lw      $t0, 0x0000($t9)
	nop
	sw      $t0, 0x0038($sp)
	addiu   $t4, $sp, 0x0038
	lw      $at, 0x0000($t4)
	lw      $a0, 0x004C($sp)
	sw      $at, 0x0008($sp)
	lw      $t3, 0x0004($t4)
	lw      $a2, 0x0008($sp)
	sw      $t3, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	addiu   $t5, $sp, 0x0044
	jal     face_stdio_8018DB38
	sw      $t5, 0x0010($sp)
	sw      $v0, 0x004C($sp)
	b       306$
	nop
.globl L8019B770
L8019B770:
	lw      $t6, 0x0034($sp)
	li      $at, -0x0004
	addiu   $t7, $t6, 0x0003
	and     $t8, $t7, $at
	addiu   $t1, $t8, 0x0004
	sw      $t1, 0x0034($sp)
	lw      $t9, 0x0000($t8)
	nop
	sw      $t9, 0x0038($sp)
	addiu   $t0, $sp, 0x0038
	lw      $at, 0x0000($t0)
	lw      $a0, 0x004C($sp)
	sw      $at, 0x0008($sp)
	lw      $t4, 0x0004($t0)
	lw      $a2, 0x0008($sp)
	sw      $t4, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	addiu   $t3, $sp, 0x0044
	jal     face_stdio_8018DB38
	sw      $t3, 0x0010($sp)
	sw      $v0, 0x004C($sp)
	b       306$
	nop
164$:
	lw      $t6, 0x004C($sp)
	li      $t5, 0x0025
	sb      $t5, 0x0000($t6)
	lw      $t7, 0x004C($sp)
	nop
	addiu   $t1, $t7, 0x0001
	sw      $t1, 0x004C($sp)
	lw      $t8, 0x004C($sp)
	nop
	sb      $0, 0x0000($t8)
	b       306$
	nop
	b       306$
	nop
.globl L8019B804
L8019B804:
	lw      $t9, 0x0034($sp)
	nop
	andi    $t2, $t9, 0x0001
	beqz    $t2, 187$
	nop
	addiu   $t0, $t9, 0x0007
	sw      $t0, 0x0034($sp)
	b       204$
	addiu   $s0, $t0, -0x0016
187$:
	lw      $t4, 0x0034($sp)
	nop
	andi    $t3, $t4, 0x0002
	beqz    $t3, 196$
	nop
	addiu   $t5, $t4, 0x000A
	sw      $t5, 0x0034($sp)
	b       203$
	addiu   $s1, $t5, -0x0028
196$:
	lw      $t6, 0x0034($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, 0x0007
	and     $t1, $t7, $at
	addiu   $t8, $t1, 0x0008
	sw      $t8, 0x0034($sp)
	move    $s1, $t8
203$:
	move    $s0, $s1
204$:
	lwc1    $f5, -0x0008($s0)
	lwc1    $f4, -0x0004($s0)
	nop
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0038($sp)
	addiu   $t2, $sp, 0x0038
	lw      $at, 0x0000($t2)
	lw      $a0, 0x004C($sp)
	sw      $at, 0x0008($sp)
	lw      $t0, 0x0004($t2)
	lw      $a2, 0x0008($sp)
	sw      $t0, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	addiu   $t3, $sp, 0x0044
	jal     face_stdio_8018DB38
	sw      $t3, 0x0010($sp)
	sw      $v0, 0x004C($sp)
	b       306$
	nop
.globl L8019B8B8
L8019B8B8:
	lw      $t4, 0x0034($sp)
	li      $at, -0x0004
	addiu   $t5, $t4, 0x0003
	and     $t6, $t5, $at
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x0034($sp)
	move    $s0, $t7
	lw      $a1, -0x0004($s0)
	lw      $a0, 0x004C($sp)
	jal     face_stdio_8018DF6C
	nop
	sw      $v0, 0x004C($sp)
	b       306$
	nop
.globl L8019B8F0
L8019B8F0:
	lw      $t1, 0x0034($sp)
	li      $at, -0x0004
	addiu   $t8, $t1, 0x0003
	and     $t9, $t8, $at
	addiu   $t2, $t9, 0x0004
	sw      $t2, 0x0034($sp)
	lw      $t0, 0x0000($t9)
	lw      $t3, 0x004C($sp)
	nop
	sb      $t0, 0x0000($t3)
	lw      $t4, 0x004C($sp)
	nop
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x004C($sp)
	lw      $t6, 0x004C($sp)
	nop
	sb      $0, 0x0000($t6)
	b       306$
	nop
.globl L8019B93C
L8019B93C:
	addiu   $t7, $sp, 0x0044
	lb      $t1, 0x0003($t7)
	li      $at, 0x0066
	bne     $t1, $at, 304$
	nop
	lw      $t8, 0x0034($sp)
	nop
	andi    $t2, $t8, 0x0001
	beqz    $t2, 270$
	nop
	addiu   $t9, $t8, 0x0007
	sw      $t9, 0x0034($sp)
	b       287$
	addiu   $s0, $t9, -0x0016
270$:
	lw      $t0, 0x0034($sp)
	nop
	andi    $t3, $t0, 0x0002
	beqz    $t3, 279$
	nop
	addiu   $t4, $t0, 0x000A
	sw      $t4, 0x0034($sp)
	b       286$
	addiu   $s1, $t4, -0x0028
279$:
	lw      $t5, 0x0034($sp)
	li      $at, -0x0008
	addiu   $t6, $t5, 0x0007
	and     $t7, $t6, $at
	addiu   $t1, $t7, 0x0008
	sw      $t1, 0x0034($sp)
	move    $s1, $t1
286$:
	move    $s0, $s1
287$:
	lwc1    $f9, -0x0008($s0)
	lwc1    $f8, -0x0004($s0)
	nop
	cvt.s.d $f10, $f8
	swc1    $f10, 0x0038($sp)
	addiu   $t2, $sp, 0x0038
	lw      $at, 0x0000($t2)
	lw      $a0, 0x004C($sp)
	sw      $at, 0x0008($sp)
	lw      $t9, 0x0004($t2)
	lw      $a2, 0x0008($sp)
	sw      $t9, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	addiu   $t3, $sp, 0x0044
	jal     face_stdio_8018DB38
	sw      $t3, 0x0010($sp)
	sw      $v0, 0x004C($sp)
304$:
	b       306$
	nop
306$:
	b       345$
	nop
308$:
	lw      $t4, 0x004C($sp)
	li      $t0, 0x005C
	sb      $t0, 0x0000($t4)
	lw      $t5, 0x004C($sp)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x004C($sp)
	lw      $t7, 0x004C($sp)
	nop
	sb      $0, 0x0000($t7)
	b       345$
	nop
320$:
	lw      $t8, 0x004C($sp)
	li      $t1, 0x000A
	sb      $t1, 0x0000($t8)
	lw      $t2, 0x004C($sp)
	nop
	addiu   $t9, $t2, 0x0001
	sw      $t9, 0x004C($sp)
	lw      $t3, 0x004C($sp)
	nop
	sb      $0, 0x0000($t3)
	b       345$
	nop
332$:
	lb      $t0, 0x0157($sp)
	lw      $t4, 0x004C($sp)
	nop
	sb      $t0, 0x0000($t4)
	lw      $t5, 0x004C($sp)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x004C($sp)
	lw      $t7, 0x004C($sp)
	nop
	sb      $0, 0x0000($t7)
	b       345$
	nop
345$:
	lw      $t1, 0x0160($sp)
	nop
	lb      $t8, 0x0000($t1)
	addiu   $t2, $t1, 0x0001
	move    $s0, $t8
	sw      $t2, 0x0160($sp)
	bnez    $s0, .L8019B59C
	sb      $t8, 0x0157($sp)
353$:
	lw      $t9, 0x004C($sp)
	nop
	sb      $0, 0x0000($t9)
	lw      $t3, 0x004C($sp)
	addiu   $t0, $sp, 0x0050
	subu    $t4, $t3, $t0
	slti    $at, $t4, 0x00FF
	bnez    $at, 365$
	nop
	la.u    $a0, str_face_gfx_801B8EC8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8EC8
365$:
	b       367$
	nop
367$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x001C($sp)
	lw      $s1, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0160

.globl gd_exit
gd_exit:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_gfx_801B8ED8
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B8ED8
6$:
	b       6$
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl gd_free
gd_free:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     Free
	nop
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x16F0)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x16F0)($t6)
	move    $s0, $v0
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F0)
	subu    $t7, $t6, $s0
	sw      $t7, %lo(_face_gfx_bss-0x1540+0x16F0)($at)
	b       15$
	nop
15$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl gd_allocblock
gd_allocblock:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, 0x0007
	and     $t8, $t7, $at
	sw      $t8, 0x0020($sp)
	lui     $t9, %hi(face_gfx_801A882C)
	lw      $t9, %lo(face_gfx_801A882C)($t9)
	lw      $t0, 0x0020($sp)
	lui     $t2, %hi(face_gfx_801A8828)
	lw      $t2, %lo(face_gfx_801A8828)($t2)
	addu    $t1, $t9, $t0
	sltu    $at, $t2, $t1
	beqz    $at, 40$
	nop
	lw      $t3, 0x0020($sp)
	la.u    $a0, str_face_gfx_801B8EE0
	la.l    $a0, str_face_gfx_801B8EE0
	srl     $a1, $t3, 10
	jal     gd_printf
	move    $a2, $t3
	lui     $t4, %hi(face_gfx_801A882C)
	lw      $t4, %lo(face_gfx_801A882C)($t4)
	la.u    $a0, str_face_gfx_801B8F14
	la.l    $a0, str_face_gfx_801B8F14
	bgez    $t4, 31$
	sra     $a1, $t4, 10
	addiu   $at, $t4, 0x03FF
	sra     $a1, $at, 10
31$:
	jal     gd_printf
	move    $a2, $t4
	jal     face_stdio_8018C7B4
	nop
	jal     face_mem_801780B0
	nop
	la.u    $a0, str_face_gfx_801B8F44
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B8F44
40$:
	lui     $t5, %hi(_face_gfx_bss-0x1540+0x16EC)
	lui     $t6, %hi(face_gfx_801A882C)
	lw      $t6, %lo(face_gfx_801A882C)($t6)
	lw      $t5, %lo(_face_gfx_bss-0x1540+0x16EC)($t5)
	nop
	addu    $t7, $t5, $t6
	sw      $t7, 0x001C($sp)
	lui     $t8, %hi(face_gfx_801A882C)
	lw      $t8, %lo(face_gfx_801A882C)($t8)
	lw      $t9, 0x0020($sp)
	lui     $at, %hi(face_gfx_801A882C)
	addu    $t0, $t8, $t9
	sw      $t0, %lo(face_gfx_801A882C)($at)
	lw      $v0, 0x001C($sp)
	b       58$
	nop
	b       58$
	nop
58$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019BC88
face_gfx_8019BC88:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, 0x0007
	and     $t8, $t7, $at
	sw      $t8, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	lbu     $a1, 0x0027($sp)
	jal     face_mem_80177C58
	nop
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	nop
	bnez    $t9, 37$
	nop
	lw      $t0, 0x0020($sp)
	la.u    $a0, str_face_gfx_801B8F4C
	la.l    $a0, str_face_gfx_801B8F4C
	srl     $a1, $t0, 10
	jal     gd_printf
	move    $a2, $t0
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x16F0)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x16F0)($t1)
	la.u    $a0, str_face_gfx_801B8F7C
	la.l    $a0, str_face_gfx_801B8F7C
	srl     $a1, $t1, 10
	jal     gd_printf
	move    $a2, $t1
	jal     face_stdio_8018C7B4
	nop
	jal     face_mem_801780B0
	nop
	b       48$
	move    $v0, $0
37$:
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x16F0)
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x16F0)($t2)
	lw      $t3, 0x0020($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F0)
	addu    $t4, $t2, $t3
	sw      $t4, %lo(_face_gfx_bss-0x1540+0x16F0)($at)
	lw      $v0, 0x001C($sp)
	b       48$
	nop
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl gd_malloc
gd_malloc:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_gfx_8019BC88
	li      $a1, 0x00F0
	b       10$
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019BD90
face_gfx_8019BD90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_gfx_8019BC88
	li      $a1, 0x000F
	b       10$
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019BDC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $t6, 0x0018($sp)
	lw      $t7, 0x001C($sp)
	nop
	multu   $t6, $t7
	mflo    $a0
	jal     gd_malloc
	nop
	b       15$
	nop
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019BE14:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     gd_malloc
	nop
	b       10$
	nop
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019BE4C
face_gfx_8019BE4C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	beqz    $t6, 20$
	nop
	lw      $t7, 0x0020($sp)
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x3EC0)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x3EC0)($t9)
	lw      $t1, 0x0024($sp)
	lw      $t0, 0x0030($t9)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $t4, -0x0004($t3)
	b       29$
	sw      $t4, 0x001C($sp)
20$:
	lw      $t5, 0x0020($sp)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x3EC0)
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x3EC0)($t7)
	nop
	lw      $t8, 0x002C($t7)
	nop
	sw      $t8, 0x001C($sp)
29$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	li      $t9, 0x06000000
	sw      $t9, 0x0000($t1)
	lw      $t0, 0x001C($sp)
	li.u    $at, 0x0FFFFFFF
	lw      $t3, 0x0018($sp)
	li.l    $at, 0x0FFFFFFF
	and     $t2, $t0, $at
	sw      $t2, 0x0004($t3)
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019BF08:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x3EC0)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x3EC0)($t8)
	nop
	lw      $t9, 0x002C($t8)
	nop
	sw      $t9, 0x0024($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t1, 0x0018($sp)
	li      $t0, 0x06000000
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0024($sp)
	li.u    $at, 0x0FFFFFFF
	lw      $t4, 0x0018($sp)
	li.l    $at, 0x0FFFFFFF
	and     $t3, $t2, $at
	sw      $t3, 0x0004($t4)
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_8019BF80:
	sll     $t6, $a0, 2
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x3EC0)
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x3EC0)($t7)
	nop
	lw      $v0, 0x002C($t7)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019BFB0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a1, str_face_gfx_801B8FA8
	la.l    $a1, str_face_gfx_801B8FA8
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(face_shape_231)
	sw      $v0, %lo(face_shape_231)($at)
	move    $a0, $0
	jal     face_gfx_8019ED48
	move    $a1, $0
	lui     $t6, %hi(face_shape_231)
	lw      $t6, %lo(face_shape_231)($t6)
	nop
	sw      $v0, 0x0048($t6)
	lui     $t7, %hi(face_shape_231)
	lw      $t7, %lo(face_shape_231)($t7)
	nop
	lw      $t8, 0x0048($t7)
	nop
	sw      $t8, 0x004C($t7)
	lui     $t0, %hi(face_shape_231)
	lw      $t0, %lo(face_shape_231)($t0)
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t1, 0x0048($t0)
	la.u    $t9, gfx_red_star
	sll     $t2, $t1, 2
	addu    $t3, $t3, $t2
	lw      $t3, %lo(_face_gfx_bss-0x1540+0x3EC0)($t3)
	la.l    $t9, gfx_red_star
	sw      $t9, 0x0030($t3)
	lui     $t5, %hi(face_shape_231)
	lw      $t5, %lo(face_shape_231)($t5)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t6, 0x004C($t5)
	la.u    $t4, gfx_red_star
	sll     $t8, $t6, 2
	addu    $t7, $t7, $t8
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x3EC0)($t7)
	la.l    $t4, gfx_red_star
	sw      $t4, 0x0030($t7)
	la.u    $a1, str_face_gfx_801B8FB0
	la.l    $a1, str_face_gfx_801B8FB0
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(face_shape_228)
	sw      $v0, %lo(face_shape_228)($at)
	move    $a0, $0
	jal     face_gfx_8019ED48
	move    $a1, $0
	lui     $t0, %hi(face_shape_228)
	lw      $t0, %lo(face_shape_228)($t0)
	nop
	sw      $v0, 0x0048($t0)
	lui     $t1, %hi(face_shape_228)
	lw      $t1, %lo(face_shape_228)($t1)
	nop
	lw      $t2, 0x0048($t1)
	nop
	sw      $t2, 0x004C($t1)
	lui     $t3, %hi(face_shape_228)
	lw      $t3, %lo(face_shape_228)($t3)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t5, 0x0048($t3)
	la.u    $t9, gfx_silver_star
	sll     $t6, $t5, 2
	addu    $t8, $t8, $t6
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x3EC0)($t8)
	la.l    $t9, gfx_silver_star
	sw      $t9, 0x0030($t8)
	lui     $t7, %hi(face_shape_228)
	lw      $t7, %lo(face_shape_228)($t7)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t0, 0x004C($t7)
	la.u    $t4, gfx_silver_star
	sll     $t2, $t0, 2
	addu    $t1, $t1, $t2
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x3EC0)($t1)
	la.l    $t4, gfx_silver_star
	sw      $t4, 0x0030($t1)
	la.u    $a1, str_face_gfx_801B8FBC
	la.l    $a1, str_face_gfx_801B8FBC
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(face_shape_801A847C)
	sw      $v0, %lo(face_shape_801A847C)($at)
	move    $a0, $0
	jal     face_gfx_8019ED48
	move    $a1, $0
	lui     $t3, %hi(face_shape_801A847C)
	lw      $t3, %lo(face_shape_801A847C)($t3)
	nop
	sw      $v0, 0x0048($t3)
	lui     $t5, %hi(face_shape_801A847C)
	lw      $t5, %lo(face_shape_801A847C)($t5)
	nop
	lw      $t6, 0x0048($t5)
	nop
	sw      $t6, 0x004C($t5)
	lui     $t8, %hi(face_shape_801A847C)
	lw      $t8, %lo(face_shape_801A847C)($t8)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t7, 0x0048($t8)
	la.u    $t9, gfx_red_spark
	sll     $t0, $t7, 2
	addu    $t2, $t2, $t0
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x3EC0)($t2)
	la.l    $t9, gfx_red_spark
	sw      $t9, 0x0030($t2)
	lui     $t1, %hi(face_shape_801A847C)
	lw      $t1, %lo(face_shape_801A847C)($t1)
	lui     $t5, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t3, 0x004C($t1)
	la.u    $t4, gfx_red_spark
	sll     $t6, $t3, 2
	addu    $t5, $t5, $t6
	lw      $t5, %lo(_face_gfx_bss-0x1540+0x3EC0)($t5)
	la.l    $t4, gfx_red_spark
	sw      $t4, 0x0030($t5)
	la.u    $a1, str_face_gfx_801B8FC4
	la.l    $a1, str_face_gfx_801B8FC4
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(face_shape_801A8480)
	sw      $v0, %lo(face_shape_801A8480)($at)
	move    $a0, $0
	jal     face_gfx_8019ED48
	move    $a1, $0
	lui     $t8, %hi(face_shape_801A8480)
	lw      $t8, %lo(face_shape_801A8480)($t8)
	nop
	sw      $v0, 0x0048($t8)
	lui     $t7, %hi(face_shape_801A8480)
	lw      $t7, %lo(face_shape_801A8480)($t7)
	nop
	lw      $t0, 0x0048($t7)
	nop
	sw      $t0, 0x004C($t7)
	lui     $t2, %hi(face_shape_801A8480)
	lw      $t2, %lo(face_shape_801A8480)($t2)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t1, 0x0048($t2)
	la.u    $t9, gfx_silver_spark
	sll     $t3, $t1, 2
	addu    $t6, $t6, $t3
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x3EC0)($t6)
	la.l    $t9, gfx_silver_spark
	sw      $t9, 0x0030($t6)
	lui     $t5, %hi(face_shape_801A8480)
	lw      $t5, %lo(face_shape_801A8480)($t5)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t8, 0x004C($t5)
	la.u    $t4, gfx_silver_spark
	sll     $t0, $t8, 2
	addu    $t7, $t7, $t0
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x3EC0)($t7)
	la.l    $t4, gfx_silver_spark
	sw      $t4, 0x0030($t7)
	b       160$
	nop
160$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019C240:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B8FCC
	jal     start_timer
	la.l    $a0, str_face_gfx_801B8FCC
	la.u    $a0, str_face_gfx_801B8FDC
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B8FDC
	la.u    $a0, str_face_gfx_801B8FEC
	jal     start_timer
	la.l    $a0, str_face_gfx_801B8FEC
	la.u    $a0, str_face_gfx_801B8FF8
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B8FF8
	la.u    $a0, str_face_gfx_801B9004
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9004
	la.u    $a0, str_face_gfx_801B900C
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B900C
	la.u    $a0, str_face_gfx_801B9014
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9014
	la.u    $a0, str_face_gfx_801B9020
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B9020
	la.u    $a0, str_face_gfx_801B902C
	jal     start_timer
	la.l    $a0, str_face_gfx_801B902C
	la.u    $a0, str_face_gfx_801B9038
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9038
	la.u    $a0, str_face_gfx_801B9040
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9040
	la.u    $a0, str_face_gfx_801B904C
	jal     start_timer
	la.l    $a0, str_face_gfx_801B904C
	la.u    $a0, str_face_gfx_801B9058
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9058
	la.u    $a0, str_face_gfx_801B9068
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9068
	la.u    $a0, str_face_gfx_801B9074
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B9074
	la.u    $a0, str_face_gfx_801B9084
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B9084
	la.u    $a0, str_face_gfx_801B9090
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B9090
	la.u    $a0, str_face_gfx_801B909C
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B909C
	la.u    $a0, str_face_gfx_801B90A4
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B90A4
	la.u    $a0, str_face_gfx_801B90B0
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B90B0
	la.u    $a0, str_face_gfx_801B90BC
	jal     start_timer
	la.l    $a0, str_face_gfx_801B90BC
	la.u    $a0, str_face_gfx_801B90C8
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B90C8
	la.u    $a0, str_face_gfx_801B90D4
	jal     start_timer
	la.l    $a0, str_face_gfx_801B90D4
	la.u    $a0, str_face_gfx_801B90E0
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B90E0
	la.u    $a0, str_face_gfx_801B90EC
	jal     start_timer
	la.l    $a0, str_face_gfx_801B90EC
	la.u    $a0, str_face_gfx_801B90F4
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B90F4
	la.u    $a0, str_face_gfx_801B90FC
	jal     start_timer
	la.l    $a0, str_face_gfx_801B90FC
	la.u    $a0, str_face_gfx_801B9108
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B9108
	b       88$
	nop
88$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019C3B0:
	lui     $at, %hi(_face_stdio_bss-0x870+0x870)
	sw      $a0, %lo(_face_stdio_bss-0x870+0x870)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019C3C8:
	addiu   $sp, $sp, -0x0008
	la.u    $t6, face_control+0x00
	la.l    $t6, face_control+0x00
	sw      $t6, 0x0004($sp)
	mtc1    $a0, $f4
	lw      $t7, 0x0004($sp)
	cvt.s.w $f6, $f4
	swc1    $f6, 0x007C($t7)
	bgez    $a1, 12$
	sra     $t8, $a1, 1
	addiu   $at, $a1, 0x0001
	sra     $t8, $at, 1
12$:
	mtc1    $t8, $f8
	lw      $t9, 0x0004($sp)
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0080($t9)
	b       18$
	nop
18$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl face_gfx_8019C418
face_gfx_8019C418:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	jal     face_mem_80177E7C
	li      $a2, 0x0001
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl gdm_init
gdm_init:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	la.u    $a0, str_face_gfx_801B9114
	jal     imin
	la.l    $a0, str_face_gfx_801B9114
	lw      $t6, 0x0024($sp)
	li      $at, -0x0008
	addiu   $t7, $t6, -0x0008
	and     $t8, $t7, $at
	sw      $t8, 0x0024($sp)
	lw      $t9, 0x0020($sp)
	li      $at, -0x0008
	addiu   $t0, $t9, 0x0008
	and     $t1, $t0, $at
	sw      $t1, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16EC)
	sw      $t2, %lo(_face_gfx_bss-0x1540+0x16EC)($at)
	lw      $t3, 0x0024($sp)
	lui     $at, %hi(face_gfx_801A8828)
	sw      $t3, %lo(face_gfx_801A8828)($at)
	lui     $at, %hi(face_gfx_801A882C)
	sw      $0, %lo(face_gfx_801A882C)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F0)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x16F0)($at)
	jal     face_mem_80177F0C
	nop
	jal     face_sound_801781E0
	nop
	jal     imout
	nop
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl gdm_setup
gdm_setup:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B9120
	jal     imin
	la.l    $a0, str_face_gfx_801B9120
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1788)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x1788)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1790)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x1790)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B4)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x17B4)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B8)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x17B8)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1784)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x1784)($at)
	jal     osViSetSpecialFeatures
	li      $a0, 0x0002
	la.u    $a0, _face_gfx_bss-0x1540+0x4FA8
	la.u    $a1, _face_gfx_bss-0x1540+0x5024
	la.l    $a1, _face_gfx_bss-0x1540+0x5024
	la.l    $a0, _face_gfx_bss-0x1540+0x4FA8
	jal     osCreateMesgQueue
	li      $a2, 0x0001
	jal     gd_init
	nop
	jal     load_shapes2
	nop
	jal     face_gfx_8019E89C
	nop
	jal     face_gfx_8019BFB0
	nop
	jal     imout
	nop
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019C588:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_8019C59C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B912C
	jal     face_stdio_8018C598
	la.l    $a0, str_face_gfx_801B912C
	la.u    $a0, str_face_gfx_801B9134
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B9134
	jal     face_stdio_8018C7B4
	nop
	jal     face_mem_801780B0
	nop
	la.u    $a0, str_face_gfx_801B9144
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_gfx_801B9144
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_8019C5F0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	lw      $a0, 0x0030($sp)
	li.u    $a1, 0x000C0010
	li      $t6, 0x0140
	li      $t7, 0x00F0
	sw      $t7, 0x0018($sp)
	sw      $t6, 0x0014($sp)
	li.l    $a1, 0x000C0010
	li      $a2, 0x0001
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_object_8017D3E8
	sw      $t8, 0x001C($sp)
	sw      $v0, 0x002C($sp)
	lw      $a1, 0x0034($sp)
	lw      $a2, 0x002C($sp)
	jal     make_group
	li      $a0, 0x0002
	sw      $v0, 0x0028($sp)
	lui     $t9, %hi(_face_draw_bss-0x210+0x298)
	lw      $t9, %lo(_face_draw_bss-0x210+0x298)($t9)
	lw      $t0, 0x002C($sp)
	nop
	sw      $t9, 0x002C($t0)
	lw      $v0, 0x002C($sp)
	b       33$
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl gdm_maketestdl
gdm_maketestdl:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	la.u    $a0, str_face_gfx_801B914C
	jal     imin
	la.l    $a0, str_face_gfx_801B914C
	lw      $t6, 0x0028($sp)
	nop
	sltiu   $at, $t6, 0x0006
	beqz    $at, 94$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_gfx_801B98D8)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_gfx_801B98D8)($at)
	nop
	jr      $t6
	nop
.globl L8019C6CC
L8019C6CC:
	lui     $a1, %hi(_face_gfx_bss-0x1540+0x1788)
	lw      $a1, %lo(_face_gfx_bss-0x1540+0x1788)($a1)
	la.u    $a0, str_face_gfx_801B915C
	jal     face_gfx_8019C5F0
	la.l    $a0, str_face_gfx_801B915C
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17A0)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x17A0)($at)
	b       97$
	nop
.globl L8019C6F0
L8019C6F0:
	lui     $a0, %hi(_face_gfx_bss-0x1540+0x1788)
	lw      $a0, %lo(_face_gfx_bss-0x1540+0x1788)($a0)
	jal     face_object_80181634
	nop
	b       97$
	nop
.globl L8019C708
L8019C708:
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x1790)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x1790)($t7)
	nop
	bnez    $t7, 47$
	nop
	la.u    $a0, face_shape_8019A1A8
	jal     face_shape_8019A4B8
	la.l    $a0, face_shape_8019A1A8
	lui     $t8, %hi(face_shape_801A8470)
	lw      $t8, %lo(face_shape_801A8470)($t8)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1790)
	sw      $t8, %lo(_face_gfx_bss-0x1540+0x1790)($at)
	jal     face_gfx_801A676C
	move    $a0, $0
47$:
	lui     $a1, %hi(_face_gfx_bss-0x1540+0x1790)
	lw      $a1, %lo(_face_gfx_bss-0x1540+0x1790)($a1)
	la.u    $a0, str_face_gfx_801B9168
	jal     face_gfx_8019C5F0
	la.l    $a0, str_face_gfx_801B9168
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17A8)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x17A8)($at)
	b       97$
	nop
.globl L8019C764
L8019C764:
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x1790)
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x1790)($t9)
	nop
	bnez    $t9, 70$
	nop
	la.u    $a0, face_shape_8019A0E0
	jal     face_shape_8019A4B8
	la.l    $a0, face_shape_8019A0E0
	lui     $t0, %hi(face_shape_801A8470)
	lw      $t0, %lo(face_shape_801A8470)($t0)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1790)
	sw      $t0, %lo(_face_gfx_bss-0x1540+0x1790)($at)
	jal     face_gfx_801A676C
	move    $a0, $0
70$:
	lui     $a1, %hi(_face_gfx_bss-0x1540+0x1790)
	lw      $a1, %lo(_face_gfx_bss-0x1540+0x1790)($a1)
	la.u    $a0, str_face_gfx_801B9170
	jal     face_gfx_8019C5F0
	la.l    $a0, str_face_gfx_801B9170
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17A8)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x17A8)($at)
	b       97$
	nop
.globl L8019C7C0
L8019C7C0:
	lui     $a1, %hi(_face_gfx_bss-0x1540+0x1798)
	lw      $a1, %lo(_face_gfx_bss-0x1540+0x1798)($a1)
	la.u    $a0, str_face_gfx_801B9178
	jal     face_gfx_8019C5F0
	la.l    $a0, str_face_gfx_801B9178
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B0)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x17B0)($at)
	b       97$
	nop
.globl L8019C7E4
L8019C7E4:
	lui     $a0, %hi(_face_gfx_bss-0x1540+0x1798)
	lw      $a0, %lo(_face_gfx_bss-0x1540+0x1798)($a0)
	jal     face_object_80181634
	nop
	b       97$
	nop
94$:
	la.u    $a0, str_face_gfx_801B9184
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9184
97$:
	jal     imout
	nop
	b       101$
	nop
101$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_8019C828:
	lui     $at, %hi(face_gfx_801A8824)
	swc1    $f12, %lo(face_gfx_801A8824)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019C840:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B91A4
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B91A4
	jal     face_stdio_8018C86C
	nop
	b       9$
	nop
9$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019C874
face_gfx_8019C874:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     face_sound_8017822C
	nop
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x17B4)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x17B4)($t6)
	nop
	beqz    $t6, 15$
	nop
	lui     $a2, %hi(_face_gfx_bss-0x1540+0x1788)
	lw      $a2, %lo(_face_gfx_bss-0x1540+0x1788)($a2)
	la.u    $a1, face_net_8019353C
	la.l    $a1, face_net_8019353C
	jal     face_object_8017E520
	li      $a0, 0x0020
15$:
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x17B8)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x17B8)($t7)
	nop
	beqz    $t7, 26$
	nop
	lui     $a2, %hi(_face_gfx_bss-0x1540+0x1790)
	lw      $a2, %lo(_face_gfx_bss-0x1540+0x1790)($a2)
	la.u    $a1, face_net_8019353C
	la.l    $a1, face_net_8019353C
	jal     face_object_8017E520
	li      $a0, 0x0020
26$:
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B4)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x17B4)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B8)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x17B8)($at)
	lui     $t8, %hi(face_gfx_801A8840)
	lw      $t8, %lo(face_gfx_801A8840)($t8)
	lui     $at, %hi(face_gfx_801A8840)
	xori    $t9, $t8, 0x0001
	sw      $t9, %lo(face_gfx_801A8840)($at)
	jal     face_gfx_8019E89C
	nop
	jal     face_gfx_801A2984
	nop
	jal     face_gfx_801A4D4C
	nop
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019C930
face_gfx_8019C930:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t6, 0x0020($sp)
	la.u    $t7, _face_gfx_bss-0x1540+0x1550
	la.l    $t7, _face_gfx_bss-0x1540+0x1550
	sw      $t7, 0x001C($sp)
	sw      $0, 0x0024($sp)
10$:
	lw      $t8, 0x0020($sp)
	lw      $t9, 0x0024($sp)
	lw      $t2, 0x001C($sp)
	addu    $t0, $t8, $t9
	lbu     $t1, 0x0000($t0)
	addu    $t3, $t2, $t9
	sb      $t1, 0x0000($t3)
	lw      $t4, 0x0024($sp)
	nop
	addiu   $t5, $t4, 0x0001
	sltiu   $at, $t5, 0x0006
	bnez    $at, 10$
	sw      $t5, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	lhu     $t7, 0x0000($t6)
	nop
	andi    $t8, $t7, 0x2000
	beqz    $t8, 32$
	nop
	jal     face_stdio_8018C86C
	nop
32$:
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_gfx_8019C9C8
face_gfx_8019C9C8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     face_sound_80178200
	nop
	b       8$
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl gdm_gettestdl
gdm_gettestdl:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0038($sp)
	la.u    $a0, str_face_gfx_801B91A8
	jal     start_timer
	la.l    $a0, str_face_gfx_801B91A8
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	swc1    $f4, 0x0020($sp)
	swc1    $f4, 0x001C($sp)
	sw      $0, 0x0030($sp)
	lw      $t6, 0x0038($sp)
	nop
	sltiu   $at, $t6, 0x0006
	beqz    $at, 201$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_gfx_801B98F0)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_gfx_801B98F0)($at)
	nop
	jr      $t6
	nop
.globl L8019CA58
L8019CA58:
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x17A0)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x17A0)($t7)
	nop
	bnez    $t7, 33$
	nop
	la.u    $a0, str_face_gfx_801B91B0
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B91B0
33$:
	lui     $a2, %hi(_face_gfx_bss-0x1540+0x17A0)
	lw      $a2, %lo(_face_gfx_bss-0x1540+0x17A0)($a2)
	la.u    $a1, UpdateView
	la.l    $a1, UpdateView
	jal     face_object_8017E520
	li      $a0, 0x4000
	la.u    $a0, str_face_gfx_801B91D8
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B91D8
	sw      $v0, 0x0034($sp)
	lw      $t8, 0x0034($sp)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t9, 0x0070($t8)
	nop
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x3EC0)($t1)
	nop
	sw      $t1, 0x0030($sp)
	li      $t2, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B4)
	sw      $t2, %lo(_face_gfx_bss-0x1540+0x17B4)($at)
	b       205$
	nop
.globl L8019CADC
L8019CADC:
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x1788)
	lw      $t3, %lo(_face_gfx_bss-0x1540+0x1788)($t3)
	nop
	bnez    $t3, 66$
	nop
	la.u    $a0, str_face_gfx_801B91E4
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B91E4
66$:
	la.u    $a0, str_face_gfx_801B920C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B920C
	sw      $v0, 0x0034($sp)
	lui     $t5, %hi(face_gfx_801A8840)
	lw      $t5, %lo(face_gfx_801A8840)($t5)
	lw      $t4, 0x0034($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x0048($t7)
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x3EC0)
	sll     $t9, $t8, 2
	addu    $t0, $t0, $t9
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x3EC0)($t0)
	nop
	sw      $t0, 0x0030($sp)
	li      $t1, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B4)
	sw      $t1, %lo(_face_gfx_bss-0x1540+0x17B4)($at)
	b       205$
	nop
.globl L8019CB54
L8019CB54:
	jal     face_gfx_8019C240
	nop
	lui     $a0, %hi(_face_gfx_bss-0x1540+0x17A8)
	lw      $a0, %lo(_face_gfx_bss-0x1540+0x17A8)($a0)
	jal     face_gfx_801A52A8
	nop
	lui     $t2, %hi(face_gfx_801A8874)
	lw      $t2, %lo(face_gfx_801A8874)($t2)
	nop
	beqz    $t2, 102$
	nop
	lui     $a0, %hi(face_gfx_801A8874)
	lw      $a0, %lo(face_gfx_801A8874)($a0)
	jal     face_gfx_801A52A8
	nop
102$:
	lui     $t3, %hi(face_gfx_801A8840)
	lw      $t3, %lo(face_gfx_801A8840)($t3)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x3EA0)
	sll     $t5, $t3, 2
	addu    $t4, $t4, $t5
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x3EA0)($t4)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t4, %lo(face_gfx_801A888C)($at)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li      $t6, 0xB8000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	nop
	sw      $0, 0x0004($t8)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	sw      $t9, 0x0030($sp)
	li      $t0, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17B8)
	sw      $t0, %lo(_face_gfx_bss-0x1540+0x17B8)($at)
	b       205$
	nop
.globl L8019CBF8
L8019CBF8:
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x17B0)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x17B0)($t1)
	nop
	bnez    $t1, 137$
	nop
	la.u    $a0, str_face_gfx_801B9218
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9218
137$:
	lui     $a2, %hi(_face_gfx_bss-0x1540+0x17B0)
	lw      $a2, %lo(_face_gfx_bss-0x1540+0x17B0)($a2)
	la.u    $a1, UpdateView
	la.l    $a1, UpdateView
	jal     face_object_8017E520
	li      $a0, 0x4000
	la.u    $a0, str_face_gfx_801B9240
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B9240
	sw      $v0, 0x0034($sp)
	lw      $t2, 0x0034($sp)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t3, 0x0070($t2)
	nop
	sll     $t5, $t3, 2
	addu    $t4, $t4, $t5
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x3EC0)($t4)
	nop
	sw      $t4, 0x0030($sp)
	li      $t6, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17C0)
	sw      $t6, %lo(_face_gfx_bss-0x1540+0x17C0)($at)
	b       205$
	nop
.globl L8019CC7C
L8019CC7C:
	lui     $t7, %hi(face_gfx_801A886C)
	lw      $t7, %lo(face_gfx_801A886C)($t7)
	lui     $at, %hi(face_gfx_801A8868)
	sw      $t7, %lo(face_gfx_801A8868)($at)
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	la.u    $a0, str_face_gfx_801B924C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B924C
	sw      $v0, 0x0034($sp)
	jal     gd_startdisplist
	li      $a0, 0x0008
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1784)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x1784)($at)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x1784)
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x1784)($t8)
	nop
	bnez    $t8, 183$
	nop
	la.u    $a0, str_face_gfx_801B9258
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9258
183$:
	lw      $a0, 0x0034($sp)
	jal     face_draw_8017A9E0
	nop
	jal     face_gfx_8019EBAC
	nop
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x1784)
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x1784)($t9)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x3EC0)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x3EC0)($t1)
	nop
	sw      $t1, 0x0030($sp)
	li      $t2, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17C0)
	sw      $t2, %lo(_face_gfx_bss-0x1540+0x17C0)($at)
	b       205$
	nop
201$:
	la.u    $a0, str_face_gfx_801B9270
	lw      $a1, 0x0038($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9270
205$:
	lw      $t3, 0x0030($sp)
	nop
	bnez    $t3, 212$
	nop
	la.u    $a0, str_face_gfx_801B9294
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9294
212$:
	la.u    $a0, str_face_gfx_801B92A4
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B92A4
	lw      $t5, 0x0030($sp)
	nop
	lw      $a0, 0x002C($t5)
	jal     osVirtualToPhysical
	nop
	b       224$
	nop
	b       224$
	nop
224$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

gdm_getpos:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0005
	bne     $t6, $at, 33$
	nop
	b       10$
	nop
10$:
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	la.u    $a0, str_face_gfx_801B92AC
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B92AC
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0024($sp)
	lwc1    $f4, 0x0014($t7)
	nop
	swc1    $f4, 0x0000($t8)
	lw      $t9, 0x001C($sp)
	lw      $t0, 0x0024($sp)
	lwc1    $f6, 0x0018($t9)
	nop
	swc1    $f6, 0x0004($t0)
	lw      $t1, 0x001C($sp)
	lw      $t2, 0x0024($sp)
	lwc1    $f8, 0x001C($t1)
	nop
	swc1    $f8, 0x0008($t2)
	b       37$
	nop
33$:
	la.u    $a0, str_face_gfx_801B92B8
	lw      $a1, 0x0020($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B92B8
37$:
	b       41$
	nop
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019CE3C:
	addiu   $sp, $sp, -0x0008
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	nop
	sw      $t6, 0x0004($sp)
	lwc1    $f4, 0x0000($a0)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    15$
	nop
	mtc1    $0, $f8
	b       28$
	swc1    $f8, 0x0000($a0)
15$:
	lw      $t7, 0x0004($sp)
	lwc1    $f10, 0x0000($a0)
	lwc1    $f16, 0x0054($t7)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    28$
	nop
	lw      $t8, 0x0004($sp)
	nop
	lwc1    $f18, 0x0054($t8)
	nop
	swc1    $f18, 0x0000($a0)
28$:
	lwc1    $f4, 0x0000($a1)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    38$
	nop
	mtc1    $0, $f8
	b       51$
	swc1    $f8, 0x0000($a1)
38$:
	lw      $t9, 0x0004($sp)
	lwc1    $f10, 0x0000($a1)
	lwc1    $f16, 0x0058($t9)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    51$
	nop
	lw      $t0, 0x0004($sp)
	nop
	lwc1    $f18, 0x0058($t0)
	nop
	swc1    $f18, 0x0000($a1)
51$:
	b       53$
	nop
53$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_gfx_8019CF18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B92D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B92D8
	b       7$
	nop
7$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

alloc_displaylist:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	jal     gd_malloc
	li      $a0, 0x0050
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 12$
	nop
	jal     face_gfx_8019CF18
	nop
12$:
	lui     $t7, %hi(face_gfx_801A8890)
	lw      $t7, %lo(face_gfx_801A8890)($t7)
	lw      $t8, 0x001C($sp)
	lui     $t9, %hi(face_gfx_801A8890)
	sw      $t7, 0x0044($t8)
	lw      $t9, %lo(face_gfx_801A8890)($t9)
	lui     $at, %hi(face_gfx_801A8890)
	addiu   $t0, $t9, 0x0001
	sw      $t0, %lo(face_gfx_801A8890)($at)
	lui     $t1, %hi(face_gfx_801A8890)
	lw      $t1, %lo(face_gfx_801A8890)($t1)
	nop
	sltiu   $at, $t1, 0x03E8
	bnez    $at, 34$
	nop
	lui     $a1, %hi(face_gfx_801A8890)
	lw      $a1, %lo(face_gfx_801A8890)($a1)
	la.u    $a0, str_face_gfx_801B92E8
	la.l    $a0, str_face_gfx_801B92E8
	li      $a2, 0x03E8
	jal     face_stdio_8018D298
	addiu   $a1, $a1, 0x0001
34$:
	lw      $t2, 0x001C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t3, 0x0044($t2)
	nop
	sll     $t4, $t3, 2
	addu    $at, $at, $t4
	sw      $t2, %lo(_face_gfx_bss-0x1540+0x3EC0)($at)
	lw      $t5, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	nop
	sw      $t5, 0x0040($t6)
	lw      $v0, 0x001C($sp)
	b       50$
	nop
	b       50$
	nop
50$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019D01C:
	lw      $t7, 0x0000($a1)
	lw      $t6, 0x0008($a1)
	sll     $t8, $t7, 4
	addu    $t9, $t6, $t8
	sw      $t9, 0x0008($a0)
	lw      $t1, 0x000C($a1)
	lw      $t0, 0x0014($a1)
	sll     $t2, $t1, 6
	addu    $t3, $t0, $t2
	sw      $t3, 0x0014($a0)
	lw      $t5, 0x0018($a1)
	lw      $t4, 0x0020($a1)
	sll     $t7, $t5, 3
	addu    $t7, $t7, $t5
	sll     $t7, $t7, 3
	addu    $t6, $t4, $t7
	sw      $t6, 0x0020($a0)
	lw      $t9, 0x0024($a1)
	lw      $t8, 0x002C($a1)
	sll     $t1, $t9, 3
	addu    $t0, $t8, $t1
	sw      $t0, 0x002C($a0)
	lw      $t3, 0x0034($a1)
	lw      $t2, 0x003C($a1)
	sll     $t5, $t3, 4
	addu    $t4, $t2, $t5
	sw      $t4, 0x003C($a0)
	lw      $t7, 0x0004($a1)
	lw      $t6, 0x0000($a1)
	nop
	subu    $t9, $t7, $t6
	sw      $t9, 0x0004($a0)
	lw      $t8, 0x0010($a1)
	lw      $t1, 0x000C($a1)
	nop
	subu    $t0, $t8, $t1
	sw      $t0, 0x0010($a0)
	lw      $t3, 0x001C($a1)
	lw      $t2, 0x0018($a1)
	nop
	subu    $t5, $t3, $t2
	sw      $t5, 0x001C($a0)
	lw      $t4, 0x0028($a1)
	lw      $t7, 0x0024($a1)
	nop
	subu    $t6, $t4, $t7
	sw      $t6, 0x0028($a0)
	lw      $t9, 0x0038($a1)
	lw      $t8, 0x0034($a1)
	nop
	subu    $t1, $t9, $t8
	sw      $t1, 0x0038($a0)
	sw      $0, 0x0000($a0)
	sw      $0, 0x000C($a0)
	sw      $0, 0x0018($a0)
	sw      $0, 0x0024($a0)
	sw      $0, 0x0034($a0)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019D110:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	lw      $a0, 0x0020($sp)
	jal     alloc_displaylist
	nop
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x004C($t7)
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     face_gfx_8019D01C
	nop
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019D168:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     alloc_displaylist
	nop
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $0, 0x004C($t6)
	lw      $t7, 0x0030($sp)
	nop
	bnez    $t7, 20$
	nop
	li      $t8, 0x0001
	sw      $t8, 0x0030($sp)
20$:
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0000($t9)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0024($sp)
	nop
	sw      $t0, 0x0004($t1)
	lw      $a0, 0x0030($sp)
	nop
	sll     $t2, $a0, 4
	jal     gd_malloc
	move    $a0, $t2
	lw      $t3, 0x0024($sp)
	move    $s0, $v0
	bnez    $s0, 38$
	sw      $s0, 0x0008($t3)
	jal     face_gfx_8019CF18
	nop
38$:
	lw      $t4, 0x0034($sp)
	nop
	bnez    $t4, 44$
	nop
	li      $t5, 0x0001
	sw      $t5, 0x0034($sp)
44$:
	lw      $t6, 0x0024($sp)
	nop
	sw      $0, 0x000C($t6)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x0010($t8)
	lw      $a0, 0x0034($sp)
	nop
	sll     $t9, $a0, 6
	jal     gd_malloc
	move    $a0, $t9
	lw      $t0, 0x0024($sp)
	move    $s0, $v0
	bnez    $s0, 62$
	sw      $s0, 0x0014($t0)
	jal     face_gfx_8019CF18
	nop
62$:
	lw      $t1, 0x0038($sp)
	nop
	bnez    $t1, 68$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0038($sp)
68$:
	lw      $t3, 0x0024($sp)
	nop
	sw      $0, 0x0018($t3)
	lw      $t4, 0x0038($sp)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t4, 0x001C($t5)
	lw      $a0, 0x0038($sp)
	nop
	sll     $t6, $a0, 3
	addu    $t6, $t6, $a0
	sll     $t6, $t6, 3
	jal     gd_malloc
	move    $a0, $t6
	lw      $t7, 0x0024($sp)
	move    $s0, $v0
	bnez    $s0, 88$
	sw      $s0, 0x0020($t7)
	jal     face_gfx_8019CF18
	nop
88$:
	lw      $t8, 0x002C($sp)
	nop
	bnez    $t8, 94$
	nop
	li      $t9, 0x0001
	sw      $t9, 0x002C($sp)
94$:
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x0024($t0)
	lw      $t1, 0x002C($sp)
	lw      $t2, 0x0024($sp)
	nop
	sw      $t1, 0x0028($t2)
	lw      $a0, 0x002C($sp)
	nop
	sll     $t3, $a0, 3
	jal     gd_malloc
	move    $a0, $t3
	lw      $t4, 0x0024($sp)
	move    $s0, $v0
	bnez    $s0, 112$
	sw      $s0, 0x002C($t4)
	jal     face_gfx_8019CF18
	nop
112$:
	lw      $t5, 0x003C($sp)
	nop
	bnez    $t5, 118$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x003C($sp)
118$:
	lw      $t7, 0x0024($sp)
	nop
	sw      $0, 0x0034($t7)
	lw      $t8, 0x003C($sp)
	lw      $t9, 0x0024($sp)
	nop
	sw      $t8, 0x0038($t9)
	lw      $a0, 0x003C($sp)
	nop
	sll     $t0, $a0, 4
	jal     gd_malloc
	move    $a0, $t0
	lw      $t1, 0x0024($sp)
	move    $s0, $v0
	bnez    $s0, 136$
	sw      $s0, 0x003C($t1)
	jal     face_gfx_8019CF18
	nop
136$:
	lw      $t2, 0x0024($sp)
	nop
	sw      $0, 0x0030($t2)
	lw      $v0, 0x0024($sp)
	b       144$
	nop
	b       144$
	nop
144$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019D3B8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	la.u    $a0, gfx_face_801B5300
	jal     osVirtualToPhysical
	la.l    $a0, gfx_face_801B5300
	lw      $t8, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0xE7000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	nop
	sw      $0, 0x0004($t1)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019D42C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	la.u    $a0, gfx_face_801B5318
	jal     osVirtualToPhysical
	la.l    $a0, gfx_face_801B5318
	lw      $t8, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0xE7000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	nop
	sw      $0, 0x0004($t1)
	b       25$
	nop
25$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019D4A0
face_gfx_8019D4A0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	addiu   $a0, $sp, 0x0028
	jal     face_gfx_8019CE3C
	addiu   $a1, $sp, 0x002C
	addiu   $a0, $sp, 0x0030
	jal     face_gfx_8019CE3C
	addiu   $a1, $sp, 0x0034
	lwc1    $f4, 0x0030($sp)
	lwc1    $f6, 0x0028($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    198$
	nop
	lwc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x002C($sp)
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    198$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x003C($t6)
	li      $t8, 0x0001
	add.s   $f4, $f16, $f18
	cfc1    $t7, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	beqz    $t8, 64$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t8, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t8, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	bnez    $t8, 62$
	nop
	mfc1    $t8, $f6
	li      $at, 0x80000000
	b       68$
	or      $t8, $t8, $at
62$:
	b       68$
	li      $t8, -0x0001
64$:
	mfc1    $t8, $f6
	nop
	bltz    $t8, 62$
	nop
68$:
	ctc1    $t7, $31
	lwc1    $f8, 0x0034($sp)
	lwc1    $f10, 0x0040($t6)
	li      $t3, 0x0001
	add.s   $f16, $f8, $f10
	andi    $t9, $t8, 0x03FF
	cfc1    $t2, $31
	ctc1    $t3, $31
	sll     $t0, $t9, 14
	cvt.w.s $f18, $f16
	li      $at, 0xF6000000
	cfc1    $t3, $31
	or      $t1, $t0, $at
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 104$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t3, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t3, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 102$
	nop
	mfc1    $t3, $f18
	li      $at, 0x80000000
	b       108$
	or      $t3, $t3, $at
102$:
	b       108$
	li      $t3, -0x0001
104$:
	mfc1    $t3, $f18
	nop
	bltz    $t3, 102$
	nop
108$:
	andi    $t4, $t3, 0x03FF
	lw      $t8, 0x0024($sp)
	sll     $t5, $t4, 2
	ctc1    $t2, $31
	or      $t7, $t1, $t5
	sw      $t7, 0x0000($t8)
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	lwc1    $f6, 0x0028($sp)
	lwc1    $f4, 0x003C($t9)
	li      $t6, 0x0001
	add.s   $f8, $f4, $f6
	cfc1    $t0, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 149$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t6, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t6, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 147$
	nop
	mfc1    $t6, $f10
	li      $at, 0x80000000
	b       153$
	or      $t6, $t6, $at
147$:
	b       153$
	li      $t6, -0x0001
149$:
	mfc1    $t6, $f10
	nop
	bltz    $t6, 147$
	nop
153$:
	ctc1    $t0, $31
	lwc1    $f16, 0x002C($sp)
	lwc1    $f18, 0x0040($t9)
	li      $t1, 0x0001
	add.s   $f4, $f16, $f18
	andi    $t2, $t6, 0x03FF
	cfc1    $t4, $31
	ctc1    $t1, $31
	sll     $t3, $t2, 14
	cvt.w.s $f6, $f4
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, 188$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t1, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t1, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, 186$
	nop
	mfc1    $t1, $f6
	li      $at, 0x80000000
	b       192$
	or      $t1, $t1, $at
186$:
	b       192$
	li      $t1, -0x0001
188$:
	mfc1    $t1, $f6
	nop
	bltz    $t1, 186$
	nop
192$:
	andi    $t5, $t1, 0x03FF
	lw      $t0, 0x0024($sp)
	sll     $t7, $t5, 2
	ctc1    $t4, $31
	or      $t8, $t3, $t7
	sw      $t8, 0x0004($t0)
198$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t2)
	lw      $t9, 0x0020($sp)
	nop
	sw      $0, 0x0004($t9)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t1, 0x001C($sp)
	li.u    $t4, 0xBA001402
	li.l    $t4, 0xBA001402
	sw      $t4, 0x0000($t1)
	lw      $t5, 0x001C($sp)
	nop
	sw      $0, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	li.u    $t3, 0xB900031D
	li.l    $t3, 0xB900031D
	sw      $t3, 0x0000($t7)
	lw      $t0, 0x0018($sp)
	li.u    $t8, 0x00442478
	li.l    $t8, 0x00442478
	sw      $t8, 0x0004($t0)
	b       230$
	nop
230$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_gfx_8019D848
face_gfx_8019D848:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0040($sp)
	sw      $a3, 0x0044($sp)
	swc1    $f12, 0x0038($sp)
	swc1    $f14, 0x003C($sp)
	addiu   $a0, $sp, 0x0038
	jal     face_gfx_8019CE3C
	addiu   $a1, $sp, 0x003C
	addiu   $a0, $sp, 0x0040
	jal     face_gfx_8019CE3C
	addiu   $a1, $sp, 0x0044
	lwc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x0038($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    728$
	nop
	lwc1    $f8, 0x0044($sp)
	lwc1    $f10, 0x003C($sp)
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    728$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	lwc1    $f18, 0x0038($sp)
	lwc1    $f16, 0x003C($t6)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $t8, 0x0001
	add.s   $f8, $f4, $f6
	cfc1    $t7, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	beqz    $t8, 67$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t8, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t8, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	bnez    $t8, 65$
	nop
	mfc1    $t8, $f10
	li      $at, 0x80000000
	b       71$
	or      $t8, $t8, $at
65$:
	b       71$
	li      $t8, -0x0001
67$:
	mfc1    $t8, $f10
	nop
	bltz    $t8, 65$
	nop
71$:
	ctc1    $t7, $31
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0040($t6)
	li      $t3, 0x0001
	add.s   $f4, $f16, $f18
	andi    $t9, $t8, 0x03FF
	cfc1    $t2, $31
	ctc1    $t3, $31
	sll     $t0, $t9, 14
	cvt.w.s $f6, $f4
	li      $at, 0xF6000000
	cfc1    $t3, $31
	or      $t1, $t0, $at
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 107$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t3, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t3, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 105$
	nop
	mfc1    $t3, $f6
	li      $at, 0x80000000
	b       111$
	or      $t3, $t3, $at
105$:
	b       111$
	li      $t3, -0x0001
107$:
	mfc1    $t3, $f6
	nop
	bltz    $t3, 105$
	nop
111$:
	andi    $t4, $t3, 0x03FF
	lw      $t8, 0x0034($sp)
	sll     $t5, $t4, 2
	ctc1    $t2, $31
	or      $t7, $t1, $t5
	sw      $t7, 0x0000($t8)
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f8, 0x003C($t9)
	li      $t6, 0x0001
	add.s   $f16, $f8, $f10
	cfc1    $t0, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 152$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 150$
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       156$
	or      $t6, $t6, $at
150$:
	b       156$
	li      $t6, -0x0001
152$:
	mfc1    $t6, $f18
	nop
	bltz    $t6, 150$
	nop
156$:
	ctc1    $t0, $31
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($t9)
	li      $t1, 0x0001
	add.s   $f8, $f4, $f6
	andi    $t2, $t6, 0x03FF
	cfc1    $t4, $31
	ctc1    $t1, $31
	sll     $t3, $t2, 14
	cvt.w.s $f10, $f8
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, 191$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t1, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t1, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, 189$
	nop
	mfc1    $t1, $f10
	li      $at, 0x80000000
	b       195$
	or      $t1, $t1, $at
189$:
	b       195$
	li      $t1, -0x0001
191$:
	mfc1    $t1, $f10
	nop
	bltz    $t1, 189$
	nop
195$:
	andi    $t5, $t1, 0x03FF
	lw      $t0, 0x0034($sp)
	sll     $t7, $t5, 2
	ctc1    $t4, $31
	or      $t8, $t3, $t7
	sw      $t8, 0x0004($t0)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f16, 0x003C($t6)
	li      $t9, 0x0001
	add.s   $f4, $f16, $f18
	cfc1    $t2, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 239$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t9, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, 237$
	nop
	mfc1    $t9, $f6
	li      $at, 0x80000000
	b       243$
	or      $t9, $t9, $at
237$:
	b       243$
	li      $t9, -0x0001
239$:
	mfc1    $t9, $f6
	nop
	bltz    $t9, 237$
	nop
243$:
	ctc1    $t2, $31
	lwc1    $f8, 0x0044($sp)
	lwc1    $f10, 0x0040($t6)
	li      $t7, 0x0001
	add.s   $f16, $f8, $f10
	andi    $t4, $t9, 0x03FF
	cfc1    $t3, $31
	ctc1    $t7, $31
	sll     $t1, $t4, 14
	cvt.w.s $f18, $f16
	li      $at, 0xF6000000
	cfc1    $t7, $31
	or      $t5, $t1, $at
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	beqz    $t7, 279$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t7, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t7, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t7, $31
	nop
	andi    $at, $t7, 0x0004
	andi    $t7, $t7, 0x0078
	bnez    $t7, 277$
	nop
	mfc1    $t7, $f18
	li      $at, 0x80000000
	b       283$
	or      $t7, $t7, $at
277$:
	b       283$
	li      $t7, -0x0001
279$:
	mfc1    $t7, $f18
	nop
	bltz    $t7, 277$
	nop
283$:
	andi    $t8, $t7, 0x03FF
	lw      $t9, 0x0030($sp)
	sll     $t0, $t8, 2
	ctc1    $t3, $31
	or      $t2, $t5, $t0
	sw      $t2, 0x0000($t9)
	lui     $t4, %hi(face_gfx_801A8868)
	lw      $t4, %lo(face_gfx_801A8868)($t4)
	lwc1    $f6, 0x0040($sp)
	lwc1    $f4, 0x003C($t4)
	li      $at, 0x40A00000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	li      $t6, 0x0001
	sub.s   $f16, $f8, $f10
	cfc1    $t1, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 327$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 325$
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       331$
	or      $t6, $t6, $at
325$:
	b       331$
	li      $t6, -0x0001
327$:
	mfc1    $t6, $f18
	nop
	bltz    $t6, 325$
	nop
331$:
	ctc1    $t1, $31
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($t4)
	li      $t5, 0x0001
	add.s   $f8, $f4, $f6
	andi    $t3, $t6, 0x03FF
	cfc1    $t8, $31
	ctc1    $t5, $31
	sll     $t7, $t3, 14
	cvt.w.s $f10, $f8
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 366$
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
	bnez    $t5, 364$
	nop
	mfc1    $t5, $f10
	li      $at, 0x80000000
	b       370$
	or      $t5, $t5, $at
364$:
	b       370$
	li      $t5, -0x0001
366$:
	mfc1    $t5, $f10
	nop
	bltz    $t5, 364$
	nop
370$:
	andi    $t0, $t5, 0x03FF
	lw      $t1, 0x0030($sp)
	sll     $t2, $t0, 2
	ctc1    $t8, $31
	or      $t9, $t7, $t2
	sw      $t9, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f16, 0x003C($t6)
	li      $t4, 0x0001
	add.s   $f4, $f16, $f18
	cfc1    $t3, $31
	ctc1    $t4, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	beqz    $t4, 414$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t4, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t4, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	bnez    $t4, 412$
	nop
	mfc1    $t4, $f6
	li      $at, 0x80000000
	b       418$
	or      $t4, $t4, $at
412$:
	b       418$
	li      $t4, -0x0001
414$:
	mfc1    $t4, $f6
	nop
	bltz    $t4, 412$
	nop
418$:
	andi    $t8, $t4, 0x03FF
	sll     $t5, $t8, 14
	li      $at, 0xF6000000
	ctc1    $t3, $31
	lwc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x0040($t6)
	or      $t0, $t5, $at
	li      $at, 0x40A00000
	mtc1    $at, $f18
	add.s   $f16, $f8, $f10
	li      $t2, 0x0001
	add.s   $f4, $f16, $f18
	cfc1    $t7, $31
	ctc1    $t2, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	beqz    $t2, 459$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t2, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t2, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	bnez    $t2, 457$
	nop
	mfc1    $t2, $f6
	li      $at, 0x80000000
	b       463$
	or      $t2, $t2, $at
457$:
	b       463$
	li      $t2, -0x0001
459$:
	mfc1    $t2, $f6
	nop
	bltz    $t2, 457$
	nop
463$:
	andi    $t9, $t2, 0x03FF
	lw      $t4, 0x002C($sp)
	sll     $t1, $t9, 2
	ctc1    $t7, $31
	or      $t3, $t0, $t1
	sw      $t3, 0x0000($t4)
	lui     $t8, %hi(face_gfx_801A8868)
	lw      $t8, %lo(face_gfx_801A8868)($t8)
	lwc1    $f10, 0x0038($sp)
	lwc1    $f8, 0x003C($t8)
	li      $t6, 0x0001
	add.s   $f16, $f8, $f10
	cfc1    $t5, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 504$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 502$
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       508$
	or      $t6, $t6, $at
502$:
	b       508$
	li      $t6, -0x0001
504$:
	mfc1    $t6, $f18
	nop
	bltz    $t6, 502$
	nop
508$:
	ctc1    $t5, $31
	lwc1    $f4, 0x003C($sp)
	lwc1    $f6, 0x0040($t8)
	li      $t0, 0x0001
	add.s   $f8, $f4, $f6
	andi    $t7, $t6, 0x03FF
	cfc1    $t9, $31
	ctc1    $t0, $31
	sll     $t2, $t7, 14
	cvt.w.s $f10, $f8
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, 543$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, 541$
	nop
	mfc1    $t0, $f10
	li      $at, 0x80000000
	b       547$
	or      $t0, $t0, $at
541$:
	b       547$
	li      $t0, -0x0001
543$:
	mfc1    $t0, $f10
	nop
	bltz    $t0, 541$
	nop
547$:
	andi    $t1, $t0, 0x03FF
	lw      $t5, 0x002C($sp)
	sll     $t3, $t1, 2
	ctc1    $t9, $31
	or      $t4, $t2, $t3
	sw      $t4, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	lwc1    $f18, 0x0040($sp)
	lwc1    $f16, 0x003C($t6)
	li      $t8, 0x0001
	add.s   $f4, $f16, $f18
	cfc1    $t7, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	beqz    $t8, 591$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t8, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t8, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	bnez    $t8, 589$
	nop
	mfc1    $t8, $f6
	li      $at, 0x80000000
	b       595$
	or      $t8, $t8, $at
589$:
	b       595$
	li      $t8, -0x0001
591$:
	mfc1    $t8, $f6
	nop
	bltz    $t8, 589$
	nop
595$:
	ctc1    $t7, $31
	lwc1    $f8, 0x0044($sp)
	lwc1    $f10, 0x0040($t6)
	li      $t3, 0x0001
	add.s   $f16, $f8, $f10
	andi    $t9, $t8, 0x03FF
	cfc1    $t2, $31
	ctc1    $t3, $31
	sll     $t0, $t9, 14
	cvt.w.s $f18, $f16
	li      $at, 0xF6000000
	cfc1    $t3, $31
	or      $t1, $t0, $at
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 631$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t3, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t3, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 629$
	nop
	mfc1    $t3, $f18
	li      $at, 0x80000000
	b       635$
	or      $t3, $t3, $at
629$:
	b       635$
	li      $t3, -0x0001
631$:
	mfc1    $t3, $f18
	nop
	bltz    $t3, 629$
	nop
635$:
	andi    $t4, $t3, 0x03FF
	lw      $t8, 0x0028($sp)
	sll     $t5, $t4, 2
	ctc1    $t2, $31
	or      $t7, $t1, $t5
	sw      $t7, 0x0000($t8)
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	lwc1    $f6, 0x0038($sp)
	lwc1    $f4, 0x003C($t9)
	li      $t6, 0x0001
	add.s   $f8, $f4, $f6
	cfc1    $t0, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 676$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t6, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t6, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 674$
	nop
	mfc1    $t6, $f10
	li      $at, 0x80000000
	b       680$
	or      $t6, $t6, $at
674$:
	b       680$
	li      $t6, -0x0001
676$:
	mfc1    $t6, $f10
	nop
	bltz    $t6, 674$
	nop
680$:
	ctc1    $t0, $31
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0040($t9)
	li      $at, 0x40A00000
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $t1, 0x0001
	sub.s   $f8, $f4, $f6
	andi    $t2, $t6, 0x03FF
	cfc1    $t4, $31
	ctc1    $t1, $31
	sll     $t3, $t2, 14
	cvt.w.s $f10, $f8
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, 718$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t1, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t1, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, 716$
	nop
	mfc1    $t1, $f10
	li      $at, 0x80000000
	b       722$
	or      $t1, $t1, $at
716$:
	b       722$
	li      $t1, -0x0001
718$:
	mfc1    $t1, $f10
	nop
	bltz    $t1, 716$
	nop
722$:
	andi    $t5, $t1, 0x03FF
	lw      $t0, 0x0028($sp)
	sll     $t7, $t5, 2
	ctc1    $t4, $31
	or      $t8, $t3, $t7
	sw      $t8, 0x0004($t0)
728$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t2)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0004($t9)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li.u    $t4, 0xBA001402
	li.l    $t4, 0xBA001402
	sw      $t4, 0x0000($t1)
	lw      $t5, 0x0020($sp)
	nop
	sw      $0, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li.u    $t3, 0xB900031D
	li.l    $t3, 0xB900031D
	sw      $t3, 0x0000($t7)
	lw      $t0, 0x001C($sp)
	li.u    $t8, 0x00442478
	li.l    $t8, 0x00442478
	sw      $t8, 0x0004($t0)
	b       760$
	nop
760$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl face_gfx_8019E438
face_gfx_8019E438:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t6)
	li      $t8, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t7, $31
	ctc1    $t8, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	beqz    $t8, 38$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t8, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t8, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	bnez    $t8, 36$
	nop
	mfc1    $t8, $f10
	li      $at, 0x80000000
	b       42$
	or      $t8, $t8, $at
36$:
	b       42$
	li      $t8, -0x0001
38$:
	mfc1    $t8, $f10
	nop
	bltz    $t8, 36$
	nop
42$:
	ctc1    $t7, $31
	sb      $t8, 0x002F($sp)
	nop
	lw      $t9, 0x0030($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t9)
	li      $t1, 0x0001
	mul.s   $f4, $f16, $f18
	cfc1    $t0, $31
	ctc1    $t1, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, 80$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t1, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t1, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, 78$
	nop
	mfc1    $t1, $f6
	li      $at, 0x80000000
	b       84$
	or      $t1, $t1, $at
78$:
	b       84$
	li      $t1, -0x0001
80$:
	mfc1    $t1, $f6
	nop
	bltz    $t1, 78$
	nop
84$:
	ctc1    $t0, $31
	sb      $t1, 0x002E($sp)
	nop
	lw      $t2, 0x0030($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($t2)
	li      $t4, 0x0001
	mul.s   $f16, $f8, $f10
	cfc1    $t3, $31
	ctc1    $t4, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	beqz    $t4, 122$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t4, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t4, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	bnez    $t4, 120$
	nop
	mfc1    $t4, $f18
	li      $at, 0x80000000
	b       126$
	or      $t4, $t4, $at
120$:
	b       126$
	li      $t4, -0x0001
122$:
	mfc1    $t4, $f18
	nop
	bltz    $t4, 120$
	nop
126$:
	ctc1    $t3, $31
	sb      $t4, 0x002D($sp)
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0xE7000000
	sw      $t5, 0x0000($t6)
	lw      $t7, 0x0028($sp)
	nop
	sw      $0, 0x0004($t7)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t9, 0x0024($sp)
	li.u    $t8, 0xBA001402
	li.l    $t8, 0xBA001402
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0024($sp)
	li      $t0, 0x00300000
	sw      $t0, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li.u    $t2, 0xB900031D
	li.l    $t2, 0xB900031D
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x0020($sp)
	li.u    $t4, 0x0F0A4000
	li.l    $t4, 0x0F0A4000
	sw      $t4, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xF7000000
	sw      $t6, 0x0000($t7)
	lbu     $t8, 0x002F($sp)
	lbu     $t1, 0x002E($sp)
	lbu     $t5, 0x002D($sp)
	sll     $t9, $t8, 8
	sll     $t2, $t1, 3
	andi    $t3, $t2, 0x07C0
	andi    $t0, $t9, 0xF800
	sra     $t6, $t5, 2
	andi    $t7, $t6, 0x003E
	or      $t4, $t0, $t3
	or      $t8, $t4, $t7
	ori     $t9, $t8, 0x0001
	lw      $t0, 0x001C($sp)
	sll     $t1, $t9, 16
	or      $t2, $t1, $t9
	sw      $t2, 0x0004($t0)
	b       183$
	nop
183$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

face_gfx_8019E724:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xFE000000
	sw      $t6, 0x0000($t7)
	lui     $t8, %hi(face_gfx_801A8868)
	lw      $t8, %lo(face_gfx_801A8868)($t8)
	li.u    $at, 0x00FFFFFF
	lw      $t9, 0x0088($t8)
	lw      $t2, 0x001C($sp)
	lw      $t0, 0x008C($t9)
	li.l    $at, 0x00FFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0004($t2)
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019E780:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	li      $at, 0x3F800000
	lw      $t7, 0x0088($t6)
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t7)
	li      $t9, 0x0001
	sub.s   $f8, $f4, $f6
	cfc1    $t8, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 42$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t9, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t9, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, 40$
	nop
	mfc1    $t9, $f10
	li      $at, 0x80000000
	b       46$
	or      $t9, $t9, $at
40$:
	b       46$
	li      $t9, -0x0001
42$:
	mfc1    $t9, $f10
	nop
	bltz    $t9, 40$
	nop
46$:
	lw      $t2, 0x001C($sp)
	andi    $t0, $t9, 0x0FFF
	li      $at, 0xFF100000
	ctc1    $t8, $31
	or      $t1, $t0, $at
	sw      $t1, 0x0000($t2)
	lui     $t3, %hi(face_gfx_801A8868)
	lw      $t3, %lo(face_gfx_801A8868)($t3)
	lui     $t5, %hi(face_gfx_801A8840)
	lw      $t5, %lo(face_gfx_801A8840)($t5)
	lw      $t4, 0x0088($t3)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x0090($t7)
	li.u    $at, 0x00FFFFFF
	lw      $t0, 0x001C($sp)
	li.l    $at, 0x00FFFFFF
	and     $t9, $t8, $at
	sw      $t9, 0x0004($t0)
	b       67$
	nop
67$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019E89C:
	lui     $t6, %hi(face_gfx_801A8840)
	lw      $t6, %lo(face_gfx_801A8840)($t6)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x3EA0)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x3EA0)($t8)
	nop
	sw      $0, 0x0024($t8)
	lui     $t9, %hi(face_gfx_801A8840)
	lw      $t9, %lo(face_gfx_801A8840)($t9)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x3E90)
	sll     $t0, $t9, 2
	addu    $t1, $t1, $t0
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x3E90)($t1)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t1, %lo(face_gfx_801A888C)($at)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	nop
	sw      $0, 0x0000($t2)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	nop
	sw      $0, 0x000C($t3)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	sw      $0, 0x0018($t4)
	lui     $t5, %hi(face_gfx_801A888C)
	lw      $t5, %lo(face_gfx_801A888C)($t5)
	nop
	sw      $0, 0x0024($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	sw      $0, 0x0034($t6)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019E93C:
	sll     $t6, $a0, 2
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x3EC0)
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x3EC0)($t7)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t7, %lo(face_gfx_801A888C)($at)
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	nop
	sw      $0, 0x0000($t8)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	sw      $0, 0x000C($t9)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	nop
	sw      $0, 0x0018($t0)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	nop
	sw      $0, 0x0024($t1)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	nop
	sw      $0, 0x0034($t2)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_8019E9B4
face_gfx_8019E9B4:
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E98)
	sw      $t6, %lo(_face_gfx_bss-0x1540+0x3E98)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_8019E9D4
face_gfx_8019E9D4:
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x3E98)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x3E98)($t6)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t6, %lo(face_gfx_801A888C)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl gd_startdisplist
gd_startdisplist:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F8)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x16F8)($at)
	li      $t6, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16FC)
	sw      $t6, %lo(_face_gfx_bss-0x1540+0x16FC)($at)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0007
	beq     $s0, $at, 18$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 26$
	nop
	b       58$
	nop
18$:
	lui     $a1, %hi(_face_gfx_bss-0x1540+0x3E88)
	lw      $a1, %lo(_face_gfx_bss-0x1540+0x3E88)($a1)
	jal     face_gfx_8019D110
	move    $a0, $0
	lui     $at, %hi(face_gfx_801A888C)
	sw      $v0, %lo(face_gfx_801A888C)($at)
	b       63$
	nop
26$:
	lui     $t7, %hi(face_gfx_801A8868)
	lw      $t7, %lo(face_gfx_801A8868)($t7)
	nop
	lw      $t8, 0x0020($t7)
	nop
	slti    $at, $t8, 0x0003
	bnez    $at, 37$
	nop
	la.u    $a0, str_face_gfx_801B9320
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9320
37$:
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	lui     $t2, %hi(face_gfx_801A8840)
	lw      $t2, %lo(face_gfx_801A8840)($t2)
	lw      $t0, 0x0020($t9)
	sll     $t3, $t2, 2
	sll     $t1, $t0, 3
	addu    $t4, $t1, $t3
	lui     $t5, %hi(_face_gfx_bss-0x1540+0x3EA8)
	addu    $t5, $t5, $t4
	lw      $t5, %lo(_face_gfx_bss-0x1540+0x3EA8)($t5)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t5, %lo(face_gfx_801A888C)($at)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $a1, 0x004C($t6)
	jal     face_gfx_8019D01C
	move    $a0, $t6
	b       63$
	nop
58$:
	la.u    $a0, str_face_gfx_801B9350
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9350
	b       63$
	nop
63$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $t7, 0xE7000000
	sw      $t7, 0x0000($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0004($t9)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	nop
	lw      $v0, 0x0044($t0)
	b       80$
	nop
	b       80$
	nop
80$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_gfx_8019EB44:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x001C($sp)
	nop
	sw      $0, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t0, 0x0018($sp)
	li      $t9, 0xB8000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0018($sp)
	nop
	sw      $0, 0x0004($t1)
	b       22$
	nop
22$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019EBAC
face_gfx_8019EBAC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $0, 0x0024($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0020($sp)
	nop
	sw      $0, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li      $t9, 0xB8000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x001C($sp)
	nop
	sw      $0, 0x0004($t1)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	nop
	lw      $t3, 0x004C($t2)
	nop
	beqz    $t3, 73$
	nop
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t5, 0x004C($t4)
	lw      $t7, 0x0000($t4)
	lw      $t6, 0x0000($t5)
	nop
	addu    $t8, $t6, $t7
	sw      $t8, 0x0000($t5)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t0, 0x004C($t9)
	lw      $t2, 0x000C($t9)
	lw      $t1, 0x000C($t0)
	nop
	addu    $t3, $t1, $t2
	sw      $t3, 0x000C($t0)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t6, 0x004C($t4)
	lw      $t8, 0x0018($t4)
	lw      $t7, 0x0018($t6)
	nop
	addu    $t5, $t7, $t8
	sw      $t5, 0x0018($t6)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t1, 0x004C($t9)
	lw      $t3, 0x0024($t9)
	lw      $t2, 0x0024($t1)
	nop
	addu    $t0, $t2, $t3
	sw      $t0, 0x0024($t1)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t7, 0x004C($t4)
	lw      $t5, 0x0034($t4)
	lw      $t8, 0x0034($t7)
	nop
	addu    $t6, $t8, $t5
	sw      $t6, 0x0034($t7)
73$:
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	nop
	lw      $t2, 0x0024($t9)
	nop
	sw      $t2, 0x0024($sp)
	lw      $v0, 0x0024($sp)
	b       84$
	nop
	b       84$
	nop
84$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_8019ED0C:
	li.u    $at, 0x00FFFFFF
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x1608)
	sll     $t9, $a0, 2
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x3EC0)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x1608)($t7)
	addu    $t0, $t0, $t9
	li.l    $at, 0x00FFFFFF
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x3EC0)($t0)
	and     $t6, $a1, $at
	addu    $t8, $t6, $t7
	sw      $t8, 0x002C($t0)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_8019ED48:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gfx_8019D168
	sw      $0, 0x0014($sp)
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	li.u    $at, 0x00FFFFFF
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x1608)
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x1608)($t8)
	li.l    $at, 0x00FFFFFF
	lw      $t0, 0x0024($sp)
	and     $t7, $t6, $at
	addu    $t9, $t7, $t8
	sw      $t9, 0x002C($t0)
	lw      $t1, 0x0024($sp)
	nop
	lw      $v0, 0x0044($t1)
	b       28$
	nop
	b       28$
	nop
28$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_8019EDC8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	move    $a0, $0
	move    $a1, $0
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gfx_8019D168
	sw      $0, 0x0014($sp)
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	lw      $t7, 0x0024($sp)
	nop
	sw      $t6, 0x002C($t7)
	lw      $t8, 0x0024($sp)
	nop
	lw      $v0, 0x0044($t8)
	b       23$
	nop
	b       23$
	nop
23$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_8019EE34:
	addiu   $sp, $sp, -0x0018
	sw      $a1, 0x0004($sp)
	addiu   $t6, $a1, 0x0020
	sw      $t6, 0x0000($sp)
	sw      $0, 0x0014($sp)
5$:
	sw      $0, 0x0010($sp)
6$:
	lw      $t7, 0x0014($sp)
	lw      $t0, 0x0010($sp)
	sll     $t8, $t7, 4
	sll     $t1, $t0, 1
	sll     $t2, $t1, 2
	addu    $t9, $a0, $t8
	addu    $t3, $t9, $t2
	li      $at, 0x47800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t3)
	nop
	mul.s   $f8, $f4, $f6
	cfc1    $t4, $31
	nop
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t5, $f10
	ctc1    $t4, $31
	sw      $t5, 0x000C($sp)
	nop
	lw      $t6, 0x0014($sp)
	lw      $t0, 0x0010($sp)
	sll     $t7, $t6, 4
	sll     $t1, $t0, 1
	sll     $t9, $t1, 2
	addu    $t8, $a0, $t7
	addu    $t2, $t8, $t9
	li      $at, 0x47800000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t2)
	nop
	mul.s   $f4, $f16, $f18
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t4, $f6
	ctc1    $t3, $31
	sw      $t4, 0x0008($sp)
	nop
	lw      $t7, 0x0008($sp)
	lw      $t5, 0x000C($sp)
	li      $at, 0xFFFF0000
	sra     $t0, $t7, 16
	lw      $t9, 0x0004($sp)
	andi    $t1, $t0, 0xFFFF
	and     $t6, $t5, $at
	or      $t8, $t6, $t1
	sw      $t8, 0x0000($t9)
	lw      $t2, 0x0004($sp)
	nop
	addiu   $t3, $t2, 0x0004
	sw      $t3, 0x0004($sp)
	lw      $t4, 0x000C($sp)
	lw      $t0, 0x0008($sp)
	li      $at, 0xFFFF0000
	sll     $t5, $t4, 16
	lw      $t8, 0x0000($sp)
	and     $t7, $t5, $at
	andi    $t6, $t0, 0xFFFF
	or      $t1, $t7, $t6
	sw      $t1, 0x0000($t8)
	lw      $t9, 0x0000($sp)
	nop
	addiu   $t2, $t9, 0x0004
	sw      $t2, 0x0000($sp)
	lw      $t3, 0x0010($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0002
	bnez    $at, 6$
	sw      $t4, 0x0010($sp)
	lw      $t5, 0x0014($sp)
	nop
	addiu   $t0, $t5, 0x0001
	slti    $at, $t0, 0x0004
	bnez    $at, 5$
	sw      $t0, 0x0014($sp)
	b       92$
	nop
92$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_gfx_8019EFAC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $a0, 0x0020($sp)
	lw      $t8, 0x000C($t6)
	lw      $t7, 0x0014($t6)
	sll     $t9, $t8, 6
	jal     face_gfx_8019EE34
	addu    $a1, $t7, $t9
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(face_gfx_801A8858)
	lw      $t0, %lo(face_gfx_801A8858)($t0)
	li      $at, 0x01000000
	andi    $t1, $t0, 0x00FF
	sll     $t2, $t1, 16
	lw      $t5, 0x001C($sp)
	or      $t3, $t2, $at
	ori     $t4, $t3, 0x0040
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x000C($t6)
	lw      $t8, 0x0014($t6)
	sll     $t9, $t7, 6
	jal     osVirtualToPhysical
	addu    $a0, $t8, $t9
	lw      $t0, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t0)
	jal     face_gfx_8019B278
	nop
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F054
face_gfx_8019F054:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $a0, 0x0020($sp)
	lw      $t8, 0x000C($t6)
	lw      $t7, 0x0014($t6)
	sll     $t9, $t8, 6
	jal     face_gfx_8019EE34
	addu    $a1, $t7, $t9
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(face_gfx_801A8858)
	lw      $t0, %lo(face_gfx_801A8858)($t0)
	li      $at, 0x01000000
	ori     $t1, $t0, 0x0002
	andi    $t2, $t1, 0x00FF
	sll     $t3, $t2, 16
	lw      $t6, 0x001C($sp)
	or      $t4, $t3, $at
	ori     $t5, $t4, 0x0040
	sw      $t5, 0x0000($t6)
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	nop
	lw      $t9, 0x000C($t8)
	lw      $t7, 0x0014($t8)
	sll     $t0, $t9, 6
	jal     osVirtualToPhysical
	addu    $a0, $t7, $t0
	lw      $t1, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t1)
	jal     face_gfx_8019B278
	nop
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_8019F100:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(face_gfx_801A8858)
	lw      $t6, %lo(face_gfx_801A8858)($t6)
	li      $at, 0x01000000
	ori     $t7, $t6, 0x0002
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 16
	lw      $t2, 0x001C($sp)
	or      $t0, $t9, $at
	ori     $t1, $t0, 0x0040
	sw      $t1, 0x0000($t2)
	la.u    $a0, _face_gfx_bss-0x1540+0x17E0
	jal     osVirtualToPhysical
	la.l    $a0, _face_gfx_bss-0x1540+0x17E0
	lw      $t3, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t3)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F16C
face_gfx_8019F16C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t6, %hi(face_gfx_801A8858)
	lw      $t6, %lo(face_gfx_801A8858)($t6)
	li      $at, 0x01000000
	ori     $t7, $t6, 0x0004
	andi    $t8, $t7, 0x00FF
	sll     $t9, $t8, 16
	lw      $t2, 0x001C($sp)
	or      $t0, $t9, $at
	ori     $t1, $t0, 0x0040
	sw      $t1, 0x0000($t2)
	la.u    $a0, _face_gfx_bss-0x1540+0x17E0
	jal     osVirtualToPhysical
	la.l    $a0, _face_gfx_bss-0x1540+0x17E0
	lw      $t3, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t3)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F1D8
face_gfx_8019F1D8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li      $t6, 0xBD000000
	sw      $t6, 0x0000($t7)
	lui     $t8, %hi(face_gfx_801A8858)
	lw      $t8, %lo(face_gfx_801A8858)($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x0004($t9)
	b       15$
	nop
15$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F224
face_gfx_8019F224:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $a1, 0x0020($sp)
	lw      $t8, 0x000C($t6)
	lw      $t7, 0x0014($t6)
	lw      $a2, 0x0024($sp)
	lw      $a3, 0x0028($sp)
	sll     $t9, $t8, 6
	jal     guTranslate
	addu    $a0, $t7, $t9
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(face_gfx_801A8858)
	lw      $t0, %lo(face_gfx_801A8858)($t0)
	li      $at, 0x01000000
	andi    $t1, $t0, 0x00FF
	sll     $t2, $t1, 16
	lw      $t5, 0x001C($sp)
	or      $t3, $t2, $at
	ori     $t4, $t3, 0x0040
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x000C($t6)
	lw      $t8, 0x0014($t6)
	sll     $t9, $t7, 6
	jal     osVirtualToPhysical
	addu    $a0, $t8, $t9
	lw      $t0, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t0)
	jal     face_gfx_8019B278
	nop
	b       42$
	nop
42$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F2DC
face_gfx_8019F2DC:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $a1, 0x0020($sp)
	lw      $t8, 0x000C($t6)
	lw      $t7, 0x0014($t6)
	lw      $a2, 0x0024($sp)
	lw      $a3, 0x0028($sp)
	sll     $t9, $t8, 6
	jal     guTranslate
	addu    $a0, $t7, $t9
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lui     $t0, %hi(face_gfx_801A8858)
	lw      $t0, %lo(face_gfx_801A8858)($t0)
	li      $at, 0x01000000
	ori     $t1, $t0, 0x0002
	andi    $t2, $t1, 0x00FF
	sll     $t3, $t2, 16
	lw      $t6, 0x001C($sp)
	or      $t4, $t3, $at
	ori     $t5, $t4, 0x0040
	sw      $t5, 0x0000($t6)
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	nop
	lw      $t9, 0x000C($t8)
	lw      $t7, 0x0014($t8)
	sll     $t0, $t9, 6
	jal     osVirtualToPhysical
	addu    $a0, $t7, $t0
	lw      $t1, 0x001C($sp)
	nop
	sw      $v0, 0x0004($t1)
	jal     face_gfx_8019B278
	nop
	b       43$
	nop
43$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_8019F398
face_gfx_8019F398:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0070($sp)
	swc1    $f12, 0x0068($sp)
	swc1    $f14, 0x006C($sp)
	lwc1    $f4, 0x0068($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x006C($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0070($sp)
	nop
	swc1    $f8, 0x0024($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0028
	addiu   $a0, $sp, 0x0028
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x001C
	jal     face_gfx_8019EFAC
	addiu   $a0, $sp, 0x0028
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl face_gfx_8019F404
face_gfx_8019F404:
	addiu   $sp, $sp, -0x0058
	sw      $ra, 0x0014($sp)
	sw      $a1, 0x005C($sp)
	swc1    $f12, 0x0058($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0018
	lwc1    $f4, 0x0058($sp)
	lb      $a1, 0x005F($sp)
	neg.s   $f6, $f4
	mfc1    $a2, $f6
	addiu   $a0, $sp, 0x0018
	jal     absrot_matrix4
	addiu   $a1, $a1, -0x0078
	jal     face_gfx_8019EFAC
	addiu   $a0, $sp, 0x0018
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0058
	jr      $ra
	nop

.globl face_gfx_8019F458
face_gfx_8019F458:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x003C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	swc1    $f23, 0x0030($sp)
	swc1    $f22, 0x0034($sp)
	swc1    $f21, 0x0028($sp)
	swc1    $f20, 0x002C($sp)
	lui     $at, %hi(face_gfx_801B9908+4)
	lwc1    $f4, 0x007C($sp)
	lwc1    $f9, %lo(face_gfx_801B9908+0)($at)
	lwc1    $f8, %lo(face_gfx_801B9908+4)($at)
	cvt.d.s $f6, $f4
	mul.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x007C($sp)
	lwc1    $f18, 0x007C($sp)
	jal     face_gfx_8019B41C
	cvt.d.s $f12, $f18
	lwc1    $f4, 0x007C($sp)
	mov.d   $f22, $f0
	jal     face_gfx_8019B45C
	cvt.d.s $f12, $f4
	lw      $a0, 0x0060($sp)
	lwc1    $f6, 0x0070($sp)
	lwc1    $f8, 0x0074($sp)
	lwc1    $f10, 0x0078($sp)
	mtc1    $0, $f4
	mov.d   $f20, $f0
	cvt.s.d $f18, $f20
	lw      $a1, 0x0064($sp)
	cvt.s.d $f16, $f22
	lw      $a2, 0x0068($sp)
	lw      $a3, 0x006C($sp)
	swc1    $f16, 0x001C($sp)
	swc1    $f18, 0x0020($sp)
	addiu   $a0, $a0, 0x00E8
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	jal     face_math_80193CA8
	swc1    $f4, 0x0024($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $a0, 0x0060($sp)
	lw      $t8, 0x000C($t6)
	lw      $t7, 0x0014($t6)
	sll     $t9, $t8, 6
	addiu   $a0, $a0, 0x00E8
	jal     face_gfx_8019EE34
	addu    $a1, $t7, $t9
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0058($sp)
	lw      $t1, 0x0058($sp)
	li.u    $t0, 0x01010040
	li.l    $t0, 0x01010040
	sw      $t0, 0x0000($t1)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	nop
	lw      $t4, 0x000C($t2)
	lw      $t3, 0x0014($t2)
	sll     $t5, $t4, 6
	jal     osVirtualToPhysical
	addu    $a0, $t3, $t5
	lw      $t6, 0x0058($sp)
	nop
	sw      $v0, 0x0004($t6)
	lui     $t8, %hi(face_gfx_801A8840)
	lw      $t8, %lo(face_gfx_801A8840)($t8)
	la.u    $t9, _face_gfx_bss-0x1540+0x4EB0
	la.l    $t9, _face_gfx_bss-0x1540+0x4EB0
	sll     $t7, $t8, 5
	addu    $t0, $t7, $t9
	sw      $t0, 0x005C($sp)
	lw      $t1, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x00E8($t1)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	lui     $at, %hi(face_gfx_801B9910+4)
	lwc1    $f19, %lo(face_gfx_801B9910+0)($at)
	lwc1    $f18, %lo(face_gfx_801B9910+4)($at)
	nop
	c.lt.d  $f16, $f18
	nop
	bc1f    95$
	nop
	b       99$
	mov.d   $f20, $f16
95$:
	lui     $at, %hi(face_gfx_801B9918+4)
	lwc1    $f21, %lo(face_gfx_801B9918+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9918+4)($at)
	nop
99$:
	cfc1    $t2, $31
	lw      $t5, 0x005C($sp)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t4, $f4
	ctc1    $t2, $31
	andi    $t3, $t4, 0x00FF
	sb      $t3, 0x0008($t5)
	lw      $t6, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x00F8($t6)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f18, $f8, $f10
	lui     $at, %hi(face_gfx_801B9920+4)
	lwc1    $f17, %lo(face_gfx_801B9920+0)($at)
	lwc1    $f16, %lo(face_gfx_801B9920+4)($at)
	nop
	c.lt.d  $f18, $f16
	nop
	bc1f    127$
	nop
	b       131$
	mov.d   $f20, $f18
127$:
	lui     $at, %hi(face_gfx_801B9928+4)
	lwc1    $f21, %lo(face_gfx_801B9928+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9928+4)($at)
	nop
131$:
	cfc1    $t8, $31
	lw      $t0, 0x005C($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t7, $f4
	ctc1    $t8, $31
	andi    $t9, $t7, 0x00FF
	sb      $t9, 0x0009($t0)
	lw      $t1, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x0108($t1)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	lui     $at, %hi(face_gfx_801B9930+4)
	lwc1    $f19, %lo(face_gfx_801B9930+0)($at)
	lwc1    $f18, %lo(face_gfx_801B9930+4)($at)
	nop
	c.lt.d  $f16, $f18
	nop
	bc1f    159$
	nop
	b       163$
	mov.d   $f20, $f16
159$:
	lui     $at, %hi(face_gfx_801B9938+4)
	lwc1    $f21, %lo(face_gfx_801B9938+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9938+4)($at)
	nop
163$:
	cfc1    $t2, $31
	lw      $t5, 0x005C($sp)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t4, $f4
	ctc1    $t2, $31
	andi    $t3, $t4, 0x00FF
	sb      $t3, 0x000A($t5)
	lw      $t6, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x00EC($t6)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f18, $f8, $f10
	lui     $at, %hi(face_gfx_801B9940+4)
	lwc1    $f17, %lo(face_gfx_801B9940+0)($at)
	lwc1    $f16, %lo(face_gfx_801B9940+4)($at)
	nop
	c.lt.d  $f18, $f16
	nop
	bc1f    191$
	nop
	b       195$
	mov.d   $f20, $f18
191$:
	lui     $at, %hi(face_gfx_801B9948+4)
	lwc1    $f21, %lo(face_gfx_801B9948+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9948+4)($at)
	nop
195$:
	cfc1    $t8, $31
	lw      $t0, 0x005C($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t7, $f4
	ctc1    $t8, $31
	andi    $t9, $t7, 0x00FF
	sb      $t9, 0x0018($t0)
	lw      $t1, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x00FC($t1)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	lui     $at, %hi(face_gfx_801B9950+4)
	lwc1    $f19, %lo(face_gfx_801B9950+0)($at)
	lwc1    $f18, %lo(face_gfx_801B9950+4)($at)
	nop
	c.lt.d  $f16, $f18
	nop
	bc1f    223$
	nop
	b       227$
	mov.d   $f20, $f16
223$:
	lui     $at, %hi(face_gfx_801B9958+4)
	lwc1    $f21, %lo(face_gfx_801B9958+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9958+4)($at)
	nop
227$:
	cfc1    $t2, $31
	lw      $t5, 0x005C($sp)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t4, $f4
	ctc1    $t2, $31
	andi    $t3, $t4, 0x00FF
	sb      $t3, 0x0019($t5)
	lw      $t6, 0x0060($sp)
	li      $at, 0x40600000
	lwc1    $f6, 0x010C($t6)
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f8, $f6
	mul.d   $f18, $f8, $f10
	lui     $at, %hi(face_gfx_801B9960+4)
	lwc1    $f17, %lo(face_gfx_801B9960+0)($at)
	lwc1    $f16, %lo(face_gfx_801B9960+4)($at)
	nop
	c.lt.d  $f18, $f16
	nop
	bc1f    255$
	nop
	b       259$
	mov.d   $f20, $f18
255$:
	lui     $at, %hi(face_gfx_801B9968+4)
	lwc1    $f21, %lo(face_gfx_801B9968+0)($at)
	lwc1    $f20, %lo(face_gfx_801B9968+4)($at)
	nop
259$:
	cfc1    $t8, $31
	lw      $t0, 0x005C($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f4, $f20
	mfc1    $t7, $f4
	ctc1    $t8, $31
	andi    $t9, $t7, 0x00FF
	sb      $t9, 0x001A($t0)
	lw      $t1, 0x005C($sp)
	nop
	sb      $0, 0x0000($t1)
	lw      $t2, 0x005C($sp)
	nop
	sb      $0, 0x0001($t2)
	lw      $t4, 0x005C($sp)
	nop
	sb      $0, 0x0002($t4)
	lw      $t3, 0x005C($sp)
	nop
	sb      $0, 0x0003($t3)
	lw      $t5, 0x005C($sp)
	nop
	sb      $0, 0x0004($t5)
	lw      $t6, 0x005C($sp)
	nop
	sb      $0, 0x0005($t6)
	lw      $t8, 0x005C($sp)
	nop
	sb      $0, 0x0006($t8)
	lw      $t7, 0x005C($sp)
	nop
	sb      $0, 0x0007($t7)
	lw      $t9, 0x005C($sp)
	nop
	sb      $0, 0x0010($t9)
	lw      $t1, 0x005C($sp)
	li      $t0, 0x0080
	sb      $t0, 0x0011($t1)
	lw      $t2, 0x005C($sp)
	nop
	sb      $0, 0x0012($t2)
	lw      $t4, 0x005C($sp)
	nop
	sb      $0, 0x0013($t4)
	lw      $t3, 0x005C($sp)
	nop
	sb      $0, 0x0014($t3)
	lw      $t6, 0x005C($sp)
	li      $t5, 0x0080
	sb      $t5, 0x0015($t6)
	lw      $t8, 0x005C($sp)
	nop
	sb      $0, 0x0016($t8)
	lw      $t7, 0x005C($sp)
	nop
	sb      $0, 0x0017($t7)
	la.u    $t9, _face_gfx_bss-0x1540+0x4E70
	la.l    $t9, _face_gfx_bss-0x1540+0x4E70
	sw      $t9, 0x005C($sp)
	lw      $t1, 0x005C($sp)
	li      $t0, 0x0001
	sb      $t0, 0x0008($t1)
	lw      $t2, 0x005C($sp)
	nop
	sb      $0, 0x0009($t2)
	lw      $t4, 0x005C($sp)
	nop
	sb      $0, 0x000A($t4)
	lw      $t3, 0x005C($sp)
	nop
	sb      $0, 0x0018($t3)
	lw      $t6, 0x005C($sp)
	li      $t5, 0x0001
	sb      $t5, 0x0019($t6)
	lw      $t8, 0x005C($sp)
	nop
	sb      $0, 0x001A($t8)
	lw      $t7, 0x005C($sp)
	nop
	sb      $0, 0x0000($t7)
	lw      $t9, 0x005C($sp)
	nop
	sb      $0, 0x0001($t9)
	lw      $t0, 0x005C($sp)
	nop
	sb      $0, 0x0002($t0)
	lw      $t1, 0x005C($sp)
	nop
	sb      $0, 0x0003($t1)
	lw      $t2, 0x005C($sp)
	nop
	sb      $0, 0x0004($t2)
	lw      $t4, 0x005C($sp)
	nop
	sb      $0, 0x0005($t4)
	lw      $t3, 0x005C($sp)
	nop
	sb      $0, 0x0006($t3)
	lw      $t5, 0x005C($sp)
	nop
	sb      $0, 0x0007($t5)
	lw      $t6, 0x005C($sp)
	nop
	sb      $0, 0x0010($t6)
	lw      $t7, 0x005C($sp)
	li      $t8, 0x0080
	sb      $t8, 0x0011($t7)
	lw      $t9, 0x005C($sp)
	nop
	sb      $0, 0x0012($t9)
	lw      $t0, 0x005C($sp)
	nop
	sb      $0, 0x0013($t0)
	lw      $t1, 0x005C($sp)
	nop
	sb      $0, 0x0014($t1)
	lw      $t4, 0x005C($sp)
	li      $t2, 0x0080
	sb      $t2, 0x0015($t4)
	lw      $t3, 0x005C($sp)
	nop
	sb      $0, 0x0016($t3)
	lw      $t5, 0x005C($sp)
	nop
	sb      $0, 0x0017($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0054($sp)
	lw      $t8, 0x0054($sp)
	li.u    $t6, 0x03840010
	li.l    $t6, 0x03840010
	sw      $t6, 0x0000($t8)
	lui     $t7, %hi(face_gfx_801A8840)
	lw      $t7, %lo(face_gfx_801A8840)($t7)
	la.u    $t0, _face_gfx_bss-0x1540+0x4EB0
	la.l    $t0, _face_gfx_bss-0x1540+0x4EB0
	sll     $t9, $t7, 5
	jal     osVirtualToPhysical
	addu    $a0, $t9, $t0
	lw      $t1, 0x0054($sp)
	nop
	sw      $v0, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0050($sp)
	lw      $t4, 0x0050($sp)
	li.u    $t2, 0x03820010
	li.l    $t2, 0x03820010
	sw      $t2, 0x0000($t4)
	lui     $t3, %hi(face_gfx_801A8840)
	lw      $t3, %lo(face_gfx_801A8840)($t3)
	la.u    $t6, _face_gfx_bss-0x1540+0x4EB0
	la.l    $t6, _face_gfx_bss-0x1540+0x4EB0
	sll     $t5, $t3, 5
	jal     osVirtualToPhysical
	addu    $a0, $t5, $t6
	lw      $t7, 0x0050($sp)
	addiu   $t8, $v0, 0x0010
	sw      $t8, 0x0004($t7)
	jal     face_gfx_8019B278
	nop
	b       425$
	nop
425$:
	lw      $ra, 0x003C($sp)
	lwc1    $f21, 0x0028($sp)
	lwc1    $f20, 0x002C($sp)
	lwc1    $f23, 0x0030($sp)
	lwc1    $f22, 0x0034($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

.globl face_gfx_8019FB18
face_gfx_8019FB18:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lui     $at, %hi(face_gfx_801A8850)
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, %lo(face_gfx_801A8850)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1794)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x1794)($at)
	lw      $t8, 0x0018($sp)
	li      $at, 0x0003
	beq     $t8, $at, 18$
	nop
	la.u    $a0, str_face_gfx_801B9378
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9378
18$:
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x16F8)
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x16F8)($t9)
	nop
	bnez    $t9, 28$
	nop
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x16FC)
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x16FC)($t0)
	nop
	beqz    $t0, 28$
	nop
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_8019FBA0
face_gfx_8019FBA0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	swc1    $f12, 0x0020($sp)
	swc1    $f14, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x17AC)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x179C)($t7)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x17AC)($t6)
	nop
	addu    $t8, $t6, $t7
	slt     $at, $t6, $t8
	beqz    $at, 101$
	sw      $t6, 0x0018($sp)
16$:
	cfc1    $t5, $31
	lwc1    $f4, 0x0020($sp)
	ori     $at, $t5, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	lw      $t1, 0x0018($sp)
	cvt.w.s $f6, $f4
	lw      $t0, 0x0008($t9)
	mfc1    $t7, $f6
	sll     $t2, $t1, 4
	addu    $t3, $t0, $t2
	lh      $t4, 0x0000($t3)
	sll     $t6, $t7, 16
	sra     $t8, $t6, 16
	ctc1    $t5, $31
	bne     $t4, $t8, 91$
	nop
	cfc1    $t7, $31
	lwc1    $f8, 0x0024($sp)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	lw      $t0, 0x0018($sp)
	cvt.w.s $f10, $f8
	lw      $t1, 0x0008($t9)
	mfc1    $t6, $f10
	sll     $t2, $t0, 4
	addu    $t3, $t1, $t2
	lh      $t5, 0x0002($t3)
	sll     $t4, $t6, 16
	sra     $t8, $t4, 16
	ctc1    $t7, $31
	bne     $t5, $t8, 91$
	nop
	cfc1    $t6, $31
	lwc1    $f16, 0x0028($sp)
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	lw      $t1, 0x0018($sp)
	cvt.w.s $f18, $f16
	lw      $t0, 0x0008($t9)
	mfc1    $t4, $f18
	sll     $t2, $t1, 4
	addu    $t3, $t0, $t2
	lh      $t7, 0x0004($t3)
	sll     $t5, $t4, 16
	sra     $t8, $t5, 16
	ctc1    $t6, $31
	bne     $t7, $t8, 91$
	nop
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x17A4)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x1794)
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x1794)($t2)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x17A4)($t1)
	sll     $t3, $t2, 1
	sll     $t0, $t1, 4
	lw      $t9, 0x0018($sp)
	addu    $t6, $t0, $t3
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1610)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x1794)
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x1794)($t4)
	addu    $at, $at, $t6
	sh      $t9, %lo(_face_gfx_bss-0x1540+0x1610)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1794)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(_face_gfx_bss-0x1540+0x1794)($at)
	b       288$
	move    $v0, $0
91$:
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x17AC)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x179C)($t2)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x17AC)($t1)
	lw      $t7, 0x0018($sp)
	addu    $t0, $t1, $t2
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $t0
	bnez    $at, 16$
	sw      $t8, 0x0018($sp)
101$:
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t3, %lo(_face_gfx_bss-0x1540+0x179C)($t3)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x179C)
	addiu   $t9, $t3, 0x0001
	sw      $t9, %lo(_face_gfx_bss-0x1540+0x179C)($at)
	lui     $t5, %hi(_face_gfx_bss-0x1540+0x17A4)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x1794)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x1794)($t1)
	lw      $t5, %lo(_face_gfx_bss-0x1540+0x17A4)($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	sll     $t2, $t1, 1
	sll     $t7, $t5, 4
	lw      $t4, 0x0000($t6)
	addu    $t8, $t7, $t2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1610)
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x1794)
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x1794)($t0)
	addu    $at, $at, $t8
	sh      $t4, %lo(_face_gfx_bss-0x1540+0x1610)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1794)
	addiu   $t3, $t0, 0x0001
	sw      $t3, %lo(_face_gfx_bss-0x1540+0x1794)($at)
	cfc1    $t9, $31
	lwc1    $f4, 0x0020($sp)
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t5, %hi(face_gfx_801A888C)
	lw      $t5, %lo(face_gfx_801A888C)($t5)
	cvt.w.s $f6, $f4
	lw      $t7, 0x0000($t5)
	lw      $t1, 0x0008($t5)
	mfc1    $t6, $f6
	sll     $t2, $t7, 4
	ctc1    $t9, $31
	addu    $t4, $t1, $t2
	sh      $t6, 0x0000($t4)
	cfc1    $t8, $31
	lwc1    $f8, 0x0024($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	cvt.w.s $f10, $f8
	lw      $t5, 0x0000($t3)
	lw      $t9, 0x0008($t3)
	mfc1    $t0, $f10
	sll     $t7, $t5, 4
	ctc1    $t8, $31
	addu    $t1, $t9, $t7
	sh      $t0, 0x0002($t1)
	cfc1    $t2, $31
	lwc1    $f16, 0x0028($sp)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	cvt.w.s $f18, $f16
	lw      $t3, 0x0000($t4)
	lw      $t8, 0x0008($t4)
	mfc1    $t6, $f18
	sll     $t5, $t3, 4
	ctc1    $t2, $31
	addu    $t9, $t8, $t5
	sh      $t6, 0x0004($t9)
	lui     $t7, %hi(face_gfx_801A888C)
	lw      $t7, %lo(face_gfx_801A888C)($t7)
	nop
	lw      $t1, 0x0000($t7)
	lw      $t0, 0x0008($t7)
	sll     $t2, $t1, 4
	addu    $t4, $t0, $t2
	sh      $0, 0x0006($t4)
	lui     $t5, %hi(face_gfx_801A888C)
	lw      $t5, %lo(face_gfx_801A888C)($t5)
	la.u    $t3, _face_gfx_bss-0x1540+0x1780
	lw      $t9, 0x0000($t5)
	lw      $t6, 0x0008($t5)
	la.l    $t3, _face_gfx_bss-0x1540+0x1780
	lh      $t8, 0x0000($t3)
	sll     $t7, $t9, 4
	addu    $t1, $t6, $t7
	sh      $t8, 0x0008($t1)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	la.u    $t0, _face_gfx_bss-0x1540+0x1780
	lw      $t5, 0x0000($t4)
	lw      $t3, 0x0008($t4)
	la.l    $t0, _face_gfx_bss-0x1540+0x1780
	lh      $t2, 0x0002($t0)
	sll     $t9, $t5, 4
	addu    $t6, $t3, $t9
	sh      $t2, 0x000A($t6)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	la.u    $t7, _face_gfx_bss-0x1540+0x1860
	lw      $t4, 0x0000($t1)
	lw      $t0, 0x0008($t1)
	la.l    $t7, _face_gfx_bss-0x1540+0x1860
	lb      $t8, 0x0000($t7)
	sll     $t5, $t4, 4
	addu    $t3, $t0, $t5
	sb      $t8, 0x000C($t3)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	la.u    $t9, _face_gfx_bss-0x1540+0x1860
	lw      $t1, 0x0000($t6)
	lw      $t7, 0x0008($t6)
	la.l    $t9, _face_gfx_bss-0x1540+0x1860
	lb      $t2, 0x0001($t9)
	sll     $t4, $t1, 4
	addu    $t0, $t7, $t4
	sb      $t2, 0x000D($t0)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	la.u    $t5, _face_gfx_bss-0x1540+0x1860
	lw      $t6, 0x0000($t3)
	lw      $t9, 0x0008($t3)
	la.l    $t5, _face_gfx_bss-0x1540+0x1860
	lb      $t8, 0x0002($t5)
	sll     $t1, $t6, 4
	addu    $t7, $t9, $t1
	sb      $t8, 0x000E($t7)
	li      $at, 0x437F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x002C($sp)
	li      $t2, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t4, $31
	ctc1    $t2, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	beqz    $t2, 261$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t2, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t2, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	bnez    $t2, 259$
	nop
	mfc1    $t2, $f10
	li      $at, 0x80000000
	b       265$
	or      $t2, $t2, $at
259$:
	b       265$
	li      $t2, -0x0001
261$:
	mfc1    $t2, $f10
	nop
	bltz    $t2, 259$
	nop
265$:
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	ctc1    $t4, $31
	lw      $t3, 0x0000($t0)
	lw      $t5, 0x0008($t0)
	sll     $t6, $t3, 4
	addu    $t9, $t5, $t6
	sb      $t2, 0x000F($t9)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	nop
	lw      $t7, 0x0000($t1)
	lw      $t8, 0x0008($t1)
	sll     $t4, $t7, 4
	addu    $t0, $t8, $t4
	sw      $t0, 0x001C($sp)
	jal     face_gfx_8019B304
	nop
	lw      $v0, 0x001C($sp)
	b       288$
	nop
	b       288$
	nop
288$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_801A0030
face_gfx_801A0030:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x17A4)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x17A4)($t6)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17A4)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_gfx_bss-0x1540+0x17A4)($at)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x179C)($t8)
	nop
	slti    $at, $t8, 0x000C
	bnez    $at, 17$
	nop
	jal     face_gfx_801A01B0
	nop
	jal     face_gfx_801A0178
	nop
17$:
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F8)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x16F8)($at)
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A0094
face_gfx_801A0094:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	swc1    $f12, 0x0028($sp)
	swc1    $f14, 0x002C($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t8, 0x0000($t6)
	lw      $t7, 0x0008($t6)
	sll     $t9, $t8, 4
	addu    $t0, $t7, $t9
	sw      $t0, 0x0024($sp)
	lwc1    $f12, 0x0028($sp)
	lwc1    $f14, 0x002C($sp)
	lw      $a2, 0x0030($sp)
	jal     face_gfx_8019FBA0
	li      $a3, 0x3F800000
	lwc1    $f12, 0x0034($sp)
	lwc1    $f14, 0x0038($sp)
	lw      $a2, 0x003C($sp)
	jal     face_gfx_8019FBA0
	li      $a3, 0x3F800000
	lwc1    $f12, 0x0040($sp)
	lwc1    $f14, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	jal     face_gfx_8019FBA0
	li      $a3, 0x3F800000
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t2, 0x0020($sp)
	li.u    $t1, 0x04200030
	li.l    $t1, 0x04200030
	sw      $t1, 0x0000($t2)
	lw      $a0, 0x0024($sp)
	jal     osVirtualToPhysical
	nop
	lw      $t3, 0x0020($sp)
	nop
	sw      $v0, 0x0004($t3)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t4, 0xBF000000
	sw      $t4, 0x0000($t5)
	lw      $t8, 0x001C($sp)
	li      $t6, 0x0A14
	sw      $t6, 0x0004($t8)
	b       53$
	nop
53$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_gfx_801A0178
face_gfx_801A0178:
	lui     $at, %hi(_face_gfx_bss-0x1540+0x179C)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x179C)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17A4)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x17A4)($at)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17AC)
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, %lo(_face_gfx_bss-0x1540+0x17AC)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A01B0
face_gfx_801A01B0:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x17AC)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x17AC)($t6)
	nop
	sw      $t6, 0x0024($sp)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x179C)($t7)
	nop
	beqz    $t7, 87$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x179C)
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x179C)($t8)
	li      $at, 0x04000000
	addiu   $t9, $t8, -0x0001
	sll     $t0, $t9, 4
	andi    $t1, $t0, 0x00FF
	sll     $t2, $t1, 16
	sll     $t4, $t8, 4
	lw      $t7, 0x0020($sp)
	andi    $t5, $t4, 0xFFFF
	or      $t3, $t2, $at
	or      $t6, $t3, $t5
	sw      $t6, 0x0000($t7)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x17AC)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x17AC)($t1)
	lw      $t0, 0x0008($t9)
	sll     $t2, $t1, 4
	jal     osVirtualToPhysical
	addu    $a0, $t0, $t2
	lw      $t8, 0x0020($sp)
	nop
	sw      $v0, 0x0004($t8)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x17A4)
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x17A4)($t4)
	sw      $0, 0x0028($sp)
	blez    $t4, 87$
	nop
43$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t3, 0xBF000000
	sw      $t3, 0x0000($t5)
	lw      $t6, 0x0028($sp)
	la.u    $t9, _face_gfx_bss-0x1540+0x1610
	la.l    $t9, _face_gfx_bss-0x1540+0x1610
	sll     $t7, $t6, 4
	addu    $t1, $t7, $t9
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x17AC)
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x17AC)($t2)
	lh      $t0, 0x0000($t1)
	lh      $t6, 0x0002($t1)
	subu    $t8, $t0, $t2
	sll     $t4, $t8, 2
	addu    $t4, $t4, $t8
	sll     $t4, $t4, 1
	andi    $t3, $t4, 0x00FF
	sll     $t5, $t3, 16
	subu    $t7, $t6, $t2
	lh      $t3, 0x0004($t1)
	sll     $t9, $t7, 2
	addu    $t9, $t9, $t7
	sll     $t9, $t9, 1
	subu    $t6, $t3, $t2
	sll     $t7, $t6, 2
	andi    $t0, $t9, 0x00FF
	sll     $t8, $t0, 8
	addu    $t7, $t7, $t6
	sll     $t7, $t7, 1
	or      $t4, $t5, $t8
	lw      $t5, 0x001C($sp)
	andi    $t9, $t7, 0x00FF
	or      $t0, $t9, $t4
	sw      $t0, 0x0004($t5)
	lw      $t8, 0x0028($sp)
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x17A4)
	lw      $t3, %lo(_face_gfx_bss-0x1540+0x17A4)($t3)
	addiu   $t1, $t8, 0x0001
	slt     $at, $t1, $t3
	bnez    $at, 43$
	sw      $t1, 0x0028($sp)
87$:
	jal     face_gfx_801A0178
	nop
	b       91$
	nop
91$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

face_gfx_801A032C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x4F98)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x4FA0)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x4FA0)($t7)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x4F98)($t6)
	nop
	slt     $at, $t6, $t7
	bnez    $at, 16$
	nop
	la.u    $a0, _face_gfx_bss-0x1540+0x4F90
	la.u    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a0, _face_gfx_bss-0x1540+0x4F90
	jal     osRecvMesg
	li      $a2, 0x0001
16$:
	la.u    $a0, _face_gfx_bss-0x1540+0x4F90
	la.u    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a0, _face_gfx_bss-0x1540+0x4F90
	jal     osRecvMesg
	li      $a2, 0x0001
	b       24$
	nop
24$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A039C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_gfx_801A8840)
	lw      $t6, %lo(face_gfx_801A8840)($t6)
	lui     $at, %hi(face_gfx_801A8840)
	xori    $t7, $t6, 0x0001
	sw      $t7, %lo(face_gfx_801A8840)($at)
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	lui     $t0, %hi(face_gfx_801A8840)
	lw      $t0, %lo(face_gfx_801A8840)($t0)
	lw      $t9, 0x0088($t8)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $a0, 0x0090($t2)
	jal     osViSwapBuffer
	nop
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A03F8
face_gfx_801A03F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0018($sp)
	nop
	mul.s   $f8, $f4, $f6
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1864)
	cvt.w.s $f10, $f8
	mfc1    $t7, $f10
	ctc1    $t6, $31
	sh      $t7, %lo(_face_gfx_bss-0x1540+0x1864)($at)
	nop
	jal     face_gfx_801A1B40
	nop
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A0464
face_gfx_801A0464:
	lui     $at, %hi(_face_gfx_bss-0x1540+0x18B0)
	sw      $a0, %lo(_face_gfx_bss-0x1540+0x18B0)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A047C
face_gfx_801A047C:
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1868)
	sw      $a0, %lo(_face_gfx_bss-0x1540+0x1868)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A0494
face_gfx_801A0494:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0018($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x001C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x0020($sp)
	jal     gd_startdisplist
	li      $a0, 0x0007
	sw      $v0, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	addiu   $a1, $sp, 0x0018
	jal     face_gfx_801A09AC
	li      $a2, 0x0020
	jal     face_gfx_8019EBAC
	nop
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t7, 0x0000($t6)
	nop
	sw      $t7, 0x0004($t6)
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	nop
	lw      $t9, 0x000C($t8)
	nop
	sw      $t9, 0x0010($t8)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	nop
	lw      $t1, 0x0018($t0)
	nop
	sw      $t1, 0x001C($t0)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	nop
	lw      $t3, 0x0024($t2)
	nop
	sw      $t3, 0x0028($t2)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t5, 0x0034($t4)
	nop
	sw      $t5, 0x0038($t4)
	lw      $v0, 0x0024($sp)
	b       57$
	nop
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_gfx_801A0588
face_gfx_801A0588:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_gfx_8019BF08
	nop
	b       8$
	nop
8$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A05B8
face_gfx_801A05B8:
	addiu   $sp, $sp, -0x00B0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00B0($sp)
	sw      $a1, 0x00B4($sp)
	sw      $a2, 0x00B8($sp)
	sw      $a3, 0x00BC($sp)
	li      $at, 0x42000000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0038($sp)
	li      $at, 0x42000000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0034($sp)
	lw      $t6, 0x00B0($sp)
	nop
	slti    $at, $t6, 0x00C8
	bnez    $at, 22$
	nop
	la.u    $a0, str_face_gfx_801B9390
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9390
22$:
	lw      $t7, 0x00B0($sp)
	la.u    $t9, _face_gfx_bss-0x1540+0x18B8
	la.l    $t9, _face_gfx_bss-0x1540+0x18B8
	sll     $t8, $t7, 4
	addu    $t0, $t8, $t9
	sw      $t0, 0x004C($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t2, 0x0018($sp)
	li      $t1, 0xFA000000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x00C4($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0000($t3)
	lwc1    $f4, 0x0004($t3)
	mul.s   $f16, $f8, $f10
	cfc1    $t4, $31
	nop
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	li      $at, 0x437F0000
	cvt.w.s $f18, $f16
	mtc1    $at, $f6
	ctc1    $t4, $31
	mfc1    $t5, $f18
	mul.s   $f8, $f4, $f6
	lwc1    $f16, 0x0008($t3)
	andi    $t6, $t5, 0x00FF
	sll     $t7, $t6, 24
	cfc1    $t8, $31
	nop
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	li      $at, 0x437F0000
	cvt.w.s $f10, $f8
	mtc1    $at, $f18
	ctc1    $t8, $31
	mfc1    $t9, $f10
	mul.s   $f4, $f16, $f18
	andi    $t0, $t9, 0x00FF
	sll     $t1, $t0, 16
	or      $t2, $t7, $t1
	cfc1    $t4, $31
	lw      $t7, 0x0018($sp)
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t5, $f6
	ctc1    $t4, $31
	andi    $t6, $t5, 0x00FF
	sll     $t8, $t6, 8
	or      $t9, $t2, $t8
	ori     $t0, $t9, 0x00FF
	sw      $t0, 0x0004($t7)
	lw      $t1, 0x00B4($sp)
	lw      $t3, 0x00C0($sp)
	lwc1    $f8, 0x00F0($t1)
	lwc1    $f10, 0x0000($t3)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0048($sp)
	lw      $t4, 0x00B4($sp)
	lw      $t5, 0x00C0($sp)
	lwc1    $f18, 0x0100($t4)
	lwc1    $f4, 0x0004($t5)
	nop
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0044($sp)
	lw      $t6, 0x00B4($sp)
	lw      $t2, 0x00C0($sp)
	lwc1    $f8, 0x0110($t6)
	lwc1    $f10, 0x0008($t2)
	nop
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($sp)
	lwc1    $f18, 0x0048($sp)
	lwc1    $f6, 0x0044($sp)
	mul.s   $f4, $f18, $f18
	lwc1    $f16, 0x0040($sp)
	mul.s   $f8, $f6, $f6
	nop
	mul.s   $f18, $f16, $f16
	add.s   $f10, $f4, $f8
	jal     sqrtf
	add.s   $f12, $f10, $f18
	swc1    $f0, 0x003C($sp)
	lui     $at, %hi(face_gfx_801B9970+4)
	lwc1    $f6, 0x003C($sp)
	lwc1    $f9, %lo(face_gfx_801B9970+0)($at)
	lwc1    $f8, %lo(face_gfx_801B9970+4)($at)
	cvt.d.s $f4, $f6
	c.lt.d  $f8, $f4
	nop
	bc1f    215$
	nop
	lwc1    $f10, 0x003C($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f17
	mtc1    $0, $f16
	cvt.d.s $f18, $f10
	nop
	div.d   $f6, $f16, $f18
	cvt.s.d $f4, $f6
	swc1    $f4, 0x003C($sp)
	lwc1    $f8, 0x0048($sp)
	lwc1    $f10, 0x003C($sp)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f6, 0x003C($sp)
	nop
	mul.s   $f4, $f18, $f6
	swc1    $f4, 0x0044($sp)
	lwc1    $f8, 0x0040($sp)
	lwc1    $f10, 0x003C($sp)
	nop
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x0040($sp)
	lw      $t8, 0x00B4($sp)
	lwc1    $f18, 0x0048($sp)
	lwc1    $f6, 0x00E8($t8)
	lwc1    $f8, 0x0044($sp)
	mul.s   $f4, $f18, $f6
	lwc1    $f10, 0x00F8($t8)
	lwc1    $f6, 0x0108($t8)
	li      $at, 0x40000000
	mul.s   $f16, $f8, $f10
	lwc1    $f8, 0x0040($sp)
	lw      $t7, 0x004C($sp)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f4, $f16
	lwc1    $f16, 0x0038($sp)
	mtc1    $at, $f8
	add.s   $f4, $f10, $f18
	li      $at, 0x40800000
	mul.s   $f6, $f4, $f16
	mtc1    $at, $f18
	mul.s   $f10, $f6, $f8
	nop
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f6
	mfc1    $t0, $f8
	ctc1    $t9, $31
	sw      $t0, 0x0000($t7)
	nop
	lw      $t1, 0x00B4($sp)
	lwc1    $f16, 0x0048($sp)
	lwc1    $f18, 0x00EC($t1)
	lwc1    $f4, 0x0044($sp)
	mul.s   $f10, $f16, $f18
	lwc1    $f6, 0x00FC($t1)
	lwc1    $f18, 0x010C($t1)
	li      $at, 0x40000000
	mul.s   $f8, $f4, $f6
	lwc1    $f4, 0x0040($sp)
	lw      $t5, 0x004C($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f16, $f10, $f8
	lwc1    $f8, 0x0034($sp)
	mtc1    $at, $f4
	add.s   $f10, $f6, $f16
	li      $at, 0x40800000
	mul.s   $f18, $f10, $f8
	mtc1    $at, $f16
	mul.s   $f6, $f18, $f4
	nop
	mul.s   $f10, $f8, $f16
	add.s   $f18, $f6, $f10
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f4, $f18
	mfc1    $t4, $f4
	ctc1    $t3, $31
	b       247$
	sw      $t4, 0x0004($t5)
215$:
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f8, 0x0038($sp)
	lw      $t8, 0x004C($sp)
	mul.s   $f6, $f8, $f16
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f6
	mfc1    $t2, $f10
	ctc1    $t6, $31
	sw      $t2, 0x0000($t8)
	nop
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f18, 0x0034($sp)
	lw      $t7, 0x004C($sp)
	mul.s   $f8, $f18, $f4
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f16, $f8
	mfc1    $t0, $f16
	ctc1    $t9, $31
	sw      $t0, 0x0004($t7)
	nop
247$:
	b       249$
	nop
249$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00B0
	jr      $ra
	nop

.globl face_gfx_801A09AC
face_gfx_801A09AC:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x1868)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x1868)($t6)
	nop
	sw      $t6, 0x0058($sp)
	lw      $t7, 0x0068($sp)
	nop
	blez    $t7, 17$
	nop
	lw      $a0, 0x0068($sp)
	jal     face_gfx_8019E93C
	nop
17$:
	lw      $s0, 0x0070($sp)
	li      $at, 0x0001
	beq     $s0, $at, 52$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 105$
	nop
	li      $at, 0x0010
	beq     $s0, $at, 56$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 32$
	nop
	b       107$
	nop
32$:
	jal     face_gfx_801A24B4
	move    $a0, $0
	jal     face_gfx_801A24B4
	move    $a0, $0
	jal     face_gfx_801A24B4
	move    $a0, $0
	jal     face_gfx_801A24B4
	move    $a0, $0
	jal     face_gfx_801A24C8
	move    $a0, $0
	jal     face_gfx_801A24C8
	move    $a0, $0
	jal     face_gfx_801A24C8
	move    $a0, $0
	jal     face_gfx_801A24C8
	move    $a0, $0
	li      $t8, 0x0002
	sw      $t8, 0x0058($sp)
	b       418$
	nop
52$:
	jal     face_gfx_801A24B4
	li      $a0, 0x0001
	b       418$
	nop
56$:
	jal     face_gfx_801A24C8
	li      $a0, 0x0001
	lw      $t9, 0x0068($sp)
	nop
	slti    $at, $t9, 0x00C8
	bnez    $at, 66$
	nop
	la.u    $a0, str_face_gfx_801B93A4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B93A4
66$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x003C($sp)
	lw      $t0, 0x0068($sp)
	la.u    $t2, _face_gfx_bss-0x1540+0x18B8
	la.l    $t2, _face_gfx_bss-0x1540+0x18B8
	sll     $t1, $t0, 4
	addu    $t3, $t1, $t2
	lw      $t7, 0x0000($t3)
	lw      $t4, 0x0004($t3)
	andi    $t8, $t7, 0x0FFF
	andi    $t9, $t8, 0x0FFF
	andi    $t5, $t4, 0x0FFF
	sll     $t0, $t9, 12
	li      $at, 0xF2000000
	lw      $t4, 0x003C($sp)
	or      $t1, $t0, $at
	andi    $t6, $t5, 0x0FFF
	or      $t2, $t6, $t1
	sw      $t2, 0x0000($t4)
	lw      $t5, 0x0068($sp)
	la.u    $t7, _face_gfx_bss-0x1540+0x18B8
	la.l    $t7, _face_gfx_bss-0x1540+0x18B8
	sll     $t3, $t5, 4
	addu    $t8, $t3, $t7
	lw      $t9, 0x0004($t8)
	lw      $t2, 0x0000($t8)
	addiu   $t0, $t9, 0x007C
	addiu   $t4, $t2, 0x007C
	andi    $t5, $t4, 0x0FFF
	andi    $t6, $t0, 0x0FFF
	andi    $t3, $t5, 0x0FFF
	lw      $t0, 0x003C($sp)
	sll     $t7, $t3, 12
	andi    $t1, $t6, 0x0FFF
	or      $t9, $t1, $t7
	sw      $t9, 0x0004($t0)
	b       418$
	nop
105$:
	b       418$
	nop
107$:
	jal     face_gfx_801A24B4
	move    $a0, $0
	jal     face_gfx_801A24C8
	move    $a0, $0
	lw      $t6, 0x006C($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($t6)
	li      $t2, 0x0001
	mul.s   $f8, $f4, $f6
	cfc1    $t8, $31
	ctc1    $t2, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	beqz    $t2, 146$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t2, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t2, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t2, $31
	nop
	andi    $at, $t2, 0x0004
	andi    $t2, $t2, 0x0078
	bnez    $t2, 144$
	nop
	mfc1    $t2, $f10
	li      $at, 0x80000000
	b       150$
	or      $t2, $t2, $at
144$:
	b       150$
	li      $t2, -0x0001
146$:
	mfc1    $t2, $f10
	nop
	bltz    $t2, 144$
	nop
150$:
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	ctc1    $t8, $31
	lw      $t3, 0x0018($t4)
	lw      $t5, 0x0020($t4)
	sll     $t1, $t3, 3
	addu    $t1, $t1, $t3
	sll     $t1, $t1, 3
	addu    $t7, $t5, $t1
	sb      $t2, 0x0000($t7)
	lw      $t9, 0x006C($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($t9)
	li      $t6, 0x0001
	mul.s   $f4, $f16, $f18
	cfc1    $t0, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 195$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t6, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t6, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 193$
	nop
	mfc1    $t6, $f6
	li      $at, 0x80000000
	b       199$
	or      $t6, $t6, $at
193$:
	b       199$
	li      $t6, -0x0001
195$:
	mfc1    $t6, $f6
	nop
	bltz    $t6, 193$
	nop
199$:
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	ctc1    $t0, $31
	lw      $t3, 0x0018($t8)
	lw      $t4, 0x0020($t8)
	sll     $t5, $t3, 3
	addu    $t5, $t5, $t3
	sll     $t5, $t5, 3
	addu    $t1, $t4, $t5
	sb      $t6, 0x0001($t1)
	lw      $t2, 0x006C($sp)
	li      $at, 0x437F0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($t2)
	li      $t9, 0x0001
	mul.s   $f16, $f8, $f10
	cfc1    $t7, $31
	ctc1    $t9, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 244$
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
	bnez    $t9, 242$
	nop
	mfc1    $t9, $f18
	li      $at, 0x80000000
	b       248$
	or      $t9, $t9, $at
242$:
	b       248$
	li      $t9, -0x0001
244$:
	mfc1    $t9, $f18
	nop
	bltz    $t9, 242$
	nop
248$:
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	ctc1    $t7, $31
	lw      $t3, 0x0018($t0)
	lw      $t8, 0x0020($t0)
	sll     $t4, $t3, 3
	addu    $t4, $t4, $t3
	sll     $t4, $t4, 3
	addu    $t5, $t8, $t4
	sb      $t9, 0x0002($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t2, 0x0018($t6)
	lw      $t1, 0x0020($t6)
	sll     $t7, $t2, 3
	addu    $t7, $t7, $t2
	sll     $t7, $t7, 3
	addu    $t0, $t1, $t7
	lbu     $t3, 0x0000($t0)
	nop
	sb      $t3, 0x0004($t0)
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	nop
	lw      $t9, 0x0018($t8)
	lw      $t4, 0x0020($t8)
	sll     $t5, $t9, 3
	addu    $t5, $t5, $t9
	sll     $t5, $t5, 3
	addu    $t6, $t4, $t5
	lbu     $t2, 0x0001($t6)
	nop
	sb      $t2, 0x0005($t6)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	nop
	lw      $t3, 0x0018($t1)
	lw      $t7, 0x0020($t1)
	sll     $t0, $t3, 3
	addu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	addu    $t8, $t7, $t0
	lbu     $t9, 0x0002($t8)
	nop
	sb      $t9, 0x0006($t8)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t2, 0x0018($t4)
	lw      $t5, 0x0020($t4)
	sll     $t6, $t2, 3
	addu    $t6, $t6, $t2
	sll     $t6, $t6, 3
	addu    $t1, $t5, $t6
	sb      $0, 0x0008($t1)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	nop
	lw      $t0, 0x0018($t3)
	lw      $t7, 0x0020($t3)
	sll     $t9, $t0, 3
	addu    $t9, $t9, $t0
	sll     $t9, $t9, 3
	addu    $t8, $t7, $t9
	sb      $0, 0x0009($t8)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t5, 0x0018($t4)
	lw      $t2, 0x0020($t4)
	sll     $t6, $t5, 3
	addu    $t6, $t6, $t5
	sll     $t6, $t6, 3
	addu    $t1, $t2, $t6
	sb      $0, 0x000A($t1)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	nop
	lw      $t7, 0x0018($t3)
	lw      $t0, 0x0020($t3)
	sll     $t9, $t7, 3
	addu    $t9, $t9, $t7
	sll     $t9, $t9, 3
	addu    $t8, $t0, $t9
	sb      $0, 0x000C($t8)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	nop
	lw      $t2, 0x0018($t4)
	lw      $t5, 0x0020($t4)
	sll     $t6, $t2, 3
	addu    $t6, $t6, $t2
	sll     $t6, $t6, 3
	addu    $t1, $t5, $t6
	sb      $0, 0x000D($t1)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	nop
	lw      $t0, 0x0018($t3)
	lw      $t7, 0x0020($t3)
	sll     $t9, $t0, 3
	addu    $t9, $t9, $t0
	sll     $t9, $t9, 3
	addu    $t8, $t7, $t9
	sb      $0, 0x000E($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0038($sp)
	lw      $t2, 0x0038($sp)
	li.u    $t4, 0xBC000002
	li.l    $t4, 0xBC000002
	sw      $t4, 0x0000($t2)
	lw      $t6, 0x0038($sp)
	li.u    $t5, 0x80000040
	li.l    $t5, 0x80000040
	sw      $t5, 0x0004($t6)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li.u    $t1, 0x03860010
	li.l    $t1, 0x03860010
	sw      $t1, 0x0000($t3)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	nop
	lw      $t9, 0x0018($t0)
	lw      $t7, 0x0020($t0)
	sll     $t8, $t9, 3
	addu    $t8, $t8, $t9
	sll     $t8, $t8, 3
	addu    $a0, $t7, $t8
	jal     osVirtualToPhysical
	addiu   $a0, $a0, 0x0008
	lw      $t4, 0x0034($sp)
	nop
	sw      $v0, 0x0004($t4)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t5, 0x0030($sp)
	li.u    $t2, 0x03880010
	li.l    $t2, 0x03880010
	sw      $t2, 0x0000($t5)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t3, 0x0018($t6)
	lw      $t1, 0x0020($t6)
	sll     $t0, $t3, 3
	addu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	jal     osVirtualToPhysical
	addu    $a0, $t1, $t0
	lw      $t9, 0x0030($sp)
	nop
	sw      $v0, 0x0004($t9)
	jal     face_gfx_8019B1E4
	nop
	lw      $t7, 0x0068($sp)
	nop
	blez    $t7, 414$
	nop
	jal     face_gfx_8019EB44
	nop
414$:
	b       859$
	move    $v0, $0
	b       418$
	nop
418$:
	lw      $t8, 0x006C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1870)
	lwc1    $f6, %lo(_face_gfx_bss-0x1540+0x1870)($at)
	lwc1    $f4, 0x0000($t8)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t5, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t4, $31
	nop
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t2, $f18
	ctc1    $t4, $31
	sw      $t2, 0x0000($t5)
	nop
	lw      $t6, 0x006C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1874)
	lwc1    $f6, %lo(_face_gfx_bss-0x1540+0x1874)($at)
	lwc1    $f4, 0x0004($t6)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t0, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t1, $f18
	ctc1    $t3, $31
	sw      $t1, 0x0004($t0)
	nop
	lw      $t9, 0x006C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1878)
	lwc1    $f6, %lo(_face_gfx_bss-0x1540+0x1878)($at)
	lwc1    $f4, 0x0008($t9)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t4, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t7, $31
	nop
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t8, $f18
	ctc1    $t7, $31
	sw      $t8, 0x0008($t4)
	nop
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	addiu   $t2, $sp, 0x004C
	lw      $t1, 0x0018($t6)
	lw      $t3, 0x0020($t6)
	sll     $t0, $t1, 3
	addu    $t0, $t0, $t1
	lw      $t5, 0x0000($t2)
	sll     $t0, $t0, 3
	addu    $t9, $t3, $t0
	sb      $t5, 0x0000($t9)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	addiu   $t7, $sp, 0x004C
	lw      $t6, 0x0018($t4)
	lw      $t2, 0x0020($t4)
	sll     $t1, $t6, 3
	addu    $t1, $t1, $t6
	lw      $t8, 0x0004($t7)
	sll     $t1, $t1, 3
	addu    $t3, $t2, $t1
	sb      $t8, 0x0001($t3)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	addiu   $t0, $sp, 0x004C
	lw      $t4, 0x0018($t9)
	lw      $t7, 0x0020($t9)
	sll     $t6, $t4, 3
	addu    $t6, $t6, $t4
	lw      $t5, 0x0008($t0)
	sll     $t6, $t6, 3
	addu    $t2, $t7, $t6
	sb      $t5, 0x0002($t2)
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	addiu   $t1, $sp, 0x004C
	lw      $t9, 0x0018($t3)
	lw      $t0, 0x0020($t3)
	sll     $t4, $t9, 3
	addu    $t4, $t4, $t9
	lw      $t8, 0x0000($t1)
	sll     $t4, $t4, 3
	addu    $t7, $t0, $t4
	sb      $t8, 0x0004($t7)
	lui     $t2, %hi(face_gfx_801A888C)
	lw      $t2, %lo(face_gfx_801A888C)($t2)
	addiu   $t6, $sp, 0x004C
	lw      $t3, 0x0018($t2)
	lw      $t1, 0x0020($t2)
	sll     $t9, $t3, 3
	addu    $t9, $t9, $t3
	lw      $t5, 0x0004($t6)
	sll     $t9, $t9, 3
	addu    $t0, $t1, $t9
	sb      $t5, 0x0005($t0)
	lui     $t7, %hi(face_gfx_801A888C)
	lw      $t7, %lo(face_gfx_801A888C)($t7)
	addiu   $t4, $sp, 0x004C
	lw      $t2, 0x0018($t7)
	lw      $t6, 0x0020($t7)
	sll     $t3, $t2, 3
	addu    $t3, $t3, $t2
	lw      $t8, 0x0008($t4)
	sll     $t3, $t3, 3
	addu    $t1, $t6, $t3
	sb      $t8, 0x0006($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li.u    $t9, 0xBC000002
	li.l    $t9, 0xBC000002
	sw      $t9, 0x0000($t5)
	lw      $t0, 0x0058($sp)
	li.u    $at, 0x80000020
	lw      $t2, 0x002C($sp)
	li.l    $at, 0x80000020
	sll     $t4, $t0, 5
	addu    $t7, $t4, $at
	sw      $t7, 0x0004($t2)
	lw      $t6, 0x0058($sp)
	sw      $0, 0x005C($sp)
	blez    $t6, 825$
	nop
562$:
	lw      $t3, 0x005C($sp)
	lw      $t1, 0x006C($sp)
	sll     $t8, $t3, 2
	subu    $t8, $t8, $t3
	sll     $t8, $t8, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1880)
	addu    $at, $at, $t8
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x1880)($at)
	lwc1    $f6, 0x0000($t1)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t0, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t5, $f18
	ctc1    $t9, $31
	sw      $t5, 0x0000($t0)
	nop
	lw      $t4, 0x005C($sp)
	lw      $t2, 0x006C($sp)
	sll     $t7, $t4, 2
	subu    $t7, $t7, $t4
	sll     $t7, $t7, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1884)
	addu    $at, $at, $t7
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x1884)($at)
	lwc1    $f6, 0x0004($t2)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t8, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t3, $f18
	ctc1    $t6, $31
	sw      $t3, 0x0004($t8)
	nop
	lw      $t1, 0x005C($sp)
	lw      $t5, 0x006C($sp)
	sll     $t9, $t1, 2
	subu    $t9, $t9, $t1
	sll     $t9, $t9, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1888)
	addu    $at, $at, $t9
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x1888)($at)
	lwc1    $f6, 0x0008($t5)
	li      $at, 0x437F0000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	addiu   $t7, $sp, 0x004C
	mul.s   $f16, $f8, $f10
	cfc1    $t0, $31
	nop
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t4, $f18
	ctc1    $t0, $31
	sw      $t4, 0x0008($t7)
	nop
	lui     $t3, %hi(face_gfx_801A888C)
	lw      $t3, %lo(face_gfx_801A888C)($t3)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0018($t3)
	lw      $t8, 0x0020($t3)
	sll     $t9, $t1, 3
	addu    $t9, $t9, $t1
	sll     $t9, $t9, 3
	addiu   $t2, $sp, 0x004C
	lw      $t6, 0x0000($t2)
	sll     $t4, $t0, 4
	addu    $t5, $t8, $t9
	addu    $t7, $t5, $t4
	sb      $t6, 0x0008($t7)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	lw      $t4, 0x005C($sp)
	lw      $t9, 0x0018($t1)
	lw      $t8, 0x0020($t1)
	sll     $t0, $t9, 3
	addu    $t0, $t0, $t9
	sll     $t0, $t0, 3
	addiu   $t2, $sp, 0x004C
	lw      $t3, 0x0004($t2)
	sll     $t6, $t4, 4
	addu    $t5, $t8, $t0
	addu    $t7, $t5, $t6
	sb      $t3, 0x0009($t7)
	lui     $t9, %hi(face_gfx_801A888C)
	lw      $t9, %lo(face_gfx_801A888C)($t9)
	lw      $t6, 0x005C($sp)
	lw      $t0, 0x0018($t9)
	lw      $t8, 0x0020($t9)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 3
	addiu   $t2, $sp, 0x004C
	lw      $t1, 0x0008($t2)
	sll     $t3, $t6, 4
	addu    $t5, $t8, $t4
	addu    $t7, $t5, $t3
	sb      $t1, 0x000A($t7)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	lw      $t3, 0x005C($sp)
	lw      $t4, 0x0018($t0)
	lw      $t8, 0x0020($t0)
	sll     $t6, $t4, 3
	addu    $t6, $t6, $t4
	sll     $t6, $t6, 3
	addiu   $t2, $sp, 0x004C
	lw      $t9, 0x0000($t2)
	sll     $t1, $t3, 4
	addu    $t5, $t8, $t6
	addu    $t7, $t5, $t1
	sb      $t9, 0x000C($t7)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	lw      $t1, 0x005C($sp)
	lw      $t6, 0x0018($t4)
	lw      $t8, 0x0020($t4)
	sll     $t3, $t6, 3
	addu    $t3, $t3, $t6
	sll     $t3, $t3, 3
	addiu   $t2, $sp, 0x004C
	lw      $t0, 0x0004($t2)
	sll     $t9, $t1, 4
	addu    $t5, $t8, $t3
	addu    $t7, $t5, $t9
	sb      $t0, 0x000D($t7)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	lw      $t9, 0x005C($sp)
	lw      $t3, 0x0018($t6)
	lw      $t8, 0x0020($t6)
	sll     $t1, $t3, 3
	addu    $t1, $t1, $t3
	sll     $t1, $t1, 3
	addiu   $t2, $sp, 0x004C
	lw      $t4, 0x0008($t2)
	sll     $t0, $t9, 4
	addu    $t5, $t8, $t1
	addu    $t7, $t5, $t0
	sb      $t4, 0x000E($t7)
	lw      $t2, 0x005C($sp)
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x189B)
	sll     $t6, $t2, 2
	subu    $t6, $t6, $t2
	sll     $t6, $t6, 2
	addu    $t3, $t3, $t6
	lb      $t3, %lo(_face_gfx_bss-0x1540+0x189B)($t3)
	addiu   $t8, $sp, 0x0040
	sw      $t3, 0x0000($t8)
	lw      $t1, 0x005C($sp)
	lui     $t5, %hi(_face_gfx_bss-0x1540+0x189F)
	sll     $t9, $t1, 2
	subu    $t9, $t9, $t1
	sll     $t9, $t9, 2
	addu    $t5, $t5, $t9
	lb      $t5, %lo(_face_gfx_bss-0x1540+0x189F)($t5)
	addiu   $t0, $sp, 0x0040
	sw      $t5, 0x0004($t0)
	lw      $t4, 0x005C($sp)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x18A3)
	sll     $t7, $t4, 2
	subu    $t7, $t7, $t4
	sll     $t7, $t7, 2
	addu    $t2, $t2, $t7
	lb      $t2, %lo(_face_gfx_bss-0x1540+0x18A3)($t2)
	addiu   $t6, $sp, 0x0040
	sw      $t2, 0x0008($t6)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	lw      $t7, 0x005C($sp)
	lw      $t5, 0x0018($t1)
	lw      $t9, 0x0020($t1)
	sll     $t0, $t5, 3
	addu    $t0, $t0, $t5
	sll     $t0, $t0, 3
	addiu   $t3, $sp, 0x0040
	lw      $t8, 0x0000($t3)
	sll     $t2, $t7, 4
	addu    $t4, $t9, $t0
	addu    $t6, $t4, $t2
	sb      $t8, 0x0010($t6)
	lui     $t5, %hi(face_gfx_801A888C)
	lw      $t5, %lo(face_gfx_801A888C)($t5)
	lw      $t2, 0x005C($sp)
	lw      $t0, 0x0018($t5)
	lw      $t9, 0x0020($t5)
	sll     $t7, $t0, 3
	addu    $t7, $t7, $t0
	sll     $t7, $t7, 3
	addiu   $t3, $sp, 0x0040
	lw      $t1, 0x0004($t3)
	sll     $t8, $t2, 4
	addu    $t4, $t9, $t7
	addu    $t6, $t4, $t8
	sb      $t1, 0x0011($t6)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	lw      $t8, 0x005C($sp)
	lw      $t7, 0x0018($t0)
	lw      $t9, 0x0020($t0)
	sll     $t2, $t7, 3
	addu    $t2, $t2, $t7
	sll     $t2, $t2, 3
	addiu   $t3, $sp, 0x0040
	lw      $t5, 0x0008($t3)
	sll     $t1, $t8, 4
	addu    $t4, $t9, $t2
	addu    $t6, $t4, $t1
	sb      $t5, 0x0012($t6)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lw      $t3, 0x005C($sp)
	li      $at, 0x03000000
	sll     $t0, $t3, 1
	addiu   $t7, $t0, 0x0086
	andi    $t9, $t7, 0x00FF
	sll     $t2, $t9, 16
	lw      $t1, 0x0028($sp)
	or      $t8, $t2, $at
	ori     $t4, $t8, 0x0010
	sw      $t4, 0x0000($t1)
	lui     $t5, %hi(face_gfx_801A888C)
	lw      $t5, %lo(face_gfx_801A888C)($t5)
	lw      $t9, 0x005C($sp)
	lw      $t3, 0x0018($t5)
	lw      $t6, 0x0020($t5)
	sll     $t0, $t3, 3
	addu    $t0, $t0, $t3
	sll     $t0, $t0, 3
	sll     $t2, $t9, 4
	addu    $t7, $t6, $t0
	addu    $a0, $t7, $t2
	jal     osVirtualToPhysical
	addiu   $a0, $a0, 0x0008
	lw      $t8, 0x0028($sp)
	nop
	sw      $v0, 0x0004($t8)
	lw      $t4, 0x005C($sp)
	lw      $t5, 0x0058($sp)
	addiu   $t1, $t4, 0x0001
	slt     $at, $t1, $t5
	bnez    $at, 562$
	sw      $t1, 0x005C($sp)
825$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t3, 0x005C($sp)
	li      $at, 0x03000000
	sll     $t6, $t3, 1
	addiu   $t0, $t6, 0x0086
	andi    $t9, $t0, 0x00FF
	sll     $t7, $t9, 16
	lw      $t4, 0x0024($sp)
	or      $t2, $t7, $at
	ori     $t8, $t2, 0x0010
	sw      $t8, 0x0000($t4)
	lui     $t1, %hi(face_gfx_801A888C)
	lw      $t1, %lo(face_gfx_801A888C)($t1)
	nop
	lw      $t3, 0x0018($t1)
	lw      $t5, 0x0020($t1)
	sll     $t6, $t3, 3
	addu    $t6, $t6, $t3
	sll     $t6, $t6, 3
	jal     osVirtualToPhysical
	addu    $a0, $t5, $t6
	lw      $t0, 0x0024($sp)
	nop
	sw      $v0, 0x0004($t0)
	jal     face_gfx_8019B1E4
	nop
	jal     face_gfx_8019EB44
	nop
	b       859$
	move    $v0, $0
	b       859$
	nop
859$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0068

.globl face_gfx_801A1728
face_gfx_801A1728:
	li      $at, 0x42FE0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($a0)
	la.u    $t8, _face_gfx_bss-0x1540+0x1860
	mul.s   $f8, $f4, $f6
	la.l    $t8, _face_gfx_bss-0x1540+0x1860
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t7, $f10
	ctc1    $t6, $31
	sb      $t7, 0x0000($t8)
	nop
	li      $at, 0x42FE0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($a0)
	la.u    $t1, _face_gfx_bss-0x1540+0x1860
	mul.s   $f4, $f16, $f18
	la.l    $t1, _face_gfx_bss-0x1540+0x1860
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t0, $f6
	ctc1    $t9, $31
	sb      $t0, 0x0001($t1)
	nop
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($a0)
	la.u    $t4, _face_gfx_bss-0x1540+0x1860
	mul.s   $f16, $f8, $f10
	la.l    $t4, _face_gfx_bss-0x1540+0x1860
	cfc1    $t2, $31
	nop
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t3, $f18
	ctc1    $t2, $31
	sb      $t3, 0x0002($t4)
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A1804
face_gfx_801A1804:
	li      $at, 0x42FE0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0000($a0)
	la.u    $t8, _face_gfx_bss-0x1540+0x1860
	mul.s   $f8, $f4, $f6
	la.l    $t8, _face_gfx_bss-0x1540+0x1860
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t7, $f10
	ctc1    $t6, $31
	sb      $t7, 0x0000($t8)
	nop
	li      $at, 0x42FE0000
	mtc1    $at, $f18
	lwc1    $f16, 0x0004($a0)
	la.u    $t1, _face_gfx_bss-0x1540+0x1860
	mul.s   $f4, $f16, $f18
	la.l    $t1, _face_gfx_bss-0x1540+0x1860
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t0, $f6
	ctc1    $t9, $31
	sb      $t0, 0x0001($t1)
	nop
	li      $at, 0x42FE0000
	mtc1    $at, $f10
	lwc1    $f8, 0x0008($a0)
	la.u    $t4, _face_gfx_bss-0x1540+0x1860
	mul.s   $f16, $f8, $f10
	la.l    $t4, _face_gfx_bss-0x1540+0x1860
	cfc1    $t2, $31
	nop
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t3, $f18
	ctc1    $t2, $31
	sb      $t3, 0x0002($t4)
	nop
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A18F0
face_gfx_801A18F0:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	li      $at, 0x0005
	beq     $a1, $at, 10$
	nop
	li      $at, 0x0006
	beq     $a1, $at, 15$
	nop
	b       19$
	nop
10$:
	li      $t6, 0x0001
	lui     $at, %hi(face_gfx_801A8858)
	sw      $t6, %lo(face_gfx_801A8858)($at)
	b       19$
	nop
15$:
	lui     $at, %hi(face_gfx_801A8858)
	sw      $0, %lo(face_gfx_801A8858)($at)
	b       19$
	nop
19$:
	b       21$
	nop
21$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_gfx_801A194C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	lw      $t8, 0x0034($t6)
	lw      $t7, 0x003C($t6)
	sll     $t9, $t8, 4
	addu    $t0, $t7, $t9
	sw      $t0, 0x001C($sp)
	lui     $t1, %hi(face_gfx_801A8868)
	lw      $t1, %lo(face_gfx_801A8868)($t1)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t1)
	lw      $t4, 0x001C($sp)
	mul.s   $f8, $f4, $f6
	cfc1    $t2, $31
	nop
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t3, $f10
	ctc1    $t2, $31
	sh      $t3, 0x0000($t4)
	nop
	lui     $t5, %hi(face_gfx_801A8868)
	lw      $t5, %lo(face_gfx_801A8868)($t5)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0058($t5)
	lw      $t7, 0x001C($sp)
	mul.s   $f4, $f16, $f18
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f4
	mfc1    $t8, $f6
	ctc1    $t6, $31
	sh      $t8, 0x0002($t7)
	nop
	lw      $t0, 0x001C($sp)
	li      $t9, 0x01FF
	sh      $t9, 0x0004($t0)
	lw      $t1, 0x001C($sp)
	nop
	sh      $0, 0x0006($t1)
	lui     $t2, %hi(face_gfx_801A8868)
	lw      $t2, %lo(face_gfx_801A8868)($t2)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f8, 0x003C($t2)
	li      $at, 0x40000000
	mul.s   $f16, $f8, $f10
	mtc1    $at, $f4
	lwc1    $f18, 0x0054($t2)
	lw      $t5, 0x001C($sp)
	mul.s   $f6, $f18, $f4
	add.s   $f8, $f16, $f6
	cfc1    $t3, $31
	nop
	ori     $at, $t3, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f8
	mfc1    $t4, $f10
	ctc1    $t3, $31
	sh      $t4, 0x0008($t5)
	nop
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	li      $at, 0x40800000
	mtc1    $at, $f4
	lwc1    $f18, 0x0040($t6)
	li      $at, 0x40000000
	mul.s   $f16, $f18, $f4
	mtc1    $at, $f8
	lwc1    $f6, 0x0058($t6)
	lw      $t9, 0x001C($sp)
	mul.s   $f10, $f6, $f8
	add.s   $f18, $f16, $f10
	cfc1    $t8, $31
	nop
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f4, $f18
	mfc1    $t7, $f4
	ctc1    $t8, $31
	sh      $t7, 0x000A($t9)
	nop
	lw      $t1, 0x001C($sp)
	li      $t0, 0x01FF
	sh      $t0, 0x000C($t1)
	lw      $t2, 0x001C($sp)
	nop
	sh      $0, 0x000E($t2)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	li.u    $t3, 0x03800010
	li.l    $t3, 0x03800010
	sw      $t3, 0x0000($t4)
	lw      $a0, 0x001C($sp)
	jal     osVirtualToPhysical
	nop
	lw      $t5, 0x0018($sp)
	nop
	sw      $v0, 0x0004($t5)
	jal     face_gfx_8019B390
	nop
	b       121$
	nop
121$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_801A1B40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	nop
	lw      $t7, 0x0034($t6)
	nop
	andi    $t8, $t7, 0x0010
	beqz    $t8, 41$
	nop
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x1864)
	lh      $t9, %lo(_face_gfx_bss-0x1540+0x1864)($t9)
	li      $at, 0x00FF
	beq     $t9, $at, 28$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t1, 0x0024($sp)
	li.u    $t0, 0xB900031D
	li.l    $t0, 0xB900031D
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0024($sp)
	li.u    $t2, 0x005049D8
	li.l    $t2, 0x005049D8
	sw      $t2, 0x0004($t3)
	b       39$
	nop
28$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t5, 0x0020($sp)
	li.u    $t4, 0xB900031D
	li.l    $t4, 0xB900031D
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0020($sp)
	li.u    $t6, 0x00442478
	li.l    $t6, 0x00442478
	sw      $t6, 0x0004($t7)
39$:
	b       70$
	nop
41$:
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x1864)
	lh      $t8, %lo(_face_gfx_bss-0x1540+0x1864)($t8)
	li      $at, 0x00FF
	beq     $t8, $at, 59$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x001C($sp)
	li.u    $t9, 0xB900031D
	li.l    $t9, 0xB900031D
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x001C($sp)
	li.u    $t1, 0x005041C8
	li.l    $t1, 0x005041C8
	sw      $t1, 0x0004($t2)
	b       70$
	nop
59$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0018($sp)
	lw      $t4, 0x0018($sp)
	li.u    $t3, 0xB900031D
	li.l    $t3, 0xB900031D
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x0018($sp)
	li.u    $t5, 0x00442478
	li.l    $t5, 0x00442478
	sw      $t5, 0x0004($t6)
70$:
	b       72$
	nop
72$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_801A1C70:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t7, 0x0024($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0024($sp)
	nop
	sw      $0, 0x0004($t8)
	jal     face_gfx_8019E780
	nop
	lui     $a0, %hi(face_gfx_801A8868)
	lw      $a0, %lo(face_gfx_801A8868)($a0)
	jal     face_gfx_8019E438
	addiu   $a0, $a0, 0x007C
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	li      $at, 0x3F800000
	lwc1    $f4, 0x003C($t9)
	lwc1    $f6, 0x0054($t9)
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	li      $t1, 0x0001
	sub.s   $f16, $f8, $f10
	cfc1    $t0, $31
	ctc1    $t1, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	beqz    $t1, 58$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t1, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t1, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t1, $31
	nop
	andi    $at, $t1, 0x0004
	andi    $t1, $t1, 0x0078
	bnez    $t1, 56$
	nop
	mfc1    $t1, $f18
	li      $at, 0x80000000
	b       62$
	or      $t1, $t1, $at
56$:
	b       62$
	li      $t1, -0x0001
58$:
	mfc1    $t1, $f18
	nop
	bltz    $t1, 56$
	nop
62$:
	andi    $t2, $t1, 0x03FF
	sll     $t3, $t2, 14
	li      $at, 0xF6000000
	ctc1    $t0, $31
	lwc1    $f4, 0x0040($t9)
	lwc1    $f6, 0x0058($t9)
	or      $t4, $t3, $at
	li      $at, 0x3F800000
	mtc1    $at, $f10
	add.s   $f8, $f4, $f6
	li      $t6, 0x0001
	sub.s   $f16, $f8, $f10
	cfc1    $t5, $31
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	beqz    $t6, 103$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t6, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t6, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t6, $31
	nop
	andi    $at, $t6, 0x0004
	andi    $t6, $t6, 0x0078
	bnez    $t6, 101$
	nop
	mfc1    $t6, $f18
	li      $at, 0x80000000
	b       107$
	or      $t6, $t6, $at
101$:
	b       107$
	li      $t6, -0x0001
103$:
	mfc1    $t6, $f18
	nop
	bltz    $t6, 101$
	nop
107$:
	andi    $t7, $t6, 0x03FF
	lw      $t1, 0x0020($sp)
	sll     $t8, $t7, 2
	ctc1    $t5, $31
	or      $t0, $t4, $t8
	sw      $t0, 0x0000($t1)
	lui     $t2, %hi(face_gfx_801A8868)
	lw      $t2, %lo(face_gfx_801A8868)($t2)
	cfc1    $t3, $31
	li      $t9, 0x0001
	ctc1    $t9, $31
	lwc1    $f4, 0x003C($t2)
	nop
	cvt.w.s $f6, $f4
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	beqz    $t9, 146$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t9, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t9, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t9, $31
	nop
	andi    $at, $t9, 0x0004
	andi    $t9, $t9, 0x0078
	bnez    $t9, 144$
	nop
	mfc1    $t9, $f6
	li      $at, 0x80000000
	b       150$
	or      $t9, $t9, $at
144$:
	b       150$
	li      $t9, -0x0001
146$:
	mfc1    $t9, $f6
	nop
	bltz    $t9, 144$
	nop
150$:
	ctc1    $t3, $31
	li      $t4, 0x0001
	lwc1    $f8, 0x0040($t2)
	cfc1    $t7, $31
	ctc1    $t4, $31
	andi    $t5, $t9, 0x03FF
	cvt.w.s $f10, $f8
	sll     $t6, $t5, 14
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	beqz    $t4, 183$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t4, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t4, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t4, $31
	nop
	andi    $at, $t4, 0x0004
	andi    $t4, $t4, 0x0078
	bnez    $t4, 181$
	nop
	mfc1    $t4, $f10
	li      $at, 0x80000000
	b       187$
	or      $t4, $t4, $at
181$:
	b       187$
	li      $t4, -0x0001
183$:
	mfc1    $t4, $f10
	nop
	bltz    $t4, 181$
	nop
187$:
	andi    $t8, $t4, 0x03FF
	lw      $t3, 0x0020($sp)
	sll     $t0, $t8, 2
	ctc1    $t7, $31
	or      $t1, $t6, $t0
	sw      $t1, 0x0004($t3)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li      $t9, 0xE7000000
	sw      $t9, 0x0000($t5)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0004($t2)
	b       204$
	nop
204$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_gfx_801A1FB0:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	li      $t6, 0xE7000000
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x0034($sp)
	nop
	sw      $0, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li.u    $t9, 0xBA001402
	li.l    $t9, 0xBA001402
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0030($sp)
	li      $t1, 0x00300000
	sw      $t1, 0x0004($t2)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li.u    $t3, 0xB900031D
	li.l    $t3, 0xB900031D
	sw      $t3, 0x0000($t4)
	lw      $t6, 0x002C($sp)
	li.u    $t5, 0x0F0A4000
	li.l    $t5, 0x0F0A4000
	sw      $t5, 0x0004($t6)
	jal     face_gfx_8019E724
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lui     $t7, %hi(face_gfx_801A8868)
	lw      $t7, %lo(face_gfx_801A8868)($t7)
	li      $at, 0x3F800000
	lw      $t8, 0x0088($t7)
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t8)
	li      $t0, 0x0001
	sub.s   $f8, $f4, $f6
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, 74$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, 72$
	nop
	mfc1    $t0, $f10
	li      $at, 0x80000000
	b       78$
	or      $t0, $t0, $at
72$:
	b       78$
	li      $t0, -0x0001
74$:
	mfc1    $t0, $f10
	nop
	bltz    $t0, 72$
	nop
78$:
	lw      $t3, 0x0028($sp)
	andi    $t1, $t0, 0x0FFF
	li      $at, 0xFF100000
	ctc1    $t9, $31
	or      $t2, $t1, $at
	sw      $t2, 0x0000($t3)
	lui     $t4, %hi(face_gfx_801A8868)
	lw      $t4, %lo(face_gfx_801A8868)($t4)
	li.u    $at, 0x00FFFFFF
	lw      $t5, 0x0088($t4)
	lw      $t8, 0x0028($sp)
	lw      $t6, 0x008C($t5)
	li.l    $at, 0x00FFFFFF
	and     $t7, $t6, $at
	sw      $t7, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	li      $t9, 0xF7000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0024($sp)
	li.u    $t1, 0xFFFCFFFC
	li.l    $t1, 0xFFFCFFFC
	sw      $t1, 0x0004($t2)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lui     $t3, %hi(face_gfx_801A8868)
	lw      $t3, %lo(face_gfx_801A8868)($t3)
	li      $at, 0x3F800000
	lwc1    $f16, 0x003C($t3)
	lwc1    $f18, 0x0054($t3)
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $t5, 0x0001
	sub.s   $f8, $f4, $f6
	cfc1    $t4, $31
	ctc1    $t5, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t5, $31
	nop
	andi    $at, $t5, 0x0004
	andi    $t5, $t5, 0x0078
	beqz    $t5, 144$
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
	bnez    $t5, 142$
	nop
	mfc1    $t5, $f10
	li      $at, 0x80000000
	b       148$
	or      $t5, $t5, $at
142$:
	b       148$
	li      $t5, -0x0001
144$:
	mfc1    $t5, $f10
	nop
	bltz    $t5, 142$
	nop
148$:
	andi    $t6, $t5, 0x03FF
	sll     $t7, $t6, 14
	li      $at, 0xF6000000
	ctc1    $t4, $31
	lwc1    $f16, 0x0040($t3)
	lwc1    $f18, 0x0058($t3)
	or      $t8, $t7, $at
	li      $at, 0x3F800000
	mtc1    $at, $f6
	add.s   $f4, $f16, $f18
	li      $t0, 0x0001
	sub.s   $f8, $f4, $f6
	cfc1    $t9, $31
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	beqz    $t0, 189$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $t0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $t0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $t0, $31
	nop
	andi    $at, $t0, 0x0004
	andi    $t0, $t0, 0x0078
	bnez    $t0, 187$
	nop
	mfc1    $t0, $f10
	li      $at, 0x80000000
	b       193$
	or      $t0, $t0, $at
187$:
	b       193$
	li      $t0, -0x0001
189$:
	mfc1    $t0, $f10
	nop
	bltz    $t0, 187$
	nop
193$:
	andi    $t1, $t0, 0x03FF
	lw      $t5, 0x0020($sp)
	sll     $t2, $t1, 2
	ctc1    $t9, $31
	or      $t4, $t8, $t2
	sw      $t4, 0x0000($t5)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	cfc1    $t7, $31
	li      $t3, 0x0001
	ctc1    $t3, $31
	lwc1    $f16, 0x003C($t6)
	nop
	cvt.w.s $f18, $f16
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 232$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $t3, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $t3, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 230$
	nop
	mfc1    $t3, $f18
	li      $at, 0x80000000
	b       236$
	or      $t3, $t3, $at
230$:
	b       236$
	li      $t3, -0x0001
232$:
	mfc1    $t3, $f18
	nop
	bltz    $t3, 230$
	nop
236$:
	ctc1    $t7, $31
	li      $t8, 0x0001
	lwc1    $f4, 0x0040($t6)
	cfc1    $t1, $31
	ctc1    $t8, $31
	andi    $t9, $t3, 0x03FF
	cvt.w.s $f6, $f4
	sll     $t0, $t9, 14
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	beqz    $t8, 269$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $t8, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $t8, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $t8, $31
	nop
	andi    $at, $t8, 0x0004
	andi    $t8, $t8, 0x0078
	bnez    $t8, 267$
	nop
	mfc1    $t8, $f6
	li      $at, 0x80000000
	b       273$
	or      $t8, $t8, $at
267$:
	b       273$
	li      $t8, -0x0001
269$:
	mfc1    $t8, $f6
	nop
	bltz    $t8, 267$
	nop
273$:
	andi    $t2, $t8, 0x03FF
	lw      $t7, 0x0020($sp)
	sll     $t4, $t2, 2
	ctc1    $t1, $31
	or      $t5, $t0, $t4
	sw      $t5, 0x0004($t7)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t9)
	lw      $t6, 0x001C($sp)
	nop
	sw      $0, 0x0004($t6)
	jal     face_gfx_8019E780
	nop
	b       292$
	nop
292$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

.globl face_gfx_801A2450
face_gfx_801A2450:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	li.u    $t6, 0xBA001402
	li.l    $t6, 0xBA001402
	sw      $t6, 0x0000($t7)
	lw      $t8, 0x001C($sp)
	nop
	sw      $0, 0x0004($t8)
	jal     face_gfx_801A1B40
	nop
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_801A24A0:
	addiu   $sp, $sp, -0x0010
	b       3$
	nop
3$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

.globl face_gfx_801A24B4
face_gfx_801A24B4:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A24C8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	beqz    $t6, 21$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $t7, 0x06000000
	sw      $t7, 0x0000($t8)
	la.u    $a0, gfx_face_801B5290
	jal     osVirtualToPhysical
	la.l    $a0, gfx_face_801B5290
	lw      $t9, 0x0024($sp)
	nop
	sw      $v0, 0x0004($t9)
	b       42$
	nop
21$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t1, 0x0020($sp)
	li      $t0, 0xBB000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0020($sp)
	li.u    $t2, 0x80008000
	li.l    $t2, 0x80008000
	sw      $t2, 0x0004($t3)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t5, 0x001C($sp)
	li.u    $t4, 0xFCFFFFFF
	li.l    $t4, 0xFCFFFFFF
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x001C($sp)
	li.u    $t6, 0xFFFE793C
	li.l    $t6, 0xFFFE793C
	sw      $t6, 0x0004($t7)
42$:
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_gfx_801A2588
face_gfx_801A2588:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	lw      $t6, 0x0040($sp)
	nop
	lw      $t7, 0x0088($t6)
	lwc1    $f4, 0x003C($t6)
	lwc1    $f6, 0x003C($t7)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    20$
	nop
	lw      $t8, 0x0040($sp)
	nop
	lw      $t9, 0x0088($t8)
	nop
	lwc1    $f8, 0x003C($t9)
	b       25$
	swc1    $f8, 0x003C($sp)
20$:
	lw      $t0, 0x0040($sp)
	nop
	lwc1    $f10, 0x003C($t0)
	nop
	swc1    $f10, 0x003C($sp)
25$:
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x0088($t1)
	lwc1    $f16, 0x003C($t1)
	lwc1    $f18, 0x0054($t1)
	lwc1    $f6, 0x003C($t2)
	lwc1    $f8, 0x0054($t2)
	add.s   $f4, $f16, $f18
	add.s   $f10, $f6, $f8
	c.lt.s  $f10, $f4
	nop
	bc1f    48$
	nop
	lw      $t3, 0x0040($sp)
	nop
	lw      $t4, 0x0088($t3)
	nop
	lwc1    $f16, 0x003C($t4)
	lwc1    $f18, 0x0054($t4)
	nop
	add.s   $f6, $f16, $f18
	b       55$
	swc1    $f6, 0x0034($sp)
48$:
	lw      $t5, 0x0040($sp)
	nop
	lwc1    $f8, 0x003C($t5)
	lwc1    $f4, 0x0054($t5)
	nop
	add.s   $f10, $f8, $f4
	swc1    $f10, 0x0034($sp)
55$:
	lw      $t6, 0x0040($sp)
	nop
	lw      $t7, 0x0088($t6)
	lwc1    $f16, 0x0040($t6)
	lwc1    $f18, 0x0040($t7)
	nop
	c.lt.s  $f16, $f18
	nop
	bc1f    72$
	nop
	lw      $t8, 0x0040($sp)
	nop
	lw      $t9, 0x0088($t8)
	nop
	lwc1    $f6, 0x0040($t9)
	b       77$
	swc1    $f6, 0x0038($sp)
72$:
	lw      $t0, 0x0040($sp)
	nop
	lwc1    $f8, 0x0040($t0)
	nop
	swc1    $f8, 0x0038($sp)
77$:
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x0088($t1)
	lwc1    $f4, 0x0040($t1)
	lwc1    $f10, 0x0058($t1)
	lwc1    $f18, 0x0040($t2)
	lwc1    $f6, 0x0058($t2)
	add.s   $f16, $f4, $f10
	add.s   $f8, $f18, $f6
	c.lt.s  $f8, $f16
	nop
	bc1f    100$
	nop
	lw      $t3, 0x0040($sp)
	nop
	lw      $t4, 0x0088($t3)
	nop
	lwc1    $f4, 0x0040($t4)
	lwc1    $f10, 0x0058($t4)
	nop
	add.s   $f18, $f4, $f10
	b       107$
	swc1    $f18, 0x0030($sp)
100$:
	lw      $t5, 0x0040($sp)
	nop
	lwc1    $f6, 0x0040($t5)
	lwc1    $f16, 0x0058($t5)
	nop
	add.s   $f8, $f6, $f16
	swc1    $f8, 0x0030($sp)
107$:
	lwc1    $f4, 0x003C($sp)
	lwc1    $f10, 0x0034($sp)
	nop
	c.le.s  $f10, $f4
	nop
	bc1f    120$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lwc1    $f18, 0x0034($sp)
	nop
	sub.s   $f16, $f18, $f6
	swc1    $f16, 0x003C($sp)
120$:
	lwc1    $f8, 0x0038($sp)
	lwc1    $f4, 0x0030($sp)
	nop
	c.le.s  $f4, $f8
	nop
	bc1f    133$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lwc1    $f10, 0x0030($sp)
	nop
	sub.s   $f6, $f10, $f18
	swc1    $f6, 0x0038($sp)
133$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	li      $at, 0x40800000
	mtc1    $at, $f8
	lwc1    $f16, 0x003C($sp)
	lwc1    $f18, 0x0038($sp)
	mul.s   $f4, $f16, $f8
	lw      $t5, 0x002C($sp)
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	li      $at, 0xED000000
	cvt.w.s $f10, $f4
	mfc1    $t7, $f10
	ctc1    $t6, $31
	andi    $t8, $t7, 0x0FFF
	sll     $t9, $t8, 12
	or      $t0, $t9, $at
	li      $at, 0x40800000
	mtc1    $at, $f6
	nop
	mul.s   $f16, $f18, $f6
	cfc1    $t1, $31
	nop
	ori     $at, $t1, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f16
	mfc1    $t2, $f8
	ctc1    $t1, $31
	andi    $t3, $t2, 0x0FFF
	or      $t4, $t0, $t3
	sw      $t4, 0x0000($t5)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lwc1    $f4, 0x0034($sp)
	lwc1    $f16, 0x0030($sp)
	mul.s   $f18, $f4, $f10
	lw      $t4, 0x002C($sp)
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	li      $at, 0x40800000
	cvt.w.s $f6, $f18
	mtc1    $at, $f8
	ctc1    $t6, $31
	mfc1    $t7, $f6
	mul.s   $f4, $f16, $f8
	andi    $t8, $t7, 0x0FFF
	sll     $t9, $t8, 12
	cfc1    $t1, $31
	nop
	ori     $at, $t1, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f4
	mfc1    $t2, $f10
	ctc1    $t1, $31
	andi    $t0, $t2, 0x0FFF
	or      $t3, $t9, $t0
	sw      $t3, 0x0004($t4)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	li      $t5, 0xB6000000
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0028($sp)
	li      $t7, -0x0001
	sw      $t7, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li      $t1, 0xB7000000
	sw      $t1, 0x0000($t2)
	lw      $t0, 0x0024($sp)
	li.u    $t9, 0x00022204
	li.l    $t9, 0x00022204
	sw      $t9, 0x0004($t0)
	lw      $t3, 0x0040($sp)
	nop
	lw      $t4, 0x0034($t3)
	nop
	andi    $t5, $t4, 0x0010
	beqz    $t5, 236$
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	li      $t6, 0xB7000000
	sw      $t6, 0x0000($t7)
	lw      $t1, 0x0020($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0004($t1)
236$:
	jal     face_gfx_801A194C
	nop
	jal     face_gfx_801A1B40
	nop
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t9, 0x001C($sp)
	li      $t2, 0xE7000000
	sw      $t2, 0x0000($t9)
	lw      $t0, 0x001C($sp)
	nop
	sw      $0, 0x0004($t0)
	b       251$
	nop
251$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_gfx_801A2984:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.u    $t6, face_control+0x00
	la.l    $t6, face_control+0x00
	sw      $t6, 0x0038($sp)
	lw      $t7, 0x0038($sp)
	nop
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x0038($sp)
	nop
	lw      $t9, 0x00F0($t8)
	nop
	sw      $t9, 0x0028($sp)
	sw      $0, 0x003C($sp)
16$:
	lw      $t0, 0x002C($sp)
	lw      $t2, 0x0028($sp)
	lbu     $t1, 0x0000($t0)
	nop
	sb      $t1, 0x0000($t2)
	lw      $t5, 0x002C($sp)
	lw      $t3, 0x0028($sp)
	addiu   $t6, $t5, 0x0001
	addiu   $t4, $t3, 0x0001
	sw      $t4, 0x0028($sp)
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x003C($sp)
	nop
	addiu   $t8, $t7, 0x0001
	sltiu   $at, $t8, 0x00F4
	bnez    $at, 16$
	sw      $t8, 0x003C($sp)
	lw      $t9, 0x0038($sp)
	nop
	sw      $0, 0x0014($t9)
	lw      $t0, 0x0038($sp)
	nop
	lw      $s1, 0x0014($t0)
	nop
	sw      $s1, 0x0010($t0)
	lw      $t1, 0x0038($sp)
	move    $s0, $s1
	sw      $s0, 0x004C($t1)
	lw      $t2, 0x0038($sp)
	nop
	sw      $s0, 0x0050($t2)
	la.u    $t3, _face_gfx_bss-0x1540+0x1550
	la.l    $t3, _face_gfx_bss-0x1540+0x1550
	sw      $t3, 0x0034($sp)
	la.u    $t4, _face_gfx_bss-0x1540+0x1568
	la.l    $t4, _face_gfx_bss-0x1540+0x1568
	sw      $t4, 0x0030($sp)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	lb      $t6, 0x0002($t5)
	nop
	mtc1    $t6, $f4
	nop
	cvt.s.w $f6, $f4
	swc1    $f6, 0x007C($t7)
	lw      $t8, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lb      $t9, 0x0003($t8)
	nop
	mtc1    $t9, $f8
	nop
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0080($t0)
	lw      $t1, 0x0038($sp)
	nop
	lw      $t2, 0x00C8($t1)
	nop
	sw      $t2, 0x00C0($t1)
	lw      $t3, 0x0038($sp)
	nop
	lw      $t4, 0x00CC($t3)
	nop
	sw      $t4, 0x00C4($t3)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	lb      $t6, 0x0002($t5)
	nop
	sw      $t6, 0x00C8($t7)
	lw      $t8, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lb      $t9, 0x0003($t8)
	nop
	sw      $t9, 0x00CC($t0)
	lw      $t2, 0x0038($sp)
	nop
	lw      $t1, 0x00C0($t2)
	lw      $t4, 0x00C8($t2)
	nop
	subu    $t3, $t1, $t4
	sw      $t3, 0x00C0($t2)
	lw      $t5, 0x0038($sp)
	nop
	lw      $t6, 0x00C4($t5)
	lw      $t7, 0x00CC($t5)
	nop
	subu    $t8, $t6, $t7
	sw      $t8, 0x00C4($t5)
	lw      $t9, 0x0034($sp)
	lw      $t3, 0x0038($sp)
	lhu     $t0, 0x0000($t9)
	nop
	andi    $t1, $t0, 0x0020
	sltu    $t4, $0, $t1
	sw      $t4, 0x0044($t3)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lhu     $t6, 0x0000($t2)
	nop
	andi    $t7, $t6, 0x0010
	sltu    $t8, $0, $t7
	sw      $t8, 0x0048($t5)
	lw      $t9, 0x0034($sp)
	lw      $t3, 0x0038($sp)
	lhu     $t0, 0x0000($t9)
	nop
	andi    $t1, $t0, 0x8000
	sltu    $t4, $0, $t1
	sw      $t4, 0x0034($t3)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lhu     $t6, 0x0000($t2)
	nop
	andi    $t7, $t6, 0x4000
	sltu    $t8, $0, $t7
	sw      $t8, 0x0038($t5)
	lw      $t9, 0x0034($sp)
	lw      $t3, 0x0038($sp)
	lhu     $t0, 0x0000($t9)
	nop
	andi    $t1, $t0, 0x0002
	sltu    $t4, $0, $t1
	sw      $t4, 0x0018($t3)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lhu     $t6, 0x0000($t2)
	nop
	andi    $t7, $t6, 0x0001
	sltu    $t8, $0, $t7
	sw      $t8, 0x001C($t5)
	lw      $t9, 0x0034($sp)
	lw      $t3, 0x0038($sp)
	lhu     $t0, 0x0000($t9)
	nop
	andi    $t1, $t0, 0x0008
	sltu    $t4, $0, $t1
	sw      $t4, 0x0020($t3)
	lw      $t2, 0x0034($sp)
	lw      $t5, 0x0038($sp)
	lhu     $t6, 0x0000($t2)
	nop
	andi    $t7, $t6, 0x0004
	sltu    $t8, $0, $t7
	sw      $t8, 0x0024($t5)
	lw      $t9, 0x0034($sp)
	lw      $t4, 0x0038($sp)
	lhu     $t0, 0x0000($t9)
	nop
	andi    $t1, $t0, 0x0200
	sw      $t1, 0x0008($t4)
	lw      $t3, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	lhu     $t2, 0x0000($t3)
	nop
	andi    $t6, $t2, 0x0100
	sw      $t6, 0x000C($t7)
	lw      $t8, 0x0034($sp)
	lw      $t0, 0x0038($sp)
	lhu     $t5, 0x0000($t8)
	nop
	andi    $t9, $t5, 0x0800
	sw      $t9, 0x0010($t0)
	lw      $t1, 0x0034($sp)
	lw      $t2, 0x0038($sp)
	lhu     $t4, 0x0000($t1)
	nop
	andi    $t3, $t4, 0x0400
	sw      $t3, 0x0014($t2)
	lw      $t6, 0x0038($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	beqz    $t7, 202$
	nop
	lw      $t8, 0x00D8($t6)
	nop
	srl     $t5, $t8, 31
	bnez    $t5, 202$
	nop
	lw      $t9, 0x0038($sp)
	nop
	lbu     $t0, 0x00D8($t9)
	nop
	andi    $t1, $t0, 0xFFEF
	ori     $t4, $t1, 0x0010
	b       208$
	sb      $t4, 0x00D8($t9)
202$:
	lw      $t3, 0x0038($sp)
	nop
	lbu     $t2, 0x00D8($t3)
	nop
	andi    $t7, $t2, 0xFFEF
	sb      $t7, 0x00D8($t3)
208$:
	lw      $t6, 0x0038($sp)
	nop
	lw      $t8, 0x0034($t6)
	lbu     $t4, 0x00D8($t6)
	andi    $t5, $t8, 0x0001
	sll     $t0, $t5, 7
	andi    $t1, $t0, 0x0080
	andi    $t9, $t4, 0xFF7F
	or      $t2, $t1, $t9
	sb      $t2, 0x00D8($t6)
	lw      $t7, 0x0038($sp)
	nop
	lbu     $t3, 0x00D8($t7)
	nop
	andi    $t8, $t3, 0xFFBF
	sb      $t8, 0x00D8($t7)
	lw      $t5, 0x0038($sp)
	nop
	lw      $t0, 0x00D8($t5)
	lbu     $t6, 0x00D8($t5)
	sll     $t4, $t0, 1
	srl     $t1, $t4, 31
	sll     $t9, $t1, 5
	andi    $t2, $t9, 0x0020
	andi    $t3, $t6, 0xFFDF
	or      $t8, $t2, $t3
	sb      $t8, 0x00D8($t5)
	lw      $t7, 0x0038($sp)
	nop
	lbu     $t0, 0x00D8($t7)
	nop
	andi    $t4, $t0, 0xFFFD
	sb      $t4, 0x00D8($t7)
	lw      $t1, 0x0038($sp)
	nop
	lw      $t9, 0x00D8($t1)
	nop
	sll     $t6, $t9, 3
	srl     $t2, $t6, 31
	beqz    $t2, 275$
	nop
	lw      $t3, 0x0038($sp)
	nop
	lw      $t8, 0x00D0($t3)
	nop
	sw      $t8, 0x00B8($t3)
	lw      $t5, 0x0038($sp)
	nop
	lw      $t0, 0x00D4($t5)
	nop
	sw      $t0, 0x00BC($t5)
	lw      $t4, 0x0038($sp)
	nop
	lw      $t7, 0x00E8($t4)
	lw      $t1, 0x00DC($t4)
	nop
	subu    $t9, $t7, $t1
	sltiu   $at, $t9, 0x000A
	beqz    $at, 275$
	nop
	lw      $t6, 0x0038($sp)
	nop
	lbu     $t2, 0x00D8($t6)
	nop
	andi    $t8, $t2, 0xFFFD
	ori     $t3, $t8, 0x0002
	sb      $t3, 0x00D8($t6)
275$:
	lw      $t0, 0x0038($sp)
	nop
	lw      $t5, 0x00D8($t0)
	nop
	srl     $t4, $t5, 31
	beqz    $t4, 287$
	nop
	lw      $t7, 0x0038($sp)
	nop
	lw      $t1, 0x00E8($t7)
	nop
	sw      $t1, 0x00DC($t7)
287$:
	lw      $t9, 0x0038($sp)
	nop
	lw      $t2, 0x00E8($t9)
	nop
	addiu   $t8, $t2, 0x0001
	sw      $t8, 0x00E8($t9)
	lw      $t3, 0x0034($sp)
	nop
	lhu     $t6, 0x0000($t3)
	nop
	andi    $t0, $t6, 0x1000
	beqz    $t0, 313$
	nop
	lw      $t5, 0x0030($sp)
	nop
	lhu     $t4, 0x0000($t5)
	nop
	andi    $t1, $t4, 0x1000
	bnez    $t1, 313$
	nop
	lw      $t7, 0x0038($sp)
	nop
	lw      $t2, 0x0054($t7)
	nop
	xori    $t8, $t2, 0x0001
	sw      $t8, 0x0054($t7)
313$:
	lw      $t9, 0x0034($sp)
	nop
	lhu     $t3, 0x0000($t9)
	nop
	andi    $t6, $t3, 0x2000
	beqz    $t6, 332$
	nop
	lw      $t0, 0x0030($sp)
	nop
	lhu     $t5, 0x0000($t0)
	nop
	andi    $t4, $t5, 0x2000
	bnez    $t4, 332$
	nop
	lui     $t1, %hi(face_gfx_801A8884)
	lw      $t1, %lo(face_gfx_801A8884)($t1)
	lui     $at, %hi(face_gfx_801A8884)
	addiu   $t2, $t1, 0x0001
	sw      $t2, %lo(face_gfx_801A8884)($at)
332$:
	lui     $t8, %hi(face_gfx_801A8884)
	lui     $t7, %hi(face_gfx_801A8880)
	lw      $t7, %lo(face_gfx_801A8880)($t7)
	lw      $t8, %lo(face_gfx_801A8884)($t8)
	nop
	slt     $at, $t7, $t8
	beqz    $at, 343$
	nop
	lui     $at, %hi(face_gfx_801A8884)
	b       352$
	sw      $0, %lo(face_gfx_801A8884)($at)
343$:
	lui     $t9, %hi(face_gfx_801A8884)
	lw      $t9, %lo(face_gfx_801A8884)($t9)
	nop
	bgez    $t9, 352$
	nop
	lui     $t3, %hi(face_gfx_801A8880)
	lw      $t3, %lo(face_gfx_801A8880)($t3)
	lui     $at, %hi(face_gfx_801A8884)
	sw      $t3, %lo(face_gfx_801A8884)($at)
352$:
	lui     $t6, %hi(face_gfx_801A8884)
	lw      $t6, %lo(face_gfx_801A8884)($t6)
	nop
	beqz    $t6, 361$
	nop
	jal     face_stdio_8018C920
	nop
	b       363$
	nop
361$:
	jal     face_stdio_8018C938
	nop
363$:
	lui     $t0, %hi(face_gfx_801A8880)
	lw      $t0, %lo(face_gfx_801A8880)($t0)
	sw      $0, 0x003C($sp)
	blez    $t0, 385$
	nop
368$:
	lw      $t5, 0x003C($sp)
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x3E80)
	sll     $t4, $t5, 2
	addu    $t1, $t1, $t4
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x3E80)($t1)
	li      $at, -0x0801
	lw      $t2, 0x0034($t1)
	nop
	and     $t8, $t2, $at
	sw      $t8, 0x0034($t1)
	lw      $t7, 0x003C($sp)
	lui     $t3, %hi(face_gfx_801A8880)
	lw      $t3, %lo(face_gfx_801A8880)($t3)
	addiu   $t9, $t7, 0x0001
	slt     $at, $t9, $t3
	bnez    $at, 368$
	sw      $t9, 0x003C($sp)
385$:
	lui     $t6, %hi(face_gfx_801A8884)
	lw      $t6, %lo(face_gfx_801A8884)($t6)
	nop
	beqz    $t6, 401$
	nop
	lui     $t0, %hi(face_gfx_801A8884)
	lw      $t0, %lo(face_gfx_801A8884)($t0)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x3E7C)
	sll     $t5, $t0, 2
	addu    $t4, $t4, $t5
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x3E7C)($t4)
	nop
	lw      $t2, 0x0034($t4)
	nop
	ori     $t8, $t2, 0x0800
	sw      $t8, 0x0034($t4)
401$:
	lw      $t1, 0x0038($sp)
	nop
	lw      $t7, 0x00C8($t1)
	nop
	bgez    $t7, 409$
	nop
	b       413$
	subu    $s0, $0, $t7
409$:
	lw      $t9, 0x0038($sp)
	nop
	lw      $s0, 0x00C8($t9)
	nop
413$:
	slti    $at, $s0, 0x0006
	bnez    $at, 439$
	nop
	lw      $t3, 0x0038($sp)
	lui     $at, %hi(face_gfx_801B9978+4)
	lw      $t6, 0x00C8($t3)
	lwc1    $f5, %lo(face_gfx_801B9978+0)($at)
	mtc1    $t6, $f16
	lwc1    $f4, %lo(face_gfx_801B9978+4)($at)
	cvt.d.w $f18, $f16
	lw      $t0, 0x00D0($t3)
	mul.d   $f6, $f18, $f4
	mtc1    $t0, $f8
	nop
	cvt.d.w $f10, $f8
	add.d   $f16, $f10, $f6
	cfc1    $t5, $31
	nop
	ori     $at, $t5, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f18, $f16
	ctc1    $t5, $31
	swc1    $f18, 0x00D0($t3)
	nop
439$:
	lw      $t2, 0x0038($sp)
	nop
	lw      $t8, 0x00CC($t2)
	nop
	bgez    $t8, 447$
	nop
	b       451$
	subu    $s0, $0, $t8
447$:
	lw      $t4, 0x0038($sp)
	nop
	lw      $s0, 0x00CC($t4)
	nop
451$:
	slti    $at, $s0, 0x0006
	bnez    $at, 477$
	nop
	lw      $t1, 0x0038($sp)
	lui     $at, %hi(face_gfx_801B9980+4)
	lw      $t7, 0x00CC($t1)
	lwc1    $f11, %lo(face_gfx_801B9980+0)($at)
	mtc1    $t7, $f4
	lwc1    $f10, %lo(face_gfx_801B9980+4)($at)
	cvt.d.w $f8, $f4
	lw      $t9, 0x00D4($t1)
	mul.d   $f6, $f8, $f10
	mtc1    $t9, $f16
	nop
	cvt.d.w $f18, $f16
	sub.d   $f4, $f18, $f6
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.d $f8, $f4
	ctc1    $t6, $31
	swc1    $f8, 0x00D4($t1)
	nop
477$:
	lw      $t0, 0x0038($sp)
	lui     $t3, %hi(face_gfx_801A886C)
	lw      $t3, %lo(face_gfx_801A886C)($t3)
	lw      $t5, 0x00D0($t0)
	lw      $t2, 0x0088($t3)
	mtc1    $t5, $f10
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f18, 0x003C($t2)
	cvt.s.w $f16, $f10
	add.s   $f4, $f18, $f6
	c.lt.s  $f16, $f4
	nop
	bc1f    511$
	nop
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	li      $at, 0x41800000
	lw      $t4, 0x0088($t8)
	mtc1    $at, $f10
	lwc1    $f8, 0x003C($t4)
	lw      $t6, 0x0038($sp)
	add.s   $f18, $f8, $f10
	cfc1    $t7, $31
	nop
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f18
	mfc1    $t9, $f6
	ctc1    $t7, $31
	sw      $t9, 0x00D0($t6)
	nop
511$:
	lui     $t5, %hi(face_gfx_801A886C)
	lw      $t5, %lo(face_gfx_801A886C)($t5)
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0088($t5)
	lw      $t0, 0x00D0($t1)
	lwc1    $f8, 0x003C($t3)
	lwc1    $f10, 0x0054($t3)
	mtc1    $t0, $f16
	li      $at, 0x42400000
	cvt.s.w $f4, $f16
	mtc1    $at, $f6
	add.s   $f18, $f8, $f10
	sub.s   $f16, $f18, $f6
	c.lt.s  $f16, $f4
	nop
	bc1f    549$
	nop
	lui     $t2, %hi(face_gfx_801A886C)
	lw      $t2, %lo(face_gfx_801A886C)($t2)
	li      $at, 0x42400000
	lw      $t8, 0x0088($t2)
	mtc1    $at, $f6
	lwc1    $f8, 0x003C($t8)
	lwc1    $f10, 0x0054($t8)
	lw      $t9, 0x0038($sp)
	add.s   $f18, $f8, $f10
	sub.s   $f4, $f18, $f6
	cfc1    $t4, $31
	nop
	ori     $at, $t4, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f16, $f4
	mfc1    $t7, $f16
	ctc1    $t4, $31
	sw      $t7, 0x00D0($t9)
	nop
549$:
	lw      $t6, 0x0038($sp)
	lui     $t0, %hi(face_gfx_801A886C)
	lw      $t0, %lo(face_gfx_801A886C)($t0)
	lw      $t1, 0x00D4($t6)
	lw      $t5, 0x0088($t0)
	mtc1    $t1, $f8
	li      $at, 0x41800000
	mtc1    $at, $f6
	lwc1    $f18, 0x0040($t5)
	cvt.s.w $f10, $f8
	add.s   $f4, $f18, $f6
	c.lt.s  $f10, $f4
	nop
	bc1f    583$
	nop
	lui     $t3, %hi(face_gfx_801A886C)
	lw      $t3, %lo(face_gfx_801A886C)($t3)
	li      $at, 0x41800000
	lw      $t2, 0x0088($t3)
	mtc1    $at, $f8
	lwc1    $f16, 0x0040($t2)
	lw      $t7, 0x0038($sp)
	add.s   $f18, $f16, $f8
	cfc1    $t8, $31
	nop
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f6, $f18
	mfc1    $t4, $f6
	ctc1    $t8, $31
	sw      $t4, 0x00D4($t7)
	nop
583$:
	lui     $t1, %hi(face_gfx_801A886C)
	lw      $t1, %lo(face_gfx_801A886C)($t1)
	lw      $t9, 0x0038($sp)
	lw      $t0, 0x0088($t1)
	lw      $t6, 0x00D4($t9)
	lwc1    $f16, 0x0040($t0)
	lwc1    $f8, 0x0058($t0)
	mtc1    $t6, $f10
	li      $at, 0x42000000
	cvt.s.w $f4, $f10
	mtc1    $at, $f6
	add.s   $f18, $f16, $f8
	sub.s   $f10, $f18, $f6
	c.lt.s  $f10, $f4
	nop
	bc1f    621$
	nop
	lui     $t5, %hi(face_gfx_801A886C)
	lw      $t5, %lo(face_gfx_801A886C)($t5)
	li      $at, 0x42000000
	lw      $t3, 0x0088($t5)
	mtc1    $at, $f6
	lwc1    $f16, 0x0040($t3)
	lwc1    $f8, 0x0058($t3)
	lw      $t4, 0x0038($sp)
	add.s   $f18, $f16, $f8
	sub.s   $f4, $f18, $f6
	cfc1    $t2, $31
	nop
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f10, $f4
	mfc1    $t8, $f10
	ctc1    $t2, $31
	sw      $t8, 0x00D4($t4)
	nop
621$:
	sw      $0, 0x003C($sp)
622$:
	lw      $t7, 0x0034($sp)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0030($sp)
	addu    $t6, $t7, $t9
	lbu     $t1, 0x0000($t6)
	addu    $t5, $t0, $t9
	sb      $t1, 0x0000($t5)
	lw      $t3, 0x003C($sp)
	nop
	addiu   $t2, $t3, 0x0001
	sltiu   $at, $t2, 0x0006
	bnez    $at, 622$
	sw      $t2, 0x003C($sp)
	b       637$
	nop
637$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

face_gfx_801A338C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	swc1    $f12, 0x0018($sp)
	b       38$
	nop
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lui     $at, %hi(face_gfx_801A885C+4*0)
	lwc1    $f6, %lo(face_gfx_801A885C+4*0)($at)
	li      $at, 0x40000000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f16
	lwc1    $f10, 0x0018($sp)
	li      $at, 0x40640000
	mul.s   $f18, $f10, $f16
	mtc1    $0, $f10
	mtc1    $at, $f11
	add.s   $f4, $f8, $f18
	cvt.d.s $f6, $f4
	c.lt.d  $f10, $f6
	nop
	bc1f    36$
	nop
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E38)
	lwc1    $f16, %lo(_face_gfx_bss-0x1540+0x3E38)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	lwc1    $f8, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	li      $at, 0xC1A00000
	mtc1    $at, $f14
	li      $a2, 0x0000
	jal     face_gfx_801A34B0
	sub.s   $f12, $f16, $f8
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E38)
	lwc1    $f18, %lo(_face_gfx_bss-0x1540+0x3E38)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	swc1    $f18, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
36$:
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A3434:
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x1608)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x1608)($t7)
	and     $t6, $a0, $at
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E54)
	addu    $t8, $t6, $t7
	sw      $t8, %lo(_face_gfx_bss-0x1540+0x3E54)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A3464:
	sw      $a2, 0x0008($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	swc1    $f12, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E4C)
	swc1    $f14, %lo(_face_gfx_bss-0x1540+0x3E4C)($at)
	lwc1    $f4, 0x0008($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E50)
	swc1    $f4, %lo(_face_gfx_bss-0x1540+0x3E50)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E38)
	swc1    $f12, %lo(_face_gfx_bss-0x1540+0x3E38)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E3C)
	swc1    $f14, %lo(_face_gfx_bss-0x1540+0x3E3C)($at)
	lwc1    $f6, 0x0008($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E40)
	swc1    $f6, %lo(_face_gfx_bss-0x1540+0x3E40)($at)
	b       17$
	nop
17$:
	jr      $ra
	nop

face_gfx_801A34B0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f14, 0x001C($sp)
	lw      $a2, 0x0020($sp)
	jal     face_gfx_8019F224
	nop
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lwc1    $f6, 0x0018($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E4C)
	lwc1    $f10, %lo(_face_gfx_bss-0x1540+0x3E4C)($at)
	lwc1    $f16, 0x001C($sp)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_gfx_bss-0x1540+0x3E4C)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E50)
	lwc1    $f4, %lo(_face_gfx_bss-0x1540+0x3E50)($at)
	lwc1    $f6, 0x0020($sp)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x3E50)($at)
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A3538:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E4C)
	lwc1    $f6, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lwc1    $f10, %lo(_face_gfx_bss-0x1540+0x3E4C)($at)
	lwc1    $f4, 0x0018($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E50)
	lwc1    $f18, %lo(_face_gfx_bss-0x1540+0x3E50)($at)
	lwc1    $f16, 0x0020($sp)
	sub.s   $f12, $f4, $f6
	lwc1    $f8, 0x001C($sp)
	sub.s   $f4, $f16, $f18
	mfc1    $a2, $f4
	jal     face_gfx_8019F224
	sub.s   $f14, $f8, $f10
	lwc1    $f6, 0x0018($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E48)
	swc1    $f6, %lo(_face_gfx_bss-0x1540+0x3E48)($at)
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E4C)
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x3E4C)($at)
	lwc1    $f10, 0x0020($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E50)
	swc1    $f10, %lo(_face_gfx_bss-0x1540+0x3E50)($at)
	b       29$
	nop
29$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A35BC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a2, 0x0020($sp)
	swc1    $f12, 0x0018($sp)
	swc1    $f14, 0x001C($sp)
	lwc1    $f4, 0x0018($sp)
	lui     $at, %hi(face_gfx_801A885C+4*0)
	swc1    $f4, %lo(face_gfx_801A885C+4*0)($at)
	lwc1    $f6, 0x001C($sp)
	lui     $at, %hi(face_gfx_801A885C+4*1)
	swc1    $f6, %lo(face_gfx_801A885C+4*1)($at)
	lwc1    $f8, 0x0020($sp)
	lui     $at, %hi(face_gfx_801A885C+4*2)
	swc1    $f8, %lo(face_gfx_801A885C+4*2)($at)
	lwc1    $f12, 0x0018($sp)
	lwc1    $f14, 0x001C($sp)
	lw      $a2, 0x0020($sp)
	jal     face_gfx_8019F398
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A3620
face_gfx_801A3620:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $s0, 0x0018($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	nop
	lw      $t7, 0x0034($t6)
	nop
	andi    $t8, $t7, 0x0400
	beqz    $t8, 31$
	nop
	jal     face_draw_80178ED8
	li      $a0, 0x0001
	move    $s0, $v0
	jal     face_gfx_8019E438
	move    $a0, $s0
	lui     $t9, %hi(face_gfx_801A8868)
	lw      $t9, %lo(face_gfx_801A8868)($t9)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	mtc1    $at, $f16
	lwc1    $f4, 0x0054($t9)
	lwc1    $f10, 0x0058($t9)
	sub.s   $f8, $f4, $f6
	mtc1    $0, $f12
	sub.s   $f18, $f10, $f16
	mfc1    $a2, $f8
	mfc1    $a3, $f18
	mtc1    $0, $f14
	jal     face_gfx_8019D848
	nop
31$:
	b       33$
	nop
33$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl gd_shading
gd_shading:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0009
	beq     $s0, $at, 13$
	nop
	li      $at, 0x000A
	beq     $s0, $at, 15$
	nop
	b       17$
	nop
13$:
	b       20$
	nop
15$:
	b       20$
	nop
17$:
	la.u    $a0, str_face_gfx_801B93B8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B93B8
20$:
	b       22$
	nop
22$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl gd_getproperty
gd_getproperty:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	li      $at, 0x0003
	bne     $t6, $at, 15$
	nop
	b       11$
	nop
11$:
	li      $t7, 0x0001
	sw      $t7, 0x001C($sp)
	b       18$
	nop
15$:
	la.u    $a0, str_face_gfx_801B93DC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B93DC
18$:
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

.globl gd_setproperty
gd_setproperty:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	sw      $s0, 0x0018($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x003C($sp)
	lw      $t6, 0x0040($sp)
	nop
	addiu   $t7, $t6, -0x0004
	sltiu   $at, $t7, 0x0013
	beqz    $at, L801A3BFC
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(face_gfx_801B9988)
	addu    $at, $at, $t7
	lw      $t7, %lo(face_gfx_801B9988)($at)
	nop
	jr      $t7
	nop
.globl L801A37E8
L801A37E8:
	cfc1    $t8, $31
	lwc1    $f6, 0x0044($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f6
	mfc1    $t9, $f8
	ctc1    $t8, $31
	sw      $t9, 0x0038($sp)
	nop
	lw      $s0, 0x0038($sp)
	nop
	beqz    $s0, 55$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 44$
	nop
	b       66$
	nop
44$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0xB7000000
	sw      $t0, 0x0000($t1)
	lw      $t3, 0x0034($sp)
	li      $t2, 0x00020000
	sw      $t2, 0x0004($t3)
	b       66$
	nop
55$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t5, 0x0030($sp)
	li      $t4, 0xB6000000
	sw      $t4, 0x0000($t5)
	lw      $t7, 0x0030($sp)
	li      $t6, 0x00020000
	sw      $t6, 0x0004($t7)
	b       66$
	nop
66$:
	b       288$
	nop
.globl L801A3898
L801A3898:
	lwc1    $f10, 0x0044($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1870)
	swc1    $f10, %lo(_face_gfx_bss-0x1540+0x1870)($at)
	lwc1    $f16, 0x0048($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1874)
	swc1    $f16, %lo(_face_gfx_bss-0x1540+0x1874)($at)
	lwc1    $f18, 0x004C($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1878)
	swc1    $f18, %lo(_face_gfx_bss-0x1540+0x1878)($at)
	b       288$
	nop
.globl L801A38C4
L801A38C4:
	li      $at, 0x42F00000
	mtc1    $at, $f6
	lwc1    $f4, 0x0044($sp)
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x18B0)
	mul.s   $f8, $f4, $f6
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x18B0)($t0)
	nop
	sll     $t1, $t0, 2
	cfc1    $t8, $31
	subu    $t1, $t1, $t0
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1898)
	cvt.w.s $f10, $f8
	sll     $t1, $t1, 2
	mfc1    $t9, $f10
	ctc1    $t8, $31
	addu    $at, $at, $t1
	sw      $t9, %lo(_face_gfx_bss-0x1540+0x1898)($at)
	li      $at, 0x42F00000
	mtc1    $at, $f18
	lwc1    $f16, 0x0048($sp)
	lui     $t4, %hi(_face_gfx_bss-0x1540+0x18B0)
	mul.s   $f4, $f16, $f18
	lw      $t4, %lo(_face_gfx_bss-0x1540+0x18B0)($t4)
	nop
	sll     $t5, $t4, 2
	cfc1    $t2, $31
	subu    $t5, $t5, $t4
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_gfx_bss-0x1540+0x189C)
	cvt.w.s $f6, $f4
	sll     $t5, $t5, 2
	mfc1    $t3, $f6
	ctc1    $t2, $31
	addu    $at, $at, $t5
	sw      $t3, %lo(_face_gfx_bss-0x1540+0x189C)($at)
	li      $at, 0x42F00000
	mtc1    $at, $f10
	lwc1    $f8, 0x004C($sp)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x18B0)
	mul.s   $f16, $f8, $f10
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x18B0)($t8)
	nop
	sll     $t0, $t8, 2
	cfc1    $t6, $31
	subu    $t0, $t0, $t8
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(_face_gfx_bss-0x1540+0x18A0)
	cvt.w.s $f18, $f16
	sll     $t0, $t0, 2
	mfc1    $t7, $f18
	ctc1    $t6, $31
	addu    $at, $at, $t0
	sw      $t7, %lo(_face_gfx_bss-0x1540+0x18A0)($at)
	b       288$
	nop
.globl L801A39BC
L801A39BC:
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x18B0)
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x18B0)($t9)
	lwc1    $f4, 0x0044($sp)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1880)
	addu    $at, $at, $t1
	swc1    $f4, %lo(_face_gfx_bss-0x1540+0x1880)($at)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x18B0)
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x18B0)($t2)
	lwc1    $f6, 0x0048($sp)
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1884)
	addu    $at, $at, $t4
	swc1    $f6, %lo(_face_gfx_bss-0x1540+0x1884)($at)
	lui     $t3, %hi(_face_gfx_bss-0x1540+0x18B0)
	lw      $t3, %lo(_face_gfx_bss-0x1540+0x18B0)($t3)
	lwc1    $f8, 0x004C($sp)
	sll     $t5, $t3, 2
	subu    $t5, $t5, $t3
	sll     $t5, $t5, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1888)
	addu    $at, $at, $t5
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x1888)($at)
	b       288$
	nop
.globl L801A3A30
L801A3A30:
	cfc1    $t6, $31
	lwc1    $f10, 0x0044($sp)
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f16, $f10
	mfc1    $t8, $f16
	ctc1    $t6, $31
	sw      $t8, 0x0038($sp)
	nop
	lw      $s0, 0x0038($sp)
	nop
	beqz    $s0, 201$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 190$
	nop
	b       212$
	nop
190$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t0, 0x002C($sp)
	li      $t7, 0xB7000000
	sw      $t7, 0x0000($t0)
	lw      $t1, 0x002C($sp)
	li      $t9, 0x2000
	sw      $t9, 0x0004($t1)
	b       212$
	nop
201$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t2, 0xB6000000
	sw      $t2, 0x0000($t4)
	lw      $t5, 0x0028($sp)
	li      $t3, 0x2000
	sw      $t3, 0x0004($t5)
	b       212$
	nop
212$:
	b       288$
	nop
.globl L801A3AE0
L801A3AE0:
	cfc1    $t6, $31
	lwc1    $f18, 0x0044($sp)
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f4, $f18
	mfc1    $t8, $f4
	ctc1    $t6, $31
	sw      $t8, 0x0038($sp)
	nop
	lw      $s0, 0x0038($sp)
	nop
	beqz    $s0, 236$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 234$
	nop
	b       238$
	nop
234$:
	b       241$
	nop
236$:
	b       241$
	nop
238$:
	la.u    $a0, str_face_gfx_801B9400
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9400
241$:
	b       288$
	nop
.globl L801A3B54
L801A3B54:
	cfc1    $t7, $31
	lwc1    $f6, 0x0044($sp)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f6
	mfc1    $t0, $f8
	ctc1    $t7, $31
	sw      $t0, 0x0038($sp)
	nop
	lw      $s0, 0x0038($sp)
	li      $at, 0x0017
	beq     $s0, $at, 266$
	nop
	li      $at, 0x0018
	beq     $s0, $at, 268$
	nop
	li      $at, 0x0019
	beq     $s0, $at, 270$
	nop
	b       272$
	nop
266$:
	b       L801A3BD4
	nop
268$:
	b       L801A3BD4
	nop
270$:
	b       L801A3BD4
	nop
272$:
	la.u    $a0, str_face_gfx_801B9414
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9414
.globl L801A3BD4
L801A3BD4:
	b       288$
	nop
.globl L801A3BDC
L801A3BDC:
	b       288$
	nop
.globl L801A3BE4
L801A3BE4:
	b       288$
	nop
.globl L801A3BEC
L801A3BEC:
	b       288$
	nop
.globl L801A3BF4
L801A3BF4:
	b       288$
	nop
.globl L801A3BFC
L801A3BFC:
	la.u    $a0, str_face_gfx_801B9428
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9428
288$:
	b       290$
	nop
290$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

face_gfx_801A3C20:
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A3C30
face_gfx_801A3C30:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t7, 0x0034($sp)
	li      $t6, 0xB4000000
	sw      $t6, 0x0000($t7)
	lw      $t9, 0x0034($sp)
	li      $t8, 0xFFFF
	sw      $t8, 0x0004($t9)
	lui     $t0, %hi(face_gfx_801A888C)
	lw      $t0, %lo(face_gfx_801A888C)($t0)
	li      $at, 0x3F800000
	lw      $t1, 0x0014($t0)
	lw      $t2, 0x000C($t0)
	mtc1    $at, $f10
	lwc1    $f4, 0x004C($sp)
	lwc1    $f6, 0x0050($sp)
	lwc1    $f8, 0x0054($sp)
	lw      $a1, 0x0040($sp)
	lw      $a2, 0x0044($sp)
	lw      $a3, 0x0048($sp)
	sll     $t3, $t2, 6
	addu    $a0, $t1, $t3
	swc1    $f10, 0x001C($sp)
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	jal     guOrtho
	swc1    $f8, 0x0018($sp)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	li.u    $at, 0x1FFFFFFF
	lw      $t6, 0x000C($t4)
	lw      $t5, 0x0014($t4)
	sll     $t7, $t6, 6
	li.l    $at, 0x1FFFFFFF
	addu    $t8, $t5, $t7
	and     $t9, $t8, $at
	sw      $t9, 0x003C($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	li.u    $t0, 0x01030040
	li.l    $t0, 0x01030040
	sw      $t0, 0x0000($t2)
	lw      $t1, 0x003C($sp)
	lw      $t3, 0x0030($sp)
	nop
	sw      $t1, 0x0004($t3)
	jal     face_gfx_8019B278
	nop
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	li      $at, 0x3F800000
	lw      $t5, 0x000C($t4)
	mtc1    $at, $f16
	lw      $t6, 0x0014($t4)
	sll     $t7, $t5, 6
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f16, 0x0010($sp)
	jal     guRotate
	addu    $a0, $t6, $t7
	lui     $t8, %hi(face_gfx_801A888C)
	lw      $t8, %lo(face_gfx_801A888C)($t8)
	li.u    $at, 0x1FFFFFFF
	lw      $t0, 0x000C($t8)
	lw      $t9, 0x0014($t8)
	sll     $t2, $t0, 6
	li.l    $at, 0x1FFFFFFF
	addu    $t1, $t9, $t2
	and     $t3, $t1, $at
	sw      $t3, 0x0038($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li.u    $t4, 0x01020040
	li.l    $t4, 0x01020040
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x002C($sp)
	nop
	sw      $t6, 0x0004($t7)
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_gfx_801A3464
	li      $a2, 0x0000
	jal     face_gfx_8019B278
	nop
	b       99$
	nop
99$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl face_gfx_801A3DCC
face_gfx_801A3DCC:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a2, 0x0058($sp)
	sw      $a3, 0x005C($sp)
	swc1    $f12, 0x0050($sp)
	swc1    $f14, 0x0054($sp)
	li      $at, 0x3D800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0038($sp)
	lui     $at, %hi(face_gfx_801B539C)
	lwc1    $f6, %lo(face_gfx_801B539C)($at)
	lui     $at, %hi(face_gfx_801B99D8+4)
	lwc1    $f11, %lo(face_gfx_801B99D8+0)($at)
	lwc1    $f10, %lo(face_gfx_801B99D8+4)($at)
	cvt.d.s $f8, $f6
	add.d   $f16, $f8, $f10
	lui     $at, %hi(face_gfx_801B539C)
	cvt.s.d $f18, $f16
	swc1    $f18, %lo(face_gfx_801B539C)($at)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	li      $at, 0x3F800000
	lw      $t7, 0x0014($t6)
	lw      $t8, 0x000C($t6)
	mtc1    $at, $f8
	lwc1    $f4, 0x0058($sp)
	lwc1    $f6, 0x005C($sp)
	lw      $a2, 0x0050($sp)
	lw      $a3, 0x0054($sp)
	sll     $t9, $t8, 6
	addiu   $a1, $sp, 0x004E
	addu    $a0, $t7, $t9
	swc1    $f8, 0x0018($sp)
	swc1    $f4, 0x0010($sp)
	jal     guPerspective
	swc1    $f6, 0x0014($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t1, 0x0034($sp)
	li      $t0, 0xB4000000
	sw      $t0, 0x0000($t1)
	lhu     $t2, 0x004E($sp)
	lw      $t3, 0x0034($sp)
	nop
	sw      $t2, 0x0004($t3)
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	li.u    $at, 0x1FFFFFFF
	lw      $t6, 0x000C($t4)
	lw      $t5, 0x0014($t4)
	sll     $t8, $t6, 6
	li.l    $at, 0x1FFFFFFF
	addu    $t7, $t5, $t8
	and     $t9, $t7, $at
	sw      $t9, 0x0044($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t1, 0x0030($sp)
	li.u    $t0, 0x01030040
	li.l    $t0, 0x01030040
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x0044($sp)
	lw      $t3, 0x0030($sp)
	nop
	sw      $t2, 0x0004($t3)
	jal     face_gfx_8019B278
	nop
	lui     $t4, %hi(face_gfx_801A888C)
	lw      $t4, %lo(face_gfx_801A888C)($t4)
	li      $at, 0x3F800000
	lw      $t5, 0x000C($t4)
	mtc1    $at, $f10
	lw      $t6, 0x0014($t4)
	sll     $t8, $t5, 6
	li      $a1, 0x0000
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f10, 0x0010($sp)
	jal     guRotate
	addu    $a0, $t6, $t8
	lui     $t7, %hi(face_gfx_801A888C)
	lw      $t7, %lo(face_gfx_801A888C)($t7)
	li.u    $at, 0x1FFFFFFF
	lw      $t0, 0x000C($t7)
	lw      $t9, 0x0014($t7)
	sll     $t1, $t0, 6
	li.l    $at, 0x1FFFFFFF
	addu    $t2, $t9, $t1
	and     $t3, $t2, $at
	sw      $t3, 0x0040($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t5, 0x002C($sp)
	li.u    $t4, 0x01020040
	li.l    $t4, 0x01020040
	sw      $t4, 0x0000($t5)
	lw      $t6, 0x0040($sp)
	lw      $t8, 0x002C($sp)
	nop
	sw      $t6, 0x0004($t8)
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_gfx_801A3464
	li      $a2, 0x0000
	jal     face_gfx_8019B278
	nop
	b       112$
	nop
112$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

.globl face_gfx_801A3F9C
face_gfx_801A3F9C:
	addiu   $sp, $sp, -0x0118
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0118($sp)
	sw      $a1, 0x011C($sp)
	sw      $a2, 0x0120($sp)
	sw      $a3, 0x0124($sp)
	lw      $t6, 0x011C($sp)
	li.u    $at, 0x00018000
	lw      $t7, 0x0034($t6)
	li.l    $at, 0x00018000
	and     $t8, $t7, $at
	beqz    $t8, 278$
	nop
	andi    $t9, $t7, 0x1000
	bnez    $t9, 278$
	nop
	lw      $t0, 0x011C($sp)
	nop
	lw      $t1, 0x0034($t0)
	nop
	andi    $t2, $t1, 0x8000
	beqz    $t2, 174$
	nop
	la.u    $a1, str_face_gfx_801B944C
	lw      $a2, 0x0118($sp)
	la.l    $a1, str_face_gfx_801B944C
	jal     sprintf
	addiu   $a0, $sp, 0x0018
	jal     face_stdio_8018C44C
	addiu   $a0, $sp, 0x0018
	lw      $t3, 0x011C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t3)
	lwc1    $f10, 0x0058($t3)
	mul.s   $f8, $f4, $f6
	li      $at, 0x42800000
	mtc1    $at, $f18
	li      $a0, 0x0001
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f16, $f18
	cfc1    $t4, $31
	ctc1    $a0, $31
	nop
	cvt.w.s $f6, $f4
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	beqz    $a0, 70$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f6
	li      $a0, 0x0001
	sub.s   $f6, $f4, $f6
	ctc1    $a0, $31
	nop
	cvt.w.s $f6, $f6
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	bnez    $a0, 68$
	nop
	mfc1    $a0, $f6
	li      $at, 0x80000000
	b       74$
	or      $a0, $a0, $at
68$:
	b       74$
	li      $a0, -0x0001
70$:
	mfc1    $a0, $f6
	nop
	bltz    $a0, 68$
	nop
74$:
	ctc1    $t4, $31
	jal     face_gfx_8019BC88
	li      $a1, 0x0020
	lw      $t5, 0x011C($sp)
	nop
	sw      $v0, 0x0090($t5)
	lw      $t6, 0x011C($sp)
	nop
	lw      $t8, 0x0034($t6)
	nop
	andi    $t7, $t8, 0x0008
	beqz    $t7, 137$
	nop
	lw      $t9, 0x011C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f8, 0x0054($t9)
	lwc1    $f18, 0x0058($t9)
	mul.s   $f16, $f8, $f10
	li      $at, 0x42800000
	mtc1    $at, $f6
	li      $a0, 0x0001
	mul.s   $f4, $f16, $f18
	add.s   $f8, $f4, $f6
	cfc1    $t0, $31
	ctc1    $a0, $31
	nop
	cvt.w.s $f10, $f8
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	beqz    $a0, 127$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f10
	li      $a0, 0x0001
	sub.s   $f10, $f8, $f10
	ctc1    $a0, $31
	nop
	cvt.w.s $f10, $f10
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	bnez    $a0, 125$
	nop
	mfc1    $a0, $f10
	li      $at, 0x80000000
	b       131$
	or      $a0, $a0, $at
125$:
	b       131$
	li      $a0, -0x0001
127$:
	mfc1    $a0, $f10
	nop
	bltz    $a0, 125$
	nop
131$:
	ctc1    $t0, $31
	jal     face_gfx_8019BC88
	li      $a1, 0x0020
	lw      $t1, 0x011C($sp)
	b       142$
	sw      $v0, 0x0094($t1)
137$:
	lw      $t2, 0x011C($sp)
	nop
	lw      $t3, 0x0090($t2)
	nop
	sw      $t3, 0x0094($t2)
142$:
	lw      $t4, 0x011C($sp)
	li      $at, -0x0040
	lw      $t5, 0x0090($t4)
	nop
	addiu   $t6, $t5, 0x003F
	and     $t8, $t6, $at
	sw      $t8, 0x0090($t4)
	lw      $t7, 0x011C($sp)
	li      $at, -0x0040
	lw      $t9, 0x0094($t7)
	nop
	addiu   $t0, $t9, 0x003F
	and     $t1, $t0, $at
	sw      $t1, 0x0094($t7)
	jal     face_stdio_8018C598
	addiu   $a0, $sp, 0x0018
	lw      $t3, 0x011C($sp)
	nop
	lw      $t2, 0x0090($t3)
	nop
	beqz    $t2, 168$
	nop
	lw      $t5, 0x0094($t3)
	nop
	bnez    $t5, 171$
	nop
168$:
	la.u    $a0, str_face_gfx_801B9454
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9454
171$:
	lw      $t6, 0x011C($sp)
	b       179$
	sw      $t6, 0x0088($t6)
174$:
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	lw      $t4, 0x011C($sp)
	nop
	sw      $t8, 0x0088($t4)
179$:
	lw      $t9, 0x011C($sp)
	li      $at, 0x00010000
	lw      $t0, 0x0034($t9)
	nop
	and     $t1, $t0, $at
	beqz    $t1, 270$
	nop
	la.u    $a1, str_face_gfx_801B9478
	lw      $a2, 0x0118($sp)
	la.l    $a1, str_face_gfx_801B9478
	jal     sprintf
	addiu   $a0, $sp, 0x0018
	jal     face_stdio_8018C44C
	addiu   $a0, $sp, 0x0018
	lw      $t7, 0x011C($sp)
	nop
	lw      $t2, 0x0034($t7)
	nop
	andi    $t3, $t2, 0x0010
	beqz    $t3, 266$
	nop
	lw      $t5, 0x011C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0054($t5)
	lwc1    $f6, 0x0058($t5)
	mul.s   $f4, $f16, $f18
	li      $at, 0x42800000
	mtc1    $at, $f10
	li      $a0, 0x0001
	mul.s   $f8, $f4, $f6
	add.s   $f16, $f8, $f10
	cfc1    $t6, $31
	ctc1    $a0, $31
	nop
	cvt.w.s $f18, $f16
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	beqz    $a0, 240$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f18
	li      $a0, 0x0001
	sub.s   $f18, $f16, $f18
	ctc1    $a0, $31
	nop
	cvt.w.s $f18, $f18
	cfc1    $a0, $31
	nop
	andi    $at, $a0, 0x0004
	andi    $a0, $a0, 0x0078
	bnez    $a0, 238$
	nop
	mfc1    $a0, $f18
	li      $at, 0x80000000
	b       244$
	or      $a0, $a0, $at
238$:
	b       244$
	li      $a0, -0x0001
240$:
	mfc1    $a0, $f18
	nop
	bltz    $a0, 238$
	nop
244$:
	ctc1    $t6, $31
	jal     face_gfx_8019BC88
	li      $a1, 0x0040
	lw      $t8, 0x011C($sp)
	nop
	sw      $v0, 0x008C($t8)
	lw      $t4, 0x011C($sp)
	nop
	lw      $t9, 0x008C($t4)
	nop
	bnez    $t9, 259$
	nop
	la.u    $a0, str_face_gfx_801B9480
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9480
259$:
	lw      $t0, 0x011C($sp)
	li      $at, -0x0040
	lw      $t1, 0x008C($t0)
	nop
	addiu   $t7, $t1, 0x003F
	and     $t2, $t7, $at
	sw      $t2, 0x008C($t0)
266$:
	jal     face_stdio_8018C598
	addiu   $a0, $sp, 0x0018
	b       276$
	nop
270$:
	lui     $t3, %hi(face_gfx_801A886C)
	lw      $t3, %lo(face_gfx_801A886C)($t3)
	lw      $t6, 0x011C($sp)
	lw      $t5, 0x008C($t3)
	nop
	sw      $t5, 0x008C($t6)
276$:
	b       283$
	nop
278$:
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	lw      $t4, 0x011C($sp)
	nop
	sw      $t8, 0x0088($t4)
283$:
	lw      $t9, 0x011C($sp)
	nop
	sw      $0, 0x0070($t9)
	lw      $t1, 0x011C($sp)
	nop
	sw      $0, 0x0074($t1)
	lw      $t7, 0x011C($sp)
	nop
	lw      $t2, 0x0034($t7)
	nop
	andi    $t0, $t2, 0x0100
	beqz    $t0, 301$
	nop
	lui     $t3, %hi(face_gfx_801A8870)
	lw      $t3, %lo(face_gfx_801A8870)($t3)
	lw      $t5, 0x011C($sp)
	nop
	sw      $t3, 0x0088($t5)
301$:
	b       303$
	nop
303$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0118
	jr      $ra
	nop

.globl face_gfx_801A4468
face_gfx_801A4468:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $t6, _face_gfx_bss-0x1540+0x1568
	la.l    $t6, _face_gfx_bss-0x1540+0x1568
	sw      $t6, 0x001C($sp)
	la.u    $a0, _face_gfx_bss-0x1540+0x4F10
	la.u    $a1, _face_gfx_bss-0x1540+0x4F28
	la.l    $a1, _face_gfx_bss-0x1540+0x4F28
	la.l    $a0, _face_gfx_bss-0x1540+0x4F10
	jal     osCreateMesgQueue
	li      $a2, 0x000A
	la.u    $a1, _face_gfx_bss-0x1540+0x4F10
	li.u    $a2, 0x33333333
	li.l    $a2, 0x33333333
	la.l    $a1, _face_gfx_bss-0x1540+0x4F10
	jal     osSetEventMesg
	li      $a0, 0x0005
	la.u    $a0, _face_gfx_bss-0x1540+0x4F10
	la.u    $a1, _face_gfx_bss-0x1540+0x1580
	la.u    $a2, _face_gfx_bss-0x1540+0x1540
	la.l    $a2, _face_gfx_bss-0x1540+0x1540
	la.l    $a1, _face_gfx_bss-0x1540+0x1580
	jal     osContInit
	la.l    $a0, _face_gfx_bss-0x1540+0x4F10
	la.u    $a0, _face_gfx_bss-0x1540+0x4F10
	jal     osContStartReadData
	la.l    $a0, _face_gfx_bss-0x1540+0x4F10
	sw      $0, 0x0018($sp)
28$:
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0018($sp)
	nop
	addu    $t9, $t7, $t8
	sb      $0, 0x0000($t9)
	lw      $t0, 0x0018($sp)
	nop
	addiu   $t1, $t0, 0x0001
	sltiu   $at, $t1, 0x0006
	bnez    $at, 28$
	sw      $t1, 0x0018($sp)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_801A451C
face_gfx_801A451C:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl gd_defpup
gd_defpup:
	sw      $a0, 0x0000($sp)
	sw      $a1, 0x0004($sp)
	sw      $a2, 0x0008($sp)
	sw      $a3, 0x000C($sp)
	b       6$
	nop
6$:
	jr      $ra
	nop

.globl face_gfx_801A4550
face_gfx_801A4550:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A4564
face_gfx_801A4564:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A4578
face_gfx_801A4578:
	sw      $a2, 0x0008($sp)
	lui     $t6, %hi(face_gfx_801A8868)
	lw      $t6, %lo(face_gfx_801A8868)($t6)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f4, 0x0054($t6)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17C8)
	div.s   $f8, $f4, $f6
	sub.s   $f10, $f12, $f8
	swc1    $f10, %lo(_face_gfx_bss-0x1540+0x17C8)($at)
	lui     $t7, %hi(face_gfx_801A8868)
	lw      $t7, %lo(face_gfx_801A8868)($t7)
	li      $at, 0x40000000
	mtc1    $at, $f18
	lwc1    $f16, 0x0058($t7)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17CC)
	div.s   $f4, $f16, $f18
	sub.s   $f6, $f4, $f14
	swc1    $f6, %lo(_face_gfx_bss-0x1540+0x17CC)($at)
	lwc1    $f8, 0x0008($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x17D0)
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x17D0)($at)
	b       24$
	nop
24$:
	jr      $ra
	nop

gd_gentexture:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0028($sp)
	lw      $s0, 0x0034($sp)
	li      $at, 0x001D
	beq     $s0, $at, 18$
	nop
	li      $at, 0x001F
	beq     $s0, $at, 21$
	nop
	b       25$
	nop
18$:
	sw      $0, 0x0034($sp)
	b       28$
	nop
21$:
	li      $t7, 0x0003
	sw      $t7, 0x0034($sp)
	b       28$
	nop
25$:
	la.u    $a0, str_face_gfx_801B94A0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B94A0
28$:
	lw      $t8, 0x0038($sp)
	li      $at, 0x0021
	bne     $t8, $at, 40$
	nop
	b       34$
	nop
34$:
	li      $t9, 0x0002
	sw      $t9, 0x0038($sp)
	li      $t0, 0x0010
	sw      $t0, 0x002C($sp)
	b       43$
	nop
40$:
	la.u    $a0, str_face_gfx_801B94BC
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B94BC
43$:
	lui     $s0, %hi(face_gfx_801A8830)
	lw      $s0, %lo(face_gfx_801A8830)($s0)
	lui     $at, %hi(face_gfx_801A8830)
	addiu   $s0, $s0, 0x0001
	sw      $s0, %lo(face_gfx_801A8830)($at)
	lw      $t1, 0x0030($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1700)
	sll     $t2, $s0, 2
	addu    $at, $at, $t2
	sw      $t1, %lo(_face_gfx_bss-0x1540+0x1700)($at)
	jal     gd_startdisplist
	li      $a0, 0x0007
	sw      $v0, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	nop
	bnez    $t3, 63$
	nop
	la.u    $a0, str_face_gfx_801B94D8
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B94D8
63$:
	jal     face_gfx_8019EBAC
	nop
	lui     $t5, %hi(face_gfx_801A8830)
	lw      $t5, %lo(face_gfx_801A8830)($t5)
	lw      $t4, 0x0024($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1740)
	sll     $t6, $t5, 2
	addu    $at, $at, $t6
	sw      $t4, %lo(_face_gfx_bss-0x1540+0x1740)($at)
	lw      $v0, 0x0024($sp)
	b       77$
	nop
	b       77$
	nop
77$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_gfx_801A4724:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	lw      $a0, 0x0040($sp)
	la.u    $a1, str_face_gfx_801B94F8
	jal     gd_fopen
	la.l    $a1, str_face_gfx_801B94F8
	sw      $v0, 0x003C($sp)
	lw      $t6, 0x003C($sp)
	nop
	bnez    $t6, 18$
	nop
	la.u    $a0, str_face_gfx_801B94FC
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_gfx_801B94FC
18$:
	lw      $a0, 0x003C($sp)
	jal     face_stdio_8018E4C4
	nop
	sw      $v0, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	li      $at, 0x0003
	divu    $0, $a0, $at
	mflo    $t7
	move    $a0, $t7
	sll     $t8, $a0, 1
	jal     gd_malloc
	move    $a0, $t8
	sw      $v0, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	nop
	bnez    $t9, 38$
	nop
	la.u    $a0, str_face_gfx_801B9510
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9510
38$:
	lw      $t0, 0x0038($sp)
	nop
	sw      $t0, 0x002C($sp)
	lw      $t1, 0x0034($sp)
	li      $at, 0x0003
	divu    $0, $t1, $at
	sw      $0, 0x0030($sp)
	mflo    $t2
	beqz    $t2, 87$
	nop
48$:
	lw      $a3, 0x003C($sp)
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x0003
	jal     face_stdio_8018E37C
	li      $a2, 0x0001
	li      $t3, 0x00FF
	sb      $t3, 0x0027($sp)
	addiu   $t4, $sp, 0x0028
	lbu     $t5, 0x0002($t4)
	lbu     $t8, 0x0001($t4)
	lbu     $t2, 0x0000($t4)
	sra     $t6, $t5, 3
	sra     $t9, $t8, 3
	sll     $t0, $t9, 6
	sll     $t7, $t6, 11
	lbu     $t8, 0x0027($sp)
	or      $t1, $t7, $t0
	sra     $t3, $t2, 3
	sll     $t5, $t3, 1
	lw      $t0, 0x002C($sp)
	or      $t6, $t5, $t1
	sra     $t9, $t8, 7
	or      $t7, $t6, $t9
	sh      $t7, 0x0000($t0)
	lw      $t4, 0x002C($sp)
	nop
	addiu   $t2, $t4, 0x0002
	sw      $t2, 0x002C($sp)
	lw      $t1, 0x0034($sp)
	li      $at, 0x0003
	divu    $0, $t1, $at
	lw      $t3, 0x0030($sp)
	nop
	addiu   $t5, $t3, 0x0001
	sw      $t5, 0x0030($sp)
	mflo    $t8
	sltu    $at, $t5, $t8
	bnez    $at, 48$
	nop
87$:
	la.u    $a0, str_face_gfx_801B9534
	lw      $a1, 0x0040($sp)
	lw      $a2, 0x0034($sp)
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B9534
	lw      $a0, 0x003C($sp)
	jal     face_stdio_8018E4A8
	nop
	lw      $t6, 0x0050($sp)
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0048($sp)
	lw      $a3, 0x004C($sp)
	jal     gd_gentexture
	sw      $t6, 0x0010($sp)
	sw      $v0, 0x0020($sp)
	la.u    $a0, str_face_gfx_801B9554
	lw      $a1, 0x0040($sp)
	lw      $a2, 0x0020($sp)
	jal     gd_printf
	la.l    $a0, str_face_gfx_801B9554
	lw      $v0, 0x0038($sp)
	b       113$
	nop
	b       113$
	nop
113$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_gfx_801A48F8:
	lw      $t6, 0x0034($a0)
	nop
	andi    $t7, $t6, 0x0040
	beqz    $t7, 7$
	nop
	lui     $at, %hi(_face_gfx_bss-0x1540+0x5074)
	sw      $a0, %lo(_face_gfx_bss-0x1540+0x5074)($at)
7$:
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A4924:
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A4934:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A4948:
	lui     $t6, %hi(face_gfx_801A8804)
	lw      $t6, %lo(face_gfx_801A8804)($t6)
	nop
	beqz    $t6, 10$
	nop
5$:
	lui     $t7, %hi(face_gfx_801A8804)
	lw      $t7, %lo(face_gfx_801A8804)($t7)
	nop
	bnez    $t7, 5$
	nop
10$:
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A4988:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lui     $t6, %hi(face_gfx_801A888C)
	lw      $t6, %lo(face_gfx_801A888C)($t6)
	nop
	sw      $t6, 0x001C($sp)
	lui     $t7, %hi(face_gfx_801A8840)
	lw      $t7, %lo(face_gfx_801A8840)($t7)
	lui     $t9, %hi(_face_gfx_bss-0x1540+0x3EA0)
	sll     $t8, $t7, 2
	addu    $t9, $t9, $t8
	lw      $t9, %lo(_face_gfx_bss-0x1540+0x3EA0)($t9)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t9, %lo(face_gfx_801A888C)($at)
	lw      $a0, 0x0020($sp)
	jal     face_gfx_8019BF08
	nop
	lw      $t0, 0x001C($sp)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t0, %lo(face_gfx_801A888C)($at)
	b       23$
	nop
23$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_801A49F4:
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A4A04
face_gfx_801A4A04:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A4A18
face_gfx_801A4A18:
	addiu   $sp, $sp, -0x0020
	sw      $a0, 0x0018($sp)
	b       4$
	nop
4$:
	jr      $ra
	addiu   $sp, $sp, 0x0020

.globl face_gfx_801A4A30
face_gfx_801A4A30:
	lui     $at, %hi(face_gfx_801A8868)
	sw      $a0, %lo(face_gfx_801A8868)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A4A48:
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A4A58:
	addiu   $sp, $sp, -0x0010
	lui     $t6, %hi(face_gfx_801A8874)
	lw      $t6, %lo(face_gfx_801A8874)($t6)
	nop
	beqz    $t6, 11$
	nop
	lui     $t7, %hi(face_gfx_801A8878)
	lw      $t7, %lo(face_gfx_801A8878)($t7)
	nop
	bnez    $t7, 13$
	nop
11$:
	b       121$
	nop
13$:
	lui     $t8, %hi(face_gfx_801A8874)
	lw      $t8, %lo(face_gfx_801A8874)($t8)
	nop
	lwc1    $f4, 0x003C($t8)
	nop
	swc1    $f4, 0x000C($sp)
	lui     $t9, %hi(face_gfx_801A8874)
	lw      $t9, %lo(face_gfx_801A8874)($t9)
	nop
	lwc1    $f6, 0x0040($t9)
	nop
	swc1    $f6, 0x0008($sp)
	lui     $t0, %hi(face_gfx_801A8878)
	lw      $t0, %lo(face_gfx_801A8878)($t0)
	lwc1    $f8, 0x000C($sp)
	lwc1    $f10, 0x003C($t0)
	nop
	c.lt.s  $f10, $f8
	nop
	bc1f    55$
	nop
	lwc1    $f16, 0x0054($t0)
	nop
	add.s   $f18, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    55$
	nop
	lwc1    $f4, 0x0008($sp)
	lwc1    $f6, 0x0040($t0)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    55$
	nop
	lwc1    $f10, 0x0058($t0)
	nop
	add.s   $f16, $f6, $f10
	c.lt.s  $f4, $f16
	nop
	bc1t    57$
	nop
55$:
	b       121$
	nop
57$:
	lui     $t1, %hi(face_gfx_801A8878)
	lw      $t1, %lo(face_gfx_801A8878)($t1)
	lwc1    $f8, 0x0008($sp)
	lwc1    $f18, 0x0040($t1)
	li      $at, 0x41C80000
	mtc1    $at, $f10
	sub.s   $f6, $f8, $f18
	li      $t3, 0x0001
	div.s   $f4, $f6, $f10
	cfc1    $t2, $31
	ctc1    $t3, $31
	nop
	cvt.w.s $f16, $f4
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	beqz    $t3, 95$
	nop
	li      $at, 0x4F000000
	mtc1    $at, $f16
	li      $t3, 0x0001
	sub.s   $f16, $f4, $f16
	ctc1    $t3, $31
	nop
	cvt.w.s $f16, $f16
	cfc1    $t3, $31
	nop
	andi    $at, $t3, 0x0004
	andi    $t3, $t3, 0x0078
	bnez    $t3, 93$
	nop
	mfc1    $t3, $f16
	li      $at, 0x80000000
	b       99$
	or      $t3, $t3, $at
93$:
	b       99$
	li      $t3, -0x0001
95$:
	mfc1    $t3, $f16
	nop
	bltz    $t3, 93$
	nop
99$:
	ctc1    $t2, $31
	sw      $t3, 0x0004($sp)
	nop
	lui     $t5, %hi(face_gfx_801A887C)
	lw      $t5, %lo(face_gfx_801A887C)($t5)
	lw      $t4, 0x0004($sp)
	nop
	sltu    $at, $t4, $t5
	beqz    $at, 119$
	nop
	lw      $t6, 0x0004($sp)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x3E58)
	sll     $t7, $t6, 2
	addu    $t8, $t8, $t7
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x3E58)($t8)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	ori     $t0, $t9, 0x0010
	sh      $t0, 0x0012($t8)
119$:
	b       121$
	nop
121$:
	jr      $ra
	addiu   $sp, $sp, 0x0010

face_gfx_801A4C44:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_gfx_801A883C)
	lw      $t6, %lo(face_gfx_801A883C)($t6)
	nop
	beqz    $t6, 13$
	nop
	li      $at, 0x41A00000
	lui     $t7, %hi(face_gfx_801A883C)
	lw      $t7, %lo(face_gfx_801A883C)($t7)
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0014($t7)
13$:
	lui     $t8, %hi(face_gfx_801A8834)
	lw      $t8, %lo(face_gfx_801A8834)($t8)
	nop
	beqz    $t8, 29$
	nop
	lui     $at, %hi(face_gfx_801A881C)
	lwc1    $f6, %lo(face_gfx_801A881C)($at)
	li      $at, 0x42480000
	mtc1    $at, $f8
	li      $at, 0x41A00000
	mul.s   $f10, $f6, $f8
	mtc1    $at, $f16
	lui     $t9, %hi(face_gfx_801A8834)
	lw      $t9, %lo(face_gfx_801A8834)($t9)
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0014($t9)
29$:
	lui     $t0, %hi(face_gfx_801A8838)
	lw      $t0, %lo(face_gfx_801A8838)($t0)
	nop
	beqz    $t0, 45$
	nop
	lui     $at, %hi(face_gfx_801A881C)
	lwc1    $f4, %lo(face_gfx_801A881C)($at)
	li      $at, 0x42480000
	mtc1    $at, $f6
	li      $at, 0x41A00000
	mul.s   $f8, $f4, $f6
	mtc1    $at, $f10
	lui     $t1, %hi(face_gfx_801A8838)
	lw      $t1, %lo(face_gfx_801A8838)($t1)
	add.s   $f16, $f8, $f10
	swc1    $f16, 0x0014($t1)
45$:
	la.u    $a0, str_face_gfx_801B957C
	jal     face_stdio_8018D160
	la.l    $a0, str_face_gfx_801B957C
	lui     $at, %hi(face_gfx_801A881C)
	swc1    $f0, %lo(face_gfx_801A881C)($at)
	la.u    $a0, str_face_gfx_801B9584
	jal     face_stdio_8018D160
	la.l    $a0, str_face_gfx_801B9584
	lui     $at, %hi(face_gfx_801A8820)
	swc1    $f0, %lo(face_gfx_801A8820)($at)
	la.u    $a0, str_face_gfx_801B9588
	jal     face_stdio_8018D160
	la.l    $a0, str_face_gfx_801B9588
	lui     $at, %hi(face_gfx_801A8818)
	swc1    $f0, %lo(face_gfx_801A8818)($at)
	b       62$
	nop
62$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A4D4C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x001C($sp)
	lui     $t6, %hi(face_gfx_801A8874)
	lw      $t6, %lo(face_gfx_801A8874)($t6)
	nop
	bnez    $t6, 9$
	nop
	b       207$
	nop
9$:
	lui     $t7, %hi(face_control+0xE8)
	lui     $t8, %hi(face_control+0xDC)
	lw      $t8, %lo(face_control+0xDC)($t8)
	lw      $t7, %lo(face_control+0xE8)($t7)
	nop
	subu    $t9, $t7, $t8
	sltiu   $at, $t9, 0x012C
	beqz    $at, 29$
	nop
	lui     $t0, %hi(face_gfx_801A8874)
	lw      $t0, %lo(face_gfx_801A8874)($t0)
	nop
	lw      $t1, 0x0034($t0)
	nop
	ori     $t2, $t1, 0x0800
	sw      $t2, 0x0034($t0)
	jal     face_sound_80178254
	li      $a0, 0x0001
	b       38$
	nop
29$:
	lui     $t3, %hi(face_gfx_801A8874)
	lw      $t3, %lo(face_gfx_801A8874)($t3)
	li      $at, -0x0801
	lw      $t4, 0x0034($t3)
	nop
	and     $t5, $t4, $at
	sw      $t5, 0x0034($t3)
	jal     face_sound_80178254
	li      $a0, 0x0002
38$:
	lui     $t6, %hi(face_control+0xD0)
	lw      $t6, %lo(face_control+0xD0)($t6)
	lui     $t7, %hi(face_gfx_801A8874)
	mtc1    $t6, $f4
	lw      $t7, %lo(face_gfx_801A8874)($t7)
	cvt.s.w $f6, $f4
	swc1    $f6, 0x003C($t7)
	lui     $t8, %hi(face_control+0xD4)
	lw      $t8, %lo(face_control+0xD4)($t8)
	lui     $t9, %hi(face_gfx_801A8874)
	mtc1    $t8, $f8
	lw      $t9, %lo(face_gfx_801A8874)($t9)
	cvt.s.w $f10, $f8
	swc1    $f10, 0x0040($t9)
	lui     $t2, %hi(face_gfx_801A8840)
	lw      $t2, %lo(face_gfx_801A8840)($t2)
	lui     $t1, %hi(face_gfx_801A8848)
	lw      $t1, %lo(face_gfx_801A8848)($t1)
	sll     $t0, $t2, 2
	addu    $t4, $t1, $t0
	lw      $a0, 0x0048($t4)
	jal     face_gfx_8019E93C
	nop
	lui     $t5, %hi(face_control+0xD8)
	lw      $t5, %lo(face_control+0xD8)($t5)
	nop
	srl     $t3, $t5, 31
	beqz    $t3, 94$
	nop
	cfc1    $t7, $31
	lui     $t6, %hi(face_gfx_801A8874)
	lw      $t6, %lo(face_gfx_801A8874)($t6)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f16, 0x003C($t6)
	lwc1    $f4, 0x0040($t6)
	cvt.w.s $f18, $f16
	la.u    $a0, txt_hand_1
	ctc1    $t7, $31
	mfc1    $a1, $f18
	li      $t9, 0x0020
	cfc1    $t8, $31
	sw      $t9, 0x0010($sp)
	ori     $at, $t8, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	la.l    $a0, txt_hand_1
	cvt.w.s $f6, $f4
	li      $a3, 0x0020
	mfc1    $a2, $f6
	ctc1    $t8, $31
	jal     face_gfx_801A6430
	nop
	b       119$
	nop
94$:
	cfc1    $t1, $31
	lui     $t2, %hi(face_gfx_801A8874)
	lw      $t2, %lo(face_gfx_801A8874)($t2)
	ori     $at, $t1, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f8, 0x003C($t2)
	lwc1    $f16, 0x0040($t2)
	cvt.w.s $f10, $f8
	la.u    $a0, txt_hand_0
	ctc1    $t1, $31
	mfc1    $a1, $f10
	li      $t4, 0x0020
	cfc1    $t0, $31
	sw      $t4, 0x0010($sp)
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	la.l    $a0, txt_hand_0
	cvt.w.s $f18, $f16
	li      $a3, 0x0020
	mfc1    $a2, $f18
	ctc1    $t0, $31
	jal     face_gfx_801A6430
	nop
119$:
	jal     face_gfx_8019EBAC
	nop
	lui     $t5, %hi(face_gfx_801A8874)
	lw      $t5, %lo(face_gfx_801A8874)($t5)
	nop
	lw      $t3, 0x0088($t5)
	lwc1    $f4, 0x003C($t5)
	lwc1    $f6, 0x003C($t3)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    140$
	nop
	lui     $t7, %hi(face_gfx_801A8874)
	lw      $t7, %lo(face_gfx_801A8874)($t7)
	nop
	lw      $t6, 0x0088($t7)
	nop
	lwc1    $f8, 0x003C($t6)
	nop
	swc1    $f8, 0x003C($t7)
140$:
	lui     $t8, %hi(face_gfx_801A8874)
	lw      $t8, %lo(face_gfx_801A8874)($t8)
	nop
	lw      $t9, 0x0088($t8)
	lwc1    $f10, 0x003C($t8)
	lwc1    $f16, 0x003C($t9)
	lwc1    $f18, 0x0054($t9)
	nop
	add.s   $f4, $f16, $f18
	c.lt.s  $f4, $f10
	nop
	bc1f    163$
	nop
	lui     $t1, %hi(face_gfx_801A8874)
	lw      $t1, %lo(face_gfx_801A8874)($t1)
	nop
	lw      $t2, 0x0088($t1)
	nop
	lwc1    $f6, 0x003C($t2)
	lwc1    $f8, 0x0054($t2)
	nop
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x003C($t1)
163$:
	lui     $t0, %hi(face_gfx_801A8874)
	lw      $t0, %lo(face_gfx_801A8874)($t0)
	nop
	lw      $t4, 0x0088($t0)
	lwc1    $f18, 0x0040($t0)
	lwc1    $f10, 0x0040($t4)
	nop
	c.lt.s  $f18, $f10
	nop
	bc1f    182$
	nop
	lui     $t5, %hi(face_gfx_801A8874)
	lw      $t5, %lo(face_gfx_801A8874)($t5)
	nop
	lw      $t3, 0x0088($t5)
	nop
	lwc1    $f4, 0x0040($t3)
	nop
	swc1    $f4, 0x0040($t5)
182$:
	lui     $t6, %hi(face_gfx_801A8874)
	lw      $t6, %lo(face_gfx_801A8874)($t6)
	nop
	lw      $t7, 0x0088($t6)
	lwc1    $f6, 0x0040($t6)
	lwc1    $f8, 0x0040($t7)
	lwc1    $f16, 0x0058($t7)
	nop
	add.s   $f18, $f8, $f16
	c.lt.s  $f18, $f6
	nop
	bc1f    205$
	nop
	lui     $t8, %hi(face_gfx_801A8874)
	lw      $t8, %lo(face_gfx_801A8874)($t8)
	nop
	lw      $t9, 0x0088($t8)
	nop
	lwc1    $f10, 0x0040($t9)
	lwc1    $f4, 0x0058($t9)
	nop
	add.s   $f8, $f10, $f4
	swc1    $f8, 0x0040($t8)
205$:
	b       207$
	nop
207$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_801A5098:
	addiu   $sp, $sp, -0x0018
	lui     $t7, %hi(face_gfx_801A8840)
	lw      $t7, %lo(face_gfx_801A8840)($t7)
	lui     $t6, %hi(face_gfx_801A886C)
	lw      $t6, %lo(face_gfx_801A886C)($t6)
	xori    $t8, $t7, 0x0001
	sll     $t9, $t8, 2
	addu    $t4, $t6, $t9
	lw      $a0, 0x0090($t4)
	nop
	lui     $t7, %hi(face_gfx_801A8840)
	lw      $t7, %lo(face_gfx_801A8840)($t7)
	lui     $t5, %hi(face_gfx_801A886C)
	lw      $t5, %lo(face_gfx_801A886C)($t5)
	sll     $t8, $t7, 2
	addu    $t6, $t5, $t8
	lw      $a1, 0x0090($t6)
	nop
	lui     $t9, %hi(face_gfx_801A886C)
	lw      $t9, %lo(face_gfx_801A886C)($t9)
	nop
	lw      $a2, 0x008C($t9)
	nop
	li.u    $at, 0x00012C00
	li.l    $at, 0x00012C00
	move    $t3, $0
	slt     $at, $t3, $at
	beqz    $at, 106$
	nop
29$:
	sll     $t4, $t3, 1
	addu    $t7, $a0, $t4
	lh      $a3, 0x0000($t7)
	nop
	beqz    $a3, 96$
	nop
	sra     $t0, $a3, 11
	andi    $t5, $t0, 0x001F
	move    $t0, $t5
	sll     $t8, $t0, 16
	move    $t0, $t8
	sra     $t6, $t0, 16
	move    $t0, $t6
	sra     $t1, $a3, 6
	andi    $t9, $t1, 0x001F
	move    $t1, $t9
	sll     $t4, $t1, 16
	move    $t1, $t4
	sra     $t7, $t1, 16
	move    $t1, $t7
	sra     $t2, $a3, 1
	andi    $t5, $t2, 0x001F
	move    $t2, $t5
	sll     $t8, $t2, 16
	move    $t2, $t8
	sra     $t6, $t2, 16
	move    $t2, $t6
	addiu   $t0, $t0, -0x0001
	sll     $t9, $t0, 16
	move    $t0, $t9
	sra     $t4, $t0, 16
	move    $t0, $t4
	bgez    $t0, 64$
	nop
	move    $t0, $0
64$:
	addiu   $t1, $t1, -0x0001
	sll     $t7, $t1, 16
	move    $t1, $t7
	sra     $t5, $t1, 16
	move    $t1, $t5
	bgez    $t1, 72$
	nop
	move    $t1, $0
72$:
	addiu   $t2, $t2, -0x0001
	sll     $t8, $t2, 16
	move    $t2, $t8
	sra     $t6, $t2, 16
	move    $t2, $t6
	bgez    $t2, 80$
	nop
	move    $t2, $0
80$:
	sll     $t9, $t0, 11
	sll     $t4, $t1, 6
	or      $t7, $t9, $t4
	sll     $t5, $t2, 1
	or      $a3, $t7, $t5
	sll     $t8, $a3, 16
	move    $a3, $t8
	sra     $t6, $a3, 16
	move    $a3, $t6
	sll     $t9, $t3, 1
	addu    $t4, $a0, $t9
	sh      $a3, 0x0000($t4)
	sll     $t7, $t3, 1
	addu    $t5, $a1, $t7
	b       100$
	sh      $a3, 0x0000($t5)
96$:
	sll     $t6, $t3, 1
	addu    $t9, $a2, $t6
	li      $t8, 0xFFFC
	sh      $t8, 0x0000($t9)
100$:
	li.u    $at, 0x00012C00
	li.l    $at, 0x00012C00
	addiu   $t3, $t3, 0x0001
	slt     $at, $t3, $at
	bnez    $at, 29$
	nop
106$:
	b       108$
	nop
108$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_gfx_801A5250:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	andi    $t8, $t7, 0x0800
	beqz    $t8, 16$
	nop
	lw      $t9, 0x0018($sp)
	la.u    $a1, face_net_8019353C
	lw      $a2, 0x0028($t9)
	la.l    $a1, face_net_8019353C
	jal     face_object_8017E520
	li      $a0, 0x0020
16$:
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A52A8:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	sw      $t7, 0x0018($sp)
	lw      $a0, 0x0020($sp)
	jal     UpdateView
	nop
	lw      $t8, 0x0018($sp)
	nop
	andi    $t9, $t8, 0x0800
	beqz    $t9, 35$
	nop
	lui     $t0, %hi(face_gfx_801A8840)
	lw      $t0, %lo(face_gfx_801A8840)($t0)
	lui     $t2, %hi(_face_gfx_bss-0x1540+0x3EA0)
	sll     $t1, $t0, 2
	addu    $t2, $t2, $t1
	lw      $t2, %lo(_face_gfx_bss-0x1540+0x3EA0)($t2)
	lui     $at, %hi(face_gfx_801A888C)
	sw      $t2, %lo(face_gfx_801A888C)($at)
	lw      $t3, 0x0020($sp)
	nop
	lw      $t4, 0x0070($t3)
	nop
	beqz    $t4, 35$
	nop
	lw      $t5, 0x0020($sp)
	nop
	lw      $a0, 0x0070($t5)
	jal     face_gfx_801A4988
	nop
35$:
	b       37$
	nop
37$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_gfx_801A534C
face_gfx_801A534C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	la.u    $a0, str_face_gfx_801B9594
	jal     start_timer
	la.l    $a0, str_face_gfx_801B9594
	la.u    $a0, str_face_gfx_801B959C
	jal     start_timer
	la.l    $a0, str_face_gfx_801B959C
	jal     face_gfx_801A49F4
	nop
	jal     face_gfx_8019E89C
	nop
	jal     face_gfx_801A2984
	nop
	jal     face_gfx_8019C240
	nop
	la.u    $a0, str_face_gfx_801B95A0
	jal     start_timer
	la.l    $a0, str_face_gfx_801B95A0
	lui     $a2, %hi(_face_object_bss-0x480+0x570)
	lw      $a2, %lo(_face_object_bss-0x480+0x570)($a2)
	la.u    $a1, face_gfx_801A52A8
	la.l    $a1, face_gfx_801A52A8
	jal     face_object_8017E520
	li      $a0, 0x4000
	la.u    $a0, str_face_gfx_801B95A8
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B95A8
	la.u    $a0, str_face_gfx_801B95B0
	jal     restart_timer
	la.l    $a0, str_face_gfx_801B95B0
	lui     $t6, %hi(face_control+0x54)
	lw      $t6, %lo(face_control+0x54)($t6)
	nop
	bnez    $t6, 42$
	nop
	lui     $a2, %hi(_face_object_bss-0x480+0x570)
	lw      $a2, %lo(_face_object_bss-0x480+0x570)($a2)
	la.u    $a1, face_gfx_801A5250
	la.l    $a1, face_gfx_801A5250
	jal     face_object_8017E520
	li      $a0, 0x4000
42$:
	la.u    $a0, str_face_gfx_801B95B8
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_gfx_801B95B8
	la.u    $a0, str_face_gfx_801B95C0
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_gfx_801B95C0
	jal     face_gfx_801A4948
	nop
	la.u    $a0, str_face_gfx_801B95C4
	jal     restart_timer
	la.l    $a0, str_face_gfx_801B95C4
	jal     face_gfx_801A039C
	nop
	jal     face_gfx_801A4D4C
	nop
	jal     face_gfx_801A4A58
	nop
	la.u    $a0, str_face_gfx_801B95C8
	jal     stop_timer
	la.l    $a0, str_face_gfx_801B95C8
	la.u    $a0, str_face_gfx_801B95D0
	jal     face_stdio_8018D160
	la.l    $a0, str_face_gfx_801B95D0
	lui     $at, %hi(face_gfx_801A8814)
	swc1    $f0, %lo(face_gfx_801A8814)($at)
	la.u    $a0, str_face_gfx_801B95D8
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_gfx_801B95D8
	jal     face_gfx_801A032C
	nop
	b       74$
	nop
74$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_gfx_801A5484:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_gfx_801A886C)
	lw      $t6, %lo(face_gfx_801A886C)($t6)
	lui     $at, %hi(face_gfx_801A8868)
	bnez    $t6, 9$
	sw      $t6, %lo(face_gfx_801A8868)($at)
	b       41$
	nop
9$:
	jal     face_gfx_8019E89C
	nop
	jal     gd_startdisplist
	li      $a0, 0x0008
	lui     $t7, %hi(face_gfx_801A886C)
	lw      $t7, %lo(face_gfx_801A886C)($t7)
	nop
	sw      $v0, 0x0070($t7)
	lui     $a0, %hi(face_gfx_801A886C)
	lw      $a0, %lo(face_gfx_801A886C)($a0)
	jal     face_gfx_801A2588
	nop
	jal     face_gfx_801A2450
	nop
	jal     face_gfx_8019EBAC
	nop
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	nop
	lw      $a0, 0x0070($t8)
	jal     face_gfx_801A4988
	nop
	jal     face_gfx_801A49F4
	nop
	jal     face_gfx_801A4948
	nop
	lui     $t9, %hi(face_gfx_801A886C)
	lw      $t9, %lo(face_gfx_801A886C)($t9)
	nop
	sw      $0, 0x0070($t9)
	b       41$
	nop
41$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl gd_init
gd_init:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	la.u    $a0, str_face_gfx_801B95DC
	jal     imin
	la.l    $a0, str_face_gfx_801B95DC
	lui     $t6, %hi(face_gfx_801A8828)
	lw      $t6, %lo(face_gfx_801A8828)($t6)
	li.u    $at, 0xFFFC1800
	li.l    $at, 0xFFFC1800
	addu    $t7, $t6, $at
	sw      $t7, 0x0034($sp)
	lw      $a0, 0x0034($sp)
	jal     gd_allocblock
	nop
	sw      $v0, 0x002C($sp)
	lw      $a0, 0x0034($sp)
	lw      $a1, 0x002C($sp)
	jal     face_mem_80177E7C
	li      $a2, 0x0010
	li      $t8, 0x00FF
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1864)
	sh      $t8, %lo(_face_gfx_bss-0x1540+0x1864)($at)
	lui     $at, %hi(face_gfx_801A880C)
	sw      $0, %lo(face_gfx_801A880C)($at)
	lui     $at, %hi(face_gfx_801A8810)
	sw      $0, %lo(face_gfx_801A8810)($at)
	lui     $at, %hi(face_gfx_801A8830)
	sw      $0, %lo(face_gfx_801A8830)($at)
	lui     $at, %hi(face_gfx_801A8840)
	sw      $0, %lo(face_gfx_801A8840)($at)
	li      $t9, 0x0001
	lui     $at, %hi(face_gfx_801A884C)
	sw      $t9, %lo(face_gfx_801A884C)($at)
	lui     $at, %hi(face_gfx_801A887C)
	sw      $0, %lo(face_gfx_801A887C)($at)
	lui     $at, %hi(face_gfx_801A8880)
	sw      $0, %lo(face_gfx_801A8880)($at)
	lui     $at, %hi(face_gfx_801A8884)
	sw      $0, %lo(face_gfx_801A8884)($at)
	lui     $at, %hi(face_gfx_801A8890)
	sw      $0, %lo(face_gfx_801A8890)($at)
	lui     $at, %hi(face_gfx_801A8804)
	sw      $0, %lo(face_gfx_801A8804)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x18B0)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x18B0)($at)
	mtc1    $0, $f4
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1870)
	swc1    $f4, %lo(_face_gfx_bss-0x1540+0x1870)($at)
	mtc1    $0, $f6
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1874)
	swc1    $f6, %lo(_face_gfx_bss-0x1540+0x1874)($at)
	mtc1    $0, $f8
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1878)
	swc1    $f8, %lo(_face_gfx_bss-0x1540+0x1878)($at)
	sw      $0, 0x0034($sp)
55$:
	lw      $t0, 0x0034($sp)
	li      $at, 0x3F800000
	sll     $t1, $t0, 2
	mtc1    $at, $f10
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1880)
	addu    $at, $at, $t1
	swc1    $f10, %lo(_face_gfx_bss-0x1540+0x1880)($at)
	lw      $t2, 0x0034($sp)
	mtc1    $0, $f16
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1884)
	addu    $at, $at, $t3
	swc1    $f16, %lo(_face_gfx_bss-0x1540+0x1884)($at)
	lw      $t4, 0x0034($sp)
	mtc1    $0, $f18
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 2
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1888)
	addu    $at, $at, $t5
	swc1    $f18, %lo(_face_gfx_bss-0x1540+0x1888)($at)
	lw      $t6, 0x0034($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1898)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	sw      $0, %lo(_face_gfx_bss-0x1540+0x1898)($at)
	lw      $t9, 0x0034($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x189C)
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $at, $at, $t0
	li      $t8, 0x0078
	sw      $t8, %lo(_face_gfx_bss-0x1540+0x189C)($at)
	lw      $t1, 0x0034($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x18A0)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $at, $at, $t2
	sw      $0, %lo(_face_gfx_bss-0x1540+0x18A0)($at)
	lw      $t3, 0x0034($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0002
	bnez    $at, 55$
	sw      $t4, 0x0034($sp)
	li      $t5, 0x0002
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1868)
	sw      $t5, %lo(_face_gfx_bss-0x1540+0x1868)($at)
	la.u    $a0, _face_gfx_bss-0x1540+0x1820
	jal     face_math_801963C0
	la.l    $a0, _face_gfx_bss-0x1540+0x1820
	la.u    $a0, _face_gfx_bss-0x1540+0x1820
	la.u    $a1, _face_gfx_bss-0x1540+0x17E0
	la.l    $a1, _face_gfx_bss-0x1540+0x17E0
	jal     face_gfx_8019EE34
	la.l    $a0, _face_gfx_bss-0x1540+0x1820
	jal     face_stdio_8018C704
	nop
	jal     face_object_80181678
	nop
	la.u    $a0, str_face_gfx_801B95E4
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_gfx_801B95E4
	jal     face_stdio_8018C954
	nop
	la.u    $a0, str_face_gfx_801B95EC
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_gfx_801B95EC
	li      $t6, 0x012C
	li      $t7, 0x0008
	sw      $t7, 0x0014($sp)
	sw      $t6, 0x0010($sp)
	move    $a0, $0
	li      $a1, 0x076C
	li      $a2, 0x0FA0
	jal     face_gfx_8019D168
	li      $a3, 0x0001
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E88)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x3E88)($at)
	la.u    $a0, str_face_gfx_801B95F8
	jal     face_stdio_8018C598
	la.l    $a0, str_face_gfx_801B95F8
	la.u    $a0, str_face_gfx_801B9604
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_gfx_801B9604
	li      $t9, 0x000A
	li      $t8, 0x0003
	sw      $t8, 0x0014($sp)
	sw      $t9, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x0258
	li      $a2, 0x000A
	jal     face_gfx_8019D168
	li      $a3, 0x00C8
	la.u    $t0, _face_gfx_bss-0x1540+0x3E90
	la.l    $t0, _face_gfx_bss-0x1540+0x3E90
	sw      $v0, 0x0000($t0)
	li      $t1, 0x000A
	li      $t2, 0x0003
	sw      $t2, 0x0014($sp)
	sw      $t1, 0x0010($sp)
	li      $a0, 0x0001
	li      $a1, 0x0258
	li      $a2, 0x000A
	jal     face_gfx_8019D168
	li      $a3, 0x00C8
	la.u    $t3, _face_gfx_bss-0x1540+0x3E90
	la.l    $t3, _face_gfx_bss-0x1540+0x3E90
	sw      $v0, 0x0004($t3)
	la.u    $a0, str_face_gfx_801B9610
	jal     face_stdio_8018C598
	la.l    $a0, str_face_gfx_801B9610
	li      $a0, 0x0001
	li      $a1, 0x0064
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gfx_8019D168
	sw      $0, 0x0014($sp)
	la.u    $t4, _face_gfx_bss-0x1540+0x3EA0
	la.l    $t4, _face_gfx_bss-0x1540+0x3EA0
	sw      $v0, 0x0000($t4)
	li      $a0, 0x0001
	li      $a1, 0x0064
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_gfx_8019D168
	sw      $0, 0x0014($sp)
	la.u    $t5, _face_gfx_bss-0x1540+0x3EA0
	la.l    $t5, _face_gfx_bss-0x1540+0x3EA0
	sw      $v0, 0x0004($t5)
	sw      $0, 0x0034($sp)
196$:
	la.u    $t6, _face_gfx_bss-0x1540+0x3E90
	la.l    $t6, _face_gfx_bss-0x1540+0x3E90
	lw      $a1, 0x0000($t6)
	jal     face_gfx_8019D110
	li      $a0, 0x0001
	lw      $t7, 0x0034($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3EA8)
	sll     $t9, $t7, 3
	addu    $at, $at, $t9
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x3EA8)($at)
	la.u    $t8, _face_gfx_bss-0x1540+0x3E90
	la.l    $t8, _face_gfx_bss-0x1540+0x3E90
	lw      $a1, 0x0004($t8)
	jal     face_gfx_8019D110
	li      $a0, 0x0001
	lw      $t0, 0x0034($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3EAC)
	sll     $t1, $t0, 3
	addu    $at, $at, $t1
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x3EAC)($at)
	lw      $t2, 0x0034($sp)
	nop
	addiu   $t3, $t2, 0x0001
	slti    $at, $t3, 0x0003
	bnez    $at, 196$
	sw      $t3, 0x0034($sp)
	la.u    $a0, str_face_gfx_801B961C
	li.u    $a1, 0x00019008
	li      $t4, 0x0140
	li      $t5, 0x00F0
	sw      $t5, 0x0018($sp)
	sw      $t4, 0x0014($sp)
	li.l    $a1, 0x00019008
	la.l    $a0, str_face_gfx_801B961C
	move    $a2, $0
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_object_8017D3E8
	sw      $0, 0x001C($sp)
	lui     $at, %hi(face_gfx_801A886C)
	sw      $v0, %lo(face_gfx_801A886C)($at)
	lui     $t6, %hi(face_gfx_801A886C)
	lw      $t6, %lo(face_gfx_801A886C)($t6)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x007C($t6)
	lui     $t7, %hi(face_gfx_801A886C)
	lw      $t7, %lo(face_gfx_801A886C)($t7)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0080($t7)
	lui     $t9, %hi(face_gfx_801A886C)
	lw      $t9, %lo(face_gfx_801A886C)($t9)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0084($t9)
	lui     $t8, %hi(face_gfx_801A886C)
	lw      $t8, %lo(face_gfx_801A886C)($t8)
	nop
	sw      $t8, 0x0088($t8)
	lui     $t0, %hi(face_gfx_801A886C)
	lw      $t0, %lo(face_gfx_801A886C)($t0)
	li      $at, -0x0801
	lw      $t1, 0x0034($t0)
	nop
	and     $t2, $t1, $at
	sw      $t2, 0x0034($t0)
	lui     $t3, %hi(face_gfx_801A886C)
	lw      $t3, %lo(face_gfx_801A886C)($t3)
	lui     $at, %hi(face_gfx_801A8868)
	sw      $t3, %lo(face_gfx_801A8868)($at)
	la.u    $t4, face_control+0x00
	la.l    $t4, face_control+0x00
	sw      $t4, 0x002C($sp)
	sw      $0, 0x0034($sp)
271$:
	lw      $t5, 0x002C($sp)
	nop
	sb      $0, 0x0000($t5)
	lw      $t6, 0x002C($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x002C($sp)
	lw      $t9, 0x0034($sp)
	nop
	addiu   $t8, $t9, 0x0001
	sltiu   $at, $t8, 0x00F4
	bnez    $at, 271$
	sw      $t8, 0x0034($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lui     $at, %hi(face_control+0x88)
	swc1    $f10, %lo(face_control+0x88)($at)
	li      $at, 0xC2340000
	mtc1    $at, $f16
	lui     $at, %hi(face_control+0xA0)
	swc1    $f16, %lo(face_control+0xA0)($at)
	li      $at, 0x42340000
	mtc1    $at, $f18
	lui     $at, %hi(face_control+0xAC)
	swc1    $f18, %lo(face_control+0xAC)($at)
	li      $t1, 0x0002
	lui     $at, %hi(face_control+0x00)
	sw      $t1, %lo(face_control+0x00)($at)
	lui     $at, %hi(face_control+0x54)
	sw      $0, %lo(face_control+0x54)($at)
	la.u    $t2, face_control_prev
	la.l    $t2, face_control_prev
	lui     $at, %hi(face_control+0xF0)
	sw      $t2, %lo(face_control+0xF0)($at)
	li      $t0, 0x00A0
	lui     $at, %hi(face_control+0xD0)
	sw      $t0, %lo(face_control+0xD0)($at)
	li      $t3, 0x0078
	lui     $at, %hi(face_control+0xD4)
	sw      $t3, %lo(face_control+0xD4)($at)
	li      $t4, -0x03E8
	lui     $at, %hi(face_control+0xDC)
	sw      $t4, %lo(face_control+0xDC)($at)
	jal     face_gfx_801A0494
	li      $a0, 0x0004
	lui     $at, %hi(_face_gfx_bss-0x1540+0x178C)
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x178C)($at)
	jal     imout
	nop
	b       322$
	nop
322$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

face_gfx_801A5A50:
	addiu   $sp, $sp, -0x0068
	blez    $a1, 16$
	sw      $0, 0x0000($sp)
3$:
	lw      $t6, 0x0000($sp)
	nop
	subu    $t7, $a1, $t6
	addu    $t8, $t7, $a0
	lb      $t9, -0x0001($t8)
	addu    $t0, $sp, $t6
	sb      $t9, 0x0004($t0)
	lw      $t1, 0x0000($sp)
	nop
	addiu   $t2, $t1, 0x0001
	slt     $at, $t2, $a1
	bnez    $at, 3$
	sw      $t2, 0x0000($sp)
16$:
	blez    $a1, 30$
	sw      $0, 0x0000($sp)
18$:
	lw      $t3, 0x0000($sp)
	nop
	addu    $t4, $sp, $t3
	lb      $t4, 0x0004($t4)
	addu    $t5, $a0, $t3
	sb      $t4, 0x0000($t5)
	lw      $t7, 0x0000($sp)
	nop
	addiu   $t8, $t7, 0x0001
	slt     $at, $t8, $a1
	bnez    $at, 18$
	sw      $t8, 0x0000($sp)
30$:
	b       32$
	nop
32$:
	jr      $ra
	addiu   $sp, $sp, 0x0068

.globl face_gfx_801A5AD8
face_gfx_801A5AD8:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A5AEC
face_gfx_801A5AEC:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A5B00
face_gfx_801A5B00:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

.globl face_gfx_801A5B14
face_gfx_801A5B14:
	sh      $0, 0x0000($a0)
	sh      $0, 0x0002($a0)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x4E60)
	sw      $a1, %lo(_face_gfx_bss-0x1540+0x4E60)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x4E68)
	sw      $a0, %lo(_face_gfx_bss-0x1540+0x4E68)($at)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x4E64)
	sw      $0, %lo(_face_gfx_bss-0x1540+0x4E64)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A5B44
face_gfx_801A5B44:
	sll     $a0, $a0, 16
	sra     $a0, $a0, 16
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x4E64)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x4E64)($t7)
	lui     $t6, %hi(_face_gfx_bss-0x1540+0x4E68)
	lw      $t6, %lo(_face_gfx_bss-0x1540+0x4E68)($t6)
	sll     $t8, $t7, 1
	addu    $t9, $t6, $t8
	sh      $a0, 0x0000($t9)
	lui     $t0, %hi(_face_gfx_bss-0x1540+0x4E64)
	lw      $t0, %lo(_face_gfx_bss-0x1540+0x4E64)($t0)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x4E64)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(_face_gfx_bss-0x1540+0x4E64)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_gfx_801A5B8C
face_gfx_801A5B8C:
	sw      $a0, 0x0000($sp)
	lui     $v0, %hi(_face_gfx_bss-0x1540+0x4E64)
	lw      $v0, %lo(_face_gfx_bss-0x1540+0x4E64)($v0)
	li      $at, 0x0003
	div     $0, $v0, $at
	mflo    $t6
	move    $v0, $t6
	b       11$
	nop
	b       11$
	nop
11$:
	jr      $ra
	nop

face_gfx_801A5BC0:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A5BD4:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A5BE8:
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A5BF8:
	sll     $t6, $a0, 2
	lui     $v0, %hi(_face_gfx_bss-0x1540+0x1700)
	addu    $v0, $v0, $t6
	lw      $v0, %lo(_face_gfx_bss-0x1540+0x1700)($v0)
	jr      $ra
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A5C20:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16F8)
	sw      $t6, %lo(_face_gfx_bss-0x1540+0x16F8)($at)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x16FC)
	lui     $t8, %hi(_face_gfx_bss-0x1540+0x16F8)
	lw      $t8, %lo(_face_gfx_bss-0x1540+0x16F8)($t8)
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x16FC)($t7)
	nop
	beq     $t7, $t8, 24$
	nop
	lw      $t9, 0x0018($sp)
	lui     $a0, %hi(_face_gfx_bss-0x1540+0x1740)
	sll     $t0, $t9, 2
	addu    $a0, $a0, $t0
	lw      $a0, %lo(_face_gfx_bss-0x1540+0x1740)($a0)
	jal     face_gfx_8019BF08
	nop
	lui     $t1, %hi(_face_gfx_bss-0x1540+0x16F8)
	lw      $t1, %lo(_face_gfx_bss-0x1540+0x16F8)($t1)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x16FC)
	sw      $t1, %lo(_face_gfx_bss-0x1540+0x16FC)($at)
24$:
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_gfx_801A5C98
face_gfx_801A5C98:
	li      $at, 0x44000000
	mtc1    $at, $f4
	la.u    $t8, _face_gfx_bss-0x1540+0x1780
	mul.s   $f6, $f12, $f4
	la.l    $t8, _face_gfx_bss-0x1540+0x1780
	cfc1    $t6, $31
	nop
	ori     $at, $t6, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f8, $f6
	mfc1    $t7, $f8
	ctc1    $t6, $31
	sh      $t7, 0x0000($t8)
	nop
	li      $at, 0x44000000
	mtc1    $at, $f10
	la.u    $t1, _face_gfx_bss-0x1540+0x1780
	mul.s   $f16, $f14, $f10
	la.l    $t1, _face_gfx_bss-0x1540+0x1780
	cfc1    $t9, $31
	nop
	ori     $at, $t9, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	nop
	cvt.w.s $f18, $f16
	mfc1    $t0, $f18
	ctc1    $t9, $31
	sh      $t0, 0x0002($t1)
	nop
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A5D28:
	lui     $t6, %hi(face_gfx_801A8880)
	lw      $t6, %lo(face_gfx_801A8880)($t6)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x3E80)
	lui     $t8, %hi(face_gfx_801A8880)
	sll     $t7, $t6, 2
	lw      $t8, %lo(face_gfx_801A8880)($t8)
	addu    $at, $at, $t7
	sw      $a0, %lo(_face_gfx_bss-0x1540+0x3E80)($at)
	lui     $at, %hi(face_gfx_801A8880)
	addiu   $t9, $t8, 0x0001
	sw      $t9, %lo(face_gfx_801A8880)($at)
	jr      $ra
	nop
	jr      $ra
	nop

face_gfx_801A5D64:
	addiu   $sp, $sp, -0x0008
	sw      $a2, 0x0010($sp)
	sw      $a3, 0x0014($sp)
	lwc1    $f4, 0x0010($sp)
	li      $at, 0x40900000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0000($sp)
	addiu   $t6, $sp, 0x0000
	lw      $at, 0x0000($t6)
	move    $v0, $a0
	sw      $at, 0x0000($a0)
	lw      $t9, 0x0004($t6)
	b       21$
	sw      $t9, 0x0004($a0)
	b       21$
	nop
21$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_gfx_801A5DC0:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0040($sp)
	sw      $s0, 0x0028($sp)
	la.u    $a0, str_face_gfx_801B9628
	jal     face_dynlist_80186CAC
	la.l    $a0, str_face_gfx_801B9628
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x003C($sp)
	li      $at, 0x41200000
	mtc1    $at, $f12
	li      $at, 0x43660000
	mtc1    $at, $f14
	jal     dSetRelPos
	li      $a2, 0x0000
	la.u    $a0, str_face_gfx_801B9630
	jal     gd_strdup
	la.l    $a0, str_face_gfx_801B9630
	move    $s0, $v0
	move    $a1, $s0
	jal     dSetParmp
	li      $a0, 0x0005
	la.u    $a3, face_gfx_801A8814
	la.l    $a3, face_gfx_801A8814
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	lw      $t7, 0x003C($sp)
	li      $t6, 0x0003
	sw      $t6, 0x0030($t7)
	la.u    $a0, str_face_gfx_801B963C
	jal     dEndGroup
	la.l    $a0, str_face_gfx_801B963C
	la.u    $a0, str_face_gfx_801B9644
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B9644
	sw      $v0, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	la.u    $a0, str_face_gfx_801B964C
	li.u    $a1, 0x000A0018
	li      $t8, 0x0140
	li      $t9, 0x00F0
	sw      $t9, 0x0018($sp)
	sw      $t8, 0x0014($sp)
	li.l    $a1, 0x000A0018
	la.l    $a0, str_face_gfx_801B964C
	li      $a2, 0x0002
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_object_8017D3E8
	sw      $t0, 0x001C($sp)
	lw      $t1, 0x0040($sp)
	nop
	beqz    $t1, 62$
	nop
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0038($sp)
	jal     addto_group
	nop
62$:
	b       64$
	nop
64$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0040

face_gfx_801A5ED0:
	addiu   $sp, $sp, -0x0258
	sw      $ra, 0x002C($sp)
	sw      $a0, 0x0258($sp)
	sw      $s0, 0x0028($sp)
	sw      $0, 0x0240($sp)
	li      $t6, -0x0001
	sw      $t6, 0x0248($sp)
	lw      $t7, 0x0240($sp)
	nop
	bnez    $t7, 148$
	nop
11$:
	la.u    $a1, str_face_gfx_801B9658
	lw      $a2, 0x0248($sp)
	la.l    $a1, str_face_gfx_801B9658
	jal     sprintf
	addiu   $a0, $sp, 0x003C
	jal     face_dynlist_80186CAC
	addiu   $a0, $sp, 0x003C
	li      $t8, 0x0014
	sw      $t8, 0x0244($sp)
	sw      $0, 0x023C($sp)
21$:
	lw      $t9, 0x0248($sp)
	nop
	addiu   $t0, $t9, 0x0001
	sw      $t0, 0x0248($sp)
	lw      $a0, 0x0248($sp)
	jal     face_stdio_8018C790
	nop
	sw      $v0, 0x0038($sp)
	lw      $t1, 0x0038($sp)
	nop
	lw      $t2, 0x0000($t1)
	nop
	beqz    $t2, 83$
	nop
	lw      $t3, 0x0038($sp)
	la.u    $a1, str_face_gfx_801B9660
	lw      $a2, 0x0000($t3)
	la.l    $a1, str_face_gfx_801B9660
	jal     sprintf
	addiu   $a0, $sp, 0x013C
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x0254($sp)
	lw      $t4, 0x0244($sp)
	li      $at, 0x41200000
	mtc1    $t4, $f4
	mtc1    $at, $f12
	li      $a2, 0x0000
	jal     dSetRelPos
	cvt.s.w $f14, $f4
	jal     gd_strdup
	addiu   $a0, $sp, 0x013C
	move    $s0, $v0
	move    $a1, $s0
	jal     dSetParmp
	li      $a0, 0x0005
	lw      $a3, 0x0038($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0002
	jal     dAddValPtr
	addiu   $a3, $a3, 0x000C
	lw      $t6, 0x0254($sp)
	li      $t5, 0x0003
	sw      $t5, 0x0030($t6)
	la.u    $a0, face_gfx_801A5D64
	jal     dAddValProc
	la.l    $a0, face_gfx_801A5D64
	li      $t7, 0x0001
	sw      $t7, 0x023C($sp)
	lw      $t8, 0x0244($sp)
	nop
	addiu   $t9, $t8, 0x000E
	sw      $t9, 0x0244($sp)
	lw      $t0, 0x0244($sp)
	nop
	slti    $at, $t0, 0x00C9
	bnez    $at, 83$
	nop
	b       94$
	nop
83$:
	lw      $t1, 0x0248($sp)
	nop
	slti    $at, $t1, 0x0020
	bnez    $at, 92$
	nop
	li      $t2, 0x0001
	sw      $t2, 0x0240($sp)
	b       94$
	nop
92$:
	b       21$
	nop
94$:
	jal     dEndGroup
	addiu   $a0, $sp, 0x003C
	jal     dUseObj
	addiu   $a0, $sp, 0x003C
	sw      $v0, 0x0250($sp)
	lw      $t3, 0x023C($sp)
	nop
	beqz    $t3, 144$
	nop
	lw      $t7, 0x0250($sp)
	la.u    $a0, str_face_gfx_801B966C
	li.u    $a1, 0x000A6018
	li      $t4, 0x000A
	li      $t5, 0x0140
	li      $t6, 0x00C8
	sw      $t6, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t4, 0x0010($sp)
	li.l    $a1, 0x000A6018
	la.l    $a0, str_face_gfx_801B966C
	li      $a2, 0x0002
	move    $a3, $0
	jal     face_object_8017D3E8
	sw      $t7, 0x001C($sp)
	sw      $v0, 0x024C($sp)
	mtc1    $0, $f6
	lw      $t8, 0x024C($sp)
	nop
	swc1    $f6, 0x007C($t8)
	mtc1    $0, $f8
	lw      $t9, 0x024C($sp)
	nop
	swc1    $f8, 0x0080($t9)
	mtc1    $0, $f10
	lw      $t0, 0x024C($sp)
	nop
	swc1    $f10, 0x0084($t0)
	lw      $a0, 0x0258($sp)
	lw      $a1, 0x0250($sp)
	jal     addto_group
	nop
	lw      $t1, 0x024C($sp)
	li      $at, -0x0801
	lw      $t2, 0x0034($t1)
	nop
	and     $t3, $t2, $at
	sw      $t3, 0x0034($t1)
	lw      $a0, 0x024C($sp)
	jal     face_gfx_801A5D28
	nop
144$:
	lw      $t4, 0x0240($sp)
	nop
	beqz    $t4, 11$
	nop
148$:
	b       150$
	nop
150$:
	lw      $ra, 0x002C($sp)
	lw      $s0, 0x0028($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0258

face_gfx_801A6138:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0040($sp)
	la.u    $a0, str_face_gfx_801B9674
	jal     face_dynlist_80186CAC
	la.l    $a0, str_face_gfx_801B9674
	la.u    $a1, str_face_gfx_801B967C
	la.l    $a1, str_face_gfx_801B967C
	jal     dMakeObj
	li      $a0, 0x000B
	la.u    $t6, _face_gfx_bss-0x1540+0x3E58
	la.l    $t6, _face_gfx_bss-0x1540+0x3E58
	sw      $v0, 0x0000($t6)
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x40A00000
	mtc1    $at, $f12
	mtc1    $0, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42C80000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0006
	jal     dSetColNum
	li      $a0, 0x0002
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x0038($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x41900000
	mtc1    $at, $f14
	jal     dSetRelPos
	li      $a2, 0x0000
	la.u    $a1, str_face_gfx_801B9684
	la.l    $a1, str_face_gfx_801B9684
	jal     dSetParmp
	li      $a0, 0x0005
	la.u    $a0, str_face_gfx_801B968C
	la.l    $a0, str_face_gfx_801B968C
	li      $a1, 0x00040000
	move    $a2, $0
	jal     dAddValPtr
	move    $a3, $0
	la.u    $a1, str_face_gfx_801B9694
	la.l    $a1, str_face_gfx_801B9694
	jal     dMakeObj
	li      $a0, 0x000B
	la.u    $t7, _face_gfx_bss-0x1540+0x3E58
	la.l    $t7, _face_gfx_bss-0x1540+0x3E58
	sw      $v0, 0x0004($t7)
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x41C80000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42C80000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0006
	jal     dSetColNum
	li      $a0, 0x0004
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x0038($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x41900000
	mtc1    $at, $f14
	jal     dSetRelPos
	li      $a2, 0x0000
	la.u    $a1, str_face_gfx_801B969C
	la.l    $a1, str_face_gfx_801B969C
	jal     dSetParmp
	li      $a0, 0x0005
	la.u    $a0, str_face_gfx_801B96A4
	la.l    $a0, str_face_gfx_801B96A4
	li      $a1, 0x00040000
	move    $a2, $0
	jal     dAddValPtr
	move    $a3, $0
	la.u    $a1, str_face_gfx_801B96AC
	la.l    $a1, str_face_gfx_801B96AC
	jal     dMakeObj
	li      $a0, 0x000B
	la.u    $t8, _face_gfx_bss-0x1540+0x3E58
	la.l    $t8, _face_gfx_bss-0x1540+0x3E58
	sw      $v0, 0x0008($t8)
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x42480000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42C80000
	mtc1    $at, $f12
	li      $at, 0x41A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0006
	jal     dSetColNum
	li      $a0, 0x0003
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x0038($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x41900000
	mtc1    $at, $f14
	jal     dSetRelPos
	li      $a2, 0x0000
	la.u    $a1, str_face_gfx_801B96B4
	la.l    $a1, str_face_gfx_801B96B4
	jal     dSetParmp
	li      $a0, 0x0005
	la.u    $a0, str_face_gfx_801B96BC
	la.l    $a0, str_face_gfx_801B96BC
	li      $a1, 0x00040000
	move    $a2, $0
	jal     dAddValPtr
	move    $a3, $0
	li      $t9, 0x0003
	lui     $at, %hi(face_gfx_801A887C)
	sw      $t9, %lo(face_gfx_801A887C)($at)
	la.u    $a0, str_face_gfx_801B96C4
	jal     dEndGroup
	la.l    $a0, str_face_gfx_801B96C4
	la.u    $a0, str_face_gfx_801B96CC
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B96CC
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	la.u    $a0, str_face_gfx_801B96D4
	li      $t0, 0x0014
	li      $t1, 0x006E
	li      $t2, 0x0096
	sw      $t2, 0x0018($sp)
	sw      $t1, 0x0014($sp)
	sw      $t0, 0x0010($sp)
	la.l    $a0, str_face_gfx_801B96D4
	li      $a1, 0x6418
	li      $a2, 0x0002
	li      $a3, 0x0064
	jal     face_object_8017D3E8
	sw      $t3, 0x001C($sp)
	sw      $v0, 0x003C($sp)
	mtc1    $0, $f4
	lw      $t4, 0x003C($sp)
	nop
	swc1    $f4, 0x007C($t4)
	mtc1    $0, $f6
	lw      $t5, 0x003C($sp)
	nop
	swc1    $f6, 0x0080($t5)
	mtc1    $0, $f8
	lw      $t6, 0x003C($sp)
	nop
	swc1    $f8, 0x0084($t6)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0034($sp)
	jal     addto_group
	nop
	lw      $t7, 0x003C($sp)
	lui     $at, %hi(face_gfx_801A8878)
	sw      $t7, %lo(face_gfx_801A8878)($at)
	b       186$
	nop
186$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_gfx_801A6430:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $a3, 0x006C($sp)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0054($sp)
	lw      $t7, 0x0054($sp)
	li      $t6, 0x06000000
	sw      $t6, 0x0000($t7)
	la.u    $a0, gfx_face_801B5468
	jal     osVirtualToPhysical
	la.l    $a0, gfx_face_801B5468
	lw      $t8, 0x0054($sp)
	nop
	sw      $v0, 0x0004($t8)
	lw      $t9, 0x0070($sp)
	sw      $0, 0x0058($sp)
	blez    $t9, 161$
	nop
22$:
	lw      $t0, 0x006C($sp)
	sw      $0, 0x005C($sp)
	blez    $t0, 155$
	nop
26$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0050($sp)
	lw      $t2, 0x0050($sp)
	li      $t1, 0xFD100000
	sw      $t1, 0x0000($t2)
	lw      $t3, 0x0058($sp)
	lw      $t6, 0x0060($sp)
	lw      $t8, 0x005C($sp)
	sll     $t4, $t3, 5
	sll     $t5, $t4, 1
	lw      $t1, 0x0050($sp)
	addu    $t7, $t5, $t6
	sll     $t9, $t8, 1
	addu    $t0, $t7, $t9
	sw      $t0, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x004C($sp)
	lw      $t3, 0x004C($sp)
	li      $t2, 0xF5100000
	sw      $t2, 0x0000($t3)
	lw      $t5, 0x004C($sp)
	li      $t4, 0x07000000
	sw      $t4, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0048($sp)
	lw      $t8, 0x0048($sp)
	li      $t6, 0xE6000000
	sw      $t6, 0x0000($t8)
	lw      $t7, 0x0048($sp)
	nop
	sw      $0, 0x0004($t7)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	li      $t9, 0xF3000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0044($sp)
	li.u    $t1, 0x073FF100
	li.l    $t1, 0x073FF100
	sw      $t1, 0x0004($t2)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0040($sp)
	lw      $t4, 0x0040($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x0040($sp)
	nop
	sw      $0, 0x0004($t5)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x003C($sp)
	lw      $t8, 0x003C($sp)
	li.u    $t6, 0xF5101000
	li.l    $t6, 0xF5101000
	sw      $t6, 0x0000($t8)
	lw      $t7, 0x003C($sp)
	nop
	sw      $0, 0x0004($t7)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0038($sp)
	lw      $t0, 0x0038($sp)
	li      $t9, 0xF2000000
	sw      $t9, 0x0000($t0)
	lw      $t2, 0x0038($sp)
	li.u    $t1, 0x0007C07C
	li.l    $t1, 0x0007C07C
	sw      $t1, 0x0004($t2)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0068($sp)
	lw      $t4, 0x0058($sp)
	lw      $t9, 0x0064($sp)
	addu    $t5, $t3, $t4
	addiu   $t0, $t9, 0x0020
	sll     $t1, $t0, 2
	addiu   $t6, $t5, 0x0020
	sll     $t8, $t6, 2
	andi    $t2, $t1, 0x0FFF
	sll     $t3, $t2, 12
	li      $at, 0xE4000000
	lw      $t6, 0x0034($sp)
	or      $t4, $t3, $at
	andi    $t7, $t8, 0x0FFF
	or      $t5, $t4, $t7
	sw      $t5, 0x0000($t6)
	lw      $t8, 0x0068($sp)
	lw      $t9, 0x0058($sp)
	lw      $t3, 0x0064($sp)
	addu    $t0, $t8, $t9
	sll     $t4, $t3, 2
	andi    $t7, $t4, 0x0FFF
	sll     $t1, $t0, 2
	lw      $t8, 0x0034($sp)
	andi    $t2, $t1, 0x0FFF
	sll     $t5, $t7, 12
	or      $t6, $t5, $t2
	sw      $t6, 0x0004($t8)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $t9, 0xB3000000
	sw      $t9, 0x0000($t0)
	lw      $t1, 0x0030($sp)
	nop
	sw      $0, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x002C($sp)
	lw      $t4, 0x002C($sp)
	li      $t3, 0xB2000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x002C($sp)
	li.u    $t7, 0x04000400
	li.l    $t7, 0x04000400
	sw      $t7, 0x0004($t5)
	lw      $t2, 0x005C($sp)
	lw      $t8, 0x006C($sp)
	addiu   $t6, $t2, 0x0020
	slt     $at, $t6, $t8
	bnez    $at, 26$
	sw      $t6, 0x005C($sp)
155$:
	lw      $t9, 0x0058($sp)
	lw      $t1, 0x0070($sp)
	addiu   $t0, $t9, 0x0020
	slt     $at, $t0, $t1
	bnez    $at, 22$
	sw      $t0, 0x0058($sp)
161$:
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	li      $t3, 0xE7000000
	sw      $t3, 0x0000($t4)
	lw      $t7, 0x0028($sp)
	nop
	sw      $0, 0x0004($t7)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0024($sp)
	lw      $t2, 0x0024($sp)
	li.u    $t5, 0xBA001402
	li.l    $t5, 0xBA001402
	sw      $t5, 0x0000($t2)
	lw      $t6, 0x0024($sp)
	nop
	sw      $0, 0x0004($t6)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x0020($sp)
	lw      $t9, 0x0020($sp)
	li.u    $t8, 0xB900031D
	li.l    $t8, 0xB900031D
	sw      $t8, 0x0000($t9)
	lw      $t1, 0x0020($sp)
	li.u    $t0, 0x00442478
	li.l    $t0, 0x00442478
	sw      $t0, 0x0004($t1)
	jal     face_gfx_8019B158
	nop
	sw      $v0, 0x001C($sp)
	lw      $t4, 0x001C($sp)
	li      $t3, 0xBB000000
	sw      $t3, 0x0000($t4)
	lw      $t5, 0x001C($sp)
	li.u    $t7, 0x80008000
	li.l    $t7, 0x80008000
	sw      $t7, 0x0004($t5)
	b       203$
	nop
203$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

face_gfx_801A676C:
	addiu   $sp, $sp, -0x0038
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0038($sp)
	la.u    $a1, str_face_gfx_801B96E0
	la.l    $a1, str_face_gfx_801B96E0
	jal     face_shape_8019797C
	move    $a0, $0
	lui     $at, %hi(face_gfx_801A8848)
	sw      $v0, %lo(face_gfx_801A8848)($at)
	jal     gd_startdisplist
	li      $a0, 0x0007
	lui     $t6, %hi(face_gfx_801A8848)
	lw      $t6, %lo(face_gfx_801A8848)($t6)
	nop
	sw      $v0, 0x0048($t6)
	la.u    $a0, txt_hand_0
	li      $t7, 0x0020
	sw      $t7, 0x0010($sp)
	la.l    $a0, txt_hand_0
	li      $a1, 0x0064
	li      $a2, 0x0064
	jal     face_gfx_801A6430
	li      $a3, 0x0020
	jal     face_gfx_8019EBAC
	nop
	jal     gd_startdisplist
	li      $a0, 0x0007
	lui     $t8, %hi(face_gfx_801A8848)
	lw      $t8, %lo(face_gfx_801A8848)($t8)
	nop
	sw      $v0, 0x004C($t8)
	la.u    $a0, txt_hand_0
	li      $t9, 0x0020
	sw      $t9, 0x0010($sp)
	la.l    $a0, txt_hand_0
	li      $a1, 0x0064
	li      $a2, 0x0064
	jal     face_gfx_801A6430
	li      $a3, 0x0020
	jal     face_gfx_8019EBAC
	nop
	la.u    $a0, str_face_gfx_801B96E8
	jal     face_dynlist_80186CAC
	la.l    $a0, str_face_gfx_801B96E8
	li      $a0, 0x0001
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x002C($sp)
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     dSetInitPos
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0003
	la.u    $a0, face_gfx_801A8848
	jal     dSetShapePtrPtr
	la.l    $a0, face_gfx_801A8848
	la.u    $a0, str_face_gfx_801B96F0
	jal     dEndGroup
	la.l    $a0, str_face_gfx_801B96F0
	la.u    $a0, str_face_gfx_801B96F8
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B96F8
	sw      $v0, 0x0030($sp)
	lw      $t2, 0x0030($sp)
	la.u    $a0, str_face_gfx_801B9700
	li.u    $a1, 0x000E0018
	li      $t0, 0x0020
	li      $t1, 0x0020
	sw      $t1, 0x0018($sp)
	sw      $t0, 0x0014($sp)
	li.l    $a1, 0x000E0018
	la.l    $a0, str_face_gfx_801B9700
	li      $a2, 0x0002
	move    $a3, $0
	sw      $0, 0x0010($sp)
	jal     face_object_8017D3E8
	sw      $t2, 0x001C($sp)
	sw      $v0, 0x0034($sp)
	lw      $t3, 0x0034($sp)
	li      $at, -0x0801
	lw      $t4, 0x0034($t3)
	nop
	and     $t5, $t4, $at
	sw      $t5, 0x0034($t3)
	lw      $t6, 0x0034($sp)
	lui     $at, %hi(face_gfx_801A8874)
	sw      $t6, %lo(face_gfx_801A8874)($at)
	lw      $t7, 0x0038($sp)
	nop
	beqz    $t7, 96$
	nop
	lw      $a0, 0x0038($sp)
	lw      $a1, 0x0030($sp)
	jal     addto_group
	nop
96$:
	b       98$
	nop
98$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0038
	jr      $ra
	nop

face_gfx_801A6904:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x00100000
	lw      $t7, 0x0034($t6)
	nop
	and     $t8, $t7, $at
	beqz    $t8, 12$
	nop
	b       16$
	nop
12$:
	jal     face_stdio_8018C86C
	nop
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_gfx_801A6954:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0024($sp)
	la.u    $a0, str_face_gfx_801B970C
	jal     face_dynlist_80186CAC
	la.l    $a0, str_face_gfx_801B970C
	la.u    $a1, str_face_gfx_801B9714
	la.l    $a1, str_face_gfx_801B9714
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x41A00000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B971C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B971C
	sw      $v0, 0x0064($sp)
	lw      $t7, 0x0064($sp)
	li      $t6, 0x0001
	sw      $t6, 0x005C($t7)
	la.u    $a1, str_face_gfx_801B9724
	la.l    $a1, str_face_gfx_801B9724
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x428C0000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B972C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B972C
	sw      $v0, 0x0060($sp)
	lw      $t9, 0x0060($sp)
	li      $t8, 0x0009
	sw      $t8, 0x005C($t9)
	la.u    $a1, str_face_gfx_801B9734
	la.l    $a1, str_face_gfx_801B9734
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x42F00000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B973C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B973C
	sw      $v0, 0x005C($sp)
	lw      $t1, 0x005C($sp)
	li      $t0, 0x0001
	sw      $t0, 0x005C($t1)
	la.u    $a1, str_face_gfx_801B9744
	la.l    $a1, str_face_gfx_801B9744
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x432A0000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B974C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B974C
	sw      $v0, 0x0058($sp)
	lw      $t3, 0x0058($sp)
	li      $t2, 0x0009
	sw      $t2, 0x005C($t3)
	la.u    $a1, str_face_gfx_801B9754
	la.l    $a1, str_face_gfx_801B9754
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x435C0000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B975C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B975C
	sw      $v0, 0x0054($sp)
	lw      $t5, 0x0054($sp)
	li      $t4, 0x0001
	sw      $t4, 0x005C($t5)
	la.u    $a1, str_face_gfx_801B9764
	la.l    $a1, str_face_gfx_801B9764
	jal     dMakeObj
	li      $a0, 0x000B
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	li      $at, 0x43870000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetWorldPos
	li      $a2, 0x0000
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x40A00000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	lui     $a1, %hi(face_gfx_801A8824)
	lw      $a1, %lo(face_gfx_801A8824)($a1)
	jal     dSetParmf
	li      $a0, 0x0003
	la.u    $a3, face_gfx_801A8824
	la.l    $a3, face_gfx_801A8824
	move    $a0, $0
	move    $a1, $0
	jal     dAddValPtr
	li      $a2, 0x0002
	la.u    $a0, str_face_gfx_801B976C
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B976C
	sw      $v0, 0x0050($sp)
	lw      $t7, 0x0050($sp)
	li      $t6, 0x0009
	sw      $t6, 0x005C($t7)
	sw      $0, 0x0048($sp)
246$:
	la.u    $a1, str_face_gfx_801B9774
	lw      $a2, 0x0048($sp)
	la.l    $a1, str_face_gfx_801B9774
	jal     sprintf
	addiu   $a0, $sp, 0x0028
	lw      $a0, 0x0048($sp)
	jal     get_timernum
	nop
	sw      $v0, 0x004C($sp)
	li      $a0, 0x000B
	jal     dMakeObj
	addiu   $a1, $sp, 0x0028
	jal     face_dynlist_8018A530
	li      $a0, 0x0008
	lw      $t8, 0x0048($sp)
	li      $at, 0x41A00000
	sll     $t9, $t8, 4
	subu    $t9, $t9, $t8
	addiu   $t0, $t9, 0x000F
	mtc1    $t0, $f4
	mtc1    $at, $f12
	li      $a2, 0x0000
	jal     dSetWorldPos
	cvt.s.w $f14, $f4
	li      $at, 0x42480000
	mtc1    $at, $f12
	li      $at, 0x41600000
	mtc1    $at, $f14
	jal     dSetScale
	li      $a2, 0x0000
	jal     dSetType
	li      $a0, 0x0004
	li      $a0, 0x0002
	jal     dSetParmf
	li      $a1, 0x0000
	li      $a0, 0x0003
	jal     dSetParmf
	li      $a1, 0x3F800000
	lw      $a3, 0x004C($sp)
	move    $a0, $0
	move    $a1, $0
	li      $a2, 0x0002
	jal     dAddValPtr
	addiu   $a3, $a3, 0x0014
	jal     dUseObj
	addiu   $a0, $sp, 0x0028
	lw      $t1, 0x0048($sp)
	lui     $at, %hi(_face_gfx_bss-0x1540+0x1588)
	sll     $t2, $t1, 2
	addu    $at, $at, $t2
	sw      $v0, %lo(_face_gfx_bss-0x1540+0x1588)($at)
	lw      $t5, 0x0048($sp)
	lw      $t3, 0x004C($sp)
	lui     $t7, %hi(_face_gfx_bss-0x1540+0x1588)
	sll     $t6, $t5, 2
	addu    $t7, $t7, $t6
	lw      $t7, %lo(_face_gfx_bss-0x1540+0x1588)($t7)
	lw      $t4, 0x001C($t3)
	nop
	sw      $t4, 0x005C($t7)
	li      $a0, 0x000C
	jal     dMakeObj
	move    $a1, $0
	sw      $v0, 0x0074($sp)
	li      $at, 0x40A00000
	mtc1    $at, $f12
	li      $at, 0x41600000
	mtc1    $at, $f14
	jal     dSetRelPos
	li      $a2, 0x0000
	lw      $t8, 0x004C($sp)
	li      $a0, 0x0005
	lw      $a1, 0x0018($t8)
	jal     dSetParmp
	nop
	addiu   $a0, $sp, 0x0028
	li      $a1, 0x00040000
	move    $a2, $0
	jal     dAddValPtr
	move    $a3, $0
	lw      $t0, 0x0074($sp)
	li      $t9, 0x0003
	sw      $t9, 0x0030($t0)
	lw      $t1, 0x0048($sp)
	nop
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0020
	bnez    $at, 246$
	sw      $t2, 0x0048($sp)
	la.u    $a0, str_face_gfx_801B977C
	jal     dEndGroup
	la.l    $a0, str_face_gfx_801B977C
	la.u    $a0, str_face_gfx_801B9784
	jal     dUseObj
	la.l    $a0, str_face_gfx_801B9784
	sw      $v0, 0x0070($sp)
	lw      $t4, 0x0070($sp)
	la.u    $a0, str_face_gfx_801B978C
	li.u    $a1, 0x000E0018
	li      $t3, 0x000A
	li      $t5, 0x0140
	li      $t6, 0x010E
	sw      $t6, 0x0018($sp)
	sw      $t5, 0x0014($sp)
	sw      $t3, 0x0010($sp)
	li.l    $a1, 0x000E0018
	la.l    $a0, str_face_gfx_801B978C
	li      $a2, 0x0002
	move    $a3, $0
	jal     face_object_8017D3E8
	sw      $t4, 0x001C($sp)
	sw      $v0, 0x0068($sp)
	mtc1    $0, $f6
	lw      $t7, 0x0068($sp)
	nop
	swc1    $f6, 0x007C($t7)
	mtc1    $0, $f8
	lw      $t8, 0x0068($sp)
	nop
	swc1    $f8, 0x0080($t8)
	mtc1    $0, $f10
	lw      $t9, 0x0068($sp)
	nop
	swc1    $f10, 0x0084($t9)
	lw      $t0, 0x0068($sp)
	li      $at, -0x0801
	lw      $t1, 0x0034($t0)
	nop
	and     $t2, $t1, $at
	sw      $t2, 0x0034($t0)
	lw      $t5, 0x0068($sp)
	la.u    $t3, face_gfx_801A6904
	la.l    $t3, face_gfx_801A6904
	sw      $t3, 0x0098($t5)
	lw      $a0, 0x0068($sp)
	jal     face_gfx_801A5D28
	nop
	b       387$
	nop
	b       387$
	nop
387$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

face_gfx_801A6F70:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A6F84:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A6F98:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
5$:
	lw      $t6, 0x0038($sp)
	nop
	slti    $at, $t6, 0x1001
	bnez    $at, 12$
	sw      $t6, 0x002C($sp)
	li      $t7, 0x1000
	sw      $t7, 0x002C($sp)
12$:
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x002C($sp)
	la.u    $t0, _face_gfx_bss-0x1540+0x4FA8
	la.l    $t0, _face_gfx_bss-0x1540+0x4FA8
	la.u    $a0, _face_gfx_bss-0x1540+0x5060
	lw      $a3, 0x0030($sp)
	la.l    $a0, _face_gfx_bss-0x1540+0x5060
	sw      $t0, 0x0018($sp)
	move    $a1, $0
	move    $a2, $0
	sw      $t8, 0x0010($sp)
	jal     osPiStartDma
	sw      $t9, 0x0014($sp)
	la.u    $a0, _face_gfx_bss-0x1540+0x4FA8
	la.u    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a1, _face_gfx_bss-0x1540+0x505C
	la.l    $a0, _face_gfx_bss-0x1540+0x4FA8
	jal     osRecvMesg
	li      $a2, 0x0001
	lw      $t1, 0x0030($sp)
	lw      $t2, 0x002C($sp)
	nop
	addu    $t3, $t1, $t2
	sw      $t3, 0x0030($sp)
	lw      $t4, 0x0034($sp)
	lw      $t5, 0x002C($sp)
	nop
	addu    $t6, $t4, $t5
	sw      $t6, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	nop
	addiu   $t8, $t7, -0x1000
	sw      $t8, 0x0038($sp)
	lw      $t9, 0x0038($sp)
	nop
	bgtz    $t9, 5$
	nop
	b       51$
	nop
51$:
	lw      $ra, 0x0024($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl load_dynlist
load_dynlist:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $s0, 0x0020($sp)
	li      $t6, -0x0001
	sw      $t6, 0x0038($sp)
	lw      $s0, 0x0038($sp)
	lui     $t8, %hi(face_gfx_801A8894+4)
	addiu   $s0, $s0, 0x0001
	sll     $t7, $s0, 3
	addu    $t8, $t8, $t7
	lw      $t8, %lo(face_gfx_801A8894+4)($t8)
	sw      $s0, 0x0038($sp)
	beqz    $t8, 35$
	nop
15$:
	lw      $t9, 0x0038($sp)
	lui     $t1, %hi(face_gfx_801A8894+4)
	sll     $t0, $t9, 3
	addu    $t1, $t1, $t0
	lw      $t1, %lo(face_gfx_801A8894+4)($t1)
	lw      $t2, 0x0050($sp)
	nop
	bne     $t1, $t2, 26$
	nop
	b       35$
	nop
26$:
	lw      $s0, 0x0038($sp)
	lui     $t4, %hi(face_gfx_801A8894+4)
	addiu   $s0, $s0, 0x0001
	sll     $t3, $s0, 3
	addu    $t4, $t4, $t3
	lw      $t4, %lo(face_gfx_801A8894+4)($t4)
	sw      $s0, 0x0038($sp)
	bnez    $t4, 15$
	nop
35$:
	lw      $t5, 0x0038($sp)
	lui     $t7, %hi(face_gfx_801A8894+4)
	sll     $t6, $t5, 3
	addu    $t7, $t7, $t6
	lw      $t7, %lo(face_gfx_801A8894+4)($t7)
	nop
	bnez    $t7, 46$
	nop
	la.u    $a0, str_face_gfx_801B9798
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9798
46$:
	lw      $t8, 0x0038($sp)
	lui     $t0, %hi(face_gfx_801A8894+0)
	sll     $t9, $t8, 3
	addu    $t0, $t0, $t9
	lw      $t0, %lo(face_gfx_801A8894+0)($t0)
	li      $at, 0x0003
	bne     $t0, $at, 64$
	nop
	b       56$
	nop
56$:
	la.u    $t1, _FaceDataSegmentRomStart
	la.l    $t1, _FaceDataSegmentRomStart
	sw      $t1, 0x0040($sp)
	la.u    $t2, _FaceDataSegmentRomEnd
	la.l    $t2, _FaceDataSegmentRomEnd
	sw      $t2, 0x003C($sp)
	b       67$
	nop
64$:
	la.u    $a0, str_face_gfx_801B97C4
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B97C4
67$:
	lw      $t3, 0x003C($sp)
	lw      $t4, 0x0040($sp)
	nop
	subu    $t5, $t3, $t4
	sw      $t5, 0x004C($sp)
	lw      $a0, 0x004C($sp)
	li      $at, 0x00010000
	jal     face_gfx_8019BD90
	addu    $a0, $a0, $at
	sw      $v0, 0x0048($sp)
	lw      $t6, 0x0048($sp)
	nop
	bnez    $t6, 84$
	sw      $t6, 0x0044($sp)
	la.u    $a0, str_face_gfx_801B97E0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B97E0
84$:
	lw      $t7, 0x0048($sp)
	li      $at, 0x00010000
	addu    $t8, $t7, $at
	li      $at, 0xFFFF0000
	and     $t9, $t8, $at
	sw      $t9, 0x0048($sp)
	lw      $a0, 0x0040($sp)
	lw      $a1, 0x0048($sp)
	lw      $a2, 0x004C($sp)
	jal     face_gfx_801A6F98
	nop
	jal     osUnmapTLBAll
	nop
	lw      $t0, 0x004C($sp)
	nop
	srl     $t1, $t0, 16
	srl     $t2, $t1, 1
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0034($sp)
	lw      $t4, 0x0034($sp)
	nop
	slti    $at, $t4, 0x001F
	bnez    $at, 111$
	nop
	la.u    $a0, str_face_gfx_801B9804
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9804
111$:
	lw      $t5, 0x0034($sp)
	sw      $0, 0x0038($sp)
	blez    $t5, 143$
	nop
115$:
	lw      $t6, 0x0038($sp)
	li      $at, 0x04000000
	sll     $t7, $t6, 1
	sll     $t8, $t7, 16
	lw      $t9, 0x0048($sp)
	addu    $a2, $t8, $at
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	addu    $t0, $t9, $t8
	and     $a3, $t0, $at
	li      $at, 0x00010000
	addu    $t1, $t0, $at
	li.u    $at, 0x00FFFFFF
	li.l    $at, 0x00FFFFFF
	and     $t2, $t1, $at
	li.u    $a1, 0x0001E000
	li      $t3, -0x0001
	sw      $t3, 0x0014($sp)
	li.l    $a1, 0x0001E000
	sw      $t2, 0x0010($sp)
	jal     osMapTLB
	move    $a0, $t6
	lw      $t4, 0x0038($sp)
	lw      $t6, 0x0034($sp)
	addiu   $t5, $t4, 0x0001
	slt     $at, $t5, $t6
	bnez    $at, 115$
	sw      $t5, 0x0038($sp)
143$:
	lw      $a0, 0x0050($sp)
	jal     proc_dynlist
	nop
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x0044($sp)
	jal     gd_free
	nop
	jal     osUnmapTLBAll
	nop
	lw      $v0, 0x0030($sp)
	b       157$
	nop
	b       157$
	nop
157$:
	lw      $ra, 0x0024($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

face_gfx_801A72F8:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_gfx_801A730C:
	addiu   $sp, $sp, -0x00B8
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x00B8($sp)
	sw      $s3, 0x0030($sp)
	sw      $s2, 0x002C($sp)
	sw      $s1, 0x0028($sp)
	sw      $s0, 0x0024($sp)
	swc1    $f23, 0x0018($sp)
	swc1    $f22, 0x001C($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lw      $t6, 0x00B8($sp)
	nop
	lw      $t7, 0x021C($t6)
	nop
	bnez    $t7, 22$
	nop
	jal     make_group
	move    $a0, $0
	lw      $t8, 0x00B8($sp)
	nop
	sw      $v0, 0x021C($t8)
22$:
	lw      $a1, 0x00B8($sp)
	la.u    $a0, str_face_gfx_801B9824
	la.l    $a0, str_face_gfx_801B9824
	jal     face_math_801970E8
	addiu   $a1, $a1, 0x00BC
	lw      $t9, 0x00B8($sp)
	mtc1    $0, $f6
	lwc1    $f4, 0x00BC($t9)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    37$
	nop
	b       41$
	neg.s   $f22, $f4
37$:
	lw      $t0, 0x00B8($sp)
	nop
	lwc1    $f22, 0x00BC($t0)
	nop
41$:
	lw      $t1, 0x00B8($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x00C8($t1)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    51$
	nop
	b       55$
	neg.s   $f20, $f8
51$:
	lw      $t2, 0x00B8($sp)
	nop
	lwc1    $f20, 0x00C8($t2)
	nop
55$:
	li      $at, 0x41800000
	mtc1    $at, $f18
	add.s   $f16, $f20, $f22
	nop
	div.s   $f6, $f16, $f18
	swc1    $f6, 0x0064($sp)
	lw      $t3, 0x00B8($sp)
	mtc1    $0, $f10
	lwc1    $f4, 0x00C4($t3)
	nop
	c.lt.s  $f4, $f10
	nop
	bc1f    71$
	nop
	b       75$
	neg.s   $f22, $f4
71$:
	lw      $t4, 0x00B8($sp)
	nop
	lwc1    $f22, 0x00C4($t4)
	nop
75$:
	lw      $t5, 0x00B8($sp)
	mtc1    $0, $f16
	lwc1    $f8, 0x00D0($t5)
	nop
	c.lt.s  $f8, $f16
	nop
	bc1f    85$
	nop
	b       89$
	neg.s   $f20, $f8
85$:
	lw      $t6, 0x00B8($sp)
	nop
	lwc1    $f20, 0x00D0($t6)
	nop
89$:
	li      $at, 0x41800000
	mtc1    $at, $f6
	add.s   $f18, $f20, $f22
	nop
	div.s   $f10, $f18, $f6
	swc1    $f10, 0x006C($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f4, 0x006C($sp)
	lw      $t7, 0x00B8($sp)
	div.s   $f8, $f4, $f16
	lwc1    $f18, 0x00C4($t7)
	nop
	add.s   $f6, $f18, $f8
	swc1    $f6, 0x00A8($sp)
	sw      $0, 0x00B4($sp)
105$:
	li      $at, 0x40000000
	mtc1    $at, $f4
	lwc1    $f10, 0x0064($sp)
	lw      $t8, 0x00B8($sp)
	div.s   $f16, $f10, $f4
	lwc1    $f18, 0x00BC($t8)
	nop
	add.s   $f8, $f18, $f16
	swc1    $f8, 0x00AC($sp)
	sw      $0, 0x00B0($sp)
115$:
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x0064($sp)
	lwc1    $f18, 0x00AC($sp)
	div.s   $f4, $f6, $f10
	sub.s   $f16, $f18, $f4
	swc1    $f16, 0x0090($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0094($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f6, 0x006C($sp)
	lwc1    $f4, 0x00A8($sp)
	div.s   $f18, $f6, $f10
	sub.s   $f16, $f4, $f18
	swc1    $f16, 0x0098($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x0064($sp)
	lwc1    $f4, 0x00AC($sp)
	div.s   $f10, $f8, $f6
	add.s   $f18, $f10, $f4
	swc1    $f18, 0x009C($sp)
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x00A0($sp)
	li      $at, 0x40000000
	mtc1    $at, $f6
	lwc1    $f8, 0x006C($sp)
	lwc1    $f4, 0x00A8($sp)
	div.s   $f10, $f8, $f6
	add.s   $f18, $f10, $f4
	swc1    $f18, 0x00A4($sp)
	move    $a0, $0
	addiu   $a1, $sp, 0x0090
	jal     face_object_8017C810
	move    $a2, $0
	sw      $v0, 0x0088($sp)
	lw      $t9, 0x00B8($sp)
	lw      $a1, 0x0088($sp)
	lw      $a0, 0x021C($t9)
	jal     addto_group
	nop
	jal     make_group
	move    $a0, $0
	lw      $t0, 0x0088($sp)
	nop
	sw      $v0, 0x002C($t0)
	lwc1    $f16, 0x00AC($sp)
	lwc1    $f8, 0x0064($sp)
	nop
	add.s   $f6, $f16, $f8
	swc1    $f6, 0x00AC($sp)
	lw      $t1, 0x00B0($sp)
	nop
	addiu   $t2, $t1, 0x0001
	slti    $at, $t2, 0x0010
	bnez    $at, 115$
	sw      $t2, 0x00B0($sp)
	lwc1    $f10, 0x00A8($sp)
	lwc1    $f4, 0x006C($sp)
	nop
	add.s   $f18, $f10, $f4
	swc1    $f18, 0x00A8($sp)
	lw      $t3, 0x00B4($sp)
	nop
	addiu   $t4, $t3, 0x0001
	slti    $at, $t4, 0x0010
	bnez    $at, 105$
	sw      $t4, 0x00B4($sp)
	lw      $t5, 0x00B8($sp)
	nop
	lw      $t6, 0x01CC($t5)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, 204$
	nop
194$:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x005C($sp)
	lw      $t8, 0x005C($sp)
	nop
	sw      $0, 0x0018($t8)
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 194$
	nop
204$:
	sw      $0, 0x00B4($sp)
	lw      $t9, 0x00B8($sp)
	nop
	lw      $t0, 0x021C($t9)
	nop
	lw      $s1, 0x001C($t0)
	nop
	beqz    $s1, 283$
	nop
213$:
	lw      $t1, 0x0008($s1)
	nop
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	nop
	sw      $t2, 0x0088($sp)
	sw      $0, 0x007C($sp)
	sw      $0, 0x0080($sp)
	lw      $t3, 0x00B8($sp)
	nop
	lw      $t4, 0x01CC($t3)
	nop
	lw      $s2, 0x001C($t4)
	nop
	beqz    $s2, 259$
	nop
229$:
	lw      $t5, 0x0008($s2)
	nop
	sw      $t5, 0x004C($sp)
	lw      $t6, 0x007C($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x007C($sp)
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0088($sp)
	addiu   $a0, $a0, 0x0028
	jal     face_object_8017EF9C
	addiu   $a1, $a1, 0x0014
	beqz    $v0, 255$
	nop
	lw      $t9, 0x004C($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0018($t9)
	lw      $t0, 0x0088($sp)
	lw      $a1, 0x004C($sp)
	lw      $a0, 0x002C($t0)
	jal     addto_group
	nop
	lw      $t1, 0x0080($sp)
	nop
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x0080($sp)
255$:
	lw      $s2, 0x0004($s2)
	nop
	bnez    $s2, 229$
	nop
259$:
	lw      $t3, 0x0080($sp)
	nop
	bnez    $t3, 270$
	nop
	lw      $t4, 0x00B8($sp)
	lw      $a1, 0x0054($sp)
	lw      $a0, 0x021C($t4)
	jal     face_object_8017C010
	nop
	b       279$
	nop
270$:
	lw      $t5, 0x00B4($sp)
	la.u    $a0, str_face_gfx_801B983C
	lw      $a1, 0x0080($sp)
	lw      $a2, 0x007C($sp)
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x00B4($sp)
	la.l    $a0, str_face_gfx_801B983C
	jal     gd_printf
	move    $a3, $t5
279$:
	lw      $s1, 0x0004($s1)
	nop
	bnez    $s1, 213$
	nop
283$:
	lw      $t7, 0x00B8($sp)
	nop
	lw      $t8, 0x01CC($t7)
	nop
	lw      $s3, 0x001C($t8)
	nop
	beqz    $s3, 312$
	nop
291$:
	lw      $t9, 0x0008($s3)
	nop
	sw      $t9, 0x0044($sp)
	lw      $t0, 0x0044($sp)
	nop
	lw      $t1, 0x0018($t0)
	nop
	bnez    $t1, 308$
	nop
	lw      $a1, 0x0044($sp)
	la.u    $a0, str_face_gfx_801B9858
	la.l    $a0, str_face_gfx_801B9858
	jal     face_math_801970E8
	addiu   $a1, $a1, 0x0028
	la.u    $a0, str_face_gfx_801B9860
	jal     face_stdio_8018D298
	la.l    $a0, str_face_gfx_801B9860
308$:
	lw      $s3, 0x0004($s3)
	nop
	bnez    $s3, 291$
	nop
312$:
	b       314$
	nop
314$:
	lw      $ra, 0x0034($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	lwc1    $f23, 0x0018($sp)
	lwc1    $f22, 0x001C($sp)
	lw      $s0, 0x0024($sp)
	lw      $s1, 0x0028($sp)
	lw      $s2, 0x002C($sp)
	lw      $s3, 0x0030($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00B8

face_gfx_801A7820:
	jr      $ra
	nop
	jr      $ra
	nop
