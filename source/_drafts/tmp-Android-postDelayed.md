---
title: tmp_Android_postDelayed
abbrlink: ccc36531
tags:
---
Handler postDelayed
===

```
Handler mHandler = new Handler();
mHandler.postDelayed(new Runnable() {
    @Override
    public void run() {
        // do something
    }
}, 5000);
Handler mHandler = new Handler();
mHandler.postDelayed(new Runnable() {
    @Override
    public void run() {
        // do something repeatly
        mHandler.postDelayed(this, 2000);
    }
}, 5000);
```