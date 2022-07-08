---
title: tmp_Android_Activity_onLeaveListen
abbrlink: a2cf7ad4
tags:
---
監聽離開Activity的事件
===
```java
@Override
protected void onUserLeaveHint() {
    super.onUserLeaveHint();
    Log.d(TAG, "onUserLeaveHint");
}
```