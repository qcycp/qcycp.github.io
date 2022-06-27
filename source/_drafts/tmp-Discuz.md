---
title: tmp_Discuz
tags:
---
安裝Discuz論壇
===

1. 下載 繁體UTF8版 in http://www.discuz.net/thread-3457145-1-1.html
1.1 下載 補丁 http://download.comsenz.com/DiscuzX/3.1/Discuz_X3.1_TC_UTF8.zip
升級方法
a) 根據原有的語言版本下載升級包
b) 解壓縮, 將upload目錄中的文件上傳至服務器, 覆蓋舊文件
c) 使用創始人身份進入後台更新緩存

2. 解壓Discuz_X3.1_TC_UTF8.zip
    將Discuz_X3.1_TC_UTF8/upload目錄複製到/var/www/下，並更名為discuz
2.1 網頁資料擺放的資料夾名稱不可以是大寫，否則會不正常
      The requested URL /discuz/uc_server/admin.php was not found on this server.

3. 在MySQL先建立database Forum
4. 將/var/www/forum目錄下的 data、config、uc_server、uc_client目錄讀取權限設定成0777
5. 在Browser連接http://172.17.2.17/discuz
    首次連接會自動導向http://172.17.2.17/discuz/install/
5.1 mysqli_connect()     不支持     advice_mysqli_connect
      => 重開機就好了
    
6. 設定

![a0db2d53de1fb6960b4a1b055ff39f45.png](:/48251eaa916e49f1807075f557f6d123)

7. 設定logo
    把tpvlogo.png檔案放到/var/www/discuz/static/image/common/
    並在界面->風格管理中設定
8. 設定上傳附件大小
    用戶->用戶組->編輯某一用戶組->論壇相關->附件相關
    設定論壇最大附件尺寸為102400
9. 運營->友情鏈結
10. 刪除/var/www/forum/install/index.php

疑難雜症
a)
內建圖片的儲存路徑為
/var/www/static/image/common/

b)
修改上傳檔案大小in /etc/php5/apache2/php.ini
將upload_max_filesize = 2M改成100M
將post_max_size = 8M改成150M

c)
discuz論壇更換目錄後出現頭像無法顯示、ucenter無法進入、附件路徑錯誤
解决方案（以原論壇安裝在bbs，移動到根目錄下为例）：
1、在路徑：/uc_server/data/cache/apps.php 下
修改： 'url' => 'http://8llz.com/bbs'
为： 'url' => 'http://8llz.com'
2、在路徑：/config/config_ucenter.php 下
修改define('UC_API', 'http://8llz.com/bbs/uc_server');
为：define('UC_API', 'http://8llz.com/uc_server');
3、進入管理中心，修改 全局->網站URL
4、進入ucenter後台，修改應用的路徑（去掉/bbs) ，重新添加應用，修改密鑰與論壇一樣後，通訊成功，刷新緩存

d) 如何去除discuz網站站title的powered by discuz
in template\default\common\header_common.htm
<title><!--{if !empty($navtitle)}-->$navtitle - <!--{/if}--><!--{if empty($nobbname)}--> $_G['setting']['bbname'] - <!--{/if}--> Powered by Discuz!</title>
將後面的 Powered by Discuz! 去除

e) 如何張貼相片？
請先上載相片至各圖片上傳空間，eg. http://www.imageshack.us/
在你想插入相片的位置按工具列中的「圖片」鍵，輸入圖片網址即可。
或可直接使用Discuz代碼：[img]圖片網址[/img]

f) 如何張貼youtube影片？
請複製該youtube影片ID（即為網址中，"watch?v="後的一堆數字/字母），
在你想插入影片的位置貼上Discuz代碼：[youtube]影片ID[/youtube]即可。
或可使用工具列中的「youtube」鍵加入。

g) 如何張貼多媒體如：wma,mp3,wmv,asf,mpg,mpeg,rm,rmvb,ra,ram？
影片需先上載至其他網站，
在你想插入多媒體的位置使用Discuz代碼：[media]多媒體網頁地址[/media] 即可。
或可使用工具列中的「播放」鍵加入。

h) 如何張貼flash檔？
請先上載flash檔至各上傳空間，
在你想插入flash的位置使用Discuz代碼：[flash]Flash網頁地址[/flash] 即可。
或可使用工具列中的「flash」鍵加入。

i) 如何使用Discuz代碼？
請看此頁： http://reiki.com.hk/faq.php?action=faq&id=5&messageid=18
較常用的有：
[b]粗體文字[/b]
[i]斜體文字[/i]
[u]下劃線文字[/u]
[color=red]紅顏色[/color]
[size=3]文字大小為 3[/size]
[url]http://www.reiki.com.hk[/url]
[url=http://www.reiki.com.hk]自然能量研究中心[/url]

j) 修改登入錯誤太多次，鎖15分鐘的限制
in source/function/function_member.php
$return = (!$login || (TIMESTAMP - $login['lastupdate'] > 900)) ? 5 : max(0, 5 - $login['count']);
$return = (!$login || (TIMESTAMP - $login['lastupdate'] > 秒數)) ? 次數 : max(0, 次數 - $login['count']);
in source/language/lang_message.php
  'login_strike' => '密碼錯誤次數過多，請 15 分鐘後重新登錄',

k) 登錄不需輸入驗證碼
防灌水->驗證設置->登錄時啟用驗證碼->改成不啟用