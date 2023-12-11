.include "sm64/asm.inc"

.set fp=32
.set noreorder
.set noat

.align 4

.globl face_object_8017BDF0
face_object_8017BDF0:
	lui     $at, %hi(face_object_801B5CBC)
	lwc1    $f4, %lo(face_object_801B5CBC)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	swc1    $f4, %lo(_face_object_bss-0x480+0x480)($at)
	lui     $at, %hi(face_object_801B5CC0)
	lwc1    $f6, %lo(face_object_801B5CC0)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	swc1    $f6, %lo(_face_object_bss-0x480+0x484)($at)
	lui     $at, %hi(face_object_801B5CC4)
	lwc1    $f8, %lo(face_object_801B5CC4)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	swc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
	lui     $at, %hi(face_object_801B5CC8)
	lwc1    $f10, %lo(face_object_801B5CC8)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	swc1    $f10, %lo(_face_object_bss-0x480+0x48C)($at)
	lui     $at, %hi(face_object_801B5CCC)
	lwc1    $f16, %lo(face_object_801B5CCC)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	swc1    $f16, %lo(_face_object_bss-0x480+0x490)($at)
	lui     $at, %hi(face_object_801B5CD0)
	lwc1    $f18, %lo(face_object_801B5CD0)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	swc1    $f18, %lo(_face_object_bss-0x480+0x494)($at)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017BE60
face_object_8017BE60:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x480)($at)
	lwc1    $f4, 0x001C($sp)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    19$
	nop
	lwc1    $f8, 0x001C($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	swc1    $f8, %lo(_face_object_bss-0x480+0x480)($at)
19$:
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x484)($at)
	lwc1    $f10, 0x0020($sp)
	nop
	c.lt.s  $f10, $f16
	nop
	bc1f    30$
	nop
	lwc1    $f18, 0x0020($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	swc1    $f18, %lo(_face_object_bss-0x480+0x484)($at)
30$:
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x488)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	c.lt.s  $f4, $f6
	nop
	bc1f    41$
	nop
	lwc1    $f8, 0x0024($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	swc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
41$:
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x48C)($at)
	lwc1    $f10, 0x001C($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    52$
	nop
	lwc1    $f18, 0x001C($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	swc1    $f18, %lo(_face_object_bss-0x480+0x48C)($at)
52$:
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x490)($at)
	lwc1    $f4, 0x0020($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    63$
	nop
	lwc1    $f8, 0x0020($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	swc1    $f8, %lo(_face_object_bss-0x480+0x490)($at)
63$:
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x494)($at)
	lwc1    $f10, 0x0024($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    74$
	nop
	lwc1    $f18, 0x0024($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	swc1    $f18, %lo(_face_object_bss-0x480+0x494)($at)
74$:
	b       76$
	nop
76$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_object_8017BFA0
face_object_8017BFA0:
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x480)($at)
	nop
	swc1    $f4, 0x0000($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x484)($at)
	nop
	swc1    $f6, 0x0004($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	lwc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
	nop
	swc1    $f8, 0x0008($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x48C)($at)
	nop
	swc1    $f10, 0x000C($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x490)($at)
	nop
	swc1    $f16, 0x0010($a0)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	lwc1    $f18, %lo(_face_object_bss-0x480+0x494)($at)
	nop
	swc1    $f18, 0x0014($a0)
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017C010
face_object_8017C010:
	addiu   $sp, $sp, -0x0008
	sw      $a0, 0x0008($sp)
	sw      $a1, 0x000C($sp)
	b       7$
	nop
	b       7$
	nop
7$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017C034:
	addiu   $sp, $sp, -0x0008
	move    $a1, $a0
	slti    $at, $a1, 0x1001
	bnez    $at, 28$
	nop
	li      $at, 0x2000
	beq     $a1, $at, 137$
	nop
	li      $at, 0x4000
	beq     $a1, $at, 142$
	nop
	li      $at, 0x8000
	beq     $a1, $at, 147$
	nop
	li      $at, 0x00010000
	beq     $a1, $at, 152$
	nop
	li      $at, 0x00020000
	beq     $a1, $at, 157$
	nop
	li      $at, 0x00080000
	beq     $a1, $at, 127$
	nop
	li      $at, 0x00100000
	beq     $a1, $at, 162$
	nop
	b       L8017C2D0
	nop
28$:
	slti    $at, $a1, 0x0101
	bnez    $at, 42$
	nop
	li      $at, 0x0200
	beq     $a1, $at, 112$
	nop
	li      $at, 0x0800
	beq     $a1, $at, 122$
	nop
	li      $at, 0x1000
	beq     $a1, $at, 132$
	nop
	b       L8017C2D0
	nop
42$:
	slti    $at, $a1, 0x0041
	bnez    $at, 53$
	nop
	li      $at, 0x0080
	beq     $a1, $at, 117$
	nop
	li      $at, 0x0100
	beq     $a1, $at, 107$
	nop
	b       L8017C2D0
	nop
53$:
	slti    $at, $a1, 0x0021
	bnez    $at, 61$
	nop
	li      $at, 0x0040
	beq     $a1, $at, 102$
	nop
	b       L8017C2D0
	nop
61$:
	addiu   $t6, $a1, -0x0001
	sltiu   $at, $t6, 0x0020
	beqz    $at, L8017C2D0
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_object_801B5CD4)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_object_801B5CD4)($at)
	nop
	jr      $t6
	nop
.globl L8017C154
L8017C154:
	la.u    $t7, str_face_object_801B5920
	la.l    $t7, str_face_object_801B5920
	sw      $t7, 0x0004($sp)
	b       172$
	nop
.globl L8017C168
L8017C168:
	la.u    $t8, str_face_object_801B5928
	la.l    $t8, str_face_object_801B5928
	sw      $t8, 0x0004($sp)
	b       172$
	nop
.globl L8017C17C
L8017C17C:
	la.u    $t9, str_face_object_801B5930
	la.l    $t9, str_face_object_801B5930
	sw      $t9, 0x0004($sp)
	b       172$
	nop
.globl L8017C190
L8017C190:
	la.u    $t0, str_face_object_801B5938
	la.l    $t0, str_face_object_801B5938
	sw      $t0, 0x0004($sp)
	b       172$
	nop
.globl L8017C1A4
L8017C1A4:
	la.u    $t1, str_face_object_801B5944
	la.l    $t1, str_face_object_801B5944
	sw      $t1, 0x0004($sp)
	b       172$
	nop
.globl L8017C1B8
L8017C1B8:
	la.u    $t2, str_face_object_801B594C
	la.l    $t2, str_face_object_801B594C
	sw      $t2, 0x0004($sp)
	b       172$
	nop
102$:
	la.u    $t3, str_face_object_801B5954
	la.l    $t3, str_face_object_801B5954
	sw      $t3, 0x0004($sp)
	b       172$
	nop
107$:
	la.u    $t4, str_face_object_801B595C
	la.l    $t4, str_face_object_801B595C
	sw      $t4, 0x0004($sp)
	b       172$
	nop
112$:
	la.u    $t5, str_face_object_801B5968
	la.l    $t5, str_face_object_801B5968
	sw      $t5, 0x0004($sp)
	b       172$
	nop
117$:
	la.u    $t6, str_face_object_801B5970
	la.l    $t6, str_face_object_801B5970
	sw      $t6, 0x0004($sp)
	b       172$
	nop
122$:
	la.u    $t7, str_face_object_801B5978
	la.l    $t7, str_face_object_801B5978
	sw      $t7, 0x0004($sp)
	b       172$
	nop
127$:
	la.u    $t8, str_face_object_801B5984
	la.l    $t8, str_face_object_801B5984
	sw      $t8, 0x0004($sp)
	b       172$
	nop
132$:
	la.u    $t9, str_face_object_801B598C
	la.l    $t9, str_face_object_801B598C
	sw      $t9, 0x0004($sp)
	b       172$
	nop
137$:
	la.u    $t0, str_face_object_801B5994
	la.l    $t0, str_face_object_801B5994
	sw      $t0, 0x0004($sp)
	b       172$
	nop
142$:
	la.u    $t1, str_face_object_801B599C
	la.l    $t1, str_face_object_801B599C
	sw      $t1, 0x0004($sp)
	b       172$
	nop
147$:
	la.u    $t2, str_face_object_801B59A4
	la.l    $t2, str_face_object_801B59A4
	sw      $t2, 0x0004($sp)
	b       172$
	nop
152$:
	la.u    $t3, str_face_object_801B59AC
	la.l    $t3, str_face_object_801B59AC
	sw      $t3, 0x0004($sp)
	b       172$
	nop
157$:
	la.u    $t4, str_face_object_801B59B8
	la.l    $t4, str_face_object_801B59B8
	sw      $t4, 0x0004($sp)
	b       172$
	nop
162$:
	la.u    $t5, str_face_object_801B59C0
	la.l    $t5, str_face_object_801B59C0
	sw      $t5, 0x0004($sp)
	b       172$
	nop
.globl L8017C2D0
L8017C2D0:
	la.u    $t6, str_face_object_801B59C8
	la.l    $t6, str_face_object_801B59C8
	sw      $t6, 0x0004($sp)
	b       172$
	nop
172$:
	lw      $v0, 0x0004($sp)
	b       177$
	nop
	b       177$
	nop
177$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl make_object
make_object:
	addiu   $sp, $sp, -0x0048
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0048($sp)
	sw      $s0, 0x0018($sp)
	li      $t6, 0x0010
	sw      $t6, 0x0028($sp)
	la.u    $a0, str_face_object_801B59D0
	jal     imin
	la.l    $a0, str_face_object_801B59D0
	lw      $s0, 0x0048($sp)
	nop
	slti    $at, $s0, 0x2001
	bnez    $at, 37$
	nop
	li      $at, 0x4000
	beq     $s0, $at, 191$
	nop
	li      $at, 0x8000
	beq     $s0, $at, 198$
	nop
	li      $at, 0x00010000
	beq     $s0, $at, 205$
	nop
	li      $at, 0x00020000
	beq     $s0, $at, 212$
	nop
	li      $at, 0x00080000
	beq     $s0, $at, 170$
	nop
	li      $at, 0x00100000
	beq     $s0, $at, 219$
	nop
	li      $at, 0x00200000
	beq     $s0, $at, 119$
	nop
	b       L8017C688
	nop
37$:
	slti    $at, $s0, 0x0101
	bnez    $at, 54$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 147$
	nop
	li      $at, 0x0800
	beq     $s0, $at, 163$
	nop
	li      $at, 0x1000
	beq     $s0, $at, 177$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 184$
	nop
	b       L8017C688
	nop
54$:
	slti    $at, $s0, 0x0041
	bnez    $at, 65$
	nop
	li      $at, 0x0080
	beq     $s0, $at, 154$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 140$
	nop
	b       L8017C688
	nop
65$:
	slti    $at, $s0, 0x0021
	bnez    $at, 73$
	nop
	li      $at, 0x0040
	beq     $s0, $at, 133$
	nop
	b       L8017C688
	nop
73$:
	addiu   $t7, $s0, -0x0001
	sltiu   $at, $t7, 0x0020
	beqz    $at, L8017C688
	nop
	sll     $t7, $t7, 2
	lui     $at, %hi(face_object_801B5D54)
	addu    $at, $at, $t7
	lw      $t7, %lo(face_object_801B5D54)($at)
	nop
	jr      $t7
	nop
.globl L8017C450
L8017C450:
	li      $t8, 0x022C
	sw      $t8, 0x003C($sp)
	la.u    $t9, face_draw_8017A7E4
	la.l    $t9, face_draw_8017A7E4
	sw      $t9, 0x0034($sp)
	b       229$
	nop
.globl L8017C46C
L8017C46C:
	li      $t0, 0x0124
	sw      $t0, 0x003C($sp)
	la.u    $t1, face_draw_8017A690
	la.l    $t1, face_draw_8017A690
	sw      $t1, 0x0034($sp)
	b       229$
	nop
.globl L8017C488
L8017C488:
	li      $t2, 0x0078
	sw      $t2, 0x003C($sp)
	la.u    $t3, Draw_Group
	la.l    $t3, Draw_Group
	sw      $t3, 0x0034($sp)
	b       229$
	nop
.globl L8017C4A4
L8017C4A4:
	li      $t4, 0x00C0
	sw      $t4, 0x003C($sp)
	la.u    $t5, face_draw_8017A44C
	la.l    $t5, face_draw_8017A44C
	sw      $t5, 0x0034($sp)
	b       229$
	nop
.globl L8017C4C0
L8017C4C0:
	li      $t6, 0x009C
	sw      $t6, 0x003C($sp)
	la.u    $t7, face_draw_8017A344
	la.l    $t7, face_draw_8017A344
	sw      $t7, 0x0034($sp)
	b       229$
	nop
119$:
	li      $t8, 0x0038
	sw      $t8, 0x003C($sp)
	la.u    $t9, face_draw_8017A344
	la.l    $t9, face_draw_8017A344
	sw      $t9, 0x0034($sp)
	b       229$
	nop
.globl L8017C4F8
L8017C4F8:
	li      $t0, 0x0220
	sw      $t0, 0x003C($sp)
	la.u    $t1, face_draw_80179768
	la.l    $t1, face_draw_80179768
	sw      $t1, 0x0034($sp)
	b       229$
	nop
133$:
	li      $t2, 0x0044
	sw      $t2, 0x003C($sp)
	la.u    $t3, face_draw_8017A958
	la.l    $t3, face_draw_8017A958
	sw      $t3, 0x0034($sp)
	b       229$
	nop
140$:
	li      $t4, 0x0048
	sw      $t4, 0x003C($sp)
	la.u    $t5, face_draw_8017A344
	la.l    $t5, face_draw_8017A344
	sw      $t5, 0x0034($sp)
	b       229$
	nop
147$:
	li      $t6, 0x0190
	sw      $t6, 0x003C($sp)
	la.u    $t7, Draw_Camera
	la.l    $t7, Draw_Camera
	sw      $t7, 0x0034($sp)
	b       229$
	nop
154$:
	li      $t8, 0x004C
	sw      $t8, 0x003C($sp)
	la.u    $t9, Draw_Face
	la.l    $t9, Draw_Face
	sw      $t9, 0x0034($sp)
	li      $t0, 0x0001
	sw      $t0, 0x0028($sp)
	b       229$
	nop
163$:
	li      $t1, 0x0060
	sw      $t1, 0x003C($sp)
	la.u    $t2, Draw_Material
	la.l    $t2, Draw_Material
	sw      $t2, 0x0034($sp)
	b       229$
	nop
170$:
	li      $t3, 0x00A0
	sw      $t3, 0x003C($sp)
	la.u    $t4, face_draw_80178A40
	la.l    $t4, face_draw_80178A40
	sw      $t4, 0x0034($sp)
	b       229$
	nop
177$:
	li      $t5, 0x0040
	sw      $t5, 0x003C($sp)
	la.u    $t6, face_draw_8017A344
	la.l    $t6, face_draw_8017A344
	sw      $t6, 0x0034($sp)
	b       229$
	nop
184$:
	li      $t7, 0x0060
	sw      $t7, 0x003C($sp)
	la.u    $t8, face_draw_801798AC
	la.l    $t8, face_draw_801798AC
	sw      $t8, 0x0034($sp)
	b       229$
	nop
191$:
	li      $t9, 0x00A0
	sw      $t9, 0x003C($sp)
	la.u    $t0, face_draw_8017A344
	la.l    $t0, face_draw_8017A344
	sw      $t0, 0x0034($sp)
	b       229$
	nop
198$:
	li      $t1, 0x0034
	sw      $t1, 0x003C($sp)
	la.u    $t2, face_draw_80179490
	la.l    $t2, face_draw_80179490
	sw      $t2, 0x0034($sp)
	b       229$
	nop
205$:
	li      $t3, 0x0058
	sw      $t3, 0x003C($sp)
	la.u    $t4, face_draw_8017A344
	la.l    $t4, face_draw_8017A344
	sw      $t4, 0x0034($sp)
	b       229$
	nop
212$:
	li      $t5, 0x0024
	sw      $t5, 0x003C($sp)
	la.u    $t6, face_draw_8017A344
	la.l    $t6, face_draw_8017A344
	sw      $t6, 0x0034($sp)
	b       229$
	nop
219$:
	li      $t7, 0x0038
	sw      $t7, 0x003C($sp)
	la.u    $t8, face_draw_8017A344
	la.l    $t8, face_draw_8017A344
	sw      $t8, 0x0034($sp)
	b       229$
	nop
.globl L8017C688
L8017C688:
	la.u    $a0, str_face_object_801B59DC
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B59DC
229$:
	lw      $a0, 0x0048($sp)
	jal     face_object_8017C034
	nop
	sw      $v0, 0x0030($sp)
	lw      $a0, 0x0030($sp)
	jal     face_stdio_8018C44C
	nop
	lw      $a0, 0x003C($sp)
	lw      $a1, 0x0028($sp)
	jal     face_gfx_8019BC88
	nop
	sw      $v0, 0x0044($sp)
	lw      $t9, 0x0044($sp)
	nop
	bnez    $t9, 249$
	nop
	la.u    $a0, str_face_object_801B59FC
	lw      $a1, 0x0030($sp)
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B59FC
249$:
	lw      $a0, 0x0030($sp)
	jal     face_stdio_8018C598
	nop
	lw      $t0, 0x0044($sp)
	nop
	sw      $t0, 0x002C($sp)
	lw      $t1, 0x003C($sp)
	sw      $0, 0x0038($sp)
	blez    $t1, 270$
	nop
259$:
	lw      $t2, 0x002C($sp)
	lw      $t3, 0x0038($sp)
	nop
	addu    $t4, $t2, $t3
	sb      $0, 0x0000($t4)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x003C($sp)
	addiu   $t6, $t5, 0x0001
	slt     $at, $t6, $t7
	bnez    $at, 259$
	sw      $t6, 0x0038($sp)
270$:
	lui     $t8, %hi(_face_object_bss-0x480+0x538)
	lw      $t8, %lo(_face_object_bss-0x480+0x538)($t8)
	lui     $at, %hi(_face_object_bss-0x480+0x538)
	addiu   $t9, $t8, 0x0001
	sw      $t9, %lo(_face_object_bss-0x480+0x538)($at)
	lui     $t0, %hi(_face_object_bss-0x480+0x56C)
	lw      $t0, %lo(_face_object_bss-0x480+0x56C)($t0)
	nop
	sw      $t0, 0x0040($sp)
	lw      $t1, 0x0044($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x56C)
	sw      $t1, %lo(_face_object_bss-0x480+0x56C)($at)
	lw      $t2, 0x0044($sp)
	nop
	sw      $0, 0x0000($t2)
	lw      $t3, 0x0040($sp)
	nop
	beqz    $t3, 297$
	nop
	lw      $t4, 0x0040($sp)
	lw      $t5, 0x0044($sp)
	nop
	sw      $t4, 0x0004($t5)
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0040($sp)
	nop
	sw      $t6, 0x0000($t7)
297$:
	lui     $t8, %hi(_face_object_bss-0x480+0x538)
	lw      $t8, %lo(_face_object_bss-0x480+0x538)($t8)
	lw      $t9, 0x0044($sp)
	nop
	sh      $t8, 0x0010($t9)
	lw      $t0, 0x0048($sp)
	lw      $t1, 0x0044($sp)
	nop
	sw      $t0, 0x000C($t1)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0044($sp)
	nop
	sw      $t2, 0x0008($t3)
	lw      $t4, 0x0044($sp)
	nop
	sh      $0, 0x0012($t4)
	jal     imout
	nop
	lw      $v0, 0x0044($sp)
	b       320$
	nop
	b       320$
	nop
320$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0048

.globl face_object_8017C810
face_object_8017C810:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_object
	li      $a0, 0x00100000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0014($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	lwc1    $f6, 0x0004($t8)
	nop
	swc1    $f6, 0x0018($t9)
	lw      $t0, 0x0024($sp)
	lw      $t1, 0x001C($sp)
	lwc1    $f8, 0x0008($t0)
	nop
	swc1    $f8, 0x001C($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x001C($sp)
	lwc1    $f10, 0x000C($t2)
	nop
	swc1    $f10, 0x0020($t3)
	lw      $t4, 0x0024($sp)
	lw      $t5, 0x001C($sp)
	lwc1    $f16, 0x0010($t4)
	nop
	swc1    $f16, 0x0024($t5)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	lwc1    $f18, 0x0014($t6)
	nop
	swc1    $f18, 0x0028($t7)
	lw      $t8, 0x0028($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0030($t1)
	b       48$
	nop
48$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

face_object_8017C8E0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     make_object
	li      $a0, 0x00200000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0030($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x0034($t9)
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

.globl face_object_8017C940
face_object_8017C940:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	la.u    $a0, str_face_object_801B5A20
	jal     face_stdio_8018C44C
	la.l    $a0, str_face_object_801B5A20
	jal     gd_malloc
	li      $a0, 0x000C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 17$
	nop
	la.u    $a0, str_face_object_801B5A28
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B5A28
17$:
	la.u    $a0, str_face_object_801B5A44
	jal     face_stdio_8018C598
	la.l    $a0, str_face_object_801B5A44
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, 28$
	nop
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	nop
	sw      $t8, 0x0004($t9)
28$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0008($t4)
	lw      $v0, 0x001C($sp)
	b       44$
	nop
	b       44$
	nop
44$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017CA00
face_object_8017CA00:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     gd_malloc
	li      $a0, 0x000C
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x001C($sp)
	nop
	bnez    $t6, 14$
	nop
	la.u    $a0, str_face_object_801B5A4C
	jal     face_stdio_8018D1F8
	la.l    $a0, str_face_object_801B5A4C
14$:
	lw      $t7, 0x0020($sp)
	nop
	beqz    $t7, 22$
	nop
	lw      $t8, 0x001C($sp)
	lw      $t9, 0x0020($sp)
	nop
	sw      $t8, 0x0004($t9)
22$:
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0000($t1)
	lw      $t2, 0x001C($sp)
	nop
	sw      $0, 0x0004($t2)
	lw      $t3, 0x0024($sp)
	lw      $t4, 0x001C($sp)
	nop
	sw      $t3, 0x0008($t4)
	lw      $t5, 0x001C($sp)
	li      $at, 0x3F800000
	bne     $t5, $at, 40$
	nop
	la.u    $a0, str_face_object_801B5A68
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5A68
40$:
	lw      $v0, 0x001C($sp)
	b       45$
	nop
	b       45$
	nop
45$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017CAC4
face_object_8017CAC4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     make_object
	li      $a0, 0x00020000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0020($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x0014($t7)
	lw      $t8, 0x0024($sp)
	lw      $t9, 0x001C($sp)
	nop
	sw      $t8, 0x0020($t9)
	lw      $t0, 0x002C($sp)
	lw      $t1, 0x001C($sp)
	nop
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x0028($sp)
	lw      $t3, 0x001C($sp)
	nop
	sw      $t2, 0x001C($t3)
	lw      $v0, 0x001C($sp)
	b       30$
	nop
	b       30$
	nop
30$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl reset_plane
reset_plane:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0024($sp)
	sw      $a0, 0x0050($sp)
	sw      $s0, 0x0020($sp)
	swc1    $f21, 0x0018($sp)
	swc1    $f20, 0x001C($sp)
	la.u    $a0, str_face_object_801B5A70
	jal     imin
	la.l    $a0, str_face_object_801B5A70
	lw      $t6, 0x0050($sp)
	nop
	lw      $t7, 0x0040($t6)
	nop
	sw      $t7, 0x004C($sp)
	lw      $a0, 0x004C($sp)
	jal     calc_facenormal
	nop
	lw      $t8, 0x004C($sp)
	nop
	lw      $a0, 0x0034($t8)
	addiu   $a1, $t8, 0x0024
	jal     face_math_80194EF8
	addiu   $a0, $a0, 0x0020
	lw      $t9, 0x0050($sp)
	nop
	swc1    $f0, 0x001C($t9)
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x0048($sp)
	lw      $t0, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f6, 0x0024($t0)
	nop
	c.lt.s  $f6, $f8
	nop
	bc1f    39$
	nop
	b       43$
	neg.s   $f20, $f6
39$:
	lw      $t1, 0x004C($sp)
	nop
	lwc1    $f20, 0x0024($t1)
	nop
43$:
	swc1    $f20, 0x0044($sp)
	lwc1    $f10, 0x0044($sp)
	lwc1    $f16, 0x0048($sp)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1f    55$
	nop
	sw      $0, 0x0030($sp)
	lwc1    $f18, 0x0044($sp)
	nop
	swc1    $f18, 0x0048($sp)
55$:
	lw      $t2, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f4, 0x0028($t2)
	nop
	c.lt.s  $f4, $f8
	nop
	bc1f    65$
	nop
	b       69$
	neg.s   $f20, $f4
65$:
	lw      $t3, 0x004C($sp)
	nop
	lwc1    $f20, 0x0028($t3)
	nop
69$:
	swc1    $f20, 0x0044($sp)
	lwc1    $f6, 0x0044($sp)
	lwc1    $f10, 0x0048($sp)
	nop
	c.lt.s  $f10, $f6
	nop
	bc1f    82$
	nop
	li      $t4, 0x0001
	sw      $t4, 0x0030($sp)
	lwc1    $f16, 0x0044($sp)
	nop
	swc1    $f16, 0x0048($sp)
82$:
	lw      $t5, 0x004C($sp)
	mtc1    $0, $f8
	lwc1    $f18, 0x002C($t5)
	nop
	c.lt.s  $f18, $f8
	nop
	bc1f    92$
	nop
	b       96$
	neg.s   $f20, $f18
92$:
	lw      $t6, 0x004C($sp)
	nop
	lwc1    $f20, 0x002C($t6)
	nop
96$:
	swc1    $f20, 0x0044($sp)
	lwc1    $f4, 0x0044($sp)
	lwc1    $f6, 0x0048($sp)
	nop
	c.lt.s  $f6, $f4
	nop
	bc1f    106$
	nop
	li      $t7, 0x0002
	sw      $t7, 0x0030($sp)
106$:
	lw      $s0, 0x0030($sp)
	nop
	beqz    $s0, 118$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 126$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 134$
	nop
	b       142$
	nop
118$:
	lw      $t9, 0x0050($sp)
	li      $t8, 0x0001
	sw      $t8, 0x0020($t9)
	lw      $t1, 0x0050($sp)
	li      $t0, 0x0002
	sw      $t0, 0x0024($t1)
	b       142$
	nop
126$:
	lw      $t2, 0x0050($sp)
	nop
	sw      $0, 0x0020($t2)
	lw      $t4, 0x0050($sp)
	li      $t3, 0x0002
	sw      $t3, 0x0024($t4)
	b       142$
	nop
134$:
	lw      $t5, 0x0050($sp)
	nop
	sw      $0, 0x0020($t5)
	lw      $t7, 0x0050($sp)
	li      $t6, 0x0001
	sw      $t6, 0x0024($t7)
	b       142$
	nop
142$:
	jal     face_object_8017BDF0
	nop
	lw      $t8, 0x004C($sp)
	sw      $0, 0x0034($sp)
	lw      $t9, 0x0030($t8)
	nop
	blez    $t9, 166$
	nop
150$:
	lw      $t1, 0x0034($sp)
	lw      $t0, 0x004C($sp)
	sll     $t2, $t1, 2
	addu    $t3, $t0, $t2
	lw      $a0, 0x0034($t3)
	jal     face_object_8017BE60
	nop
	lw      $t4, 0x0034($sp)
	lw      $t6, 0x004C($sp)
	addiu   $t5, $t4, 0x0001
	sw      $t5, 0x0034($sp)
	lw      $t7, 0x0030($t6)
	nop
	slt     $at, $t5, $t7
	bnez    $at, 150$
	nop
166$:
	lui     $at, %hi(_face_object_bss-0x480+0x480)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x480)($at)
	lw      $t8, 0x0050($sp)
	nop
	swc1    $f10, 0x0028($t8)
	lui     $at, %hi(_face_object_bss-0x480+0x484)
	lwc1    $f16, %lo(_face_object_bss-0x480+0x484)($at)
	lw      $t9, 0x0050($sp)
	nop
	swc1    $f16, 0x002C($t9)
	lui     $at, %hi(_face_object_bss-0x480+0x488)
	lwc1    $f8, %lo(_face_object_bss-0x480+0x488)($at)
	lw      $t1, 0x0050($sp)
	nop
	swc1    $f8, 0x0030($t1)
	lui     $at, %hi(_face_object_bss-0x480+0x48C)
	lwc1    $f18, %lo(_face_object_bss-0x480+0x48C)($at)
	lw      $t0, 0x0050($sp)
	nop
	swc1    $f18, 0x0034($t0)
	lui     $at, %hi(_face_object_bss-0x480+0x490)
	lwc1    $f4, %lo(_face_object_bss-0x480+0x490)($at)
	lw      $t2, 0x0050($sp)
	nop
	swc1    $f4, 0x0038($t2)
	lui     $at, %hi(_face_object_bss-0x480+0x494)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x494)($at)
	lw      $t3, 0x0050($sp)
	nop
	swc1    $f6, 0x003C($t3)
	lw      $t4, 0x0050($sp)
	li      $at, 0x42C80000
	lwc1    $f10, 0x0034($t4)
	lwc1    $f16, 0x0028($t4)
	mtc1    $at, $f18
	sub.s   $f8, $f10, $f16
	c.lt.s  $f8, $f18
	nop
	bc1f    220$
	nop
	lw      $t6, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0034($t6)
	nop
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0034($t6)
	lw      $t5, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f8
	lwc1    $f16, 0x0028($t5)
	nop
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x0028($t5)
220$:
	lw      $t7, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f6
	lwc1    $f4, 0x0038($t7)
	nop
	add.s   $f10, $f4, $f6
	swc1    $f10, 0x0038($t7)
	lw      $t8, 0x0050($sp)
	li      $at, 0x43480000
	mtc1    $at, $f8
	lwc1    $f16, 0x002C($t8)
	nop
	sub.s   $f18, $f16, $f8
	swc1    $f18, 0x002C($t8)
	lw      $t9, 0x0050($sp)
	li      $at, 0x42C80000
	lwc1    $f4, 0x003C($t9)
	lwc1    $f6, 0x0030($t9)
	mtc1    $at, $f16
	sub.s   $f10, $f4, $f6
	c.lt.s  $f10, $f16
	nop
	bc1f    258$
	nop
	lw      $t1, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f18
	lwc1    $f8, 0x003C($t1)
	nop
	add.s   $f4, $f8, $f18
	swc1    $f4, 0x003C($t1)
	lw      $t0, 0x0050($sp)
	li      $at, 0x42480000
	mtc1    $at, $f10
	lwc1    $f6, 0x0030($t0)
	nop
	sub.s   $f16, $f6, $f10
	swc1    $f16, 0x0030($t0)
258$:
	jal     imout
	nop
	b       262$
	nop
262$:
	lw      $ra, 0x0024($sp)
	lwc1    $f21, 0x0018($sp)
	lwc1    $f20, 0x001C($sp)
	lw      $s0, 0x0020($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0050

.globl face_object_8017CF7C
face_object_8017CF7C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	jal     make_object
	li      $a0, 0x0040
	sw      $v0, 0x0018($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x540)
	lw      $t6, %lo(_face_object_bss-0x480+0x540)($t6)
	lui     $at, %hi(_face_object_bss-0x480+0x540)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_object_bss-0x480+0x540)($at)
	lui     $t8, %hi(_face_object_bss-0x480+0x540)
	lw      $t8, %lo(_face_object_bss-0x480+0x540)($t8)
	lw      $t9, 0x0018($sp)
	nop
	sw      $t8, 0x0014($t9)
	lw      $t0, 0x0020($sp)
	lw      $t1, 0x0018($sp)
	nop
	sw      $t0, 0x0018($t1)
	lw      $t2, 0x0024($sp)
	lw      $t3, 0x0018($sp)
	nop
	sw      $t2, 0x0040($t3)
	lw      $a0, 0x0018($sp)
	jal     reset_plane
	nop
	lw      $v0, 0x0018($sp)
	b       33$
	nop
	b       33$
	nop
33$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D010
face_object_8017D010:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x0200
	sw      $v0, 0x002C($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x544)
	lw      $t6, %lo(_face_object_bss-0x480+0x544)($t6)
	lui     $at, %hi(_face_object_bss-0x480+0x544)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_object_bss-0x480+0x544)($at)
	lui     $t8, %hi(_face_object_bss-0x480+0x544)
	lw      $t8, %lo(_face_object_bss-0x480+0x544)($t8)
	lw      $t9, 0x002C($sp)
	nop
	sw      $t8, 0x0028($t9)
	lui     $t0, %hi(_face_object_bss-0x480+0x52C)
	lw      $t0, %lo(_face_object_bss-0x480+0x52C)($t0)
	nop
	sw      $t0, 0x0028($sp)
	lw      $t1, 0x002C($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x52C)
	sw      $t1, %lo(_face_object_bss-0x480+0x52C)($at)
	lw      $t2, 0x0028($sp)
	nop
	beqz    $t2, 38$
	nop
	lw      $t3, 0x0028($sp)
	lw      $t4, 0x002C($sp)
	nop
	sw      $t3, 0x0024($t4)
	lw      $t5, 0x002C($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t5, 0x0020($t6)
38$:
	lw      $t7, 0x0030($sp)
	lw      $t9, 0x002C($sp)
	ori     $t8, $t7, 0x0010
	sw      $t8, 0x002C($t9)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x002C($sp)
	nop
	sw      $t0, 0x0030($t1)
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x0064
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t2, 0x002C($sp)
	nop
	swc1    $f4, 0x0180($t2)
	lui     $at, %hi(face_object_801B5DD4)
	lwc1    $f6, %lo(face_object_801B5DD4)($at)
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f6, 0x0184($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f8, 0x0188($t4)
	li      $at, 0x40800000
	mtc1    $at, $f10
	lw      $t5, 0x002C($sp)
	nop
	swc1    $f10, 0x0134($t5)
	li      $at, 0x40800000
	mtc1    $at, $f16
	lw      $t6, 0x002C($sp)
	nop
	swc1    $f16, 0x0138($t6)
	li      $at, 0x40800000
	mtc1    $at, $f18
	lw      $t7, 0x002C($sp)
	nop
	swc1    $f18, 0x013C($t7)
	mtc1    $0, $f4
	lw      $t8, 0x002C($sp)
	nop
	swc1    $f4, 0x0178($t8)
	li      $at, 0x3E800000
	mtc1    $at, $f6
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f6, 0x017C($t9)
	lw      $t0, 0x002C($sp)
	nop
	sw      $0, 0x0174($t0)
	lw      $t2, 0x002C($sp)
	li      $t1, -0x0001
	sw      $t1, 0x0170($t2)
	mtc1    $0, $f8
	lw      $t3, 0x002C($sp)
	nop
	swc1    $f8, 0x00A4($t3)
	mtc1    $0, $f10
	lw      $t4, 0x002C($sp)
	nop
	swc1    $f10, 0x003C($t4)
	lw      $t5, 0x002C($sp)
	nop
	lwc1    $f20, 0x003C($t5)
	nop
	swc1    $f20, 0x0038($t5)
	lw      $t6, 0x002C($sp)
	nop
	swc1    $f20, 0x0034($t6)
	mtc1    $0, $f16
	lw      $t7, 0x002C($sp)
	nop
	swc1    $f16, 0x001C($t7)
	lw      $t8, 0x002C($sp)
	nop
	lwc1    $f20, 0x001C($t8)
	nop
	swc1    $f20, 0x0018($t8)
	lw      $t9, 0x002C($sp)
	nop
	swc1    $f20, 0x0014($t9)
	lw      $v0, 0x002C($sp)
	b       130$
	nop
	b       130$
	nop
130$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_object_8017D22C
face_object_8017D22C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_object
	li      $a0, 0x0800
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	nop
	beqz    $t6, 18$
	nop
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0024($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
	b       23$
	nop
18$:
	lw      $a0, 0x001C($sp)
	la.u    $a1, str_face_object_801B5A7C
	la.l    $a1, str_face_object_801B5A7C
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
23$:
	lw      $t7, 0x0028($sp)
	lw      $t8, 0x001C($sp)
	nop
	sw      $t7, 0x001C($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x005C($t9)
	lw      $t1, 0x001C($sp)
	li      $t0, 0x0010
	sw      $t0, 0x0028($t1)
	lw      $v0, 0x001C($sp)
	b       38$
	nop
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D2D4
face_object_8017D2D4:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	swc1    $f21, 0x0010($sp)
	swc1    $f20, 0x0014($sp)
	jal     make_object
	li      $a0, 0x00080000
	sw      $v0, 0x0024($sp)
	lw      $t6, 0x002C($sp)
	nop
	beqz    $t6, 20$
	nop
	lw      $a0, 0x0024($sp)
	lw      $a1, 0x002C($sp)
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
	b       25$
	nop
20$:
	lw      $a0, 0x0024($sp)
	la.u    $a1, str_face_object_801B5A84
	la.l    $a1, str_face_object_801B5A84
	jal     face_stdio_8018DDD8
	addiu   $a0, $a0, 0x0020
25$:
	lw      $t7, 0x0030($sp)
	lw      $t8, 0x0024($sp)
	nop
	sw      $t7, 0x001C($t8)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t9, 0x0024($sp)
	nop
	swc1    $f4, 0x0030($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x004C($t0)
	lw      $t1, 0x0028($sp)
	lw      $t3, 0x0024($sp)
	ori     $t2, $t1, 0x0010
	sw      $t2, 0x002C($t3)
	lw      $t4, 0x0024($sp)
	nop
	sw      $0, 0x0098($t4)
	lw      $t5, 0x0024($sp)
	nop
	sw      $0, 0x0040($t5)
	mtc1    $0, $f6
	lw      $t6, 0x0024($sp)
	nop
	swc1    $f6, 0x0070($t6)
	lw      $t7, 0x0024($sp)
	nop
	lwc1    $f20, 0x0070($t7)
	nop
	swc1    $f20, 0x006C($t7)
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f20, 0x0068($t8)
	lw      $v0, 0x0024($sp)
	b       64$
	nop
	b       64$
	nop
64$:
	lw      $ra, 0x001C($sp)
	lwc1    $f21, 0x0010($sp)
	lwc1    $f20, 0x0014($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_object_8017D3E8
face_object_8017D3E8:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $a2, 0x0030($sp)
	sw      $a3, 0x0034($sp)
	jal     make_object
	li      $a0, 0x4000
	sw      $v0, 0x0024($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x570)
	lw      $t6, %lo(_face_object_bss-0x480+0x570)($t6)
	nop
	bnez    $t6, 18$
	nop
	jal     make_group
	move    $a0, $0
	lui     $at, %hi(_face_object_bss-0x480+0x570)
	sw      $v0, %lo(_face_object_bss-0x480+0x570)($at)
18$:
	lui     $a0, %hi(_face_object_bss-0x480+0x570)
	lw      $a0, %lo(_face_object_bss-0x480+0x570)($a0)
	lw      $a1, 0x0024($sp)
	jal     addto_group
	nop
	lw      $t7, 0x002C($sp)
	lw      $t0, 0x0024($sp)
	li      $at, 0x00200000
	ori     $t8, $t7, 0x0800
	or      $t9, $t8, $at
	sw      $t9, 0x0034($t0)
	lui     $t1, %hi(_face_object_bss-0x480+0x548)
	lw      $t1, %lo(_face_object_bss-0x480+0x548)($t1)
	lw      $t2, 0x0024($sp)
	lui     $t3, %hi(_face_object_bss-0x480+0x548)
	sw      $t1, 0x0020($t2)
	lw      $t3, %lo(_face_object_bss-0x480+0x548)($t3)
	lui     $at, %hi(_face_object_bss-0x480+0x548)
	addiu   $t4, $t3, 0x0001
	sw      $t4, %lo(_face_object_bss-0x480+0x548)($at)
	lw      $t5, 0x0044($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t5, 0x0028($t6)
	lw      $t7, 0x0024($sp)
	nop
	lw      $t8, 0x0028($t7)
	nop
	beqz    $t8, 51$
	nop
	lw      $a0, 0x0044($sp)
	jal     face_object_80181634
	nop
51$:
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0078($t9)
	lw      $t0, 0x0030($sp)
	lw      $t1, 0x0024($sp)
	nop
	sw      $t0, 0x0038($t1)
	li      $at, 0x41F00000
	mtc1    $at, $f4
	lw      $t2, 0x0024($sp)
	nop
	swc1    $f4, 0x0060($t2)
	lui     $at, %hi(face_object_801B5DD8)
	lwc1    $f6, %lo(face_object_801B5DD8)($at)
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f6, 0x0064($t3)
	li      $at, 0x42340000
	mtc1    $at, $f8
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f8, 0x0068($t4)
	lw      $t5, 0x0034($sp)
	lw      $t6, 0x0024($sp)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x003C($t6)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x0024($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f4, $f18
	swc1    $f4, 0x0040($t8)
	lw      $t9, 0x003C($sp)
	lw      $t0, 0x0024($sp)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f8, $f6
	swc1    $f8, 0x0054($t0)
	lw      $t1, 0x0040($sp)
	lw      $t2, 0x0024($sp)
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x0058($t2)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t3, 0x0024($sp)
	nop
	swc1    $f18, 0x0048($t3)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t4, 0x0024($sp)
	nop
	swc1    $f4, 0x004C($t4)
	lw      $t5, 0x0024($sp)
	lui     $at, %hi(face_object_801B5DE0+4)
	lw      $t6, 0x0020($t5)
	lwc1    $f11, %lo(face_object_801B5DE0+0)($at)
	mtc1    $t6, $f6
	lwc1    $f10, %lo(face_object_801B5DE0+4)($at)
	cvt.d.w $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x007C($t5)
	lui     $at, %hi(face_object_801B5DE8)
	lwc1    $f4, %lo(face_object_801B5DE8)($at)
	lw      $t7, 0x0024($sp)
	nop
	swc1    $f4, 0x0080($t7)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t8, 0x0024($sp)
	nop
	swc1    $f6, 0x0084($t8)
	lw      $t9, 0x0024($sp)
	nop
	sw      $0, 0x0098($t9)
	lw      $t0, 0x0024($sp)
	nop
	sw      $0, 0x009C($t0)
	lw      $t1, 0x0028($sp)
	nop
	beqz    $t1, 149$
	nop
	lw      $t2, 0x003C($sp)
	lw      $t3, 0x0040($sp)
	lw      $a0, 0x0028($sp)
	lw      $a1, 0x0024($sp)
	lw      $a2, 0x0034($sp)
	lw      $a3, 0x0038($sp)
	sw      $t2, 0x0010($sp)
	jal     face_gfx_801A3F9C
	sw      $t3, 0x0014($sp)
	lw      $t4, 0x0024($sp)
	nop
	sw      $v0, 0x001C($t4)
149$:
	lw      $t6, 0x0028($sp)
	lw      $t5, 0x0024($sp)
	nop
	sw      $t6, 0x006C($t5)
	lw      $t7, 0x0024($sp)
	nop
	sw      $0, 0x002C($t7)
	lw      $v0, 0x0024($sp)
	b       161$
	nop
	b       161$
	nop
161$:
	lw      $ra, 0x001C($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

.globl face_object_8017D67C
face_object_8017D67C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	jal     make_object
	li      $a0, 0x00010000
	sw      $v0, 0x001C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	lw      $t6, 0x001C($sp)
	nop
	swc1    $f4, 0x0024($t6)
	li      $at, 0x3F800000
	mtc1    $at, $f6
	lw      $t7, 0x001C($sp)
	nop
	swc1    $f6, 0x0028($t7)
	lw      $t8, 0x001C($sp)
	nop
	sw      $0, 0x0048($t8)
	lw      $t9, 0x001C($sp)
	nop
	sw      $0, 0x004C($t9)
	lw      $v0, 0x001C($sp)
	b       26$
	nop
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D6F4
face_object_8017D6F4:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	sw      $a3, 0x002C($sp)
	jal     make_object
	li      $a0, 0x1000
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	lw      $t7, 0x001C($sp)
	nop
	sw      $t6, 0x001C($t7)
	lwc1    $f4, 0x002C($sp)
	lw      $t8, 0x001C($sp)
	nop
	swc1    $f4, 0x0038($t8)
	lw      $t9, 0x0028($sp)
	lw      $t0, 0x001C($sp)
	nop
	sw      $t9, 0x003C($t0)
	lw      $v0, 0x001C($sp)
	b       26$
	nop
	b       26$
	nop
26$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D76C
face_object_8017D76C:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	sw      $a2, 0x0028($sp)
	jal     make_group
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t6, 0x0024($sp)
	nop
	sw      $t6, 0x0018($sp)
	lw      $t7, 0x0018($sp)
	nop
	beqz    $t7, 42$
	nop
15$:
	lw      $t8, 0x0018($sp)
	lw      $t0, 0x0020($sp)
	lw      $t9, 0x000C($t8)
	nop
	and     $t1, $t9, $t0
	beqz    $t1, 26$
	nop
	lw      $a0, 0x001C($sp)
	lw      $a1, 0x0018($sp)
	jal     addto_group
	nop
26$:
	lw      $t2, 0x0018($sp)
	lw      $t3, 0x0028($sp)
	nop
	bne     $t2, $t3, 33$
	nop
	b       42$
	nop
33$:
	lw      $t4, 0x0018($sp)
	nop
	lw      $t5, 0x0000($t4)
	nop
	sw      $t5, 0x0018($sp)
	lw      $t6, 0x0018($sp)
	nop
	bnez    $t6, 15$
	nop
42$:
	lw      $v0, 0x001C($sp)
	b       47$
	nop
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017D838
face_object_8017D838:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x002C($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0024($sp)
	lw      $s0, 0x0024($sp)
	nop
	slti    $at, $s0, 0x0041
	bnez    $at, 23$
	nop
	li      $at, 0x0100
	beq     $s0, $at, 88$
	nop
	li      $at, 0x0200
	beq     $s0, $at, 80$
	nop
	b       L8017D9D0
	nop
23$:
	slti    $at, $s0, 0x0021
	bnez    $at, 31$
	nop
	li      $at, 0x0040
	beq     $s0, $at, 94$
	nop
	b       L8017D9D0
	nop
31$:
	addiu   $t8, $s0, -0x0001
	sltiu   $at, $t8, 0x0020
	beqz    $at, L8017D9D0
	nop
	sll     $t8, $t8, 2
	lui     $at, %hi(face_object_801B5DEC)
	addu    $at, $at, $t8
	lw      $t8, %lo(face_object_801B5DEC)($at)
	nop
	jr      $t8
	nop
.globl L8017D8E0
L8017D8E0:
	lw      $t9, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A8C
	lw      $a2, 0x0108($t9)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A8C
	b       109$
	nop
.globl L8017D900
L8017D900:
	lw      $t0, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A94
	lw      $a2, 0x01B4($t0)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A94
	b       109$
	nop
.globl L8017D920
L8017D920:
	lw      $t1, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5A9C
	lw      $a2, 0x0074($t1)
	jal     sprintf
	la.l    $a1, str_face_object_801B5A9C
	b       109$
	nop
.globl L8017D940
L8017D940:
	lw      $t2, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AA4
	lw      $a2, 0x0050($t2)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AA4
	b       109$
	nop
.globl L8017D960
L8017D960:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AAC
	jal     sprintf
	la.l    $a1, str_face_object_801B5AAC
	b       109$
	nop
80$:
	lw      $t3, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AB8
	lw      $a2, 0x0028($t3)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AB8
	b       109$
	nop
88$:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AC0
	jal     sprintf
	la.l    $a1, str_face_object_801B5AC0
	b       109$
	nop
94$:
	lw      $t4, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5ACC
	lw      $a2, 0x0014($t4)
	jal     sprintf
	la.l    $a1, str_face_object_801B5ACC
	b       109$
	nop
.globl L8017D9D0
L8017D9D0:
	lw      $a0, 0x0028($sp)
	la.u    $a1, str_face_object_801B5AD4
	lw      $a2, 0x0024($sp)
	jal     sprintf
	la.l    $a1, str_face_object_801B5AD4
	b       109$
	nop
109$:
	b       111$
	nop
111$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl make_group
make_group:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	sw      $a1, 0x006C($sp)
	sw      $a2, 0x0070($sp)
	sw      $a3, 0x0074($sp)
	jal     make_object
	li      $a0, 0x0001
	sw      $v0, 0x0048($sp)
	lui     $t6, %hi(_face_object_bss-0x480+0x53C)
	lw      $t6, %lo(_face_object_bss-0x480+0x53C)($t6)
	lw      $t8, 0x0048($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x53C)
	addiu   $t7, $t6, 0x0001
	sw      $t7, %lo(_face_object_bss-0x480+0x53C)($at)
	sw      $t7, 0x0074($t8)
	lw      $t9, 0x0048($sp)
	nop
	sw      $0, 0x0028($t9)
	lw      $t0, 0x0048($sp)
	nop
	sw      $0, 0x0020($t0)
	lw      $t1, 0x0048($sp)
	nop
	lw      $t2, 0x0020($t1)
	nop
	sw      $t2, 0x001C($t1)
	lui     $t3, %hi(_face_object_bss-0x480+0x534)
	lw      $t3, %lo(_face_object_bss-0x480+0x534)($t3)
	nop
	sw      $t3, 0x0044($sp)
	lw      $t4, 0x0048($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x534)
	sw      $t4, %lo(_face_object_bss-0x480+0x534)($at)
	lw      $t5, 0x0044($sp)
	nop
	beqz    $t5, 46$
	nop
	lw      $t6, 0x0044($sp)
	lw      $t7, 0x0048($sp)
	nop
	sw      $t6, 0x0018($t7)
	lw      $t8, 0x0048($sp)
	lw      $t9, 0x0044($sp)
	nop
	sw      $t8, 0x0014($t9)
46$:
	lw      $t0, 0x0068($sp)
	nop
	bnez    $t0, 53$
	nop
	lw      $v0, 0x0048($sp)
	b       128$
	nop
53$:
	addiu   $t2, $sp, 0x0068
	addiu   $t1, $t2, 0x0004
	sw      $t1, 0x0064($sp)
	sw      $0, 0x001C($sp)
	lw      $t3, 0x0068($sp)
	sw      $0, 0x0060($sp)
	blez    $t3, 97$
	nop
61$:
	lw      $t4, 0x0064($sp)
	li      $at, -0x0004
	addiu   $t5, $t4, 0x0003
	and     $t6, $t5, $at
	addiu   $t7, $t6, 0x0004
	sw      $t7, 0x0064($sp)
	lw      $t8, 0x0000($t6)
	nop
	sw      $t8, 0x0040($sp)
	lw      $t9, 0x0040($sp)
	nop
	bnez    $t9, 77$
	nop
	la.u    $a0, str_face_object_801B5AF0
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5AF0
77$:
	lw      $t0, 0x0040($sp)
	nop
	sw      $t0, 0x0058($sp)
	lw      $t2, 0x0048($sp)
	lw      $t3, 0x0058($sp)
	lw      $t1, 0x0024($t2)
	lw      $t4, 0x000C($t3)
	nop
	or      $t5, $t1, $t4
	sw      $t5, 0x0024($t2)
	lw      $a0, 0x0048($sp)
	lw      $a1, 0x0040($sp)
	jal     addto_group
	nop
	lw      $t7, 0x0060($sp)
	lw      $t8, 0x0068($sp)
	addiu   $t6, $t7, 0x0001
	slt     $at, $t6, $t8
	bnez    $at, 61$
	sw      $t6, 0x0060($sp)
97$:
	lw      $t9, 0x0048($sp)
	nop
	lw      $t0, 0x001C($t9)
	nop
	sw      $t0, 0x001C($sp)
	lw      $t3, 0x001C($sp)
	nop
	beqz    $t3, 123$
	nop
106$:
	lw      $t1, 0x001C($sp)
	nop
	lw      $t4, 0x0008($t1)
	nop
	sw      $t4, 0x0058($sp)
	lw      $a1, 0x0058($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	lw      $t5, 0x001C($sp)
	nop
	lw      $t2, 0x0004($t5)
	nop
	sw      $t2, 0x001C($sp)
	lw      $t7, 0x001C($sp)
	nop
	bnez    $t7, 106$
	nop
123$:
	lw      $v0, 0x0048($sp)
	b       128$
	nop
	b       128$
	nop
128$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

.globl addto_group
addto_group:
	addiu   $sp, $sp, -0x0040
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0040($sp)
	sw      $a1, 0x0044($sp)
	la.u    $a0, str_face_object_801B5B2C
	jal     imin
	la.l    $a0, str_face_object_801B5B2C
	lw      $t6, 0x0040($sp)
	nop
	lw      $t7, 0x001C($t6)
	nop
	bnez    $t7, 24$
	nop
	lw      $a1, 0x0044($sp)
	jal     face_object_8017C940
	move    $a0, $0
	lw      $t8, 0x0040($sp)
	nop
	sw      $v0, 0x001C($t8)
	lw      $t9, 0x0040($sp)
	nop
	lw      $t0, 0x001C($t9)
	b       32$
	sw      $t0, 0x0020($t9)
24$:
	lw      $t1, 0x0040($sp)
	lw      $a1, 0x0044($sp)
	lw      $a0, 0x0020($t1)
	jal     face_object_8017C940
	nop
	lw      $t2, 0x0040($sp)
	nop
	sw      $v0, 0x0020($t2)
32$:
	lw      $t3, 0x0040($sp)
	lw      $t5, 0x0044($sp)
	lw      $t4, 0x0024($t3)
	lw      $t6, 0x000C($t5)
	nop
	or      $t7, $t4, $t6
	sw      $t7, 0x0024($t3)
	lw      $t8, 0x0040($sp)
	nop
	lw      $t0, 0x0028($t8)
	nop
	addiu   $t9, $t0, 0x0001
	sw      $t9, 0x0028($t8)
	lw      $a1, 0x0044($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	lw      $a1, 0x0040($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x0020
	jal     imout
	nop
	b       55$
	nop
55$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0040
	jr      $ra
	nop

.globl addto_groupfirst
addto_groupfirst:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0020($sp)
	sw      $a1, 0x0024($sp)
	la.u    $a0, str_face_object_801B5B54
	jal     imin
	la.l    $a0, str_face_object_801B5B54
	lw      $t6, 0x0020($sp)
	nop
	lw      $t7, 0x001C($t6)
	nop
	bnez    $t7, 24$
	nop
	lw      $a1, 0x0024($sp)
	jal     face_object_8017C940
	move    $a0, $0
	lw      $t8, 0x0020($sp)
	nop
	sw      $v0, 0x001C($t8)
	lw      $t9, 0x0020($sp)
	nop
	lw      $t0, 0x001C($t9)
	b       42$
	sw      $t0, 0x0020($t9)
24$:
	lw      $a1, 0x0024($sp)
	jal     face_object_8017C940
	move    $a0, $0
	sw      $v0, 0x001C($sp)
	lw      $t2, 0x0020($sp)
	lw      $t1, 0x001C($sp)
	lw      $t3, 0x001C($t2)
	nop
	sw      $t1, 0x0000($t3)
	lw      $t4, 0x0020($sp)
	lw      $t6, 0x001C($sp)
	lw      $t5, 0x001C($t4)
	nop
	sw      $t5, 0x0004($t6)
	lw      $t7, 0x001C($sp)
	lw      $t8, 0x0020($sp)
	nop
	sw      $t7, 0x001C($t8)
42$:
	lw      $t0, 0x0020($sp)
	lw      $t2, 0x0024($sp)
	lw      $t9, 0x0024($t0)
	lw      $t1, 0x000C($t2)
	nop
	or      $t3, $t9, $t1
	sw      $t3, 0x0024($t0)
	lw      $t4, 0x0020($sp)
	nop
	lw      $t5, 0x0028($t4)
	nop
	addiu   $t6, $t5, 0x0001
	sw      $t6, 0x0028($t4)
	jal     imout
	nop
	b       59$
	nop
59$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8017DDFC
face_object_8017DDFC:
	addiu   $sp, $sp, -0x0008
	lw      $t6, 0x001C($a0)
	nop
	sw      $t6, 0x0004($sp)
	lw      $t7, 0x0004($sp)
	nop
	beqz    $t7, 27$
	nop
8$:
	lw      $t8, 0x0004($sp)
	lh      $t1, 0x0010($a1)
	lw      $t9, 0x0008($t8)
	nop
	lh      $t0, 0x0010($t9)
	nop
	bne     $t0, $t1, 18$
	nop
	b       31$
	li      $v0, 0x0001
18$:
	lw      $t2, 0x0004($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0004($sp)
	lw      $t4, 0x0004($sp)
	nop
	bnez    $t4, 8$
	nop
27$:
	b       31$
	move    $v0, $0
	b       31$
	nop
31$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017DE80:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $s0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5B68
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B68
	lw      $s0, 0x0060($sp)
	li      $at, 0x0001
	beq     $s0, $at, 22$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 27$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 32$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 37$
	nop
	b       42$
	nop
22$:
	la.u    $a0, str_face_object_801B5B7C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B7C
	b       47$
	nop
27$:
	la.u    $a0, str_face_object_801B5B84
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B84
	b       47$
	nop
32$:
	la.u    $a0, str_face_object_801B5B8C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B8C
	b       47$
	nop
37$:
	la.u    $a0, str_face_object_801B5B94
	jal     gd_printf
	la.l    $a0, str_face_object_801B5B94
	b       47$
	nop
42$:
	la.u    $a0, str_face_object_801B5BA0
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BA0
	b       47$
	nop
47$:
	lui     $t6, %hi(_face_object_bss-0x480+0x56C)
	lw      $t6, %lo(_face_object_bss-0x480+0x56C)($t6)
	nop
	sw      $t6, 0x0050($sp)
	lw      $t7, 0x0050($sp)
	nop
	beqz    $t7, 292$
	nop
55$:
	lw      $t8, 0x0050($sp)
	nop
	lw      $t9, 0x000C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	lw      $t1, 0x0060($sp)
	nop
	bne     $t0, $t1, 283$
	nop
	lw      $a1, 0x0050($sp)
	jal     face_object_8017D838
	addiu   $a0, $sp, 0x002C
	lw      $s0, 0x005C($sp)
	li      $at, 0x0001
	beq     $s0, $at, 80$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 201$
	nop
	li      $at, 0x0004
	beq     $s0, $at, 242$
	nop
	b       283$
	nop
80$:
	la.u    $a0, str_face_object_801B5BB0
	la.l    $a0, str_face_object_801B5BB0
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t2, 0x0050($sp)
	nop
	lw      $t3, 0x0024($t2)
	nop
	sw      $t3, 0x0028($sp)
	lw      $t4, 0x0028($sp)
	nop
	andi    $t5, $t4, 0x0001
	beqz    $t5, 97$
	nop
	la.u    $a0, str_face_object_801B5BBC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BBC
97$:
	lw      $t6, 0x0028($sp)
	nop
	andi    $t7, $t6, 0x0002
	beqz    $t7, 105$
	nop
	la.u    $a0, str_face_object_801B5BC4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BC4
105$:
	lw      $t8, 0x0028($sp)
	nop
	andi    $t9, $t8, 0x0004
	beqz    $t9, 113$
	nop
	la.u    $a0, str_face_object_801B5BCC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BCC
113$:
	lw      $t0, 0x0028($sp)
	nop
	andi    $t1, $t0, 0x0008
	beqz    $t1, 121$
	nop
	la.u    $a0, str_face_object_801B5BD4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BD4
121$:
	lw      $t2, 0x0028($sp)
	nop
	andi    $t3, $t2, 0x0200
	beqz    $t3, 129$
	nop
	la.u    $a0, str_face_object_801B5BE0
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BE0
129$:
	lw      $t4, 0x0028($sp)
	nop
	andi    $t5, $t4, 0x0020
	beqz    $t5, 137$
	nop
	la.u    $a0, str_face_object_801B5BEC
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BEC
137$:
	lw      $t6, 0x0028($sp)
	nop
	andi    $t7, $t6, 0x2000
	beqz    $t7, 145$
	nop
	la.u    $a0, str_face_object_801B5BF4
	jal     gd_printf
	la.l    $a0, str_face_object_801B5BF4
145$:
	lw      $t8, 0x0028($sp)
	nop
	andi    $t9, $t8, 0x8000
	beqz    $t9, 153$
	nop
	la.u    $a0, str_face_object_801B5C00
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C00
153$:
	lw      $t0, 0x0028($sp)
	nop
	andi    $t1, $t0, 0x0080
	beqz    $t1, 161$
	nop
	la.u    $a0, str_face_object_801B5C08
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C08
161$:
	lw      $t2, 0x0028($sp)
	nop
	andi    $t3, $t2, 0x0100
	beqz    $t3, 169$
	nop
	la.u    $a0, str_face_object_801B5C10
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C10
169$:
	lw      $t4, 0x0050($sp)
	nop
	lw      $t5, 0x001C($t4)
	nop
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0058($sp)
	nop
	beqz    $t6, 196$
	nop
178$:
	lw      $t7, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t7)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C18
	la.l    $a0, str_face_object_801B5C18
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t8, 0x0058($sp)
	nop
	lw      $t9, 0x0004($t8)
	nop
	sw      $t9, 0x0058($sp)
	lw      $t0, 0x0058($sp)
	nop
	bnez    $t0, 178$
	nop
196$:
	la.u    $a0, str_face_object_801B5C1C
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C1C
	b       283$
	nop
201$:
	la.u    $a0, str_face_object_801B5C20
	la.l    $a0, str_face_object_801B5C20
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t1, 0x0050($sp)
	nop
	lw      $t2, 0x010C($t1)
	nop
	sw      $t2, 0x0054($sp)
	lw      $t3, 0x0054($sp)
	nop
	lw      $t4, 0x001C($t3)
	nop
	sw      $t4, 0x0058($sp)
	lw      $t5, 0x0058($sp)
	nop
	beqz    $t5, 237$
	nop
219$:
	lw      $t6, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t6)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C2C
	la.l    $a0, str_face_object_801B5C2C
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t7, 0x0058($sp)
	nop
	lw      $t8, 0x0004($t7)
	nop
	sw      $t8, 0x0058($sp)
	lw      $t9, 0x0058($sp)
	nop
	bnez    $t9, 219$
	nop
237$:
	la.u    $a0, str_face_object_801B5C30
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C30
	b       283$
	nop
242$:
	la.u    $a0, str_face_object_801B5C34
	la.l    $a0, str_face_object_801B5C34
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t0, 0x0050($sp)
	nop
	lw      $t1, 0x01C4($t0)
	nop
	sw      $t1, 0x0054($sp)
	lw      $t2, 0x0054($sp)
	nop
	lw      $t3, 0x001C($t2)
	nop
	sw      $t3, 0x0058($sp)
	lw      $t4, 0x0058($sp)
	nop
	beqz    $t4, 278$
	nop
260$:
	lw      $t5, 0x0058($sp)
	addiu   $a0, $sp, 0x002C
	lw      $a1, 0x0008($t5)
	jal     face_object_8017D838
	nop
	la.u    $a0, str_face_object_801B5C40
	la.l    $a0, str_face_object_801B5C40
	jal     gd_printf
	addiu   $a1, $sp, 0x002C
	lw      $t6, 0x0058($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	sw      $t7, 0x0058($sp)
	lw      $t8, 0x0058($sp)
	nop
	bnez    $t8, 260$
	nop
278$:
	la.u    $a0, str_face_object_801B5C44
	jal     gd_printf
	la.l    $a0, str_face_object_801B5C44
	b       283$
	nop
283$:
	lw      $t9, 0x0050($sp)
	nop
	lw      $t0, 0x0004($t9)
	nop
	sw      $t0, 0x0050($sp)
	lw      $t1, 0x0050($sp)
	nop
	bnez    $t1, 55$
	nop
292$:
	b       294$
	nop
294$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

face_object_8017E328:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $v0, 0x0004($sp)
	b       7$
	nop
	b       7$
	nop
7$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

.globl make_scene
make_scene:
	addiu   $sp, $sp, -0x0008
	sw      $0, 0x0004($sp)
	lw      $v0, 0x0004($sp)
	b       7$
	nop
	b       7$
	nop
7$:
	jr      $ra
	addiu   $sp, $sp, 0x0008

face_object_8017E370:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0028($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0028($sp)
	nop
	sw      $t6, 0x0024($sp)
	lw      $t7, 0x0028($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t7)
	nop
	beq     $s0, $at, 18$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 23$
	nop
	b       28$
	nop
18$:
	lw      $a0, 0x0024($sp)
	jal     face_joint_80191744
	nop
	b       28$
	nop
23$:
	lw      $a0, 0x0024($sp)
	jal     reset_net
	nop
	b       28$
	nop
28$:
	b       30$
	nop
30$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0028

.globl face_object_8017E3F8
face_object_8017E3F8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $a2, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a2, %lo(_face_object_bss-0x480+0x4F4)($a2)
	la.u    $a1, face_object_8017E370
	la.l    $a1, face_object_8017E370
	jal     face_object_8017E520
	li      $a0, 0x0020
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8017E430:
	addiu   $sp, $sp, -0x0030
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0030($sp)
	sw      $a1, 0x0034($sp)
	sw      $s0, 0x0018($sp)
	lw      $t6, 0x0030($sp)
	nop
	lw      $t7, 0x000C($t6)
	nop
	sw      $t7, 0x0028($sp)
	lw      $s0, 0x0028($sp)
	li      $at, 0x0001
	beq     $s0, $at, 19$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 44$
	nop
	b       46$
	nop
19$:
	lw      $t8, 0x0030($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x0024($sp)
	lw      $t0, 0x0024($sp)
	nop
	beqz    $t0, 42$
	nop
28$:
	lw      $t1, 0x0024($sp)
	lw      $a1, 0x0034($sp)
	lw      $a0, 0x0008($t1)
	jal     face_object_8017E430
	nop
	lw      $t2, 0x0024($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x0024($sp)
	lw      $t4, 0x0024($sp)
	nop
	bnez    $t4, 28$
	nop
42$:
	b       46$
	nop
44$:
	b       46$
	nop
46$:
	lw      $t5, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	nop
	bne     $t5, $t6, 54$
	nop
	lw      $v0, 0x0030($sp)
	b       56$
	nop
54$:
	b       56$
	nop
56$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0030

.globl face_object_8017E520
face_object_8017E520:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	sw      $a2, 0x0068($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $t6, 0x0068($sp)
	nop
	bnez    $t6, 13$
	nop
	b       101$
	nop
13$:
	lw      $t7, 0x0068($sp)
	nop
	lw      $t8, 0x0030($t7)
	nop
	andi    $t9, $t8, 0x0001
	beqz    $t9, 23$
	nop
	lw      $v0, 0x0028($sp)
	b       101$
	nop
23$:
	lw      $t0, 0x0068($sp)
	lw      $t2, 0x0060($sp)
	lw      $t1, 0x0024($t0)
	nop
	and     $t3, $t1, $t2
	andi    $t4, $t1, 0x0001
	or      $t5, $t4, $t3
	bnez    $t5, 35$
	nop
	lw      $v0, 0x0028($sp)
	b       101$
	nop
35$:
	lw      $t6, 0x0064($sp)
	nop
	sw      $t6, 0x004C($sp)
	lw      $t7, 0x0068($sp)
	nop
	lw      $t8, 0x001C($t7)
	nop
	sw      $t8, 0x005C($sp)
	lw      $t9, 0x005C($sp)
	nop
	beqz    $t9, 96$
	nop
47$:
	lw      $t0, 0x005C($sp)
	nop
	lw      $t2, 0x0008($t0)
	nop
	sw      $t2, 0x0054($sp)
	lw      $t1, 0x0054($sp)
	nop
	lw      $t4, 0x000C($t1)
	nop
	sw      $t4, 0x0050($sp)
	lw      $t3, 0x005C($sp)
	nop
	lw      $t5, 0x0004($t3)
	nop
	sw      $t5, 0x0058($sp)
	lw      $t6, 0x0050($sp)
	li      $at, 0x0001
	bne     $t6, $at, 75$
	nop
	lw      $a0, 0x0060($sp)
	lw      $a1, 0x0064($sp)
	lw      $a2, 0x0054($sp)
	jal     face_object_8017E520
	nop
	lw      $t7, 0x0028($sp)
	move    $s0, $v0
	addu    $t8, $t7, $s0
	sw      $t8, 0x0028($sp)
75$:
	lw      $t9, 0x0050($sp)
	lw      $t0, 0x0060($sp)
	nop
	and     $t2, $t9, $t0
	beqz    $t2, 89$
	nop
	lw      $t9, 0x004C($sp)
	lw      $a0, 0x0054($sp)
	jalr    $t9
	nop
	lw      $t1, 0x0028($sp)
	nop
	addiu   $t4, $t1, 0x0001
	sw      $t4, 0x0028($sp)
89$:
	lw      $t3, 0x0058($sp)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t5, 0x005C($sp)
	nop
	bnez    $t5, 47$
	nop
96$:
	lw      $v0, 0x0028($sp)
	b       101$
	nop
	b       101$
	nop
101$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0060

.globl face_object_8017E6C4
face_object_8017E6C4:
	addiu   $sp, $sp, -0x00A0
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x00A0($sp)
	sw      $a1, 0x00A4($sp)
	sw      $a2, 0x00A8($sp)
	lw      $t6, 0x00A8($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0070($sp)
	lw      $t7, 0x00A8($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0074($sp)
	lw      $t8, 0x00A8($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x0078($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x0070
	lw      $t9, 0x00A4($sp)
	nop
	lwc1    $f10, 0x0000($t9)
	nop
	swc1    $f10, 0x007C($sp)
	lw      $t0, 0x00A4($sp)
	nop
	lwc1    $f16, 0x0004($t0)
	nop
	swc1    $f16, 0x0080($sp)
	lw      $t1, 0x00A4($sp)
	nop
	lwc1    $f18, 0x0008($t1)
	nop
	swc1    $f18, 0x0084($sp)
	lw      $t2, 0x00A0($sp)
	nop
	lwc1    $f4, 0x00B0($t2)
	nop
	swc1    $f4, 0x001C($sp)
	lw      $t3, 0x00A0($sp)
	nop
	lwc1    $f6, 0x00B4($t3)
	nop
	swc1    $f6, 0x0020($sp)
	lw      $t4, 0x00A0($sp)
	nop
	lwc1    $f8, 0x00B8($t4)
	nop
	swc1    $f8, 0x0024($sp)
	lw      $a1, 0x00A0($sp)
	addiu   $a0, $sp, 0x001C
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	lwc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x007C($sp)
	lwc1    $f4, 0x0080($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0080($sp)
	lwc1    $f10, 0x0084($sp)
	lwc1    $f16, 0x0024($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0084($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x007C
	bnez    $v0, 87$
	nop
	lwc1    $f4, 0x0070($sp)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x007C($sp)
	lwc1    $f8, 0x0074($sp)
	nop
	neg.s   $f10, $f8
	swc1    $f10, 0x0080($sp)
	lwc1    $f16, 0x0078($sp)
	nop
	neg.s   $f18, $f16
	swc1    $f18, 0x0084($sp)
87$:
	lw      $a1, 0x00A4($sp)
	addiu   $a0, $sp, 0x0070
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0094
	lwc1    $f4, 0x0094($sp)
	lwc1    $f8, 0x009C($sp)
	mul.s   $f6, $f4, $f4
	nop
	mul.s   $f10, $f8, $f8
	add.s   $f16, $f6, $f10
	jal     face_gfx_8019B49C
	cvt.d.s $f12, $f16
	cvt.s.d $f18, $f0
	swc1    $f18, 0x002C($sp)
	lui     $at, %hi(face_object_801B5E70+4)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f7, %lo(face_object_801B5E70+0)($at)
	lwc1    $f6, %lo(face_object_801B5E70+4)($at)
	cvt.d.s $f8, $f4
	c.lt.d  $f6, $f8
	nop
	bc1f    114$
	nop
	li      $at, 0x447A0000
	mtc1    $at, $f10
	nop
	swc1    $f10, 0x002C($sp)
114$:
	lui     $at, %hi(face_object_801B5E78+4)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f5, %lo(face_object_801B5E78+0)($at)
	lwc1    $f4, %lo(face_object_801B5E78+4)($at)
	cvt.d.s $f18, $f16
	nop
	div.d   $f8, $f18, $f4
	cvt.s.d $f6, $f8
	swc1    $f6, 0x002C($sp)
	lwc1    $f16, 0x002C($sp)
	li      $at, 0x3FF00000
	mtc1    $at, $f11
	mtc1    $0, $f10
	cvt.d.s $f18, $f16
	sub.d   $f4, $f10, $f18
	cvt.s.d $f8, $f4
	swc1    $f8, 0x002C($sp)
	lw      $t5, 0x00A8($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0000($t5)
	nop
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0088($sp)
	lw      $t6, 0x00A8($sp)
	lwc1    $f4, 0x002C($sp)
	lwc1    $f18, 0x0004($t6)
	nop
	mul.s   $f8, $f18, $f4
	swc1    $f8, 0x008C($sp)
	lw      $t7, 0x00A8($sp)
	lwc1    $f16, 0x002C($sp)
	lwc1    $f6, 0x0008($t7)
	nop
	mul.s   $f10, $f6, $f16
	swc1    $f10, 0x0090($sp)
	lw      $t8, 0x00A0($sp)
	lwc1    $f4, 0x0088($sp)
	lwc1    $f18, 0x0074($t8)
	nop
	add.s   $f8, $f18, $f4
	swc1    $f8, 0x0074($t8)
	lw      $t9, 0x00A0($sp)
	lwc1    $f16, 0x008C($sp)
	lwc1    $f6, 0x0078($t9)
	nop
	add.s   $f10, $f6, $f16
	swc1    $f10, 0x0078($t9)
	lw      $t0, 0x00A0($sp)
	lwc1    $f4, 0x0090($sp)
	lwc1    $f18, 0x007C($t0)
	nop
	add.s   $f8, $f18, $f4
	swc1    $f8, 0x007C($t0)
	b       169$
	nop
169$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x00A0
	jr      $ra
	nop

.globl face_object_8017E978
face_object_8017E978:
	addiu   $sp, $sp, -0x0088
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0088($sp)
	sw      $a1, 0x008C($sp)
	sw      $a2, 0x0090($sp)
	lw      $t6, 0x008C($sp)
	nop
	lwc1    $f4, 0x0000($t6)
	nop
	swc1    $f4, 0x0064($sp)
	lw      $t7, 0x008C($sp)
	nop
	lwc1    $f6, 0x0004($t7)
	nop
	swc1    $f6, 0x0068($sp)
	lw      $t8, 0x008C($sp)
	nop
	lwc1    $f8, 0x0008($t8)
	nop
	swc1    $f8, 0x006C($sp)
	lw      $t9, 0x0088($sp)
	nop
	lwc1    $f10, 0x00B0($t9)
	nop
	swc1    $f10, 0x0018($sp)
	lw      $t0, 0x0088($sp)
	nop
	lwc1    $f16, 0x00B4($t0)
	nop
	swc1    $f16, 0x001C($sp)
	lw      $t1, 0x0088($sp)
	nop
	lwc1    $f18, 0x00B8($t1)
	nop
	swc1    $f18, 0x0020($sp)
	lw      $a1, 0x0088($sp)
	addiu   $a0, $sp, 0x0018
	jal     face_math_80196570
	addiu   $a1, $a1, 0x0128
	lwc1    $f4, 0x0064($sp)
	lwc1    $f6, 0x0018($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x0064($sp)
	lwc1    $f10, 0x0068($sp)
	lwc1    $f16, 0x001C($sp)
	nop
	sub.s   $f18, $f10, $f16
	swc1    $f18, 0x0068($sp)
	lwc1    $f4, 0x006C($sp)
	lwc1    $f6, 0x0020($sp)
	nop
	sub.s   $f8, $f4, $f6
	swc1    $f8, 0x006C($sp)
	lui     $at, %hi(face_object_801B5E80+4)
	lwc1    $f10, 0x0064($sp)
	lwc1    $f19, %lo(face_object_801B5E80+0)($at)
	lwc1    $f18, %lo(face_object_801B5E80+4)($at)
	cvt.d.s $f16, $f10
	mul.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0064($sp)
	lui     $at, %hi(face_object_801B5E88+4)
	lwc1    $f8, 0x0068($sp)
	lwc1    $f17, %lo(face_object_801B5E88+0)($at)
	lwc1    $f16, %lo(face_object_801B5E88+4)($at)
	cvt.d.s $f10, $f8
	mul.d   $f18, $f10, $f16
	cvt.s.d $f4, $f18
	swc1    $f4, 0x0068($sp)
	lui     $at, %hi(face_object_801B5E90+4)
	lwc1    $f6, 0x006C($sp)
	lwc1    $f11, %lo(face_object_801B5E90+0)($at)
	lwc1    $f10, %lo(face_object_801B5E90+4)($at)
	cvt.d.s $f8, $f6
	mul.d   $f16, $f8, $f10
	cvt.s.d $f18, $f16
	swc1    $f18, 0x006C($sp)
	lw      $a0, 0x0090($sp)
	addiu   $a1, $sp, 0x0064
	jal     face_math_80194E54
	addiu   $a2, $sp, 0x0070
	addiu   $a0, $sp, 0x0070
	jal     face_math_801948B0
	li      $a1, 0x40A00000
	lw      $t2, 0x0088($sp)
	lwc1    $f6, 0x0070($sp)
	lwc1    $f4, 0x0080($t2)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0080($t2)
	lw      $t3, 0x0088($sp)
	lwc1    $f16, 0x0074($sp)
	lwc1    $f10, 0x0084($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0084($t3)
	lw      $t4, 0x0088($sp)
	lwc1    $f6, 0x0078($sp)
	lwc1    $f4, 0x0088($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0088($t4)
	b       105$
	nop
105$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0088
	jr      $ra
	nop

.globl face_object_8017EB2C
face_object_8017EB2C:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	nop
	lwc1    $f4, 0x00A4($t6)
	nop
	swc1    $f4, 0x005C($sp)
	lw      $t7, 0x0068($sp)
	nop
	lwc1    $f6, 0x00A8($t7)
	nop
	swc1    $f6, 0x0060($sp)
	lw      $t8, 0x0068($sp)
	nop
	lwc1    $f8, 0x00AC($t8)
	nop
	swc1    $f8, 0x0064($sp)
	jal     face_math_80194D34
	addiu   $a0, $sp, 0x005C
	lw      $a0, 0x0068($sp)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x00A4
	swc1    $f0, 0x0018($sp)
	lwc1    $f10, 0x0018($sp)
	addiu   $a0, $sp, 0x001C
	neg.s   $f16, $f10
	mfc1    $a2, $f16
	jal     face_math_80196334
	addiu   $a1, $sp, 0x005C
	la.u    $t9, _face_object_bss-0x480+0x4A8
	la.l    $t9, _face_object_bss-0x480+0x4A8
	move    $a0, $t9
	move    $a2, $t9
	jal     face_math_80196754
	addiu   $a1, $sp, 0x001C
	b       38$
	nop
38$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

face_object_8017EBD4:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0028($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x0034($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    30$
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0030($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    30$
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x003C($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    30$
	nop
	jr      $ra
	li      $v0, 0x0001
30$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

face_object_8017EC64:
	addiu   $sp, $sp, -0x0050
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0050($sp)
	sw      $a1, 0x0054($sp)
	lw      $a0, 0x0050($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0044
	jal     face_dynlist_8018AEDC
	nop
	sw      $v0, 0x0034($sp)
	lw      $a0, 0x0054($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x0038
	jal     face_dynlist_8018AEDC
	nop
	sw      $v0, 0x0030($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f4, 0x0000($t6)
	lwc1    $f6, 0x0000($t7)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0018($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0030($sp)
	lwc1    $f10, 0x0004($t8)
	lwc1    $f16, 0x0004($t9)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x001C($sp)
	lw      $t0, 0x0034($sp)
	lw      $t1, 0x0030($sp)
	lwc1    $f4, 0x0008($t0)
	lwc1    $f6, 0x0008($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0020($sp)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0030($sp)
	lwc1    $f10, 0x000C($t2)
	lwc1    $f16, 0x000C($t3)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0024($sp)
	lw      $t4, 0x0034($sp)
	lw      $t5, 0x0030($sp)
	lwc1    $f4, 0x0010($t4)
	lwc1    $f6, 0x0010($t5)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t6, 0x0034($sp)
	lw      $t7, 0x0030($sp)
	lwc1    $f10, 0x0014($t6)
	lwc1    $f16, 0x0014($t7)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x002C($sp)
	lwc1    $f4, 0x0038($sp)
	lwc1    $f6, 0x0044($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x4E8)
	sub.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_object_bss-0x480+0x4E8)($at)
	lwc1    $f10, 0x003C($sp)
	lwc1    $f16, 0x0048($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x4EC)
	sub.s   $f18, $f10, $f16
	swc1    $f18, %lo(_face_object_bss-0x480+0x4EC)($at)
	lwc1    $f4, 0x0040($sp)
	lwc1    $f6, 0x004C($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x4F0)
	sub.s   $f8, $f4, $f6
	swc1    $f8, %lo(_face_object_bss-0x480+0x4F0)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x4E8)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x4E8)($at)
	lwc1    $f16, 0x0018($sp)
	nop
	c.le.s  $f16, $f10
	nop
	bc1f    111$
	nop
	lui     $at, %hi(_face_object_bss-0x480+0x4E8)
	lwc1    $f18, %lo(_face_object_bss-0x480+0x4E8)($at)
	lwc1    $f4, 0x0024($sp)
	nop
	c.le.s  $f18, $f4
	nop
	bc1f    111$
	nop
	lui     $at, %hi(_face_object_bss-0x480+0x4F0)
	lwc1    $f6, %lo(_face_object_bss-0x480+0x4F0)($at)
	lwc1    $f8, 0x0020($sp)
	nop
	c.le.s  $f8, $f6
	nop
	bc1f    111$
	nop
	lui     $at, %hi(_face_object_bss-0x480+0x4F0)
	lwc1    $f10, %lo(_face_object_bss-0x480+0x4F0)($at)
	lwc1    $f16, 0x002C($sp)
	nop
	c.le.s  $f10, $f16
	nop
	bc1f    111$
	nop
	b       115$
	li      $v0, 0x0001
111$:
	b       115$
	move    $v0, $0
	b       115$
	nop
115$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0050
	jr      $ra
	nop

face_object_8017EE40:
	addiu   $sp, $sp, -0x0028
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0028($sp)
	sw      $a1, 0x002C($sp)
	lw      $a0, 0x0028($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x001C
	lw      $t6, 0x002C($sp)
	lwc1    $f4, 0x001C($sp)
	lwc1    $f6, 0x0000($t6)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    43$
	nop
	lw      $t7, 0x002C($sp)
	lwc1    $f8, 0x001C($sp)
	lwc1    $f10, 0x000C($t7)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    43$
	nop
	lw      $t8, 0x002C($sp)
	lwc1    $f16, 0x0024($sp)
	lwc1    $f18, 0x0008($t8)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    43$
	nop
	lw      $t9, 0x002C($sp)
	lwc1    $f4, 0x0024($sp)
	lwc1    $f6, 0x0014($t9)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    43$
	nop
	b       47$
	li      $v0, 0x0001
43$:
	b       47$
	move    $v0, $0
	b       47$
	nop
47$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0028
	jr      $ra
	nop

face_object_8017EF0C:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    30$
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    30$
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    30$
	nop
	jr      $ra
	li      $v0, 0x0001
30$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017EF9C
face_object_8017EF9C:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    30$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    30$
	nop
	lwc1    $f16, 0x0008($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    30$
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    30$
	nop
	jr      $ra
	li      $v0, 0x0001
30$:
	lwc1    $f8, 0x000C($a0)
	lwc1    $f10, 0x0000($a1)
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    60$
	nop
	lwc1    $f16, 0x000C($a0)
	lwc1    $f18, 0x000C($a1)
	nop
	c.le.s  $f16, $f18
	nop
	bc1f    60$
	nop
	lwc1    $f4, 0x0008($a0)
	lwc1    $f6, 0x0008($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    60$
	nop
	lwc1    $f8, 0x0008($a0)
	lwc1    $f10, 0x0014($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    60$
	nop
	jr      $ra
	li      $v0, 0x0001
60$:
	lwc1    $f16, 0x000C($a0)
	lwc1    $f18, 0x0000($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    90$
	nop
	lwc1    $f4, 0x000C($a0)
	lwc1    $f6, 0x000C($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    90$
	nop
	lwc1    $f8, 0x0014($a0)
	lwc1    $f10, 0x0008($a1)
	nop
	c.le.s  $f10, $f8
	nop
	bc1f    90$
	nop
	lwc1    $f16, 0x0014($a0)
	lwc1    $f18, 0x0014($a1)
	nop
	c.le.s  $f16, $f18
	nop
	bc1f    90$
	nop
	jr      $ra
	li      $v0, 0x0001
90$:
	lwc1    $f4, 0x0000($a0)
	lwc1    $f6, 0x0000($a1)
	nop
	c.le.s  $f6, $f4
	nop
	bc1f    120$
	nop
	lwc1    $f8, 0x0000($a0)
	lwc1    $f10, 0x000C($a1)
	nop
	c.le.s  $f8, $f10
	nop
	bc1f    120$
	nop
	lwc1    $f16, 0x0014($a0)
	lwc1    $f18, 0x0008($a1)
	nop
	c.le.s  $f18, $f16
	nop
	bc1f    120$
	nop
	lwc1    $f4, 0x0014($a0)
	lwc1    $f6, 0x0014($a1)
	nop
	c.le.s  $f4, $f6
	nop
	bc1f    120$
	nop
	jr      $ra
	li      $v0, 0x0001
120$:
	jr      $ra
	move    $v0, $0
	jr      $ra
	nop
	jr      $ra
	nop

.globl face_object_8017F194
face_object_8017F194:
	addiu   $sp, $sp, -0x0060
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0060($sp)
	sw      $a1, 0x0064($sp)
	lw      $t6, 0x0064($sp)
	nop
	beqz    $t6, 46$
	nop
	lw      $a0, 0x0064($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0050($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0044($sp)
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x004C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0040($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x001C
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0048($sp)
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0050($sp)
	lw      $a2, 0x0048($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0044($sp)
	lw      $a2, 0x0040($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x0040($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x001C
	b       70$
	nop
46$:
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0048($sp)
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x004C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0044($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x001C
	lw      $a0, 0x0048($sp)
	jal     face_math_801963C0
	nop
	lw      $a0, 0x004C($sp)
	lw      $a1, 0x0044($sp)
	jal     face_math_801964A0
	nop
	lw      $a0, 0x0044($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x001C
70$:
	lw      $a0, 0x0060($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetAttObjGroup
	nop
	sw      $v0, 0x0058($sp)
	lw      $t7, 0x0058($sp)
	nop
	beqz    $t7, 103$
	nop
	lw      $t8, 0x0058($sp)
	nop
	lw      $t9, 0x001C($t8)
	nop
	sw      $t9, 0x005C($sp)
	lw      $t0, 0x005C($sp)
	nop
	beqz    $t0, 103$
	nop
89$:
	lw      $t1, 0x005C($sp)
	lw      $a1, 0x0060($sp)
	lw      $a0, 0x0008($t1)
	jal     face_object_8017F194
	nop
	lw      $t2, 0x005C($sp)
	nop
	lw      $t3, 0x0004($t2)
	nop
	sw      $t3, 0x005C($sp)
	lw      $t4, 0x005C($sp)
	nop
	bnez    $t4, 89$
	nop
103$:
	b       107$
	move    $v0, $0
	b       107$
	nop
107$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0060
	jr      $ra
	nop

face_object_8017F350:
	addiu   $sp, $sp, -0x0070
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0070($sp)
	sw      $a1, 0x0074($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0028($sp)
	lw      $t6, 0x0028($sp)
	nop
	addiu   $t7, $t6, 0x0001
	sw      $t7, 0x0028($sp)
	lw      $t8, 0x0074($sp)
	nop
	beqz    $t8, 44$
	nop
	lw      $a0, 0x0074($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0060($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0054($sp)
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0050($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x002C
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0054($sp)
	lw      $a2, 0x0050($sp)
	jal     face_math_80196754
	nop
	lw      $a0, 0x0050($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x002C
	b       65$
	nop
44$:
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetMatrixPtr
	nop
	sw      $v0, 0x0058($sp)
	jal     dGetIMatrixPtr
	nop
	sw      $v0, 0x005C($sp)
	jal     dGetRMatrixPtr
	nop
	sw      $v0, 0x0054($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x002C
	lw      $a0, 0x005C($sp)
	lw      $a1, 0x0054($sp)
	jal     face_math_801964A0
	nop
	lw      $a0, 0x0054($sp)
	jal     face_math_8019429C
	addiu   $a1, $sp, 0x002C
65$:
	lw      $a0, 0x0070($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetAttObjGroup
	nop
	sw      $v0, 0x0068($sp)
	lw      $t9, 0x0068($sp)
	nop
	beqz    $t9, 102$
	nop
	lw      $t0, 0x0068($sp)
	nop
	lw      $t1, 0x001C($t0)
	nop
	sw      $t1, 0x006C($sp)
	lw      $t2, 0x006C($sp)
	nop
	beqz    $t2, 102$
	nop
84$:
	lw      $t3, 0x006C($sp)
	lw      $a1, 0x0070($sp)
	lw      $a0, 0x0008($t3)
	jal     face_object_8017F350
	nop
	lw      $t4, 0x0028($sp)
	move    $s0, $v0
	addu    $t5, $t4, $s0
	sw      $t5, 0x0028($sp)
	lw      $t6, 0x006C($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	sw      $t7, 0x006C($sp)
	lw      $t8, 0x006C($sp)
	nop
	bnez    $t8, 84$
	nop
102$:
	lw      $v0, 0x0028($sp)
	b       107$
	nop
	b       107$
	nop
107$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0070

face_object_8017F50C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	lui     $a1, %hi(_face_object_bss-0x480+0x528)
	lw      $a1, %lo(_face_object_bss-0x480+0x528)($a1)
	jal     face_math_80196570
	addiu   $a0, $a0, 0x0020
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8017F544:
	addiu   $sp, $sp, -0x0030
	sw      $a1, 0x0034($sp)
	sw      $a2, 0x0038($sp)
	swc1    $f12, 0x0030($sp)
	b       6$
	nop
6$:
	jr      $ra
	addiu   $sp, $sp, 0x0030

face_object_8017F564:
	addiu   $sp, $sp, -0x0080
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0080($sp)
	sw      $a1, 0x0084($sp)
	sw      $a2, 0x0088($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0040
	lwc1    $f4, 0x0088($sp)
	mtc1    $0, $f6
	nop
	c.eq.s  $f4, $f6
	nop
	bc1t    81$
	nop
	lw      $t6, 0x0084($sp)
	lw      $t7, 0x0080($sp)
	lwc1    $f8, 0x000C($t6)
	lwc1    $f10, 0x000C($t7)
	lwc1    $f18, 0x0088($sp)
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0028($sp)
	lw      $t8, 0x0084($sp)
	lw      $t9, 0x0080($sp)
	lwc1    $f8, 0x0010($t8)
	lwc1    $f16, 0x0010($t9)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f8, $f16
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x002C($sp)
	lw      $t0, 0x0084($sp)
	lw      $t1, 0x0080($sp)
	lwc1    $f8, 0x0014($t0)
	lwc1    $f18, 0x0014($t1)
	lwc1    $f16, 0x0088($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x0030($sp)
	lw      $t2, 0x0084($sp)
	lw      $t3, 0x0080($sp)
	lwc1    $f8, 0x0018($t2)
	lwc1    $f10, 0x0018($t3)
	lwc1    $f18, 0x0088($sp)
	sub.s   $f16, $f8, $f10
	mul.s   $f4, $f16, $f18
	add.s   $f6, $f10, $f4
	swc1    $f6, 0x0034($sp)
	lw      $t4, 0x0084($sp)
	lw      $t5, 0x0080($sp)
	lwc1    $f8, 0x001C($t4)
	lwc1    $f16, 0x001C($t5)
	lwc1    $f10, 0x0088($sp)
	sub.s   $f18, $f8, $f16
	mul.s   $f4, $f18, $f10
	add.s   $f6, $f16, $f4
	swc1    $f6, 0x0038($sp)
	lw      $t6, 0x0084($sp)
	lw      $t7, 0x0080($sp)
	lwc1    $f8, 0x0020($t6)
	lwc1    $f18, 0x0020($t7)
	lwc1    $f16, 0x0088($sp)
	sub.s   $f10, $f8, $f18
	mul.s   $f4, $f10, $f16
	add.s   $f6, $f18, $f4
	swc1    $f6, 0x003C($sp)
	lw      $a1, 0x0080($sp)
	jal     face_math_8019429C
	addiu   $a0, $sp, 0x0040
	addiu   $a1, $sp, 0x001C
	addiu   $a1, $a1, 0x000C
	jal     face_math_80194360
	addiu   $a0, $sp, 0x0040
	addiu   $a1, $sp, 0x001C
	addiu   $a1, $a1, 0x0018
	jal     face_math_80194424
	addiu   $a0, $sp, 0x0040
	b       96$
	nop
81$:
	lw      $t8, 0x0080($sp)
	nop
	lwc1    $f12, 0x0000($t8)
	lwc1    $f14, 0x0004($t8)
	lw      $a2, 0x0008($t8)
	jal     dSetScale
	nop
	lw      $a1, 0x0080($sp)
	addiu   $a0, $sp, 0x0040
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a1, 0x0080($sp)
	addiu   $a0, $sp, 0x0040
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
96$:
	jal     dSetIMatrix
	addiu   $a0, $sp, 0x0040
	b       100$
	nop
100$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0080
	jr      $ra
	nop

move_animator:
	addiu   $sp, $sp, -0x0100
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x0100($sp)
	sw      $s0, 0x0018($sp)
	sw      $0, 0x0058($sp)
	sw      $0, 0x0054($sp)
	lui     $at, %hi(face_object_801B5E98)
	lwc1    $f4, %lo(face_object_801B5E98)($at)
	nop
	swc1    $f4, 0x002C($sp)
	lw      $t6, 0x0100($sp)
	nop
	lw      $t7, 0x0048($t6)
	nop
	beqz    $t7, 22$
	nop
	lw      $t8, 0x0100($sp)
	nop
	lw      $t9, 0x0048($t8)
	move    $a0, $t8
	jalr    $t9
	nop
22$:
	lw      $t0, 0x0100($sp)
	nop
	lw      $t1, 0x0014($t0)
	nop
	bnez    $t1, 30$
	nop
	b       1044$
	nop
30$:
	lw      $t2, 0x0100($sp)
	nop
	lw      $t3, 0x0018($t2)
	nop
	lw      $t4, 0x001C($t3)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x00FC($sp)
	lw      $t6, 0x0100($sp)
	nop
	lw      $t7, 0x0044($t6)
	nop
	beqz    $t7, 65$
	nop
	lw      $t8, 0x0100($sp)
	nop
	lw      $t9, 0x0044($t8)
	nop
	lwc1    $f6, 0x0028($t9)
	lwc1    $f8, 0x0024($t9)
	nop
	div.s   $f10, $f6, $f8
	swc1    $f10, 0x0028($t8)
	lw      $t1, 0x0100($sp)
	lw      $t0, 0x00FC($sp)
	lw      $t2, 0x0044($t1)
	nop
	lw      $t3, 0x0020($t2)
	nop
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 2
	addu    $t5, $t0, $t4
	sw      $t5, 0x00FC($sp)
65$:
	lw      $t6, 0x00FC($sp)
	nop
	lw      $t7, 0x0004($t6)
	nop
	bnez    $t7, 73$
	nop
	b       1044$
	nop
73$:
	li      $at, 0x40800000
	mtc1    $at, $f16
	nop
	swc1    $f16, 0x003C($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f18
	nop
	swc1    $f18, 0x0040($sp)
	li      $at, 0x3F800000
	mtc1    $at, $f4
	nop
	swc1    $f4, 0x0044($sp)
	lw      $t8, 0x00FC($sp)
	lw      $t9, 0x0100($sp)
	lw      $t1, 0x0000($t8)
	lwc1    $f6, 0x0028($t9)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f10, $f8
	c.lt.s  $f10, $f6
	nop
	bc1f    101$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f16
	lw      $t2, 0x0100($sp)
	b       117$
	swc1    $f16, 0x0028($t2)
101$:
	lw      $t3, 0x0100($sp)
	mtc1    $0, $f4
	lwc1    $f18, 0x0028($t3)
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    117$
	nop
	lw      $t0, 0x00FC($sp)
	lw      $t5, 0x0100($sp)
	lw      $t4, 0x0000($t0)
	nop
	mtc1    $t4, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0028($t5)
117$:
	cfc1    $t7, $31
	lw      $t6, 0x0100($sp)
	ori     $at, $t7, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f10, 0x0028($t6)
	nop
	cvt.w.s $f16, $f10
	mfc1    $t9, $f16
	ctc1    $t7, $31
	sw      $t9, 0x0038($sp)
	nop
	lw      $t1, 0x0038($sp)
	lw      $t8, 0x0100($sp)
	mtc1    $t1, $f4
	lwc1    $f18, 0x0028($t8)
	cvt.s.w $f8, $f4
	sub.s   $f6, $f18, $f8
	swc1    $f6, 0x0030($sp)
	lw      $t2, 0x0038($sp)
	nop
	addiu   $t3, $t2, 0x0001
	sw      $t3, 0x0034($sp)
	lw      $t4, 0x00FC($sp)
	lw      $t0, 0x0034($sp)
	lw      $t5, 0x0000($t4)
	nop
	slt     $at, $t5, $t0
	beqz    $at, 149$
	nop
	li      $t6, 0x0001
	sw      $t6, 0x0034($sp)
149$:
	lw      $t7, 0x0038($sp)
	nop
	addiu   $t9, $t7, -0x0001
	sw      $t9, 0x0038($sp)
	lw      $t8, 0x0034($sp)
	nop
	addiu   $t1, $t8, -0x0001
	sw      $t1, 0x0034($sp)
	lw      $t2, 0x0100($sp)
	nop
	lw      $t3, 0x0014($t2)
	nop
	lw      $s0, 0x001C($t3)
	nop
	beqz    $s0, 1042$
	nop
.L8017F998:
	lw      $t4, 0x0008($s0)
	nop
	sw      $t4, 0x0020($sp)
	lw      $a0, 0x0020($sp)
	jal     face_dynlist_80186C84
	nop
	lw      $t0, 0x00FC($sp)
	nop
	lw      $t5, 0x0004($t0)
	nop
	addiu   $t6, $t5, -0x0001
	sltiu   $at, $t6, 0x000B
	beqz    $at, L80180730
	nop
	sll     $t6, $t6, 2
	lui     $at, %hi(face_object_801B5E9C)
	addu    $at, $at, $t6
	lw      $t6, %lo(face_object_801B5E9C)($at)
	nop
	jr      $t6
	nop
.globl L8017F9EC
L8017F9EC:
	lw      $t7, 0x00FC($sp)
	nop
	lw      $t9, 0x0008($t7)
	nop
	sw      $t9, 0x00F8($sp)
	cfc1    $t1, $31
	lw      $t8, 0x0100($sp)
	ori     $at, $t1, 0x0003
	xori    $at, $at, 0x0002
	ctc1    $at, $31
	lwc1    $f10, 0x0028($t8)
	lw      $t4, 0x00F8($sp)
	cvt.w.s $f16, $f10
	mfc1    $t2, $f16
	ctc1    $t1, $31
	sll     $t3, $t2, 6
	jal     dSetIMatrix
	addu    $a0, $t3, $t4
	b       1038$
	nop
.globl L8017FA3C
L8017FA3C:
	lw      $t0, 0x00FC($sp)
	nop
	lw      $t5, 0x0008($t0)
	nop
	sw      $t5, 0x0064($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	addiu   $a0, $sp, 0x0090
	jal     dGetInitPos
	addiu   $a0, $a0, 0x0018
	lwc1    $f6, 0x00A8($sp)
	nop
	swc1    $f6, 0x0084($sp)
	lwc1    $f10, 0x00AC($sp)
	nop
	swc1    $f10, 0x0088($sp)
	lwc1    $f16, 0x00B0($sp)
	nop
	swc1    $f16, 0x008C($sp)
	lw      $t7, 0x0038($sp)
	lw      $t6, 0x0064($sp)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 1
	addu    $t8, $t6, $t9
	lh      $t1, 0x0000($t8)
	lwc1    $f8, 0x002C($sp)
	mtc1    $t1, $f4
	nop
	cvt.s.w $f18, $f4
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x009C($sp)
	lw      $t3, 0x0038($sp)
	lw      $t2, 0x0064($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t0, $t2, $t4
	lh      $t5, 0x0002($t0)
	lwc1    $f4, 0x002C($sp)
	mtc1    $t5, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x00A0($sp)
	lw      $t6, 0x0038($sp)
	lw      $t7, 0x0064($sp)
	sll     $t9, $t6, 2
	subu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t8, $t7, $t9
	lh      $t1, 0x0004($t8)
	lwc1    $f10, 0x002C($sp)
	mtc1    $t1, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x00A4($sp)
	lw      $t2, 0x0034($sp)
	lw      $t3, 0x0064($sp)
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t0, $t3, $t4
	lh      $t5, 0x0000($t0)
	lwc1    $f8, 0x002C($sp)
	mtc1    $t5, $f4
	nop
	cvt.s.w $f18, $f4
	mul.s   $f6, $f18, $f8
	swc1    $f6, 0x0078($sp)
	lw      $t7, 0x0034($sp)
	lw      $t6, 0x0064($sp)
	sll     $t9, $t7, 2
	subu    $t9, $t9, $t7
	sll     $t9, $t9, 1
	addu    $t8, $t6, $t9
	lh      $t1, 0x0002($t8)
	lwc1    $f4, 0x002C($sp)
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f18, $f16, $f4
	swc1    $f18, 0x007C($sp)
	lw      $t3, 0x0034($sp)
	lw      $t2, 0x0064($sp)
	sll     $t4, $t3, 2
	subu    $t4, $t4, $t3
	sll     $t4, $t4, 1
	addu    $t0, $t2, $t4
	lh      $t5, 0x0004($t0)
	lwc1    $f10, 0x002C($sp)
	mtc1    $t5, $f8
	nop
	cvt.s.w $f6, $f8
	mul.s   $f16, $f6, $f10
	swc1    $f16, 0x0080($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       1038$
	nop
.globl L8017FBFC
L8017FBFC:
	lw      $t7, 0x00FC($sp)
	nop
	lw      $t6, 0x0008($t7)
	nop
	sw      $t6, 0x0064($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	addiu   $a0, $sp, 0x0090
	jal     dGetInitRot
	addiu   $a0, $a0, 0x000C
	lwc1    $f6, 0x009C($sp)
	nop
	swc1    $f6, 0x0078($sp)
	lwc1    $f10, 0x00A0($sp)
	nop
	swc1    $f10, 0x007C($sp)
	lwc1    $f16, 0x00A4($sp)
	nop
	swc1    $f16, 0x0080($sp)
	lw      $t8, 0x0038($sp)
	lw      $t9, 0x0064($sp)
	sll     $t1, $t8, 2
	subu    $t1, $t1, $t8
	sll     $t1, $t1, 1
	addu    $t3, $t9, $t1
	lh      $t2, 0x0000($t3)
	nop
	mtc1    $t2, $f4
	nop
	cvt.s.w $f18, $f4
	swc1    $f18, 0x00A8($sp)
	lw      $t0, 0x0038($sp)
	lw      $t4, 0x0064($sp)
	sll     $t5, $t0, 2
	subu    $t5, $t5, $t0
	sll     $t5, $t5, 1
	addu    $t7, $t4, $t5
	lh      $t6, 0x0002($t7)
	nop
	mtc1    $t6, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x00AC($sp)
	lw      $t9, 0x0038($sp)
	lw      $t8, 0x0064($sp)
	sll     $t1, $t9, 2
	subu    $t1, $t1, $t9
	sll     $t1, $t1, 1
	addu    $t3, $t8, $t1
	lh      $t2, 0x0004($t3)
	nop
	mtc1    $t2, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x00B0($sp)
	lw      $t4, 0x0034($sp)
	lw      $t0, 0x0064($sp)
	sll     $t5, $t4, 2
	subu    $t5, $t5, $t4
	sll     $t5, $t5, 1
	addu    $t7, $t0, $t5
	lh      $t6, 0x0000($t7)
	nop
	mtc1    $t6, $f4
	nop
	cvt.s.w $f18, $f4
	swc1    $f18, 0x0084($sp)
	lw      $t8, 0x0034($sp)
	lw      $t9, 0x0064($sp)
	sll     $t1, $t8, 2
	subu    $t1, $t1, $t8
	sll     $t1, $t1, 1
	addu    $t3, $t9, $t1
	lh      $t2, 0x0002($t3)
	nop
	mtc1    $t2, $f8
	nop
	cvt.s.w $f6, $f8
	swc1    $f6, 0x0088($sp)
	lw      $t0, 0x0034($sp)
	lw      $t4, 0x0064($sp)
	sll     $t5, $t0, 2
	subu    $t5, $t5, $t0
	sll     $t5, $t5, 1
	addu    $t7, $t4, $t5
	lh      $t6, 0x0004($t7)
	nop
	mtc1    $t6, $f10
	nop
	cvt.s.w $f16, $f10
	swc1    $f16, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       1038$
	nop
.globl L8017FDA4
L8017FDA4:
	lw      $t8, 0x00FC($sp)
	nop
	lw      $t9, 0x0008($t8)
	nop
	sw      $t9, 0x0060($sp)
	jal     dGetScale
	addiu   $a0, $sp, 0x0090
	lwc1    $f4, 0x0090($sp)
	nop
	swc1    $f4, 0x006C($sp)
	lwc1    $f18, 0x0094($sp)
	nop
	swc1    $f18, 0x0070($sp)
	lwc1    $f8, 0x0098($sp)
	nop
	swc1    $f8, 0x0074($sp)
	lw      $t3, 0x0038($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x0000($t0)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x009C($sp)
	lw      $t7, 0x0038($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0002($t8)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t9, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($sp)
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0004($t0)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t4, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x00A4($sp)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x0000($t8)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t9, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0078($sp)
	lw      $t3, 0x0034($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x0002($t0)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t4, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x007C($sp)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0004($t8)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0080($sp)
	lw      $t1, 0x0038($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0006($t0)
	nop
	mtc1    $t4, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t5, 0x0038($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x0008($t8)
	nop
	mtc1    $t9, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t3, 0x0038($sp)
	lw      $t1, 0x0060($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t0, $t1, $t2
	lh      $t4, 0x000A($t0)
	nop
	mtc1    $t4, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t7, 0x0034($sp)
	lw      $t5, 0x0060($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t8, $t5, $t6
	lh      $t9, 0x0006($t8)
	nop
	mtc1    $t9, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t1, 0x0034($sp)
	lw      $t3, 0x0060($sp)
	sll     $t2, $t1, 2
	subu    $t2, $t2, $t1
	sll     $t2, $t2, 2
	addu    $t0, $t3, $t2
	lh      $t4, 0x0008($t0)
	nop
	mtc1    $t4, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t5, 0x0034($sp)
	lw      $t7, 0x0060($sp)
	sll     $t6, $t5, 2
	subu    $t6, $t6, $t5
	sll     $t6, $t6, 2
	addu    $t8, $t7, $t6
	lh      $t9, 0x000A($t8)
	nop
	mtc1    $t9, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       1038$
	nop
.globl L80180054
L80180054:
	lw      $t1, 0x00FC($sp)
	nop
	lw      $t3, 0x0008($t1)
	nop
	sw      $t3, 0x0068($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0000($t5)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0090($sp)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0002($t1)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0094($sp)
	lw      $t2, 0x0038($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x0004($t5)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0098($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x0006($t1)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x009C($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0008($t5)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x00A0($sp)
	lw      $t8, 0x0038($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x000A($t1)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x00A4($sp)
	lw      $t2, 0x0038($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x000C($t5)
	nop
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t6, 0x0038($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x000E($t1)
	nop
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t0, 0x0038($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0010($t5)
	nop
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0000($t1)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x006C($sp)
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x0002($t5)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t7, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x0070($sp)
	lw      $t6, 0x0034($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x0004($t1)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t3, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0074($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x0006($t5)
	lwc1    $f16, 0x002C($sp)
	mtc1    $t7, $f6
	nop
	cvt.s.w $f10, $f6
	mul.s   $f4, $f10, $f16
	swc1    $f4, 0x0078($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0008($t1)
	lwc1    $f6, 0x002C($sp)
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	mul.s   $f10, $f8, $f6
	swc1    $f10, 0x007C($sp)
	lw      $t2, 0x0034($sp)
	lw      $t0, 0x0068($sp)
	sll     $t4, $t2, 3
	addu    $t4, $t4, $t2
	sll     $t4, $t4, 1
	addu    $t5, $t0, $t4
	lh      $t7, 0x000A($t5)
	lwc1    $f18, 0x002C($sp)
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	mul.s   $f8, $f4, $f18
	swc1    $f8, 0x0080($sp)
	lw      $t6, 0x0034($sp)
	lw      $t8, 0x0068($sp)
	sll     $t9, $t6, 3
	addu    $t9, $t9, $t6
	sll     $t9, $t9, 1
	addu    $t1, $t8, $t9
	lh      $t3, 0x000C($t1)
	nop
	mtc1    $t3, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t0, 0x0034($sp)
	lw      $t2, 0x0068($sp)
	sll     $t4, $t0, 3
	addu    $t4, $t4, $t0
	sll     $t4, $t4, 1
	addu    $t5, $t2, $t4
	lh      $t7, 0x000E($t5)
	nop
	mtc1    $t7, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t8, 0x0034($sp)
	lw      $t6, 0x0068($sp)
	sll     $t9, $t8, 3
	addu    $t9, $t9, $t8
	sll     $t9, $t9, 1
	addu    $t1, $t6, $t9
	lh      $t3, 0x0010($t1)
	nop
	mtc1    $t3, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lw      $a2, 0x0030($sp)
	addiu   $a0, $sp, 0x0090
	jal     face_object_8017F564
	addiu   $a1, $sp, 0x006C
	b       1038$
	nop
.globl L80180410
L80180410:
	lw      $t0, 0x0020($sp)
	li      $at, 0x0200
	lw      $t2, 0x000C($t0)
	nop
	bne     $t2, $at, 942$
	nop
	lw      $t4, 0x00FC($sp)
	nop
	lw      $t5, 0x0008($t4)
	nop
	sw      $t5, 0x005C($sp)
	lw      $t8, 0x0038($sp)
	lw      $t7, 0x005C($sp)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t9, $t7, $t6
	lh      $t1, 0x0000($t9)
	nop
	mtc1    $t1, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x00A8($sp)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x005C($sp)
	sll     $t2, $t0, 2
	subu    $t2, $t2, $t0
	sll     $t2, $t2, 2
	addu    $t4, $t3, $t2
	lh      $t5, 0x0002($t4)
	nop
	mtc1    $t5, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x00AC($sp)
	lw      $t7, 0x0038($sp)
	lw      $t8, 0x005C($sp)
	sll     $t6, $t7, 2
	subu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	addu    $t9, $t8, $t6
	lh      $t1, 0x0004($t9)
	nop
	mtc1    $t1, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x00B0($sp)
	lw      $t3, 0x0038($sp)
	lw      $t0, 0x005C($sp)
	sll     $t2, $t3, 2
	subu    $t2, $t2, $t3
	sll     $t2, $t2, 2
	addu    $t4, $t0, $t2
	lh      $t5, 0x0006($t4)
	nop
	mtc1    $t5, $f6
	nop
	cvt.s.w $f10, $f6
	swc1    $f10, 0x0084($sp)
	lw      $t8, 0x0038($sp)
	lw      $t7, 0x005C($sp)
	sll     $t6, $t8, 2
	subu    $t6, $t6, $t8
	sll     $t6, $t6, 2
	addu    $t9, $t7, $t6
	lh      $t1, 0x0008($t9)
	nop
	mtc1    $t1, $f16
	nop
	cvt.s.w $f4, $f16
	swc1    $f4, 0x0088($sp)
	lw      $t0, 0x0038($sp)
	lw      $t3, 0x005C($sp)
	sll     $t2, $t0, 2
	subu    $t2, $t2, $t0
	sll     $t2, $t2, 2
	addu    $t4, $t3, $t2
	lh      $t5, 0x000A($t4)
	nop
	mtc1    $t5, $f18
	nop
	cvt.s.w $f8, $f18
	swc1    $f8, 0x008C($sp)
	lwc1    $f6, 0x00A8($sp)
	lw      $t8, 0x0020($sp)
	nop
	swc1    $f6, 0x0014($t8)
	lwc1    $f10, 0x00AC($sp)
	lw      $t7, 0x0020($sp)
	nop
	swc1    $f10, 0x0018($t7)
	lwc1    $f16, 0x00B0($sp)
	lw      $t6, 0x0020($sp)
	nop
	swc1    $f16, 0x001C($t6)
	lwc1    $f4, 0x0084($sp)
	lw      $t9, 0x0020($sp)
	nop
	swc1    $f4, 0x0034($t9)
	lwc1    $f18, 0x0088($sp)
	lw      $t1, 0x0020($sp)
	nop
	swc1    $f18, 0x0038($t1)
	lwc1    $f8, 0x008C($sp)
	lw      $t0, 0x0020($sp)
	nop
	swc1    $f8, 0x003C($t0)
942$:
	b       1038$
	nop
.globl L801805C4
L801805C4:
	lw      $t3, 0x00FC($sp)
	nop
	lw      $t2, 0x0008($t3)
	nop
	sw      $t2, 0x00B4($sp)
	lw      $t4, 0x0038($sp)
	lw      $t7, 0x0034($sp)
	lw      $t8, 0x00B4($sp)
	sll     $t5, $t4, 3
	sll     $t6, $t7, 3
	addu    $t5, $t5, $t4
	addu    $t6, $t6, $t7
	sll     $t6, $t6, 2
	sll     $t5, $t5, 2
	lw      $a2, 0x0030($sp)
	addu    $a0, $t5, $t8
	jal     face_object_8017F564
	addu    $a1, $t6, $t8
	b       1038$
	nop
.globl L80180614
L80180614:
	lw      $t0, 0x0038($sp)
	lw      $t9, 0x00FC($sp)
	sll     $t3, $t0, 2
	addu    $t3, $t3, $t0
	sll     $t3, $t3, 2
	lw      $t1, 0x0008($t9)
	subu    $t3, $t3, $t0
	sll     $t3, $t3, 2
	addu    $t2, $t1, $t3
	sw      $t2, 0x0028($sp)
	lw      $a0, 0x0028($sp)
	jal     dSetIMatrix
	nop
	lw      $t4, 0x0028($sp)
	nop
	lwc1    $f12, 0x0040($t4)
	lwc1    $f14, 0x0044($t4)
	lw      $a2, 0x0048($t4)
	jal     dSetScale
	nop
	b       1038$
	nop
.globl L8018066C
L8018066C:
	lw      $t5, 0x00FC($sp)
	nop
	lw      $t7, 0x0008($t5)
	nop
	sw      $t7, 0x00B4($sp)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x00B8
	lw      $a1, 0x00B4($sp)
	jal     face_math_8019429C
	addiu   $a0, $sp, 0x00B8
	lw      $a1, 0x00B4($sp)
	addiu   $a0, $sp, 0x00B8
	jal     face_math_80194360
	addiu   $a1, $a1, 0x000C
	lw      $a1, 0x00B4($sp)
	addiu   $a0, $sp, 0x00B8
	jal     face_math_80194424
	addiu   $a1, $a1, 0x0018
	jal     dSetIMatrix
	addiu   $a0, $sp, 0x00B8
	b       1038$
	nop
.globl L801806C4
L801806C4:
	lw      $t6, 0x0058($sp)
	nop
	bnez    $t6, 1015$
	nop
	lw      $t8, 0x0020($sp)
	b       1033$
	sw      $t8, 0x0058($sp)
1015$:
	lw      $t9, 0x0054($sp)
	nop
	bnez    $t9, 1030$
	nop
	lw      $t0, 0x0020($sp)
	nop
	sw      $t0, 0x0054($sp)
	lw      $t1, 0x0100($sp)
	lw      $a1, 0x0058($sp)
	lw      $a2, 0x0054($sp)
	lwc1    $f12, 0x0028($t1)
	jal     face_object_8017F544
	nop
	b       1033$
	nop
1030$:
	la.u    $a0, str_face_object_801B5C48
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5C48
1033$:
	b       1038$
	nop
.globl L80180730
L80180730:
	la.u    $a0, str_face_object_801B5C64
	jal     face_stdio_8018D298
	la.l    $a0, str_face_object_801B5C64
1038$:
	lw      $s0, 0x0004($s0)
	nop
	bnez    $s0, .L8017F998
	nop
1042$:
	b       1044$
	nop
1044$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x0100

face_object_80180764:
	addiu   $sp, $sp, -0x00E8
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x00E8($sp)
	sw      $s1, 0x0018($sp)
	sw      $s0, 0x0014($sp)
	la.u    $t6, face_control+0x00
	la.l    $t6, face_control+0x00
	sw      $t6, 0x00C0($sp)
	lui     $t7, %hi(face_draw_801A8288)
	lw      $t7, %lo(face_draw_801A8288)($t7)
	nop
	bnez    $t7, 15$
	nop
	b       187$
	nop
15$:
	lui     $a0, %hi(face_draw_801A8288)
	lw      $a0, %lo(face_draw_801A8288)($a0)
	jal     face_math_80194CD8
	addiu   $a0, $a0, 0x0040
	swc1    $f0, 0x0028($sp)
	li      $at, 0x447A0000
	mtc1    $at, $f6
	lwc1    $f4, 0x0028($sp)
	nop
	div.s   $f8, $f4, $f6
	swc1    $f8, 0x0028($sp)
	lw      $t8, 0x00C0($sp)
	lwc1    $f18, 0x0028($sp)
	lw      $t9, 0x00D0($t8)
	lw      $t0, 0x00B8($t8)
	nop
	subu    $t1, $t9, $t0
	mtc1    $t1, $f10
	nop
	cvt.s.w $f16, $f10
	mul.s   $f4, $f16, $f18
	swc1    $f4, 0x00D0($sp)
	lw      $t2, 0x00C0($sp)
	lwc1    $f10, 0x0028($sp)
	lw      $t3, 0x00D4($t2)
	lw      $t4, 0x00BC($t2)
	nop
	subu    $t5, $t3, $t4
	subu    $t6, $0, $t5
	mtc1    $t6, $f6
	nop
	cvt.s.w $f8, $f6
	mul.s   $f16, $f8, $f10
	swc1    $f16, 0x00D4($sp)
	mtc1    $0, $f18
	nop
	swc1    $f18, 0x00D8($sp)
	lui     $a0, %hi(face_draw_801A8288)
	lw      $a0, %lo(face_draw_801A8288)($a0)
	addiu   $a1, $sp, 0x0040
	jal     face_math_80194FBC
	addiu   $a0, $a0, 0x00E8
	addiu   $a0, $sp, 0x00D0
	jal     face_math_80196680
	addiu   $a1, $sp, 0x0040
	lw      $t7, 0x00E8($sp)
	nop
	sw      $t7, 0x0030($sp)
	lw      $t8, 0x00E8($sp)
	nop
	lhu     $t9, 0x0012($t8)
	nop
	andi    $t0, $t9, 0x0004
	beqz    $t0, 185$
	nop
	lui     $t1, %hi(face_control+0xD8)
	lw      $t1, %lo(face_control+0xD8)($t1)
	nop
	srl     $t2, $t1, 31
	beqz    $t2, 185$
	nop
	jal     face_sound_80178254
	li      $a0, 0x0008
	lw      $t3, 0x00C0($sp)
	nop
	lw      $t4, 0x00C0($t3)
	nop
	bgez    $t4, 86$
	nop
	b       90$
	subu    $s1, $0, $t4
86$:
	lw      $t5, 0x00C0($sp)
	nop
	lw      $s1, 0x00C0($t5)
	nop
90$:
	lw      $t6, 0x00C0($sp)
	nop
	lw      $t7, 0x00C4($t6)
	nop
	bgez    $t7, 98$
	nop
	b       102$
	subu    $s0, $0, $t7
98$:
	lw      $t8, 0x00C0($sp)
	nop
	lw      $s0, 0x00C4($t8)
	nop
102$:
	addu    $t9, $s0, $s1
	slti    $at, $t9, 0x000B
	bnez    $at, 108$
	nop
	jal     face_sound_80178254
	li      $a0, 0x0010
108$:
	lw      $t0, 0x00E8($sp)
	li      $at, 0x0004
	lw      $s0, 0x000C($t0)
	nop
	beq     $s0, $at, 125$
	nop
	li      $at, 0x0008
	beq     $s0, $at, 183$
	nop
	li      $at, 0x0020
	beq     $s0, $at, 147$
	nop
	li      $at, 0x2000
	beq     $s0, $at, 145$
	nop
	b       185$
	nop
125$:
	lw      $t1, 0x0030($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f4, 0x0158($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0158($t1)
	lw      $t2, 0x0030($sp)
	lwc1    $f16, 0x00D4($sp)
	lwc1    $f10, 0x015C($t2)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x015C($t2)
	lw      $t3, 0x0030($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f4, 0x0160($t3)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0160($t3)
	b       185$
	nop
145$:
	b       185$
	nop
147$:
	lw      $a0, 0x0030($sp)
	addiu   $a1, $sp, 0x0080
	jal     face_math_80194FBC
	addiu   $a0, $a0, 0x0128
	lwc1    $f10, 0x00D0($sp)
	nop
	swc1    $f10, 0x00C4($sp)
	lwc1    $f16, 0x00D4($sp)
	nop
	swc1    $f16, 0x00C8($sp)
	lwc1    $f18, 0x00D8($sp)
	nop
	swc1    $f18, 0x00CC($sp)
	addiu   $a0, $sp, 0x00C4
	jal     face_math_80196680
	addiu   $a1, $sp, 0x0080
	lw      $t4, 0x0030($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f4, 0x0118($t4)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0118($t4)
	lw      $t5, 0x0030($sp)
	lwc1    $f16, 0x00D4($sp)
	lwc1    $f10, 0x011C($t5)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x011C($t5)
	lw      $t6, 0x0030($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f4, 0x0120($t6)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0120($t6)
	b       185$
	nop
183$:
	b       185$
	nop
185$:
	b       187$
	nop
187$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0014($sp)
	lw      $s1, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00E8

move_animators:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5C90
	jal     restart_timer
	la.l    $a0, str_face_object_801B5C90
	la.u    $a1, move_animator
	lw      $a2, 0x0018($sp)
	la.l    $a1, move_animator
	jal     face_object_8017E520
	li      $a0, 0x00010000
	la.u    $a0, str_face_object_801B5CA0
	jal     face_stdio_8018D02C
	la.l    $a0, str_face_object_801B5CA0
	b       16$
	nop
16$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80180AB4
face_object_80180AB4:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	li.u    $a0, 0x00FFFFFF
	la.u    $a1, face_object_80180764
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_80180764
	jal     face_object_8017E520
	li.l    $a0, 0x00FFFFFF
	b       11$
	nop
11$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_80180AF0:
	addiu   $sp, $sp, -0x00F0
	sw      $ra, 0x001C($sp)
	sw      $a0, 0x00F0($sp)
	sw      $s0, 0x0018($sp)
	la.u    $t6, face_control+0x00
	la.l    $t6, face_control+0x00
	sw      $t6, 0x0028($sp)
	lw      $t7, 0x00F0($sp)
	nop
	lw      $t8, 0x002C($t7)
	nop
	andi    $t9, $t8, 0x0010
	bnez    $t9, 16$
	nop
	b       389$
	nop
16$:
	mtc1    $0, $f4
	nop
	swc1    $f4, 0x00E8($sp)
	swc1    $f4, 0x00E4($sp)
	swc1    $f4, 0x00E0($sp)
	mtc1    $0, $f6
	nop
	swc1    $f6, 0x00B8($sp)
	swc1    $f6, 0x00B4($sp)
	swc1    $f6, 0x00B0($sp)
	lw      $t0, 0x00F0($sp)
	nop
	lw      $t1, 0x0030($t0)
	nop
	beqz    $t1, 114$
	sw      $t1, 0x00EC($sp)
	lw      $a0, 0x00EC($sp)
	jal     face_dynlist_80186C84
	nop
	jal     dGetWorldPos
	addiu   $a0, $sp, 0x00E0
	jal     dGetMatrix
	addiu   $a0, $sp, 0x0070
	lw      $t3, 0x00F0($sp)
	addiu   $t2, $sp, 0x0070
	lwc1    $f8, 0x0020($t2)
	lwc1    $f10, 0x0058($t3)
	nop
	sub.s   $f16, $f8, $f10
	swc1    $f16, 0x00C8($sp)
	lw      $t5, 0x00F0($sp)
	addiu   $t4, $sp, 0x0070
	lwc1    $f18, 0x0028($t4)
	lwc1    $f4, 0x0060($t5)
	nop
	sub.s   $f6, $f18, $f4
	swc1    $f6, 0x00D0($sp)
	lw      $t6, 0x00F0($sp)
	lwc1    $f8, 0x00C8($sp)
	lwc1    $f10, 0x0184($t6)
	lwc1    $f18, 0x0058($t6)
	mul.s   $f16, $f8, $f10
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0058($t6)
	lw      $t7, 0x00F0($sp)
	lwc1    $f6, 0x00D0($sp)
	lwc1    $f8, 0x0184($t7)
	lwc1    $f18, 0x0060($t7)
	mul.s   $f10, $f6, $f8
	add.s   $f16, $f18, $f10
	swc1    $f16, 0x0060($t7)
	lw      $t8, 0x00F0($sp)
	nop
	lwc1    $f4, 0x0058($t8)
	nop
	swc1    $f4, 0x00C8($t8)
	mtc1    $0, $f6
	lw      $t9, 0x00F0($sp)
	nop
	swc1    $f6, 0x00CC($t9)
	lw      $t0, 0x00F0($sp)
	nop
	lwc1    $f8, 0x0060($t0)
	nop
	swc1    $f8, 0x00D0($t0)
	lw      $t1, 0x00F0($sp)
	nop
	lwc1    $f18, 0x00D0($t1)
	nop
	swc1    $f18, 0x00A8($t1)
	mtc1    $0, $f10
	lw      $t2, 0x00F0($sp)
	nop
	swc1    $f10, 0x00AC($t2)
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f16, 0x00C8($t3)
	nop
	neg.s   $f4, $f16
	swc1    $f4, 0x00B0($t3)
	mtc1    $0, $f6
	lw      $t4, 0x00F0($sp)
	nop
	swc1    $f6, 0x00B8($t4)
	li      $at, 0x3F800000
	mtc1    $at, $f8
	lw      $t5, 0x00F0($sp)
	nop
	swc1    $f8, 0x00BC($t5)
	mtc1    $0, $f18
	lw      $t6, 0x00F0($sp)
	nop
	swc1    $f18, 0x00C0($t6)
	lw      $a0, 0x00F0($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
	b       117$
	nop
114$:
	lw      $a0, 0x00F0($sp)
	jal     face_math_801963C0
	addiu   $a0, $a0, 0x00A8
117$:
	lw      $t7, 0x00F0($sp)
	nop
	addiu   $t8, $t7, 0x0064
	sw      $t8, 0x002C($sp)
	lw      $t9, 0x00F0($sp)
	nop
	lw      $t0, 0x002C($t9)
	nop
	andi    $t1, $t0, 0x0004
	beqz    $t1, 314$
	nop
	lw      $t2, 0x0028($sp)
	nop
	lw      $t3, 0x0038($t2)
	nop
	beqz    $t3, 179$
	nop
	lw      $t4, 0x00F0($t2)
	nop
	lw      $t5, 0x0038($t4)
	nop
	bnez    $t5, 179$
	nop
	lw      $t6, 0x00F0($sp)
	nop
	lw      $t7, 0x0174($t6)
	nop
	addiu   $t8, $t7, 0x0001
	sw      $t8, 0x0174($t6)
	lw      $t9, 0x00F0($sp)
	nop
	lw      $t0, 0x0174($t9)
	lw      $t1, 0x0170($t9)
	nop
	slt     $at, $t1, $t0
	beqz    $at, 157$
	nop
	lw      $t3, 0x00F0($sp)
	nop
	sw      $0, 0x0174($t3)
157$:
	lw      $t2, 0x00F0($sp)
	nop
	lw      $s0, 0x0174($t2)
	nop
	beqz    $s0, 171$
	nop
	li      $at, 0x0001
	beq     $s0, $at, 175$
	nop
	li      $at, 0x0002
	beq     $s0, $at, 175$
	nop
	b       179$
	nop
171$:
	jal     face_sound_80178254
	li      $a0, 0x0040
	b       179$
	nop
175$:
	jal     face_sound_80178254
	li      $a0, 0x0080
	b       179$
	nop
179$:
	lw      $t4, 0x0028($sp)
	nop
	lw      $t5, 0x0018($t4)
	nop
	beqz    $t5, 192$
	nop
	lw      $t7, 0x00F0($sp)
	nop
	lwc1    $f10, 0x012C($t7)
	lwc1    $f16, 0x0138($t7)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x012C($t7)
192$:
	lw      $t8, 0x0028($sp)
	nop
	lw      $t6, 0x001C($t8)
	nop
	beqz    $t6, 205$
	nop
	lw      $t9, 0x00F0($sp)
	nop
	lwc1    $f6, 0x012C($t9)
	lwc1    $f8, 0x0138($t9)
	nop
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x012C($t9)
205$:
	lw      $t0, 0x0028($sp)
	nop
	lw      $t1, 0x0020($t0)
	nop
	beqz    $t1, 218$
	nop
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f10, 0x0128($t3)
	lwc1    $f16, 0x0134($t3)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0128($t3)
218$:
	lw      $t2, 0x0028($sp)
	nop
	lw      $t4, 0x0024($t2)
	nop
	beqz    $t4, 231$
	nop
	lw      $t5, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0128($t5)
	lwc1    $f8, 0x0134($t5)
	nop
	sub.s   $f18, $f6, $f8
	swc1    $f18, 0x0128($t5)
231$:
	lw      $t7, 0x00F0($sp)
	li      $at, 0x42A00000
	mtc1    $at, $f14
	lwc1    $f12, 0x0128($t7)
	jal     face_math_80194868
	nop
	lw      $t8, 0x00F0($sp)
	nop
	swc1    $f0, 0x0128($t8)
	lw      $t6, 0x00F0($sp)
	nop
	lw      $t9, 0x0174($t6)
	nop
	sll     $t0, $t9, 2
	subu    $t0, $t0, $t9
	sll     $t0, $t0, 2
	addu    $t1, $t6, $t0
	lwc1    $f10, 0x0140($t1)
	nop
	swc1    $f10, 0x004C($t6)
	lw      $t3, 0x00F0($sp)
	nop
	lw      $t2, 0x0174($t3)
	nop
	sll     $t4, $t2, 2
	subu    $t4, $t4, $t2
	sll     $t4, $t4, 2
	addu    $t5, $t3, $t4
	lwc1    $f16, 0x0144($t5)
	nop
	swc1    $f16, 0x0050($t3)
	lw      $t7, 0x00F0($sp)
	nop
	lw      $t8, 0x0174($t7)
	nop
	sll     $t9, $t8, 2
	subu    $t9, $t9, $t8
	sll     $t9, $t9, 2
	addu    $t0, $t7, $t9
	lwc1    $f4, 0x0148($t0)
	nop
	swc1    $f4, 0x0054($t7)
	lw      $t1, 0x00F0($sp)
	nop
	lwc1    $f12, 0x0128($t1)
	addiu   $a1, $t1, 0x0050
	jal     face_math_801949C0
	addiu   $a2, $t1, 0x0054
	lw      $t6, 0x00F0($sp)
	nop
	lwc1    $f12, 0x012C($t6)
	addiu   $a1, $t6, 0x004C
	addiu   $a2, $t6, 0x0054
	jal     face_math_801949C0
	neg.s   $f12, $f12
	lw      $t2, 0x00F0($sp)
	nop
	lwc1    $f6, 0x004C($t2)
	lwc1    $f8, 0x0040($t2)
	lwc1    $f10, 0x017C($t2)
	sub.s   $f18, $f6, $f8
	mul.s   $f16, $f18, $f10
	add.s   $f4, $f8, $f16
	swc1    $f4, 0x0040($t2)
	lw      $t4, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0050($t4)
	lwc1    $f18, 0x0044($t4)
	lwc1    $f8, 0x017C($t4)
	sub.s   $f10, $f6, $f18
	mul.s   $f16, $f10, $f8
	add.s   $f4, $f18, $f16
	swc1    $f4, 0x0044($t4)
	lw      $t5, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0054($t5)
	lwc1    $f10, 0x0048($t5)
	lwc1    $f18, 0x017C($t5)
	sub.s   $f8, $f6, $f10
	mul.s   $f16, $f8, $f18
	add.s   $f4, $f10, $f16
	b       317$
	swc1    $f4, 0x0048($t5)
314$:
	lw      $a0, 0x002C($sp)
	jal     face_math_801963C0
	nop
317$:
	lw      $t3, 0x00F0($sp)
	nop
	lwc1    $f6, 0x0040($t3)
	nop
	swc1    $f6, 0x00D4($sp)
	lw      $t8, 0x00F0($sp)
	nop
	lwc1    $f8, 0x0044($t8)
	nop
	swc1    $f8, 0x00D8($sp)
	lw      $t9, 0x00F0($sp)
	nop
	lwc1    $f18, 0x0048($t9)
	nop
	swc1    $f18, 0x00DC($sp)
	lwc1    $f10, 0x00D4($sp)
	lwc1    $f16, 0x00B0($sp)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00D4($sp)
	lwc1    $f6, 0x00D8($sp)
	lwc1    $f8, 0x00B4($sp)
	nop
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x00D8($sp)
	lwc1    $f10, 0x00DC($sp)
	lwc1    $f16, 0x00B8($sp)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x00DC($sp)
	lw      $t0, 0x00F0($sp)
	lw      $a0, 0x002C($sp)
	addiu   $t7, $t0, 0x00A8
	move    $a1, $t7
	jal     face_math_80196754
	move    $a2, $t7
	lw      $a1, 0x00F0($sp)
	addiu   $a0, $sp, 0x00D4
	jal     face_math_80196680
	addiu   $a1, $a1, 0x00A8
	lwc1    $f6, 0x00D4($sp)
	lw      $t1, 0x00F0($sp)
	nop
	swc1    $f6, 0x0014($t1)
	lwc1    $f8, 0x00D8($sp)
	lw      $t6, 0x00F0($sp)
	nop
	swc1    $f8, 0x0018($t6)
	lwc1    $f18, 0x00DC($sp)
	lw      $t2, 0x00F0($sp)
	nop
	swc1    $f18, 0x001C($t2)
	lw      $t4, 0x00F0($sp)
	lwc1    $f16, 0x00E0($sp)
	lwc1    $f10, 0x0014($t4)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x0014($t4)
	lw      $t5, 0x00F0($sp)
	lwc1    $f8, 0x00E4($sp)
	lwc1    $f6, 0x0018($t5)
	nop
	add.s   $f18, $f6, $f8
	swc1    $f18, 0x0018($t5)
	lw      $t3, 0x00F0($sp)
	lwc1    $f16, 0x00E8($sp)
	lwc1    $f10, 0x001C($t3)
	nop
	add.s   $f4, $f10, $f16
	swc1    $f4, 0x001C($t3)
	b       389$
	nop
389$:
	lw      $ra, 0x001C($sp)
	lw      $s0, 0x0018($sp)
	jr      $ra
	addiu   $sp, $sp, 0x00F0

face_object_80181114:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_object_80180AF0
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_80180AF0
	jal     face_object_8017E520
	li      $a0, 0x0200
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_8018114C:
	addiu   $sp, $sp, -0x0068
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0068($sp)
	lw      $t6, 0x0068($sp)
	li      $at, 0x0003
	lw      $t7, 0x0040($t6)
	nop
	bne     $t7, $at, 57$
	nop
	lw      $t8, 0x0068($sp)
	mtc1    $0, $f9
	lwc1    $f4, 0x0030($t8)
	mtc1    $0, $f8
	cvt.d.s $f6, $f4
	c.lt.d  $f8, $f6
	nop
	bc1f    27$
	nop
	lw      $t9, 0x0068($sp)
	lui     $at, %hi(face_object_801B5EC8+4)
	lwc1    $f10, 0x0030($t9)
	lwc1    $f19, %lo(face_object_801B5EC8+0)($at)
	lwc1    $f18, %lo(face_object_801B5EC8+4)($at)
	cvt.d.s $f16, $f10
	sub.d   $f4, $f16, $f18
	cvt.s.d $f6, $f4
	swc1    $f6, 0x0030($t9)
27$:
	lw      $t0, 0x0068($sp)
	mtc1    $0, $f10
	lwc1    $f8, 0x0030($t0)
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    39$
	nop
	mtc1    $0, $f16
	lw      $t1, 0x0068($sp)
	nop
	swc1    $f16, 0x0030($t1)
39$:
	lw      $t2, 0x0068($sp)
	nop
	lw      $t3, 0x003C($t2)
	nop
	andi    $t4, $t3, 0x0001
	beqz    $t4, 51$
	nop
	li      $at, 0x3F800000
	mtc1    $at, $f18
	lw      $t5, 0x0068($sp)
	nop
	swc1    $f18, 0x0030($t5)
51$:
	lw      $t6, 0x0068($sp)
	li      $at, -0x0002
	lw      $t7, 0x003C($t6)
	nop
	and     $t8, $t7, $at
	sw      $t8, 0x003C($t6)
57$:
	b       215$
	nop
	lw      $t9, 0x0068($sp)
	nop
	lwc1    $f4, 0x0074($t9)
	lwc1    $f6, 0x0080($t9)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x0074($t9)
	lw      $t0, 0x0068($sp)
	nop
	lwc1    $f10, 0x0078($t0)
	lwc1    $f16, 0x0084($t0)
	nop
	add.s   $f18, $f10, $f16
	swc1    $f18, 0x0078($t0)
	lw      $t1, 0x0068($sp)
	nop
	lwc1    $f4, 0x007C($t1)
	lwc1    $f6, 0x0088($t1)
	nop
	add.s   $f8, $f4, $f6
	swc1    $f8, 0x007C($t1)
	lw      $t2, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0074($t2)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1t    97$
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f4
	lwc1    $f18, 0x0078($t2)
	nop
	c.lt.s  $f18, $f4
	nop
	bc1f    103$
	nop
97$:
	lw      $t3, 0x0068($sp)
	nop
	lwc1    $f6, 0x0080($t3)
	nop
	neg.s   $f8, $f6
	swc1    $f8, 0x0080($t3)
103$:
	lw      $t4, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f10, 0x0078($t4)
	nop
	c.lt.s  $f16, $f10
	nop
	bc1t    119$
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f18
	nop
	c.lt.s  $f10, $f18
	nop
	bc1f    125$
	nop
119$:
	lw      $t5, 0x0068($sp)
	nop
	lwc1    $f4, 0x0084($t5)
	nop
	neg.s   $f6, $f4
	swc1    $f6, 0x0084($t5)
125$:
	lw      $t7, 0x0068($sp)
	li      $at, 0x43FA0000
	mtc1    $at, $f16
	lwc1    $f8, 0x007C($t7)
	nop
	c.lt.s  $f16, $f8
	nop
	bc1t    141$
	nop
	li      $at, 0xC3FA0000
	mtc1    $at, $f10
	nop
	c.lt.s  $f8, $f10
	nop
	bc1f    147$
	nop
141$:
	lw      $t8, 0x0068($sp)
	nop
	lwc1    $f18, 0x0088($t8)
	nop
	neg.s   $f4, $f18
	swc1    $f4, 0x0088($t8)
147$:
	b       215$
	nop
	lui     $at, %hi(face_object_801A8350)
	lwc1    $f6, %lo(face_object_801A8350)($at)
	li      $at, 0x3FF00000
	mtc1    $at, $f9
	mtc1    $0, $f8
	cvt.d.s $f16, $f6
	add.d   $f10, $f16, $f8
	lui     $at, %hi(face_object_801A8350)
	cvt.s.d $f18, $f10
	swc1    $f18, %lo(face_object_801A8350)($at)
	lui     $at, %hi(face_object_801A8354)
	lwc1    $f4, %lo(face_object_801A8354)($at)
	lui     $at, %hi(face_object_801B5ED0+4)
	lwc1    $f17, %lo(face_object_801B5ED0+0)($at)
	lwc1    $f16, %lo(face_object_801B5ED0+4)($at)
	cvt.d.s $f6, $f4
	add.d   $f8, $f6, $f16
	lui     $at, %hi(face_object_801A8354)
	cvt.s.d $f10, $f8
	swc1    $f10, %lo(face_object_801A8354)($at)
	jal     face_math_801963C0
	addiu   $a0, $sp, 0x0028
	lw      $t6, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x006C($t6)
	jal     absrot_matrix4
	li      $a1, 0x0001
	lw      $t9, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0068($t9)
	jal     absrot_matrix4
	move    $a1, $0
	lw      $t0, 0x0068($sp)
	addiu   $a0, $sp, 0x0028
	lw      $a2, 0x0070($t0)
	jal     absrot_matrix4
	li      $a1, 0x0002
	lw      $a0, 0x0068($sp)
	addiu   $a1, $sp, 0x0028
	jal     face_math_80196680
	addiu   $a0, $a0, 0x008C
	lw      $t1, 0x0068($sp)
	nop
	lwc1    $f18, 0x008C($t1)
	nop
	swc1    $f18, 0x0074($t1)
	lw      $t2, 0x0068($sp)
	nop
	lwc1    $f4, 0x0090($t2)
	nop
	swc1    $f4, 0x0078($t2)
	lw      $t3, 0x0068($sp)
	nop
	lwc1    $f6, 0x0094($t3)
	nop
	swc1    $f6, 0x007C($t3)
	b       215$
	nop
	lw      $a0, 0x0068($sp)
	addiu   $a1, $sp, 0x0028
	jal     face_math_80196680
	addiu   $a0, $a0, 0x0080
	jal     imout
	nop
	b       215$
	nop
215$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0068
	jr      $ra
	nop

face_object_801814B8:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a1, face_object_8018114C
	lw      $a2, 0x0018($sp)
	la.l    $a1, face_object_8018114C
	jal     face_object_8017E520
	li      $a0, 0x00080000
	b       10$
	nop
10$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

face_object_801814F0:
	addiu   $sp, $sp, -0x0020
	sw      $ra, 0x0014($sp)
	lui     $t6, %hi(face_movement)
	lw      $t6, %lo(face_movement)($t6)
	nop
	beqz    $t6, 37$
	nop
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     face_gadget_8018C2B0
	nop
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     face_object_801814B8
	nop
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     face_particle_801836B0
	nop
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     move_animators
	nop
	sw      $0, 0x001C($sp)
24$:
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     move_nets
	nop
	lw      $t7, 0x001C($sp)
	nop
	addiu   $t8, $t7, 0x0001
	blez    $t8, 24$
	sw      $t8, 0x001C($sp)
	lui     $a0, %hi(_face_object_bss-0x480+0x4F4)
	lw      $a0, %lo(_face_object_bss-0x480+0x4F4)($a0)
	jal     face_object_80181114
	nop
37$:
	b       39$
	nop
39$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0020
	jr      $ra
	nop

.globl face_object_8018159C
face_object_8018159C:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	la.u    $a0, str_face_object_801B5CB0
	jal     imin
	la.l    $a0, str_face_object_801B5CB0
	lw      $t6, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x498)
	lw      $t7, 0x0024($t6)
	nop
	sw      $t7, %lo(_face_object_bss-0x480+0x498)($at)
	lw      $t8, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x49C)
	sw      $t8, %lo(_face_object_bss-0x480+0x49C)($at)
	lw      $t9, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x4F4)
	lw      $t0, 0x0028($t9)
	nop
	beqz    $t0, 22$
	sw      $t0, %lo(_face_object_bss-0x480+0x4F4)($at)
	jal     face_object_801814F0
	nop
22$:
	lw      $t1, 0x0018($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x4F4)
	lw      $t2, 0x002C($t1)
	nop
	beqz    $t2, 30$
	sw      $t2, %lo(_face_object_bss-0x480+0x4F4)($at)
	jal     face_object_801814F0
	nop
30$:
	jal     imout
	nop
	b       34$
	nop
34$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80181634
face_object_80181634:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	sw      $a0, 0x0018($sp)
	lw      $a0, 0x0018($sp)
	jal     face_net_80193988
	nop
	la.u    $a1, reset_gadget
	lw      $a2, 0x0018($sp)
	la.l    $a1, reset_gadget
	jal     face_object_8017E520
	li      $a0, 0x2000
	b       13$
	nop
13$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop

.globl face_object_80181678
face_object_80181678:
	addiu   $sp, $sp, -0x0018
	sw      $ra, 0x0014($sp)
	lui     $at, %hi(_face_object_bss-0x480+0x524)
	sw      $0, %lo(_face_object_bss-0x480+0x524)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x538)
	sw      $0, %lo(_face_object_bss-0x480+0x538)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x53C)
	sw      $0, %lo(_face_object_bss-0x480+0x53C)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x540)
	sw      $0, %lo(_face_object_bss-0x480+0x540)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x544)
	sw      $0, %lo(_face_object_bss-0x480+0x544)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x548)
	sw      $0, %lo(_face_object_bss-0x480+0x548)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x52C)
	sw      $0, %lo(_face_object_bss-0x480+0x52C)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x530)
	sw      $0, %lo(_face_object_bss-0x480+0x530)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x568)
	sw      $0, %lo(_face_object_bss-0x480+0x568)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x564)
	sw      $0, %lo(_face_object_bss-0x480+0x564)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x534)
	sw      $0, %lo(_face_object_bss-0x480+0x534)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x560)
	sw      $0, %lo(_face_object_bss-0x480+0x560)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x56C)
	sw      $0, %lo(_face_object_bss-0x480+0x56C)($at)
	lui     $at, %hi(_face_object_bss-0x480+0x570)
	sw      $0, %lo(_face_object_bss-0x480+0x570)($at)
	jal     face_net_80193C50
	nop
	jal     face_joint_80192028
	nop
	b       36$
	nop
36$:
	lw      $ra, 0x0014($sp)
	addiu   $sp, $sp, 0x0018
	jr      $ra
	nop
