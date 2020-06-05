---
title: mysql backup and restore
abbrlink: 50121f15
date: 2019-12-03 11:13:26
categories: [Software, mysql]
tags:
- docker
- mysql
---
### backup script
`docker exec -it mysql_container /usr/bin/mysqldump -u username --password=password db_name > backup.sql`

`mysqldump db_name table_name > backup.sql`

```bash
#!/bin/sh
# shell script to backup MySQL database from mysql docker container

# backup dest directory
DEST="/home/user/backup"

DOCKER_CONTAINER="mysql"
TIME="$(date +"%Y%m%d%H%M%S")"

USER="username"
PWD="password"
DATABASE="db_name"

docker exec -it $DOCKER_CONTAINER /usr/bin/mysqldump -u $USER --password=$PWD $DATABASE > "$DEST/${DATABASE}_$TIME.sql"
```

### restore script
`cat backup.sql | sudo docker exec -i mysql_container /usr/bin/mysql -u username --password=password db_name`

`mysql -u username -p db_name < /path/to/backup.sql`

`$sh restore.sh backup.sql`

* 在restore時，若有錯誤時，可以加上--force強制執行
```bash
root@44197bac7b4c:/# mysql -u username -p db_name --force < backup.sql
Enter password:
ERROR 1064 (42000) at line 1: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysqldump: [Warning] Using a password on the command line interface can be insec' at line 1
ERROR 1231 (42000) at line 945: Variable 'character_set_client' can't be set to the value of 'NULL'
```

```bash
#!/bin/sh
# shell script to restore MySQL database to mysql docker container

echo "restore $1..."

if [ -z $1 ]; then
    echo "command: restore.sh backup.sql"
    exit
fi

if ! [ -f $1 ]; then
    echo "$1 not found."
    exit
fi

DOCKER_CONTAINER="mysql"

USER="username"
PWD="password"
DATABASE="db_name"

cat $1 | docker exec -i $DOCKER_CONTAINER /usr/bin/mysql -u $USER --password=$PWD $DATABASE
```
### crontab

```bash
$ sudo crontab -e
# 每天下午17:00都執行backup_mysql.sh這個script，並把log存到mysql_dumps.log
00 17 * * * /home/user/data/backup_mysql.sh > /home/user/data/mysql_dumps.log 2>&1
```