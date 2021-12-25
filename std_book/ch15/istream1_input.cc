
#include <ios>
#include<limits>
#include <fstream> 
#include <iostream> 
#include <cstdlib>
#include <string>
#include <unistd.h>


int main(int argc , char** argv) {


    std::fstream fs{argv[1]} ;
    if(!fs) {
        std::cerr << "cannot open file " << std::endl;
        return EXIT_FAILURE;
    }

    int get_ch{} ;

    get_ch = fs.get() ; //返回int ,因为可能返回-1 = EOF 
    if(get_ch == EOF ) {
        std::cout << "EOF" <<std::endl;
    }
    std::cout << static_cast<char> (get_ch) << std::endl; 
    get_ch = fs.peek(); //只查看下一个待读取字符，不消耗（不移动指针）；返回int ,EOF 
    if(get_ch == EOF){
        std::cout << "EOF:peek()" << std::endl;
    }
    std::cout << static_cast<char> (get_ch) << std::endl;

    char ch;
   if( !fs.get(ch)) {

       std::cout << "error: fs.get(char&) " <<std::endl;
   }

   std::cout << ch << std::endl;

   if(!fs.unget()) {
       std::cout <<"unget()失败 " <<std::endl;
   }

   if(!fs.putback(ch) ) {
       std::cout <<"fs.putback()的不是最近被取出的字符" << std::endl;
   }



   char str_buf[128] ;

   //读入C风格字符串
   fs.get(str_buf ,10, '#') ; //不读更不存

   //读入由特定字符分割的C风格的字符串
   fs.getline(str_buf,10, '#'); //读但不存 


   //读取N个字符构成的字符序列 无尾零
   fs.read(str_buf,10); //读到EOF 则出错：failbit+eofbit
   std::cout << "fs.read()-> "<<  fs.gcount() << std::endl;

   int nread = fs.readsome(str_buf , 10); //读到EOF不算出错：不设置 eofbit 和 failbit



   


//ignore : 消耗并丢弃

   //fs.ignore(1) //忽略一个字符

   //忽略本行剩余部分 ,包含分割符 '\n' 
   fs.ignore(std::numeric_limits<std::streamsize>::max() ,'\n') ;

   //忽略掉剩余部分
   fs.ignore(std::numeric_limits<std::streamsize>::max() ) ;




    




    return EXIT_SUCCESS ; 

}
