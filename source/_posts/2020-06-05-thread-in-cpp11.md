---
title: thread in c++11
abbrlink: f5b96866
date: 2020-06-05 14:24:58
categories: [Programming, c++]
tags:
- c++
---
On GCC, compile with -std=c++0x -pthread

```c++
#include <string>
#include <iostream>
#include <thread>

using namespace std;

// The function we want to execute on the new thread.
void task1(string msg)
{
    cout << "task1 says: " << msg;
}

int main()
{
    // Constructs the new thread and runs it. Does not block execution.
    thread t1(task1, "Hello");

    // Do other things...

    // Makes the main thread wait for the new thread to finish execution, therefore blocks its own execution.
    t1.join();
}
```