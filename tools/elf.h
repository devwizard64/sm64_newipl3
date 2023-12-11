#ifndef __ELF_H__
#define __ELF_H__

#include <stdint.h>
#include <stdio.h>
#include <arpa/inet.h>

#define PT_LOAD                 1

#define SHT_PROGBITS            1
#define SHT_SYMTAB              2
#define SHT_STRTAB              3

#define STB_LOCAL               0
#define STB_GLOBAL              1
#define STB_WEAK                2

#define ST_BIND(info)           ((info)>>4)
#define ST_TYPE(info)           ((info)&0xf)
#define ST_INFO(bind, type)     (((bind)<<4)+((type)&0xf))

typedef struct elfeh
{
	/* 0x00 */	unsigned char ident[16];
	/* 0x10 */	uint16_t type;
	/* 0x12 */	uint16_t machine;
	/* 0x14 */	uint32_t version;
	/* 0x18 */	uint32_t entry;
	/* 0x1C */	uint32_t phoff;
	/* 0x20 */	uint32_t shoff;
	/* 0x24 */	uint32_t flags;
	/* 0x28 */	uint16_t ehsize;
	/* 0x2A */	uint16_t phentsize;
	/* 0x2C */	uint16_t phnum;
	/* 0x2E */	uint16_t shentsize;
	/* 0x30 */	uint16_t shnum;
	/* 0x32 */	uint16_t shstrndx;
}	/* 0x34 */
ELFEH;

typedef struct elfph
{
	/* 0x00 */	uint32_t type;
	/* 0x04 */	uint32_t offset;
	/* 0x08 */	uint32_t vaddr;
	/* 0x0C */	uint32_t paddr;
	/* 0x10 */	uint32_t filesz;
	/* 0x14 */	uint32_t memsz;
	/* 0x18 */	uint32_t flags;
	/* 0x1C */	uint32_t align;
}
ELFPH;

typedef struct elfsh
{
	/* 0x00 */	uint32_t name;
	/* 0x04 */	uint32_t type;
	/* 0x08 */	uint32_t flags;
	/* 0x0C */	uint32_t addr;
	/* 0x10 */	uint32_t offset;
	/* 0x14 */	uint32_t size;
	/* 0x18 */	uint32_t link;
	/* 0x1C */	uint32_t info;
	/* 0x20 */	uint32_t addralign;
	/* 0x24 */	uint32_t entsize;
}	/* 0x28 */
ELFSH;

typedef struct elfst
{
	/* 0x00 */	uint32_t name;
	/* 0x04 */	uint32_t value;
	/* 0x08 */	uint32_t size;
	/* 0x0C */	uint8_t info;
	/* 0x0D */	uint8_t other;
	/* 0x0E */	uint16_t shndx;
}	/* 0x10 */
ELFST;

typedef struct elf
{
	FILE *fp;
	ELFEH eh;
	ELFPH *ph;
	ELFSH *sh;
	void **section;
	ELFST *symtab;
	char *strtab;
	int symnum;
}
ELF;

extern void elf_open(ELF *elf, const char *path, const char *mode);
extern void elf_close(ELF *elf);
extern void elf_loadsection(ELF *elf);
extern void elf_load(ELF *elf, void *data);
extern size_t elf_size(ELF *elf);
extern const char *elf_stname(ELF *elf, ELFST *st);

#endif /* __ELF_H__ */
