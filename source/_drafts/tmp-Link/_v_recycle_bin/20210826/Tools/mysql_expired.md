https://tecadmin.net/expired-key-expkeysig-with-apt/

```
FROM mysql:5.7.21
RUN apt-get update

會產生錯誤
W: GPG error: http://repo.mysql.com/apt/debian stretch InRelease: The following signatures were invalid: EXPKEYSIG 8C718D3B5072E1F5 MySQL Release Engineering <mysql-build@oss.oracle.com>
W: The repository 'http://repo.mysql.com/apt/debian stretch InRelease' is not signed.
N: Data from such a repository can't be authenticated and is therefore potentially dangerous to use.
N: See apt-secure(8) manpage for repository creation and user configuration details.
```

```
root@c2be92bcd5bc:/# apt-key list
...
/etc/apt/trusted.gpg.d/mysql.gpg
--------------------------------
pub   dsa1024 2003-02-03 [SCA] [expired: 2019-02-17]
      A4A9 4068 76FC BD3C 4567  70C8 8C71 8D3B 5072 E1F5
uid           [ expired] MySQL Release Engineering <mysql-build@oss.oracle.com>
```

```
root@c2be92bcd5bc:/# apt-key adv --keyserver keys.gnupg.net --recv-keys 8C718D3B5072E1F5
Executing: /tmp/apt-key-gpghome.yEmakgIkSC/gpg.1.sh --keyserver keys.gnupg.net --recv-keys 8C718D3B5072E1F5
gpg: key 8C718D3B5072E1F5: "MySQL Release Engineering <mysql-build@oss.oracle.com>" 17 new signatures
gpg: Total number processed: 1
gpg:         new signatures: 17
root@c2be92bcd5bc:/# apt-key list
...
/etc/apt/trusted.gpg.d/mysql.gpg
--------------------------------
pub   dsa1024 2003-02-03 [SCA] [expires: 2022-02-16]
      A4A9 4068 76FC BD3C 4567  70C8 8C71 8D3B 5072 E1F5
uid           [ unknown] MySQL Release Engineering <mysql-build@oss.oracle.com>
```


```
mysql ERROR 1130: Host '*****' is not allowed to connect to this MySQL server

解決方法：

1. 改表法。可能是你的帳號不允許從遠程登陸，只能在localhost。這個時候只要在localhost的那臺電腦，登入mysql後，更改 "mysql" 數據庫裡的 "user" 表裡的 "host" 項，從"localhost"改成"%"

mysql -u root -p
mysql>use mysql;
mysql>update user set host = '%' where user = 'root';
mysql>flush privileges;

2. 授權法。(推薦使用)
例如，你想myuser使用mypassword從任何主機連接到mysql服務器的話。
GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;


如果你想允許用戶myuser從ip為192.168.1.3的主機連接到mysql服務器，並使用mypassword作為密碼
GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'192.168.1.3' IDENTIFIED BY 'mypassword' WITH GRANT OPTION;
```

GRANT ALL PRIVILEGES ON *.* to root@'%' IDENTIFIED BY 'root';