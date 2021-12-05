#include "filewatcher.hpp"
//#define _XOPEN_SOURCE 600
#include <ftw.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <signal.h>

FileWatcher *watcher;

int dirtree(const char *pathname, const struct stat *pstat, int type, struct FTW *ftw)
{
    if (S_ISDIR(pstat->st_mode))
    {
        watcher->addWatch(pathname);
        //   printf(">>%s \n", pathname);
    }
    // printf("%s  %s \n", pathname, &pathname[ftw->base]);
    return 0;
}

void addAllWatches(int sig)
{
    int fd = open("./watcher.conf", O_RDONLY);
    if (fd < 0)
    {
        perror("open()");
        exit(1);
    }

    size_t size = 128;
    char *line = (char *)malloc(size);
    ssize_t readnum;
    FILE *fs = fdopen(fd, "r");
    while ((readnum = getline(&line, &size, fs)) != -1)
    {
        line[readnum - 1] = '\0';
        //printf("    %s\n", line);
        nftw(line, dirtree, 10, FTW_PHYS);
    }
    //   printf("    end\n");
    free(line);
    fclose(fs);
}

int main(int argc, char **argv)
{
    int opt;
    while ((opt = getopt(argc, argv, "r")) != -1)
    {
        switch (opt)
        {
        case 'r':
        {
            int ret = open("./watcher.pid", O_RDONLY);
            if (ret < 0)
            {
                perror("open()");
                exit(1);
            }
            char spid[64] = {0};
            read(ret, spid, 64);
            int pid = atoi(spid);
            kill(pid, SIGUSR1);
            exit(1);
        }
        break;

        default:
            break;
        }
    }
    int fd = open("./watcher.pid", O_RDWR | O_TRUNC | O_CREAT, 0666);
    pid_t pid = getpid();
    char pidstr[32] = {0};
    int num = sprintf(pidstr, "%d", pid);
    write(fd, pidstr, num);
    fdatasync(fd);
    close(fd);

    watcher = new FileWatcher(0L);
    addAllWatches(0);

    signal(SIGUSR1, addAllWatches);
    // for (int i = 1; i < argc; i++)
    // {
    //     watcher->addWatch(argv[i]);
    // }
    // auto wd = watcher->addWatch("./");
    // watcher->update();

    // watcher->tryToRemoveWatch("./");
    // auto wd2 = watcher->addWatch("./build");

    while (1)
    {
        watcher->update();
    }

    return 0;
}
