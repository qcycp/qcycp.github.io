---
title: tmp_Android_explicit_implicit_intent
abbrlink: 953acd37
tags:
---
explicit/implicit intent
===

explicit intent: 確切在intent中指定要叫起哪一個activity
implicit intent: 送出intent，由各個activity中的intent-filter去決定要不要收這個intent

intent filter: 去指定自己要聽什麼intent
for example, 開圖片
同時可能有兩個apk都可以開圖片，這兩個apk的main activity都會在自己的intent filter中，指定要收"開圖片"的intent
此時，會有列表讓user選擇要使用哪一個apk來開圖片