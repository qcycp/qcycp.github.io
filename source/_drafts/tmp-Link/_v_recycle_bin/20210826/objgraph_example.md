```
pip install objgraph
apt-get install xdot
```

```python
import objgraph

if __name__ == "__main__":
    print("********************* objgraph.show_most_common_types() ************************")
    objgraph.show_most_common_types()

    print("********************* objgraph.show_growth(limit=10) ************************")
    objgraph.show_growth(limit=10)

    print("********************* objgraph.show_growth(limit=10) ************************")
    _list = [1, 2, 3]
    objgraph.show_growth(limit=10)

'''
********************* objgraph.show_most_common_types() ************************
function                   1969
dict                       1153
wrapper_descriptor         998
tuple                      976
weakref                    774
method_descriptor          732
builtin_function_or_method 693
getset_descriptor          378
set                        346
list                       299
********************* objgraph.show_growth(limit=10) ************************
function                       1969     +1969
dict                           1081     +1081
wrapper_descriptor              998      +998
tuple                           861      +861
weakref                         774      +774
method_descriptor               732      +732
builtin_function_or_method      693      +693
getset_descriptor               378      +378
set                             346      +346
list                            299      +299
********************* objgraph.show_growth(limit=10) ************************
list      300        +1
'''
```

