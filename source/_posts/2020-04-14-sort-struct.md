---
title: Sort with structs
abbrlink: '4294109'
date: 2020-04-14 16:51:56
categories: [Programming, C++]
tags:
- C++
---
針對struct內的某個欄位，進行sort
```cpp
#include <iostream>
#include <algorithm>
#include <limits.h>
using namespace std;

typedef struct Person {
    Person() : name(""),  age(INT_MAX) {}
    string name;
    int age;
    bool operator<(const Person& rhs) const
    {
        return age < rhs.age;
    }
} Person;

int main()
{
    Person *data = new Person[4];
    data[0].name = "Nick"; data[0].age = 37;
    data[1].name = "John"; data[1].age = 45;
    data[2].name = "Mary"; data[2].age = 20;

    cout << data[0].name << ": " << data[0].age << endl;
    cout << data[1].name << ": " << data[1].age << endl;
    cout << data[2].name << ": " << data[2].age << endl;

    sort(data, data+3);

    cout << data[0].name << ": " << data[0].age << endl;
    cout << data[1].name << ": " << data[1].age << endl;
    cout << data[2].name << ": " << data[2].age << endl;

    sort(data, data+3, [](Person a, Person b){ return a.age > b.age; });

    cout << data[0].name << ": " << data[0].age << endl;
    cout << data[1].name << ": " << data[1].age << endl;
    cout << data[2].name << ": " << data[2].age << endl;

    return 0;
}
```

```bash
Nick: 37
John: 45
Mary: 20

Mary: 20
Nick: 37
John: 45

John: 45
Nick: 37
Mary: 20
```