---
title: tmp_gitbook
abbrlink: fad92b39
tags:
---
gitbook
===

[Gitbook 的使用和常用插件 \| 赵达的个人网站 - Zhao Da’s Personal Website](https://zhaoda.net/2015/11/09/gitbook-plugins/)
[books \| GitBook Plugins](https://plugins.gitbook.com/plugin/books)
[插件 · GitBook 使用教程](http://gitbook.zhangjikai.com/plugins.html#search-plus)
[Markdown解析引擎](https://api.bitcron.com/read/markdown-compiler)
[Introduction \| GitBook 简明教程](http://www.chengweiyang.cn/gitbook/index.html)
[深入淺出 GitBook 寫作與自助出版，電子書也能多人協作 by lyhcode \| CodeData](http://www.codedata.com.tw/social-coding/gitbook-self-publishing)
[用 GitBook 來寫本書吧！ - OXXO.STUDIO](https://www.oxxostudio.tw/articles/201502/gitbook.html)

git book
安裝 不用註冊帳號
https://legacy.gitbook.com/editor

安裝並且用http clone 專案, 詢問帳密就是git的帳號
https://git-scm.com/download/win

clone完後, 使用gitbook > import 專案即可

教學
http://10.36.94.194:5000/SI-SHARE/training/int_doc/GitBook%20guide.pdf



可以先用 gitbook editor 工具初始化相關檔案再編輯, 但它存檔都會 git commit, 若不存檔, 關閉 editor 也不知道它暫存到那

我是會在我的電腦先裝 gitbook-cli 裡我 local 確認產生 html, pdf 的排版
  npm install gitbook-cli -g
用 gitbook 去執行目錄下的 markdown 檔案, 再下 
  gitbook serve . 
它預設 Listen http://localhost:4000
  但我修改了 markdown 檔案後 gitbook serve 就會出錯：
    Error: EPERM: operation not permitted, open 'D:\Source Code\GitBook\Import\Smart_Building_User_Manual\_book\corp-role-page.md'
  所以我每次都要重新執行
    gitbook serve . 
 
安裝 calibre 才可以將 markdown 產生 pdf
  calibre 下載：https://calibre-ebook.com/download
執行
  gitbook pdf dest.pdf
產生 pdf


.gitlab-ci.yml 這個檔案是 run gitlab 的 CI/CD
  直接放在 markdown 說明的根目錄，push 後有變更，gitlab server 就會跑這個 yaml 檔案
  它會負責 output html, pdf

GitBook使用教程
  https://blog.csdn.net/axi295309066/article/details/61420694
  
  
  
  
1. npm install -g gitbook-cli
2. 簡單設定README.md及SUMMARY.md

README.md
```xml
# FacePad 使用者手冊

本文件包含FacePad應用程式的設定流程、使用方式，以及如何與辨識引擎後台溝通、資料設定等相關說明。

FacePad是在Android系統上開發的APK，使用的Android裝置必須支援Google play service。
```


SUMMARY.md
```xml
# Summary

## Table of Contents
* [簡介](README.md)
* [初始化設定](init/README.md)
    * [登入](init/login.md)
    * [註冊](init/register.md)
    * [辨識主機選擇](init/host_choose1.md)
    * [辨識主頁](init/facetracker.md)
* [平板設定](settings/README.md)
    * [平板名稱](settings/camera_name.md)
    * [背光省電](settings/backlight_saving.md)
    * [相機鏡頭](settings/camera_switch.md)
    * [臉部辨識大小](settings/face_size.md)
    * [平板位置](settings/camera_position.md)
    * [辨識主機選擇](settings/host_choose2.md)
    * [刪除裝置](settings/unbind.md)
    * [繼電器](settings/relay.md)
    * [資訊](settings/infomation.md)
    * [登出](settings/exit.md)
* [辨識](recognize/README.md)
    * [員工](recognize/subject.md)
    * [訪客](recognize/visitor.md)
    * [VIP](recognize/VIP.md)
```

3. gitbook init
   a. 第一次執行會安裝相關套件
   b. 會自動建立SUMMARY.md中所設定的md檔
   
```xml
$ gitbook init
info: create init/README.md
info: create init/login.md
info: create init/register.md
info: create init/host_choose1.md
info: create init/facetracker.md
info: create settings/README.md
info: create settings/camera_name.md
info: create settings/backlight_saving.md
info: create settings/camera_switch.md
info: create settings/face_size.md
info: create settings/camera_position.md
info: create settings/host_choose2.md
info: create settings/unbind.md
info: create settings/relay.md
info: create settings/infomation.md
info: create settings/exit.md
info: create recognize/README.md
info: create recognize/subject.md
info: create recognize/visitor.md
info: create recognize/VIP.md
info: create SUMMARY.md
info: initialization is finished
```


4. gitbook serve
可以用瀏覽器打開 http://localhost:4000 查看書籍的結果

![23f8f13d.png](:storage\77e690a1-db7c-4b4a-be05-d37ee86acb0e\23f8f13d.png)

```xml
$ gitbook serve
Live reload server started on port: 35729
Press CTRL+C to quit ...

info: 7 plugins are installed
info: loading plugin "livereload"... OK
info: loading plugin "highlight"... OK
info: loading plugin "search"... OK
info: loading plugin "lunr"... OK
info: loading plugin "sharing"... OK
info: loading plugin "fontsettings"... OK
info: loading plugin "theme-default"... OK
info: found 21 pages
info: found 21 asset files
info: >> generation finished with success in 2.4s !

Starting server ...
Serving book on http://localhost:4000
```


5. 使要程式碼高亮外掛

book.json
```xml
    "plugins": [
        "-search",
        "-highlight", "prism", "prism-themes"
    ],
    "pluginsConfig": {
        "theme-default": {
            "showLevel": true
        },
        "prism": {
            "css": [
                "prismjs/themes/prism-solarizedlight.css"
            ]
        }
    },
```
```bash
$ gitbook install
info: installing 2 plugins using npm@3.9.2
info:
info: installing plugin "prism"
info: install plugin "prism" (*) from NPM with version 2.4.0
D:\HH\git\gitbook\FacePad_User_Manual
`-- gitbook-plugin-prism@2.4.0
  +-- cheerio@0.22.0
  | +-- css-select@1.2.0
  | | +-- boolbase@1.0.0
  | | +-- css-what@2.1.3
  | | +-- domutils@1.5.1
  | | `-- nth-check@1.0.2
  | +-- dom-serializer@0.1.1
  | | `-- domelementtype@1.3.1
  | +-- entities@1.1.2
  | +-- htmlparser2@3.10.1
  | | +-- domhandler@2.4.2
  | | +-- inherits@2.0.3
  | | `-- readable-stream@3.2.0
  | |   +-- string_decoder@1.2.0
  | |   | `-- safe-buffer@5.1.2
  | |   `-- util-deprecate@1.0.2
  | +-- lodash.assignin@4.2.0
  | +-- lodash.bind@4.2.1
  | +-- lodash.defaults@4.2.0
  | +-- lodash.filter@4.6.0
  | +-- lodash.flatten@4.4.0
  | +-- lodash.foreach@4.5.0
  | +-- lodash.map@4.6.0
  | +-- lodash.merge@4.6.1
  | +-- lodash.pick@4.4.0
  | +-- lodash.reduce@4.6.0
  | +-- lodash.reject@4.6.0
  | `-- lodash.some@4.6.0
  +-- mkdirp@0.5.1
  | `-- minimist@0.0.8
  `-- prismjs@1.16.0
    `-- clipboard@2.0.4
      +-- good-listener@1.2.2
      | `-- delegate@3.2.0
      +-- select@1.1.2
      `-- tiny-emitter@2.1.0

info: >> plugin "prism" installed with success
info:
info: installing plugin "prism-themes"
runTopLevelLifecycles ->  | |########################################################################################################################################################################################################-------| D:\HH\git\gitbook\FacePad_User_Manual
+-- gitbook-plugin-prism@2.4.0
`-- gitbook-plugin-prism-themes@0.0.2
  `-- prism-themes@1.1.0

info: >> plugin "prism-themes" installed with success
```

6. search
<https://github.com/gitbook-plugins/gitbook-plugin-search-pro>
Usage
Before use this plugin, you should disable the default search plugin first, Here is a book.js configuration example:

{
    "plugins": [
      "-lunr", "-search", "search-pro"
    ]
}
Example
After installed gitbook.

    > git clone git@github.com:gitbook-plugins/gitbook-plugin-search-pro.git -b gh-pages
    > cd ./gitbook-plugin-search-pro
    > npm install
    > gitbook serve ./
    > 


7. gitbook build
撰写完后可以生成静态网站用来发布


[calibre - Download for Windows](https://calibre-ebook.com/download_windows)
 running the command shell as Administrator
gitbook pdf

plugin
"splitter": 在左侧目录和右侧内容之间添加一个可以拖拽的栏，用来调整两边的宽度。
"toggle-chapters": 可以將summary的項目摺疊顯示
"expandable-chapters-small": 使左侧的章节目录可以折叠
"search-plus": 可以進行中文搜尋，必須將預設的lunr, search去掉 "-lunr", "-search", "search-plus"
"search-pro": 可以進行中文搜尋，必須將預設的lunr, search去掉 "-lunr", "-search", "search-pro"