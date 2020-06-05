---
title: Append date time to file
abbrlink: 4228bd6
date: 2020-03-18 10:00:24
categories: [Programming, c++]
tags:
- c++
- Sample code
---
```cpp
#include <iostream>
#include <fstream>
using namespace std;

int main()
{
    time_t rawtime;
    struct tm * timeinfo;
    char buffer[80];

    time (&rawtime);
    timeinfo = localtime(&rawtime);

    strftime(buffer,80,"%Y-%m-%d %H:%M:%S\n",timeinfo);

    ofstream myfile;
    myfile.open("test.txt", ios_base::app);
    myfile << string(buffer);
    myfile.close();

    return 0;
}
```