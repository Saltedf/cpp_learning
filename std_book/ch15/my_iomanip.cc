#include <iostream> 
#include <fstream>
#include <limits>
#include <ios>
#include <iomanip>
#include <string>



template<typename charT , typename traits>
std::basic_istream<charT,traits> &
ignore_line(std::basic_istream<charT ,traits>& s) {


    s.ignore(std::numeric_limits<std::streamsize> ::max() , '\n' ) ;


    return s;
}




int main(){


    std::fstream fs{"./test"};
    if(!fs){
        std::cerr << "cannot open file: " <<std::endl;
    exit(1);
    }


    fs>>ignore_line ;
char buf[128] {};

    fs.getline(buf,128) ;

    std::cout << buf <<std::endl;





}

