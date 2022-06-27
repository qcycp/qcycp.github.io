---
title: tmp_Android_activity_fade
tags:
---
Android切換Activity時的動畫
===
http://ptodue.blogspot.com/2014/10/androidactivity-overridependingtransiti.html

```
overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out);
```

使用時機：在startActivity or finish後執行
```
Intent intent = new Intent();
intent.setClass(MainActivity.this, SecondActivity.class);
startActivity(intent);
overridePendingTransition(R.anim.slide_in_up, R.anim.slide_out_down); 
```
若要結束一個Activity時，完全不顯示任何效果，如下
```
finish();
overridePendingTransition(0, 0);
```
相關範例可以在 sdk\platforms\android-21\data\res\anim中就可以找到
(實現淡入淡出的效果)android.R.anim.fade_in, android.R.anim.fade_out; 
(由左向右滑入的效果)android.R.anim.slide_in_left, android.R.anim.slide_out_right
(由上向下滑入的效果)android.R.anim.slide_in_up, android.R.anim.slide_out_down
