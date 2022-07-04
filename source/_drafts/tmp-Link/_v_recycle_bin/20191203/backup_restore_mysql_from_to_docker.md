#### backup script
`docker exec hh_mysql /usr/bin/mysqldump -u root --password=1234 kangaroo > backup.sql`

`mysqldump db_name table_name > table_name.sql`

```bash
#!/bin/sh
# Shell script to backup MySQL database from mysql docker container

# Backup Dest directory
DEST="/home/nick/data/backup"

DOCKER_CONTAINER="hh_mysql"
TIME="$(date +"%Y%m%d%H%M%S")"

USER="root"
PWD="1234"
DATABASE="kangaroo"

docker exec $DOCKER_CONTAINER /usr/bin/mysqldump -u $USER --password=$PWD $DATABASE > "$DEST/${DATABASE}_$TIME.sql"
```

#### restore script
`cat backup.sql | sudo docker exec -i hh_mysql /usr/bin/mysql -u root --password=1234 kangaroo`

`mysql -u username -p db_name < /path/to/table_name.sql`

`$sh restore.sh backup.sql`

```bash
#!/bin/sh
# Shell script to restore MySQL database to mysql docker container

echo "restore $1..."

if [ -z $1 ]; then
    echo "command: restore.sh backup.sql"
    exit
fi

if ! [ -f $1 ]; then
    echo "$1 not found."
    exit
fi

DOCKER_CONTAINER="hh_mysql"

USER="root"
PWD="1234"
DATABASE="kangaroo"

cat $1 | docker exec -i $DOCKER_CONTAINER /usr/bin/mysql -u $USER --password=$PWD $DATABASE
```
#### crontab

```sh
$ sudo crontab -e
# 每天下午17:00都執行backup_mysql.sh這個script，並把log存到mysql_dumps.log
00 17 * * * /home/nick/data/backup_mysql.sh > /home/nick/data/mysql_dumps.log 2>&1
```