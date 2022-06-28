---
title: tmp_Android_overridePendingTransition
tags:
---
overridePendingTransition
===
1. 在Activity中使用
```java
Intent intent = new Intent(ToolBarService.this, AllAppsActivity.class);
intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
startActivity(intent);
overridePendingTransition(0, 0);  
```
2. 在Service中使用
所謂的activity切換也無非是activity根據theme或者別人startactivity的時候調用了overridePendingTransition修改了activity切換的參數，所以很簡單，在你要啟動的activity的onCreate方法裡調用overridePendingTransition就可以了
```java
@Override  
protected void onCreate(Bundle savedInstanceState) {  
    overridePendingTransition(0, 0);  
    super.onCreate(savedInstanceState);  
    setContentView(R.layout.activity_main);  
    InitView();  
}
```

[【Android】Activity切换效果——当通过Service启动自己Activity的时候怎么控制 - windowsxp2014的专栏 - CSDN博客](https://blog.csdn.net/windowsxp2014/article/details/45913339)