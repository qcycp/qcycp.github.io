---
title: tmp_Android_Navigator_Drawer
tags:
---
navigator drawer
===

```xml
<?xml version="1.0" encoding="utf-8"?>
<menu xmlns:android="http://schemas.android.com/apk/res/android" >
    <item android:title="@string/general_settings">
        <menu>
            <item
                android:id="@+id/nav_backlight"
                android:icon="@mipmap/backlight"
                android:title="@string/backlight_power_saving" />

            <item
                android:id="@+id/nav_switch_camera"
                android:icon="@mipmap/switch_camera"
                android:title="@string/switch_camera" />

            <item
                android:id="@+id/nav_orientation"
                android:icon="@mipmap/orientation"
                android:title="@string/orientation" />

            <item
                android:id="@+id/nav_face_size"
                android:icon="@mipmap/face_size"
                android:title="@string/face_size" />
        </menu>
    </item>

    <group
        android:id="@+id/menu_pad_settings"
        android:checkableBehavior="none">

        <item
            android:id="@+id/nav_settings_position"
            android:icon="@mipmap/position"
            android:title="@string/camera_position" />

        <item
            android:id="@+id/nav_settings_direction"
            android:icon="@mipmap/direction"
            android:title="@string/camera_direction" />

        <item
            android:id="@+id/nav_unbind_device"
            android:icon="@mipmap/unbind"
            android:title="@string/unbind_device" />
    </group>
    
    <group
        android:id="@+id/menu_bottom"
        android:checkableBehavior="none">

        <item
            android:id="@+id/nav_reset"
            android:icon="@mipmap/reset"
            android:title="@string/reset" />

        <item
            android:id="@+id/nav_exit"
            android:icon="@mipmap/exit"
            android:title="@string/exit" />
    </group>

</menu>
```

Navigation Drawer
===
如果android:checkableBehavior設定為single
當item被選中時，會有highloight效果

如果android:checkableBehavior設定為none
當item被選中時，就不會有highloight效果

```xml
<?xml version="1.0" encoding="utf-8"?>
<menu xmlns:android="http://schemas.android.com/apk/res/android" >
    <group
        android:checkableBehavior="single">
        <item
            android:id="@+id/nav_unbind_device"
            android:title="@string/unbind_device" />
        <item
            android:id="@+id/nav_settings"
            android:title="@string/settings" />
        <item
            android:id="@+id/nav_slideshow"
            android:title="@string/register" />
        <item
            android:id="@+id/nav_manage"
            android:title="@string/network_alert" />
    </group>

    <group
        android:id="@+id/menu_bottom"
        android:checkableBehavior="none">

        <item
            android:id="@+id/nav_exit"
            android:title="@string/exit" >
        </item>
    </group>
</menu>
```


BroadcastReceiver
===
```xml
<receiver android:directBootAware=["true" | "false"]
          android:enabled=["true" | "false"]
          android:exported=["true" | "false"]
          android:icon="drawable resource"
          android:label="string resource"
          android:name="string"
          android:permission="string"
          android:process="string" >
    . . .
</receiver>
```
android:enabled —— Whether or not the broadcast receiver can be instantiated by the system — "true" if it can be, and "false" if not. The default value is "true". 
android:exported —— 此broadcastReceiver能否接收其他App的發出的廣播（其默認值是由receiver中有無intent-filter决定的，如果有intent-filter，默認值為true，否則為false。）
                    若為false，代表只能接收自身App所發出的廣播
