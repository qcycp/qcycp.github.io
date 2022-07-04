https://linux.die.net/man/8/logrotate

https://ihower.tw/blog/archives/3565
https://blog.toright.com/posts/4622/nginx-log-%E4%BB%A5%E6%97%A5%E6%9C%9F%E6%AD%B8%E6%AA%94.html
https://zshell.cc/2018/01/15/linux-varlog--logrotate%E9%85%8D%E7%BD%AE%E4%B8%8E%E8%BF%90%E7%BB%B4/
http://light3moon.com/2016/02/19/%E9%85%8D%E7%BD%AE%20logrotate/
https://codertw.com/%E4%BC%BA%E6%9C%8D%E5%99%A8/377513/

```
-f, --force
-v, --verbose

logrotate -fv /etc/logrotate.d/mysql-server
```

```
/var/lib/logrotate/status
/etc/logrotate.conf
/etc/logrotate.d/mysql-server
```

1. /etc/logrotate.d裡的設定優先權比logrotate.conf高
2. logrotate.conf單純是一個script，需要被執行，無法主動執行
2. 因為/etc/cron.daily/logrotate設定，因此logrotate.conf被執行的最短周期是一天
