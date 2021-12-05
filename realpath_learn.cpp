
#include <iostream>
#include <sys/param.h>
#include <sys/stat.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <limits.h>
#include <libgen.h>

// 路径拆分：目录 XXX/YYY/   +   文件名
// if dirname = / return /
// if dirname = . return getcwd

// 对目录部分进行解析()

// if basename= .  return 解析后结果
// if basename= .. return 解析后结果去掉最后一个 /之后的
// else
// 解析后结果 + 文件名 = 新文件路径

// 若该路径表示符号链接
// return 符号链接引用的路径
// 若不是（即 普通路径）
// return 新路径

#include <string>
struct stat statbuf;
std::string resolvepath(const std::string &path)
{

    auto dir = dirname(strdup(path.c_str()));
    auto base = basename(strdup(path.c_str()));
    if (0 == strcmp(dir, ".") && strcmp("..", base) != 0)
    {
        char tmp[PATH_MAX];
        getcwd(tmp, PATH_MAX);
        return std::string(tmp);
    }
    if ((0 == strcmp(dir, "/")) && (strcmp("/", base) == 0 || strcmp(".", base) == 0 || strcmp("..", base) == 0))
    {
        return "/";
    }
    std::string resdir = resolvepath(std::string(dir));
    if (!strcmp(base, "."))
    {
        return resdir;
    }
    if (!strcmp(base, ".."))
    {
        auto pos = resdir.find_last_of('/');
        if (pos == std::string::npos)
        {
            return "/";
        }
        else
        {
            return resdir.substr(0, pos);
        }
    }

    std::string newpath = resdir == "/" ? resdir + base : resdir + "/" + base;

    if (lstat(newpath.c_str(), &statbuf) != -1)
    {

        if (S_ISLNK(statbuf.st_mode))
        {

            char tmp[PATH_MAX];
            int num = readlink(newpath.c_str(), tmp, PATH_MAX);
            tmp[num] = 0;
            if (tmp[0] == '/')
            {
                return resolvepath(std::string(tmp));
            }
            auto end = newpath.find_last_of('/');
            std::string real = newpath.substr(0, end + 1) + std::string(tmp);
            //std::cout << real << std::endl;
            return resolvepath(real);
        }
    }

    return newpath;
}
int main(int argc, char **argv)
{
    if (argc < 2)
    {
        fprintf(stderr, "%s <pathname>\n", argv[0]);
        exit(1);
    }

    auto p = std::string(argv[1]);
    std::string s = resolvepath(p);
    std::cout << s << std::endl;

    return 0;
}