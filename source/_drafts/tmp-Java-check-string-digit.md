---
title: tmp_Java_check_string_digit
abbrlink: bd12ef52
tags:
---
判斷String是否為一串數字
===
```java
import java.util.regex.Pattern;

public static boolean isInteger(String str) {
    Pattern pattern = Pattern.compile("^[-\\+]?[\\d]*$");
    return pattern.matcher(str).matches();
}
```

[Java中判断字符串是否为数字的五种方法 - 来杯咖啡，随便聊聊。 - ITeye博客](http://javapub.iteye.com/blog/666544)