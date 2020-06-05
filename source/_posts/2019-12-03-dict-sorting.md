---
title: dict sorting
abbrlink: 3932c779
date: 2019-12-03 11:07:07
categories: [Programming, python]
tags:
- python
- Sample code
---
```python
from collections import OrderedDict

if __name__ == '__main__':
    d = {2: 3, 1: 89, 4: 5, 3: 0}

    #sort by key
    od = OrderedDict(sorted(d.items(), key=lambda t: t[0])) # od = OrderedDict([(1, 89), (2, 3), (3, 0), (4, 5)])

    #sort by value
    od = OrderedDict(sorted(d.items(), key=lambda t: t[1])) # od = OrderedDict([(3, 0), (2, 3), (4, 5), (1, 89)])

    list = sorted(d.items()) # list = [(1, 89), (2, 3), (3, 0), (4, 5)]
                             # items in list are tuple
```