#include <dirent.h>
#include <libgen.h>
#include <cstdio>
#include <cstdlib>
#include <unistd.h>
#include <cstring>
#include <errno.h>

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        fprintf(stderr, "usage:%s <dir>\n", argv[0]);
        exit(1);
    }
    char *s1 = strdup(argv[1]);
    DIR *dir = opendir(argv[1]);
    if (dir == NULL)
    {
        perror("opendir()");
        exit(1);
    }
    struct dirent *pdirent;
    errno = 0;
    while ((pdirent = readdir(dir)) != NULL)
    {
        printf("%s/%s\n", dirname(s1), pdirent->d_name);
        errno = 0;
    }

    if (errno != 0)
    {
        perror("readdir()");
        exit(1);
    }

    closedir(dir);

    exit(0);
}