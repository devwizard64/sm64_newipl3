.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

face_draw_80178280:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	jal     face_gfx_801A047C
	li      $a0, 0x0002
	li      $a0, 0x000C
	li      $a1, 0x3F000000
	li      $a2, 0x3F000000
	jal     gd_setproperty
	li      $a3, 0x3F000000
	li      $a0, 0x0010
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       35$
	nop
	li      $a0, 0x0011
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	li      $a0, 0x0016
	li      $a1, 0x41C00000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	li      $a0, 0x0010
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       35$
	nop
	b       35$
	nop
35$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017831C:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0048($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	lw      $s0, 0x001C($t7)
	nop
	beqz    $s0, 170$
	nop
12$:
	lw      $t8, 0x0008($s0)
	nop
	sw      $t8, 0x0020($sp)
	lui     $t9, %hi(_face_draw_bss-0x210+0x298)
	lw      $t9, %lo(_face_draw_bss-0x210+0x298)($t9)
	nop
	lw      $t0, 0x001C($t9)
	nop
	lw      $t1, 0x0008($t0)
	nop
	sw      $t1, 0x0028($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f4, 0x0074($t2)
	nop
	swc1    $f4, 0x003C($sp)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f6, 0x0078($t3)
	nop
	swc1    $f6, 0x0040($sp)
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f8, 0x007C($t4)
	nop
	swc1    $f8, 0x0044($sp)
	lw      $t5, 0x0020($sp)
	nop
	sw      $t5, 0x0038($sp)
	lw      $t6, 0x0038($sp)
	nop
	lw      $a0, 0x0034($t6)
	lw      $a1, 0x0030($t6)
	addiu   $a0, $a0, 0x0024
	jal     face_math_80194EF8
	addiu   $a1, $a1, 0x0020
	swc1    $f0, 0x0034($sp)
	lw      $t7, 0x0038($sp)
	addiu   $a1, $sp, 0x003C
	lw      $a0, 0x0034($t7)
	jal     face_math_80194EF8
	addiu   $a0, $a0, 0x0024
	swc1    $f0, 0x0030($sp)
	lw      $t8, 0x0038($sp)
	lwc1    $f10, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	lw      $t9, 0x0034($t8)
	sub.s   $f18, $f10, $f16
	lwc1    $f4, 0x0024($t9)
	lwc1    $f8, 0x003C($sp)
	mul.s   $f6, $f4, $f18
	sub.s   $f10, $f8, $f6
	swc1    $f10, 0x003C($sp)
	lw      $t0, 0x0038($sp)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f4, 0x0034($sp)
	lw      $t1, 0x0034($t0)
	sub.s   $f18, $f16, $f4
	lwc1    $f8, 0x0028($t1)
	lwc1    $f10, 0x0040($sp)
	mul.s   $f6, $f8, $f18
	sub.s   $f16, $f10, $f6
	swc1    $f16, 0x0040($sp)
	lw      $t2, 0x0038($sp)
	lwc1    $f4, 0x0030($sp)
	lwc1    $f8, 0x0034($sp)
	lw      $t3, 0x0034($t2)
	sub.s   $f18, $f4, $f8
	lwc1    $f10, 0x002C($t3)
	lwc1    $f16, 0x0044($sp)
	mul.s   $f6, $f10, $f18
	sub.s   $f4, $f16, $f6
	swc1    $f4, 0x0044($sp)
	lw      $t4, 0x0038($sp)
	lwc1    $f8, 0x003C($sp)
	lw      $t5, 0x0030($t4)
	nop
	swc1    $f8, 0x0020($t5)
	lw      $t6, 0x0038($sp)
	lwc1    $f10, 0x0040($sp)
	lw      $t7, 0x0030($t6)
	nop
	swc1    $f10, 0x0024($t7)
	lw      $t8, 0x0038($sp)
	lwc1    $f18, 0x0044($sp)
	lw      $t9, 0x0030($t8)
	nop
	swc1    $f18, 0x0028($t9)
	lwc1    $f16, 0x0030($sp)
	lwc1    $f6, 0x0034($sp)
	mtc1    $0, $f8
	sub.s   $f4, $f16, $f6
	c.lt.s  $f4, $f8
	nop
	bc1f    111$
	nop
	neg.s   $f10, $f4
	b       116$
	swc1    $f10, 0x002C($sp)
111$:
	lwc1    $f18, 0x0030($sp)
	lwc1    $f16, 0x0034($sp)
	nop
	sub.s   $f6, $f18, $f16
	swc1    $f6, 0x002C($sp)
116$:
	li      $at, 0x44160000
	mtc1    $at, $f4
	lwc1    $f8, 0x002C($sp)
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    128$
	nop
	li      $at, 0x44160000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
128$:
	lui     $at, %hi(face_draw_801B58B0+4)
	lwc1    $f18, 0x002C($sp)
	lwc1    $f7, %lo(face_draw_801B58B0+0)($at)
	lwc1    $f6, %lo(face_draw_801B58B0+4)($at)
	cvt.d.s $f16, $f18
	nop
	div.d   $f8, $f16, $f6
	li      $at, 0x3FF00000
	mtc1    $at, $f5
	mtc1    $0, $f4
	nop
	sub.d   $f10, $f4, $f8
	cvt.s.d $f18, $f10
	swc1    $f18, 0x002C($sp)
	lw      $t0, 0x0028($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x005C($t0)
	lw      $t1, 0x0038($sp)
	mul.s   $f4, $f16, $f6
	lw      $t2, 0x0030($t1)
	nop
	swc1    $f4, 0x002C($t2)
	lw      $t3, 0x0028($sp)
	lwc1    $f10, 0x002C($sp)
	lwc1    $f8, 0x0060($t3)
	lw      $t4, 0x0038($sp)
	mul.s   $f18, $f8, $f10
	lw      $t5, 0x0030($t4)
	nop
	swc1    $f18, 0x0030($t5)
	lw      $t6, 0x0028($sp)
	lwc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x0064($t6)
	lw      $t7, 0x0038($sp)
	mul.s   $f4, $f16, $f6
	lw      $t8, 0x0030($t7)
	nop
	swc1    $f4, 0x0034($t8)
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 12$
	nop
170$:
	b       172$
	nop
172$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

Draw_Shape:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	la.u    $a0, str_face_draw_801B5610
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5610
	lui     $t6, %hi(_face_draw_bss-0x210+0x3D0)
	lw      $t6, %lo(_face_draw_bss-0x210+0x3D0)($t6)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_draw_bss-0x210+0x3D0)($at)
	lw      $t8, 0x0030($sp)
	nop
	bnez    $t8, 20$
	nop
	b       216$
	nop
20$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0024($sp)
	swc1    $f4, 0x0020($sp)
	swc1    $f4, 0x001C($sp)
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0002
	beqz    $t0, 50$
	nop
	lwc1    $f12, 0x0044($sp)
	lwc1    $f14, 0x0048($sp)
	lw      $a2, 0x004C($sp)
	jal     face_gfx_8019F2DC
	nop
	lwc1    $f6, 0x001C($sp)
	lwc1    $f8, 0x0044($sp)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x001C($sp)
	lwc1    $f16, 0x0020($sp)
	lwc1    $f18, 0x0048($sp)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x0024($sp)
	lwc1    $f8, 0x004C($sp)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0024($sp)
50$:
	lw      $t1, 0x0034($sp)
	nop
	andi    $t2, $t1, 0x0010
	beqz    $t2, 80$
	nop
	lw      $t3, 0x006C($sp)
	nop
	beqz    $t3, 80$
	nop
	lw      $a0, 0x006C($sp)
	jal     face_gfx_8019F054
	nop
	lw      $t4, 0x006C($sp)
	lwc1    $f16, 0x001C($sp)
	lwc1    $f18, 0x0030($t4)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x001C($sp)
	lw      $t5, 0x006C($sp)
	lwc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x0034($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0020($sp)
	lw      $t6, 0x006C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x0038($t6)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0024($sp)
80$:
	lw      $t7, 0x0034($sp)
	nop
	andi    $t8, $t7, 0x0008
	beqz    $t8, 115$
	nop
	lwc1    $f6, 0x0060($sp)
	mtc1    $0, $f8
	nop
	c.eq.s  $f6, $f8
	nop
	bc1t    95$
	nop
	lwc1    $f12, 0x0060($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x0079
95$:
	lwc1    $f10, 0x005C($sp)
	mtc1    $0, $f16
	nop
	c.eq.s  $f10, $f16
	nop
	bc1t    105$
	nop
	lwc1    $f12, 0x005C($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x0078
105$:
	lwc1    $f18, 0x0064($sp)
	mtc1    $0, $f4
	nop
	c.eq.s  $f18, $f4
	nop
	bc1t    115$
	nop
	lwc1    $f12, 0x0064($sp)
	jal     face_gfx_8019F404
	li      $a1, 0x007A
115$:
	lw      $t9, 0x0068($sp)
	nop
	beqz    $t9, 144$
	nop
	li      $t0, 0x0001
	lui     $at, %hi(_face_draw_bss-0x210+0x2E4)
	sw      $t0, %lo(_face_draw_bss-0x210+0x2E4)($at)
	lw      $a0, 0x0068($sp)
	jal     face_draw_80178ED8
	nop
	lui     $at, %hi(face_draw_801A8284)
	sw      $v0, %lo(face_draw_801A8284)($at)
	lui     $t1, %hi(face_draw_801A8284)
	lw      $t1, %lo(face_draw_801A8284)($t1)
	nop
	beqz    $t1, 139$
	nop
	lui     $a1, %hi(face_draw_801A8284)
	lw      $a1, %lo(face_draw_801A8284)($a1)
	li      $a0, -0x0001
	jal     face_gfx_801A09AC
	li      $a2, 0x0040
	b       142$
	nop
139$:
	la.u    $a0, str_face_draw_801B561C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B561C
142$:
	b       148$
	nop
144$:
	lui     $at, %hi(_face_draw_bss-0x210+0x2E4)
	sw      $0, %lo(_face_draw_bss-0x210+0x2E4)($at)
	lui     $at, %hi(face_draw_801A8284)
	sw      $0, %lo(face_draw_801A8284)($at)
148$:
	lui     $t2, %hi(_face_draw_bss-0x210+0x460)
	lw      $t2, %lo(_face_draw_bss-0x210+0x460)($t2)
	nop
	beqz    $t2, 186$
	nop
	lw      $t3, 0x0030($sp)
	nop
	lw      $t4, 0x002C($t3)
	nop
	beqz    $t4, 186$
	nop
	lw      $t5, 0x006C($sp)
	nop
	beqz    $t5, 178$
	nop
	lw      $t6, 0x006C($sp)
	nop
	lwc1    $f6, 0x0030($t6)
	nop
	swc1    $f6, 0x001C($sp)
	lw      $t7, 0x006C($sp)
	nop
	lwc1    $f8, 0x0034($t7)
	nop
	swc1    $f8, 0x0020($sp)
	lw      $t8, 0x006C($sp)
	nop
	lwc1    $f10, 0x0038($t8)
	b       183$
	swc1    $f10, 0x0024($sp)
178$:
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0024($sp)
	swc1    $f16, 0x0020($sp)
	swc1    $f16, 0x001C($sp)
183$:
	lw      $a0, 0x0030($sp)
	jal     updateshaders
	addiu   $a1, $sp, 0x001C
186$:
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0004
	beqz    $t0, 196$
	nop
	lwc1    $f12, 0x0050($sp)
	lwc1    $f14, 0x0054($sp)
	lw      $a2, 0x0058($sp)
	jal     face_gfx_8019F224
	nop
196$:
	lw      $t1, 0x0034($sp)
	nop
	andi    $t2, $t1, 0x0001
	beqz    $t2, 206$
	nop
	lwc1    $f12, 0x0038($sp)
	lwc1    $f14, 0x003C($sp)
	lw      $a2, 0x0040($sp)
	jal     face_gfx_8019F398
	nop
206$:
	lw      $a0, 0x0030($sp)
	jal     face_draw_8017A358
	nop
	lui     $at, %hi(_face_draw_bss-0x210+0x2E4)
	sw      $0, %lo(_face_draw_bss-0x210+0x2E4)($at)
	la.u    $a0, str_face_draw_801B5638
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5638
	b       216$
	nop
216$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

Draw_Shape2D:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	sw      $a3, 0x003C($sp)
	la.u    $a0, str_face_draw_801B5644
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5644
	lui     $t6, %hi(_face_draw_bss-0x210+0x3D0)
	lw      $t6, %lo(_face_draw_bss-0x210+0x3D0)($t6)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D0)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_draw_bss-0x210+0x3D0)($at)
	lw      $t8, 0x0030($sp)
	nop
	bnez    $t8, 20$
	nop
	b       57$
	nop
20$:
	lw      $t9, 0x0034($sp)
	nop
	andi    $t0, $t9, 0x0002
	beqz    $t0, 49$
	nop
	lwc1    $f4, 0x0044($sp)
	nop
	swc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	swc1    $f6, 0x0020($sp)
	lwc1    $f8, 0x004C($sp)
	nop
	swc1    $f8, 0x0024($sp)
	lui     $t1, %hi(face_draw_801A8288)
	lw      $t1, %lo(face_draw_801A8288)($t1)
	nop
	beqz    $t1, 44$
	nop
	lui     $a1, %hi(face_draw_801A8288)
	lw      $a1, %lo(face_draw_801A8288)($a1)
	addiu   $a0, $sp, 0x001C
	jal     face_math_80196570
	addiu   $a1, $a1, 0x00E8
44$:
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     face_gfx_8019F2DC
	nop
49$:
	lw      $a0, 0x0030($sp)
	jal     face_draw_8017A358
	nop
	la.u    $a0, str_face_draw_801B5650
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5650
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_draw_80178A40
face_draw_80178A40:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x00A0($sp)
	lui     $t6, %hi(_face_draw_bss-0x210+0x2E0)
	lw      $t6, %lo(_face_draw_bss-0x210+0x2E0)($t6)
	li      $at, 0x001B
	bne     $t6, $at, 10$
	nop
	b       131$
	nop
10$:
	lw      $t7, 0x00A0($sp)
	la.u    $t8, face_draw_801A8278
	lwc1    $f4, 0x005C($t7)
	la.l    $t8, face_draw_801A8278
	swc1    $f4, 0x0000($t8)
	lw      $t9, 0x00A0($sp)
	la.u    $t0, face_draw_801A8278
	lwc1    $f6, 0x0060($t9)
	la.l    $t0, face_draw_801A8278
	swc1    $f6, 0x0004($t0)
	lw      $t1, 0x00A0($sp)
	la.u    $t2, face_draw_801A8278
	lwc1    $f8, 0x0064($t1)
	la.l    $t2, face_draw_801A8278
	swc1    $f8, 0x0008($t2)
	lw      $t3, 0x00A0($sp)
	nop
	lw      $t4, 0x002C($t3)
	nop
	andi    $t5, $t4, 0x0002
	beqz    $t5, 73$
	nop
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0054
	lw      $t6, 0x00A0($sp)
	nop
	lwc1    $f10, 0x0080($t6)
	nop
	neg.s   $f16, $f10
	swc1    $f16, 0x0094($sp)
	lw      $t7, 0x00A0($sp)
	nop
	lwc1    $f18, 0x0084($t7)
	nop
	neg.s   $f4, $f18
	swc1    $f4, 0x0098($sp)
	lw      $t8, 0x00A0($sp)
	nop
	lwc1    $f6, 0x0088($t8)
	nop
	neg.s   $f8, $f6
	swc1    $f8, 0x009C($sp)
	addiu   $a0, $sp, 0x0054
	addiu   $a1, $sp, 0x0094
	jal     face_math_80194498
	li      $a2, 0x0000
	lw      $t9, 0x00A0($sp)
	lui     $at, %hi(face_draw_801B58B8+4)
	lwc1    $f10, 0x0038($t9)
	lwc1    $f19, %lo(face_draw_801B58B8+0)($at)
	lwc1    $f18, %lo(face_draw_801B58B8+4)($at)
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x004C($sp)
	lui     $t0, %hi(face_shape_801A8474)
	lw      $t0, %lo(face_shape_801A8474)($t0)
	nop
	sw      $t0, 0x0048($sp)
	addiu   $t1, $sp, 0x0054
	b       99$
	sw      $t1, 0x0050($sp)
73$:
	li      $at, 0x3F800000
	mtc1    $at, $f8
	nop
	swc1    $f8, 0x004C($sp)
	lw      $t2, 0x00A0($sp)
	nop
	lw      $t3, 0x009C($t2)
	nop
	sw      $t3, 0x0048($sp)
	sw      $0, 0x0050($sp)
	lui     $t4, %hi(face_draw_801A8330)
	lw      $t4, %lo(face_draw_801A8330)($t4)
	lui     $at, %hi(face_draw_801A8330)
	addiu   $t5, $t4, 0x0001
	sw      $t5, %lo(face_draw_801A8330)($at)
	slti    $at, $t5, 0x0011
	bnez    $at, 94$
	nop
	li      $t6, 0x0001
	lui     $at, %hi(face_draw_801A8330)
	sw      $t6, %lo(face_draw_801A8330)($at)
94$:
	lui     $t7, %hi(face_draw_801A8330)
	lw      $t7, %lo(face_draw_801A8330)($t7)
	lw      $t8, 0x0048($sp)
	nop
	sw      $t7, 0x0050($t8)
99$:
	li      $at, 0x3F800000
	mtc1    $at, $f10
	lw      $t9, 0x00A0($sp)
	swc1    $f10, 0x0010($sp)
	lwc1    $f16, 0x0074($t9)
	mtc1    $0, $f10
	swc1    $f16, 0x0014($sp)
	lwc1    $f18, 0x0078($t9)
	mtc1    $0, $f16
	swc1    $f18, 0x0018($sp)
	lwc1    $f4, 0x007C($t9)
	mtc1    $0, $f18
	swc1    $f4, 0x001C($sp)
	mtc1    $0, $f4
	mtc1    $0, $f6
	mtc1    $0, $f8
	lw      $a0, 0x0048($sp)
	li      $t0, -0x0001
	sw      $t0, 0x0038($sp)
	sw      $0, 0x003C($sp)
	li      $a1, 0x0002
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	swc1    $f10, 0x0028($sp)
	swc1    $f16, 0x002C($sp)
	swc1    $f18, 0x0030($sp)
	swc1    $f4, 0x0034($sp)
	swc1    $f6, 0x0020($sp)
	jal     Draw_Shape2D
	swc1    $f8, 0x0024($sp)
	b       131$
	nop
131$:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl Draw_Material
Draw_Material:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x0028($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0024($sp)
	li      $at, 0x0010
	bne     $t8, $at, 53$
	nop
	lui     $t9, %hi(_face_draw_bss-0x210+0x3D8)
	lw      $t9, %lo(_face_draw_bss-0x210+0x3D8)($t9)
	nop
	beqz    $t9, 51$
	nop
	lwc1    $f4, 0x0030($t9)
	mtc1    $0, $f6
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    51$
	nop
	lui     $t0, %hi(face_draw_801A8288)
	lw      $t0, %lo(face_draw_801A8288)($t0)
	nop
	beqz    $t0, 46$
	nop
	lw      $t1, 0x0028($sp)
	lui     $t2, %hi(_face_draw_bss-0x210+0x3D8)
	lw      $t2, %lo(_face_draw_bss-0x210+0x3D8)($t2)
	lui     $a1, %hi(face_draw_801A8288)
	la.u    $t3, _face_draw_bss-0x210+0x3E0
	lw      $a0, 0x005C($t1)
	la.l    $t3, _face_draw_bss-0x210+0x3E0
	lw      $a1, %lo(face_draw_801A8288)($a1)
	la.u    $a3, _face_draw_bss-0x210+0x3F0
	addiu   $t4, $t2, 0x005C
	sw      $t4, 0x0014($sp)
	la.l    $a3, _face_draw_bss-0x210+0x3F0
	sw      $t3, 0x0010($sp)
	jal     face_gfx_801A05B8
	addiu   $a2, $t2, 0x0074
	b       49$
	nop
46$:
	la.u    $a0, str_face_draw_801B565C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B565C
49$:
	b       53$
	nop
51$:
	li      $t5, 0x0004
	sw      $t5, 0x0024($sp)
53$:
	lui     $t6, %hi(_face_draw_bss-0x210+0x2E4)
	lw      $t6, %lo(_face_draw_bss-0x210+0x2E4)($t6)
	nop
	bnez    $t6, 65$
	nop
	lw      $t7, 0x0028($sp)
	lw      $a2, 0x0024($sp)
	lw      $a0, 0x005C($t7)
	jal     face_gfx_801A09AC
	addiu   $a1, $t7, 0x003C
	b       71$
	nop
65$:
	lw      $t8, 0x0028($sp)
	lui     $a1, %hi(face_draw_801A8284)
	lw      $a1, %lo(face_draw_801A8284)($a1)
	lw      $a0, 0x005C($t8)
	jal     face_gfx_801A09AC
	li      $a2, 0x0040
71$:
	b       73$
	nop
73$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_draw_80178D90:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x005C($t6)
	nop
	bnez    $t7, 17$
	nop
	lw      $t8, 0x0018($sp)
	nop
	lw      $a0, 0x0028($t8)
	jal     face_gfx_801A0494
	nop
	lw      $t9, 0x0018($sp)
	nop
	sw      $v0, 0x005C($t9)
17$:
	b       19$
	nop
19$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80178DEC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t7, 0x0030($t6)
	nop
	blez    $t7, 53$
	nop
9$:
	lw      $t9, 0x0024($sp)
	lw      $t8, 0x0028($sp)
	sll     $t0, $t9, 2
	addu    $t1, $t8, $t0
	lw      $t2, 0x0034($t1)
	nop
	sw      $t2, 0x0020($sp)
	lw      $t3, 0x0020($sp)
	li      $at, 0x0027
	bne     $t3, $at, 25$
	nop
	la.u    $a0, str_face_draw_801B5688
	jal     gd_printf
	la.l    $a0, str_face_draw_801B5688
	b       55$
	nop
25$:
	lw      $t4, 0x0020($sp)
	li      $at, 0x3F800000
	lw      $t5, 0x0044($t4)
	nop
	bne     $t5, $at, 44$
	nop
	lw      $t6, 0x0020($sp)
	la.u    $a0, str_face_draw_801B5690
	lwc1    $f4, 0x003C($t6)
	lh      $t7, 0x0038($t6)
	cvt.d.s $f6, $f4
	sw      $t7, 0x0010($sp)
	lw      $t9, 0x000C($t6)
	mfc1    $a3, $f6
	mfc1    $a2, $f7
	la.l    $a0, str_face_draw_801B5690
	move    $a1, $t6
	jal     face_stdio_8018D298
	sw      $t9, 0x0014($sp)
44$:
	lw      $t8, 0x0024($sp)
	lw      $t1, 0x0028($sp)
	addiu   $t0, $t8, 0x0001
	sw      $t0, 0x0024($sp)
	lw      $t2, 0x0030($t1)
	nop
	slt     $at, $t0, $t2
	bnez    $at, 9$
	nop
53$:
	b       55$
	nop
55$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_draw_80178ED8
face_draw_80178ED8:
	addiu   $t6, $a0, 0x0001
	sltiu   $at, $t6, 0x000C
	beqz    $at, 71$
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_draw_801B58C0)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_draw_801B58C0)($at)
	nop
	jr      $t6
	nop
.globl L80178F04
L80178F04:
	la.u    $v0, face_draw_801A8248
	jr      $ra
	la.l    $v0, face_draw_801A8248
	b       73$
	nop
.globl L80178F18
L80178F18:
	la.u    $v0, face_draw_801A8200
	jr      $ra
	la.l    $v0, face_draw_801A8200
	b       73$
	nop
.globl L80178F2C
L80178F2C:
	la.u    $v0, face_draw_801A820C
	jr      $ra
	la.l    $v0, face_draw_801A820C
	b       73$
	nop
.globl L80178F40
L80178F40:
	la.u    $v0, face_draw_801A8218
	jr      $ra
	la.l    $v0, face_draw_801A8218
	b       73$
	nop
.globl L80178F54
L80178F54:
	la.u    $v0, face_draw_801A8224
	jr      $ra
	la.l    $v0, face_draw_801A8224
	b       73$
	nop
.globl L80178F68
L80178F68:
	la.u    $v0, face_draw_801A8254
	jr      $ra
	la.l    $v0, face_draw_801A8254
	b       73$
	nop
.globl L80178F7C
L80178F7C:
	la.u    $v0, face_draw_801A8260
	jr      $ra
	la.l    $v0, face_draw_801A8260
	b       73$
	nop
.globl L80178F90
L80178F90:
	la.u    $v0, face_draw_801A8230
	jr      $ra
	la.l    $v0, face_draw_801A8230
	b       73$
	nop
.globl L80178FA4
L80178FA4:
	la.u    $v0, face_draw_801A8248
	jr      $ra
	la.l    $v0, face_draw_801A8248
	b       73$
	nop
.globl L80178FB8
L80178FB8:
	la.u    $v0, face_draw_801A826C
	jr      $ra
	la.l    $v0, face_draw_801A826C
	b       73$
	nop
.globl L80178FCC
L80178FCC:
	la.u    $v0, face_draw_801A823C
	jr      $ra
	la.l    $v0, face_draw_801A823C
	b       73$
	nop
.globl L80178FE0
L80178FE0:
	la.u    $v0, face_draw_801A8278
	jr      $ra
	la.l    $v0, face_draw_801A8278
	b       73$
	nop
71$:
	jr      $ra
	move    $v0, $0
73$:
	jr      $ra
	nop
	jr      $ra
	nop

face_draw_8017900C:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x002C($sp)
	sw      $a2, 0x0048($sp)
	sw      $a3, 0x004C($sp)
	swc1    $f12, 0x0040($sp)
	swc1    $f14, 0x0044($sp)
	lwc1    $f4, 0x0050($sp)
	lwc1    $f6, 0x0044($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x003C($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f16, 0x0040($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0038($sp)
	lwc1    $f4, 0x0054($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0034($sp)
	lwc1    $f6, 0x0054($sp)
	lwc1    $f4, 0x0050($sp)
	lui     $at, %hi(face_draw_801B58F0+0)
	lwc1    $f8, 0x003C($sp)
	swc1    $f6, 0x0014($sp)
	lwc1    $f6, %lo(face_draw_801B58F0+4)($at)
	lwc1    $f7, %lo(face_draw_801B58F0+0)($at)
	swc1    $f4, 0x0010($sp)
	cvt.d.s $f4, $f8
	mul.d   $f8, $f4, $f6
	lwc1    $f10, 0x0040($sp)
	lui     $at, %hi(face_draw_801B58F8+0)
	cvt.d.s $f4, $f10
	lwc1    $f16, 0x0044($sp)
	add.d   $f6, $f4, $f8
	lwc1    $f4, 0x0038($sp)
	mov.s   $f12, $f10
	cvt.s.d $f10, $f6
	lwc1    $f6, %lo(face_draw_801B58F8+4)($at)
	lwc1    $f7, %lo(face_draw_801B58F8+0)($at)
	swc1    $f10, 0x0018($sp)
	cvt.d.s $f8, $f4
	mul.d   $f10, $f8, $f6
	cvt.d.s $f4, $f16
	lui     $at, %hi(face_draw_801B5900+0)
	mov.s   $f14, $f16
	lwc1    $f16, 0x0034($sp)
	add.d   $f8, $f4, $f10
	lwc1    $f10, %lo(face_draw_801B5900+4)($at)
	lwc1    $f11, %lo(face_draw_801B5900+0)($at)
	cvt.s.d $f6, $f8
	lwc1    $f18, 0x0048($sp)
	cvt.d.s $f4, $f16
	mul.d   $f8, $f4, $f10
	swc1    $f6, 0x001C($sp)
	cvt.d.s $f6, $f18
	lw      $a3, 0x004C($sp)
	mfc1    $a2, $f18
	add.d   $f16, $f6, $f8
	cvt.s.d $f4, $f16
	jal     face_gfx_801A0094
	swc1    $f4, 0x0020($sp)
	b       65$
	nop
65$:
	lw      $ra, 0x002C($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl Draw_Face
Draw_Face:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	la.u    $a0, str_face_draw_801B56A4
	jal     imin
	la.l    $a0, str_face_draw_801B56A4
	sw      $0, 0x001C($sp)
	lui     $t6, %hi(_face_draw_bss-0x210+0x2E4)
	lw      $t6, %lo(_face_draw_bss-0x210+0x2E4)($t6)
	nop
	bnez    $t6, 48$
	nop
	lw      $t7, 0x0040($sp)
	nop
	lw      $t8, 0x0044($t7)
	nop
	bltz    $t8, 48$
	nop
	lw      $t9, 0x0040($sp)
	nop
	lw      $t0, 0x0048($t9)
	nop
	beqz    $t0, 46$
	nop
	lw      $t1, 0x0040($sp)
	nop
	lw      $t2, 0x0048($t1)
	nop
	lw      $t3, 0x005C($t2)
	nop
	beqz    $t3, 46$
	sw      $t3, 0x0020($sp)
	lui     $t5, %hi(_face_draw_bss-0x210+0x3CC)
	lw      $t5, %lo(_face_draw_bss-0x210+0x3CC)($t5)
	lw      $t4, 0x0020($sp)
	nop
	beq     $t4, $t5, 46$
	nop
	jal     face_gfx_801A01B0
	nop
	lw      $a0, 0x0020($sp)
	jal     face_gfx_801A0588
	nop
	lw      $t6, 0x0020($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3CC)
	sw      $t6, %lo(_face_draw_bss-0x210+0x3CC)($at)
46$:
	b       48$
	nop
48$:
	lw      $t7, 0x0040($sp)
	nop
	lw      $a0, 0x0030($t7)
	jal     face_gfx_8019FB18
	nop
	lui     $t8, %hi(face_shade_smooth)
	lw      $t8, %lo(face_shade_smooth)($t8)
	nop
	bnez    $t8, 61$
	nop
	lw      $a0, 0x0040($sp)
	jal     face_gfx_801A1728
	addiu   $a0, $a0, 0x0024
61$:
	lw      $t9, 0x0040($sp)
	sw      $0, 0x0020($sp)
	lw      $t0, 0x0030($t9)
	nop
	blez    $t0, 136$
	nop
67$:
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x0040($sp)
	sll     $t3, $t2, 2
	addu    $t4, $t1, $t3
	lw      $t5, 0x0034($t4)
	nop
	sw      $t5, 0x003C($sp)
	lw      $t6, 0x003C($sp)
	nop
	lwc1    $f4, 0x0020($t6)
	nop
	swc1    $f4, 0x0030($sp)
	lw      $t7, 0x003C($sp)
	nop
	lwc1    $f6, 0x0024($t7)
	nop
	swc1    $f6, 0x0034($sp)
	lw      $t8, 0x003C($sp)
	nop
	lwc1    $f8, 0x0028($t8)
	nop
	swc1    $f8, 0x0038($sp)
	lui     $t9, %hi(face_shade_smooth)
	lw      $t9, %lo(face_shade_smooth)($t9)
	nop
	beqz    $t9, 97$
	nop
	lw      $a0, 0x003C($sp)
	jal     face_gfx_801A1804
	addiu   $a0, $a0, 0x002C
97$:
	lw      $t0, 0x001C($sp)
	nop
	beqz    $t0, 107$
	nop
	lw      $t2, 0x003C($sp)
	nop
	lwc1    $f12, 0x0044($t2)
	lwc1    $f14, 0x0048($t2)
	jal     face_gfx_801A5C98
	nop
107$:
	lw      $t1, 0x003C($sp)
	lwc1    $f12, 0x0030($sp)
	lwc1    $f14, 0x0034($sp)
	lw      $a2, 0x0038($sp)
	lw      $a3, 0x0040($t1)
	jal     face_gfx_8019FBA0
	nop
	sw      $v0, 0x0018($sp)
	lw      $t3, 0x0018($sp)
	nop
	beqz    $t3, 127$
	nop
	lw      $t4, 0x003C($sp)
	lw      $a1, 0x0018($sp)
	lw      $a0, 0x0044($t4)
	jal     face_object_8017CA00
	nop
	lw      $t5, 0x003C($sp)
	nop
	sw      $v0, 0x0044($t5)
127$:
	lw      $t6, 0x0020($sp)
	lw      $t8, 0x0040($sp)
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0020($sp)
	lw      $t9, 0x0030($t8)
	nop
	slt     $at, $t7, $t9
	bnez    $at, 67$
	nop
136$:
	jal     face_gfx_801A0030
	nop
	jal     imout
	nop
	b       142$
	nop
142$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

face_draw_80179368:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	move    $s0, $v0
	jal     face_gfx_8019E438
	move    $a0, $s0
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	jal     face_gfx_8019D4A0
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_801793CC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $a0, 0x0028($sp)
	jal     face_draw_80178ED8
	nop
	move    $s0, $v0
	jal     face_gfx_8019E438
	move    $a0, $s0
	lwc1    $f12, 0x002C($sp)
	lwc1    $f14, 0x0030($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	jal     face_gfx_8019D848
	nop
	b       21$
	nop
21$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_80179430:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0048($sp)
	lw      $a1, 0x0048($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0028
	lw      $a0, 0x0048($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lwc1    $f12, 0x001C($sp)
	lwc1    $f14, 0x0020($sp)
	lw      $a2, 0x0024($sp)
	jal     face_gfx_801A4578
	nop
	jal     face_gfx_801A4A18
	addiu   $a0, $sp, 0x0028
	b       20$
	nop
20$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0048
	jr      $ra
	nop

.globl face_draw_80179490
face_draw_80179490:
	addiu   $sp, $sp, -0x0150
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0150($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0150($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $t8, 0x0150($sp)
	nop
	lw      $t9, 0x0028($t8)
	nop
	beqz    $t9, 124$
	sw      $t9, 0x0030($sp)
	lw      $t0, 0x0030($sp)
	li      $at, 0x00040000
	lw      $t1, 0x0020($t0)
	nop
	bne     $t1, $at, 30$
	nop
	lw      $t2, 0x0030($sp)
	nop
	lw      $a0, 0x0014($t2)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0144
	b       35$
	nop
30$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x014C($sp)
	swc1    $f4, 0x0148($sp)
	swc1    $f4, 0x0144($sp)
35$:
	lw      $t3, 0x0030($sp)
	li      $at, 0x0001
	lw      $s0, 0x001C($t3)
	nop
	beq     $s0, $at, 76$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 46$
	nop
	b       103$
	nop
46$:
	lw      $t4, 0x0030($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0014($t4)
	lw      $a3, 0x0018($t4)
	jal     get_objvalue
	li      $a1, 0x0002
	lw      $t5, 0x0024($sp)
	nop
	beqz    $t5, 66$
	nop
	addiu   $t6, $sp, 0x0028
	lw      $at, 0x0000($t6)
	lw      $t9, 0x0024($sp)
	sw      $at, 0x0008($sp)
	lw      $t8, 0x0004($t6)
	lw      $a2, 0x0008($sp)
	sw      $t8, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	jalr    $t9
	move    $a0, $t6
66$:
	lwc1    $f6, 0x0028($sp)
	lw      $t0, 0x0150($sp)
	cvt.d.s $f8, $f6
	mfc1    $a3, $f8
	mfc1    $a2, $f9
	lw      $a1, 0x0020($t0)
	jal     sprintf
	addiu   $a0, $sp, 0x0044
	b       122$
	nop
76$:
	lw      $t1, 0x0030($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0014($t1)
	lw      $a3, 0x0018($t1)
	jal     get_objvalue
	li      $a1, 0x0001
	lw      $t2, 0x0024($sp)
	nop
	beqz    $t2, 96$
	nop
	addiu   $t3, $sp, 0x0028
	lw      $at, 0x0000($t3)
	lw      $t9, 0x0024($sp)
	sw      $at, 0x0008($sp)
	lw      $t5, 0x0004($t3)
	lw      $a2, 0x0008($sp)
	sw      $t5, 0x000C($sp)
	lw      $a3, 0x000C($sp)
	jalr    $t9
	move    $a0, $t3
96$:
	lw      $t7, 0x0150($sp)
	lw      $a2, 0x0028($sp)
	lw      $a1, 0x0020($t7)
	jal     sprintf
	addiu   $a0, $sp, 0x0044
	b       122$
	nop
103$:
	lw      $t6, 0x0150($sp)
	nop
	lw      $t8, 0x0020($t6)
	nop
	beqz    $t8, 116$
	nop
	lw      $t0, 0x0150($sp)
	addiu   $a0, $sp, 0x0044
	lw      $a1, 0x0020($t0)
	jal     face_stdio_8018DDD8
	nop
	b       120$
	nop
116$:
	la.u    $a1, str_face_draw_801B56B0
	la.l    $a1, str_face_draw_801B56B0
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0044
120$:
	b       122$
	nop
122$:
	b       146$
	nop
124$:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x014C($sp)
	swc1    $f10, 0x0148($sp)
	swc1    $f10, 0x0144($sp)
	lw      $t1, 0x0150($sp)
	nop
	lw      $t2, 0x0020($t1)
	nop
	beqz    $t2, 142$
	nop
	lw      $t4, 0x0150($sp)
	addiu   $a0, $sp, 0x0044
	lw      $a1, 0x0020($t4)
	jal     face_stdio_8018DDD8
	nop
	b       146$
	nop
142$:
	la.u    $a1, str_face_draw_801B56B8
	la.l    $a1, str_face_draw_801B56B8
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0044
146$:
	lw      $t3, 0x0150($sp)
	lwc1    $f16, 0x0144($sp)
	lwc1    $f18, 0x0014($t3)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0144($sp)
	lw      $t5, 0x0150($sp)
	lwc1    $f6, 0x0148($sp)
	lwc1    $f8, 0x0018($t5)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0148($sp)
	lw      $t9, 0x0150($sp)
	lwc1    $f16, 0x014C($sp)
	lwc1    $f18, 0x001C($t9)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x014C($sp)
	lwc1    $f12, 0x0144($sp)
	lwc1    $f14, 0x0148($sp)
	lw      $a2, 0x014C($sp)
	jal     face_gfx_801A4578
	nop
	lw      $t7, 0x0150($sp)
	nop
	lw      $a0, 0x0030($t7)
	jal     face_gfx_801A4A04
	nop
	jal     face_gfx_801A4A18
	addiu   $a0, $sp, 0x0044
	b       178$
	nop
178$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0150

.globl face_draw_80179768
face_draw_80179768:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x00A0($sp)
	lw      $t6, 0x00A0($sp)
	nop
	sw      $t6, 0x009C($sp)
	lui     $t7, %hi(_face_draw_bss-0x210+0x2E0)
	lw      $t7, %lo(_face_draw_bss-0x210+0x2E0)($t7)
	li      $at, 0x001B
	bne     $t7, $at, 13$
	nop
	b       77$
	nop
13$:
	lw      $t8, 0x009C($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0010
	beqz    $t0, 23$
	nop
	li      $t1, 0x0008
	b       28$
	sw      $t1, 0x0098($sp)
23$:
	lw      $t2, 0x009C($sp)
	nop
	lw      $t3, 0x0040($t2)
	nop
	sw      $t3, 0x0098($sp)
28$:
	lw      $t4, 0x009C($sp)
	nop
	lw      $t5, 0x01A8($t4)
	nop
	beqz    $t5, 64$
	nop
	lw      $t6, 0x009C($sp)
	mtc1    $0, $f4
	lw      $a0, 0x01A8($t6)
	mtc1    $0, $f6
	mtc1    $0, $f8
	mtc1    $0, $f10
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	swc1    $f10, 0x001C($sp)
	mtc1    $0, $f10
	mtc1    $0, $f8
	mtc1    $0, $f6
	mtc1    $0, $f4
	mtc1    $0, $f16
	mtc1    $0, $f18
	lw      $t7, 0x0098($sp)
	addiu   $t8, $t6, 0x0168
	sw      $t8, 0x003C($sp)
	li      $a1, 0x0010
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f10, 0x0034($sp)
	swc1    $f8, 0x0030($sp)
	swc1    $f6, 0x002C($sp)
	swc1    $f4, 0x0028($sp)
	swc1    $f16, 0x0020($sp)
	swc1    $f18, 0x0024($sp)
	jal     Draw_Shape
	sw      $t7, 0x0038($sp)
64$:
	lw      $t9, 0x009C($sp)
	nop
	lw      $t0, 0x01C8($t9)
	nop
	beqz    $t0, 75$
	nop
	lw      $t1, 0x009C($sp)
	nop
	lw      $a0, 0x01C8($t1)
	jal     Draw_Group
	nop
75$:
	b       77$
	nop
77$:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl face_draw_801798AC
face_draw_801798AC:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $0, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x005C($t6)
	nop
	beqz    $t7, 15$
	nop
	lw      $t8, 0x0028($sp)
	nop
	lw      $t9, 0x005C($t8)
	nop
	sw      $t9, 0x0024($sp)
15$:
	lw      $t0, 0x0028($sp)
	lw      $a0, 0x0024($sp)
	lwc1    $f8, 0x0028($t0)
	lwc1    $f10, 0x0040($t0)
	lwc1    $f4, 0x0014($t0)
	mul.s   $f16, $f8, $f10
	lwc1    $f6, 0x0018($t0)
	lwc1    $f8, 0x0044($t0)
	mfc1    $a1, $f4
	add.s   $f18, $f4, $f16
	mfc1    $a2, $f6
	add.s   $f10, $f6, $f8
	mfc1    $a3, $f18
	jal     face_draw_80179368
	swc1    $f10, 0x0010($sp)
	lw      $t1, 0x0028($sp)
	nop
	lhu     $t2, 0x0012($t1)
	nop
	andi    $t3, $t2, 0x0010
	beqz    $t3, 52$
	nop
	lw      $t4, 0x0028($sp)
	li      $a0, 0x0008
	lwc1    $f18, 0x0028($t4)
	lwc1    $f6, 0x0040($t4)
	lwc1    $f4, 0x0014($t4)
	mul.s   $f8, $f18, $f6
	lwc1    $f16, 0x0018($t4)
	lwc1    $f18, 0x0044($t4)
	mfc1    $a1, $f4
	add.s   $f10, $f4, $f8
	mfc1    $a2, $f16
	add.s   $f6, $f16, $f18
	mfc1    $a3, $f10
	jal     face_draw_801793CC
	swc1    $f6, 0x0010($sp)
52$:
	lw      $t5, 0x0028($sp)
	li      $at, -0x0011
	lhu     $t6, 0x0012($t5)
	nop
	and     $t7, $t6, $at
	sh      $t7, 0x0012($t5)
	b       60$
	nop
60$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl Draw_Camera
Draw_Camera:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0034($sp)
	sw      $a0, 0x0050($sp)
	swc1    $f23, 0x0028($sp)
	swc1    $f22, 0x002C($sp)
	swc1    $f21, 0x0020($sp)
	swc1    $f20, 0x0024($sp)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0040($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x0044($sp)
	mtc1    $0, $f8
	nop
	swc1    $f8, 0x0048($sp)
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x004C($sp)
	lw      $t6, 0x0050($sp)
	nop
	lw      $t7, 0x0030($t6)
	nop
	beqz    $t7, 52$
	nop
	lw      $t8, 0x0050($sp)
	nop
	lw      $a0, 0x0030($t8)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0044
	lw      $t9, 0x0050($sp)
	lwc1    $f16, 0x0044($sp)
	lwc1    $f18, 0x0034($t9)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0044($sp)
	lw      $t0, 0x0050($sp)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x0038($t0)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0048($sp)
	lw      $t1, 0x0050($sp)
	lwc1    $f16, 0x004C($sp)
	lwc1    $f18, 0x003C($t1)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x004C($sp)
	b       67$
	nop
52$:
	lw      $t2, 0x0050($sp)
	nop
	lwc1    $f6, 0x0034($t2)
	nop
	swc1    $f6, 0x0044($sp)
	lw      $t3, 0x0050($sp)
	nop
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x0048($sp)
	lw      $t4, 0x0050($sp)
	nop
	lwc1    $f10, 0x003C($t4)
	nop
	swc1    $f10, 0x004C($sp)
67$:
	b       85$
	nop
	lw      $t5, 0x0050($sp)
	la.u    $a0, str_face_draw_801B56C0
	lwc1    $f4, 0x0018($t5)
	lwc1    $f16, 0x0014($t5)
	cvt.d.s $f6, $f4
	swc1    $f6, 0x0014($sp)
	swc1    $f7, 0x0010($sp)
	lwc1    $f8, 0x001C($t5)
	cvt.d.s $f18, $f16
	mfc1    $a3, $f18
	mfc1    $a2, $f19
	cvt.d.s $f10, $f8
	swc1    $f10, 0x001C($sp)
	swc1    $f11, 0x0018($sp)
	jal     gd_printf
	la.l    $a0, str_face_draw_801B56C0
85$:
	lw      $t6, 0x0050($sp)
	lwc1    $f18, 0x0044($sp)
	lwc1    $f16, 0x0014($t6)
	mtc1    $0, $f6
	sub.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    96$
	nop
	b       101$
	neg.s   $f22, $f4
96$:
	lw      $t7, 0x0050($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f8, 0x0014($t7)
	nop
	sub.s   $f22, $f8, $f10
101$:
	lw      $t8, 0x0050($sp)
	lwc1    $f18, 0x004C($sp)
	lwc1    $f16, 0x001C($t8)
	mtc1    $0, $f4
	sub.s   $f6, $f16, $f18
	c.lt.s  $f6, $f4
	nop
	bc1f    112$
	nop
	b       117$
	neg.s   $f20, $f6
112$:
	lw      $t9, 0x0050($sp)
	lwc1    $f10, 0x004C($sp)
	lwc1    $f8, 0x001C($t9)
	nop
	sub.s   $f20, $f8, $f10
117$:
	add.s   $f16, $f20, $f22
	mtc1    $0, $f18
	nop
	c.eq.s  $f16, $f18
	nop
	bc1f    129$
	nop
	la.u    $a0, str_face_draw_801B56CC
	jal     gd_printf
	la.l    $a0, str_face_draw_801B56CC
	b       145$
	nop
129$:
	lw      $t0, 0x0050($sp)
	lwc1    $f4, 0x0044($sp)
	lw      $a1, 0x0014($t0)
	lw      $a2, 0x0018($t0)
	lw      $a3, 0x001C($t0)
	lwc1    $f6, 0x0048($sp)
	lwc1    $f8, 0x004C($sp)
	swc1    $f4, 0x0010($sp)
	swc1    $f6, 0x0014($sp)
	swc1    $f8, 0x0018($sp)
	lwc1    $f10, 0x00A4($t0)
	move    $a0, $t0
	jal     face_gfx_8019F458
	swc1    $f10, 0x001C($sp)
	b       145$
	nop
145$:
	lw      $ra, 0x0034($sp)
	lwc1    $f21, 0x0020($sp)
	lwc1    $f20, 0x0024($sp)
	lwc1    $f23, 0x0028($sp)
	lwc1    $f22, 0x002C($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

face_draw_80179C0C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	li      $at, 0x0020
	lw      $t7, 0x000C($t6)
	nop
	bne     $t7, $at, 24$
	nop
	b       11$
	nop
11$:
	lw      $t8, 0x0018($sp)
	nop
	lw      $t9, 0x01C8($t8)
	nop
	beqz    $t9, 22$
	nop
	lw      $t0, 0x0018($sp)
	nop
	lw      $a0, 0x01C8($t0)
	jal     face_draw_80179CA4
	nop
22$:
	b       26$
	nop
24$:
	b       26$
	nop
26$:
	lw      $t1, 0x0018($sp)
	li      $at, -0x0002
	lhu     $t2, 0x0012($t1)
	nop
	and     $t3, $t2, $at
	sh      $t3, 0x0012($t1)
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80179CA4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_draw_80179C0C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_draw_80179C0C
	jal     face_object_8017E520
	li      $a0, 0xA226
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_80179CDC
face_draw_80179CDC:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	sw      $a2, 0x0020($sp)
	lw      $a1, 0x001C($sp)
	lw      $a0, 0x0018($sp)
	jal     face_math_80196570
	addiu   $a1, $a1, 0x00E8
	lw      $t6, 0x0018($sp)
	li      $at, 0xC3800000
	mtc1    $at, $f6
	lwc1    $f4, 0x0008($t6)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    20$
	nop
	b       71$
	nop
20$:
	lw      $t7, 0x0018($sp)
	li      $at, 0x40700000
	lwc1    $f10, 0x0008($t7)
	mtc1    $at, $f9
	mtc1    $0, $f8
	neg.s   $f16, $f10
	cvt.d.s $f18, $f16
	nop
	div.d   $f4, $f8, $f18
	lwc1    $f6, 0x0000($t7)
	nop
	cvt.d.s $f10, $f6
	mul.d   $f16, $f10, $f4
	cvt.s.d $f8, $f16
	swc1    $f8, 0x0000($t7)
	lw      $t8, 0x0018($sp)
	li      $at, 0x40700000
	lwc1    $f6, 0x0008($t8)
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f6
	nop
	div.d   $f4, $f18, $f10
	lwc1    $f16, 0x0004($t8)
	nop
	cvt.d.s $f8, $f16
	mul.d   $f6, $f8, $f4
	cvt.s.d $f18, $f6
	swc1    $f18, 0x0004($t8)
	lw      $t9, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f16
	lwc1    $f10, 0x0054($t9)
	lw      $t0, 0x0018($sp)
	div.s   $f8, $f10, $f16
	lwc1    $f4, 0x0000($t0)
	nop
	add.s   $f6, $f4, $f8
	swc1    $f6, 0x0000($t0)
	lw      $t1, 0x0020($sp)
	li      $at, 0x40000000
	mtc1    $at, $f10
	lwc1    $f18, 0x0058($t1)
	lw      $t2, 0x0018($sp)
	div.s   $f16, $f18, $f10
	lwc1    $f4, 0x0004($t2)
	nop
	add.s   $f8, $f4, $f16
	swc1    $f8, 0x0004($t2)
	b       71$
	nop
71$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_80179E08:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	lui     $t6, %hi(face_draw_801A8288)
	lw      $t6, %lo(face_draw_801A8288)($t6)
	nop
	bnez    $t6, 12$
	nop
	b       125$
	nop
12$:
	lw      $t7, 0x0048($sp)
	nop
	sw      $t7, 0x002C($sp)
	lw      $t8, 0x002C($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0008
	bnez    $t0, 24$
	nop
	b       125$
	nop
24$:
	lw      $a0, 0x002C($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0028($sp)
	lw      $t1, 0x0028($sp)
	nop
	lwc1    $f4, 0x0030($t1)
	nop
	swc1    $f4, 0x003C($sp)
	lw      $t2, 0x0028($sp)
	nop
	lwc1    $f6, 0x0034($t2)
	nop
	swc1    $f6, 0x0040($sp)
	lw      $t3, 0x0028($sp)
	nop
	lwc1    $f8, 0x0038($t3)
	nop
	swc1    $f8, 0x0044($sp)
	lui     $a1, %hi(face_draw_801A8288)
	lui     $a2, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $a2, %lo(_face_draw_bss-0x210+0x3C4)($a2)
	lw      $a1, %lo(face_draw_801A8288)($a1)
	jal     face_draw_80179CDC
	addiu   $a0, $sp, 0x003C
	lui     $t4, %hi(face_control+0xD0)
	lw      $t4, %lo(face_control+0xD0)($t4)
	lwc1    $f18, 0x003C($sp)
	mtc1    $t4, $f10
	mtc1    $0, $f6
	cvt.s.w $f16, $f10
	sub.s   $f4, $f16, $f18
	c.lt.s  $f4, $f6
	nop
	bc1f    64$
	nop
	b       71$
	neg.s   $f20, $f4
64$:
	lui     $t5, %hi(face_control+0xD0)
	lw      $t5, %lo(face_control+0xD0)($t5)
	lwc1    $f16, 0x003C($sp)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f10, $f8
	sub.s   $f20, $f10, $f16
71$:
	li      $at, 0x41A00000
	mtc1    $at, $f18
	nop
	c.lt.s  $f20, $f18
	nop
	bc1f    123$
	nop
	lui     $t6, %hi(face_control+0xD4)
	lw      $t6, %lo(face_control+0xD4)($t6)
	lwc1    $f8, 0x0040($sp)
	mtc1    $t6, $f6
	mtc1    $0, $f16
	cvt.s.w $f4, $f6
	sub.s   $f10, $f4, $f8
	c.lt.s  $f10, $f16
	nop
	bc1f    91$
	nop
	b       98$
	neg.s   $f20, $f10
91$:
	lui     $t7, %hi(face_control+0xD4)
	lw      $t7, %lo(face_control+0xD4)($t7)
	lwc1    $f4, 0x0040($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f6, $f18
	sub.s   $f20, $f6, $f4
98$:
	li      $at, 0x41A00000
	mtc1    $at, $f8
	nop
	c.lt.s  $f20, $f8
	nop
	bc1f    123$
	nop
	jal     face_gfx_801A5B44
	li      $a0, 0x0002
	lw      $t8, 0x002C($sp)
	nop
	lw      $a0, 0x000C($t8)
	jal     face_gfx_801A5B44
	nop
	lw      $t9, 0x002C($sp)
	nop
	lh      $a0, 0x0010($t9)
	jal     face_gfx_801A5B44
	nop
	lwc1    $f16, 0x003C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x468)
	swc1    $f16, %lo(_face_draw_bss-0x210+0x468)($at)
	lwc1    $f10, 0x0040($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x46C)
	swc1    $f10, %lo(_face_draw_bss-0x210+0x46C)($at)
123$:
	b       125$
	nop
125$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

draw_scene:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	la.u    $a0, str_face_draw_801B56F0
	jal     restart_timer
	la.l    $a0, str_face_draw_801B56F0
	la.u    $a0, str_face_draw_801B56FC
	jal     imin
	la.l    $a0, str_face_draw_801B56FC
	lui     $at, %hi(face_draw_801A8290)
	sw      $0, %lo(face_draw_801A8290)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3C8)
	sw      $0, %lo(_face_draw_bss-0x210+0x3C8)($at)
	la.u    $a0, str_face_draw_801B570C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B570C
	jal     face_gfx_801A18F0
	li      $a0, 0x0005
	lui     $t6, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t6, %lo(_face_draw_bss-0x210+0x3C4)($t6)
	li      $at, 0x0001
	lw      $t7, 0x0038($t6)
	nop
	bne     $t7, $at, 39$
	nop
	lui     $t8, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t8, %lo(_face_draw_bss-0x210+0x3C4)($t8)
	nop
	lwc1    $f4, 0x0054($t8)
	lwc1    $f6, 0x0058($t8)
	lwc1    $f12, 0x0068($t8)
	lw      $a2, 0x0060($t8)
	lw      $a3, 0x0064($t8)
	jal     face_gfx_801A3DCC
	div.s   $f14, $f4, $f6
	b       79$
	nop
39$:
	lui     $t9, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t9, %lo(_face_draw_bss-0x210+0x3C4)($t9)
	li      $at, 0x40000000
	lwc1    $f8, 0x0054($t9)
	mtc1    $at, $f19
	mtc1    $0, $f18
	neg.s   $f10, $f8
	cvt.d.s $f16, $f10
	nop
	div.d   $f4, $f16, $f18
	mtc1    $0, $f10
	mtc1    $at, $f11
	cvt.d.s $f6, $f8
	lwc1    $f18, 0x0058($t9)
	div.d   $f16, $f6, $f10
	cvt.s.d $f12, $f4
	mtc1    $0, $f6
	mtc1    $at, $f7
	neg.s   $f4, $f18
	cvt.d.s $f8, $f4
	cvt.d.s $f4, $f18
	nop
	div.d   $f10, $f8, $f6
	mtc1    $0, $f8
	mtc1    $at, $f9
	cvt.s.d $f14, $f16
	nop
	div.d   $f6, $f4, $f8
	cvt.s.d $f16, $f10
	mfc1    $a2, $f16
	lwc1    $f16, 0x0060($t9)
	nop
	swc1    $f16, 0x0010($sp)
	lwc1    $f18, 0x0064($t9)
	nop
	swc1    $f18, 0x0014($sp)
	cvt.s.d $f10, $f6
	mfc1    $a3, $f10
	jal     face_gfx_801A3C30
	nop
79$:
	lw      $t0, 0x0038($sp)
	nop
	beqz    $t0, 93$
	nop
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	li.u    $a0, 0x00080008
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0038($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00080008
	jal     face_gfx_801A18F0
	li      $a0, 0x0005
93$:
	lui     $t1, %hi(face_draw_801A8288)
	lw      $t1, %lo(face_draw_801A8288)($t1)
	nop
	beqz    $t1, 104$
	nop
	lui     $a0, %hi(face_draw_801A8288)
	lw      $a0, %lo(face_draw_801A8288)($a0)
	jal     Draw_Camera
	nop
	b       108$
	nop
104$:
	mtc1    $0, $f12
	mtc1    $0, $f14
	jal     face_gfx_8019F224
	li      $a2, 0xC47A0000
108$:
	jal     face_draw_80178280
	nop
	jal     face_gfx_801A18F0
	li      $a0, 0x0006
	jal     face_gfx_8019F16C
	nop
	lw      $t2, 0x0030($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x2E0)
	sw      $t2, %lo(_face_draw_bss-0x210+0x2E0)($at)
	lui     $t3, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t3, %lo(_face_draw_bss-0x210+0x3C4)($t3)
	li      $at, 0x00200000
	lw      $t4, 0x0034($t3)
	nop
	and     $t5, $t4, $at
	lui     $at, %hi(_face_draw_bss-0x210+0x460)
	beqz    $t5, 133$
	sw      $t5, %lo(_face_draw_bss-0x210+0x460)($at)
	lui     $t6, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t6, %lo(_face_draw_bss-0x210+0x3C4)($t6)
	li.u    $at, 0xFFDFFFFF
	lw      $t7, 0x0034($t6)
	li.l    $at, 0xFFDFFFFF
	and     $t8, $t7, $at
	sw      $t8, 0x0034($t6)
133$:
	li      $t9, 0x0001
	lui     $at, %hi(_face_draw_bss-0x210+0x460)
	sw      $t9, %lo(_face_draw_bss-0x210+0x460)($at)
	lui     $a2, %hi(_face_draw_bss-0x210+0x298)
	lw      $a2, %lo(_face_draw_bss-0x210+0x298)($a2)
	la.u    $a1, face_draw_8017AA5C
	la.l    $a1, face_draw_8017AA5C
	jal     face_object_8017E520
	li      $a0, 0x00080000
	la.u    $a0, str_face_draw_801B5714
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5714
	la.u    $a0, str_face_draw_801B571C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B571C
	la.u    $a0, str_face_draw_801B5724
	jal     imin
	la.l    $a0, str_face_draw_801B5724
	lui     $t0, %hi(_face_draw_bss-0x210+0x2E0)
	lw      $t0, %lo(_face_draw_bss-0x210+0x2E0)($t0)
	li      $at, 0x001B
	bne     $t0, $at, 164$
	nop
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_draw_80179E08
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_80179E08
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       170$
	nop
164$:
	li.u    $a0, 0x00082028
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00082028
170$:
	jal     imout
	nop
	la.u    $a0, str_face_draw_801B5734
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5734
	li      $a0, 0x000B
	li      $a1, 0x0000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0034($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li      $a0, 0x8000
	li      $a0, 0x000B
	li      $a1, 0x3F800000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	jal     face_gfx_8019F1D8
	nop
	jal     imout
	nop
	la.u    $a0, str_face_draw_801B573C
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B573C
	b       201$
	nop
	b       201$
	nop
201$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

.globl face_draw_8017A344
face_draw_8017A344:
	sw      $a0, 0x0000($sp)
	b       3$
	nop
3$:
	jr      $ra
	nop

face_draw_8017A358:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3CC)
	sw      $0, %lo(_face_draw_bss-0x210+0x3CC)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3C8)
	sw      $0, %lo(_face_draw_bss-0x210+0x3C8)($at)
	jal     face_gfx_801A24B4
	move    $a0, $0
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(face_draw_801A8290)
	lw      $t7, 0x0044($t6)
	nop
	andi    $t8, $t7, 0x0001
	sw      $t8, %lo(face_draw_801A8290)($at)
	lw      $t9, 0x0018($sp)
	nop
	lwc1    $f12, 0x0058($t9)
	jal     face_gfx_801A03F8
	nop
	lui     $t1, %hi(face_gfx_801A8840)
	lw      $t1, %lo(face_gfx_801A8840)($t1)
	lw      $t0, 0x0018($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $t4, 0x0048($t3)
	nop
	beqz    $t4, 40$
	nop
	lui     $t6, %hi(face_gfx_801A8840)
	lw      $t6, %lo(face_gfx_801A8840)($t6)
	lw      $t5, 0x0018($sp)
	sll     $t7, $t6, 2
	addu    $t8, $t5, $t7
	lw      $a0, 0x0048($t8)
	lw      $a1, 0x0050($t5)
	jal     face_gfx_8019BE4C
	nop
	b       55$
	nop
40$:
	lw      $t9, 0x0018($sp)
	nop
	lw      $t1, 0x001C($t9)
	nop
	beqz    $t1, 55$
	nop
	jal     face_gfx_801A0178
	nop
	lw      $t0, 0x0018($sp)
	nop
	lw      $a0, 0x001C($t0)
	jal     Draw_Group
	nop
	jal     face_gfx_801A01B0
	nop
55$:
	b       57$
	nop
57$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_8017A44C
face_draw_8017A44C:
	addiu   $sp, $sp, -0x0078
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0078($sp)
	lw      $t6, 0x0078($sp)
	nop
	sw      $t6, 0x0074($sp)
	lw      $t7, 0x0074($sp)
	nop
	lw      $t8, 0x005C($t7)
	nop
	blez    $t8, 68$
	nop
	la.u    $t9, face_draw_801A8294
	la.l    $t9, face_draw_801A8294
	lw      $t0, 0x0000($t9)
	nop
	sw      $t0, 0x0060($sp)
	la.u    $t1, face_draw_801A82A8
	la.l    $t1, face_draw_801A82A8
	lw      $t2, 0x0004($t1)
	nop
	sw      $t2, 0x005C($sp)
	lw      $t3, 0x0074($sp)
	li      $at, 0x40240000
	lw      $t4, 0x005C($t3)
	mtc1    $at, $f9
	mtc1    $t4, $f4
	mtc1    $0, $f8
	cvt.d.w $f6, $f4
	nop
	div.d   $f10, $f6, $f8
	cvt.s.d $f16, $f10
	swc1    $f16, 0x0058($sp)
	lw      $t5, 0x0060($sp)
	lw      $t6, 0x005C($sp)
	lwc1    $f18, 0x0000($t5)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f8, 0x0058($sp)
	sub.s   $f6, $f18, $f4
	la.u    $t7, face_draw_801A8278
	mul.s   $f10, $f6, $f8
	la.l    $t7, face_draw_801A8278
	add.s   $f16, $f10, $f4
	swc1    $f16, 0x0000($t7)
	lw      $t8, 0x0060($sp)
	lw      $t9, 0x005C($sp)
	lwc1    $f18, 0x0004($t8)
	lwc1    $f6, 0x0004($t9)
	lwc1    $f10, 0x0058($sp)
	sub.s   $f8, $f18, $f6
	la.u    $t0, face_draw_801A8278
	mul.s   $f4, $f8, $f10
	la.l    $t0, face_draw_801A8278
	add.s   $f16, $f4, $f6
	swc1    $f16, 0x0004($t0)
	lw      $t1, 0x0060($sp)
	lw      $t2, 0x005C($sp)
	lwc1    $f18, 0x0008($t1)
	lwc1    $f8, 0x0008($t2)
	lwc1    $f4, 0x0058($sp)
	sub.s   $f10, $f18, $f8
	la.u    $t3, face_draw_801A8278
	mul.s   $f6, $f10, $f4
	la.l    $t3, face_draw_801A8278
	add.s   $f16, $f6, $f8
	swc1    $f16, 0x0008($t3)
	b       80$
	nop
68$:
	mtc1    $0, $f18
	la.u    $t4, face_draw_801A8278
	la.l    $t4, face_draw_801A8278
	swc1    $f18, 0x0000($t4)
	mtc1    $0, $f10
	la.u    $t5, face_draw_801A8278
	la.l    $t5, face_draw_801A8278
	swc1    $f10, 0x0004($t5)
	mtc1    $0, $f4
	la.u    $t6, face_draw_801A8278
	la.l    $t6, face_draw_801A8278
	swc1    $f4, 0x0008($t6)
80$:
	lw      $t7, 0x0074($sp)
	nop
	lw      $t8, 0x005C($t7)
	nop
	blez    $t8, 122$
	nop
	lw      $t9, 0x0074($sp)
	nop
	lw      $t0, 0x005C($t9)
	lw      $t1, 0x001C($t9)
	nop
	sw      $t0, 0x0050($t1)
	lw      $t2, 0x0074($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $a0, 0x001C($t2)
	swc1    $f6, 0x0010($sp)
	lwc1    $f8, 0x0020($t2)
	mtc1    $0, $f6
	swc1    $f8, 0x0014($sp)
	lwc1    $f16, 0x0024($t2)
	mtc1    $0, $f8
	swc1    $f16, 0x0018($sp)
	lwc1    $f18, 0x0028($t2)
	mtc1    $0, $f16
	swc1    $f18, 0x001C($sp)
	mtc1    $0, $f18
	mtc1    $0, $f10
	mtc1    $0, $f4
	li      $t3, -0x0001
	sw      $t3, 0x0038($sp)
	sw      $0, 0x003C($sp)
	li      $a1, 0x0002
	li      $a2, 0x3F800000
	li      $a3, 0x3F800000
	swc1    $f6, 0x0028($sp)
	swc1    $f8, 0x002C($sp)
	swc1    $f16, 0x0030($sp)
	swc1    $f18, 0x0034($sp)
	swc1    $f10, 0x0020($sp)
	jal     Draw_Shape2D
	swc1    $f4, 0x0024($sp)
122$:
	lw      $t4, 0x0074($sp)
	li      $at, 0x0003
	lw      $t5, 0x0060($t4)
	nop
	bne     $t5, $at, 139$
	nop
	lw      $t6, 0x0074($sp)
	nop
	lw      $t7, 0x006C($t6)
	nop
	beqz    $t7, 139$
	nop
	lw      $t8, 0x0074($sp)
	nop
	lw      $a0, 0x006C($t8)
	jal     Draw_Group
	nop
139$:
	b       141$
	nop
141$:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0078
	jr      $ra
	nop

.globl face_draw_8017A690
face_draw_8017A690:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	nop
	sw      $t6, 0x0064($sp)
	b       81$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x004C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	nop
	swc1    $f6, 0x0050($sp)
	lw      $t7, 0x0064($sp)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f8, 0x00F8($t7)
	nop
	div.s   $f16, $f8, $f10
	swc1    $f16, 0x0054($sp)
	lw      $t8, 0x0064($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0010
	beqz    $t0, 33$
	nop
	li      $t1, 0x0008
	b       38$
	sw      $t1, 0x005C($sp)
33$:
	lw      $t2, 0x0064($sp)
	nop
	lw      $t3, 0x0100($t2)
	nop
	sw      $t3, 0x005C($sp)
38$:
	lw      $t4, 0x0064($sp)
	li      $at, -0x0011
	lhu     $t5, 0x0012($t4)
	nop
	and     $t6, $t5, $at
	sh      $t6, 0x0012($t4)
	lui     $t7, %hi(_face_draw_bss-0x210+0x2E0)
	lw      $t7, %lo(_face_draw_bss-0x210+0x2E0)($t7)
	li      $at, 0x001B
	beq     $t7, $at, 79$
	nop
	lw      $t8, 0x0064($sp)
	lwc1    $f18, 0x0054($sp)
	lw      $a0, 0x00F0($t8)
	swc1    $f18, 0x0010($sp)
	lwc1    $f4, 0x0014($t8)
	mtc1    $0, $f18
	swc1    $f4, 0x0014($sp)
	lwc1    $f6, 0x0018($t8)
	mtc1    $0, $f10
	swc1    $f6, 0x0018($sp)
	lwc1    $f8, 0x001C($t8)
	mtc1    $0, $f16
	swc1    $f18, 0x0028($sp)
	swc1    $f10, 0x0020($sp)
	swc1    $f8, 0x001C($sp)
	swc1    $f16, 0x0024($sp)
	lwc1    $f4, 0x0028($t8)
	lw      $t9, 0x005C($sp)
	swc1    $f4, 0x002C($sp)
	lwc1    $f6, 0x002C($t8)
	lw      $a2, 0x004C($sp)
	swc1    $f6, 0x0030($sp)
	lwc1    $f8, 0x0030($t8)
	lw      $a3, 0x0050($sp)
	addiu   $t0, $t8, 0x0070
	sw      $t0, 0x003C($sp)
	li      $a1, 0x001B
	sw      $t9, 0x0038($sp)
	jal     Draw_Shape
	swc1    $f8, 0x0034($sp)
79$:
	b       81$
	nop
81$:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl face_draw_8017A7E4
face_draw_8017A7E4:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0044($sp)
	sw      $a0, 0x0088($sp)
	lw      $t6, 0x0088($sp)
	nop
	sw      $t6, 0x0084($sp)
	li      $at, 0x428C0000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x007C($sp)
	li      $t7, 0x0001
	sw      $t7, 0x0074($sp)
	lw      $t8, 0x0084($sp)
	nop
	lw      $t9, 0x0020($t8)
	nop
	bnez    $t9, 20$
	sw      $t9, 0x0064($sp)
	b       67$
	nop
20$:
	lw      $t0, 0x0084($sp)
	nop
	lhu     $t1, 0x0012($t0)
	nop
	andi    $t2, $t1, 0x0010
	beqz    $t2, 30$
	nop
	li      $t3, 0x0008
	b       35$
	sw      $t3, 0x0070($sp)
30$:
	lw      $t4, 0x0084($sp)
	nop
	lw      $t5, 0x01C8($t4)
	nop
	sw      $t5, 0x0070($sp)
35$:
	mtc1    $0, $f6
	mtc1    $0, $f8
	mtc1    $0, $f10
	mtc1    $0, $f16
	lw      $t7, 0x0084($sp)
	swc1    $f6, 0x0010($sp)
	swc1    $f8, 0x0014($sp)
	swc1    $f10, 0x0018($sp)
	swc1    $f16, 0x001C($sp)
	mtc1    $0, $f16
	mtc1    $0, $f10
	mtc1    $0, $f8
	mtc1    $0, $f6
	mtc1    $0, $f18
	mtc1    $0, $f4
	lw      $t6, 0x0070($sp)
	lw      $a0, 0x0064($sp)
	addiu   $t8, $t7, 0x0128
	sw      $t8, 0x003C($sp)
	li      $a1, 0x0010
	li      $a2, 0x0000
	li      $a3, 0x0000
	swc1    $f16, 0x0034($sp)
	swc1    $f10, 0x0030($sp)
	swc1    $f8, 0x002C($sp)
	swc1    $f6, 0x0028($sp)
	swc1    $f18, 0x0020($sp)
	swc1    $f4, 0x0024($sp)
	jal     Draw_Shape
	sw      $t6, 0x0038($sp)
	b       67$
	nop
67$:
	lw      $ra, 0x0044($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl Draw_Group
Draw_Group:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, 10$
	nop
	la.u    $a0, str_face_draw_801B5748
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B5748
10$:
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       18$
	nop
18$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_draw_8017A958
face_draw_8017A958:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	lw      $t6, 0x0020($sp)
	nop
	sw      $t6, 0x001C($sp)
	lw      $t7, 0x0020($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0010
	beqz    $t9, 21$
	nop
	lw      $t0, 0x0020($sp)
	li      $at, -0x0011
	lhu     $t1, 0x0012($t0)
	nop
	and     $t2, $t1, $at
	sh      $t2, 0x0012($t0)
	b       23$
	nop
21$:
	lui     $at, %hi(_face_draw_bss-0x210+0x2E4)
	sw      $0, %lo(_face_draw_bss-0x210+0x2E4)($at)
23$:
	lw      $t3, 0x001C($sp)
	nop
	lw      $a0, 0x0040($t3)
	jal     Draw_Face
	nop
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_draw_8017A9E0
face_draw_8017A9E0:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, 10$
	nop
	la.u    $a0, str_face_draw_801B576C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_draw_801B576C
10$:
	lw      $t7, 0x0018($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0002
	beqz    $t9, 19$
	nop
	b       27$
	nop
19$:
	lw      $t0, 0x0018($sp)
	nop
	lw      $t9, 0x0008($t0)
	move    $a0, $t0
	jalr    $t9
	nop
	b       27$
	nop
27$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AA5C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $a0, 0x001C($t6)
	jal     face_gfx_801A0464
	nop
	li      $a0, 0x000B
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	lw      $t7, 0x0018($sp)
	nop
	lw      $t8, 0x002C($t7)
	nop
	andi    $t9, $t8, 0x0010
	beqz    $t9, 25$
	nop
	lui     $t0, %hi(_face_draw_bss-0x210+0x460)
	lw      $t0, %lo(_face_draw_bss-0x210+0x460)($t0)
	lui     $at, %hi(_face_draw_bss-0x210+0x460)
	addiu   $t1, $t0, 0x0001
	sw      $t1, %lo(_face_draw_bss-0x210+0x460)($at)
25$:
	lw      $t2, 0x0018($sp)
	li      $at, -0x0011
	lw      $t3, 0x002C($t2)
	nop
	and     $t4, $t3, $at
	sw      $t4, 0x002C($t2)
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AAF0:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	lwc1    $f4, 0x0050($t6)
	lwc1    $f6, 0x0030($t6)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x005C($t6)
	lw      $t7, 0x0028($sp)
	nop
	lwc1    $f10, 0x0054($t7)
	lwc1    $f16, 0x0030($t7)
	nop
	mul.s   $f18, $f10, $f16
	swc1    $f18, 0x0060($t7)
	lw      $t8, 0x0028($sp)
	nop
	lwc1    $f4, 0x0058($t8)
	lwc1    $f6, 0x0030($t8)
	nop
	mul.s   $f8, $f4, $f6
	swc1    $f8, 0x0064($t8)
	lw      $t9, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F0)
	lw      $t0, 0x001C($t9)
	lwc1    $f16, %lo(_face_draw_bss-0x210+0x3F0)($at)
	lwc1    $f10, 0x0074($t9)
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sub.s   $f18, $f10, $f16
	sll     $t1, $t1, 2
	lui     $at, %hi(_face_draw_bss-0x210+0x400)
	addu    $at, $at, $t1
	swc1    $f18, %lo(_face_draw_bss-0x210+0x400)($at)
	lw      $t2, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F4)
	lw      $t3, 0x001C($t2)
	lwc1    $f6, %lo(_face_draw_bss-0x210+0x3F4)($at)
	lwc1    $f4, 0x0078($t2)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sub.s   $f8, $f4, $f6
	sll     $t4, $t4, 2
	lui     $at, %hi(_face_draw_bss-0x210+0x404)
	addu    $at, $at, $t4
	swc1    $f8, %lo(_face_draw_bss-0x210+0x404)($at)
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F8)
	lw      $t6, 0x001C($t5)
	lwc1    $f16, %lo(_face_draw_bss-0x210+0x3F8)($at)
	lwc1    $f10, 0x007C($t5)
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sub.s   $f18, $f10, $f16
	sll     $t7, $t7, 2
	lui     $at, %hi(_face_draw_bss-0x210+0x408)
	addu    $at, $at, $t7
	swc1    $f18, %lo(_face_draw_bss-0x210+0x408)($at)
	lw      $t8, 0x0028($sp)
	la.u    $t1, _face_draw_bss-0x210+0x400
	lw      $t9, 0x001C($t8)
	la.l    $t1, _face_draw_bss-0x210+0x400
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	jal     face_math_80194D34
	addu    $a0, $t0, $t1
	lw      $t2, 0x0028($sp)
	nop
	lw      $t3, 0x002C($t2)
	nop
	andi    $t4, $t3, 0x0020
	beqz    $t4, 112$
	nop
	lw      $t5, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x400)
	lw      $t6, 0x001C($t5)
	nop
	sll     $t7, $t6, 2
	subu    $t7, $t7, $t6
	sll     $t7, $t7, 2
	addu    $at, $at, $t7
	lwc1    $f4, %lo(_face_draw_bss-0x210+0x400)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3E0)
	swc1    $f4, %lo(_face_draw_bss-0x210+0x3E0)($at)
	lw      $t8, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x404)
	lw      $t9, 0x001C($t8)
	nop
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $at, $at, $t0
	lwc1    $f6, %lo(_face_draw_bss-0x210+0x404)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3E4)
	swc1    $f6, %lo(_face_draw_bss-0x210+0x3E4)($at)
	lw      $t1, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x408)
	lw      $t2, 0x001C($t1)
	nop
	sll     $t3, $t2, 2
	subu    $t3, $t3, $t2
	sll     $t3, $t3, 2
	addu    $at, $at, $t3
	lwc1    $f8, %lo(_face_draw_bss-0x210+0x408)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3E8)
	swc1    $f8, %lo(_face_draw_bss-0x210+0x3E8)($at)
	lw      $t4, 0x0028($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D8)
	sw      $t4, %lo(_face_draw_bss-0x210+0x3D8)($at)
112$:
	lw      $t5, 0x0028($sp)
	nop
	lwc1    $f10, 0x0030($t5)
	nop
	swc1    $f10, 0x0024($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	andi    $t8, $t7, 0x0002
	beqz    $t8, 207$
	nop
	lw      $t9, 0x0028($sp)
	la.u    $t2, _face_draw_bss-0x210+0x400
	lw      $t0, 0x001C($t9)
	la.l    $t2, _face_draw_bss-0x210+0x400
	sll     $t1, $t0, 2
	subu    $t1, $t1, $t0
	sll     $t1, $t1, 2
	addu    $a0, $t1, $t2
	jal     face_math_80194EF8
	addiu   $a1, $t9, 0x0080
	neg.s   $f16, $f0
	swc1    $f16, 0x0020($sp)
	lw      $t3, 0x0028($sp)
	lui     $at, %hi(face_draw_801B5908+4)
	lwc1    $f18, 0x0038($t3)
	lwc1    $f7, %lo(face_draw_801B5908+0)($at)
	lwc1    $f6, %lo(face_draw_801B5908+4)($at)
	cvt.d.s $f4, $f18
	nop
	div.d   $f8, $f4, $f6
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	nop
	sub.d   $f16, $f10, $f8
	cvt.s.d $f18, $f16
	swc1    $f18, 0x001C($sp)
	lwc1    $f4, 0x0020($sp)
	lwc1    $f6, 0x001C($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    199$
	nop
	lwc1    $f10, 0x0020($sp)
	lwc1    $f8, 0x001C($sp)
	li      $at, 0x3FF00000
	sub.s   $f16, $f10, $f8
	mtc1    $at, $f5
	mtc1    $0, $f4
	cvt.d.s $f18, $f16
	cvt.d.s $f6, $f8
	mtc1    $0, $f16
	mtc1    $at, $f17
	sub.d   $f10, $f4, $f6
	nop
	div.d   $f8, $f16, $f10
	mul.d   $f4, $f18, $f8
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0020($sp)
	lwc1    $f16, 0x0020($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f19
	mtc1    $0, $f18
	cvt.d.s $f10, $f16
	c.lt.d  $f18, $f10
	nop
	bc1f    187$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f8
	b       197$
	swc1    $f8, 0x0020($sp)
187$:
	lwc1    $f4, 0x0020($sp)
	mtc1    $0, $f6
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    197$
	nop
	mtc1    $0, $f16
	nop
	swc1    $f16, 0x0020($sp)
197$:
	b       202$
	nop
199$:
	mtc1    $0, $f10
	nop
	swc1    $f10, 0x0020($sp)
202$:
	lwc1    $f18, 0x0024($sp)
	lwc1    $f8, 0x0020($sp)
	nop
	mul.s   $f4, $f18, $f8
	swc1    $f4, 0x0024($sp)
207$:
	lw      $t4, 0x0028($sp)
	nop
	lw      $a0, 0x001C($t4)
	jal     face_gfx_801A0464
	nop
	lw      $t5, 0x0028($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f6, 0x0050($t5)
	lwc1    $f18, 0x0054($t5)
	mul.s   $f10, $f6, $f16
	lwc1    $f4, 0x0058($t5)
	li      $a0, 0x000D
	mul.s   $f8, $f18, $f16
	mfc1    $a1, $f10
	mul.s   $f6, $f4, $f16
	mfc1    $a2, $f8
	mfc1    $a3, $f6
	jal     gd_setproperty
	nop
	lw      $t6, 0x0028($sp)
	la.u    $t0, _face_draw_bss-0x210+0x400
	lw      $t7, 0x001C($t6)
	la.l    $t0, _face_draw_bss-0x210+0x400
	sll     $t8, $t7, 2
	subu    $t8, $t8, $t7
	sll     $t8, $t8, 2
	addu    $t1, $t8, $t0
	lw      $a1, 0x0000($t1)
	lw      $a2, 0x0004($t1)
	lw      $a3, 0x0008($t1)
	jal     gd_setproperty
	li      $a0, 0x000F
	li      $a0, 0x000B
	li      $a1, 0x40000000
	li      $a2, 0x0000
	jal     gd_setproperty
	li      $a3, 0x0000
	b       246$
	nop
246$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

updateshaders:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	sw      $a1, 0x001C($sp)
	la.u    $a0, str_face_draw_801B5778
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5778
	jal     face_gfx_8019E9B4
	nop
	lw      $t6, 0x001C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F0)
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, %lo(_face_draw_bss-0x210+0x3F0)($at)
	lw      $t7, 0x001C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F4)
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, %lo(_face_draw_bss-0x210+0x3F4)($at)
	lw      $t8, 0x001C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3F8)
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, %lo(_face_draw_bss-0x210+0x3F8)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D8)
	sw      $0, %lo(_face_draw_bss-0x210+0x3D8)($at)
	lui     $t9, %hi(_face_draw_bss-0x210+0x298)
	lw      $t9, %lo(_face_draw_bss-0x210+0x298)($t9)
	nop
	beqz    $t9, 37$
	nop
	lui     $a2, %hi(_face_draw_bss-0x210+0x298)
	lw      $a2, %lo(_face_draw_bss-0x210+0x298)($a2)
	la.u    $a1, face_draw_8017AAF0
	la.l    $a1, face_draw_8017AAF0
	jal     face_object_8017E520
	li      $a0, 0x00080000
37$:
	lw      $t0, 0x0018($sp)
	nop
	lw      $t1, 0x002C($t0)
	nop
	beqz    $t1, 49$
	nop
	lw      $t2, 0x0018($sp)
	la.u    $a1, face_draw_8017A9E0
	lw      $a2, 0x002C($t2)
	la.l    $a1, face_draw_8017A9E0
	jal     face_object_8017E520
	li      $a0, 0x0800
49$:
	jal     face_gfx_8019E9D4
	nop
	la.u    $a0, str_face_draw_801B5788
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5788
	b       56$
	nop
56$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017AFC8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	lw      $t7, 0x002C($t6)
	nop
	beqz    $t7, 15$
	nop
	lw      $t8, 0x0018($sp)
	la.u    $a1, face_draw_80178D90
	lw      $a2, 0x002C($t8)
	la.l    $a1, face_draw_80178D90
	jal     face_object_8017E520
	li      $a0, 0x0800
15$:
	b       17$
	nop
17$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_draw_8017B01C:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, 21$
	nop
10$:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0020($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0020($sp)
	jal     face_object_8017C010
	nop
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 10$
	nop
21$:
	b       23$
	nop
23$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

face_draw_8017B088:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t6, 0x0024($sp)
	lw      $a0, 0x0024($sp)
	jal     face_draw_8017AFC8
	nop
	jal     gd_startdisplist
	li      $a0, 0x0007
	sw      $v0, 0x0020($sp)
	lw      $t7, 0x0020($sp)
	nop
	bnez    $t7, 18$
	nop
	b       52$
	li      $v0, -0x0001
18$:
	jal     face_draw_80178280
	nop
	lui     $at, %hi(_face_draw_bss-0x210+0x2E4)
	sw      $0, %lo(_face_draw_bss-0x210+0x2E4)($at)
	lw      $t8, 0x0024($sp)
	nop
	lw      $t9, 0x003C($t8)
	nop
	bnez    $t9, 31$
	nop
	lw      $a0, 0x0024($sp)
	jal     face_draw_8017A358
	nop
31$:
	jal     face_gfx_8019EBAC
	nop
	sw      $v0, 0x001C($sp)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0024($sp)
	nop
	sw      $t0, 0x0048($t1)
	lw      $t2, 0x0020($sp)
	lw      $t3, 0x0024($sp)
	nop
	sw      $t2, 0x004C($t3)
	lw      $t4, 0x0024($sp)
	nop
	lb      $t5, 0x005C($t4)
	nop
	beqz    $t5, 50$
	nop
	b       50$
	nop
50$:
	b       52$
	nop
52$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_draw_8017B168
face_draw_8017B168:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	la.u    $a1, face_draw_8017B088
	lw      $a2, 0x0020($sp)
	la.l    $a1, face_draw_8017B088
	jal     face_object_8017E520
	li      $a0, 0x0010
	sw      $v0, 0x001C($sp)
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_draw_8017B1A4
face_draw_8017B1A4:
	addiu   $sp, $sp, -0x0018
	lw      $a2, 0x001C($a0)
	nop
	beqz    $a2, 41$
	nop
5$:
	lw      $t6, 0x0008($a2)
	nop
	sw      $t6, 0x000C($sp)
	lw      $t7, 0x000C($sp)
	nop
	sw      $t7, 0x0014($sp)
	lw      $a3, 0x001C($a1)
	nop
	beqz    $a3, 31$
	nop
15$:
	lw      $t8, 0x0008($a3)
	nop
	sw      $t8, 0x0004($sp)
	lw      $t9, 0x0004($sp)
	lw      $t1, 0x0014($sp)
	lw      $t0, 0x001C($t9)
	lw      $t2, 0x0044($t1)
	nop
	bne     $t0, $t2, 27$
	nop
	b       31$
	nop
27$:
	lw      $a3, 0x0004($a3)
	nop
	bnez    $a3, 15$
	nop
31$:
	beqz    $a3, 37$
	nop
	lw      $t3, 0x0004($sp)
	lw      $t4, 0x0014($sp)
	nop
	sw      $t3, 0x0048($t4)
37$:
	lw      $a2, 0x0004($a2)
	nop
	bnez    $a2, 5$
	nop
41$:
	b       43$
	nop
43$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

face_draw_8017B258:
	addiu   $sp, $sp, -0x0018
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0034($a0)
	lwc1    $f12, 0x0034($a0)
	nop
	swc1    $f12, 0x0030($a0)
	swc1    $f12, 0x002C($a0)
	sw      $0, 0x0010($sp)
	lw      $a2, 0x001C($a1)
	nop
	beqz    $a2, 65$
	nop
13$:
	lw      $t6, 0x0008($a2)
	nop
	sw      $t6, 0x0008($sp)
	lw      $t7, 0x0008($sp)
	sw      $0, 0x0014($sp)
	lw      $t8, 0x0030($t7)
	nop
	blez    $t8, 61$
	nop
22$:
	lw      $t0, 0x0014($sp)
	lw      $t9, 0x0008($sp)
	sll     $t1, $t0, 2
	addu    $t2, $t9, $t1
	lw      $t3, 0x0034($t2)
	nop
	bne     $t3, $a0, 52$
	nop
	lw      $t4, 0x0008($sp)
	lwc1    $f6, 0x002C($a0)
	lwc1    $f8, 0x0024($t4)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x002C($a0)
	lw      $t5, 0x0008($sp)
	lwc1    $f16, 0x0030($a0)
	lwc1    $f18, 0x0028($t5)
	nop
	add.s   $f4, $f16, $f18
	swc1    $f4, 0x0030($a0)
	lw      $t6, 0x0008($sp)
	lwc1    $f6, 0x0034($a0)
	lwc1    $f8, 0x002C($t6)
	nop
	add.s   $f10, $f6, $f8
	swc1    $f10, 0x0034($a0)
	lw      $t7, 0x0010($sp)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0010($sp)
52$:
	lw      $t0, 0x0014($sp)
	lw      $t1, 0x0008($sp)
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x0014($sp)
	lw      $t2, 0x0030($t1)
	nop
	slt     $at, $t9, $t2
	bnez    $at, 22$
	nop
61$:
	lw      $a2, 0x0004($a2)
	nop
	bnez    $a2, 13$
	nop
65$:
	lw      $t3, 0x0010($sp)
	nop
	beqz    $t3, 93$
	nop
	lw      $t4, 0x0010($sp)
	lwc1    $f16, 0x002C($a0)
	mtc1    $t4, $f18
	nop
	cvt.s.w $f4, $f18
	nop
	div.s   $f6, $f16, $f4
	swc1    $f6, 0x002C($a0)
	lw      $t5, 0x0010($sp)
	lwc1    $f8, 0x0030($a0)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f18, $f10
	nop
	div.s   $f16, $f8, $f18
	swc1    $f16, 0x0030($a0)
	lw      $t6, 0x0010($sp)
	lwc1    $f4, 0x0034($a0)
	mtc1    $t6, $f6
	nop
	cvt.s.w $f10, $f6
	nop
	div.s   $f8, $f4, $f10
	swc1    $f8, 0x0034($a0)
93$:
	b       95$
	nop
95$:
	jr      $ra
	addiu   $sp, $sp, 0x0018

find_thisface_verts:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	sw      $0, 0x002C($sp)
	lw      $t7, 0x0030($t6)
	nop
	blez    $t7, 78$
	nop
11$:
	lw      $t8, 0x0034($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0024($sp)
	sw      $0, 0x0028($sp)
	lw      $t0, 0x0024($sp)
	nop
	beqz    $t0, 55$
	nop
21$:
	lw      $t1, 0x0024($sp)
	li      $at, 0x0100
	lw      $t2, 0x0008($t1)
	nop
	lw      $t3, 0x000C($t2)
	nop
	beq     $t3, $at, 32$
	nop
	li      $at, 0x0008
	bne     $t3, $at, 46$
	nop
32$:
	lw      $t5, 0x002C($sp)
	lw      $t4, 0x0030($sp)
	sll     $t6, $t5, 2
	addu    $t7, $t4, $t6
	lw      $t8, 0x0034($t7)
	lw      $t9, 0x0028($sp)
	nop
	xor     $s0, $t8, $t9
	sltiu   $s0, $s0, 0x0001
	addiu   $t0, $t9, 0x0001
	beqz    $s0, 46$
	sw      $t0, 0x0028($sp)
	b       55$
	nop
46$:
	lw      $t1, 0x0024($sp)
	nop
	lw      $t2, 0x0004($t1)
	nop
	sw      $t2, 0x0024($sp)
	lw      $t3, 0x0024($sp)
	nop
	bnez    $t3, 21$
	nop
55$:
	lw      $t5, 0x0024($sp)
	nop
	bnez    $t5, 62$
	nop
	la.u    $a0, str_face_draw_801B580C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B580C
62$:
	lw      $t4, 0x0024($sp)
	lw      $t8, 0x002C($sp)
	lw      $t7, 0x0030($sp)
	lw      $t6, 0x0008($t4)
	sll     $t9, $t8, 2
	addu    $t0, $t7, $t9
	sw      $t6, 0x0034($t0)
	lw      $t1, 0x002C($sp)
	lw      $t3, 0x0030($sp)
	addiu   $t2, $t1, 0x0001
	sw      $t2, 0x002C($sp)
	lw      $t5, 0x0030($t3)
	nop
	slt     $at, $t2, $t5
	bnez    $at, 11$
	nop
78$:
	lw      $a0, 0x0030($sp)
	jal     calc_facenormal
	nop
	b       83$
	nop
83$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl map_vertices
map_vertices:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.u    $a0, str_face_draw_801B5834
	jal     imin
	la.l    $a0, str_face_draw_801B5834
	lw      $t6, 0x0030($sp)
	nop
	lw      $s0, 0x001C($t6)
	nop
	beqz    $s0, 26$
	nop
15$:
	lw      $t7, 0x0008($s0)
	nop
	sw      $t7, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0034($sp)
	jal     find_thisface_verts
	nop
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, 15$
	nop
26$:
	lw      $t8, 0x0034($sp)
	nop
	lw      $s1, 0x001C($t8)
	nop
	beqz    $s1, 43$
	nop
32$:
	lw      $t9, 0x0008($s1)
	nop
	sw      $t9, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	lw      $a1, 0x0030($sp)
	jal     face_draw_8017B258
	nop
	lw      $s1, 0x0004($s1)
	nop
	bnez    $s1, 32$
	nop
43$:
	jal     imout
	nop
	b       47$
	nop
47$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_draw_8017B608:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0004($sp)
	lw      $t6, 0x0004($sp)
	nop
	lhu     $t7, 0x0012($t6)
	nop
	andi    $t8, $t7, 0x0008
	beqz    $t8, 15$
	nop
	lw      $t9, 0x0004($sp)
	li      $at, -0x0015
	lhu     $t0, 0x0012($t9)
	nop
	and     $t1, $t0, $at
	sh      $t1, 0x0012($t9)
15$:
	b       17$
	nop
17$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_draw_8017B654:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0030($sp)
	lw      $t6, 0x0030($sp)
	nop
	sw      $t6, 0x002C($sp)
	lw      $t7, 0x002C($sp)
	nop
	lhu     $t8, 0x0012($t7)
	nop
	andi    $t9, $t8, 0x0008
	beqz    $t9, 49$
	nop
	lw      $t0, 0x002C($sp)
	lui     $t2, %hi(_face_draw_bss-0x210+0x3B0)
	lw      $t2, %lo(_face_draw_bss-0x210+0x3B0)($t2)
	lh      $t1, 0x0010($t0)
	nop
	bne     $t1, $t2, 49$
	nop
	lui     $t3, %hi(face_draw_801A8288)
	lw      $t3, %lo(face_draw_801A8288)($t3)
	nop
	beqz    $t3, 32$
	nop
	lui     $a0, %hi(face_draw_801A8288)
	lw      $a0, %lo(face_draw_801A8288)($a0)
	lw      $a1, 0x002C($sp)
	jal     face_dynlist_8018B6BC
	nop
	b       35$
	swc1    $f0, 0x001C($sp)
32$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x001C($sp)
35$:
	lui     $at, %hi(_face_draw_bss-0x210+0x3B4)
	lwc1    $f8, %lo(_face_draw_bss-0x210+0x3B4)($at)
	lwc1    $f6, 0x001C($sp)
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    49$
	nop
	lwc1    $f10, 0x001C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B4)
	swc1    $f10, %lo(_face_draw_bss-0x210+0x3B4)($at)
	lw      $t4, 0x002C($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B8)
	sw      $t4, %lo(_face_draw_bss-0x210+0x3B8)($at)
49$:
	b       51$
	nop
51$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0030
	jr      $ra
	nop

face_draw_8017B730:
	lui     $t6, %hi(face_draw_801A8288)
	lw      $t6, %lo(face_draw_801A8288)($t6)
	nop
	beqz    $t6, 7$
	nop
	jr      $ra
	nop
7$:
	lui     $at, %hi(face_draw_801A8288)
	sw      $a0, %lo(face_draw_801A8288)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl UpdateView
UpdateView:
	addiu   $sp, $sp, -0x0140
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0140($sp)
	sw      $s0, 0x0018($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D0)
	sw      $0, %lo(_face_draw_bss-0x210+0x3D0)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3D4)
	sw      $0, %lo(_face_draw_bss-0x210+0x3D4)($at)
	lw      $t6, 0x0140($sp)
	nop
	lw      $t7, 0x0034($t6)
	nop
	andi    $t8, $t7, 0x0800
	bnez    $t8, 23$
	nop
	lw      $t9, 0x0140($sp)
	li.u    $at, 0xFFEFFFFF
	lw      $t0, 0x0034($t9)
	li.l    $at, 0xFFEFFFFF
	and     $t1, $t0, $at
	sw      $t1, 0x0034($t9)
	b       408$
	nop
23$:
	la.u    $a0, str_face_draw_801B5844
	jal     imin
	la.l    $a0, str_face_draw_801B5844
	lw      $t2, 0x0140($sp)
	nop
	lw      $t3, 0x0098($t2)
	nop
	beqz    $t3, 38$
	nop
	lw      $t4, 0x0140($sp)
	nop
	lw      $t9, 0x0098($t4)
	move    $a0, $t4
	jalr    $t9
	nop
38$:
	lw      $t5, 0x0140($sp)
	li      $at, 0x00100000
	lw      $t6, 0x0034($t5)
	nop
	and     $t7, $t6, $at
	bnez    $t7, 51$
	nop
	lw      $t8, 0x0140($sp)
	li      $at, 0x00100000
	lw      $t0, 0x0034($t8)
	nop
	or      $t1, $t0, $at
	sw      $t1, 0x0034($t8)
51$:
	lui     $at, %hi(face_draw_801A8288)
	sw      $0, %lo(face_draw_801A8288)($at)
	lw      $t2, 0x0140($sp)
	nop
	lw      $t3, 0x0028($t2)
	nop
	beqz    $t3, 81$
	nop
	lw      $t4, 0x0140($sp)
	la.u    $a1, face_draw_8017B730
	lw      $a2, 0x0028($t4)
	la.l    $a1, face_draw_8017B730
	jal     face_object_8017E520
	li      $a0, 0x0200
	lui     $t9, %hi(face_draw_801A8288)
	lw      $t9, %lo(face_draw_801A8288)($t9)
	lw      $t5, 0x0140($sp)
	nop
	sw      $t9, 0x0024($t5)
	lw      $t6, 0x0140($sp)
	nop
	lw      $t7, 0x0024($t6)
	nop
	beqz    $t7, 81$
	nop
	lui     $t1, %hi(face_draw_801A8288)
	lw      $t1, %lo(face_draw_801A8288)($t1)
	lw      $t0, 0x0140($sp)
	nop
	sw      $t0, 0x018C($t1)
81$:
	lw      $t8, 0x0140($sp)
	li      $at, 0x00040000
	lw      $t2, 0x0034($t8)
	nop
	and     $t3, $t2, $at
	beqz    $t3, 108$
	nop
	la.u    $a0, str_face_draw_801B5854
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5854
	la.u    $a0, str_face_draw_801B585C
	jal     restart_timer
	la.l    $a0, str_face_draw_801B585C
	lw      $a0, 0x0140($sp)
	jal     face_object_8018159C
	nop
	la.u    $a0, str_face_draw_801B5868
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_draw_801B5868
	la.u    $a0, str_face_draw_801B5874
	jal     restart_timer
	la.l    $a0, str_face_draw_801B5874
	lw      $t4, 0x0140($sp)
	lui     $at, %hi(face_draw_801A8288)
	lw      $t9, 0x0024($t4)
	nop
	sw      $t9, %lo(face_draw_801A8288)($at)
108$:
	lw      $t5, 0x0140($sp)
	li      $at, 0x00080000
	lw      $t6, 0x0034($t5)
	nop
	and     $t7, $t6, $at
	bnez    $t7, 119$
	nop
	jal     imout
	nop
	b       408$
	nop
119$:
	lw      $t0, 0x0140($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3C4)
	sw      $t0, %lo(_face_draw_bss-0x210+0x3C4)($at)
	lw      $a0, 0x0140($sp)
	jal     face_gfx_801A4A30
	nop
	jal     gd_startdisplist
	li      $a0, 0x0008
	lw      $t1, 0x0140($sp)
	nop
	sw      $v0, 0x0070($t1)
	lui     $a0, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $a0, %lo(_face_draw_bss-0x210+0x3C4)($a0)
	jal     face_gfx_801A2588
	nop
	jal     gd_shading
	li      $a0, 0x0009
	lw      $t8, 0x0140($sp)
	nop
	lw      $t2, 0x0034($t8)
	nop
	andi    $t3, $t2, 0x6000
	beqz    $t3, 145$
	nop
	jal     face_gfx_801A2450
	nop
145$:
	lw      $t4, 0x0140($sp)
	nop
	lw      $t9, 0x0028($t4)
	nop
	beqz    $t9, 398$
	nop
	lui     $t5, %hi(face_control+0xD8)
	lw      $t5, %lo(face_control+0xD8)($t5)
	nop
	srl     $t6, $t5, 31
	beqz    $t6, 362$
	nop
	li      $a0, 0x0003
	jal     gd_getproperty
	move    $a1, $0
	beqz    $v0, 354$
	nop
	lui     $t7, %hi(face_control+0xD8)
	lw      $t7, %lo(face_control+0xD8)($t7)
	nop
	sll     $t0, $t7, 3
	srl     $t1, $t0, 31
	beqz    $t1, 354$
	nop
	la.u    $a0, _face_draw_bss-0x210+0x2E8
	la.l    $a0, _face_draw_bss-0x210+0x2E8
	jal     face_gfx_801A5B14
	li      $a1, 0x0064
	lui     $t8, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t8, %lo(_face_draw_bss-0x210+0x3C4)($t8)
	li      $a0, 0x001B
	lw      $a1, 0x0028($t8)
	jal     draw_scene
	move    $a2, $0
	la.u    $a0, _face_draw_bss-0x210+0x2E8
	jal     face_gfx_801A5B8C
	la.l    $a0, _face_draw_bss-0x210+0x2E8
	sw      $v0, 0x0138($sp)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B0)
	sw      $0, %lo(_face_draw_bss-0x210+0x3B0)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B8)
	sw      $0, %lo(_face_draw_bss-0x210+0x3B8)($at)
	lui     $at, %hi(face_draw_801B5910)
	lwc1    $f4, %lo(face_draw_801B5910)($at)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B4)
	swc1    $f4, %lo(_face_draw_bss-0x210+0x3B4)($at)
	lw      $t2, 0x0138($sp)
	nop
	bgez    $t2, 200$
	nop
	la.u    $a0, str_face_draw_801B587C
	jal     face_stdio_8018D298
	la.l    $a0, str_face_draw_801B587C
	b       303$
	nop
200$:
	lw      $t3, 0x0138($sp)
	nop
	blez    $t3, 303$
	nop
	sw      $0, 0x012C($sp)
	lw      $t4, 0x0138($sp)
	sw      $0, 0x013C($sp)
	blez    $t4, 303$
	nop
209$:
	lw      $t9, 0x012C($sp)
	lui     $t6, %hi(_face_draw_bss-0x210+0x2E8)
	sll     $t5, $t9, 1
	addu    $t6, $t6, $t5
	lh      $t6, %lo(_face_draw_bss-0x210+0x2E8)($t6)
	addiu   $t7, $t9, 0x0001
	sw      $t7, 0x012C($sp)
	sw      $t6, 0x0134($sp)
	lw      $t0, 0x0134($sp)
	nop
	beqz    $t0, 264$
	nop
	lw      $t1, 0x012C($sp)
	lui     $t2, %hi(_face_draw_bss-0x210+0x2E8)
	sll     $t8, $t1, 1
	addu    $t2, $t2, $t8
	lh      $t2, %lo(_face_draw_bss-0x210+0x2E8)($t2)
	li      $at, 0x0004
	addiu   $t3, $t1, 0x0001
	move    $s0, $t2
	sw      $t3, 0x012C($sp)
	beq     $s0, $at, 240$
	sw      $t2, 0x0128($sp)
	li      $at, 0x0008
	beq     $s0, $at, 252$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 246$
	nop
	b       258$
	nop
240$:
	la.u    $a1, str_face_draw_801B58A0
	la.l    $a1, str_face_draw_801B58A0
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       264$
	nop
246$:
	la.u    $a1, str_face_draw_801B58A4
	la.l    $a1, str_face_draw_801B58A4
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       264$
	nop
252$:
	la.u    $a1, str_face_draw_801B58A8
	la.l    $a1, str_face_draw_801B58A8
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       264$
	nop
258$:
	la.u    $a1, str_face_draw_801B58AC
	la.l    $a1, str_face_draw_801B58AC
	jal     face_stdio_8018DDD8
	addiu   $a0, $sp, 0x0028
	b       264$
	nop
264$:
	lw      $t4, 0x0134($sp)
	nop
	slti    $at, $t4, 0x0002
	bnez    $at, 297$
	nop
	lw      $t5, 0x0134($sp)
	sw      $0, 0x0130($sp)
	addiu   $t6, $t5, -0x0001
	blez    $t6, 297$
	nop
274$:
	lw      $t9, 0x012C($sp)
	lui     $t0, %hi(_face_draw_bss-0x210+0x2E8)
	sll     $t7, $t9, 1
	addu    $t0, $t0, $t7
	lh      $t0, %lo(_face_draw_bss-0x210+0x2E8)($t0)
	lui     $at, %hi(_face_draw_bss-0x210+0x3B0)
	addiu   $t8, $t9, 0x0001
	sw      $t8, 0x012C($sp)
	sw      $t0, %lo(_face_draw_bss-0x210+0x3B0)($at)
	lui     $t2, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t2, %lo(_face_draw_bss-0x210+0x3C4)($t2)
	lw      $a0, 0x0128($sp)
	la.u    $a1, face_draw_8017B654
	lw      $a2, 0x0028($t2)
	jal     face_object_8017E520
	la.l    $a1, face_draw_8017B654
	lw      $t1, 0x0130($sp)
	lw      $t4, 0x0134($sp)
	addiu   $t3, $t1, 0x0001
	addiu   $t5, $t4, -0x0001
	slt     $at, $t3, $t5
	bnez    $at, 274$
	sw      $t3, 0x0130($sp)
297$:
	lw      $t6, 0x013C($sp)
	lw      $t0, 0x0138($sp)
	addiu   $t7, $t6, 0x0001
	slt     $at, $t7, $t0
	bnez    $at, 209$
	sw      $t7, 0x013C($sp)
303$:
	lui     $t9, %hi(_face_draw_bss-0x210+0x3B8)
	lw      $t9, %lo(_face_draw_bss-0x210+0x3B8)($t9)
	nop
	beqz    $t9, 354$
	nop
	lui     $t8, %hi(_face_draw_bss-0x210+0x3B8)
	lw      $t8, %lo(_face_draw_bss-0x210+0x3B8)($t8)
	nop
	lhu     $t2, 0x0012($t8)
	nop
	ori     $t1, $t2, 0x0004
	sh      $t1, 0x0012($t8)
	lui     $t4, %hi(_face_draw_bss-0x210+0x3B8)
	lw      $t4, %lo(_face_draw_bss-0x210+0x3B8)($t4)
	nop
	lhu     $t3, 0x0012($t4)
	nop
	ori     $t5, $t3, 0x0010
	sh      $t5, 0x0012($t4)
	lui     $t6, %hi(_face_draw_bss-0x210+0x3B8)
	lui     $t7, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t7, %lo(_face_draw_bss-0x210+0x3C4)($t7)
	lw      $t6, %lo(_face_draw_bss-0x210+0x3B8)($t6)
	nop
	sw      $t6, 0x0030($t7)
	cfc1    $t0, $31
	lui     $at, %hi(_face_draw_bss-0x210+0x468)
	lwc1    $f6, %lo(_face_draw_bss-0x210+0x468)($at)
	ori     $at, $t0, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(face_control+0xD0)
	cvt.w.s $f8, $f6
	mfc1    $t9, $f8
	ctc1    $t0, $31
	sw      $t9, %lo(face_control+0xD0)($at)
	lui     $at, %hi(face_control+0xB8)
	sw      $t9, %lo(face_control+0xB8)($at)
	cfc1    $t2, $31
	lui     $at, %hi(_face_draw_bss-0x210+0x46C)
	lwc1    $f10, %lo(_face_draw_bss-0x210+0x46C)($at)
	ori     $at, $t2, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lui     $at, %hi(face_control+0xD4)
	cvt.w.s $f16, $f10
	mfc1    $t1, $f16
	ctc1    $t2, $31
	sw      $t1, %lo(face_control+0xD4)($at)
	lui     $at, %hi(face_control+0xBC)
	sw      $t1, %lo(face_control+0xBC)($at)
354$:
	lui     $t8, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t8, %lo(_face_draw_bss-0x210+0x3C4)($t8)
	nop
	lw      $a0, 0x0028($t8)
	jal     face_object_80180AB4
	nop
	b       391$
	nop
362$:
	lui     $t3, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t3, %lo(_face_draw_bss-0x210+0x3C4)($t3)
	nop
	lw      $t5, 0x0030($t3)
	nop
	beqz    $t5, 391$
	nop
	lui     $t4, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t4, %lo(_face_draw_bss-0x210+0x3C4)($t4)
	li      $at, -0x0005
	lw      $t6, 0x0030($t4)
	nop
	lhu     $t7, 0x0012($t6)
	nop
	and     $t0, $t7, $at
	sh      $t0, 0x0012($t6)
	lui     $t9, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t9, %lo(_face_draw_bss-0x210+0x3C4)($t9)
	li      $at, -0x0011
	lw      $t2, 0x0030($t9)
	nop
	lhu     $t1, 0x0012($t2)
	nop
	and     $t8, $t1, $at
	sh      $t8, 0x0012($t2)
	lui     $t3, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t3, %lo(_face_draw_bss-0x210+0x3C4)($t3)
	nop
	sw      $0, 0x0030($t3)
391$:
	lui     $t5, %hi(_face_draw_bss-0x210+0x3C4)
	lw      $t5, %lo(_face_draw_bss-0x210+0x3C4)($t5)
	li      $a0, 0x001A
	lw      $a1, 0x0028($t5)
	lw      $a2, 0x002C($t5)
	jal     draw_scene
	nop
398$:
	jal     face_gfx_801A3620
	nop
	jal     face_gfx_8019EBAC
	nop
	jal     imout
	nop
	b       408$
	nop
	b       408$
	nop
408$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0140

face_draw_8017BDD4:
	jr      $ra
	nop
	jr      $ra
	nop
