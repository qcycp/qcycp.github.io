---
title: tmp_DB_MongoDB_command
abbrlink: 77783a2
tags:
---
MongoDB指令
===

operation on MongoDB shell
$ mongo

> use admin  使用admin用戶
預設不需要帳號就可以登入mongo
> db.createUser(username, pwd, readOnly) //添加新用戶，第三個参數默認false，設置为true表示只讀功能，Version 2.6之後，使用createUser/updateUser取代addUser
> db.dropUser(username) //移除帳號，Version 2.6之後，使用dropUser取代removeUser
> db.system.users.remove({}) //刪除所有帳號
> db.auth(username, pwd); //用戶登錄
> db.shutdownServer() //admin用戶下停止服務

> db.changeUserPassword("name","newpasswd")
> db 列出當前的database名稱

> show dbs //列出所有database
> show collections //列出資料表
> show users = db.system.users.find()  //查詢所有用戶
> db.printCollectionStats() //查看所有collection的狀態
> db.createCollection("apply")  //創建集合
> use db //使用db資料庫

> help //顯示協助訊息

刪除資料庫
> use db;
> db.dropDatabase();

e.g. co是一個collection
> db.co.save({a:99})               // 將{a:99}這一筆document，存入collection
> db.co.find()                          // find all documents in co
> db.co.find({a: 2})                 // find all documents where a == 2 in co
> db.co.find({a: {'$gt': 15}})   // find all documents where a > 15 in co
> db.co.update({A:100}, {A:101})   // 在含有{A:100}這筆data的document，將A改成101
> db.co.remove({A:100})       // 將含有{A:100}這筆data的document刪除
> db.co.drop()                         // 刪除collection
> db.co.insert({"A":"50","createtime":new Date()})  添加數據（創建document）

MongoDB的一些基本運算子
$gt : >
$lt : <
$gte: >=
$lte: <=
$ne : !=
$in : in
$nin: not in

1. 啟動auth機制
a. 建立superuser(建立在admin db中的user即為superuser)
$ mongo
> use admin
> db.addUser('root','1234')
b. 登入帳號
> db.auth('root','1234')
  返回1:成功，返回0:失敗
c. 打開auth=true後，只要沒有建立superuser，都還可以操作database，一旦建立superuser後，就一定要登入才可以操作database
c. 建立superuser之後，用superuser登入，才能在個別的db建立user
d. superuser可以存取任何db的資料
e. 個別的db建立user後，可以登入user帳號來存取該db的資料，該帳號只有存取此db的資料，不能存取其他db

2. mongos??????????????????????
MongoDB的架構主要分成三個部份:
- 資料儲存的Mongod
- 與使用者互動的Mongos (可與Mongod共存)
- 設定檔 Mongod Config (可與Mongod共存)

指令example
for (var i = 1; i <= 250000; i++) { db.test.insert( { x : i } ) }