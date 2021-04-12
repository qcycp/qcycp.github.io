---
title: shell script Notes
abbrlink: dd240c9a
date: 2020-04-15 10:56:34
categories: Linux
tags:
- Linux
- shell script
---
* get the folder where the shell script is
```
DIR=`dirname $0`
```

https://www.tutorialspoint.com/unix/shell_scripting.htm
!   This is logical negation. This inverts a true condition into false and vice versa. [ ! false ] is true.
-o  This is logical OR. If one of the operands is true, then the condition becomes true. [ $a -lt 20 -o $b -gt 100 ] is true.
-a  This is logical AND. If both the operands are true, then the condition becomes true otherwise false. [ $a -lt 20 -a $b -gt 100 ] is false.
-z  Checks if the given string operand size is zero; if it is zero length, then it returns true. [ -z $a ] is not true.
-n  Checks if the given string operand size is non-zero; if it is nonzero length, then it returns true. [ -n $a ] is not false.
=   Checks if the value of two operands are equal or not; if yes, then the condition becomes true. [ $a = $b ] is not true.
!=  Checks if the value of two operands are equal or not; if values are not equal then the condition becomes true. [ $a != $b ] is true.
-f file Checks if file is an ordinary file as opposed to a directory or special file; if yes, then the condition becomes true. [ -f $file ] is true.
-d file Checks if file is a directory; if yes, then the condition becomes true. [ -d $file ] is not true.

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

# for lines in command result
```
update-alternatives --display java | while read line ; do
    echo $line
done
```

# delete specific cron job
保留 "job command" 以外的 cron jobs
```
crontab -l 2>/dev/null | grep -v 'job command' | crontab -
```

# dynamic variable
```
id=0
A_0=1
A_1=2

target=A_${id}
echo ${!target} #1
```
# filename and extension
filename=$(basename -- "$fullfile")
extension="${filename##*.}"
filename="${filename%.*}"

https://blog.csdn.net/toopoo/article/details/105409383
將導向檔案的log，加上時間戳記

* Process Uptime
ps -p <process_id> -o etime
```
>> ps -p 1 -o etime
ELAPSED
21:51
>> ps -p 1 -o etime=
03:24:30
>> ps -p 1 -o etimes=
12270
```
* string
${string:index:length}
test=123
${test:0:1} //1
${test:1:1} //2
${test:2:1} //3

* isdigit
if [[ $value =~ ^[0-9]+$ ]];then
  echo $value is a digit
fi
if [[ ! $value =~ ^[0-9]+$ ]];then
  echo $value is not a digit
fi
if [[ $value =~ ^-?[0-9]+$ ]];then
  echo $value is a digit
fi
The ^ indicates the beginning of the input pattern
The - is a literal "-"
The ? means "0 or 1 of the preceding (-)"
The + means "1 or more of the preceding ([0-9])"
The $ indicates the end of the input pattern

* return value of function
```sh
foo()
{
    a=$1
    b=$2
    echo `expr $a \* 2 + $b`
}

ret=$(foo 1 2)
echo $ret # 4
```
* array
```
array 宣告
declare -a array

建立 array with items
array=( item1 item2 item3 )

for index in ${!array[@]}; do
    echo $((index+1))/${#array[@]}
done

// 1/3
// 2/3
// 3/3

array+=(item4)

for i in ${array[@]}; do
    echo $i
done
// item1
// item2
// item3
// item4



array_diff()
{
    eval local ARR1=\(\"\${$2[@]}\"\)
    eval local ARR2=\(\"\${$3[@]}\"\)
    local IFS=$'\n'
    mapfile -t $1 < <(comm -23 <(echo "${ARR1[*]}" | sort) <(echo "${ARR2[*]}" | sort))
}

array1=(1 2)
array2=(2 3 4)

array_diff RESULT array1 array2
echo "${RESULT[@]}" // 1

array_diff RESULT array2 array1
echo "${RESULT[@]}" // 3 4
```
* color
Text Style
Code | Description
-----|-------
0 | Reset/Normal
1 | Bold text
2 | Faint text
3 | Italics
4 | Underlined text

Color | Foreground | Background
Black | 30 | 40
Red | 31 | 41
Green | 32 | 42
Yellow | 33 | 43
Blue | 34 | 44
Magenta | 35 | 45
Cyan | 36 | 46
Light Gray | 37 | 47
Gray | 90 | 100
Light Red | 91 | 101
Light Green 92 | 102
Light Yellow | 93 | 103
Light Blue | 94 | 104
Light Magenta | 95 | 105
Light Cyan | 96 | 106
White | 97 | 107

```
#!/bin/bash

RED='\033[0;31m'
BOLD='\033[1m'
BOLD_RED='\033[1;31m'
NC='\033[0m'

echo -e ${RED}RED${NC}
echo -e ${BOLD}BOLD${NC}
echo -e ${BOLD_RED}BOLD_RED${NC}
```