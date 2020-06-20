---
title: ftplib in Python
abbrlink: 741b618f
date: 2020-05-21 08:42:02
categories: [Programming, Python]
tags:
- Python
---
* Connection
```python
from ftplib import FTP

ftp = FTP()
ftp.set_debuglevel(2)
ftp.connect('192.168.56.3', 21)
ftp.login('account', 'password')
print(ftp.getwelcome())
ftp.quit()
```

* General Operation
```bash
# Set the current directory on the server.
ftp.cwd(pathname)

# Create a new directory on the server.
ftp.mkd(pathname)

# Return the pathname of the current directory on the server.
ftp.pwd()

# Remove the directory named dirname on the server.
ftp.rmd(dirname)

# Rename file fromname on the server to toname.
ftp.rename(fromname, toname)

# Remove the file named filename from the server.
ftp.delete(filename)

# Request the size of the file named filename on the server.
ftp.size(filename)

# Produce a directory listing as returned by the LIST command.
ftp.dir()

# Return a list of file names as returned by the NLST command.
ftp.nlst()
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