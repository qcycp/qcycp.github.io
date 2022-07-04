https://blog.51cto.com/lixcto/1539136
http://supervisord.org/configuration.html

```
supervisorctl status
supervisorctl stop service
supervisorctl restart service
supervisorctl start service
```

```
root@koala:~# supervisorctl status
clean_upload_event               RUNNING   pid 1857, uptime 2 days, 20:51:06
events_consumer                  RUNNING   pid 1859, uptime 2 days, 20:51:06
koala_online                     RUNNING   pid 1861, uptime 2 days, 20:51:06
koala_worker                     RUNNING   pid 1860, uptime 2 days, 20:51:06
redis                            RUNNING   pid 1862, uptime 2 days, 20:51:06
updater                          RUNNING   pid 1864, uptime 2 days, 20:51:06
weather                          RUNNING   pid 1858, uptime 2 days, 20:51:06
```