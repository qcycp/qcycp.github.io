---
title: shell_script_note
abbrlink: dd240c9a
date: 2020-04-15 10:56:34
categories:
tags:
---
* check file exist
```bash
#!/bin/bash

file="./test.log"

if [ -e "$file" ] ; then
    echo "$file found."
fi
```

* check multiple files exist
```bash
#!/bin/bash

file1="./test1.log"
file2="./test2.log"

if [ -e "$file1" -a -e "$file2" ] ; then
    echo "$file1 and $file2 are both found."
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

* 
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