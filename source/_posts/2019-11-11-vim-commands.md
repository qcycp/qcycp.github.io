---
title: vim常用指令
categories: [Software, vim]
tags:
- vim
- linux
abbrlink: d436f53
date: 2019-11-11 14:25:30
description: 在Linux下，常用的vim指令與配置
---
# config配置
```
:set nu " 顯示行數
:set nonu " 不顯示行數

:set wrap " 自動斷行
:set nowrap " 不自動斷行

:set hlsearch " highlight搜尋字串

:set ic " 搜尋字串不分大小寫
:set noic " 搜尋字串區分大小寫

:set ff " 顯示文件格式
:set ff=unix " 設定文件格式為unix
:set ff=dos " 設定文件格式為dos
```

# 常用指令
- 切換到編輯模式
`i`
- 往下插入一列，並切換到編輯模式
`o`
- undo
`u`
- redo
`ctrl+r`
- 跳到第一列
`gg`
- 跳到最後一列
`G (shift+g)`
- 跳到指令列
`列號 + G (shift+g)`
- 搜尋字串
`/search_string`
  - 向上搜尋
  `N (shift+n)`
  - 向下搜尋
  `n`
- 批次取代字串
  - 將所有 "search_from" 的字串替換成 "replace_to"
  `:%s/search_from/replace_to/g`
  - 忽略大小寫差異
  `:%s/search_from/replace_to/gi`
  - 只取代指定行數範圍的字串
  `:50,100s/search_from/replace_to/g`
- 選取、複製、貼上
  - 複製一整列
  `ff`
  - 剪下一整列
  `dd`
  - 貼上
  `p`
  - 整列選取
  `V (shift+v)`
  - 區塊選取
  `v`
  - 方形區塊選取
  `ctrl+v`
  - 多列刪除
    - 先 `V` 切換到整行選取模式
    - 上下選擇
    - 選取完後，按下 `d` 即可刪除所選
  - 區塊刪除
    - 先 `v` 或 `ctrl+v` 切換到想要的選取模式
    - 上下選擇
    - 選取完後，按下 `d` 即可刪除所選
  - 插入多行一樣的文字，例如要將整個function區塊，往右縮排(即插入4個空白)
    - `ctrl+v` 切換到方形區塊選取模式
    - 往下選取整個function的第一行
    - `shift+i`，此時游標會跳到所選區塊的第一列
    - 輸入欲插入的文字 (4個空白)
    - 輸入完畢後，`Esc` 結束編輯模式
    - 跳出後，其餘的地方均會自動補上跟第一列相同的操作(4個空白)
- 儲存退出
`:wq`