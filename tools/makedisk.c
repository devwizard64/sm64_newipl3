#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>

#include "elf.h"
#include "elf.c"

#define HI(x)   (((x) >> 16) + ((x) >> 15 & 1))
#define LO(x)   ((x) & 0xFFFF)

typedef struct disk_header
{
	uint32_t country;
	uint8_t format_type;
	uint8_t type;
	uint16_t ipl_size;
	uint8_t deftab[20];
	uint32_t entry;
	uint8_t defect[192];
	uint16_t rom_end;
	uint16_t ram_start;
	uint16_t ram_end;
	uint16_t pad;
}
DISK_HEADER;

static void makeheader(DISK_HEADER *header, ELF *elf)
{
	static const uint8_t defect[] =
	{
		0x04, 0x0C, 0x14, 0x1C, 0x24, 0x2C, 0x34, 0x3C, 0x44, 0x4C, 0x54, 0x5C,
		0x10, 0x16, 0x1C, 0x22, 0x28, 0x2E, 0x34, 0x3A, 0x40, 0x46, 0x4C, 0x52,
		0x01, 0x0C, 0x14, 0x1C, 0x24, 0x2C, 0x34, 0x3C, 0x44, 0x4C, 0x54, 0x5C,
		0x04, 0x0C, 0x14, 0x1C, 0x24, 0x2C, 0x34, 0x3C, 0x44, 0x4C, 0x56, 0x5C,
		0x56, 0x5C, 0x62, 0x68, 0x6E, 0x74, 0x7A, 0x80, 0x86, 0x8C, 0x92, 0x98,
	};
	static const uint8_t defmap[16] = {12, 0, 24, 0, 0, 36, 0, 0, 48};
	int i;
	memset(header, ~0, sizeof(DISK_HEADER));
	for (i = 0; i < 16; i++)
	{
		header->deftab[i] = 12*(i+1);
		memcpy(&header->defect[12*i], &defect[defmap[i]], 12);
	}
	header->country = htonl(0xE848D316);
	header->format_type = 0x10;
	header->type = 0x10;
	header->ipl_size = htons(54);
	header->entry = elf->eh.entry;
	header->rom_end = htons(108);
}

static void makecrt0(unsigned char *data, ELF *elf)
{
	int i;
	uint32_t *p = (uint32_t *)data;
	uint32_t entry = 0;
	uint32_t stack = 0;
	uint32_t bssStart = 0;
	uint32_t bssEnd = 0;
	uint32_t bssSize;
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
	if ((bssSize = bssEnd-bssStart) > 0)
	{
		uint16_t bssSizeHi = bssSize >> 16;
		uint16_t bssSizeLo = bssSize;
		if      (bssStart)  *p++ = htonl(0x3C080000 | HI(bssStart));
		if      (bssSizeHi) *p++ = htonl(0x3C090000 | bssSizeHi);
		if      (bssStart)  *p++ = htonl(0x25080000 | LO(bssStart));
		if      (bssSizeHi) *p++ = htonl(0x35290000 | bssSizeLo);
		else if (bssSize > 0x7FFF)  *p++ = htonl(0x34090000 | bssSize);
		else                        *p++ = htonl(0x24090000 | bssSize);
		*p++ = htonl(0x2129FFF8);
		*p++ = htonl(0xAD000000);
		*p++ = htonl(0xAD000004);
		*p++ = htonl(0x1520FFFC);
		*p++ = htonl(0x21080008);
	}
	if      (entry) *p++ = htonl(0x3C0A0000 | HI(entry));
	if      (stack) *p++ = htonl(0x3C1D0000 | HI(stack));
	if      (entry) *p++ = htonl(0x254A0000 | LO(entry));
	if      (entry) *p++ = htonl(0x01400008);
	if      (stack) *p++ = htonl(0x27BD0000 | LO(stack));
	else if (entry) *p++ = htonl(0x00000000);
}

static void writebuffer(FILE *fp, const void *buf, size_t size, size_t end)
{
	size_t n;
	while ((n = end-ftell(fp)) > 0)
	{
		if (n > size) n = size;
		fwrite(buf, 1, n, fp);
	}
}

static void writeheader(FILE *fp, DISK_HEADER *header)
{
	int i;
	for (i = 0; i < 85*2; i++) fwrite(header, 1, sizeof(DISK_HEADER), fp);
}

static void usage(const char *path)
{
	fprintf(stderr, "usage: %s [options] elffile\n", path);
	fprintf(stderr,
		"\t-R diskfile\n"
	);
}

int main(int argc, char *argv[])
{
	int i;
	int c;
	FILE *fp;
	unsigned char *data;
	size_t size;
	ELF elf;
	DISK_HEADER header;
	unsigned char zero[4096];
	unsigned char *wave = NULL;
	const char *opt_disk = "disk";
	while ((c = getopt(argc, argv, "R:")) != -1)
	{
		switch (c)
		{
		case 'R':
			opt_disk = optarg;
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
	elf_load(&elf, data = malloc(size = elf_size(&elf)));
	elf_loadsection(&elf);
	makecrt0(data, &elf);
	makeheader(&header, &elf);
	for (i = 0; i < elf.symnum; i++)
	{
		const char *name = elf_stname(&elf, &elf.symtab[i]);
		if (!strcmp(name, "_AudiotblSegmentRomStart")
		{
			uint32_t value = ntohl(elf.symtab[i].value);
			unsigned char *audiotbl = data + value - 0x1000;
			wave = audiotbl + ntohl(*(uint32_t *)(audiotbl+4));
			break;
		}
	}
	elf_close(&elf);
	memset(zero, 0, sizeof(zero));
	if (!(fp = fopen(opt_disk, "wb")))
	{
		fprintf(stderr, "error: could not write '%s'\n", opt_disk);
		return 1;
	}
	writeheader(fp, &header);
	writebuffer(fp, zero, sizeof(zero), 232*85*8);
	writeheader(fp, &header);
	writebuffer(fp, zero, sizeof(zero), 232*85*24);
	fwrite(data, 1, size < 232*85*54 ? size : 232*85*54, fp);
	if (wave)
	{
		writebuffer(fp, zero, sizeof(zero), 232*85*292);
		fwrite(wave, 1, 216*85*66, fp);
	}
	writebuffer(fp, zero, sizeof(zero), 232*85*292 + 216*85*292);
	if (size > 0x40000-0x1000)
	{
		fwrite(data+0x40000-0x1000, 1, size-(0x40000-0x1000), fp);
	}
	writebuffer(fp, zero, sizeof(zero), 0x3DEC800);
	fclose(fp);
	free(data);
	return 0;
}
