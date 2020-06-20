---
title: Debug Mode in Python
abbrlink: 641ef2a2
date: 2020-06-05 14:17:54
categories: [Programming, Python]
tags:
- Python
---
```python
if __debug__:
    print "In debug mode"
else:
    print "Not in debug mode"
```
```bash
$ python main.py
In debug mode
$ python -O main.py
Not in debug mode
```