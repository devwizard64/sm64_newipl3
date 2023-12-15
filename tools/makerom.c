#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>

#include "elf.h"
#include "elf.c"

#define HI(x)   (((x) >> 16) + ((x) >> 15 & 1))
#define LO(x)   ((x) & 0xFFFF)

static void makeelf(unsigned char *data, ELF *elf)
{
	int i;
	ELFEH *eh = (ELFEH *)data;
	ELFPH *ph = (ELFPH *)(data+sizeof(ELFEH));
	uint32_t *p = (uint32_t *)(data+0x1000);
	uint32_t entry = 0;
	uint32_t stack = 0;
	uint32_t bssStart = 0;
	uint32_t bssEnd = 0;
	uint32_t start;
	for (i = 0; i < elf->symnum; i++)
	{
		const char *name = elf_stname(elf, &elf->symtab[i]);
		uint32_t value = ntohl(elf->symtab[i].value);
		if (!entry    && !strcmp(name, "__crt0Entry"))      entry    = value;
		if (!stack    && !strcmp(name, "__crt0Stack"))      stack    = value;
		if (!bssStart && !strcmp(name, "__crt0BssStart"))   bssStart = value;
		if (!bssEnd   && !strcmp(name, "__crt0BssEnd"))     bssEnd   = value;
		if (entry && stack && bssStart && bssEnd) break;
	}
	memcpy(eh, &elf->eh, sizeof(ELFEH));
	start = ntohl(eh->entry);
	eh->phoff = htonl(sizeof(ELFEH));
	eh->shoff = 0;
	eh->phnum = 1;
	eh->shnum = 0;
	eh->shstrndx = 0;
	ph[0].type = htonl(PT_LOAD);
	ph[0].offset = htonl(0x1000);
	ph[0].vaddr = htonl(start);
	ph[0].paddr = htonl(0x1000);
	ph[0].filesz = htonl(bssStart-start);
	ph[0].memsz = htonl(bssEnd-start);
	ph[0].flags = htonl(7);
	ph[0].align = htonl(16);
	*p++ = htonl(0x3C08A400);
	*p++ = htonl(0x3C098000);
	*p++ = htonl(0x910A0009);
	*p++ = htonl(0xAD2A0300);
	*p++ = htonl(0x910A000A);
	*p++ = htonl(0xAD2A030C);
	*p++ = htonl(0x950A000C);
	*p++ = htonl(0x000A5200);
	*p++ = htonl(0x3C01B000);
	*p++ = htonl(0x01415025);
	*p++ = htonl(0xAD2A0308);
	if      (entry) *p++ = htonl(0x3C0A0000 | HI(entry));
	if      (stack) *p++ = htonl(0x3C1D0000 | HI(stack));
	if      (entry) *p++ = htonl(0x254A0000 | LO(entry));
	if      (entry) *p++ = htonl(0x01400008);
	if      (stack) *p++ = htonl(0x27BD0000 | LO(stack));
	else if (entry) *p++ = htonl(0x00000000);
}

static void usage(const char *path)
{
	fprintf(stderr, "usage: %s [options] elffile\n", path);
	fprintf(stderr,
		"\t-r romfile\n"
		"\t-i IPL3\n"
		"\t-s romsize (Mbits)\n"
		"\t-a align\n"
		"\t-f filldata (0x00 - 0xff)\n"
	);
}

int main(int argc, char *argv[])
{
	int c;
	FILE *fp;
	unsigned char *data;
	size_t size;
	size_t end;
	size_t align;
	size_t ipl3_size;
	ELF elf;
	const char *opt_rom = "rom";
	const char *opt_ipl3 = "ipl3_prod.z64";
	long opt_size = 0;
	long opt_align = 0;
	long opt_fill = 0;
	while ((c = getopt(argc, argv, "r:i:s:a:f:")) != -1)
	{
		switch (c)
		{
		case 'r':
			opt_rom = optarg;
			break;
		case 'i':
			opt_ipl3 = optarg;
			break;
		case 's':
			opt_size = strtol(optarg, NULL, 0);
			break;
		case 'a':
			opt_align = strtol(optarg, NULL, 0);
			break;
		case 'f':
			opt_fill = strtol(optarg, NULL, 0);
			break;
		case '?':
			usage(argv[0]);
			return 1;
			break;
		}
	}
	if (argc-optind != 1)
	{
		usage(argv[0]);
		return 1;
	}
	elf_open(&elf, argv[optind], "rb");
	elf_loadsection(&elf);
	if (!(fp = fopen(opt_ipl3, "rb")))
	{
		fprintf(stderr, "error: could not read '%s'\n", opt_ipl3);
		return 1;
	}
	fseek(fp, 0, SEEK_END);
	ipl3_size = (ftell(fp)+0xFF) & ~0xFF;
	fseek(fp, 0, SEEK_SET);
	end = ipl3_size+0x1000 + elf_size(&elf);
	size = 1024*1024/8 * opt_size;
	if (size < end) size = end;
	align = (1 << opt_align) - 1;
	size = (size+align) & ~align;
	memset(data = malloc(size), 0, end);
	fread(data, 1, ipl3_size, fp);
	fclose(fp);
	elf_load(&elf, data+ipl3_size+0x1000);
	makeelf(data+ipl3_size, &elf);
	elf_close(&elf);
	memset(data+end, opt_fill, size-end);
	if (!(fp = fopen(opt_rom, "wb")))
	{
		fprintf(stderr, "error: could not write '%s'\n", opt_rom);
		return 1;
	}
	fwrite(data, 1, size, fp);
	fclose(fp);
	free(data);
	return 0;
}
