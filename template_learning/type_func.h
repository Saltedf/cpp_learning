#ifndef TEMPL_TYPE_FUNC_H
#define TEMPL_TYPE_FUNC_H


template <typename T>
struct st_interger
{
    static const bool value = false;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<int>
{
    static const bool value = true;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<short>
{
    static const bool value = true;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<long>
{
    static const bool value = true;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<long long >
{
    static const bool value = true;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<unsigned short>
{
    static const bool value = true;
};

// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<unsigned int>
{
    static const bool value = true;
};


// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<unsigned long >
{
    static const bool value = true;
};


// full specialization for template class st_interger
template <> // "full specialization"  mean "template<>" is used 
struct  st_interger<unsigned long long >
{
    static const bool value = true;
};

// value template using constexpr keyword

// constexpr just means compile-time expression , it doesn't mean the variable is constant
// the value of a constexpr expression can be change during compile-time 

#endif // TEMPL_TYPE_FUNC_H 