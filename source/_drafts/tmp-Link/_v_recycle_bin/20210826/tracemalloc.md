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