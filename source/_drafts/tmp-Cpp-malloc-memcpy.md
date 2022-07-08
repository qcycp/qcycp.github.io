---
title: tmp_Cpp_malloc_memcpy
abbrlink: 5d1e4888
tags:
---
malloc與memcpy
===

int a[10] = {...};
int b[10];
int *c = (int*)malloc(sizeof(a));

memcpy(b, a, sizeof(a)); //OK
memcpy(c, a, sizeof(a)); // ERROR

c的空間是用malloc宣告出來的，所以會不連續
用memcpy的方式將a的記憶體內容copy給c時，並無法達到預期的效果