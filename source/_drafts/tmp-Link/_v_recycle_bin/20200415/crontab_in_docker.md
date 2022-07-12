
environment variable for cron
https://ypereirareis.github.io/blog/2016/02/29/docker-crontab-environment-variables/
http://gaga5lala.logdown.com/posts/2016/12/21/run-crontab-with-environment-variables-in-docker
https://tonytonyjan.net/2018/07/08/how-cron-omit-environment-variables/

```sh
root@847d0eb77dfe:/var/spool/cron/crontabs# cat root
# DO NOT EDIT THIS FILE - edit the master and reinstall.
# (/etc/cron.d/parse-log-cron installed on Mon Apr 29 22:18:35 2019)
# (Cron version -- $Id: crontab.c,v 2.13 1994/01/17 03:20:37 vixie Exp $)
19 * * * * /usr/bin/python3.6 /app/common/parser.py
```

user@vm-docker:~/IMFR7/IMFR/deploy$ docker cp parse-log-cron hh_imfr:/etc/cron.d/

```
root@847d0eb77dfe:/etc/cron.d# crontab parse-log-cron
root@847d0eb77dfe:/etc/cron.d# cd ../../var/spool/cron/crontabs/
root@847d0eb77dfe:/var/spool/cron/crontabs# cat root
# DO NOT EDIT THIS FILE - edit the master and reinstall.
# (parse-log-cron installed on Wed May  1 14:55:42 2019)
# (Cron version -- $Id: crontab.c,v 2.13 1994/01/17 03:20:37 vixie Exp $)
56 * * * * /usr/bin/python3.6 /app/common/parser.py
```


#### How to
```
in Dockerfile
1. apt-get install cron
2. add cron tasks script
ADD cron_tasks /etc/cron.d/cron_tasks
RUN chmod 0644 /etc/cron.d/cron_tasks && \
    crontab /etc/cron.d/cron_tasks

in cron_tasks
3. execute task via crontab
55 * * * * /usr/bin/python3.6 /app/common/parser.py
00 03 * * * supervisorctl restart imfr
*/1 * * * * curl -X GET http://localhost:5000/api/test

in supervisord.conf
4. execute cron via supervisor
[program:cron]
command=/usr/sbin/cron -f

stdout_logfile_maxbytes = 0
stdout_logfile = /dev/stdout
stderr_logfile_maxbytes = 0
stderr_logfile = /dev/stderr

```