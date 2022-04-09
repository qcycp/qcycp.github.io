---
title: python_getrefcount
abbrlink: 4e13bdc
date: 2021-08-26 10:07:50
categories:
tags:
---
https://rushter.com/blog/python-garbage-collector/

```
import sys

foo = []

# 2 references, 1 from the foo var and 1 from getrefcount
print(sys.getrefcount(foo))


def bar(a):
    # 4 references
    # from the foo var, function argument, getrefcount and Python's function stack
    print(sys.getrefcount(a))


bar(foo)
# 2 references, the function scope is destroyed
print(sys.getrefcount(foo))
```