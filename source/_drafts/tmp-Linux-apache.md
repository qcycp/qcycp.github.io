---
title: tmp_Linux_apache
tags:
---
Install apache web server
===

1. Install apache
     apt-get install apache2
     /etc/init.d/apache2 restart
     // 網頁資料會放在/var/www

2. Install MySQL
     apt-get install mysql-server
     安裝過程中會設定root帳號的密碼
     // mySQL資料會放在/var/lib/mysql

     開啟MySQL
     nick@ubuntu:~ $ mysql -u root -p
     Enter password: 輸入安裝MySQL時設定的密碼

     建立一個資料庫
     mysql> create database WR; //名稱叫WR

     查詢資料庫列表
     mysql> show databases;

3. Install PHP
     apt-get install php5 libapache2-mod-php5 php5-mysql

4. Install phpmyasmin
     apt-get install phpmyadmin
     // http://localhost/phpmyadmin

5. 啟用htaccess功能
     在/etc/apache2/sites-available/default中，增加
      <Directory "/var/www/">
            AllowOverride All
      </Directory>

    建立.htaccess檔案

6. 隱藏資料夾讀取權限
    for example, 假設在/var/www下有一個img資料夾
    當我們輸入網址http://127.0.0.1/img
    因為img中沒有index.html，所以網頁會顯示出img資料夾下的所有檔案列表
    在.htaccess中增加
        Options -Indexes
    結果會顯示You don't have permission to access /img/ on this server

7. 在htaccess中啟用rewrite功能
    確認檔案存在:/usr/lib/apache2/modules/mod_rewrite.so
    將檔案複製到/etc/apache2/modules/中
    在/etc/apache2/httpd.conf中新增LoadModule rewrite_module modules/mod_rewrite.so

    RewriteEngine on
    RewriteRule ^(.*)\.html$ $1.php [nc]
    // 網址列上顯示連接到網頁http://127.0.0.1/about.html，但實際上的檔案為about.php

8. 更改首頁
    更改下列檔案中，預設的首頁名稱
    mods-available/dir.conf
    mods-enabled/dir.conf

