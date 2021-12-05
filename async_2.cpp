#include <cstdlib>
#include <atomic>
#include <cassert>
#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <thread>
#include <chrono>
#include <vector>
#include <queue>
#include <deque>
#include <memory>
#include <functional>
#include <tuple>
#include <algorithm>

using namespace std::literals::chrono_literals;

struct mycompare
{

public:
    //  typedef std::_Bind_helper<std::__is_socketlike<std::function<void(int)> &>::value, std::function<void(int)> &, int &>::type fbind;

    typedef std::function<void(void)> fbind;
    typedef std::chrono::high_resolution_clock::time_point timepoint;

    mycompare(){};

    bool operator()(const std::tuple<timepoint, fbind> &a, const std::tuple<timepoint, fbind> &b)
    {

        return std::get<0>(a) >= std::get<0>(b);
    }
};

class Scheduler
{
    // typedef std::_Bind_helper<std::__is_socketlike<std::function<void(int)> &>::value, std::function<void(int)> &, int &>::type fbind;

    typedef std::function<void(void)> fbind;
    typedef std::chrono::high_resolution_clock::time_point timepoint;

    std::deque<fbind> ready_;

    std::priority_queue<std::tuple<timepoint, fbind>, std::vector<std::tuple<timepoint, fbind>>, mycompare> sleeping_;

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

    void call_later(int delay, std::function<void(int)> func, int arg)
    {

        timepoint deadline = delay > 0 ? std::chrono::high_resolution_clock::now() + std::chrono::seconds(delay) : std::chrono::high_resolution_clock::now();

        sleeping_.push(std::tuple<timepoint, fbind>(deadline, std::bind(func, arg)));
    }

    void run()
    {
        while ((!ready_.empty()) || (!sleeping_.empty()))
        {

            if (ready_.empty()) //当就绪队列为空时，查看睡眠队列中是否有就绪的任务
            {
                auto t = sleeping_.top();
                timepoint deadline = std::get<0>(t);
                fbind funcwithargs = std::get<1>(t);

                if (deadline > std::chrono::high_resolution_clock::now())
                {
                    //防止进入忙等待：反复进出while{}循环体
                    std::this_thread::sleep_for(deadline - std::chrono::high_resolution_clock::now());
                }
                //退出睡眠后，在sleeping_中至少有一个可以开始执行了，将其从睡眠队列中删除，并将其加入到就绪列表中
                sleeping_.pop();
                ready_.push_back(funcwithargs);
            }

            //当就绪队列中存在任务时：
            auto func = ready_.front();
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

        sched.call_later(5, countdown_async, n - 1);
    }
}

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

            sched.call_later(1, curry, x + 1);
        }
    };
    curry(0);
}

int main()
{

    sched.call_soon(countdown_async, 4);
    sched.call_soon(countup_async_v3, 20);

    sched.run();

    return 0;
}
