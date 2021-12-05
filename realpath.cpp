#include <cstdlib>
#include <iostream>
#include <climits>

int main(int argc, char **argv)
{
    if (argc < 2)
    {
        exit(1);
    }
    char resolve[PATH_MAX];
    realpath(argv[1], resolve);
    std::cout << resolve << std::endl;

    return 0;
}