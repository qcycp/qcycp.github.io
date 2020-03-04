---
title: Install Gstreamer Manually
abbrlink: fcb954dd
date: 2020-02-11 16:32:24
categories: [Software, gstreamer]
tags:
- 教學
- gstreamer
---
1. 安裝meson
```
$ sudo apt install python3-setuptools
$ wget https://files.pythonhosted.org/packages/ce/c5/e319419915d885933bdbfc2cee67eec8cf519b5b0ca9151573c62255dde9/meson-0.53.1.tar.gz
$ tar xzf meson-0.53.1.tar.gz
$ cd meson-0.53.1
$ python3 setup.py build
$ sudo python3 setup.py install
```
2. 安裝ninja
```
$ sudo apt install ninja-build
```
3. 安裝gstreamer，可用git checkout tag切換版本
`master: 1.17.0.1`
* prerequired
```
$ sudo apt install libglib2.0-dev flex bison
```
* 必要
git clone https://github.com/GStreamer/gstreamer.git
git clone https://github.com/GStreamer/gst-plugins-base.git
git clone https://github.com/GStreamer/gst-plugins-good.git
git clone https://github.com/GStreamer/gst-plugins-bad.git
git clone https://github.com/GStreamer/gst-plugins-ugly.git
* 非必要，安裝libav必須先裝FFMpeg
git clone https://github.com/GStreamer/gst-libav.git
git clone https://github.com/GStreamer/gstreamer-vaapi.git
git clone https://github.com/GStreamer/gst-omx.git
* steps
    * build.sh
```sh
rm -rf build &&
mkdir build &&
cd    build &&

meson  --prefix=/usr       \
       -Dbuildtype=release \
       -Dgst_debug=false   \
       -Dgtk_doc=disabled  &&
ninja
```
    * install
```
cd build
sudo ninja install
```