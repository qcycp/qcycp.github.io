---
title: tmp_react_native
abbrlink: a3bd9f3b
tags:
---
react-native HelloWorld
===
### Install
npm install -g react-native-cli

### Generate HelloWorld project
react-native init HelloWorld
```
D:\work\20181109_react_native_Android
$ react-native init HelloWorld
This will walk you through creating a new React Native project in D:\work\20181109_react_native_Android\HelloWorld
'yarn' ���O�����Υ~���R�O�B�i���檺�{���Χ妸�ɡC
Installing react-native...
Consider installing yarn to make this faster: https://yarnpkg.com
npm notice created a lockfile as package-lock.json. You should commit this file.
npm WARN react-native@0.57.4 requires a peer of react@16.6.0-alpha.8af6728 but none is installed. You must install peer dependencies yourself.
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_modules\fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"win32","arch":"x64"})

+ react-native@0.57.4
added 730 packages from 363 contributors and audited 16480 packages in 28.69s
found 0 vulnerabilities

Setting up new React Native app in D:\work\20181109_react_native_Android\HelloWorld
Installing React...
npm WARN rollback Rolling back readable-stream@2.3.6 failed (this is probably harmless): EPERM: operation not permitted, lstat 'D:\work\20181109_react_native_Android\HelloWorld\node_modules\fsevents\node_modules'
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_modules\fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"win32","arch":"x64"})

+ react@16.6.0-alpha.8af6728
added 2 packages and audited 16492 packages in 4.622s
found 0 vulnerabilities

Installing Jest...
npm WARN optional SKIPPING OPTIONAL DEPENDENCY: fsevents@1.2.4 (node_modules\fsevents):
npm WARN notsup SKIPPING OPTIONAL DEPENDENCY: Unsupported platform for fsevents@1.2.4: wanted {"os":"darwin","arch":"any"} (current: {"os":"win32","arch":"x64"})

+ metro-react-native-babel-preset@0.49.0
+ react-test-renderer@16.6.0-alpha.8af6728
+ babel-jest@23.6.0
+ jest@23.6.0
added 353 packages from 258 contributors, updated 2 packages and audited 34999 packages in 13.067s
found 0 vulnerabilities

To run your app on iOS:
   cd D:\work\20181109_react_native_Android\HelloWorld
   react-native run-ios
   - or -
   Open ios\HelloWorld.xcodeproj in Xcode
   Hit the Run button
To run your app on Android:
   cd D:\work\20181109_react_native_Android\HelloWorld
   Have an Android emulator running (quickest way to get started), or a device connected
   react-native run-android
```
```
$ HelloWorld
-rw-r--r-- 1 asus 197121   1126 Nov  9 16:46 App.js
drwxr-xr-x 1 asus 197121      0 Nov  9 16:46 android/
-rw-r--r-- 1 asus 197121     57 Nov  9 16:46 app.json
-rw-r--r-- 1 asus 197121    179 Nov  9 16:46 index.js
drwxr-xr-x 1 asus 197121      0 Nov  9 16:46 ios/
drwxr-xr-x 1 asus 197121      0 Nov  9 16:47 node_modules/
-rw-r--r-- 1 asus 197121 383821 Nov  9 16:47 package-lock.json
-rw-r--r-- 1 asus 197121    490 Nov  9 16:47 package.json
```
```
$ HelloWorld/android
drwxr-xr-x 1 asus 197121    0 Nov  9 16:46 app/
-rw-r--r-- 1 asus 197121  974 Nov  9 16:46 build.gradle
drwxr-xr-x 1 asus 197121    0 Nov  9 16:46 gradle/
-rw-r--r-- 1 asus 197121  856 Nov  9 16:46 gradle.properties
-rwxr-xr-x 1 asus 197121 5296 Nov  9 16:46 gradlew*
-rw-r--r-- 1 asus 197121 2260 Nov  9 16:46 gradlew.bat
drwxr-xr-x 1 asus 197121    0 Nov  9 16:46 keystores/
-rw-r--r-- 1 asus 197121   48 Nov  9 16:46 settings.gradle
```
### build apk from console
1. cd (project directory)
2. react-native run-android
```
D:\work\20181109_react_native_Android\HelloWorld
$ react-native run-android
Starting JS server...
Building and installing the app on the device (cd android && gradlew.bat installDebug)...

> Task :app:installDebug
Installing APK 'app-debug.apk' on 'Nexus 7 - 6.0.1' for app:debug
Installed on 1 device.


BUILD SUCCESSFUL in 27s
27 actionable tasks: 1 executed, 26 up-to-date
'adb' ���O�����Υ~���R�O�B�i���檺�{���Χ妸�ɡC
Starting the app (adb shell am start -n com.helloworld/com.helloworld.MainActivity...
```
JS server
```
┌──────────────────────────────────────────────────────────────────────────────┐
│                                                                              │
│  Running Metro Bundler on port 8081.                                         │
│                                                                              │
│  Keep Metro running while developing on any JS projects. Feel free to        │
│  close this tab and run your own Metro instance if you prefer.               │
│                                                                              │
│  https://github.com/facebook/react-native                                    │
│                                                                              │
└──────────────────────────────────────────────────────────────────────────────┘

Looking for JS files in
   D:\work\20181109_react_native_Android\HelloWorld

Loading dependency graph, done.
```
![sss.png](:storage\a7c2dd38-78c4-42c8-b92d-875e56da030c\28b873b8.png)
![HelloWorld.png](:storage\a7c2dd38-78c4-42c8-b92d-875e56da030c\bb8fe347.png)

### Trouble shooting
```
* What went wrong:
A problem occurred configuring project ':app'.
> SDK location not found. Define location with sdk.dir in the local.properties file or with an ANDROID_HOME environment variable.
```
create local.properties in /HelloWorld/android
[local.properties](:storage\a7c2dd38-78c4-42c8-b92d-875e56da030c\0c63d072.properties)
```
* What went wrong:
Execution failed for task ':app:compileDebugJavaWithJavac'.
> Could not find tools.jar. Please check that C:\Program Files (x86)\Java\jre1.8.0_191 contains a valid JDK installation.
```
install jdk8
[Java SE Development Kit 8 - Downloads](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)


react-native HelloWorld error
===
If You are running your application on physical device and getting this error
> unable to load script from assets index.android.bundle

try running the command:

    adb reverse tcp:8081 tcp:8081