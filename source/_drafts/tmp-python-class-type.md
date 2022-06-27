---
title: tmp_python_class_type
tags:
---
python class的三種function
===
[正确理解Python中的 @staticmethod@classmethod方法 - 知乎](https://zhuanlan.zhihu.com/p/28010894)  
[Python's Instance, Class, and Static Methods Demystified – Real Python](https://realpython.com/instance-class-and-static-methods-demystified/)  

1. instance method  
2. class method  
3. static method  

```python
class A(object):
    #不用特別標記，此為instance method
    def m1(self, n):
        print("self:", self)

    @classmethod
    def m2(cls, n):
        print("cls:", cls)

    @staticmethod
    def m3(n):
        pass

a = A()
a.m1(1) # self: <__main__.A object at 0x000001E596E41A90>
A.m2(1) # cls: <class '__main__.A'>
A.m3(1)
```

Variables declared inside the class definition, but not inside a method are class or static variables:
```python
class Data(object):
    count = 0 #count就是一個static variable，可以不用宣告物件，即可直接使用
    
print(Data.count) #0
```