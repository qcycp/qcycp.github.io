---
title: tmp_DB_remote_connection_to_mysql
tags:
---
How to allow remote connection to mysql
===
[How to allow remote connection to mysql - Stack Overflow](https://stackoverflow.com/questions/14779104/how-to-allow-remote-connection-to-mysql)

1. 修改root的存取權限 or 建立新的使用者
set priviledge from localhost to %
2. in /etc/mysql/mysql.conf.d/mysqld.cnf


Change line
> bind-address = 127.0.0.1

to
> #bind-address = 127.0.0.1