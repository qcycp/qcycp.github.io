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


test1.B()         #1
print(test1.abc)  #1

test1.A()         #2
test1.B()         #2
print(test1.abc)  #2

obj = test1()
obj.A()           #2
obj.C()           #2 3
test1.A()         #2
test1.B()         #2
print(test1.abc)  #2
obj.C()           #3 3
```

```
class test1(object):
    abc = 1

    @classmethod
    def A(cls):
         cls.abc = 5
         print(cls.abc)

    @classmethod
    def B(cls):
         print(cls.abc)

    def C(cls):
         print(cls.abc)
         cls.abc = 3
         print(cls.abc)

obj = test1()
obj.C()           #1 3
obj.B()           #1
obj.C()           #3 3

obj = test1()
obj.A()           #5
obj.C()           #5 3
obj.B()           #5
obj.C()           #3 3
```

```
class test1(object):
    abc = 1

    @classmethod
    def A(cls):
         cls.abc = 5
         print(cls.abc)

    @classmethod
    def B(cls):
         print(cls.abc)

    def C(cls):
         print(cls.abc)
         cls.abc = 3
         print(cls.abc)

obj = test1()
obj.C()           #1 3
obj.B()           #1
obj.C()           #3 3
obj.A()           #5

obj2 = test1()
obj2.C()           #5 3
```