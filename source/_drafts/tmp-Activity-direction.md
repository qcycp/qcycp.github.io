---
title: tmp_Activity_direction
tags:
---
Activity方向
===

動態調整Activity的方向: portrait or landscape
```
protected void onResume() {
    super.onResume();
    Log.d(TAG, "onResume()");

    boolean portrait = getPortraitMode();
    if (portrait) {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_PORTRAIT);
    } else {
        setRequestedOrientation(ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE);
    }
}
```