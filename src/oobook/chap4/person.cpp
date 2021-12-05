#include <iostream>
/* 一定要将类中的所有成员变量进行初始化。否则后续调用方法时将无法预测其行为


初始化列表的使用在含有const成员或包含内嵌对象时是必须的。
不能在构造函数体中完成初始化，因为各个成员变量的初始化实际发生在执行构造函数之前，构造函数中只能对成员变量赋值。
因此为了给const成员赋初值、避免重复调用内嵌对象的构造函数，必须使用初始化列表
*/

/*内嵌对象（不是包含对象指针或引用）的使用事项：
1 在初始化列表中对其初始化，而不是构造函数中
2 不要调用内嵌对象的析构函数，包含它的类会自动调用
*/

class MyDate
{
public:
    enum Month
    {
        Jan = 1,
        Feb,
        Mar,
        Apr,
        May,
        Jun,
        Jul,
        Aug,
        Sep,
        Oct,
        Nov,
        Dec
    };

    MyDate();
    MyDate(const char date[]);
    MyDate(unsigned year, Month month, unsigned day);

private:
    short year;
    Month month;
    short day;
};
class Person
{
public:
    Person() {}
    Person(const char name[], const char addr, unsigned long id, MyDate birthdate);
    Person(const Person &other);
    Person &operator=(const Person &other);

    void print() const;
    void setName(const char name[]);

private:
    char *name;
    char *addr;
    unsigned long id;
    MyDate brithdate;
};

void Person::print() const
{
    std::cout << "Name is " << name << " .Id is " << id << std::endl;
}

int main()
{
}