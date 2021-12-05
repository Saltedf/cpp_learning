#include <iostream>
//在任何地方都用初始化列表来对成员变量进行初始化

class Info{

    public:
        Info(){
            std::cout<< "info is initing .."<< std::endl;
        }
        Info(const std::string& s){
            std::cout<< "info is initing by "<< s << std::endl;
        }

};

//初始化列表要求列出的成员变量的顺序必须是按照类中的声明顺序。

//并且，初始化列表是必须的。即便某个成员变量没有在初始化列表中进行初始化，编译器也会在每个构造函数的开始处调用该成员的默认构造函数：
//因此若不用初始化列表，而在函数体内进行初始化，则会造成对同一成员变量的重复初始化。
class Person{

    private:
        Info info;
        int age;
    public:

        Person(const std::string& s){ // 对成员info的首次初始化：调用Info的默认构造函数
            info = Info(s); //对成员info的第二次初始化
        }

};

int main(){

    Person *p = new Person("PP");
    return 0;
}
