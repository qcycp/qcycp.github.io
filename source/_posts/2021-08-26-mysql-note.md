---
title: mysql_note
abbrlink: d8df6de7
date: 2021-08-26 10:15:06
categories:
tags:
---
* login
mysql -uroot -proot

* select database
use koala_online;

* delete
delete from table_name where condition;

* query
select count(*) from table_name;
select * from table_name where condition;
select * from subject order by id desc limit 5;
select * from subject limit 5;

* update
UPDATE table_name SET address='192.168.56.4' WHERE id=1;
UPDATE screen SET camera_address='rtsp1' WHERE id=1;

* insert
insert into screen values(camera_address, 

* get information
show tables;
show databases;
describe tabke_name;

* connect remote host
mysql -h 192.168.56.3 -P 3306 -uroot -proot

將flask中的db指向docker container
SQLALCHEMY_DATABASE_URI = 'mysql://root:1234@0.0.0.0:3306/quokka'



CREATE TABLE hr ( ID SMALLINT UNSIGNED, Name VARCHAR(40), Photo BLOB );
INSERT INTO hr VALUES(1, 'Nick', LOAD_FILE('/home/user/aptg.jpg'));


mysqldump --lock-all-tables -u root -p --all-databases > backup.sql


查詢缺漏的id
SELECT id+1 FROM table WHERE id NOT IN (SELECT id-1 FROM table) ORDER BY 1;


isolation level
mysql> show variables like "tx_isolation";
mysql> show variables like '%isola%';
+---------------+-----------------+
| Variable_name | Value           |
+---------------+-----------------+
| tx_isolation  | REPEATABLE-READ |
+---------------+-----------------+
1 row in set (0.00 sec)

mysql> set session transaction isolation level read committed;
Query OK, 0 rows affected (0.00 sec)

mysql> show variables like '%isola%';
+---------------+----------------+
| Variable_name | Value          |
+---------------+----------------+
| tx_isolation  | READ-COMMITTED |
+---------------+----------------+
1 row in set (0.00 sec)


isolation
https://medium.com/getamis/database-transaction-isolation-a1e448a7736e
https://blog.gslin.org/archives/2015/09/18/5989/%E5%BE%9E%E9%A0%AD%E5%AD%B8%E4%B8%80%E6%AC%A1-isolation-level-%E7%9A%84-repeatable-read-%E8%88%87-serializable/



https://dev.mysql.com/doc/refman/5.5/en/create-table-select.html
https://myapollo.com.tw/2018/11/24/sqlalchemy-filter-vs-filter-by/
https://sanyuesha.com/2018/04/23/mysql-lost-connection-error/
https://www.itread01.com/content/1498548010.html
https://www.geeksengine.com/database/data-manipulation/bulk-insert.php
https://docs.sqlalchemy.org/en/13/orm/persistence_techniques.html#bulk-operations


https://www.w3schools.com/python/python_mysql_update.asp
https://codeday.me/bug/20181227/470628.html



```
| 15068 | /static/upload/event/2019-08-14/9aec3fdf66184b5887c1f2b82eb21dad.png            |    NULL |           NULL |    NULL |       NULL |          0 |            0 | 009977                               | /static/upload/photo/2019-08-14/v2_fae7bef863344f01ffe15404750284d3b11eea2c.jpg | 1565762424 |              6 |       3637 |        21 |


+----------------+--------------+------+-----+---------+----------------+
| Field          | Type         | Null | Key | Default | Extra          |
+----------------+--------------+------+-----+---------+----------------+
| id             | int(11)      | NO   | PRI | NULL    | auto_increment |
| photo          | varchar(256) | NO   |     | NULL    |                |
| age            | float        | YES  |     | NULL    |                |
| gender         | float        | YES  |     | NULL    |                |
| quality        | float        | YES  |     | NULL    |                |
| confidence     | float        | YES  |     | NULL    |                |
| event_type     | int(11)      | YES  |     | NULL    |                |
| subject_type   | smallint(6)  | YES  |     | NULL    |                |
| name           | varchar(64)  | YES  |     | NULL    |                |
| subject_photo  | varchar(256) | YES  |     | NULL    |                |
| timestamp      | int(11)      | YES  | MUL | NULL    |                |
| corporation_id | int(11)      | YES  | MUL | NULL    |                |
| subject_id     | int(11)      | YES  | MUL | NULL    |                |
| screen_id      | int(11)      | YES  | MUL | NULL    |                |
+----------------+--------------+------+-----+---------+----------------+


mysql --user=root --password=1234 kangaroo << EOF
INSERT INTO event (photo, age, gender, quality, confidence, event_type, subject_type, name, subject_photo, timestamp, corporation_id, subject_id, screen_id) VALUES('/static/upload/event/2019-08-14/9aec3fdf66184b5887c1f2b82eb21dad.png', NULL, NULL, NULL, NULL, 0, 0, '009977', '/static/upload/photo/2019-08-14/v2_fae7bef863344f01ffe15404750284d3b11eea2c.jpg', 1565762424, 6, 3637, 21);
```


SHOW FULL PROCESSLIST;
SELECT * FROM information_schema.INNODB_TRX;


# Flask-SQLAlchemy Setting
SQLALCHEMY_TRACK_MODIFICATIONS = False
SQLALCHEMY_RECORD_QUERIES = True
SQLALCHEMY_POOL_SIZE = 1024
SQLALCHEMY_POOL_TIMEOUT = 90
SQLALCHEMY_POOL_RECYCLE = 3
SQLALCHEMY_MAX_OVERFLOW = 1024


https://idoubi.cc/posts/mysql-data-migration/
