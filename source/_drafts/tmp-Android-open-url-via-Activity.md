---
title: tmp_Android_open_url_via_Activity
abbrlink: febbe8cf
tags:
---
使用Activity開啟連結
===

1. 讓Activity可以開啟http連結
在AndroidManifest.xml的Activity中，加入以下設定
```
<intent-filter>  
    <action android:name="android.intent.action.VIEW" />  
    <category android:name="android.intent.category.DEFAULT" />  
    <category android:name="android.intent.category.BROWSABLE" />  
    <data android:scheme="http" />  
</intent-filter>
```

使用方式：
```
Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("http://www.google.com"));  
intent.addCategory(Intent. CATEGORY_BROWSABLE);  
intent.addCategory(Intent. CATEGORY_DEFAULT);  
startActivity(intent);
```

2. 讓Activity可以開啟特定連結
在AndroidManifest.xml的Activity中，加入以下設定
```
<intent-filter>  
    <action android:name="android.intent.action.VIEW" />  
    <category android:name="android.intent.category.DEFAULT" />  
    <category android:name="android.intent.category.BROWSABLE" />  
    <data android:scheme="myscheme" /> 
</intent-filter>
```

使用方式：
```
Intent intent = new Intent(Intent.ACTION_VIEW, Uri.parse("myscheme://192.168.1.1/param"));  
intent.addCategory(Intent. CATEGORY_BROWSABLE);  
intent.addCategory(Intent. CATEGORY_DEFAULT);  
startActivity(intent);
```
Or
```
<html>  
<head>  
</head>  
<body>  
    <a href="myscheme://192.168.1.1/param">my url</a>
</body>  
</html> 
```

在Android讀取連結的資訊：
```
Uri data = getIntent().getData();  
String scheme = data.getScheme();  
String host = data.getHost();  
List params = data.getPathSegments();  
String param = params.get(0);
```