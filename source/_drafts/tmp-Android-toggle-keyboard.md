---
title: tmp_Android_toggle_keyboard
abbrlink: 4c0162e6
tags:
---
toggle soft keyboard
===

```
InputMethodManager imm = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
imm.toggleSoftInput(0, InputMethodManager.HIDE_NOT_ALWAYS);
```