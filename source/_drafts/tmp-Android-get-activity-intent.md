---
title: tmp_Android_get_activity_intent
abbrlink: 8f7d08c9
tags:
---
getintent on onCreate for an Activity
===
https://stackoverflow.com/questions/24065146/flag-activity-launched-from-history-not-set-in-nexus-10-android-4-4-2

加入Intent.FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY的條件，可以判斷是新的intent叫起Activity，還是從recent list叫起Activity
```
Intent.FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY is only set if Android creates a new instance of your activity when the user selects the app from the list of recent tasks.
int flags = getIntent().getFlags();
if ((flags & Intent.FLAG_ACTIVITY_LAUNCHED_FROM_HISTORY) == 0) {
      // The activity wasn't launched from history
      ......
}
```