
$ ifconfig -a
$ sudo vim /etc/network/interfaces
auto enp0s8
iface enp0s8 inet dhcp
$ sudo service networking restart

$ sudo apt-get update
$ sudo apt-get install ssh
