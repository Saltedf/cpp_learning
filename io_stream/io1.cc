#include<iostream>


int main() {



    double x {} ;

    double y{};



    std::cout << "first operand: " << std::endl; 

    if(!(std::cin >>x )) {
        std::cerr <<"error while reading the first operand " <<std::endl;
        return EXIT_FAILURE;  //其值为1 
    }


    std::cout << "second operand: " <<std::endl; 
    if(!(std::cin >>y) ) {
        std::cerr <<"error while reading the second operand" <<std::endl;
        return EXIT_FAILURE ; 
    }

    
    std::cout <<"x * y = " << x*y <<std::endl;





    return EXIT_SUCCESS ;

    

}
