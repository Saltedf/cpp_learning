#include <iostream>
#include <string>

template <class T, T t>
struct int_constant
{
    static constexpr T val = t;
    using val_type = T;
    using type = int_constant<T, t>;
    constexpr operator int_constant() const noexcept
    {
        return val;
    }

    constexpr val_type operator()() const noexcept
    {
        return val;
    }
};

int main()
{

    using test = int_constant<int, 123>;

    auto s = test();

        return 0;
}
