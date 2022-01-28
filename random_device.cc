
#include <iostream>

#include <random>


int main(){



     std::random_device rd ;

     std::cout <<std::mt19937::state_size <<std::endl;
    std::cout << rd.min() <<std::endl;
    std::cout << rd.max() << std::endl;


    std::cout <<std::endl;
    for( int i = 0 ;i<10 ;i++){
    std::cout << rd() <<std::endl;
    }



}
