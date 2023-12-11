#include <stdlib.h>
#include <stdio.h>

#include "elf.h"

int main(int argc, char *argv[])
{
	int i;
	int n;
	FILE *fp;
	ELFEH eh;
	if (argc != 2)
	{
		fprintf(stderr, "usage: %s <elf>\n", argv[0]);
		return 1;
	}
	if (!(fp = fopen(argv[1], "r+b")))
	{
		fprintf(stderr, "error: could not open '%s'\n", argv[1]);
		return 1;
	}
	fread(&eh, 1, sizeof(ELFEH), fp);
	fseek(fp, ntohl(eh.shoff), SEEK_SET);
	for (i = 0; i < ntohs(eh.shnum); i++)
	{
		ELFSH sh;
		fread(&sh, 1, sizeof(ELFSH), fp);
		if (ntohl(sh.type) == SHT_SYMTAB)
		{
			int symidx = ntohl(sh.info);
			int symnum = ntohl(sh.size) / sizeof(ELFST);
			fseek(fp, ntohl(sh.offset)+sizeof(ELFST)*symidx, SEEK_SET);
			for (n = symidx; n < symnum; n++)
			{
				ELFST st;
				fread(&st, 1, sizeof(ELFST), fp);
				if (ST_BIND(st.info) == STB_LOCAL)
				{
					st.info = ST_INFO(STB_GLOBAL, ST_TYPE(st.info));
					fseek(fp, -sizeof(ELFST), SEEK_CUR);
					fwrite(&st, 1, sizeof(ELFST), fp);
				}
			}
			break;
		}
	}
	fclose(fp);
	return 0;
}
