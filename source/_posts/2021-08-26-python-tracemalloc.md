---
title: python_tracemalloc
abbrlink: 2b4c1538
date: 2021-08-26 10:09:02
categories:
tags:
---
https://stackoverflow.com/questions/50148554/when-would-the-python-tracemalloc-module-allocations-statistics-not-match-whats
https://superuser.blog/detect-memory-leak-python/
https://docs.python.org/3/library/tracemalloc.html
https://blog.louie.lu/2017/08/04/tracemalloc-python-standard-library-09/

The PYTHONTRACEMALLOC environment variable (PYTHONTRACEMALLOC=NFRAME) and the -X tracemalloc=NFRAME command line option can be used to start tracing at startup.

```
import psutil
import linecache
import os
import tracemalloc
import threading
import sys
import time

def MonitorMemory():
    def display_top(snapshot, key_type='lineno', limit=1):
        top_stats = snapshot.statistics(key_type)

        print("Top %s lines" % limit)
        for index, stat in enumerate(top_stats[:limit], 1): 
            frame = stat.traceback[0]
            # replace "/path/to/module/file.py" with "module/file.py"
            filename = os.sep.join(frame.filename.split(os.sep)[-2:])
            print("#%s: %s:%s: %.1f KiB"
                  % (index, filename, frame.lineno, stat.size / 1024))
            line = linecache.getline(frame.filename, frame.lineno).strip()
            if line:
                print('   %s' % line)

        other = top_stats[limit:]
        if other:
            size = sum(stat.size for stat in other)
            print("%s other: %.1f KiB" % (len(other), size / 1024))
        #total = sum(stat.size for stat in top_stats)
        #print("Total allocated size: %.1f KiB" % (total / 1024))

    snapshot = tracemalloc.take_snapshot()
    display_top(snapshot)
    python_memory = tracemalloc.get_traced_memory()
    print("Python Memory Usage current:%.2f MB, peak:%.2f MB" % (python_memory[0]/2**20, python_memory[1]/2**20))
    print("Process Memory Usage: %s MB" % (psutil.Process().memory_info().rss / 2**20))

# Simulate memory allocate by creating bytes
EMPTY_BYTES_SIZE = sys.getsizeof(b'')
def allocate_bytes(size):
    bytes_len = (size - EMPTY_BYTES_SIZE)
    return b'x' * bytes_len

if __name__ == "__main__":
    tracemalloc.start()
    MonitorMemory()

    a = allocate_bytes(100 * 1024 * 1024)
    MonitorMemory()

    time.sleep(5)

    b = allocate_bytes(100 * 1024 * 1024)
    MonitorMemory()
    time.sleep(5)

    del a
    MonitorMemory()

    time.sleep(5)

    del b
    MonitorMemory()
```

result
```
(venv) user@vm-docker:~/tracemalloc$ python3.6 app.py
Top 1 lines
#1: app.py:10: 0.1 KiB
   def display_top(snapshot, key_type='lineno', limit=1):
Total allocated size: 0.1 KiB
Process Memory Usage: 11.890625 MB

Top 1 lines
#1: app.py:39: 102400.0 KiB
   return b'x' * bytes_len
42 other: 22.8 KiB
Total allocated size: 102422.8 KiB
Process Memory Usage: 111.921875 MB

Top 1 lines
#1: app.py:39: 204800.0 KiB
   return b'x' * bytes_len
48 other: 28.4 KiB
Total allocated size: 204828.4 KiB
Process Memory Usage: 211.6953125 MB

Top 1 lines
#1: app.py:39: 102400.0 KiB
   return b'x' * bytes_len
48 other: 32.4 KiB
Total allocated size: 102432.4 KiB
Process Memory Usage: 111.93359375 MB

Top 1 lines
#1: python3.6/tracemalloc.py:65: 9.7 KiB
   return (self.size, self.count, self.traceback)
47 other: 26.2 KiB
Total allocated size: 35.9 KiB
Process Memory Usage: 11.93359375 MB
```

* Example
https://tech.buzzfeed.com/finding-and-fixing-memory-leaks-in-python-413ce4266e7d
https://docs.python.org/3/library/tracemalloc.html

```python
import linecache
import os
import tracemalloc

def allocate_bytes(size):
    return b'x' * size

def display_top(key_type='lineno', limit=10):
    snapshot = tracemalloc.take_snapshot()
    top_stats = snapshot.statistics(key_type)

    print("Top %s lines" % limit)
    for index, stat in enumerate(top_stats[:limit], 1):
        frame = stat.traceback[0]
        # replace "/path/to/module/file.py" with "module/file.py"
        filename = os.sep.join(frame.filename.split(os.sep)[-2:])
        print("#%s: %s:%s: %.1f KiB" % (index, filename, frame.lineno, stat.size / 1024))
        line = linecache.getline(frame.filename, frame.lineno).strip()
        if line:
            print('    %s' % line)
    total = sum(stat.size for stat in top_stats)
    print("Total allocated size: %.1f KiB" % (total / 1024))

if __name__ == "__main__":
    tracemalloc.start()
    a = allocate_bytes(100*1024*1024)
    display_top()
    print("==============================================")
    b = allocate_bytes(100*1024*1024)
    display_top()

    '''
    #case 1: Get the traceback of a memory block
    tracemalloc.start(25)

    a = allocate_bytes(100*1024*1024)

    snapshot = tracemalloc.take_snapshot()
    top_stats = snapshot.statistics('traceback')

    # pick the biggest memory block
    stat = top_stats[0]
    print("%s memory blocks: %.1f KiB" % (stat.count, stat.size / 1024))
    for line in stat.traceback.format():
        print(line)
    '''

    '''
    #case 2: Display the top 10
    tracemalloc.start()

    a = allocate_bytes(100*1024*1024)

    snapshot = tracemalloc.take_snapshot()
    top_stats = snapshot.statistics('lineno') #'filename'

    for stat in top_stats[:10]:
        print(stat)
    '''

    '''
    #cae 3: Compute differences
    tracemalloc.start()

    snapshot1 = tracemalloc.take_snapshot()
    a = allocate_bytes(100*1024*1024)
    snapshot2 = tracemalloc.take_snapshot()

    top_stats = snapshot2.compare_to(snapshot1, 'lineno')

    for stat in top_stats[:10]:
        print(stat)
    '''
```

```
#result 1:
Top 10 lines
#1: app.py:6: 102400.0 KiB
    return b'x' * size
Total allocated size: 102400.0 KiB
==============================================
Top 10 lines
#1: app.py:6: 204800.1 KiB
    return b'x' * size
#2: python3.6/linecache.py:137: 6.0 KiB
    lines = fp.readlines()
#3: python3.6/linecache.py:47: 0.8 KiB
    return updatecache(filename, module_globals)
#4: python3.6/tracemalloc.py:497: 0.7 KiB
    grouped = self._group_by(key_type, cumulative)
#5: python3.6/tokenize.py:431: 0.6 KiB
    encoding = find_cookie(first)
#6: python3.6/tokenize.py:454: 0.6 KiB
    encoding, lines = detect_encoding(buffer.readline)
#7: python3.6/linecache.py:136: 0.5 KiB
    with tokenize.open(fullname) as fp:
#8: python3.6/linecache.py:16: 0.5 KiB
    lines = getlines(filename, module_globals)
#9: python3.6/tokenize.py:423: 0.5 KiB
    first = read_or_stop()
#10: app.py:10: 0.5 KiB
    top_stats = snapshot.statistics(key_type)
Total allocated size: 204815.3 KiB
```

```
#result 2:
1 memory blocks: 102400.0 KiB
  File "app.py", line 6
    return b'x' * size
  File "app.py", line 37
    a = allocate_bytes(100*1024*1024)
```

```
#result 3:
app.py:6: size=100 MiB, count=1, average=100 MiB
```

```
#result 4:
app.py:6: size=100 MiB (+100 MiB), count=1 (+1), average=100 MiB
/usr/lib/python3.6/tracemalloc.py:387: size=96 B (+96 B), count=2 (+2), average=48 B
/usr/lib/python3.6/tracemalloc.py:524: size=56 B (+56 B), count=1 (+1), average=56 B
/usr/lib/python3.6/tracemalloc.py:281: size=40 B (+40 B), count=1 (+1), average=40 B
```