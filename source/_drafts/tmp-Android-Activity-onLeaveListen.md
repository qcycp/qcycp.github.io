---
title: tmp_Android_Activity_onLeaveListen
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