---
title: tmp_Linux_vim
tags:
---
vim 常用指令
===

:set nu
:set nonu
:e filename // 跳到filename去
:set wrap// 斷行
:set hlsearch
:set ic//不分大小寫搜尋

v // 選取
shift + v // 整列選取
ctrl + v // 區塊選取

yy // 複製一整列
dd // 刪除一整列
p // 貼上
i // insert
o // 下一列insert
u // 回復上一個動作
ctrl+r // 回復下一個動作
h // 左
l // 右
k // 上
j // 下
n // 搜尋下一個
shift + n // 搜尋上一個
shift + % // 區塊頭尾選擇
shift + # // 選取並搜尋上一個
shift + * // 選取並搜尋下一個
gg // 到檔案最前面
shift + g // 到檔案最後面
= // 自動排版
number -> shift+g // 跳到第number列

*==> gg -> v -> shift+g -> =  // 全文自動排版

若有用ctags建立標籤後, 可以在function name上按
ctrl+] // 跳到function定義
ctrl+t // 回上一個地方