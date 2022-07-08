---
title: tmp_python_list_copy
abbrlink: 61ddd20b
tags:
---
To avoid RuntimeError: dictionary changed size during iteration"
===

```python
for cid in cls.pads:
    if cls.pads[cid]['screen_token'] == pad:
        cls.pads.pop(cid)
```

changes to 

```python
for cid in cls.pads.copy():
    if cls.pads[cid]['screen_token'] == pad:
        cls.pads.pop(cid)
```