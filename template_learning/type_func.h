#ifndef TEMPL_TYPE_FUNC_H
#define TEMPL_TYPE_FUNC_H

template <typename T>
struct st_interger
{
    static const bool value = false;
    // "type" is not defined here
    // Aim to distinguish types that are not integer
    // st_interger<non-interger> will therefore not be able to match the template "is_integer<T>"
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<int>
{
    static const bool value = true;
    using type = int;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<short>
{
    static const bool value = true;
    using type = short;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<long>
{
    static const bool value = true;
    using type = long;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<long long>
{
    static const bool value = true;
    using type = long long;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<unsigned short>
{
    static const bool value = true;
    using type = unsigned short;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<unsigned int>
{
    static const bool value = true;
    using type = unsigned int;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<unsigned long>
{
    static const bool value = true;
    using type = unsigned long;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used
struct st_interger<unsigned long long>
{
    static const bool value = true;
    using type = unsigned long long;
};

// value template using constexpr keyword

// constexpr just means compile-time expression , it doesn't mean the variable is constant
// the value of a constexpr expression can be change during compile-time
template <typename T>
constexpr bool is_interger = st_interger<T>::value;

// "type function" --
template <typename T>
using interger_t = typename st_interger<T>::type;

// Determine whether two types are the same.
template <typename T, typename S> // primary class template
struct st_same_type
{
    static const bool value = false;
};

// partial speciailization
// It means we still need to pass in template parameters ,but usually less
template <typename T>
struct st_same_type<T, T>
{
    static const bool value = true;

    using type = T;
    // Only define "type" in this template,since both types are the same at this point .
};

// value template
template <typename T, typename S>
constexpr bool is_same_v = st_same_type<T, S>::value;

// type alias -- using XX = typename ...
template <typename T, typename S>
using same_t = typename st_same_type<T, S>::type; // The keyword "typename" here is to indicate that " ::type" is a type.

// primary template : st_enable_true
template <bool Test, typename RetType = void>
struct st_enable_true
{
    static const bool value = Test;
};

// partial specialization:
// when the bool value Test is true, the member "type" is defined.
template <typename RetType>
struct st_enable_true<true, RetType>
{
    static const bool value = true;
    using type = RetType;
};

template <bool Test, typename RetType>
using enable_true_t = typename st_enable_true<Test, RetType>::type;

#endif // TEMPL_TYPE_FUNC_H