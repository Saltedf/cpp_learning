#include <cstdio>

#include <iostream>

int main(int argc, char **argv)
{
    if (argc < 3)
    {
        fprintf(stderr, "usage:%s <oldname> <newname>\n", argv[0]);
        exit(1);
    }

    int ret = rename(argv[1], argv[2]);

    if (ret != 0)
    {
        perror("rename");
        exit(1);
    }

    return 0;
}
