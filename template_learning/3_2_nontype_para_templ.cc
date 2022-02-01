#include <cmath>

bool is_prime_loop(unsigned n)
{
    unsigned bound = static_cast<unsigned>(sqrt(n));
    for (unsigned i = 2; i <= bound; ++i)
    {
        if (n % i == 0)
            return false;
    }
    return true;
}

bool __is_prime_rec(unsigned n, unsigned b)
{
    if (b == 2)
    {
        return n % 2 != 0;
    }
    return (n % b != 0) && __is_prime_rec(n, b - 1);
}

bool is_prime_rec(unsigned n)
{

    unsigned bound = static_cast<unsigned>(sqrt(n));
    return __is_prime_rec(n, bound);
}

template <unsigned n, unsigned b>
struct st_rec_prime
{
    const static bool value = (n % b != 0) && st_rec_prime<n, b - 1>::value;
};

template <unsigned n>
struct st_rec_prime<n, 2>
{
    const static bool value = (n % 2 != 0);
};

template <unsigned n>
struct st_is_prime
{
    const static bool value = st_rec_prime<n, static_cast<unsigned>(sqrt(n))>::value;
};

template <>
struct st_is_prime<3>
{
    const static bool value = true;
};
template <>
struct st_is_prime<2>
{
    const static bool value = true;
};
template <>
struct st_is_prime<1>
{
    const static bool value = false;
};

#include <iostream>

int main()
{

    std::cout << "loop\n";
    for (int i = 40; i > 1; --i)
    {
        std::cout << i << (is_prime_loop(i) ? " yes" : " no") << "\n";
    }
    std::cout << "\nrec\n";
    for (int i = 40; i > 1; --i)
    {
        std::cout << i << (is_prime_rec(i) ? " yes" : " no") << "\n";
    }

    std::cout << "\n";
    std::cout << 40 << (st_is_prime<40>::value ? " yes" : " no") << "\n";

    return 0;
}