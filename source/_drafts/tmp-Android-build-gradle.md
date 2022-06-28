---
title: tmp_Android_build.gradle
tags:
---
app/build.gradle
===
```bash
android {
    compileSdkVersion 28
    defaultConfig {
        applicationId "com.foxconn.webfrontend"
        minSdkVersion 19
        targetSdkVersion 28
        versionCode 1
        versionName "1.0"
        testInstrumentationRunner "android.support.test.runner.AndroidJUnitRunner"
    }
    signingConfigs {
        release {
            storeFile file("release.keystore")
            storePassword "123456"
            keyAlias "123456"
            keyPassword "123456"
        }
    }
    buildTypes {
        release {
            minifyEnabled false #混淆处理
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
        }
        debug {
            applicationIdSuffix '.debug'
        }
        staging {
            initWith release
            applicationIdSuffix '.staging'
            matchingFallbacks = ['debug']
        }
    }
}
```
1. signingConfigs
設定release build時，需要用到的資訊
2. buildTypes
可以設定release/debug

[Android打包的那些事 \| 杰风居](https://jayfeng.com/2015/11/07/Android%E6%89%93%E5%8C%85%E7%9A%84%E9%82%A3%E4%BA%9B%E4%BA%8B/)