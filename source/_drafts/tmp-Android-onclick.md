---
title: tmp_Android_onclick
abbrlink: 1f37cd2f
tags:
---
連點 n 下
===

```java
//要點幾下array就設多大
private long[] mHits = new long[1];

System.arraycopy(mHits, 1, mHits, 0, mHits.length - 1);
mHits[mHits.length - 1] = SystemClock.uptimeMillis();
if (mHits[0] > SystemClock.uptimeMillis() - 2000) {
    //do something...
}
```