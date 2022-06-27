---
title: tmp_Android_onKeyDown
tags:
---
onKeyDown
===

```java
@Override
public boolean onKeyDown(int keyCode, KeyEvent event) {
    Log.d(TAG, "onKeyDown()");

    if (keyCode == KeyEvent.KEYCODE_BACK) {
        Log.d(TAG, "keyCode = " + keyCode);

        return false;
    }

    return super.onKeyDown(keyCode, event);
}
```