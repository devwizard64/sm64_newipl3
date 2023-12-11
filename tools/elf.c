#include "elf.h"
#include <stdlib.h>
#include <string.h>

void elf_open(ELF *elf, const char *path, const char *mode)
{
	uint32_t phoff;
	uint32_t shoff;
	uint16_t phnum;
	uint16_t shnum;
	memset(elf, 0, sizeof(ELF));
	if (!(elf->fp = fopen(path, mode)))
	{
		fprintf(stderr, "error: could not open '%s'\n", path);
		exit(1);
	}
	fread(&elf->eh, sizeof(ELFEH), 1, elf->fp);
	phoff = ntohl(elf->eh.phoff);
	shoff = ntohl(elf->eh.shoff);
	phnum = ntohs(elf->eh.phnum);
	shnum = ntohs(elf->eh.shnum);
	fseek(elf->fp, phoff, SEEK_SET);
	fread(elf->ph = malloc(sizeof(ELFPH)*phnum), sizeof(ELFPH), phnum, elf->fp);
	fseek(elf->fp, shoff, SEEK_SET);
	fread(elf->sh = malloc(sizeof(ELFSH)*shnum), sizeof(ELFSH), shnum, elf->fp);
}

void elf_close(ELF *elf)
{
	int i;
	if (elf->section)
	{
		uint16_t shnum = ntohs(elf->eh.shnum);
		for (i = 0; i < shnum; i++) free(elf->section[i]);
		free(elf->section);
	}
	free(elf->sh);
	free(elf->ph);
	fclose(elf->fp);
}

void elf_loadsection(ELF *elf)
{
	int i;
	uint16_t shnum = ntohs(elf->eh.shnum);
	elf->section = calloc(shnum, sizeof(void *));
	for (i = 0; i < shnum; i++)
	{
		uint32_t type = ntohl(elf->sh[i].type);
		uint32_t size = ntohl(elf->sh[i].size);
		if (type == SHT_SYMTAB || type == SHT_STRTAB)
		{
			uint32_t offset = ntohl(elf->sh[i].offset);
			fseek(elf->fp, offset, SEEK_SET);
			fread(elf->section[i] = malloc(size), 1, size, elf->fp);
		}
		if (type == SHT_SYMTAB && !elf->symtab)
		{
			elf->symtab = elf->section[i];
			elf->symnum = size / sizeof(ELFST);
		}
		if (type == SHT_STRTAB && !elf->strtab)
		{
			elf->strtab = elf->section[i];
		}
	}
}

void elf_load(ELF *elf, void *data)
{
	int i;
	size_t total = 0;
	uint16_t phnum = ntohs(elf->eh.phnum);
	for (i = 0; i < phnum; i++)
	{
		uint32_t type = ntohl(elf->ph[i].type);
		if (type == PT_LOAD)
		{
			uint32_t offset = ntohl(elf->ph[i].offset);
			uint32_t filesz = ntohl(elf->ph[i].filesz);
			fseek(elf->fp, offset, SEEK_SET);
			fread((char *)data + total, 1, filesz, elf->fp);
			total += filesz;
		}
	}
}

size_t elf_size(ELF *elf)
{
	int i;
	size_t total = 0;
	uint16_t phnum = ntohs(elf->eh.phnum);
	for (i = 0; i < phnum; i++)
	{
		uint32_t type = ntohl(elf->ph[i].type);
		if (type == PT_LOAD)
		{
			uint32_t filesz = ntohl(elf->ph[i].filesz);
			total += filesz;
		}
	}
	return total;
}

const char *elf_stname(ELF *elf, ELFST *st)
{
	uint32_t name = ntohl(st->name);
	return elf->strtab + name;
}
