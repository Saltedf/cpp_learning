#include <iostream>
#include <climits>
#include <cstdlib>
#include <cstdio>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char **argv)
{

    if (argc < 2)
    {
        exit(1);
    }

    char buf[PATH_MAX] = {0};
    int ret = readlink(argv[1], buf, PATH_MAX);
    if (ret != -1)
    {
        std::cout << buf << std::endl;
    }
}