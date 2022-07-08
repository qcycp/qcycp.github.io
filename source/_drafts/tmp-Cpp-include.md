---
title: tmp_Cpp_include
abbrlink: bc48919f
tags:
---
兩個文件互相include
===
VC2008下編譯

error C2143: 語法錯誤 : 遺漏 ';' (在 '*' 之前)
error C4430: 遺漏型別規範 - 假設為 int。注意: C++ 不支援 default-int
error C4430: 遺漏型別規範 - 假設為 int。注意: C++ 不支援 default-int

網路上查找了一下，在csdn上找到解決方法如下

有關互相include時的錯誤寫法為
//a.h
//class A
#include "b.h"
class A {
    ....
    B* m_b;
}

//b.h
//class B
#include "a.h"
class B {
    ....
    A* m_a;
}

而正確的寫法應該是這樣 :
//a.cpp
#include "a.h"
#include "b.h"
.......
//a.h
//class A
class B;
class A {
    ....
    B* m_b;
}

// b.cpp
#include "a.h"
#include "b.h"
............
//b.h
//class B
```
class A;
class B {
    ......
    A* m_a;
}
```