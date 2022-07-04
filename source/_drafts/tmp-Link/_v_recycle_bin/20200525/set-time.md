```
user@vm-docker:~$ sudo timedatectl set-time "2019-8-20 18:59:40"
Failed to set time: Automatic time synchronization is enabled

user@vm-docker:~$ timedatectl set-ntp 0
==== AUTHENTICATING FOR org.freedesktop.timedate1.set-ntp ===
Authentication is required to control whether network time synchronization shall be enabled.
Authenticating as: user,,, (user)
Password: 
==== AUTHENTICATION COMPLETE ===

user@vm-docker:~$ timedatectl set-ntp 1
==== AUTHENTICATING FOR org.freedesktop.timedate1.set-ntp ===
Authentication is required to control whether network time synchronization shall be enabled.
Authenticating as: user,,, (user)
Password: 
==== AUTHENTICATION COMPLETE ===

user@vm-docker:~$ sudo timedatectl set-time "2019-8-20 18:59:40"

```