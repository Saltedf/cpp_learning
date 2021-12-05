#include <iostream>
#include <chrono>
#include <thread>
#include <cstdio>


void  raw_using(){

using namespace std::literals::chrono_literals; //可以直接写 Xs

    auto start = std::chrono::high_resolution_clock::now(); //高精度时间 high_resolution_clock

    std::this_thread::sleep_for(1s); //休眠1s

    auto end = std::chrono::high_resolution_clock::now();

    std::cout<<  typeid(end).name() <<std::endl;

    std::chrono::duration<double> dur = (end - start);

    std::cout << dur.count()<< "s"<< std::endl;


    std::cin.get();

}

//自动计时器
class Timer{

    std::chrono::high_resolution_clock::time_point  start ,end;

    std::chrono::duration<double> during;
    
    public:
        Timer(){
           start = std::chrono::high_resolution_clock::now();
        }

        ~Timer(){

            end = std::chrono::high_resolution_clock::now();
            during = end - start ;
            double toms = during.count()*1000.0;
            printf("%lfms\n",toms);

        } 
} ;

int main(){


    Timer timer;



    return 0;

}
