OUTPUT_ARCH(mips)
SECTIONS
{
	. = 0xA4000040;
	.text : { *(.text) }
	/DISCARD/ : { *(*) }
}
