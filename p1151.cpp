#include <iostream>
#include <string>
using namespace std;

int main()
{
    int a = 123456;

    string s = to_string(a);
    cout << s << endl;
    for (int i = 1; i < s.length(); i++)
    {
        cout << s[i] << endl;
    }

    return 0;
}
