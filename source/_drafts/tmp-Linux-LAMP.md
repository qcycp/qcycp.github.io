---
title: tmp_Linux_LAMP
abbrlink: 78c87d03
tags:
---
Ubuntu 快速安裝 LAMP Server ( Apache + MySQL + PHP5 )
===
http://www.arthurtoday.com/2010/04/lamp-server-apache-mysql-php.html#.UCqFpzzh1xk

在 Ubuntu 和 Debian 的 Linux 的系統裡，可以使用一個叫做 tasksel 的程式來執行一整組預先定義好的指令，而在 Linux 中，常常會被需要安裝的 Apache、MySQL 及 PHP 也有預先定義好的指令組給 tasksel 來使用，名字就叫做「lamp-server」，所以，只要用下面的指令就可以一次裝好 Apache、MySQL 和 PHP，而不用一個一個的慢慢安裝 
`sudo tasksel install lamp-server`

執行後，接著就會開始自動分別安裝 Apache、PHP5 和 MySQL，其中，在安裝 MySQL 的時候，會需要設定 MySQL 的 root 帳號密碼，需要輸入二次，之後，就會自動安裝到完成。 

如果有發生找不到 tasksel 的錯誤訊息，請先用下面的指令來安裝 tasksel 
`sudo apt-get install tasksel`

通常，必須再安裝以下套件 
`apt-get install php5-mysql`
Ab123456