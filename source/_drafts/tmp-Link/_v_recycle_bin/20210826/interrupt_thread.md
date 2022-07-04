[Python強制關閉執行緒](https://www.itread01.com/content/1546799768.html)
http://stackoverflow.com/questions/323972/is-there-any-way-to-kill-a-thread-in-python

```python
import threading
import time
import inspect
import ctypes

def _async_raise(tid, exctype):
    """raises the exception, performs cleanup if needed"""
    tid = ctypes.c_long(tid)
    if not inspect.isclass(exctype):
        exctype = type(exctype)
    res = ctypes.pythonapi.PyThreadState_SetAsyncExc(tid, ctypes.py_object(exctype))
    if res == 0:
        raise ValueError("invalid thread id")
    elif res != 1:
        # """if it returns a number greater than one, you're in trouble,
        # and you should call it again with exc=NULL to revert the effect"""
        ctypes.pythonapi.PyThreadState_SetAsyncExc(tid, None)
        raise SystemError("PyThreadState_SetAsyncExc failed")

def stop_thread(thread):
    _async_raise(thread.ident, SystemExit)

class TestThread(threading.Thread):
    def run(self):
        print("begin")
        while True:
            time.sleep(0.1)
        print("end")

if __name__ == "__main__":
    t = TestThread()
    t.start()
    time.sleep(1)
    stop_thread(t)
    print("stoped")
```
