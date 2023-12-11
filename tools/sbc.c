#include <stdlib.h>
#include <stdio.h>
#include <string.h>

typedef struct seq
{
	char *path;
	unsigned int offset;
	unsigned int size;
}
SEQ;

int main(int argc, char *argv[])
{
	int i;
	int n;
	FILE *fp;
	FILE *in;
	char *buf;
	SEQ *seq;
	unsigned int offset;
	unsigned int size;
	int code;
	int count;
	int index;
	if (argc < 4)
	{
		fprintf(stderr, "usage: %s <code> <output> <input> [...]\n", argv[0]);
		return 1;
	}
	code = strtol(argv[1], NULL, 0);
	count = argc - 3;
	buf = calloc(65536, 1);
	seq = malloc(sizeof(SEQ)*count);
	printf(".data\n.incbin \"%s\"\n", argv[2]);
	if (!(fp = fopen(argv[2], "wb")))
	{
		fprintf(stderr, "error: could not write '%s'\n", argv[2]);
		return 1;
	}
	fputc(code >> 8, fp);
	fputc(code >> 0, fp);
	fputc(count >> 8, fp);
	fputc(count >> 0, fp);
	index = 0;
	offset = ((4+8*count)+15) & ~15;
	for (i = 0; i < count; i++)
	{
		char *path = argv[3+i];
		for (n = 0; n < index; n++)
		{
			if (!strcmp(seq[n].path, path)) break;
		}
		if (n == index)
		{
			if (!(in = fopen(path, "rb")))
			{
				fprintf(stderr, "error: could not read '%s'\n", path);
				return 1;
			}
			fseek(in, 0, SEEK_END);
			size = (ftell(in)+15) & ~15;
			fclose(in);
			seq[n].path = path;
			seq[n].offset = offset;
			seq[n].size = size;
			offset += size;
			index++;
		}
		fputc(seq[n].offset >> 24, fp);
		fputc(seq[n].offset >> 16, fp);
		fputc(seq[n].offset >>  8, fp);
		fputc(seq[n].offset >>  0, fp);
		fputc(seq[n].size   >> 24, fp);
		fputc(seq[n].size   >> 16, fp);
		fputc(seq[n].size   >>  8, fp);
		fputc(seq[n].size   >>  0, fp);
	}
	fwrite(buf, 1, -(4+8*count) & 15, fp);
	for (i = 0; i < index; i++)
	{
		if (!(in = fopen(seq[i].path, "rb")))
		{
			fprintf(stderr, "error: could not read '%s'\n", seq[i].path);
			return 1;
		}
		size = seq[i].size;
		while (size > 0)
		{
			n = size;
			if (n > 65536) n = 65536;
			fread(buf, 1, n, in);
			fwrite(buf, 1, n, fp);
			size -= n;
		}
		fclose(in);
	}
	fclose(fp);
	free(seq);
	return 0;
}
