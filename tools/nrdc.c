#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <getopt.h>

static void usage(const char *path)
{
	fprintf(stderr, "usage: %s [options] romfile\n", path);
	fprintf(stderr,
		"\t-b big endian\n"
		"\t-l little endian\n"
		"\t-t title\n"
		"\t-i icode\n"
		"\t-v version\n"
	);
}

int main(int argc, char *argv[])
{
	int c;
	FILE *fp;
	int opt_endian = -1;
	const char *opt_title = NULL;
	const char *opt_icode = NULL;
	int opt_version = -1;
	while ((c = getopt(argc, argv, "blt:i:v:")) != -1)
	{
		switch (c)
		{
		case 'b':
			opt_endian = 0;
			break;
		case 'l':
			opt_endian = 1;
			break;
		case 't':
			opt_title = optarg;
			break;
		case 'i':
			if (strlen(optarg) < 4)
			{
				fprintf(stderr, "error: invalid initial code\n");
				return 1;
			}
			opt_icode = optarg;
			break;
		case 'v':
			c = optarg[0];
			if      (c >= '0' && c <= '9') opt_version =  0 + c-'0';
			else if (c >= 'A' && c <= 'Z') opt_version = 10 + c-'A';
			else if (c >= 'a' && c <= 'z') opt_version = 10 + c-'a';
			else
			{
				fprintf(stderr, "error: invalid version number\n");
				return 1;
			}
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
	if (opt_endian < 0)
	{
		fprintf(stderr, "error: unknown endianness\n");
		return 1;
	}
	if (opt_endian != 0)
	{
		fprintf(stderr, "error: invalid endianness\n");
		return 1;
	}
	if (!(fp = fopen(argv[optind], "r+b")))
	{
		fprintf(stderr, "error: could not open '%s'\n", argv[optind]);
		return 1;
	}
	if (opt_title)
	{
		size_t i;
		size_t n = strlen(opt_title);
		if (n > 20) n = 20;
		fseek(fp, 0x20, SEEK_SET);
		fwrite(opt_title, 1, n, fp);
		for (i = n; i < 20; i++) fputc(' ', fp);
	}
	if (opt_icode)
	{
		fseek(fp, 0x3B, SEEK_SET);
		fwrite(opt_icode, 1, 4, fp);
	}
	if (opt_version >= 0)
	{
		fseek(fp, 0x3F, SEEK_SET);
		fputc(opt_version, fp);
	}
	fclose(fp);
	return 0;
}
