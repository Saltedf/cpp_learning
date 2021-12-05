#include <iostream>
#include <string>
//栈上创建的对象在离开创建时所处的作用域后 会自动被调用析构函数，并释放内存
//堆上创建对象不会因为离开作用域而被delete

//栈上对象的自动销毁特点以及构造函数+析构函数被自动调用的时机 可以让我们写出一些半自动完成某些功能的程序(自动销毁堆上对象，互斥量的实现...)
//在对象创建时 自动开始做某事
//在当前作用域结束时 自动做另一件事

class Myclass
{

public:
    Myclass()
    {
        std::cout << "myclass is created" << std::endl;
    }
    ~Myclass()
    {
        std::cout << "myclass is deleted" << std::endl;
    }
};

class ScopePointer
{
    Myclass *p;

public:
    ScopePointer(Myclass *buf)
    {
        p = buf;
    }

    ~ScopePointer()
    {
        delete p;
    }
};
int main()
{

    {
        ScopePointer sp(new Myclass());
    }

    return 0;
}