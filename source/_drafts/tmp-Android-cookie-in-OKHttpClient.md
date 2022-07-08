---
title: tmp_Android_cookie_in_OKHttpClient
abbrlink: 6411d743
tags:
---
cookie in OKHttpClient
===
[GitHub - franmontiel/PersistentCookieJar: A persistent CookieJar implementation for OkHttp 3 based on SharedPreferences.](https://github.com/franmontiel/PersistentCookieJar)

### Download
Step 1. Add the JitPack repository in your root build.gradle at the end of repositories:
```xml
allprojects {
    repositories {
        ...
        maven { url "https://jitpack.io" }
    }
}
```
Step 2. Add the dependency
```xml
dependencies {
    compile 'com.github.franmontiel:PersistentCookieJar:v1.0.1'
}
```
### Usage
Create an instance of PersistentCookieJar passing a CookieCache and a CookiePersistor:
```java
ClearableCookieJar cookieJar = 
        new PersistentCookieJar(new SetCookieCache(), new SharedPrefsCookiePersistor(context));
```
Then just add the CookieJar when building your OkHttp client:
```java
OkHttpClient okHttpClient = new OkHttpClient.Builder()
                .cookieJar(cookieJar)
                .build();
```