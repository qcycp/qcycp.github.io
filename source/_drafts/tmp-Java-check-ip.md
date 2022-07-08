---
title: tmp_Java_check_ip
abbrlink: 278c5258
tags:
---
Java 判斷輸入的字串是否為IP Address
===
```java
String IP_PATTERN = "^([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
                     "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
                     "([01]?\\d\\d?|2[0-4]\\d|25[0-5])\\." +
                     "([01]?\\d\\d?|2[0-4]\\d|25[0-5])$";

public boolean checkIpFormat(String ipStr) {
    Pattern pattern = Pattern.compile(IP_PATTERN);

    Log.d(TAG, "ipStr: " + ipStr);
    if (!pattern.matcher(ipStr).matches()) {
        return false;
    } else {
        return true;
    }
}
```