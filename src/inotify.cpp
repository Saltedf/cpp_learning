#include <iostream>
#include <sys/inotify.h>
#include <climits>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <unistd.h>
#include <map>
#define  _TO_STR(x) #x
#define  TO_STR(x) _TO_STR(x)

#define BUF_LEN (10*(NAME_MAX+1+sizeof(struct inotify_event)))

std::map<int ,std::string> eventtypes ;

void initEventTypes(){
        
    eventtypes[IN_ACCESS]="IN_ACCESS";
    eventtypes[IN_ATTRIB]="IN_ATTRIB";
    eventtypes[IN_CLOSE_NOWRITE]="IN_CLOSE_NOWRITE";
    eventtypes[IN_CLOSE_WRITE]="IN_CLOSE_WRITE";
    eventtypes[IN_CREATE]="IN_CREATE";
    eventtypes[IN_DELETE]="IN_DELETE";
    eventtypes[IN_DELETE_SELF]="IN_DELETE_SELF";
    eventtypes[IN_IGNORED]="IN_IGNORED";
    eventtypes[IN_ISDIR]="IN_ISDIR";
    eventtypes[IN_MODIFY]="IN_MODIFY";
    eventtypes[IN_MOVE_SELF]="IN_MOVE_SELF";
    eventtypes[IN_MOVED_FROM]="IN_MOVED_FROM";
    eventtypes[IN_MOVED_TO]="IN_MOVED_TO";
    eventtypes[IN_OPEN]="IN_OPEN";
    eventtypes[IN_Q_OVERFLOW]="IN_Q_OVERFLOW";
    eventtypes[IN_UNMOUNT]="IN_UNMOUNT";

}

void printAllEvent(struct inotify_event* p){
    initEventTypes();
    printf("  wd =%2d;",p->wd);
    if(p->cookie>0){
        printf("cookie =%4d;" ,p->cookie);

    }

#define  XX(T) \
    if(p->mask & T)  printf("%s ",eventtypes[T].c_str())

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

    if(p->len> 0 ){
        printf("    filename =%s\n",p->name);
    }

}
int main(int argc , char** argv){

    int notifyfd, wd;
    char buf[BUF_LEN];
    ssize_t  numread;
    char* p;
    struct inotify_event* pevent;

    if(argc<2 || strcmp(argv[1],"--help") == 0){
        fprintf(stderr,"%s pathname ...\n",argv[0]);
        exit(1);
    }

    notifyfd = inotify_init();
    if(notifyfd == -1){
        perror("inotify_init() ");
        exit(1);
    }



    for(int j = 1;j<argc;j++){
        //wd = inotify_add_watch(notifyfd,argv[j],IN_ALL_EVENTS);
        wd = inotify_add_watch(notifyfd,argv[j],IN_CLOSE_WRITE | IN_MOVED_TO | IN_CREATE | IN_MOVED_FROM | IN_DELETE | IN_MODIFY | IN_ATTRIB);
        if(wd==-1){
            perror("add watch error: ");
            exit(1);
        }
    }

    while(1){
        numread = read(notifyfd,buf,BUF_LEN);
        if(numread == 0 ){
            perror("read from notify fd return 0! ");
        }

        if(numread <0 ){
            perror("read() ");
            exit(1);
        }

        printf("read %ld bytes from inotify fd\n",numread);

        for(p = buf;p<buf+numread;){
            pevent = (struct inotify_event * ) p;
            printAllEvent(pevent);
            p += sizeof(struct inotify_event) + pevent->len;
        }
        sleep(1);
    }

}
