#include <iostream>
#include <string>
using namespace std::string_literals;
class Entity
{
private:
    std::string m_name;
    int m_age;

public:
    Entity(const char *cname) : m_name(cname), m_age(-1) {}
    explicit Entity(const std::string &name) : m_name(name), m_age(-1) {}
    Entity(int age) : m_name("unknown"), m_age(age) {}
};

void printEntity(Entity e)
{
}
int main()
{
    //C++中的隐式转换的前提是有对应参数类型的构造函数：

    Entity a = 22; //因为Entity支持以int为参数的构造函数，此处发生了隐式转换
    printEntity(22);
    printEntity("sun"); //Entity有以字符串const char*为参数的构造函数，支持隐式转换

    //若想禁用某类型到Entity的隐式转换，则只要在对应构造函数前加上： explicit

    // printEntity("cpp_string"s); //编译错误：因为string为参数的构造函数被explicit修饰
    Entity b("cpp_string"s); //编译通过，因为此时没有发生隐式转换，而是直接调用构造函数在栈上创建对象。
    //最后这种也是推荐写法

    return 0;
}