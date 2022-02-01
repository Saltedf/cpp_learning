#include <iostream>
#include "2_constexpr_const2.h"
#include <iomanip>

// constexpr means this function/expression should be evaluated at compile-time.
constexpr int ct_get_ten(int z)
{
    return z == 0 ? 10 : 0;
}

void CompileTimeInit()
{
    std::cout << "\n ---------- compile time init \n";
    // initialize "const int n" at compile-time.

    // Literally all occurrences of "const int n" are replaced with 10
    // but the value stored at the address of n is not 10 (It's zero!)

    // const int n = 10;  // Version 1
    const int n = ct_get_ten(0); // Version 2: the result is same as Version 1

    int *p = const_cast<int *>(&n);
    *p = 0;

    std::cout << "          n = " << std::setw(3) << n << ", \t &n = " << &n << std::endl;
    std::cout << "      *(&n) = " << std::setw(3) << *(&n) << ", \t &n = " << &n << std::endl;
    std::cout << "*((int*)&n) = " << std::setw(3) << *(const_cast<int *>(&n)) << ", \t &n = " << &n << std::endl;
    std::cout << "         *p = " << std::setw(3) << *p << ", \t  p = " << p << std::endl;
}

int rt_get_ten(int z)
{
    // Prevent the compiler from optimizing it.
    return z == 0 ? 10 : 0;
}

constexpr int ct_get_tem(int z)
{
    return z == 0 ? 10 : 0;
}

void RunTimeInit()
{
    std::cout << "\n ---------- run time init \n";

    //initialize "const int n " at run-time

    // const int n = rt_get_ten(0); // Version 1

    const int n = ct_get_ten(0); // Version 2 :the result is same to CompileTimeInit().

    int *p = const_cast<int *>(&n);
    *p = 0;

    std::cout << "          n = " << std::setw(3) << n << ", \t &n = " << &n << std::endl;
    std::cout << "      *(&n) = " << std::setw(3) << *(&n) << ", \t &n = " << &n << std::endl;
    std::cout << "*((int*)&n) = " << std::setw(3) << *(const_cast<int *>(&n)) << ", \t &n = " << &n << std::endl;
    std::cout << "         *p = " << std::setw(3) << *p << ", \t  p = " << p << std::endl;
}

int main()
{
    std::cout << "\nkShared = " << kShared << "\n"; // kShared is defined in another translate unit.

    CompileTimeInit();
    RunTimeInit();

    return 0;
}