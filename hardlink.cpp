//第18章：硬链接
#include <string>
#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>

#include <iostream>

void link(int argc, char **argv)
{
    if (argc < 3)
    {
        fprintf(stderr, "usage: %s <sourcefile> <destfile>\n", argv[0]);
        exit(1);
    }

    int ret = link(argv[1], argv[2]);

    if (ret != 0)
    {
        perror("link() ");
        exit(1);
    }
}

void unlink(int argc, char **argv)
{

    if (argc < 2)
    {
        fprintf(stderr, "usage: %s <filename>\n", argv[0]);
        exit(1);
    }

    int ret = unlink(argv[1]);
    if (ret != 0)
    {
        perror("unlink() ");
        exit(1);
    }
}

int creattmpfile(const std::string &filename)
{
    int fd = open(filename.c_str(), O_RDWR | O_TRUNC | O_CREAT, 0666);
    if (fd < 0)
    {
        perror("open()");
        exit(1);
    }
    if (unlink(filename.c_str()) < 0)
    {
        perror("unlink()");
        exit(1);
    }
    write(fd, "hello", 6);
    fdatasync(fd);

    return fd;
}

int main(int argc, char **argv)
{

    //link(argc, argv);

    //unlink(argc, argv);

    auto filename = std::string(argv[1]);
    int tmpfd = creattmpfile(filename);
    printf("%d\n", tmpfd);
    sleep(30);
    return 0;
}