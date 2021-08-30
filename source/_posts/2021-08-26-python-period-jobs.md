---
title: python_period_jobs
abbrlink: 4830199a
date: 2021-08-26 09:49:14
categories:
tags:
---
https://codertw.com/%E7%A8%8B%E5%BC%8F%E8%AA%9E%E8%A8%80/365109/
https://segmentfault.com/a/1190000011084828
http://slark.info/2017/09/07/%E4%BB%8Eapscheduler%E8%B0%88%E5%88%B0%E5%BB%B6%E6%97%B6%E4%BB%BB%E5%8A%A1%E5%A4%84%E7%90%86-%E4%B8%80/

pip install apscheduler

* Scheduler Type
BlockingScheduler：僅可用在當前你的程序之內，與當前的進行共享計算資源
BackgroundScheduler:　在後臺執行排程，不影響當前的系統計算執行
AsyncIOScheduler:　如果當前系統中使用了async module，則需要使用非同步的排程器
GeventScheduler:　如果使用了gevent，則需要使用該排程
TornadoScheduler:　如果使用了Tornado, 則使用當前的排程器
TwistedScheduler:Twister應用的排程器
QtScheduler:　Qt的排程器

* trigger组件
date: 只在某個時間點執行一次
interval: 每隔一段時間執行一次
cron: 使用同linux下crontab的方式

```
APScheduler==3.6.0
pytz==2019.1
six==1.12.0
tzlocal==1.5.1
```

```python
from apscheduler.schedulers.background import BackgroundScheduler
import time
import random

def print_date_time():
    print("new work doing...")
    time.sleep(random.randint(1, 10))
    print(time.strftime("%A, %d. %B %Y %I:%M:%S %p"))

scheduler = BackgroundScheduler()
scheduler.start()

job = scheduler.add_job(func=print_date_time, trigger="interval", seconds=5)
job.remove()

#import atexit
# Shut down the scheduler when exiting the app
#atexit.register(lambda: scheduler.shutdown())
```

```
{"log":"2019-05-29 16:44:49,797 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:44:49 PM\n","stream":"stderr","time":"2019-05-29T08:44:49.798794097Z"}
{"log":"2019-05-29 16:44:49,799 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:44:49.801053894Z"}
{"log":"Execution of job \"print_date_time (trigger: interval[0:00:05], next run at: 2019-05-29 16:44:54 CST)\" skipped: maximum number of running instances reached (1)\n","stream":"stderr","time":"2019-05-29T08:44:54.79513305Z"}
{"log":"2019-05-29 16:44:54,811 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:44:54 PM\n","stream":"stderr","time":"2019-05-29T08:44:54.813206541Z"}
{"log":"2019-05-29 16:44:59,793 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:44:59.795272865Z"}
{"log":"2019-05-29 16:45:03,796 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:45:03 PM\n","stream":"stderr","time":"2019-05-29T08:45:03.798538219Z"}
{"log":"2019-05-29 16:45:04,812 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:45:04.813942546Z"}
{"log":"Execution of job \"print_date_time (trigger: interval[0:00:05], next run at: 2019-05-29 16:45:09 CST)\" skipped: maximum number of running instances reached (1)\n","stream":"stderr","time":"2019-05-29T08:45:09.833079458Z"}
{"log":"2019-05-29 16:45:10,828 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:45:10 PM\n","stream":"stderr","time":"2019-05-29T08:45:10.829141668Z"}
{"log":"2019-05-29 16:45:14,797 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:45:14.798225389Z"}
{"log":"Execution of job \"print_date_time (trigger: interval[0:00:05], next run at: 2019-05-29 16:45:19 CST)\" skipped: maximum number of running instances reached (1)\n","stream":"stderr","time":"2019-05-29T08:45:19.797481515Z"}
{"log":"2019-05-29 16:45:23,800 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:45:23 PM\n","stream":"stderr","time":"2019-05-29T08:45:23.801753502Z"}
{"log":"2019-05-29 16:45:24,791 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:45:24.791963078Z"}
{"log":"Execution of job \"print_date_time (trigger: interval[0:00:05], next run at: 2019-05-29 16:45:29 CST)\" skipped: maximum number of running instances reached (1)\n","stream":"stderr","time":"2019-05-29T08:45:29.810835667Z"}
{"log":"2019-05-29 16:45:34,792 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:45:34 PM\n","stream":"stderr","time":"2019-05-29T08:45:34.792841708Z"}
{"log":"2019-05-29 16:45:34,793 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:45:34.793527943Z"}
{"log":"Execution of job \"print_date_time (trigger: interval[0:00:05], next run at: 2019-05-29 16:45:39 CST)\" skipped: maximum number of running instances reached (1)\n","stream":"stderr","time":"2019-05-29T08:45:39.799708141Z"}
{"log":"2019-05-29 16:45:42,803 - [/app/app/foundation.py:30] - INFO Wednesday, 29. May 2019 04:45:42 PM\n","stream":"stderr","time":"2019-05-29T08:45:42.803948426Z"}
{"log":"2019-05-29 16:45:44,793 - [/app/app/foundation.py:28] - INFO new work doing...\n","stream":"stderr","time":"2019-05-29T08:45:44.793580805Z"}
```