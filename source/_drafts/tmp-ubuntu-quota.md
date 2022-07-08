---
title: tmp_ubuntu_quota
abbrlink: 6c753de6
tags:
---
Install quota
===
a. 設定quota屬性給系統
    edit /etc/fstab
    /dev/sdb     /HDD1_2T     ext4     defaults,usrquota,grpquota     0       1
    umount /home
    mount -a

b. 掃描檔案系統，並建立quota的記錄檔
    quotacheck -auvg
    完成之後，會在目錄下發現兩個檔案：aquota.group、aquota.user

c. 啟動quota服務
    quotaoff -a //關掉所有quota限制
    quotaon -auvg

d. 設定使用者限制
    edquota -u nick
    edquota -g architecture // 設定group限制
    Disk quotas for user nick (uid 1001):
    Filesystem                   blocks       soft       hard     inodes     soft     hard
    /dev/sdb                  157214140  409600000  409600000    2433207        0        0
    只需要去修改soft跟hard的值

e. 設定好其中一個user之後，可以把設定複製給其他使用者
    edquota -p nick -u abc // 將nick的設定值複制給abc

f. 若超過限額，會有一個緩衝期讓user砍檔，利用下列命令設定時限
    edquota -t

g. repquota /HDD1_2T 列出目前磁碟配額報告

blocks：user 在 / 已使用的容量 (KB)，此項目無法更改
soft：軟性限制，若超過的大小可充許暫時使用，使用單位為 KB
hard：硬性限制，若超過軟性限制，無論如何並無法超過硬性大小限制，使用單位為 KB
inodes：user 在 / 己使用的檔案（目錄及檔案）數，此項目無法更改
soft：軟性限制，若超過的單位可充許暫時使用
hard：硬性限制，若超過軟性限制，無論如何並無法超過硬性單位限制