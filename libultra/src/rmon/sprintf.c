#include <string.h>
#include "xstdio.h"

static void *proutSprintf(void *, const char *, size_t);

int sprintf(char *s, const char *fmt, ...)
{
	int ans;
	va_list ap;
	va_start(ap, fmt);
	ans = _Printf(proutSprintf, s, fmt, ap);
	if (ans >= 0) s[ans] = '\0';
	va_end(ap);
	return ans;
}

static void *proutSprintf(void *s, const char *buf, size_t n)
{
	return (char *)memcpy(s, buf, n) + n;
}
