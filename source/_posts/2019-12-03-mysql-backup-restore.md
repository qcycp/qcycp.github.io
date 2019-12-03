---
title: mysql backup and restore
abbrlink: 50121f15
date: 2019-12-03 11:13:26
categories: [Software, mysql]
tags:
- docker
- mysql
description: mysql data in docker container的備份與還原
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