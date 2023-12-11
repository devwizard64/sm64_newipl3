OUTPUT_ARCH(mips)
SECTIONS
{
	.data : { *(.data) }
	/DISCARD/ : { *(*) }
}
