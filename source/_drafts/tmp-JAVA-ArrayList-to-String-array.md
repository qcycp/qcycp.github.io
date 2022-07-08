---
title: tmp_JAVA_ArrayList_to_String_array
abbrlink: ed435dd3
tags:
---
Java ArrayList to String array
===

```
List arrayList = new ArrayList();
arrayList.add("test123");
arrayList.add("testabc");
String[] stringArray = arrayList.toArray(new String[arrayList.size()]);
```