---
title: Happytime - rtsp stream server
abbrlink: 6826a2b4
date: 2020-02-15 11:28:15
categories: [Software, Happytime]
tags:
  - rtsp
---
##### Download link
http://www.happytimesoft.com/download.html

##### on linux
* RTSP Server for linux
```sh
$ tar xzf happytime-rtsp-server.tar.gz
$ cd happytime-rtsp-server/
$ ./start.sh
$ ./stop.sh
```
* config.xml
```xml
<config>
    <serverip>192.168.56.6</serverip>
    <serverport>8554</serverport>
    <output>
        <url></url>
        <video>
            <codec>H264</codec>
            <width>1280</width>
            <height>720</height>
            <framerate>15</framerate>
            <bitrate></bitrate>
        </video>
    </output>
</config>
```