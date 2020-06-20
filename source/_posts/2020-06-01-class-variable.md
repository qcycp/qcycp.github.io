---
title: Class Variable in Python
abbrlink: 78834cdd
date: 2020-06-01 14:28:44
categories: [Programming, Python]
tags: 
- Python
---
```python
class test(object):
    abc = 1

    @classmethod
    def A(cls):
         cls.abc = 2
         print(cls.abc)

    @classmethod
    def B(cls):
         print(cls.abc)

    def C(cls):
         print(cls.abc) #還沒建立instance前，cls.abc是class variable
         cls.abc = 3    #建立instance variable
         print(cls.abc) #cls.abc是instance variable
```
* sample 1
```python
test.B()         #1
print(test.abc)  #1

test.A()         #2
test.B()         #2
print(test.abc)  #2

obj = test()
obj.A()          #2
obj.C()          #2 3
test.A()         #2
test.B()         #2
print(test.abc)  #2
obj.C()          #3 3
```
* sample 2
```python
obj = test()
obj.C()           #1 3
obj.B()           #1
obj.C()           #3 3

obj = test()
obj.A()           #2
obj.C()           #2 3
obj.B()           #2
obj.C()           #3 3
```
* sample 3
```python
obj = test()
obj.C()           #1 3
obj.B()           #1
obj.C()           #3 3
obj.A()           #2

obj2 = test()
obj2.C()          #2 3
```