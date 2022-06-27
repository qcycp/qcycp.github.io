---
title: tmp_python_supervisor
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