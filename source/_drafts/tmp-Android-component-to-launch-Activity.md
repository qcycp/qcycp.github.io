---
title: tmp_Android_component_to_launch_Activity
abbrlink: 4e7af9f5
tags:
---
透過component帶出某activity
===

```
ComponentName componetName = new ComponentName(
                            "org.droidtv.settings",                           // package name
                            "org.droidtv.sources.SourcesDrawerActivity");     // main activity name
try {
    Intent intent = new Intent();
    intent.setComponent(componetName);
    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    startActivity(intent);
} catch (Exception e) {
    Log.i(TAG, "Application not found!!");
}
```