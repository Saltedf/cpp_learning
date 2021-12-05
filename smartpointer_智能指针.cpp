#include <memory>
#include <iostream>
#include <string>



//将智能指针作为返回值：
std::shared_ptr<int> makesint(int val){

    //return new int(val); 不能返回裸指针作为智能指针

    return std::shared_ptr<int>(new int(val));
}


void func1(std::shared_ptr<int> sp){//不增加某对象的引用计数
    return;
}

std::shared_ptr<int> func2(std::shared_ptr<int> sp){

    return sp;
}


void mydelfunc(int *arr){
    delete [] arr;
}

int main(){


    //初始化shared_ptr<>
    std::shared_ptr<std::string> p1;

    std::shared_ptr<int> p2(new int(199));

    //std::shared_ptr<int> pwrong = new int(100);//错误的，智能指针不支持隐式类型转换
    
   //make_shared 在堆中创建对象，并返回指向它的智能指针 （无法自定义删除器）
    std::shared_ptr<int> p3 = std::make_shared<int>(100);
    std::shared_ptr<std::string> pstr  = std::make_shared<std::string>(9,'a');//9个a的字符串

    p3  = std::make_shared<int>(123); //之前创建的整数100被自动释放，重新创建一个新的整数

    
    //增加shared_ptr指针的计数
    
    std::shared_ptr<int> p4 = p3;//为p3所指向对象增加计数

    auto p5(p3); //为p3所指向对象增加计数

    //将智能指针传值传入后不会影响某对象的引用计数
    func1(p3);

    //返回智能指针的函数是否增加引用计数取决于是否接收返回值

    auto pret = func2(p3); //增加引用计数

    func2(pret);//不增加引用计数




    //减少shared_ptr的引用计数
    
    pret = std::make_shared<int> (777);//为某个非空的shared_ptr重新赋值，导致p3引用计数减少

    //shared_ptr的常用操作

    //返回某对象的引用计数
    p3.use_count();

    //判断是否仅有唯一一个智能指针指向某对象
    if( p3.unique()){
        std::cout << "unique!"<<std::endl;
    }

    //将该shared_ptr置空，并将引用计数-1 
    //若该共享指针是唯一的引用，则reset会将对象释放
    p5.reset();

    //若reset带有参数，则会将该指针指向参数代表对象，可让一空指针重新赋值
    p5.reset(new int(122));


    //get() 返回指向对象的 裸指针
    //这个要慎用，因为获得裸指针后，对象有可能被智能指针释放掉
    int * pint = p3.get();

//交换两个同类型智能指针所指的对象（引用计数不发生改变）
    std::swap(p2,p3);

    p2.swap(p3);

    //将智能指针置空.引用计数-1或释放对象
    p2 = nullptr;
    

    //指定删除器
    //当传入一个数组A[]时，需要一并传入能析构该数组的函数/lambda表达式
    //默认的删除器是操作符 delete
    std::shared_ptr<int> parr(new int[10],mydelfunc);
    //也可以使用lamdba表达式：
    std::shared_ptr<int> parr2(new int[30],[](int *parr){
            delete[] parr;
            });

    //也可以使用内置的删除器，它可以指定要析构的对象类型为数组
    std::shared_ptr<int> parr3(new int[20] ,std::default_delete<int[]>() );

    //删除器只是某种回调函数，它不是智能指针类型的一部分。即上面三个的智能指针类型是相同的


    //对于数组对象，最好的方式是定义指向数组的智能指针，避免了传入额外的删除器：
    std::shared_ptr<int[]> parr_better(new int[30]);
    std::shared_ptr<int[]> parr_better2 = std::make_shared<int[]>(new int[100]);
    







    

    






}

