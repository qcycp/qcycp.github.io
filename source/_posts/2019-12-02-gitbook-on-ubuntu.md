---
title: GitBook文件轉換成pdf
abbrlink: 8931cf79
date: 2019-12-02 09:58:20
categories: [Software, GitBook]
tags:
- GitBook
---
```bash
sudo apt-get install npm
sudo npm install -g gitbook-cli
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo apt-get install calibre
sudo npm install gitbook-pdf -g
gitbook pdf .
```