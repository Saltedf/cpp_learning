#include <iostream>

class Entity
{
public:
    int x;
    Entity()
        : x(0)
    {
        std::cout << "creating entity ..." << std::endl;
    }
    ~Entity()
    {
        std::cout << "destorying entity ..." << std::endl;
    }
};
//之前写的随作用域自动释放堆上对象的指针，可以通过重载操作符-> 使其能直接访问到其所管理的对象，从而在语法上可使得它像内置指针一样使用
class ScopePointer
{
private:
    Entity *m_obj;
    ScopePointer(const Entity &other) = delete;
    ScopePointer &operator=(const Entity &other) = delete;

public:
    ScopePointer(Entity *e) : m_obj(e)
    {
    }
    ~ScopePointer()
    {
        delete m_obj;
    }

    Entity *operator->() //适用于非const的ScopePointer
    {
        return m_obj;
    }
    const Entity *operator->() const //适用于const的ScopePointer，后面必须加上const，否则不可区分
    {
        return m_obj;
    }
};

struct ShowOffset
{
    int x;
    void *addr;
    char ch;
    int y;
};

//得到成员变量的偏移量：空指针->
#define OFFSET(X) (int)&((ShowOffset *)0)->X

int main()
{
    {
        ScopePointer p = new Entity(); //此处是使用了构造函数在语法上实现了隐式转换（并没有使用赋值或复制构造）
        p->x;
        const ScopePointer pc = new Entity();
        pc->x;
    }
    int size = sizeof(ShowOffset);
    std::cout << "void* " << sizeof(void *) << std::endl;
    std::cout << size << std::endl;
    std::cout << OFFSET(ch) << std::endl;

    return 0;
}