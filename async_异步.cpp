#include <cstdlib>
#include <cassert>
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <thread>
#include <chrono>
#include <deque>
#include <memory>
#include <functional>

using namespace std::literals::chrono_literals;

void countdown(int n)
{

    while (n > 0)
    {
        printf("down %d\n", n);
        std::this_thread::sleep_for(1s);
        n -= 1;
    }
}

void countup(int stop)
{
    int x = 0;

    while (x < stop)
    {
        printf("up %d\n", x);
        std::this_thread::sleep_for(1s);
        x += 1;
    }
}

//顺序执行：
void seque()
{

    countdown(5);
    countup(5);
}

//多线程执行
void mutithreads()
{

    std::thread t1(countdown, 5);
    std::thread t2(countup, 5);

    t1.join();
    t2.join();
}

class Scheduler
{

    typedef std::_Bind_helper<std::__is_socketlike<std::function<void(int)> &>::value, std::function<void(int)> &, int &>::type fbind;

    std::deque<fbind> ready_;

public:
    Scheduler()
    {
    }

    ~Scheduler() {}

    void call_soon(std::function<void(int)> func, int a)
    {

        if (!func)
        {
            std::cout << &func << std::endl;
        }
        //  printf("callsoon %p\n", &func);
        ready_.push_back(std::bind(func, a));
    }

    void run()
    {
        while (!ready_.empty())
        {
            auto func = ready_.front();

            //    printf("run %p\n", &(ready_.at(1)));
            ready_.pop_front();
            func();
        }
    }
};

Scheduler sched;

void countdown_async(int n)
{
    if (n > 0)
    {
        printf("down %d\n", n);
        std::this_thread::sleep_for(1s);
        sched.call_soon(*countdown_async, n - 1);
    }
}

void countup_async(int stop, int x = 0)
{
    if (x < stop)
    {
        printf("up %d\n", x);
        std::this_thread::sleep_for(1s);
        x = x + 1;
        std::function<void(int)> curry = [x](int stop) mutable
        {
            countup_async(stop, x);
        };

        sched.call_soon(curry, stop);
    }
}

void countup_warpper(int stop)
{
    int x = 0;
    countup_async(stop, x);
}

// void countup_async_v2(int s)
// {
//     int stop = s;
//     std::function<void(int)> *curry = new std::function<void(int)>(); //动态分配OR静态区OR外层变量，防止用于启动的函数countup v2退出后真正执行的对象curry被销毁
//     *curry = [&, stop](int x)
//     {
//         if (x < stop)
//         {
//             printf("up! %d \n", x);
//             std::this_thread::sleep_for(1s);

//             sched.call_soon(*curry, x + 1);
//         }
//     };
//     (*curry)(0);
//     delete curry;
//     curry = nullptr;
// }

void countup_async_v3(int s)
{
    int stop = s;
    static std::function<void(int)> curry; //动态分配OR静态区OR外层变量，防止用于启动的函数countup v2退出后真正执行的对象curry被销毁
                                           //static 相当于让curry变为一个函数定义，其生命周期贯穿始终

    curry = [&, stop](int x) //引用主要是为了curry，因为在赋值时curry本身还被没实现的，不能通过值捕获
    {
        if (x < stop)
        {
            printf("up! %d  \n", x);
            std::this_thread::sleep_for(1s);

            sched.call_soon(curry, x + 1);
        }
    };
    curry(0);
}

//void countup_async_v3(int s){
//int stop = s;
//std::function<void(int)> curry ;
//curry = [=](int x)   {
//if(x<stop){
//printf("up! %d < %d\n",x,stop);
//std::this_thread::sleep_for(1s);

//sched.call_soon(curry, x+1);
//}

//};
//curry(0);
//}

void countdown_async_sleep4s(int n)
{
    if (n > 0)
    {
        printf("down %d\n", n);
        std::this_thread::sleep_for(4s); //阻塞其它任务的执行
        sched.call_soon(*countdown_async, n - 1);
    }
}

int main()
{

    //seque();
    //mutithreads();

    sched.call_soon(countup_warpper, 6);

    //  sched.call_soon(countup_async_v3, 6);
    //sched.call_soon(countdown_async, 6);
    sched.call_soon(countdown_async_sleep4s, 6);//将睡眠时间延长后会导致所有任务都阻塞；

    sched.run();

    return 0;
}
