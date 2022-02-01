
#include "type_func.h"
#include <iostream>
#include <type_traits>

//use interget_t<T>  to restrict T to interger types
template <typename T,
          typename = interger_t<T>> //template parameter list is before class name
class Modulo
{
public:
    explicit Modulo(T m = T{})
        : mem_{m}
    {
    }

    /*  VERSION 1
    template<typename T>
    T operator%(T m ){
        return (this->mem_ % m);
    }
    */

    // VERSION 2
    //
    // break the tie between the class and  its member function
    // by making a member function  a function template with another type parameter
    /* 
        This means that if there is no function call that matches the template of the member function ,
        the class will not contain this member function after the template is expanded.
    */
    // The advantage here is that Modulo can accept parameters of interger types other than the same type T
    // and detect whether the second operand is an integer type
    /* 
    template <typename S,
              typename = interger_t<S>>
    T operator%(S m)
    {
        return (this->mem_ % m);
    }
    */

    // VERSION 3
    // make sure that the type of Modulo is same as the type of the second oprand of operator%
    // the second default type parameter is to constrain S to be an integer type.
    //
    // template <typename S, typename = interger_t<S>>
    // same_t<T, S> operator%(S m)
    // {
    //     return (mem_ % m);
    // }

    // Version 4
    // std::enable_if_t<T,S> is functionally the same as
    // our implementation of enable_true_t
    template <typename S>
    enable_true_t<is_same_v<T, S>, S> operator%(S m)
    {
        return (mem_ % m);
    }

    friend std::ostream &operator<<(std::ostream &out, const Modulo &mod)
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

    Modulo<int> m{5}; //template argument list  is after class name

    //Modulo m2 { 5.0 }; //error!! 因为使用了explicit+统一初始化列表
    //统一初始化列表无论是否有explicit 都不允许隐式类型转换
    //because we use initializer list syntax .
    //And if we use parentheses() to call the constructor as in
    //and without explict keyword ,it should have worked .

    int n{3};

    std::cout << m << "%" << n << "=" << (m % n) << "\n";

    Modulo m1{6}; //in C++ 17 standard ,class template argument lists can be omitted when using its constructor
    std::cout << m1 << "%" << n << "=" << (m1 % n) << "\n";

    //Modulo m3{5.0};
    //because the floating point type does not support the % operator
    //so we want to restrict T to integral types, such as int , short , long ,etc .

    //short s{4}; // In version 3 of operator%, the type of s must be int
    int s{4};
    std::cout << m1 << "%" << s << "= " << m1 % s << "\n";

    std::cin.get();
    return 0;
}