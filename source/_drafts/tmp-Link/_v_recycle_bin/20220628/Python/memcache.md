https://www.journaldev.com/16/memcached-telnet-commands-example

* login to memcache
```sh
root@vm-docker:~$ telnet localhost 11211
Trying ::1...
Connected to localhost.
Escape character is '^]'.
```

* login to memcache
```sh
root@vm-docker:~$ nc localhost 11211
root@vm-docker:~$ echo stats | nc localhost 11211
```

* get value by key
```sh
get key
```

* check process
```sh
user@vm-docker:~$ ps -eaf | grep memcached
user     20956  3344  0 09:48 pts/1    00:00:00 grep --color=auto memcached
root     25346 25270 12 May21 ?        02:17:01 /usr/bin/memcached -u root
```
