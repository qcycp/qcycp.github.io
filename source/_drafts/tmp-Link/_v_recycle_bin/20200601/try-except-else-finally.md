```
try:
    print("Normal execution block")
except A:
    print("Exception A handle")
except B:
    print("Exception B handle")
except:
    print("Other exception handle")
else:
    print("if no exception, get here")
finally:
    print("finally")
```