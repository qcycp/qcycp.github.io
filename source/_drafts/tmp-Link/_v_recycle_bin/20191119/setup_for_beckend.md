* Ubuntu 16.04.1 Server (64-bit)
http://old-releases.ubuntu.com/releases/16.04.1/ubuntu-16.04.1-server-amd64.iso

* Ubuntu 16.04.6 Server (64-bit)
http://releases.ubuntu.com/16.04/ubuntu-16.04.6-server-amd64.iso

# Environment Setup
1. general settings
2. python
3. docker

## General Settings
- check the network interface of enp0s8
```bash
user@ubuntu:~$ ifconfig -a
```
![network01](_v_images/20191119112107804_24916.jpg)

- If there is no ip address, set dhcp for enp0s8
```bash
user@ubuntu:~$ sudo vim /etc/network/interfaces
```

- add following commands at the bottom
```bash
auto enp0s8
iface enp0s8 inet dhcp
```

- restart networking and check enp0s8 again
```bash
user@ubuntu:~$ sudo service networking restart
ifconfig -a
```
![network02](_v_images/20191119112844391_18202.jpg)

- install ssh and then you can connect to vm via terminal tools
```bash
user@ubuntu:~$  sudo apt-get update
user@ubuntu:~$  sudo apt-get install ssh
```

## Install python3.6
```bash
$ sudo add-apt-repository ppa:deadsnakes/ppa
$ sudo apt-get update
$ sudo apt-get install python3.6
```

## create update-alternatives list for python
```bash
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1
update-alternatives: using /usr/bin/python2.7 to provide /usr/bin/python (python) in auto mode
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2
update-alternatives: using /usr/bin/python3.5 to provide /usr/bin/python (python) in auto mode
$ sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 3
update-alternatives: using /usr/bin/python3.6 to provide /usr/bin/python (python) in auto mode

$ update-alternatives --list python
/usr/bin/python2.7
/usr/bin/python3.5
/usr/bin/python3.6
```

## 設定python預設選項
```bash
$ sudo update-alternatives --config python
There are 3 choices for the alternative python (providing /usr/bin/python).

  Selection    Path                Priority   Status
------------------------------------------------------------
* 0            /usr/bin/python3.6   3         auto mode
  1            /usr/bin/python2.7   1         manual mode
  2            /usr/bin/python3.5   2         manual mode
  3            /usr/bin/python3.6   3         manual mode

Press <enter> to keep the current choice[*], or type selection number: 3

$ python -V
Python 3.6.6
```

## Install pip for python3.6
```bash
$ sudo apt-get install curl
$ curl https://bootstrap.pypa.io/get-pip.py | sudo python3.6
```

## Install virtualenv or virtualenvwrapper
```bash
$ pip install virtualenv --user
$ pip install virtualenvwrapper --user
```

## Install related package
```bash
$ sudo apt-get install python3.6-dev
$ sudo apt-get install libmysqlclient-dev
```

## Install docker online
```bash
$ curl -sSL https://get.docker.com/ | sh
# Executing docker install script, commit: 36b78b2
+ sh -c apt-get update -qq >/dev/null
+ sh -c apt-get install -y -qq apt-transport-https ca-certificates curl >/dev/null
+ sh -c curl -fsSL "https://download.docker.com/linux/ubuntu/gpg" | apt-key add -qq - >/dev/null
+ sh -c echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial edge" > /etc/apt/sources.list.d/docker.list
+ [ ubuntu = debian ]
+ sh -c apt-get update -qq >/dev/null
+ sh -c apt-get install -y -qq --no-install-recommends docker-ce >/dev/null
If you would like to use Docker as a non-root user, you should now consider
adding your user to the "docker" group with something like:

  sudo usermod -aG docker your-user

Remember that you will have to log out and back in for this to take effect!

WARNING: Adding a user to the "docker" group will grant the ability to run
         containers which can be used to obtain root privileges on the
         docker host.
         Refer to https://docs.docker.com/engine/security/security/#docker-daemon-attack-surface
         for more information.
```

## Install docker via deb
* download link
https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/

```bash
$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/containerd.io_1.2.6-3_amd64.deb
$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce-cli_19.03.4~3-0~ubuntu-xenial_amd64.deb
$ wget --no-check-certificate https://download.docker.com/linux/ubuntu/dists/xenial/pool/stable/amd64/docker-ce_19.03.4~3-0~ubuntu-xenial_amd64.deb
$ sudo dpkg -i containerd.io_1.2.6-3_amd64.deb
$ sudo dpkg -i docker-ce-cli_19.03.4~3-0~ubuntu-xenial_amd64.deb
$ sudo dpkg -i docker-ce_19.03.4~3-0~ubuntu-xenial_amd64.deb
$ docker --version
Docker version 19.03.4, build 9013bf583a
```

## Install docker-compose
```bash
$ sudo su
$ rm -rf /usr/local/bin/docker-compose
$ curl -L https://github.com/docker/compose/releases/download/1.22.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
$ chmod +x /usr/local/bin/docker-compose
$ docker-compose --version
docker-compose version 1.22.0, build f46880fe
```