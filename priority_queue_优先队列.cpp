#include <iostream>
#include <algorithm>

#include <queue>

#include<vector>

struct cmp{

    bool operator()(int a , int b){
        return a> b;

    }


};
int main(){


    std::priority_queue<int,std::vector<int> ,cmp>  heap;

    heap.push(2);
    heap.push(2);
heap.push(1);
    heap.push(3);

    std::cout<< heap.top() <<std::endl;
    heap.pop();

    std::cout<< heap.top() <<std::endl;
    heap.pop();



}
