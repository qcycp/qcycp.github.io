---
title: tmp_HTML_Meta
tags:
---
Meta 十大功用
===
http://www.study-area.org/coobila/tutorial_350.html

01.顯示及排列中文：
<META http-equiv="Content-Type" content="text/html; charset=big5">
說明：
Content-Type==>文件內容格式
;==>CONTENT內要作的每件事" "，分別以分號區隔
text/html==>純文字/超文字
charset==>字元組為中文繁體大五碼，如用iso-2022-jp是指日文

02.讓搜索引擎容易找到您：
<META NAME="KeyWords" CONTENT="網頁'網頁製作'研習'免費'教學'下載'電子報">
<META NAME="KeyWords" CONTENT="HomePage'java'html'download'download'free">
說明：網頁內文關鍵字，可使用中、英文均可

03.關於網站的內容描述：
<META NAME="Description" CONTENT="網頁研習室【電子報】:網頁製作系列報導">
說明：Description==>內容的主要描述

04.這個網頁的作者是誰：
<META NAME="Author" CONTENT="Lee Wen Neng">
說明：標註本網頁作者姓名等資料

05.這是用何編輯器完成的網頁：
<META NAME="Generator" CONTENT="Mozilla/3.0Gold(Win95)[Netscape]">
說明：
標註本網頁作者姓名等資料
Generator==>編輯器
Mozilla/3.0Gold(Win95)[Netscape]==>編輯器等版本說明

06.這個網頁何時完成：
<META NAME="Creation-Date" CONTENT="01-jan-2001 20:40:01">
說明：
Creation-Date==>創作日期
01-jan-2001 20:40:01==>詳細日期時間

07.這個網頁有效時期及不被Cache所限制：
<META NAME="Expired" CONTENT="01-jan-1990 00:00:00">
<META HTTP-EQUIV="Pragma" CONTENT="no_cache">
說明：
Expired==>網頁終止期限
01-jan-1990 00:00:00==>已過去的日期時間，也可以用Mon, 01 Jan 1996 00:00:00 GMT
no_cache==>不被Cache所限制，也就是網頁沒有記憶功能。

08.網頁作者的網址與信箱：
<link rev="made" href="mailto:leewn@seed.net.tw">
<link rev="made" href="http://www.webpage.idv.tw/">
說明：網頁作者信箱或網址陳述
rev==>正向關聯
made=>網頁製造者
href==>您的信箱或網址

09.使網頁能自動換頁：
<META HTTP-EQUIV="REFRESH" CONTENT="15; url=exp1.htm">
說明：
REFRESH==>更新或重整
15==>15秒後執行下一動作
;==>CONTENT內要作的每件事" "，分別以分號區隔
url=exp1.htm==>指定轉換到此網頁

10.進入或離開的特效(限IE使用)：
<META http-equiv="指定要換頁特效發生的狀況" content="特效模式(Duration=特效持續時間,Transition=代替的特效)">
說明：
http-equiv="Page-Enter是進入本頁、Page-Exit是離開本頁、Site-Enter是進入本站、Site-Exit是離開本站"。
content="revealTrans(指定換頁特效)、blendTrans(設定換頁特效為"混合")。
Duration=設定特效持續的時間(秒)，建議在3-5秒之間。
Transition=以0-23代替特效(略)。

※運用注意事項※
A.它必須放於<HEAD>與</HEAD>之間，主要用於本網頁的內容說明，以利自己或別人(搜索引擎)使用，另外也可以製造出一些自動翻頁等特殊效果。
B.http-equiv或NAME屬性，必須配合content屬性使用，兩者也可互替使用。
C.後設語法標籤(META description tag)的用法隨各搜索引擎設定有所不同。
D.有無Meta標籤，並不影響網頁正常顯示，其最大目的在於提供網頁各種資訊及產生特殊效果。
E.網頁運用，建議以本頁所述1.2.3.4.8項這些標籤為主，其餘視況自行增減。
F.您可使用檢視原始碼，來看本例實際安排。
G.更多的報導資料，歡迎蒞臨講師(作者)網站查看。
