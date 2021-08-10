---
title: python note
abbrlink: 2a024bae
date: 2021-06-24 19:28:19
categories: [Programming, Python]
tags:
- Python
---
* dec to hex string，若少於 2 位數，補 0
hex ='{:02x}'.format(A)

* dec to bin string，若少於 16 位數，補 0 
bin ='{:016b}'.format(B)

* bin string to 2'sc
```python
def two2dec(s):
    if s[0] == '1':
        return -1 * (int(''.join('1' if x == '0' else '0' for x in s), 2) + 1)
    else:
        return int(s, 2)
```