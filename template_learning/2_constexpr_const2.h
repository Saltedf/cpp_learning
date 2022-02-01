#pragma once

const int n = 10;

// The function of "extern" is to share variables defined in some translate units with other translate units using a common header file
extern const int kShared; // kShared is defined in other translate unit (i.e. another cpp files)

//extern constexpr int x ;
constexpr int x = 22;
// constexpr does not allow sharing of variables between multiple translate unit (cpp files)