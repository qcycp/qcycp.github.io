---
title: tmp_Android_PopupWindow
abbrlink: 50caf70b
tags:
---
PopupWindow
===

https://blog.csdn.net/qq402164452/article/details/53353798

當PopupWindow設定setFocusable(false)時，setOutsideTouchable的設定才會有效
以下的code，在點擊PopupWindow以外的區域，PopupWindow是不會dismiss的
Note that: 三個屬性(setFocusable、setOutsideTouchable、showAtLocation)一定要照順序執行才有效果

```java
View display_view = LayoutInflater.from(ctx).inflate(R.layout.normal_alert, null, false);
popWindow = new PopupWindow(display_view,
        ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT, true);

popWindow.setFocusable(false);
popWindow.setOutsideTouchable(false);
popWindow.showAtLocation(display_view, Gravity.CENTER, 0, -250);
```