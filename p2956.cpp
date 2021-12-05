
#include <iostream>
#include<cstring>


using namespace std;


int field[240][240];

int main(){
    
    memset(field ,0,sizeof(field));
    int m,n,cnt;

    int x,y,a,b,ret = 0;

    cin>>m>>n>>cnt;

    for(int i = 1;i<=cnt;++i){
        cin>>x>>y;
        cin>>a>>b;

        int startx,starty;
        int endx,endy;

        startx = x<a?x:a;
        starty = y<b?y:b;

        endx = x<a?a:x;
        endy = y<b?b:x;

        for(int k = startx -1;k<endx;k++){
            for(int l = starty-1;l<endy;l++){
                 if( field[k][l] != 1){
                     field[k][l] = 1;
                     ret ++;
                 }
            }
        }
    }


    cout<<ret;

    return 0;

}





