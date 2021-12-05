#include <iostream>
#include <fstream>


int main(){

    using namespace std;
    
    fstream f("./test");
    cout<< f.good()<<endl;


    return 0;

}
