[psutil documentation](https://psutil.readthedocs.io/en/release-2.2.1)

```python
import psutil

@imfr_bp.route('/system/info', methods=['GET'])
def imfr_system_info():
    ret = {}
    try:
        ret['cpu_core'] = psutil.cpu_count(logical=True)
        ret['cpu_usage'] = psutil.cpu_percent()
        ret['mem_total'] = float(psutil.virtual_memory().total/(1024.0*1024))
        ret['mem_available'] = float(psutil.virtual_memory().available/(1024.0*1024))

        ret['imfr'] = {}
        pids = psutil.pids()
        for pid in pids:
            process = psutil.Process(pid)
            name = process.name()
            if name == 'python3.6':
                ret['imfr']['threads'] = len(process.threads())
                ret['imfr']['cpu_usage'] = float(process.cpu_percent(interval=1))
                ret['imfr']['mem_usage'] = float(process.memory_info().rss/(1024.0*1024.0))
                break
    except:
        logging.error(traceback.format_exc())
        return error_result(ErrorCode.ERROR_UNKNOWN)

    return success_result(ret)
```

```sh
user@vm-docker:$ curl -X GET http://192.168.56.3:5074/api/system/info
{
	"code": 0,
	"data": {
		"cpu_core": 4,
		"cpu_usage": 0.7,
		"imfr": {
			"cpu_usage": 0.0,
			"mem_usage": 61.76953125,
			"threads": 5
		},
		"mem_available": 1270.5234375,
		"mem_total": 1999.765625
	}
}
```