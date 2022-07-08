---
title: tmp_Cpp_chrono
abbrlink: dba4bf85
tags:
---
chrono using in c++11
===

compile

```bash
nick@ubuntu:~/data/opencv$ g++ main.cpp -o output `pkg-config --cflags --libs opencv`
In file included from /usr/include/c++/5/chrono:35:0,
                 from main.cpp:3:
/usr/include/c++/5/bits/c++0x_warning.h:32:2: error: #error This file requires compiler and library support for the ISO C++ 2011 standard. This support must be enabled with the -std=c++11 or -std=gnu++11 compiler options.
 #error This file requires compiler and library support \
  ^
```

```bash
nick@ubuntu:~/data/opencv$ g++ -std=c++11 main.cpp -o output `pkg-config --cflags --libs opencv`
```

```c++
#include <chrono>
using namespace std::chrono;

auto start = high_resolution_clock::now();
//doing something
auto end = high_resolution_clock::now();
auto duration = duration_cast<microseconds>(end - start);   //microseconds
auto duration = duration_cast<millicroseconds>(end - start);//millicroseconds
cout << duration.count() << endl;
```