#include <map>
#include <algorithm>
#include <utility>
#include <cctype>
#include <iostream>

size_t duplicateCount(const char *in)
{
    size_t count{};
    std::map<char, int> m;
    std::string input{in};
    std::transform(input.begin(), input.end(), input.begin(), tolower);
    for (char ch : input)
    {
        m[ch] += 1;
    }

    for (auto &e : m)
    {
        if (e.second > 1)
            ++count;
    }
    return count;
}

int main()
{
    std::cout << duplicateCount("aabBc") << "\n";
    return 0;
}
