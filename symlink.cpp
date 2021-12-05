#include <unistd.h>
#include <iostream>

int main(int argc, char **argv)
{
    if (argc < 3)
    {
        fprintf(stderr, "usage: %s sourcefile linkfile\n", argv[0]);
        exit(1);
    }

    int ret = symlink(argv[1], argv[2]);
    if (ret == -1)
    {
        perror("symlink()");
        exit(1);
    }
    char buf[128] = {0};

    ssize_t readnum = readlink(argv[2], buf, 128); //返回读取到的字节数，不会添加\0
    printf("%s had been linked\n", buf);
}