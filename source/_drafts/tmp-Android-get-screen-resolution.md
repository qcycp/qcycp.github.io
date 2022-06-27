---
title: tmp_Android_get_screen_resolution
tags:
---
Get screen resolution
===
http://www.cnblogs.com/bjzhanghao/archive/2012/11/12/2765835.html

Before Android 3.2
```
Display display = getWindowManager().getDefaultDisplay(); 
int width = display.getWidth(); 
int height = display.getHeight();
```

After Android 3.2
```
Display display = getWindowManager().getDefaultDisplay(); //Activity#getWindowManager()
Point size = new Point();
display.getSize(size);
int width = size.x;
int height = size.y;
```

After Android 3.2 and used outside Activity
```
WindowManager wm = (WindowManager) ctx.getSystemService(Context.WINDOW_SERVICE);
Display display = wm.getDefaultDisplay();
display.getSize(size);
int width = size.x;
int height = size.y;
```