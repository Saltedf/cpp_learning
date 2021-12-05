#include <functional>
#include <deque>
#include <queue>

class Scheduler
{
private:
    std::deque < std::function <
        public : Scheduler()
    {
    }
    ~Scheduler() {}
};

template <typename T>
class AsyncQueue
{

private:
    std::deque<T> dqueue_;

public:
    AsyncQueue()
    {
    }

    ~AsyncQueue()
    {
    }
};

void producer(AsyncQueue<int> aq, int e)
{
}

void conmuser(AsyncQueue<int> aq)
{
}