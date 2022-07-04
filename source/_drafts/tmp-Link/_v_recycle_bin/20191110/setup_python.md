setup python in ubuntu16.04
===
sudo add-apt-repository ppa:deadsnakes/ppa  
sudo apt-get update  
sudo apt-get install python3.6  

* 建立update-alternatives list for python  

```sh
nick@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
update-alternatives: using /usr/bin/python2.7 to provide /usr/bin/python (python) in auto mode
nick@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
update-alternatives: using /usr/bin/python3.5 to provide /usr/bin/python (python) in auto mode
nick@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 3
update-alternatives: using /usr/bin/python3.6 to provide /usr/bin/python (python) in auto mode

nick@ubuntu:~$ update-alternatives --list python
/usr/bin/python2.7
/usr/bin/python3.5
/usr/bin/python3.6
```

* 設定python預設選項  

```sh
nick@ubuntu:~$ sudo update-alternatives --config python
There are 3 choices for the alternative python (providing /usr/bin/python).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /usr/bin/python3.6   3         auto mode
  1            /usr/bin/python2.7   1         manual mode
  2            /usr/bin/python3.5   2         manual mode
  3            /usr/bin/python3.6   3         manual mode

Press <enter> to keep the current choice[*], or type selection number: 3

nick@ubuntu:~$ python -V
Python 3.6.6
```

* install pip for python3.6  

```sh
nick@ubuntu:~$ sudo apt-get install curl
nick@ubuntu:~$ curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6
```

* install virtualenv or virtualenvwrapper  
`pip install virtualenv --user`  
`pip install virtualenvwrapper --user`  

* trouble shooting    
a. OSError: mysql_config not found - install package for mysql  
b.  
psutil/_psutil_common.c:9:20: fatal error: Python.h: No such file or directory  
compilation terminated.  
error: command 'x86_64-linux-gnu-gcc' failed with exit status 1  

```sh
sudo apt-get install python3.6-dev libmysqlclient-dev
```