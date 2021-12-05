
#include "filewatcher.hpp"
#include <cstring>
#include <sys/inotify.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <errno.h>

void FileWatcher::initEventTypes()
{

    eventtypes[IN_ACCESS] = "IN_ACCESS";
    eventtypes[IN_ATTRIB] = "IN_ATTRIB";
    eventtypes[IN_CLOSE_NOWRITE] = "IN_CLOSE_NOWRITE";
    eventtypes[IN_CLOSE_WRITE] = "IN_CLOSE_WRITE";
    eventtypes[IN_CREATE] = "IN_CREATE";
    eventtypes[IN_DELETE] = "IN_DELETE";
    eventtypes[IN_DELETE_SELF] = "IN_DELETE_SELF";
    eventtypes[IN_IGNORED] = "IN_IGNORED";
    eventtypes[IN_ISDIR] = "IN_ISDIR";
    eventtypes[IN_MODIFY] = "IN_MODIFY";
    eventtypes[IN_MOVE_SELF] = "IN_MOVE_SELF";
    eventtypes[IN_MOVED_FROM] = "IN_MOVED_FROM";
    eventtypes[IN_MOVED_TO] = "IN_MOVED_TO";
    eventtypes[IN_OPEN] = "IN_OPEN";
    eventtypes[IN_Q_OVERFLOW] = "IN_Q_OVERFLOW";
    eventtypes[IN_UNMOUNT] = "IN_UNMOUNT";
}
FileWatcher::FileWatcher(long s, long ms)
{
    _outtime.tv_sec = s;
    _outtime.tv_usec = ms;
    initEventTypes();

    _notifyfd = inotify_init();
    if (_notifyfd < 0)
    {
        std::cout << strerror(errno) << std::endl;
    }
    FD_ZERO(&_fdset);
}

FileWatcher::FileWatcher()
{
    FileWatcher(0L, 0L);
}

FileWatcher::~FileWatcher()
{

    auto begin = _watchedmap.begin();
    auto end = _watchedmap.end();

    for (; begin != end; begin++)
    {
        delete begin->second;
    }
}

FileWatcher::wd_t FileWatcher::addWatch(const std::string &dirname)
{
    wd_t wd = inotify_add_watch(_notifyfd, dirname.c_str(),
                                IN_ATTRIB | IN_CLOSE_WRITE | IN_CREATE | IN_MODIFY | IN_DELETE | IN_MOVED_FROM | IN_MOVED_TO);

    auto w = new watchentity();
    w->dirname = dirname;
    w->wd = wd;

    _watchedmap.insert(std::make_pair(wd, w));

    return wd;
}

int FileWatcher::tryToRemoveWatch(const std::string &dirname)
{

    for (auto &e : _watchedmap)
    {
        if (e.second->dirname == dirname)
        {
            return removeWatch(e.first);
        }
    }

    return -1;
}

int FileWatcher::removeWatch(wd_t wd)
{
    return inotify_rm_watch(_notifyfd, wd);
}

void FileWatcher::update()
{

    FD_SET(_notifyfd, &_fdset); //只需要监控这一个描述符

    int ret = select(_notifyfd + 1, &_fdset, NULL, NULL, &_outtime);
    switch (ret)
    {

    case -1:
        if (errno != EINTR)
        {
            perror("select()");
            exit(1);
        }
        break;

    case 0:                               //超时返回
    default:                              //>0 表示所监听的文件描述符上有事件发生
        if (FD_ISSET(_notifyfd, &_fdset)) //select会将没有事件发生的位置设为0
        {
            char buff[EVENT_BUFF];
            int numread = read(_notifyfd, buff, EVENT_BUFF);
            if (numread < 0)
            {
                perror("read()");
                exit(1);
            }
            else if (numread == -1)
            {
                fprintf(stderr, "read 0 bytes\n");
            }
            for (char *p = buff; p < buff + numread;)
            {

                auto e = (struct inotify_event *)p;
                auto watchentity = _watchedmap[e->wd];

                auto dirname = watchentity->dirname;
                auto events = e->mask;
                auto filename = e->name;
                printAllEvent(e);
                //对事件进行响应
                p += sizeof(struct inotify_event) + e->len;
            }
        }
        break;
    }
}

void FileWatcher::printAllEvent(struct inotify_event *p)
{
    //initEventTypes();
    printf("  wd =%2d;", p->wd);
    if (p->cookie > 0)
    {
        printf("cookie =%4d;", p->cookie);
    }

#define XX(T)        \
    if (p->mask & T) \
    printf("%s ", eventtypes[T].c_str())

    XX(IN_ACCESS);
    XX(IN_ATTRIB);
    XX(IN_CLOSE_NOWRITE);
    XX(IN_CLOSE_WRITE);
    XX(IN_CREATE);
    XX(IN_DELETE);
    XX(IN_DELETE_SELF);
    XX(IN_IGNORED);
    XX(IN_ISDIR);
    XX(IN_MODIFY);
    XX(IN_MOVE_SELF);
    XX(IN_MOVED_FROM);
    XX(IN_MOVED_TO);
    XX(IN_OPEN);
    XX(IN_Q_OVERFLOW);
    XX(IN_UNMOUNT);

#undef XX
    printf("\n");
    fflush(stdout);

    if (p->len > 0)
    {
        printf("    filename =%s\n", p->name);
    }
}