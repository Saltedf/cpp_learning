#include <iostream>
#include <cstring>

using namespace std;

int main(){

    int buket[42];
    memset(buket,0,sizeof(buket) );

    int num ,ret = 0;
    for(int i = 1;i<=10 ;++i){

        cin>> num;
        buket[num%42] =1;
    }
    for(int j = 0;j<42;j++)
        if(buket[j] == 1)
            ret++;


    cout << ret<<endl;
    return 0;

}

