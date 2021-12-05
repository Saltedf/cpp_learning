#include <iostream>
#include <functional>

void f(int a, int b, int c)
{

    std::cout << a << b << c << std::endl;
}

int main()
{

    std::function<void(void)> g = std::bind(f, 1, 4, 6);
    g();
}