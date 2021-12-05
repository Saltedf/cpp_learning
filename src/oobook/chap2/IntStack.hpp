
#define DEFAULT_SIZE 16

class IntStack
{
private:
    int *sp;
    unsigned int count;
    unsigned size;

public:
    IntStack(unsigned int stacksize = DEFAULT_SIZE); //只要显式声明了构造函数，则编译器就不会生成默认无参构造
    IntStack(const IntStack &other);                 //复制构造

    IntStack &operator=(const IntStack &assign);
    ~IntStack();

public:
    int pop();
    void push(int val);
    unsigned int getCount() const;
};
