---
title: tmp_python_supervisor
abbrlink: 4a5a16
tags:
---
https://www.jianshu.com/p/8ce8fc7077ee  

supervisor只能在python 2.7的環境下執行  
所以，在docker中，不可以將/usr/bin/python連結成python3，否則會產生以下錯誤  

```sh
Attaching to hh_imfr
hh_imfr | Traceback (most recent call last):
hh_imfr |   File "/usr/bin/supervisord", line 5, in <module>
hh_imfr |     from pkg_resources import load_entry_point
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 3241, in <module>
hh_imfr |     @_call_aside
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 3225, in _call_aside
hh_imfr |     f(*args, **kwargs)
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 3254, in _initialize_master_working_set
hh_imfr |     working_set = WorkingSet._build_master()
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 583, in _build_master
hh_imfr |     ws.require(__requires__)
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 900, in require
hh_imfr |     needed = self.resolve(parse_requirements(requirements))
hh_imfr |   File "/usr/local/lib/python3.6/dist-packages/pkg_resources/__init__.py", line 786, in resolve
hh_imfr |     raise DistributionNotFound(req, requirers)
hh_imfr | pkg_resources.DistributionNotFound: The 'supervisor==3.2.0' distribution was not found and is required by the application
hh_imfr exited with code 1
```

```sh
rm /usr/bin/python && \
ln -s /usr/bin/python3.6 /usr/bin/python && \
```

supervisor
===
進程管理工具
可以用來設定要執行的程式

Supervisord requires processes not to run as daemons
Supervisor只能管理在前台運行的程序，所以如果應用程序有後台運行的選項，需要關閉

配置 nodaemon=true
將supervisor在前台運行，默認輸出扔给 docker
默認为false，設定為false的會將supervisor在後台以守護進程運行


http://supervisord.org/running.html
http://liyangliang.me/posts/2015/06/using-supervisor/
http://chenxiaoyu.org/2017/12/12/docker-supervisord-tips/
https://www.restran.net/2015/10/04/supervisord-tutorial/
http://blog.51cto.com/lixcto/1539136
https://www.jianshu.com/p/2a48b2c987e0