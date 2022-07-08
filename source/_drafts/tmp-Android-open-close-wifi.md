---
title: tmp_Android_open_close_wifi
abbrlink: d62e61a3
tags:
---
Open/Close Wi-Fi
===

//AndroidManifest.xml
```
<uses-permission android:name="android.permission.CHANGE_WIFI_STATE" />
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
```

```
WifiManager wiFiManager = (WifiManager) getSystemService(Context.WIFI_SERVICE);
//Open Wi-Fi
if (!wiFiManager.isWifiEnabled()) {
    wiFiManager.setWifiEnabled(true);
}

//Close Wi-Fi
if (wiFiManager.isWifiEnabled()) {
    wiFiManager.setWifiEnabled(false);
}
```