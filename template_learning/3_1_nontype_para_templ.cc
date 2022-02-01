
template <unsigned int n>
struct st_sum
{
    static const unsigned int value = n + st_sum<n - 1>::value;
};

template <>
struct st_sum<1>
{
    static const unsigned int value = 1;
};

#include <iostream>

int main(int argc, char *argv[])
{
    // the values of template nontype arguments should be able to evalute at compile-time;
    const unsigned int n = 100;
    // OR
    constexpr unsigned int m = 100;
    std::cout << "1 + .. + n = " << st_sum<n>::value << " \n";
}