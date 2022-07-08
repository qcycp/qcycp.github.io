---
title: tmp_Android_hide_keyboard
abbrlink: 9c569602
tags:
---
force hide keyboard
===

```java
//hide keyboard
InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
if (imm != null) {
    imm.hideSoftInputFromWindow(view.getWindowToken(), InputMethodManager.HIDE_NOT_ALWAYS);
}
```