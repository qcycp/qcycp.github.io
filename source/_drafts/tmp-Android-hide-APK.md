---
title: tmp_Android_hide_APK
tags:
---
不要在device adminstrator list中列出我們的apk
===

用這種方法，該device admin無法被Hidden Device Admin Detector app掃到
diff --git a/packages/apps/Settings/src/com/android/settings/DeviceAdminSettings.java b/packages/apps/Settings/src/com/android/settings/DeviceAdminSettings.java
index fa1c7f4..d0b07e4 100644
--- a/packages/apps/Settings/src/com/android/settings/DeviceAdminSettings.java
+++ b/packages/apps/Settings/src/com/android/settings/DeviceAdminSettings.java
@@ -124,7 +124,8 @@ public class DeviceAdminSettings extends ListFragment {
             try {
                 DeviceAdminInfo dpi = new DeviceAdminInfo(getActivity(), ri);
                 if (dpi.isVisible() || mActiveAdmins.contains(dpi.getComponent())) {
-                    mAvailableAdmins.add(dpi);
+                    if (!dpi.getPackageName().equals("com.tpv.httpclient"))
+                           mAvailableAdmins.add(dpi);
                 }
             } catch (XmlPullParserException e) {
                 Log.w(TAG, "Skipping " + ri.activityInfo, e);