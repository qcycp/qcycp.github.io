---
title: tmp_Android_modify_alertdialog_title_color
tags:
---
modify alertdialog title color
===
法一: 改style
[How to style AlertDialogs like a pro \| SUPENTA Blog](http://blog.supenta.com/2014/07/02/how-to-style-alertdialogs-like-a-pro/)

```xml
<style name="AppTheme.Dark.Dialog" parent="Theme.AppCompat.Dialog">
    <item name="colorAccent">@color/white</item>
    <item name="android:textColorPrimary">@color/iron</item>
    <item name="android:background">@color/primary</item>
    <item name="android:windowTitleStyle">@style/DialogWindowTitle.Sphinx</item>
</style>

<style name="DialogWindowTitle.Sphinx" parent="Base.DialogWindowTitle.AppCompat">
    <item name="android:textAppearance">@style/TextAppearance.Sphinx.DialogWindowTitle</item>
</style>

<style name="TextAppearance.Sphinx.DialogWindowTitle" parent="@android:style/TextAppearance.Holo.DialogWindowTitle">
    <item name="android:textColor">@android:color/holo_green_light</item>
    <item name="android:fontFamily">sans-serif-condensed</item>
    <item name="android:textStyle">bold</item>
</style>
```

```java
AlertDialog.Builder builder = new AlertDialog.Builder(context, R.style.AppTheme_Dark_Dialog);
```

法二: 直接設定Title的內容

```java
AlertDialog.Builder builder = new AlertDialog.Builder(context);
builder.setTitle(Html.fromHtml("<font color='#FF7F27'>This is a test</font>"));
```