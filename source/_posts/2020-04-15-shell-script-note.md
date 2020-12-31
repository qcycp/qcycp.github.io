---
title: shell script Notes
abbrlink: dd240c9a
date: 2020-04-15 10:56:34
categories: Linux
tags:
- Linux
- shell script
---
* check file exist
```bash
#!/bin/bash

file="./test.log"

if [ -f "$file" ]; then
    echo "$file found."
fi
```

* check multiple files exist
```bash
#!/bin/bash

file1="./test1.log"
file2="./test2.log"

if [ -f "$file1" -a -f "$file2" ]; then
    echo "$file1 and $file2 are both found."
fi
```

* check folder exist
```bash
#!/bin/bash

folder="/home/user"

if [ -d "$folder" ]; then
    echo "$folder found."
fi
```

* read file and compare string
```bash
#!/bin/bash

file1=`cat ./test1.log`
file2=`cat ./test2.log`

if [ "$file1" != "$file2" ] ; then
    ...
else
    ...
fi
```

* check symbolic link
```bash
#!/bin/bash

lrwxrwxrwx. 1 root root 22 Dec 31 16:26 bbu_cli -> /home/user/bbu_cli

if [ -L bbu_cli ] ; then
    echo "This is a symbolic link"
fi
```

* 除了stdout，把所有output也導一份到test.log去
set -x: 把執行的command也印出來
```bash
#!/bin/bash

NOW=$(date +"%Y-%m-%d-%H:%M:%S")
exec &> >(tee test-$NOW.log)
set -x
```

* 刪除file中，所有#開頭的行
```
sed -i "/^#/d" file
```

* 字串處理
```
result=$(echo $msg | grep xxx)
if [ -z "$result" ]; then
    echo "msg中找不到xxx內容"
fi
```

* 如果script中有多個block commands利用&進行背景執行，透過wait可以不退出script，直到直到執行Ctrl+C，並且，透過trap signal可以將所有背景執行的command也終止
```bash
#!/bin/bash

trap "exit" INT TERM ERR
trap "kill 0" EXIT

tail -F test.log &

wait
```

* echo -n 不換行輸出
```bash
$echo -n "123"
$echo "456"

output: 
123456
```

* echo -e 處理特殊字符
若字符串中出現字符，則特别加以處理，不會將它當成一般文字輸出：
```bash
\a 發出警告聲；
\b 删除前一个字符；
\c 最後不加上换行符號；
\f 换行但光标仍舊停留在原来的位置；
\n 换行且光标移至行首；
\r 光标移至行首，但不换行；
\t 插入tab；
\v 与\f相同；
\\ 插入\字符；
\nnn 插入nnn（八进制）所代表的ASCII字符；
```

* 大小寫轉換
```
NAME="NaMe"
echo ${NAME^} => Name
echo ${NAME^^} => NAME
echo ${NAME,} => naMe
echo ${NAME,,} => name
```

* stdin/stdout/stderr
0: stdin
1: stdout
2: stderr
```
> /dev/null 2>&1 => stdout 跟 stderr 都丟掉
2>&1 => 把 stderr 導到 stdout
> 等同於 1>
&> file => 把 stdout 跟 stderr 都導向 file
```

# Close STDOUT file descriptor
exec 1<&-
# Close STDERR FD
exec 2<&-

# Open STDOUT as $LOG_FILE file for read and write.
exec 1<>$LOG_FILE

# Redirect STDERR to STDOUT
exec 2>&1