#pragma once

#include <iostream>
#include <sys/inotify.h>
#include <sys/time.h>
#include <sys/select.h>
#include <unistd.h>
#include <climits>
#include <map>

#define EVENT_BUFF ((sizeof(struct inotify_event) + NAME_MAX + 1) * 10)

class FileWatcher
{

    typedef uint32_t wd_t;

    struct watchentity
    {
        wd_t wd;
        std::string dirname;
    };

private:
    int _notifyfd;
    std::map<wd_t, struct watchentity *> _watchedmap;
    fd_set _fdset;
    struct timeval _outtime;
    std::map<int, std::string> eventtypes;

private:
    void initEventTypes();
    void printAllEvent(struct inotify_event *p);

public:
    FileWatcher();
    FileWatcher(long s, long ms = 0L); //默认参数值在声明时 给出，只能给一次。不能在实现 给出，只能给一次。不能在实现中再次指定
    ~FileWatcher();

    wd_t addWatch(const std::string &dirname);
    int tryToRemoveWatch(const std::string &dirname);
    int removeWatch(wd_t watchid);
    void update();
};
