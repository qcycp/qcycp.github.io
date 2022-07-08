---
title: tmp_DB_MongoDB_on_windows
abbrlink: f4d9dd86
tags:
---
mongodb on windows
===

1. 下載mongodb
http://www.mongodb.org/downloads

2. 建立folder
md C:\mongodb\data
md C:\mongodb\log

3. 執行
cd C:\mongodb\bin
mongod --dbpath=C:\mongodb\data

4. 或者可以建立一個config檔mongodb.cfg
mongod --config "C:\mongodb\mongodb.cfg"
dbpath=C:\mongodb\data
logpath=C:\mongodb\log\mongodb.log
port=27017
auth=true

5. 登入shell
mongo

建立MongoDB service
1. mongod --config "C:\mongodb\mongodb.cfg" --install

2. 開始mongodb服務
net start MongoDB

3. 停止mongodb服務
net stop MongoDB

4. 刪除服務
mongod --remove