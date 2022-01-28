
#include <iostream>
#include <cstdio>
class Father {
public:
     void test() { printf("Father\n"); }
     void normalVirtual() { printf("1 "); test(); }
     ~Father() { test(); }
};

class Child : public Father{
public:
    void test() { printf("Child\n"); }
    void normalVirtual() { printf("2 "); test(); }
    ~Child() { test(); }
};

int main() {
    Father *f = new Child;
    f->normalVirtual();
    delete f;
}

