
#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    char *buf1 = malloc(BUFSIZ);
    char *buf2 = malloc(BUFSIZ);
    char *buf3 = malloc(BUFSIZ);
    char *buf4 = malloc(BUFSIZ);

    char *bufs[] = {buf1, buf2, buf3, buf4};
    int i = 0;

    while (!feof(stdin))
    {
        for (i = 0; i < 4; i++)
            fgets(bufs[i], BUFSIZ, stdin);

        fputs(buf1, stdout);
        fputs(buf2, stdout);
        fputs(buf4, stdout);
        fputs(buf3, stdout);
        putchar('\n');
    }

    return 0;
}
