---
title: tmp_Cpp_library
tags:
---
靜態、動態函式庫
===

程式執行時會參照到library，其中又分動態連結與靜態連結。
.so檔是可共用的，.a則不行
1. 使用動態連結的執行檔，他們的大小通常較小，而且在程式執行時一定要參照.so檔，在Linux裡可以用ldd指令去看某程式要參照什麼函式庫。.so檔通常放在/lib中，程式才會找到他。
2. 靜態連結的執行檔，檔案通常較大，而且在執行時不必再動態去參照函式庫。

[Example1]
// testlib.h
#include <stdio.h>

void func_a();
void func_b();

// testlib_a.c
#include <stdio.h>
#include "testlib.h"

void func_a()
{
    printf("%s\n", __FUNCTION__);
}

// testlib_b.c
#include <stdio.h>
#include "testlib.h"

void func_b()
{
    printf("%s\n", __FUNCTION__);
}

// main.c
#include <stdio.h>
#include "testlib.h"

int main()
{
    func_a();
    func_b();
    return 0;
}


$ gcc -c testlib_a.c testlib_b.c                           ==> 產生testlib_a.o及testlib_b.o
$ ar -r libtest.a testlib_a.o testlib_b.o                  ==> 結合testlib_a.o及testlib_b.o，產生libtest.a
$ gcc testlib_a.c testlib_b.c -fPIC -shared -o libtest.so  ==> 產生libtest.so

## -shared 該選項指定生成動態連接庫
## -fPIC：表示編譯為位置獨立的代碼，不用此選項的話編譯後的代碼是位置相關的，所以動態載入時是通過代碼拷貝的方式來滿足不同進程的需要，而不能達到真正代碼段共用的目的

$ gcc -o main_static main.c libtest.a        ==> 鏈結libtest.a，產生執行檔main_static
$ gcc -o main_dynamic main.c libtest.so      ==> 鏈結libtest.so，產生執行檔main_dynamic
$ gcc main.c -L. -I. -ltest -o main_dynamic  ==> 鏈結libtest.so，產生執行檔main_dynamic

## 依照實際header檔及library的位置，去指定-L及-I帶的路徑
## -ltest：編譯器查找動態連接庫時有隱含的命名規則，即在給出的名字前面加上lib，後面加上.so來確定庫的名稱
## 在執行main_dynamic時，若找不到function定義，可以設定環境變數LD_LIBRARY_PATH，指示動態連接器能裝載動態庫的路徑


[Example2]
製作動態連結函式庫：
gcc a.c b.c -shared -include c.h -o libtest.so -I /usr/include  產生libtest.so

製作靜態連結函式庫：
先產生object file，再用ar產生.a檔
gcc -c a.c b.c
ar crv libtest.a a.o b.o   (c表示創造新的archive r是插入新的目的檔到archive中 v是顯示詳細資訊  p.s d是從archive中刪除某目的檔)

編譯執行檔
gcc -o main main.c libtest.so (產生動態連結的執行檔)
gcc -o main main.c libtest.a   (產生靜態連結的執行檔)

也可以這樣寫
gcc -c main.c
gcc -o main main.o -I. -L. -ltest
-I表示程式要引入的標頭檔的所在位置，"."表示當前目錄
-L表示程式要使用的函式庫的所在位置，"."表示當前目錄

.a變成.so
ld --whole-archive -shared -o lib.so lib.a