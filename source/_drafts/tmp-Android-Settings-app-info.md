---
title: tmp_Android_Settings_app_info
tags:
---
打開settings的app info頁面
===

```
Intent showSettings = new Intent();
showSettings.setAction(android.provider.Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
Uri uriAppSettings = Uri.fromParts("package", "com.android.settings", null);
showSettings.setData(uriAppSettings);
startActivity(showSettings);
```