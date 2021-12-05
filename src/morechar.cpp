#include <iostream>
#include <cstdlib>

int main()
{
    const wchar_t *wstr = L"long char";      //字节数不确定
    const char16_t *str16 = u"2 bytes char"; //每个字符固定2字节
    const char32_t *str32 = U"4 bytes char"; //每个字符固定4字节
    //===============================================
    //有一个方法可以让两个字符串字面量直接相加：使用字符串字面量对象：string literals
    using namespace std::string_literals;
    std::string res_str = "hello "s + "world!"s; //在每个字符串后加上"s" ，将其转换为字面量对象

    //前缀R+括号（）：直接按照字面量的格式输出字符串
    const char *example =
        R"(line1
line2
line3)";

    std::cout << example << std::endl;

    exit(0);
}