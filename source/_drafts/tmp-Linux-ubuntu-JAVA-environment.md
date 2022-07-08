---
title: tmp_Linux_ubuntu_JAVA_environment
abbrlink: 986453cd
tags:
---
在ubuntu上安裝Java環境
===

下載 Java SE Development Kit 6u45
http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-javase6-419409.html


Step1. 將檔案 jdk-6u45-linux-x64.bin放在/usr/lib/jdk/ 目錄下面

Step2. 執行 sudo ./jdk-6u45-linux-x64.bin

Step3. 設置環境變數，打開文件 /etc/profile，指令： sudo vi /etc/profile

Step4. 在文件的最後端加上：

     export JAVA_HOME=/usr/lib/jdk/jdk1.6.0_45
     export JRE_HOME=/usr/lib/jdk/jdk1.6.0_45/jre
     export CLASSPATH=.:$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
     export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH

Step5.將系統默認的jdk修改過來，也就是java和javac指令由系統自帶的換成你自己安裝的

     指令：
     sudo update-alternatives --install /usr/bin/java java /usr/lib/jdk/jdk1.6.0_45/bin/java 300
     sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jdk/jdk1.6.0_45/bin/javac 300
     sudo update-alternatives --install /usr/bin/javap javap /usr/lib/jdk/jdk1.6.0_45/bin/javap 300
     sudo update-alternatives --install /usr/bin/javah javah /usr/lib/jdk/jdk1.6.0_45/bin/javah 300
     sudo update-alternatives --config java
     sudo update-alternatives --config javac
     sudo update-alternatives --config javap
     sudo update-alternatives --config javah

Step6.檢查版本，指令： java -version

     如果出現以下字樣，代表順利完成安裝。

     java version "1.6.0_45"
     Java(TM) SE Runtime Environment (build 1.6.0_45-b06)
     Java HotSpot(TM) 64-Bit Server VM (build 20.45-b01, mixed mode)


安裝openjdk-7
sudo apt-get install openjdk-7-jdk

安裝openjdk-8-jdk
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update
sudo apt-get install openjdk-8-jdk
sudo update-alternatives --config java