---
title: tmp_Android_keyevent
tags:
---
Android KeyEvent
===

```
@Override
public boolean onKeyDown(int keyCode, KeyEvent event) {
    if ((keyCode == KeyEvent.KEYCODE_BACK)){
        // do something and terminating the event
        return true;
    }
    if ((keyCode == KeyEvent.KEYCODE_VOLUME_DOWN)){
        // do something and passing the event to framework
        return false;
    }
    return super.onKeyDown(keyCode, event);
}
```