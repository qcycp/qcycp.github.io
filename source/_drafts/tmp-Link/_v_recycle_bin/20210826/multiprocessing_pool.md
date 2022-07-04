```
def task(pid):
    # do something
    return result

if __name__ == "__main__":
    pool = multiprocessing.Pool()
    cpus = multiprocessing.cpu_count()
    results = []

    for i in range(0, cpus):
        result = pool.apply_async(task, args=(i,))
        results.append(result)

    pool.close()
    pool.join()

    for result in results:
        print(result.get())
```

```
def init_worker(X):
    # Using a dictionary is not strictly necessary. You can also
    # use global variables.
    var_dict['X'] = X

def run_ws2(args):
    ws_client = WSClient(args.host, args.rtsp_url, args.source)
    var_dict[args.source] = args.rtsp_url
    ws_client.run()

var_dict = {}

with Pool(processes=len(settings), initializer=init_worker, initargs=(X)) as pool:
    pool.map(run_ws, [setting for setting in settings])

pool.close()
pool.join()
```

```
from multiprocessing import Pool, Manager
from multiprocessing.managers import BaseManager

class SharedEventList(object):
    def __init__(self):
        self.d = {}
        self.d['hahaha'] = list()
        self.d['gogogo'] = list()

    def append(self, source, value):
        self.d[source].append(value)


if __name__ == '__main__':
    BaseManager.register('SharedEventList', SharedEventList)
    manager = BaseManager()
    manager.start()
    event_list = manager.SharedEventList()


    pool = Pool(processes=4)
    for i in range(4):
        pool.apply_async(run_ws, args=(event_list,))
    pool.close()
    pool.join()
```