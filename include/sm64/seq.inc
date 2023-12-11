.macro .dn, x
	.if x < 0x80
		.db x
	.elif x < 0x8000
		.dh x | 0x8000
	.else
		.error ".dn out of range"
	.endif
.endmacro
