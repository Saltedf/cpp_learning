
#include <iostream>
#include <fstream>

#include <string>
#include <streambuf>



int main(int argc , char ** argv) {


    std::fstream fs{argv[1]};
    if(!fs) {
        exit(1);
    }

    fs.sync_with_stdio(false) ;

 auto buff =    fs.rdbuf();

 std::cout << fs.rdbuf() ; 
 std::cout << "=============\n" ;

 std::cout <<  buff->in_avail()  << std::endl;

 std::string s = "helloworld" ;
 buff->sputn(s.c_str() ,10) ;

 std::cout <<  buff->in_avail()  << std::endl;






    return 0;
}
