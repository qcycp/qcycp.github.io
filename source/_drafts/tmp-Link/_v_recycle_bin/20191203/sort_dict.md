sort dict by keys
```python
from collections import OrderedDict
sort_data=OrderedDict(sorted(unsort_data.items(), key=lambda t: t[0]))
```

sort a list of dictionaries by a value of the dictionary
```
newlist = sorted(list_to_be_sorted, key=lambda k: k['name'])
```

```sh
In [1]: import collections

In [2]: d = {2:3, 1:89, 4:5, 3:0}

In [3]: od = collections.OrderedDict(sorted(d.items()))

In [4]: od
Out[4]: OrderedDict([(1, 89), (2, 3), (3, 0), (4, 5)])

In [5]: for k, v in od.items(): print(k, v)
1 89
2 3
3 0
4 5
```