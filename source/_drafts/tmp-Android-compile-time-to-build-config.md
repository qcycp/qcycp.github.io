---
title: tmp_Android_compile_time_to_build.config
abbrlink: f09c38c6
tags:
---
在build.config中寫入apk編譯的時間
===
```xml
defaultConfig {  
    applicationId "com.mtreat.faceid"  
    minSdkVersion 21  
    targetSdkVersion 26  
    versionCode 1  
    versionName "1.0"  
    testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"  
    buildConfigField "long", "BUILD_TIMESTAMP", System.currentTimeMillis() \+ "L"  
}
```

```java
import com.foxconn.faceid.BuildConfig;

Log.d(TAG, "BUILD_TIMESTAMP: " \+ BuildConfig.BUILD_TIMESTAMP);
```