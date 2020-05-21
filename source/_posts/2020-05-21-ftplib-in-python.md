---
title: ftplib in python
abbrlink: 741b618f
date: 2020-05-21 08:42:02
categories: [Programming, python]
tags:
- python
---
* Connection
```python
from ftplib import FTP

ftp = FTP()
ftp.set_debuglevel(2)
ftp.connect('192.168.56.3', 21)
ftp.login('account', 'password')
print(ftp.getwelcome())
ftp.quit
```

* General Operation
```shell
ftp.cwd(pathname) #設置FTP當前操作的路徑
ftp.dir() #顯示目錄下文件信息
ftp.nlst() #獲取目錄下的文件
ftp.mkd(pathname) #新建遠程目錄
ftp.pwd() #返回當前所在位置
ftp.rmd(dirname) #刪除遠程目錄
ftp.delete(filename)
ftp.rename(name, new_name)
```

* Upload
```python
with open(local_filename,'rb') as f:
    ftp.storbinary('STOR %s' % server_filename, f, 1024)
```

* Download
```python
with open(local_filename, "wb") as f:
    ftp.retrbinary('RETR %s' % server_filename, f.write, 1024)
```