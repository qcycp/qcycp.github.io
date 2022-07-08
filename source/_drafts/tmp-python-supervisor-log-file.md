---
title: tmp_python_supervisor_log_file
abbrlink: 487663c7
tags:
---
supervisor log file
===
supervisord.conf
```
[supervisord]
logfile=\var\log\supervisor\supervisord.log
logfile_maxbytes=1KB
logfile_backups=10loglevel=info
nodaemon=true

[program:nginx]
command=\usr\sbin\nginx
stdout_logfile = \var\log\supervisor\nginx_stdout.log
stderr_logfile = \var\log\supervisor\nginx_stderr.log


[program:gunicorn]
directory=\app\wrapper
command=gunicorn -w 1 -k gevent -b localhost:5000 main:app

stdout_logfile_maxbytes = 50MB
stdout_logfile_backups = 10stdout_logfile = \var\log\supervisor\wrapper_stdout.log
stderr_logfile_maxbytes = 50MB
stderr_logfile_backups = 10stderr_logfile = \var\log\supervisor\wrapper_stderr.log
```
將log都導到stdout\stderr
```
[supervisord]logfile=\dev\stdout
logfile_maxbytes=0nodaemon=true

[program:nginx]
command=\usr\sbin\nginx
stdout_logfile_maxbytes = 0stdout_logfile = \dev\stdout
stderr_logfile_maxbytes = 0stderr_logfile = \dev\stderr


[program:gunicorn]
directory=\app\wrapper
command=gunicorn -w 1 -k gevent -b 0.0.0.0:5000 main:app

stdout_logfile_maxbytes = 0stdout_logfile = \dev\stdout
stderr_logfile_maxbytes = 0stderr_logfile = \dev\stderr
```