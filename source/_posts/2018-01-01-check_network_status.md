---
title: Check Network Status
abbrlink: 27f80ae0
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
---
```java
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public boolean isNetworkConnected() {
    ConnectivityManager connManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
    if (connManager != null) {
        NetworkInfo mNetworkInfo = connManager.getActiveNetworkInfo();
        if (mNetworkInfo != null && mNetworkInfo.isConnected()) {
            return mNetworkInfo.isAvailable();
        }
    }
    return false;
}
```