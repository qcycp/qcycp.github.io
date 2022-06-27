---
title: tmp_Android_UI_thread
tags:
---
Android UI Thread
===
http://cw1057.blogspot.com/2014/12/asynctask-ui-thread.html

https://developer.android.com/training/multiple-threads/communicate-ui.html

根據 Communicating with the UI Thread 裡說的：

Every app has its own special thread that runs UI objects such as View objects; this thread is called the UI thread. Only objects running on the UI thread have access to other objects on that thread. Because tasks that you run on a thread from a thread pool aren't running on your UI thread, they don't have access to UI objects. To move data from a background thread to the UI thread, use a Handler that's running on the UI thread.

擷取重點如下：
每個 App 都會有一個（僅此一個）負責管理所有 UI 物件的 Thread，就叫做 UI Thread，要操作任何 UI 物件都得透過這個 Ui Thread。
任何 Background Thread，像是 Thread Pool 來的，或是 AsyncTask，都不能呼叫 UI 物件的任何 API，否則，App 立刻死給你看，沒有 Exception 喔（catch 不到），App 直接打卡下班。
Background Thread 要跟 UI 互動的話，Thread Pool 來的可以透過 Handler，AsyncTask（一種簡易版的 Background Thread）可以呼叫特定的 API。
