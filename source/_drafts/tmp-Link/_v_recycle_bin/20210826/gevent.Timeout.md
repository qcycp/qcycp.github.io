```
import gevent
import traceback

if __name__ == '__main__':
    try:
        with gevent.Timeout(1):
            while True:
                gevent.sleep(0.3)
                print("do_something...")
    except gevent.Timeout:
        print("gevent.Timeout")
    except:
        print(traceback.format_exc())
```

```
(venv) user@vm-docker:~$ python app.py
do_something...
do_something...
do_something...
gevent.Timeout
```