---
title: tmp_python_supervisord.conf
abbrlink: 3a64a58b
tags:
---
supervisord.conf of tiangolo/uwsgi-nginx-flask:python3.6
===
```
[supervisord]
nodaemon=true

[program:uwsgi]
command=/usr/local/bin/uwsgi --ini /etc/uwsgi/uwsgi.ini --die-on-term --need-app
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0

[program:nginx]
command=/usr/sbin/nginx
stdout_logfile=/dev/stdout
stdout_logfile_maxbytes=0
stderr_logfile=/dev/stderr
stderr_logfile_maxbytes=0
# Graceful stop, see http://nginx.org/en/docs/control.html
stopsignal=QUIT
```