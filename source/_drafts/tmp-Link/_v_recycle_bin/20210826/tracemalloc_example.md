https://tech.buzzfeed.com/finding-and-fixing-memory-leaks-in-python-413ce4266e7d
https://docs.python.org/3/library/tracemalloc.html

```
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