
#include <chrono>
#include <iostream>
#include <sstream>
#include <locale>
#include <iomanip>

int main()
{
    std::tm t = {};


    auto now = std::chrono::system_clock::now() ;
    time_t tt = std::chrono::system_clock::to_time_t(now) ;
    localtime_r(&tt , &t);


    std::cout << std::put_time(&t , "date: %x \ntime: %X" ) <<std::endl;



    std::cout << "============================" << std::endl;

    std::tm date;

    std::cout << "date: " ;
    std::cin >> std::get_time(&date,"%x");
    if(std::cin){
        std::cout << std::put_time(&date , "date: %x " ) <<std::endl;

    }





    return EXIT_SUCCESS;


}
