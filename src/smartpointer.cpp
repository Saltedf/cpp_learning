#include <iostream>
#include <memory>
#include <string>

/*三种基本的智能指针：使用智能指针的好处是避免了用new/delete来创建和释放对象
unique_ptr:此指针不能被复制，也就是其复制构造函数和赋值被禁用，其含义为只有该指针能指向那块内存
shared_ptr:
weak_ptr:
*/
class Entity
{
private:
    std::string m_name;

public:
    Entity()
        : m_name("unknown")
    {
        std::cout << "creating..." << std::endl;
    }
    Entity(const std::string &name)
        : m_name(name)
    {
        std::cout << "creating..." << std::endl;
    }

    ~Entity()
    {
        std::cout << "destorying..." << std::endl;
    }
    void printName()
    {
        std::cout << m_name << std::endl;
    }
};

int main()
{
    //作用域开始：通过栈上创建的智能指针可以自动完成堆上创建的对象的销毁
    {
        // std::unique_ptr<Entity> e = new Entity(); //不能用这种方式创建unique_ptr，其构造函数禁止了隐式转换
        //只能显示调用构造函数：
        std::unique_ptr<Entity> pentity(new Entity());
        std::unique_ptr<Entity> pother = std::make_unique<Entity>(); //这个是更常用的方法。避免使用了new
        //然后像用一个原生指针那样使用该对象：
        pentity->printName();

        std::shared_ptr<Entity> pshared = std::make_unique<Entity>("sun");

        std::shared_ptr<Entity> pshared2 = pshared;

        // std::weak_ptr<Entity> pweak(new Entity()); //弱引用不能用来创建一个对象，它负责引用共享指针的对象，但同时不增加该对象的引用计数
        std::weak_ptr<Entity> pweak = pshared;
        //不能复制unique_ptr指针
        /*
        std::unique_ptr<Entity> p1 = pentity;//不能使用复制构造函数
        std::unique_ptr<Entity> p2(new Entity()); 
        p2 = pentity;//不能调用操作符函数
        */

    } //栈上智能指针自身销毁的同时会负责其所管理的堆上对象的析构

    return 0;
}