---
title: tmp_Linux_install_ubuntu
abbrlink: 7223a2cd
tags:
---
第一次安裝ubuntu就上手
===

1. 更新library
apt-get update
apt-get upgrade

2. 基本應用程式
apt-get install vim ssh samba quota htop landscape-common

3. 工作需要
apt-get install git-core android-tools-adb

4. For android building system
apt-get install build-essential libncurses5-dev libxml2-utils git gnupg flex gperf zip curl libc6-dev x11proto-core-dev tofrodos python-markdown xsltproc expect python-markdown lib32z1 g++-multilib bison procmail gawk dos2unix

5. 安裝java

6. 將/bin/sh改成指向bash
如果原本設定為 /bin/sh -> dash
sudo dpkg-reconfigure dash
==>選No
==>/bin/sh -> bash