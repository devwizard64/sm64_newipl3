#include <stdio.h>

int main(int argc, char *argv[])
{
	FILE *fp;
	if (argc != 2)
	{
		fprintf(stderr, "usage: %s <file>\n", argv[0]);
		return 1;
	}
	if (!(fp = fopen(argv[1], "r+b")))
	{
		fprintf(stderr, "error: could not open '%s'\n", argv[1]);
		return 1;
	}
	fseek(fp, 0x24, SEEK_SET);
	fputc(0x10, fp);
	fclose(fp);
	return 0;
}
