---
title: tmp_Android_start_service_when_system_ready
abbrlink: af61e22a
tags:
---
Start service when system ready
===
To start a service from SystemService you need to register it in frameworks/base/services/java/com/android/server/SystemServer.java
```java
1139         // We now tell the activity manager it is okay to run third party
1140         // code.  It will call back into us once it has gotten to the state
1141         // where third party code can really run (but before it has actually
1142         // started launching the initial applications), for us to complete our
1143         // initialization.
1144         mActivityManagerService.systemReady(new Runnable() {
1145             @Override
1146             public void run() {
1147                 Slog.i(TAG, "Making services ready");
1148                 // HISILICON add begin
1149                 // OptimizedBoot, system tailor
1150                 boolean isOptimizedBootTailorL2 = SystemProperties.get("ro.tailor.level").equals("L2");
1151                 // HISILICON add begin
1152                 mSystemServiceManager.startBootPhase(
1153                         SystemService.PHASE_ACTIVITY_MANAGER_READY);
1154 
1155                 try {
1156                     mActivityManagerService.startObservingNativeCrashes();
1157                 } catch (Throwable e) {
1158                     reportWtf("observing native crashes", e);
1159                 }
1160 
1161                 Slog.i(TAG, "WebViewFactory preparation");
1162                 WebViewFactory.prepareWebViewInSystemServer();
1163 
1164                 try {
1165                     startHiTvService(context);
1166                 } catch (Throwable e) {
1167                     reportWtf("starting HiTvService", e);
1168                 }
1169 
[SystemServer.java] 
```