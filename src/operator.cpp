#include <iostream>
#include <string>

class Vector2
{

    float x, y;

public:
    Vector2(int x, int y) : x(x), y(y)
    {
    }
    //若这个类是提供给他人使用的，则需要提供两种风格的运算符：一种为函数，另一种为操作符重载
    Vector2 add(const Vector2 &other)
    {
        return Vector2(x + other.x, y + other.y);
    }

    Vector2 operator+(const Vector2 &other) const
    {
        return Vector2(x + other.x, y + other.y); //这里其实最后要调用复制构造函数将临时对象复制构造出一个新对象供外界使用
    }

    friend std::ostream &operator<<(std::ostream &out, Vector2 v); //使得重载的操作符<< 可以直接访问私有成员
};
//让自定义类可以被<<输出
std::ostream &operator<<(std::ostream &out, Vector2 v)
{
    out << v.x << " " << v.y; //这里不要加上std::endl
}
int main()
{
    Vector2 v(3, 5);
    Vector2 v2(v);
    auto ret = v.operator+(Vector2(5, 6));
    std::cout << ret << std::endl;

    return 0;
}