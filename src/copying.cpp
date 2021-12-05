#include <iostream>
#include <memory>
#include <cstring>

class String
{
private:
    char *m_cstr;
    unsigned int m_length;

public:
    String() : m_cstr(nullptr), m_length(0)
    {
    }

    String(const char *cstr)
    {
        m_length = strlen(cstr);
        m_cstr = new char[m_length + 1];
        memcpy(m_cstr, cstr, m_length + 1);
    }

    String(const String &str)
    {
        std::cout << "copying..." << this << std::endl;
        m_length = str.m_length;
        m_cstr = new char[m_length + 1];
        memcpy(m_cstr, str.m_cstr, m_length + 1);
    }

    ~String()
    {
        delete[] m_cstr;
    }
    /*重载[] 以便可以按下标访问字符串中的某字符
    这里返回char& 是比较特殊的情形，通常不会将引用作为返回值。
    只要像这样返回对自身或对自身的一部分引用时才会使用
    */
    char &operator[](int i) const
    {
        return m_cstr[i];
    }
    friend std::ostream &operator<<(std::ostream &out, const String &str);
};

std::ostream &operator<<(std::ostream &out, const String &str)
{
    out << str.m_cstr;
    return out;
}

//只要传参方式时将对象按值传递，都会调用复制构造函数来创建一个副本在函数中使用
void printMyString_bad(String s)
{
    std::cout << s << std::endl;
}

//传递对象参数，优先采用传引用的方式，这样可以避免无用的复制，即便需要副本也可在函数中手动创建
void printMyString(const String &s)
{
    std::cout << s << std::endl;
}

int main()
{

    String a("hello");
    String b = a; //默认的复制构造函数使用浅复制，使得两个字符串使用同一内存，在销毁时导致重复释放同一块内存
    b[1] = 'a';
    printMyString_bad(a);
    printMyString(b);

    std::cin.get();
}