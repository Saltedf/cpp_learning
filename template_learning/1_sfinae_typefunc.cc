
#include "type_func.h"
#include <iostream>
#include <type_traits>



template <typename T> //template parameter list is before class name 
class Modulo
{
public:
    explicit Modulo(T m = T {})
        : mem_ { m }
    {}

    int operator%(T m)
    {
        return (this->mem_ % m);
    }

    friend std::ostream& operator<<(std::ostream& out , const Modulo& mod)
    {
        out << mod.mem_;
        return out;
    }
private:
    T mem_;
};



int main()
{
    //%返回两个整数除法的余数 ， 对浮点数无效
/*
    int a = 5;
    int b = 3;
    std::cout << a << '%' << b << " = " << a % b << "\n";
*/

    Modulo<int> m { 5 }; //template argument list  is after class name

    //Modulo m2 { 5.0 }; //error!! 因为使用了explicit+统一初始化列表
    //统一初始化列表无论是否有explicit 都不允许隐式类型转换
    //because we use initializer list syntax .
    //And if we use parentheses() to call the constructor as in
    //and without explict keyword ,it should have worked .

    int n { 3 };

    std::cout << m << "%" << n << "=" << (m % n) << "\n";

    Modulo m1 { 6 }; //in C++ 17 standard ,class template argument lists can be omitted when using its constructor
    std::cout << m1 << "%" << n << "=" << (m1 % n) << "\n";

    Modulo m3 { 5.0 };
    //because the floating point type does not support the % operator
    //so we want to restrict T to integral types, such as int , short , long ,etc .



    std::cin.get();
    return 0;
}