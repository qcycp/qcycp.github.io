---
title: tmp_python_flask_property
abbrlink: 4c5ba8f5
tags:
---
Flask property
===
@property
將一個類方法轉變成一個類屬性
```python
class Person(object):
    def __init__(self, first_name, last_name):
        self.first_name = first_name
        self.last_name = last_name
 
    @property
    def full_name(self):
        return "%s %s" % (self.first_name, self.last_name)
```
```shell
# 可以直接將full_name當作Person的屬性來使用，但不能使用full_name來修改值
>>> person = Person("Mike", "Driscoll")
>>> person.full_name
'Mike Driscoll'
>>> person.first_name
'Mike'
>>> person.full_name = "Jackalope"
Traceback (most recent call last):
  File "", line 1, in 
AttributeError: can't set attribute
```
http:\\seanlin.logdown.com\posts\221362-python-idioms-14-property
https:\\medium.com\bryanyang0528\python-setter-%E5%92%8C-getter-6c08a9d37d46
http:\\python.jobbole.com\80955\