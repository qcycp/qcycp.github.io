---
title: Setup python on ubuntu16.04
categories: [Programming, python]
abbrlink: 35cf5995
date: 2019-11-10 11:02:16
tags: 
- python
- ubuntu
- 安裝
description: 在ubuntu16.04下，安裝python3.6環境
---
# 安裝python3.6
```sh
user@ubuntu:~$ sudo add-apt-repository ppa:deadsnakes/ppa
user@ubuntu:~$ sudo apt-get update
user@ubuntu:~$ sudo apt-get install python3.6
```

# 建立update-alternatives list for python

```sh
user@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
update-alternatives: using /usr/bin/python2.7 to provide /usr/bin/python (python) in auto mode
user@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
update-alternatives: using /usr/bin/python3.5 to provide /usr/bin/python (python) in auto mode
user@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 3
update-alternatives: using /usr/bin/python3.6 to provide /usr/bin/python (python) in auto mode

user@ubuntu:~$ update-alternatives --list python
/usr/bin/python2.7
/usr/bin/python3.5
/usr/bin/python3.6
```

# 設定python預設選項
```sh
user@ubuntu:~$ sudo update-alternatives --config python
There are 3 choices for the alternative python (providing /usr/bin/python).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /usr/bin/python3.6   3         auto mode
  1            /usr/bin/python2.7   1         manual mode
  2            /usr/bin/python3.5   2         manual mode
  3            /usr/bin/python3.6   3         manual mode

Press <enter> to keep the current choice[*], or type selection number: 3

user@ubuntu:~$ python -V
Python 3.6.6
```

# 安裝 pip for python3.6
```sh
user@ubuntu:~$ sudo apt-get install curl
user@ubuntu:~$ curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6
```

# 安裝 virtualenv or virtualenvwrapper
`pip install virtualenv --user`
`pip install virtualenvwrapper --user`

# 安裝相關的套件
`sudo apt-get install python3.6-dev`
`sudo apt-get install libmysqlclient-dev`