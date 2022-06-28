---
title: tmp_Android_hide_keyboard
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