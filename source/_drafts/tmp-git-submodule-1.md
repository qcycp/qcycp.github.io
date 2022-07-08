---
title: tmp_git_submodule
abbrlink: d555be90
tags:
---
git submodule
===

Git Submodule 新增
* 語法：git submodule add <repository> [<path>]
* 範例：git submodule add https://github.com/facebook/facebook-php-sdk-v4.git facebook-php-sdk
* 
git submodule 新增後，會寫入下述兩個地方：
* git/config
* gitmodules

Git Submodule 詳細新增步驟
1. git submodule add https://github.com/facebook/facebook-php-sdk-v4.git facebook-php-sdk # 需在 Project 根目錄 跑此命令，所以會如下述
2. git status
```
#       new file:   .gitmodules
#       new file:   facebook-php-sdk
```

3. cat .gitmodules # 此檔案會新增出來，記得要一起 commit 進去
```
[submodule "lib/facebook-php-sdk"]
    path = lib/facebook-php-sdk
    url = https://github.com/facebook/facebook-php-sdk-v4
```

4. git add .gitmodules
5. git commit -a -m "first commit with submodule facebook sdk"
6. git push
7. git submodule init # 初始化，只有第一次要做，讓 git 認得有此 module (以後都做 update)，不過以後每次都重複執行此行也沒關係
Submodule 'lib/facebook-php-sdk' () registered for path 'lib/facebook-php-sdk'
8. cat .git/config # 查看新增狀況
```
[submodule "lib/facebook-php-sdk"]
    url = https://github.com/facebook/facebook-php-sdk-v4
```
9. git submodule update # 以後都使用這個, 或者下述 git pull origin master
10. cd lib/facebook-php-sdk
11. git pull origin master
12. git submodule status


#### Git Submodule 快速新增步驟
1. git submodule add https://github.com/facebook/facebook-php-sdk-v4.git facebook-php-sdk # 需在 Project 根目錄 跑此命令，所以會如下述
2. git add .gitmodules
3. git commit -a -m "first commit with submodule facebook sdk"
4. git submodule update
5. cd lib/facebook-php-sdk/
6. git pull origin master