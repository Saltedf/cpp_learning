
#include <ios>
#include <iostream>
#include <fstream>
#include <limits>

#include<string>


int main(int argc , char** argv) {



    char put_ch = '@' ;

    std::cout.put(put_ch) ;

    char buf[4] ;
    buf[0] = 'a';
    buf[1] = 0;
    buf[2] = 'c' ;
    buf[3] = 'd';

    std::cout.write(buf,4) ;

    std::cout.flush() ;














    return 0;
}
