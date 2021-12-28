#include <iostream>
#include <string>
#include <fstream>
#include <limits>



class ignore_lines {
    private:
        int num_;

    public:
        ignore_lines(int num)
        : num_(num) {}

template<typename charT ,typename traits>
        friend std::basic_iostream<charT,traits>& 
            operator>> (std::basic_iostream<charT,traits>& ins, const ignore_lines& ig){
                for(int i = 0;i<ig.num_ ; i++) {
                    ins.ignore(std::numeric_limits<std::streamsize>::max() , ins.widen('\n') );
                }
                return ins;
            }

        
};


int main(){

    std::fstream fs{"test"};

    if(!fs){
        exit(1);
    }

    char buf[128];

    fs>>ignore_lines(2);
    fs.getline(buf ,128) ;

    std::cout << buf << std::endl;







}
