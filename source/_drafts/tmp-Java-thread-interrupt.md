---
title: tmp_Java_thread_interrupt
abbrlink: 9cb8204d
tags:
---
Thread interrupt when sleeping
===

當一條thread正在sleep，是沒有辦法及時interrupt的，會產生下列exception
W/System.err﹕ java.lang.InterruptedException

使用以下方式來正確interrupt thread
```java
try {
    Thread.sleep(LSSApplication.LSS_WATCH_DOG_INTERVAL);
} catch (InterruptedException e) {
    e.printStackTrace();
    Thread.currentThread().interrupt(); // restore interrupted status
}
```