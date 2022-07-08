---
title: tmp_git_submodule
abbrlink: d555be90
tags:
---
git submodule
===

[Git Submodule 介紹與使用 \| 小惡魔 - 電腦技術 - 工作筆記 - AppleBOY](https://blog.wu-boy.com/2011/09/introduction-to-git-submodule/)  

* 先在gitlab上create project  

* 上傳project  
```sh
git clone git@10.36.94.101:SI/customer/InnoLux_MOD4.git
cd InnoLux_MOD4/
git submodule add git@10.36.94.101:SI/FacePad.git FacePad
git submodule add git@10.36.94.101:SI/PadManager.git PadManager
git commit -a -m "first commit with submodule of FacePad and PadManager"
git push -u origin master
```

* 下載project
```sh
git clone git@10.36.94.101:SI/customer/InnoLux_MOD4.git
cd InnoLux_MOD4/
git submodule init
git submodule update
```