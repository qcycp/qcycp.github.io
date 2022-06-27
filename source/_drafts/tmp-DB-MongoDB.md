---
title: tmp_DB_MongoDB
tags:
---
mongodb on linux
===

1. 安裝
sudo apt-get install mongodb

2. MongoDB service執行
sudo service mongodb start/stop/restart

3. 設定MongoDB
in /etc/mongodb.conf

a. 資料庫儲存路徑
dbpath=/var/lib/mongodb

b. 設定log file路徑
logpath=/var/log/mongodb/mongodb.log

c. 打開auth功能，啟動帳號存取的機制，否則所有登入mongodb的使用者均為superuser
auth=true

d. 只允許特定ip連接、存取
bind_ip = 127.0.0.1
bind_ip = x.x.x.x