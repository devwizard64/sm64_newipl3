#ifndef __SM64_MEMORY_H__
#define __SM64_MEMORY_H__

#define MEM_ALLOC_L 0
#define MEM_ALLOC_R 1

#define malloc(size)            heap_alloc(mem_heap, size)
#define free(ptr)               heap_free(mem_heap, ptr)

typedef struct mem_block
{
	struct mem_block *prev;
	struct mem_block *next;
	long long pad;
}
MEM_BLOCK;

typedef struct mem_frame
{
	size_t size;
	MEM_BLOCK *blockl;
	MEM_BLOCK *blockr;
	struct mem_frame *frame;
}
MEM_FRAME;

typedef struct arena
{
	long size;
	long used;
	char *start;
	char *free;
}
ARENA;

typedef struct heap_block
{
	struct heap_block *next;
	size_t size;
}
HEAP_BLOCK;

typedef struct heap
{
	size_t size;
	HEAP_BLOCK *block;
	HEAP_BLOCK *free;
	long pad;
}
HEAP;

typedef struct bankinfo
{
	unsigned int len;
	const char *src;
	struct
	{
		unsigned long start;
		unsigned long size;
	}
	table[1];
}
BANKINFO;

typedef struct bank
{
	BANKINFO *info;
	const char *src;
	char *buf;
}
BANK;

extern u16 t_image[13][2048];

extern HEAP *mem_heap;

extern unsigned long segment_set(int number, void *addr);
extern void *segment_get(int number);
extern void *segment_to_virtual(const void *addr);
extern void *virtual_to_segment(int number, const void *addr);
extern void segment_write(void);
extern void mem_init(void *start, void *end);
extern void *mem_alloc(size_t size, int mode);
extern size_t mem_free(void *ptr);
extern void *mem_realloc(void *ptr, size_t size);
extern size_t mem_available(void);
extern size_t mem_push(void);
extern size_t mem_pull(void);
extern void mem_dma(char *dst, const char *start, const char *end);
extern void *mem_load(const char *start, const char *end, int mode);
extern void *mem_load_data(
	int seg,
	const char *start,
	const char *end,
	int mode
);
extern void *mem_load_code(char *addr, const char *start, const char *end);
extern void *mem_load_pres(int seg, const char *start, const char *end);
extern void *mem_load_text(int seg, const char *start, const char *end);
extern void mem_load_ulib(void);
extern ARENA *arena_create(size_t size, int mode);
extern void *arena_alloc(ARENA *arena, long size);
extern void *arena_resize(ARENA *arena, size_t size);
extern HEAP *heap_create(size_t size, int mode);
extern void *heap_alloc(HEAP *heap, size_t size);
extern void heap_free(HEAP *heap, void *ptr);
extern void *gfx_alloc(size_t size);
extern void bank_init(BANK *bank, const char *src, void *buf);
extern int bank_load(BANK *bank, unsigned int index);
extern void slidec(const char *src, char *dst);

#endif /* __SM64_MEMORY_H__ */
