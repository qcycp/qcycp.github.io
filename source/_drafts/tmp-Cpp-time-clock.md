---
title: tmp_Cpp_time_clock
abbrlink: 9154dd89
tags:
---
```cpp
#include <time.h>

clock_t start, end;
start = clock();
//doing something
end = clock();
cout << 1.0*(end - start)/CLOCKS_PER_SEC*1000 << endl; //millisecond
```