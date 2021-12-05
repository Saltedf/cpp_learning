
#include <iostream>
#include <thread>
#include <map>
#include <functional>
#include <stdlib.h>
#include <tuple>
#include <queue>
#include <algorithm>
#include <type_traits>
#include <chrono>
#include <deque>

//
// https://github.com/qicosmos/cosmos/blob/master/function_traits.hpp
// https://codechina.gitcode.host/programmer/2016/145-programmer-2016.html
// https://zhuanlan.zhihu.com/p/33330839
//
//

//转换为std::function和函数指针.
template <typename T>
struct function_traits;

//普通函数.
template <typename Ret, typename... Args>
struct function_traits<Ret(Args...)>
{
public:
    enum
    {
        arity = sizeof...(Args)
    };
    typedef Ret function_type(Args...);
    typedef Ret return_type;
    using stl_function_type = std::function<function_type>;
    typedef Ret (*pointer)(Args...);

    template <size_t I>
    struct args
    {
        static_assert(I < arity, "index is out of range, index must less than sizeof Args");
        using type = typename std::tuple_element<I, std::tuple<Args...>>::type;
    };

    typedef std::tuple<std::remove_cv_t<std::remove_reference_t<Args>>...> tuple_type;
    typedef std::tuple<std::remove_const_t<std::remove_reference_t<Args>>...> bare_tuple_type;
};

//函数指针.
template <typename Ret, typename... Args>
struct function_traits<Ret (*)(Args...)> : function_traits<Ret(Args...)>
{
};

//std::function.
template <typename Ret, typename... Args>
struct function_traits<std::function<Ret(Args...)>> : function_traits<Ret(Args...)>
{
};

//member function.
#define FUNCTION_TRAITS(...)                                                                                      \
    template <typename ReturnType, typename ClassType, typename... Args>                                          \
    struct function_traits<ReturnType (ClassType::*)(Args...) __VA_ARGS__> : function_traits<ReturnType(Args...)> \
    {                                                                                                             \
    };

FUNCTION_TRAITS()
FUNCTION_TRAITS(const)
FUNCTION_TRAITS(volatile)
FUNCTION_TRAITS(const volatile)

//函数对象.
template <typename Callable>
struct function_traits : function_traits<decltype(&Callable::operator())>
{
};

template <typename Function>
typename function_traits<Function>::stl_function_type to_function(const Function &lambda)
{
    return static_cast<typename function_traits<Function>::stl_function_type>(lambda);
}

template <typename Function>
typename function_traits<Function>::stl_function_type to_function(Function &&lambda)
{
    return static_cast<typename function_traits<Function>::stl_function_type>(std::forward<Function>(lambda));
}

template <typename Function>
typename function_traits<Function>::pointer to_function_pointer(const Function &lambda)
{
    return static_cast<typename function_traits<Function>::pointer>(lambda);
}

// ===============================================

template <size_t... I>
struct seq
{
    using type = seq;
};

template <class... I>
struct concat;

template <size_t L, size_t... H>
struct concat<seq<L>, seq<H...>> : public seq<L, (H + 1)...>
{
};

template <size_t N>
struct make : public concat<seq<0>, typename make<N - 1>::type>
{
};

template <>
struct make<1> : public seq<0>
{
};

template <>
struct make<0> : public seq<>
{
};

// ================================================
class FunctionContainer
{
    using TimePoint = std::chrono::high_resolution_clock::time_point;
    using BindFunc = std::function<void(void)>;
    using SleepingTask = std::tuple<TimePoint, BindFunc>;

    class TaskCompare
    {

    public:
        TaskCompare() {}

        bool operator()(const SleepingTask &a, const SleepingTask &b)
        {
            return std::get<0>(a) >= std::get<0>(b);
        }
    };

private:
    std::priority_queue<SleepingTask, std::vector<SleepingTask>, TaskCompare> sleeping_;
    std::map<std::string, std::function<void(void *)>> invokers_;
    std::deque<std::function<void(void)>> readys_;

    template <typename func>
    class invoker
    {
    public:
        static inline void apply(const func &f, void *args)
        {
            using tuple_type = typename function_traits<func>::tuple_type;
            const tuple_type *tp = static_cast<tuple_type *>(args);
            forward_call(f, *tp);
        }
        template <typename... Args>
        static inline void apply2(const func &f, std::tuple<Args...> args)
        {
            using tuple_type = typename function_traits<func>::tuple_type;
            // const tuple_type *tp = static_cast<tuple_type *>(args);
            forward_call(f, args);
        }
    };

public:
    template <typename Func>
    void register_handler(const std::string &name, const Func &f)
    {
        using std::placeholders::_1;
        invokers_[name] = {std::bind(&invoker<Func>::apply, f, _1)};
    }

    //

    template <typename Func, typename... Args>
    void call_soon(/*const std::string &name,*/ const Func &f, Args... args)
    {
        using std::placeholders::_1;

        auto args_tuple = std::make_tuple(std::forward<Args>(args)...);
        char data[sizeof(std::tuple<Args...>)];
        std::tuple<Args...> *tp = new (data) std::tuple<Args...>;
        *tp = args_tuple;

        readys_.push_back(std::bind(&invoker<Func>::template apply2<Args...>, f, *tp));
        // ↑↑↑↑↑↑ 这个template的添加太TM坑了！！！↑↑↑↑↑↑
        // https://segmentfault.com/q/1010000021553693
        // https://github.com/eliasdaler/MetaStuff/issues/12
    }

    template <typename Func, typename... Args>
    void call_later(int seconds, const Func &f, Args... args)
    {

        using std::placeholders::_1;
        auto args_tuple = std::make_tuple(std::forward<Args>(args)...);

        TimePoint deadline = std::chrono::high_resolution_clock::now() + std::chrono::seconds(seconds);
        sleeping_.push(std::make_tuple(deadline, std::bind(&invoker<Func>::template apply2<Args...>, f, args_tuple)));
    }

    void run()
    {
        while (!readys_.empty() || !sleeping_.empty())
        {
            if (readys_.empty())
            {
                auto top = sleeping_.top();
                sleeping_.pop();
                ;
                if (std::get<0>(top) > std::chrono::high_resolution_clock::now())
                {
                    std::this_thread::sleep_for(std::get<0>(top) - std::chrono::high_resolution_clock::now());
                }
                readys_.push_back(std::get<1>(top));
            }

            auto f = readys_.front();
            readys_.pop_front();
            f();
        }
    }

    //
private:
    template <typename... Args>
    void call(const std::string &name, Args &&...args)
    {
        auto item = invokers_.find(name);
        if (item == invokers_.end())
        {
            return;
        }

        auto args_tuple = std::make_tuple(std::forward<Args>(args)...);
        char data[sizeof(std::tuple<Args...>)];
        std::tuple<Args...> *tp = new (data) std::tuple<Args...>;
        *tp = args_tuple;

        item->second(tp);
    }

private:
    template <typename F, typename... Args>
    static void forward_call(const F &f, const std::tuple<Args...> &tp)
    {
        call_helper(f, make<sizeof...(Args)>{}, tp);
    }

    template <typename F, size_t... I, typename... Args>
    static decltype(auto) call_helper(const F &f, const seq<I...> &, const std::tuple<Args...> &tp)
    {
        return f(std::get<I>(tp)...);
    }
};

void sum(int a, int b, int *ret)
{

    *ret = a + b;
}

int main()
{
    FunctionContainer fc;

    auto g = [&](int a, int b)
    {
        std::cout << a << " " << b << std::endl;
    };

    std::function<void(int)> countdown;
    countdown = [&](int s)
    {
        if (s > 0)
        {
            std::cout << "down: " << s << std::endl;
            // std::this_thread::sleep_for(std::chrono::seconds(1));
            // fc.call_soon(countdown, s - 1);
            fc.call_later(4, countdown, s - 1);
        }
    };

    std::function<void(int, int)> countup;
    countup = [&](int stop, int x_)
    {
        int x = x_;
        if (x < stop)
        {
            std::cout << "up: " << x << std::endl;
            // std::this_thread::sleep_for(std::chrono::seconds(1));
            // fc.call_soon(countup, stop, x + 1);
            fc.call_later(4, countup, stop, x + 1);
        }
    };

    // std::function<void(int, int, int *)> s = sum;

    // fc.register_handler<std::function<void(int, int)>>("g", g);
    // fc.register_handler<std::function<void(int)>>("countup", countup);
    // fc.register_handler<std::function<void(int, int, int *)>>("sum", s);

    // fc.call("g", 3, 6);
    // fc.call("countup", 5);

    // int r;
    // fc.call("sum", 3, 6, &r);
    // std::cout << r << std::endl;

    fc.call_soon<std::function<void(int)>>(countdown, 6);
    fc.call_soon<std::function<void(int, int)>>(countup, 6, 0);
    fc.run();
}