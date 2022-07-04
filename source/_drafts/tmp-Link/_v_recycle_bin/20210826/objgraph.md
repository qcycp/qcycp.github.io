https://pypi.org/project/graphviz/
https://pypi.org/project/objgraph/

```
import objgraph

for typ, n in objgraph.most_common_types(limit=None):
    print('{typ:30} {n:>10}'.format(typ=typ, n=n))

for info in objgraph.growth(limit=None):
    print('+++ %s',  (info,))

print("leaking_objects: %s" % len(objgraph.get_leaking_objects()))
```