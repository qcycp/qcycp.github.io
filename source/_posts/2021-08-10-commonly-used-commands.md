---
title: Commonly Used Commands in Linux
abbrlink: da9ed956
date: 2021-08-10 11:48:17
categories: System
tags:
- Linux
---
netstat -anSlp

ip a
ip link show
ip route add 192.168.99.0/24 via 192.168.82.100

vi /etc/sysconfig/network-scripts/ifcfg-eth0
ifdown /etc/sysconfig/network-scripts/ifcfg-eth0
ifup /etc/sysconfig/network-scripts/ifcfg-eth0

tcpdump -i any -w gNB.pcap
tcpdump -i any -w gNB.pcap -s0 sctp

rpm -qa | grep faca | while read line ; do rpm -e "$line" ; done
while true; do date; sleep 1; done

find /sys/devices/system/node -name "*_hugepages" | xargs -I {} bash -c "echo {} \$(cat {})" bash
ls -lh /dev/hugepages/

crontab -r # clear all cron jobs
crontab -l # list all cron jobs

systemctl start ptp4l.service
systemctl is-active ptp4l.service
systemctl is-enabled ptp4l.service
systemctl --all --type service
systemctl list-units --type service --state running
systemctl list-unit-files
journalctl -x -u ptp4l.service

ptp4l -i enp134s0f0 -m -s -f ptp4l-multicast.conf
phc2sys -s enp134s0f0 -w -m -n 24

ptp4l -i enp134s0f0 -m -s -f ptp4l-unicast.conf
phc2sys -s enp134s0f0 -w -m -n 44