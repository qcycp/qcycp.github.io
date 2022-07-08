---
title: tmp_Android_adapter_and_getview
abbrlink: ba3704a4
tags:
---
避免adapter的getview執行太多次
===

在listview外面多套一層relativelayout
並把listview的height設定成fill_parent
這樣就可以避免adapter的getview執行太多次
只會執行畫面上所顯示出來的個數
```
<RelativeLayout
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical">
    <ListView
        android:id="@android:id/list"
        android:layout_width="match_parent"
        android:layout_height="fill_parent"
        android:divider="@android:color/white"
        android:dividerHeight="0dp"
        android:choiceMode="none" />
</RelativeLayout>
```