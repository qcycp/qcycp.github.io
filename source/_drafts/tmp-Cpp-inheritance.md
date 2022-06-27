---
title: tmp_Cpp_inheritance
tags:
---
C++ inheritance 繼承
===
```
#include 
using namespace std;

class Animal
{
    public:
        virtual void move(){cout << "in Animal\n";} // polymorphism
};

class Dog : public Animal
{
    public:
        void move(){cout << "in Dog: move\n";} //override
        void sleep(){cout << "in Dog: sleep\n";}
};

int main()
{
    Animal *a = new Animal();
    Animal *b = new Dog();
    Dog *c = new Dog();

    a->move();
    b->move();
    c->move();
    //b->sleep(); //error: ‘class Animal’ has no member named ‘sleep’
    c->sleep();

    return 0;
}
```

Result:
in Animal
in Dog: move
in Dog: move
in Dog: sleep