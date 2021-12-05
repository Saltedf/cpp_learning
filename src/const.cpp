#include <iostream>



//1. 修饰普通变量
//2. 修饰指针，修饰引用
//3. 修饰成员方法





class Entity{

    private:
        int m_x,m_y;

         mutable int debug_var; //显式被mutable标记的变量可以在const修饰的成员方法中被改变。
    public:
        int getX() const { //不能在被const修饰的方法中修改类的成员变量
            debug_var++;
            return m_x;
        }

};
//成员函数后的const:
// 这个标志让我们能在传入参数为常对象时（eg： const myClass& e ）
// 使得调用其不改变自身值的成员函数是合法的

void printX(const Entity& e ){
    std::cout<< e.getX() << std::endl;

}


int main(int argc, char **argv)
{

    const int MAX_SIZE = 100; //常量

    int *p1 = new int;
    *p1 = 200;

    p1 = (int *)&MAX_SIZE; //绕过const的一种方式:将其赋值给一个非const指针
    *p1 = 30;
    std::cout << *p1 << std::endl;

    //const 在*之前：
    const int *p2 = new int;
    //*p2 = 20; //不能修改其值
    p2 = &MAX_SIZE; // 但能改变其指向

    //const 在*之后
    int *const p3 = new int;
    *p3 = 99; //能改变其指向的值
    //p3 = &MAX_SIZE;//但不能改变其指向

    Entity e ;
    printX(e);

    return 0;
}
