---
title: 批次更改檔案副檔名
categories: Linux
tags:
- Linux
abbrlink: 4b76f376
date: 2019-11-11 13:47:00
---
範例: 把所有.JPG的副檔名，全部改成.jpg
`for f in *.JPG; do mv -- "$f" "${f%.JPG}.jpg"; done`