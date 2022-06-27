---
title: tmp_DB_MySQL_command
tags:
---
MySQL command
===

http://see.xidian.edu.cn/cpp/html/1451.html
http://www.5idev.com/p-php_mysql_order_by.shtml
http://chensh.loxa.edu.tw/php/A_1.php
http://ssorc.tw/?p=209

http://172.17.2.10/phpmyadmin
安裝MySQL connector for c++ (library)
這樣就可以在c++程式中，直接存取MySQL中的資料
apt-get install libmysqlcppconn5 libmysqlcppconn-dev

build cgi程式指令
root@ubuntu:nick # g++ WR.cpp -lmysqlcppconn -o WR.cgi
cp WR.cgi /var/www/cgi-bin/

停止/開啟MySQL服務
/etc/init.d/mysql start
service mysql start
/etc/init.d/mysql stop
service mysql stop

開啟MySQL
nick@ubuntu:~ $ mysql -u root -p
Enter password: 輸入安裝MySQL時設定的密碼

To start the mysql monitor by
mysql -u root -p --local-infile project_name
, else the LOAD DATA LOCAL command failed with an error like the following:
ERROR 1148 (42000): The used command is not allowed with this MySQL version

查詢目前MySQL中存在的資料庫
mysql> show databases;

建立一個資料庫
mysql> create database WR; //名稱叫WR

刪除一個資料庫
mysql> drop database WR;

查詢資料庫列表
mysql> show databases;

使用資料庫
mysql> use WR;

建立一個資料庫表
mysql> CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20),
       -> species VARCHAR(20), sex CHAR(1), birth DATE, death DATE));
 (名字、主人、種類，性別、出生和死亡日期)
建立中文資料
mysql> create table ACCOUNT (name varchar(10) character set utf8 default NULL, id varchar(10), pw varchar(10));
在mysql_connect之後要加上mysql_query("SET NAMES utf8");
在網頁一開始要加上<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


欄位名
最好只使用英文字母、數目字和底線符號。注意，MySQL 的欄位名 不分辨 英文字母的大小寫，例如 Name 和 NAME 被視為同一個欄位名。 欄位名不應超過 64 個字元。
資料型態與容量
例如 int、int unsigned (無號整數)、char(10) 十個字元
可不可以是空的
not null 表示不可以是空的，如果沒寫 not null 就表示可以是空的。
是否為主欄位
如果寫了 primary key 就表示為主欄位。
內定值
如果寫了 default 'abc' 就表示 abc 是此欄位的內定值， 如果沒寫就沒有內定值。我們先不管內定值的用法。
備註
如果寫了 auto_increment 表示這個欄位 (必須是整數類) 會自動增加。 建立資料的時候，只要寫 NULL 即可。

mysql> create table playerinfo (id INT, name VARCHAR(30), xpos INT, ypos INT, exp INT, PRIMARY KEY (id) );
如果有設定primary key為id，那id那一欄的資料就不能設定為null，也不能設定為重覆的資料
create table playerinfo ( id INT AUTO_INCREMENT, name VARCHAR(30), xpos INT, ypos INT, exp INT, PRIMARY KEY (id));
如果有設定primary key及extra(AUTO_INCREMENT)，則id的欄位可以設定成null，系統會自動產生序號並累加
mysql> describe playerinfo;
+-------+-------------+------+-----+---------+----------------+
| Field  | Type         | Null | Key | Default | Extra            |
+-------+-------------+------+-----+---------+----------------+
| id      | int(11)      | NO   | PRI | NULL    | auto_increment |
| name | varchar(30) | YES  |     | NULL    |                |
| xpos  | int(11)      | YES  |     | NULL    |                |
| ypos  | int(11)      | YES  |     | NULL    |                |
| exp   | int(11)       | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+


刪除一個資料庫表
mysql> drop table pet;

查詢資料庫表列表
mysql> show tables;

秀出資料庫表的結構
mysql> describe pet;

新增記錄
mysql> insert into pet values('puffball', 'diane', 'hamster', 'f', '1999-03-30', NULL);

刪除記錄
mysql> delete from pet where name="test1";

從資料庫表中取出資料
mysql> select * from pet;
mysql> select * from pet where name = "puffball";

從資料庫表中修改資料
mysql> UPDATE pet SET birth = "1989-08-31" WHERE name = "puffball";

欄位重新命名
mysql> ALTER TABLE list CHANGE onwer owner varchar(20);

重新命名table
mysql> alter table list rename table_new;

增加table欄位
mysql> alter table list add xxxxxxx varchar(20);

從檔案中新增資料進資料庫表
mysql> LOAD DATA LOCAL INFILE "pet.txt" INTO TABLE pet;

in pet.txt (用tab隔開各筆資料)
puf uoi iou f   1999-09-20  \N

修改資料
update account set name = 'test' where id = 'qcycp1007@gmail.com';

搜尋資料並排序輸出
mysql> select * from list order by onwer, startmon, startday asc;
mysql> select * from list order by onwer desc;

匯出資料庫
mysqldump --opt -uroot -p123456 WebTestPage > WebTestPage_backup.sql

匯入資料庫
mysql -uroot -p123456 WebTestPage < WebTestPage_backup.sql

mysql_query("SET NAMES utf8");

* remote login  
mysql -uroot -proot -h192.168.56.3 -P3306 