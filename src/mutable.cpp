#include<iostream>

/* 两种mutable的常用方式：
 *
 * 1. 使得变量可以在const修饰的方法中可以改变其值
 *
 * 2. lambda表达式中 使得按值传入的参数的副本可以被修改
 *
 *
 *
 */


class Entity{
    private:
        int x,y;
        mutable int debug_count = 0; //第一种 mutable 的用法。

    public:
        Entity(){

            x = 0;
            y = 0;
        }
        const int& getx() const {

            debug_count++;
            return this->x;
        }

};

int main(){

    const Entity e; //声明为const的对象，其构造函数一定要完成对其成员变量的初始化。
    std::cout << e.getx()<< std::endl;

    // mutable的第二种用法
    int x = 9;
    auto f = [=]() mutable{
        x++;
        std::cout<<x<< std::endl;
    };

    f();


    return 0;
}
