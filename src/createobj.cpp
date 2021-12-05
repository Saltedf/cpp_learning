
#include <iostream>
#include <string>
class Entity
{

private:
    std::string m_name;

public:
    Entity() { std::cout << "Unknow" << std::endl; }
    Entity(const std::string &name) : m_name(name)
    {
        std::cout << name << std::endl;
    }
};

int main()
{
    //只要不打算将对象的生命周期延长到当前作用域之外，尽量使用在栈上创建的方式
    Entity e;                  //在栈上创建对象
    Entity e2 = Entity("sun"); //在栈上创建对象

    Entity *p;
    {
        Entity e3("salted"); //在栈上分配，离开代码块后就被自动销毁

        p = new Entity("Amy");
    }

    int *i = new int(2);
    std::cout << *i << std::endl;
    Entity *earr = new Entity[20];

    delete i;
    delete p; //要释放在堆上创建的对象
    delete[] earr;
    return 0;
}