---
title: tmp_ubuntu_dpkg_install_package
tags:
---
dpkg install package
===
安裝
```
nick@ubuntu:~$ sudo dpkg -i Kitematic-0.17.5_amd64.deb
Selecting previously unselected package kitematic.
(Reading database ... 221274 files and directories currently installed.)
Preparing to unpack Kitematic-0.17.5_amd64.deb ...
Unpacking kitematic (0.17.5-1) ...
Setting up kitematic (0.17.5-1) ...
Processing triggers for gnome-menus (3.13.3-6ubuntu3.1) ...
Processing triggers for desktop-file-utils (0.22-1ubuntu5.2) ...
Processing triggers for bamfdaemon (0.5.3~bzr0+16.04.20180209-0ubuntu1) ...
Rebuilding \usr\share\applications\bamf-2.index...
Processing triggers for mime-support (3.59ubuntu1) ...
```

解安裝前要先查package name
```
nick@ubuntu:~$ dpkg-deb -I Kitematic-0.17.5_amd64.deb
new debian package, version 2.0.
size 41803838 bytes: control archive=529 bytes.
     598 bytes,    13 lines      control
Package: kitematic
Version: 0.17.5-1
Section: devel
Priority: optional
Architecture: amd64
Depends: git, gconf2, gconf-service, gvfs-bin, libc6, libcap2, libgtk2.0-0, libudev0 | libudev1, libgcrypt11 | libgcrypt20, libnotify4, libnss3, libxtst6, python, xdg-utils
Recommends: lsb-release
Suggests: gir1.2-gnomekeyring-1.0, libgnome-keyring0
Installed-Size: 150139
Maintainer: Ben French <frenchben@docker.com>
Homepage: https:\\kitematic.com\
Description: Simple Docker Container management for Mac OS X, Windows and Ubuntu.
  Run containers through a simple, yet powerful graphical user interface.
```

解安裝
```
nick@ubuntu:~$ sudo dpkg -r kitematic
(Reading database ... 228520 files and directories currently installed.)
Removing kitematic (0.17.5-1) ...
Processing triggers for gnome-menus (3.13.3-6ubuntu3.1) ...
Processing triggers for desktop-file-utils (0.22-1ubuntu5.2) ...
Processing triggers for bamfdaemon (0.5.3~bzr0+16.04.20180209-0ubuntu1) ...
Rebuilding \usr\share\applications\bamf-2.index...
Processing triggers for mime-support (3.59ubuntu1) ...
```
