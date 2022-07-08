---
title: tmp_Android_generate_UUID
abbrlink: e9d99cda
tags:
---
Generate UUID
===

```
import java.util.UUID;

/**
 *  Generate an unique 32bit uuid
 *  @return uuid
 */
public static String getUuid() {
    return UUID.randomUUID().toString().replaceAll("-", "");
}
```