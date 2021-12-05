#include <iostream>


//lambda表达式相当于一个可调用的对象，即有一个名为“()”的方法。

class lambda {

    public:
        lambda(){};
        ~lambda(){};

       int  operator() (int a,int b){
           return a+b;
       }

};


class test_class{
    public:
        test_class(){};
        ~test_class(){};

        int age;

};


int main(){

    int i  = 100;
    auto f  = [=]{ //等号表示以副本的方式传入外部变量，只读
        i = 12; //此行报错
        std::cout << i <<std::endl;
    };

    auto obj = new test_class();
    auto f2 = [=]{//仍以传值方式来获取外部的变量obj
        obj->age = 45;
    };


    int j  = 1;
    auto g = [&] {//以引用方式捕获外部对象
        j = 4;
        obj = NULL;
        std::cout <<j <<std::endl;
    };

    return 0;
}
