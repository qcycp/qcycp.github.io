---
title: ru_upgrade
abbrlink: d0ef147
tags:
---
```
[root@localhost ~]# ssh -p 22 192.167.27.49
Last login: Sat Sep 11 03:02:05 2021
-sh: /usr/utils/lna_ctrl: No such file or directory
monut /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test#
root@arria10:~/test# ./install_eng_v2_1_3q_524.run

Start to install v2.1.3q.524
Current folder = /home/root/test

2048+0 records in
2048+0 records out
1048576 bytes (1.0MB) copied, 1.495144 seconds, 684.9 KB/s
Installation completed. Ready to shutdown...


[root@localhost ~]# ssh -p 22 192.167.27.49
Last login: Sat Sep 11 03:02:05 2021
-sh: /usr/utils/lna_ctrl: No such file or directory
monut /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test#
root@arria10:~/test# ./install_oam_v2_1_3q_524.run
Current folder = /home/root/test

Enter new UNIX password: Retype new UNIX password: passwd: password updated successfully
Removed symlink /etc/systemd/system/sockets.target.wants/sshd.socket.
mplane_ctl: error while loading shared libraries: libxml2.so.2: cannot open shared object file: No such file or directory
Change to OAM mode with DHCP. Ready to reboot...


[root@localhost ~]# ssh -p 830 192.167.27.49
Last login: Sat Sep 11 03:02:05 2021
-sh: /usr/utils/lna_ctrl: No such file or directory
monut /dev/mmcblk0p1 to ~/sdcard
mount: /dev/mmcblk0p1 is already mounted or /home/root/sdcard busy
       /dev/mmcblk0p1 is already mounted on /home/root/sdcard
Enable PA!
root@arria10:~/test#
```