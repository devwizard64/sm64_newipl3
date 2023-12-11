#include <stdio.h>

#include "elf.h"
#include "elf.c"

int main(int argc, char *argv[])
{
	int i;
	ELF elf;
	if (argc != 2)
	{
		fprintf(stderr, "usage: %s <elf>\n", argv[0]);
		return 1;
	}
	elf_open(&elf, argv[1], "rb");
	elf_loadsection(&elf);
	for (i = 0; i < elf.symnum; i++)
	{
		if (ST_BIND(elf.symtab[i].info) != STB_LOCAL)
		{
			const char *name = elf_stname(&elf, &elf.symtab[i]);
			uint32_t value = ntohl(elf.symtab[i].value);
			printf("#define %s 0x%08X\n", name, value);
		}
	}
	elf_close(&elf);
	return 0;
}
