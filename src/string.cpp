#include <iostream>
#include <string>
//#define NOTDEBUG

void printString(const std::string &str);
int main()
{
    const char *name = "sun"; //在GCC中 不加const的char*字符串默认为一个常量不能修改其值( 存储在常量区 )
    //name[2] = 's';//会报错  可以将字符串声明为数组或是在堆上为它分配空间
    std::cout << name << std::endl;

    std::string name2 = "salted";
    //对string进行追加操作。要对string类型变量使用+= ，而不是将两个字符串字面量相加，因为他们本质上是指针
    name2 += " hello!";
    std::cout << name2 << " " << name2.size() << std::endl; // <string> 头文件中对<<操作符进行了重载！！

    if (name2.find("llo") != std::string::npos) //npos 表示不存在
    {
        printString("found it!");
    }

    exit(0);
}

//关于将字符串传给函数：
//通常不会将形参写为 void printString(std::string str){} 因为这样会导致将字符串拷贝一份

//通常采用引用的方式进行传递，若此函数中的字符串时只读的，只需要在前面加上const修饰引用即可
void printString(const std::string &str)
{
#ifndef NOTDEBUG
    std::cout << str << std::endl;
#else
    //do nothing
#endif
}