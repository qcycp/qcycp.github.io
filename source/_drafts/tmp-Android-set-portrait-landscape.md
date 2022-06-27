---
title: tmp_Android_set_portrait_landscape
tags:
---
Set portrait and landscape mode programmatically in Activity
===

```java
import android.content.pm.ActivityInfo;

protected void onResume() {
    super.onResume();

    if (portrait) {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    } else {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
    }
}
```