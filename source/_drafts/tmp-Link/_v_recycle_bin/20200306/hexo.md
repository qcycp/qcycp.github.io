https://yaoandy107.github.io/hexo-tutorial/


安裝搜尋套件
npm install hexo-generator-search --save


新建文章
$ hexo new [postName]
$ cd source / _post
$ edit postName.md
$ hexo d -g

預覽
$ hexo server

刪除文章
$ cd source / _post
$ rm target_file
$ hexo clean
$ hexo d -g


0. 安裝hexo
$ npm install hexo-cli -g

1. 建立github repository
qcycp.github.io

2. 建立branch
master
hexo (set default)

3. in a new and empty folder 'tmp'
$ hexo init

4. in hexo branch folder 'qcycp.github.io'
$ cp -rf tmp/* qcycp.github.io/
$ npm install
$ npm install hexo-deployer-git --save

5. 設定config
$ cd qcycp.github.io
$ vim _config.yml
deploy:
  type: git
  repository: http://github.com/qcycp/qcycp.github.io.git
  branch: master

6. 將source code進到hexo
$ git add .
$ git commit -m "setup Hexo"
$ git push

7. 將hexo內容進到master
$ cd qcycp.github.io
$ hexo d -g

8. 網頁 https://qcycp.github.io/

9. re-setup hexo project
$ git clone http://github.com/qcycp/qcycp.github.io.git
$ cd qcycp.github.io
$ npm install
$ npm install hexo-deployer-git --save


setup Next
1. 安裝Next
$ cd qcycp.github.io
$ git clone https://github.com/iissnan/hexo-theme-next themes/next

2. 建立tags頁面
$ hexo new page tags
$ cd source/tags/
$ edit index.md
```
---
title: tags
date: 2019-11-07 12:45:26
type: "tags"
---
```
$ cd themes/next/
$ edit _config.yml
```
menu:
  home: /|| home
  tags: /tags/||tags
```



安裝上傳本地圖片的外掛
npm install https://github.com/CodeFalling/hexo-asset-image –save
執行hexo new post “xxxx”
在/source/_posts資料夾內除了生成xxxx.md檔案還會生成一個同名的資料夾，把圖片複製到同名資料夾中，在博文中新增圖片：
{% asset_img 圖片名.png 圖片 %}




文章連結唯一化
Hexo 的文章連結預設是採用發佈時間或標題來使用，如果變更會導至連結改變，不利分享或 SEO，可安裝 hexo-abbrlink 解決

npm install hexo-abbrlink --save
更改主文牛的 _config.yml

permalink: posts/:abbrlink/
再 config.yml 下加上

# abbrlink config
abbrlink:
  alg: crc32  #support crc16(default) and crc32
  rep: hex    #support dec(default) and hex