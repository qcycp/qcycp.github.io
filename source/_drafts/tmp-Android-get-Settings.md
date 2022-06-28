---
title: tmp_Android_get_Settings
tags:
---
get Settings
===
[Android时间时区设置和获取 - Chaos的专栏 - CSDN博客](https://blog.csdn.net/zhongshujunqia/article/details/53433306)

判断系统是否自动获取时区

```java
public static boolean isTimeZoneAuto(Context mContext) {  
    try {  
        return android.provider.Settings.Global.getInt(mContext.getContentResolver(),  
  android.provider.Settings.Global.AUTO\_TIME\_ZONE) \> 0;  
  } catch (Settings.SettingNotFoundException e) {  
        e.printStackTrace();  
 return false;  }  
}
```
设置自动获取时区

```java
public static void setAutoTimeZone(Context mContext, int checked) {  
    android.provider.Settings.Global.putInt(mContext.getContentResolver(),  
  android.provider.Settings.Global.AUTO\_TIME\_ZONE, checked);  
}
```

获取系统默认时区

```java
public static String getTimeZone() {  
    return TimeZone.getDefault().getDisplayName(false, TimeZone.SHORT);  
}
```

设置系统默认时区

```java
// 需要添加权限<uses-permission android:name="android.permission.SET\_TIME\_ZONE" />  
public static void setChinaTimeZone(Context context) {  
   /\* TimeZone.getTimeZone("GMT+8");  
 TimeZone.setDefault(TimeZone.getTimeZone("GMT+8"));*/  AlarmManager mAlarmManager = (AlarmManager) context.getSystemService(Context.ALARM_SERVICE);  
  mAlarmManager.setTimeZone("Asia/Shanghai");// Asia/Taipei//GMT+08:00  
}
```

判断系统是否自动获取日期和时间


```java
public boolean isAutoTime() {  
    try {  
        return android.provider.Settings.Global.getInt(mContext.getContentResolver(),  
  android.provider.Settings.Global.AUTO_TIME) \> 0;  
  } catch (Settings.SettingNotFoundException e) {  
        e.printStackTrace();  
 return false;  }  
}
```

设置系统自动获取日期和时间

```java
public static void setAutoDateTime(Context mContext, int checked) {  
    android.provider.Settings.Global.putInt(mContext.getContentResolver(),  
  android.provider.Settings.Global.AUTO_TIME, checked);  
}
```

获取系统当前时间

```java
  
public static String currentTime() {  
    long currentTime = System.currentTimeMillis();  
  Date date = new Date(currentTime);  
  SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");  
 return formatter.format(date);  
}
```

设置系统当前时间

```java
  
// 需要系统权限  
public static boolean setSytemTime(long value){  
    long settingTime = value;  
 if (value/1000 < Integer.MAX_VALUE){  
        SystemClock.setCurrentTimeMillis(settingTime);  
  }  
}
```

判断系统是否是24h格式(12h同理）

```java
public static boolean is24Hour(Context mContext) {  
    ContentResolver cv = mContext.getContentResolver();  
  String strTimeFormat = android.provider.Settings.System.getString(cv,  
  android.provider.Settings.System.TIME\_12\_24);  
 if (strTimeFormat != null && strTimeFormat.equals("24")) {  
        return true;  
  }  
    return false;  
}
```

设置系统为24h格式（12h同理）

```java
public static void set24Hour(Context mContext) {  
    ContentResolver cv = mContext.getContentResolver();  
  android.provider.Settings.System.putString(cv, Settings.System.TIME\_12\_24, "24");  
}
```