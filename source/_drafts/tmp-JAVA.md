---
title: tmp_JAVA
tags:
---
第一個Java程式
===

 //HelloWorld.java

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello! World!");
    }
}

設定環境變數: C:\>set path=%path;C:\Program Files\Java\jdk1.8.0_161\bin
編譯: javac HelloWorld.java, 產生HelloWorld.class
執行: java HelloWorld
java -cp [compiler outpur dir] HelloWorld