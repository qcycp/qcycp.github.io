---
title: tmp_Android_appmanager
tags:
---
AppManager
===

[AndroidLearningNotes/AppManager.java at master · imtianx/AndroidLearningNotes · GitHub](https://github.com/imtianx/AndroidLearningNotes/blob/master/android-tools/AppManager.java)

```java
package com.foxconn.rtspplayer;

import android.app.Activity;
import android.content.Context;

import java.util.Stack;

public class AppManager {

    private static Stack<Activity> activityStack;
    private static AppManager instance;

    private AppManager() {
    }

    public static AppManager getAppManager() {
        if (instance == null) {
            instance = new AppManager();
        }
        return instance;
    }

    public void addActivity(Activity activity) {
        if (activityStack == null) {
            activityStack = new Stack<>();
        }
        activityStack.add(activity);
    }

    public Activity currentActivity() {
        return activityStack.lastElement();
    }

    public void finishActivity() {
        Activity activity = activityStack.lastElement();
        finishActivity(activity);
    }

    public void finishActivity(Activity activity) {
        if (activity != null && !activity.isFinishing()) {
            activityStack.remove(activity);
            activity.finish();
            activity = null;
        }
    }

    public void finishActivity(Class<?> cls) {
        for (Activity activity : activityStack) {
            if (activity.getClass().equals(cls)) {
                finishActivity(activity);
                break;
            }
        }
    }

    public void finishAllActivity() {
        for (int i = 0, size = activityStack.size(); i < size; i++) {
            if (null != activityStack.get(i)) {
                finishActivity(activityStack.get(i));
                break;
            }
        }
        activityStack.clear();
    }

    public static Activity getActivity(Class<?> cls) {
        if (activityStack != null)
            for (Activity activity : activityStack) {
                if (activity.getClass().equals(cls)) {
                    return activity;
                }
            }
        return null;
    }

    public static Stack<Activity> getActivitys() {
        return activityStack;
    }

    public void AppExit(Context context) {
        try {
            finishAllActivity();
            android.os.Process.killProcess(android.os.Process.myPid());
            System.exit(0);
        } catch (Exception ignored) {
        }
    }

    public int getActivityCount() {
        int count = activityStack.size();
        return count;
    }

    public void removeActivity(Activity activity) {
        if (activityStack == null) {
            return;
        } else if (activityStack.contains(activity)) {
            activityStack.remove(activity);
        }

        if (activity != null && !activity.isFinishing()) {
            activity.finish();
            activity = null;
        }
    }
}
```