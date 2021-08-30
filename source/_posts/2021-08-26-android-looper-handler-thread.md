---
title: android_looper_handler_thread
abbrlink: 21332ed
date: 2021-08-26 10:26:25
categories:
tags:
---
Looper/Handler/Thread
===

1. Android的系統中，透過Looper、Handler來implement消息循環機制
2. 每一條thread都可以有自己的一個Looper，也只能有一個
3. By default, thread是不沒有配置Looper的
4. Looper.prepare(): 創建一個Looper給thread
5. Looper.loop(): 進入message loop
6. create Handler時可以指定一個Looper，若沒有特別指定，預設會是當前thread的Looper
7. Looper負責message queue跟message loop的管理
8. Handler主要是
     a. 送message到Looper的message queue去 // 透過mHandler.sendMessage(msg)
     b. 處理Looper中，排程到的message // 透過handler中override的handleMessage function
9. Looper.myLooper(): 用來取得當前thread的Looper
10. Looper.getMainLooper(): 用來取得當前process的main thread的Looper


```java
// 創建一條thread，並配置Looper
class LooperThread extends Thread {
     public Handler mHandler;


     public void run() {
          Looper.prepare();


          mHandler = new Handler() {
               public void handleMessage(Message msg) {
                    ...
               }
          }

          Looper.loop();
     }
}
```