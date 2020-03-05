---
title: 設置ubuntu環境
tags:
  - ubuntu
  - linux
  - docker
  - python
description: 設置ubuntu環境 for python 程式開發
abbrlink: b4ce8caa
date: 2019-11-19 11:33:09
categories: [Software, Ubuntu]
---
* Ubuntu 16.04.1 Server (64-bit)
http://old-releases.ubuntu.com/releases/16.04.1/ubuntu-16.04.1-server-amd64.iso

* Ubuntu 16.04.6 Server (64-bit)
http://releases.ubuntu.com/16.04/ubuntu-16.04.6-server-amd64.iso

# Environment Setup
1. General settings
2. Python
3. Docker

### 1. General Settings
* Check the network interface of enp0s8
```bash
user@ubuntu:~$ ifconfig -a
```
![](network01.jpg)

* If there is no ip address, set dhcp for enp0s8
```bash
user@ubuntu:~$ sudo vim /etc/network/interfaces
```

* Add following commands at the bottom
```bash
auto enp0s8
iface enp0s8 inet dhcp
```

* Restart networking and check enp0s8 again
```bash
user@ubuntu:~$ sudo service networking restart
user@ubuntu:~$ ifconfig -a
```
![](network02.jpg)

* Install ssh and then you can connect to vm via terminal tools
```bash
user@ubuntu:~$  sudo apt-get update
user@ubuntu:~$  sudo apt-get install ssh
```

### 2. Python
* Install python3.6
```bash
user@ubuntu:~$ sudo add-apt-repository ppa:deadsnakes/ppa
user@ubuntu:~$ sudo apt-get update
user@ubuntu:~$ sudo apt-get install python3.6
```

* Create update-alternatives list for python
```bash
user@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 1
update-alternatives: using /usr/bin/python3.5 to provide /usr/bin/python (python) in auto mode
user@ubuntu:~$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 2
update-alternatives: using /usr/bin/python3.6 to provide /usr/bin/python (python) in auto mode

user@ubuntu:~$ update-alternatives --list python
/usr/bin/python3.5
/usr/bin/python3.6
```

* Set default command of python
```bash
user@ubuntu:~$ sudo update-alternatives --config python
There are 2 choices for the alternative python (providing /usr/bin/python).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /usr/bin/python3.6   2         auto mode
  1            /usr/bin/python3.5   1         manual mode
  2            /usr/bin/python3.6   2         manual mode

Press <enter> to keep the current choice[*], or type selection number: 2

user@ubuntu:~$ python -V
Python 3.6.9
```

* Install pip for python3.6
```bash
user@ubuntu:~$ curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6
```
* Install virtualenv or virtualenvwrapper
There are two types of environment control for python.
`virtualenv`: isolated for each project
`virtualenvwrapper`: you can share environment settings between different projects
```bash
user@ubuntu:~$ pip install virtualenv --user
user@ubuntu:~$ pip install virtualenvwrapper --user
```

* Install related packages
```bash
user@ubuntu:~$ sudo apt-get install make
user@ubuntu:~$ sudo apt-get install gcc
user@ubuntu:~$ sudo apt-get install libssl-dev
user@ubuntu:~$ sudo apt-get install python3.6-dev
user@ubuntu:~$ sudo apt-get install libmysqlclient-dev
```

### 3. Docker
* Install docker
You can install docker online or via deb files

* Online install
```bash
user@ubuntu:~$ curl -sSL https://get.docker.com/ | sh
# Executing docker install script, commit: f45d7c11389849ff46a6b4d94e0dd1ffebca32c1
+ sudo -E sh -c apt-get update -qq >/dev/null
+ sudo -E sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null
+ sudo -E sh -c curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | apt-key add -qq - >/dev/null
+ sudo -E sh -c echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" > /etc/apt/sources.list.d/docker.list
+ sudo -E sh -c apt-get update -qq >/dev/null
+ [ -n  ]
+ sudo -E sh -c apt-get install -y -qq --no-install-recommends docker-ce >/dev/null
+ sudo -E sh -c docker version
Client: Docker Engine - Community
 Version:           19.03.5
 API version:       1.40
 Go version:        go1.12.12
 Git commit:        633a0ea838
 Built:             Wed Nov 13 07:50:12 2019
 OS/Arch:           linux/amd64
 Experimental:      false

Server: Docker Engine - Community
 Engine:
  Version:          19.03.5
  API version:      1.40 (minimum version 1.12)
  Go version:       go1.12.12
  Git commit:       633a0ea838
  Built:            Wed Nov 13 07:48:43 2019
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.2.10
  GitCommit:        b34a5c8af56e510852c35414db4c1f4fa6172339
 runc:
  Version:          1.0.0-rc8+dev
  GitCommit:        3e425f80a8c931f88e6d94a8c831b9d5aa481657
 docker-init:
  Version:          0.18.0
  GitCommit:        fec3683
If you would like to use Docker as a non-root user, you should now consider
adding your user to the "docker" group with something like:

  sudo usermod -aG docker user

Remember that you will have to log out and back in for this to take effect!

WARNING: Adding a user to the "docker" group will grant the ability to run
         containers which can be used to obtain root privileges on the
         docker host.
         Refer to https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface
         for more information.
```

* deb file
https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/
```bash
user@ubuntu:~$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb
user@ubuntu:~$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.4~3-0~ubuntu-xenial_amd64.deb
user@ubuntu:~$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.4~3-0~ubuntu-xenial_amd64.deb
user@ubuntu:~$ sudo dpkg -i containerd.io_1.2.6-3_amd64.deb
user@ubuntu:~$ sudo dpkg -i docker-ce-cli_19.03.4~3-0~ubuntu-xenial_amd64.deb
user@ubuntu:~$ sudo dpkg -i docker-ce_19.03.4~3-0~ubuntu-xenial_amd64.deb
user@ubuntu:~$ docker --version
Docker version 19.03.4, build 9013bf583a
```

* Install docker-compose
```bash
user@ubuntu:~$ sudo su
user@ubuntu:~$ rm -rf /usr/local/bin/docker-compose
user@ubuntu:~$ curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
user@ubuntu:~$ chmod +x /usr/local/bin/docker-compose
user@ubuntu:~$ docker-compose --version
docker-compose version 1.22.0, build f46880fe
```

* Remove docker
  * 查看系統中有安裝多少跟docker有關的package
  ```console
  $ dpkg -l | grep -i docker
  ```
  * remove all packages about docker
  ```console
  $ sudo apt-get purge -y docker-ce
  $ sudo apt-get autoremove -y --purge docker-ce
  $ sudo apt-get autoclean
  $ sudo rm -rf /var/lib/docker
  ```