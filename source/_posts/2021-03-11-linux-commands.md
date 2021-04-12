---
title: linux_commands
abbrlink: 78a715c
date: 2021-03-11 17:09:57
categories: System
tags:
- Linux
---
0. ubuntu版本
lsb_release -a
1.  pwd // 看目前所在目錄的路徑
   
2. mount
     mount -t smbfs -o username="nick.cheng",password="123456" //172.16.66.24/public /mnt/sda1
     umount /mnt/nick
   
     mount -t smbfs -o -I 172.16.66.24 -N '//msbn7835/public' /mnt/nick
     mount -t smbfs -o //172.16.66.24/public /mnt/nick
     mount -t ntfs //172.16.66.24/public /mnt/nick
     mount -t ntfs //msnb7835/public /mnt/nick
   
     mount -t nfs -o nolock 172.16.40.25:/home/ssg /mnt/ssg
     mount -t nfs -o nolock swhcsvr16:/home/nick.cheng /mnt/sda1
     mount -t nfs -o nolock 172.16.40.25:/public /mnt/sda1
     mount -t nfs -o nolock 172.16.40.25:/home/nick.cheng /mnt/sda1
   
     mount -t nfs username="nick.cheng",password="123456" 172.16.40.25:/public /mnt/sda1
     mount -t nfs -o nolost 172.16.40.25:/public /mnt/sda1

     *在ubuntu下mount server
     mount -t cifs //192.168.210.173/sis4990 /home/cyc/sisvnc02/ -o user=sis4990 -o password=123456

     利用 mount 指令解決 Read-only file system 問題
     mount -o remount,rw /

     格式：mount  -t  檔案系統類型  -o 選項  裝置  掛入點

     mount -t nfs -o nolock 172.16.66.29:/home/nick.cheng/ /home
     mount -t nfs -o nolock 172.16.66.29:/home/nick.cheng/SC1.2_testcase/ /usb/sda1
     mount -t vfat -o ro /dev/block/mmcblk1p1 /storage/sdcard1
     mount -t vfat -o rw /dev/block/mmcblk1p1 /storage/sdcard1

     umount /mnt/media_rw/usbdrive/A
     mount -t ntfs /dev/block/sda /mnt/media_rw/usbdrive/B

     mount –t vfat /dev/block/sda1  /mnt/usb_test   ( 如果Partition Type為 FAT32)
     mount –t tntfs /dev/block/sda1  /mnt/usb_test   ( 如果Partition Type為 NTFS)

3. 時區設定, time
     vi /etc/sysconfig/clock  時區設定
     ZONE="Asia/Taipei"

     改時區
     1) vi /etc/sysconfig/clock
        ZONE="Europe/Luxembourg"
        ZONE="Asia/Taipei"
     2) cp /usr/share/zoneinfo/Asia/Taipei /etc/localtime
        cp /usr/share/zoneinfo/Europe/Luxembourg /etc/localtime

     hwclock -r //讀取BIOS時間
     hwclock -w //將軟體時間寫入BIOS

     在板子上設定時間&時區
     1)mount -o remount, rw /   ->將/etc改成r/w
     2)mount -t nfs -o nolock 172.16.66.156:/home/nick.cheng /home
     3)cp /home/localtime /etc
     4)ntpdate clock.stdtime.gov.tw


     *Generic procedure to change timezone
    Change directory to /etc
    # cd /etc
    Create a symlink to file localtime:
    # ln -sf /usr/share/zoneinfo/EST localtime

     *Use of environment variable
    You can use TZ environment variable to display date and time according to your timezone:
    $ export TZ=America/Los_Angeles
    $ date


4. read file
     cat  由第一行開始顯示檔案內容
     tac  從最後一行開始顯示，可以看出 tac 是 cat 的倒著寫！
     nl   顯示的時候，順道輸出行號！
     more 一頁一頁的顯示檔案內容
     less 與 more 類似，但是比 more 更好的是，他可以往前翻頁！
     head 只看頭幾行
     tail 只看尾巴幾行
     od   以二進位的方式讀取檔案內容！

5. grep
     grep -inr DeviceDemodCreate *
     grep -inr DeviceDemodCreate *  | grep t12
     vi pcb/device_pcb_t12_116A.cpp
     grep -inr IspProcFlash *
     vi demodulator/device_demodulator_msb123x_extend.cpp
     make ui image_all
     cat /etc/issue

     grep "CURRENT HEAP" 2315.log // 在檔案2315.log中搜尋字串CURRENT HEAP
     grep '\<Cached\>' 2315.log   // 在檔案2315.log中限定搜尋字串Cached

     ps aux|grep server|grep -v grep | awk '{print $2}'|xargs kill -9

     -r: current目錄下的所有子目錄都會search
     -i: 不區分大小寫
     -n: 列出line number
     rpm -qa | grep faca | while read line ; do echo "$line" ; done


6. line number in vi
     To display line numbers along the left side of a window, type any one of the following:
          :set number
     or
          :set nu
     To turn off line number again enter the same command:
          :set nu!
          :set nonu
     If you need number every time you start vi/vim, append following line to your ~/.vimrc file:
          set number
     
     set warp! //設定不斷行顯示

7. bashrc
     1)把檔案/etc/skel/.bashrc複制到/users/nick.cheng
     每次登入時先讓設定好的bashrc生效==>source ~/.bashrc

     2)直接create file
     vi ~/.bashrc

    # Source global definitions
    if [ -f /etc/bashrc ]; then
            . /etc/bashrc
    fi

    #User specific aliases and functions
    HOME=/home/nick.cheng
    export PATH=$PATH:/tools/mips-4.3-51/mips-4.3/bin:/tools/cmake/i686/cmake-2.8.0/bin/

    #PS1='\[\033[1m\]\u@\h \w\$\[\033[0m\]'
    PS1='\[\033[1;33m\]\u@\h:\[\033[m\]\[\033[01;34m\]\W \$ \[\033[m\]'

     source ~/.bashrc

    3)設定~/.bash_profile
# Source global definitions
if [ -f $HOME/.bashrc ]; then
        . $HOME/.bashrc
fi
       login的時候會自動執行~/.bash_profile

8. tar
    壓縮 // 把資料夾 test 壓起來，生成 test.tar
    tar -cf test.tar test
    tar -czf test.tar.gz test
    tar -czf test.tgz test
    tar -cjf test.tar.bz2 test
    解壓縮 // 解壓縮放到test去
    tar -xf test.tar -C test
    tar -xzf test.tar.gz -C test
    tar -xzf test.tgz -C test
    tar -xjf test.tar.bz2 -C test

9. gdb
    g++ -g test.cpp -o test // compile

    1. gdb //進入
    2. file test //指定除錯file, 1+2 = gdb ./test
    3. run //執行
    4. list //列出code, l->下一段
    5. break num //設定中斷點在第num行
    6. info break //檢查目前中斷點設定
    7. display x //在執行每一行後都顯示x的值
    8. next //設定完break並執行時, 執行下一行


    run (r) -- 開始執行程式
    continue (c) -- 離開中斷點，繼續執行程式
    next (n) -- 單步執行 (step over)
    step (s) -- 進入函式 (step into)
    until (u) -- 離開 while, for等迴圈。 執行到程式碼的行數比目前的大，如果目前是迴圈的最後一行，就會離開迴圈
    finish -- 繼續執行程式直到函式返回
    start --在 main 設置暫時中斷點，並開始執行程式
    advance -- 執行程式直到指定的位置
    run arglist -- 同 run，並指定程式參數
    start arglist -- 同 start，並指定程式參數
    kill (k) --終止程式執行
    quit (q) --離開 GDB

10.檔案容量
    df: 用來察看硬碟空間的指令
     du: 用來察看目錄內所有檔案使用掉的空間的情況

    du -sh nick.cheng
     -a  ：列出所有的檔案與目錄容量，因為預設僅統計目錄底下的檔案量而已。
    -h  ：以人們較易讀的容量格式 (G/M) 顯示；
    -s  ：列出總量而已，而不列出每個各別的目錄佔用容量；
    -S  ：不包括子目錄下的總計，與 -s 有點差別。
    -k  ：以 KBytes 列出容量顯示；
    -m  ：以 MBytes 列出容量顯示；

     df -h
     ls -l | grep ^d | awk '{print $9}' | xargs du -sh | sort -n

11.AWK
    grep "CURRENT HEAP" 1201.log | awk '{print $5}' > heap.txt
    grep '\<Cached\>' 1201.log | awk '{print $2}' > cache.txt
    grep '\<MemFree\>' 1201.log | awk '{print $2}' > Free.txt
    grep '\<before collect objectCount\>' 1201.log | awk '{print $7}' > JSHeap_free.txt
    grep '\<before collect objectCount\>' 1201.log | awk '{print $6}' > JSHeap_size.txt
    grep '\<before collect objectCount\>' 1201.log | awk '{print $5}' > JSHeap_obj_count.txt
    grep "Number of Nodes:" 1201.log | awk '{print $4}' > node.txt
    cat /proc/meminfo | grep MemFree | awk '{print $2}'
    cat /proc/meminfo | grep -w 'MemFree\|Cached' | awk '{print $1  $3}'
    awk -F":" '{ print $1 " " $3 }' /etc/passwd
    cat /proc/meminfo | awk '/MemFree/ && /Cached/'

12.include and library
    gcc sin.c -lm -L/lib -L/usr/lib  // -L/path
     gcc sin.c -lm -I/usr/include     // -I/path

13.checn gcc version
    gcc -v

14.sync
    當資料被讀取到memory後，若檔案有修改，並不會即時將檔案寫回硬碟
     執行sync指令，會強制將目前memory中的資料，寫回硬碟

15.find
     find . -iname filename //i: 不分大小寫
     find -iname MSrv_Control_common.cpp
     find -name MSrv_Control_common.cpp
     find . -name *.o -exec cp -rf {} ./tmp \; // 將找到的檔案全部copy到tmp下
     find . -iname __pycache__ -exec rm -rf {} \;
     find . -type f -exec dos2unix {} \;
     find . -iname "*.sh" -print0 | xargs -0 grep libjpeg_old -n

16.alias
    alias ll="ls -al"

17.
            u(user)       +(加入)     r
    chmod   g(group)      -(除去)     w      file or folder
            o(others)     =(設定)     x
            a(all)
     e.g. chmod u+wx -R DAILEO //將DAILEO目錄的user權限加入wx, 並且遞迴(-R)設定DAILEO內所有檔案及資料夾

18.su
    su可以讓目前使用者的shell暫停，轉換成另一個user與group，並重新執行起一個新shell
    感覺上就好像暫時變成了另外一個帳號，再執行exit時，就可變回本尊
     -l: 模擬一個全新的login，所有的環境變數全部重新設定
     -m: 除了變成另一個帳號外，所有的環境都不變，目錄不變，環境變數也不變

     su //預設是切換到root
     su username //切換到username帳號
     sudo su //切換到root

19.Makefile
    := 會將整個 Makefile 展開後，再決定變數的值
     ?= 若變數未定義，則替它指定新的值，否則，採用原有的值
     += 聯集
     @：不要顯示執行的指令
     -：表示即使該行指令出錯，也不會中斷執行

20.fg/bg
    fg: 將stopped的程式叫到前景執行
     bg: 將stopped的程式叫到背景執行

21.cut: 將一行訊息當中，取出某部分我們想要的
    export | cut -c 12-
         將export的輸出->以行為準切齊，從第12個字元開始印出來
    echo $PATH | cut -d ':' -f 5
         將輸出以':'為準做切割，印出第5個element，for example，a:b:c:d:e:f:g ==> 只會印出e

22.刪除PATH中不要的部份
    for example, 要刪掉/usr/local/bin
    export PATH=$(echo $PATH | sed 's/:\/usr\/local\/bin:/:/g')

23.Busybox
    檔案系統是Linux不可缺少的一部份，不過在Embedded System上資源有限，不可能建立像PC那麼大的檔案系統，
     系統工具程式必須經過精簡化將檔案縮小這樣才可節省Embedded System資源。
    現在在Embedded Linux上最常用的檔案系統為 "Busybox"，
     "Buzybox"整合的各種系統工具程式(ex: ls, mkdir, rmdir, mount, ifconfig, kill ...)成為一個單一執行檔，
     大大縮減了系統使用容量。

24.echo
    將字串寫入到指定文件中
    echo xxxxxx > filename    // 會把文件內容全部清除，再寫入xxxxxx
    echo xxxxxx >> filename  // 會將xxxxxx寫入到原本文件的最末端

25.bash_history
    在~/.bashrc中設定export HISTSIZE=10000
    可以更改.bash_history中記錄的指令數量

26.java -fullversion

27.patch
    patch -pN < patchfile.diff

    for example, a file test.c, origin test.c is stored in old folder and the modified test.c is stored in new folder
    current folder: /home/nick/
    comapre: /home/nick/old  and  /home/nick/new
    ==> diff -Naur old new > diff.patch // 比較old and new folder內的所有檔案
    1. 假設現在有一個舊的test.c file存放在/home/nick下, 要把它變得跟/home/nick/new/test.c一樣 ==> patch -p1 < diff.patch
        // 因為原本是對old/ & new/下的檔案作比較，所以要省略一層目錄
    2. 假設現在有一個新的test.c file存放在/home/nick下, 要把它變得跟/home/nick/old/test.c一樣 ==> patch -R -p1 < patch.diff
    3. 假設現在有一個舊的test.c file存放在/home/nick/old下, 要把它變得跟/home/nick/new/test.c一樣 ==> patch -p0 < diff.patch
    4. 假設現在有一個新的test.c file存放在/home/nick/old下, 要把它變得跟/home/nick/old/test.c一樣 ==> patch -R -p0 < diff.patch

28.踢登入
    pkill -kill -t pts/1

29. ctags -R *
     ctags -R * ../umflib/ ../../OceanBlue/sunrise/app/cvt_eu/stb/src/ ../../../DRIVERS/kmf/basesrc_dvbeu/ ../../../DRIVERS/kmf/kmflib/ ../../../KERNEL/linux-2.6.35.9/include/sis516/
     會create出一個tags檔, 記錄所有標籤

30. 抓log
     script /home/cht/log.txt
     按ctrl+D停止log

31. 使用cat將文字輸入到文件中
     cat > filename
     貼上要輸入的文字
     按ctrl+D結束

32. EOF => ctrl+D

33. 在SSH中傳訊給其他使用者
     write sis4990
     按ctrl+D結束
     wall // broadcast
     按ctrl+D結束

34. sudo shutdown -P 0 //0分鐘後關機
    sudo poweroff

35. scp
     scp -r nick@172.17.2.11:./test/* ~/test/  把172.17.2.11上的test目錄下所有檔案都複製到本地端test目錄下
     scp -r nick@172.17.2.11:/home/architecture/SuperNova_CodeBase/tools.tar.gz ~/scp/
     scp -P 2222 -r docker-compose.yml user@172.18.32.226:/home/user/

36. 查看系統之 process
     ps 或 ps –x (查看系統中，屬於自己的 process。)
     ps –au (查看系統中，所有使用者的 process。)
     ps –aux (查看系統中，包含系統內部，及所有使用者的 process。)
     ps -elf
    
37. lsusb // 查看目前系統usb port的情況

38.
while true; do cat /proc/meminfo; sleep 1; done
while true; do cat /proc/meminfo; sleep 1; echo "==============================="; done
while true; do cat /proc/meminfo | grep MemFree; sleep 1; echo "==============================="; done

39. 載入module
      insmod /system/lib/modules/ehci-hcd.ko
      insmod /system/lib/modules/usb-storage.ko

40.screen
    screen //執行screen
    screen -r //重新回到（resume）screen 裡

        C-a c // 新增一個screen, 並切換到新的screen去
        C-a n // 切換到下一個screen
        C-a p // 切換到上一個screen
        C-a w // 列出目前所有的screen
        C-a a // 切換到上一個顯示過的視窗（不是照順序切換）
        C-a d // 脫離（detach）目前的 screen ，並放到背景執行（不管開了幾個視窗）

41.sp & vs
    1)在命令列下:sp filename, 會將視窗上下切割並開啟filename檔案
        2)在命令列下:vs filename, 會將視窗左右切割並開啟filename檔案
        C-w w //在兩個視窗中切換
        C-w j/k // 在上下兩個視窗中切換
        C-w h/l // 在左右兩個視窗中切換

42. zip
     unzip xxx.zip
     unzip xxx.zip -d dest_dir
     zip -r test.zip * // 把當前目錄下所有東西都包到test.zip中

43. free -m
```
user@vm-docker:~$ free -m
              total        used        free      shared  buff/cache   available
Mem:           1999         119        1592           1         288        1707
Swap:           975          41         934
```

44. 
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head
top -b -o +%MEM | head -n 17
top -b -o +%CPU | head -n 17
top -bn1 | awk '/gunicorn/ {print  strftime("%Y-%m-%d %H:%M:%S"), $9, $10}'

while true; do uptime; top -bn1 | awk '/gunicorn/ {print  strftime("%Y-%m-%d %H:%M:%S"), $9, $10}'; sleep 5; done
while true; do uptime | tr -d '\n'; top -bn1 | awk '/mysqld/ {print  "  " $9 "  " $10}'; sleep 5; done
while true; do uptime | tr -d '\n'; top -bn1 | awk '/nucleus/ {printf("%6s%6s\n", $9, $10)}'; sleep 5; done
while true; do uptime | tr -d '\n'; top -bn1 | awk '/nucleus/ {printf("%6s%8s\n", $9, $6)}'; sleep 5; done

45. 顯示誰已登錄，他們正在做什麼？
```
user@vm-docker:~$ w
 19:31:52 up 4 days, 10:46,  5 users,  load average: 0.00, 0.01, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user     pts/0    192.168.56.1     Thu16    1:38m  4.67s  2.89s vim /home/user/git/IMFR/WSGIServer.py
user     pts/1    192.168.56.1     Thu17    5:52   2.67s  1.43s docker-compose up
user     pts/2    192.168.56.1     Thu17    0.00s 23.53s  0.00s w
user     pts/3    192.168.56.1     Thu18    8:39m  0.16s  0.16s -bash
user     pts/4    192.168.56.1     Thu18    1:59m  0.84s  0.84s -bash
```

46. uptime - 告訴系統已經運行了多久？
```
user@vm-docker:~$ uptime 
 19:32:57 up 4 days, 10:47,  5 users,  load average: 0.00, 0.00, 0.00
```

47. 查看系統中的sh指向
```
ls -al `which sh`
```

48. 設定時區
```
sudo dpkg-reconfigure tzdata 
```
49. top 查特定 process
```
top -p `pgrep -d "," monitor.sh`
top -p pid
```