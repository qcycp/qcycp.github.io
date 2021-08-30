---
title: python_pympler
abbrlink: de31b74d
date: 2021-08-26 09:48:21
categories:
tags:
---
https://pypi.org/project/Pympler/

https://stackoverflow.com/questions/47447270/how-to-find-the-largest-objects-in-memory
https://pythonhosted.org/Pympler/muppy.html
https://buildmedia.readthedocs.org/media/pdf/pympler/latest/pympler.pdf

```
from pympler import summary, muppy

def memory_summary1():
    mem_summary = summary.summarize(muppy.get_objects())
    rows = summary.format_(mem_summary)
    return '\n'.join(rows)

print(memory_summary1())
```

```
from pympler import tracker
from operator import itemgetter

def memory_summary2():
    mem = tracker.SummaryTracker()
    for item in sorted(mem.create_summary(), reverse=True, key=itemgetter(2)):
        print("%s" % (item,))

memory_summary2()
```