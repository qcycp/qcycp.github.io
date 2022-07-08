---
title: tmp_Android_modify_Activity_uid
abbrlink: 26bdc1fd
tags:
---
手動更改activity的uid
===
```java
//frameworks/base/services/java/com/android/server/am/ActivityStackSupervisor.java
void startSpecificActivityLocked(ActivityRecord r,
        boolean andResume, boolean checkConfig) {
    // Is this activity's application already running?

    if (r.processName.equals("org.onaips.vnc")) {
        r.info.applicationInfo.uid = 1000;
    }    
    ProcessRecord app = mService.getProcessRecordLocked(r.processName,
            r.info.applicationInfo.uid, true);
    ...
}
```