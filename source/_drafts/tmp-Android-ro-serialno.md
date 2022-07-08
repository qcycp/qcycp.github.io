---
title: tmp_Android_ro.serialno
abbrlink: cc459d6b
tags:
---
Get ro.serialno property
===

```
/**
 * Retrieves the ro.serialno system property
 * @param defValue the value to be returned if the serial number could
 * not be resolved
 */
public static String getSerialno(String defValue) {
    try {
        Method getString = Build.class.getDeclaredMethod("getString", String.class);
        getString.setAccessible(true);
        return getString.invoke(null, "ro.serialno").toString();
    } catch (Exception ex) {
        return defValue;
    }
}
```