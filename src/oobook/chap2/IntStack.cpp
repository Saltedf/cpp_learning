#include <iostream>
#include "IntStack.hpp"

/*创建对象的三步：
1 计算对象所占大小
2 为对象实际分配内存，并生成虚函数表
3 调用构造函数

*/
IntStack::IntStack(unsigned int size = DEFAULT_SIZE)
{

    if (size > 0)
    {
        this->size = size;
        this->sp = new int[size];
        for (int i = 0; i < size; i++)
        {
            this->sp[i] = 0;
        }
    }
    else
    {
        this->sp = nullptr;
        this->size = 0;
    }
    this->count = 0; //目前栈中元素个数
}

//复制构造函数：用一个已经存在的对象来创建一个新对象，本质上是构造函数的语法糖
// 声明方式：
// 类名( 类& source )
// 类名(const 类& source)

//将别的对象的值复制到新对象上，并为新对象分配新的空间来存放拷贝的值
// 在 IntStack d = s;时触发复制构造函数
// 在函数为按值传参时，调用复制构造函数，在函数中使用该对象的副本

IntStack::IntStack(const IntStack &source)
{
    this->size = source.size;
    if (this->size > 0)
    {
        this->sp = new int[this->size]; //深拷贝，为新对象分配独立的新空间
        for (int i = 0; i < this->size; i++)
        {
            this->sp[i] = source.sp[i];
        }
    }
    else
    {
        this->size = 0;
        this->count = 0;
    }
}

//析构函数：在释放对象所占内存之前调用，用来释放对象所持有的其它运行时分配的资源
IntStack::~IntStack()
{
    delete[] sp; //编译器知道该指针所指向的内存大小
}

//赋值运算符：两个已经构造出的对象间的拷贝：用右侧对象的值覆盖左侧对象
//在形如 a=b 时被调用，等价于 a.operator=(b)
//将右侧对象的值拷贝到左边，若左侧对象中指向的动态内存空间太小，则要先进行释放，再重新申请内存
//因此必须要检查 自我赋值 的情况，否则会导致错误的内存释放
//最后，需要返回左侧对象本身: *this

IntStack &IntStack::operator=(const IntStack &other)
{
    if (this == &other)
    {
        return *this;
    }

    if (other.size > this->size)
    {
        this->size = other.size;
        delete[] this->sp;
        this->sp = new int[this->size];
    }

    for (int i = 0; i < this->size; i++)
    {
        this->sp[i] = other.sp[i];
    }
    this->count = other.count;

    return *this;
}

void IntStack::push(int val)
{
    if (this->count < this->size)
    {
        this->sp[count] = val;
        count++;
    }
    else
    {
        std::cerr << "stack is full!" << std::endl;
    }
}

int IntStack::pop()
{
    if (count <= 0)
    {
        std::cerr << "stack is empty!" << std::endl;
        exit(1);
    }
    count--;
    return sp[count];
}

unsigned int IntStack::getCount() const
{
    return this->count;
}

/*
使用this的三种场合：
1 与传入参数作区分
2 返回调用此函数的对象：*this
3 获得当前对象的地址
*/