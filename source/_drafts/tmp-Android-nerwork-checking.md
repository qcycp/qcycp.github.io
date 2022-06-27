---
title: tmp_Android_nerwork_checking
tags:
---
Android 判斷是否有網路連接
===

```java
public boolean isNetworkConnected() {
    ConnectivityManager connManager = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
    NetworkInfo mNetworkInfo = connManager.getActiveNetworkInfo();
    if (mNetworkInfo != null && mNetworkInfo.isConnected()) {
        return mNetworkInfo.isAvailable();
    }
    return false;
}
```

Android 獲取當前網路連接的類型資訊
===
http://ccbasic.blogspot.com/2013/10/android.html

```java
public static int getConnectedType(Context context) {   
    if (context != null) {
        ConnectivityManager mConnectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo mNetworkInfo = mConnectivityManager.getActiveNetworkInfo();
        if (mNetworkInfo != null && mNetworkInfo.isAvailable()) {
            //ConnectivityManager.TYPE_MOBILE = 0
            //ConnectivityManager.TYPE_WIFI = 1
            return mNetworkInfo.getType();
        }
    }
    return -1;
}
```

Android - Check Network Status
===
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