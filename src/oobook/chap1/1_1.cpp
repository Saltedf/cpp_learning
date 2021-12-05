#include <iostream>

/*
面向过程：将问题解决转化为函数
1 将问题分解成几个部分
2 设计数据结构保存数据
3 实现函数来操作这些数据结构

其中的核心在于数据结构，它在整个进程执行过程中不断改变。

*/
//例子：银行账户：

typedef unsigned long AccountNum;
//对外的操作接口
bool makeDesposit(AccountNum whichAccount, float amount);
float withDraw(AccountNum whichAccount, float amount);
bool transfer(AccountNum from, AccountNum to, float amount);

//创建数据结构来对核心对象进行抽象
typedef struct account
{
    char *name;
    AccountNum accountId;
    float balance;
    float interestYear; //利息年份
    char accountType;   //账户类型：存款 支票 贷款
} Account;

//创建该数据结构对应的实体对象：
AccountNum createAccount(const char *name, char type);
//对该数据结构进行操作
void printAccount(Account acc);
/*
到这里有三个问题：
没有满足最终用户的需要：存款和利息的查看
任何人都能通过上面的函数创建一个账户，有安全问题
扩展性问题：printAccount等根据不同账户类型完成不同操作的函数，若增加、修改、删除账户类型，则这些所有函数都要随之变动

面向对象的思想着重于数据结构，而不是函数
先设计出核心概念所包含的字段
再考虑要对此数据类型进行哪些操作。
并且数据和函数被绑定在一块，数据对外隐藏
*/

class BankAccount
{
private: // 数据封装
    float balance;
    float interestYear;
    char *owner;
    int accountNum;

public: //提供给包含他的类/外部
    void makeDesposit(float amount);
    float withdraw();
    bool transfer(BankAccount &dest, float amount);
    float getBalance();
};

void BankAccount::makeDesposit(float amount)
{
    if (amount > 0.0)
    {
        this->balance += amount;
    }
}

int main()
{

    return 0;
}