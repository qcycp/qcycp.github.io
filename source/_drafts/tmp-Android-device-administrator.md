---
title: tmp_Android_device_administrator
tags:
---
Android Device Adminstrator
===

1. 建立device_policies.xml
<device-admin xmlns:android="http://schemas.android.com/apk/res/android">
    <uses-policies>
        <disable-camera />
    </uses-policies>
</device-admin>

2. 建立DeviceAdminReceiver.java，這個receiver會在勾選Device Adminstrator時收到intent，然後秀出toast
package com.example.httpclient;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

public class DeviceAdminReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        String intentAction = intent.getAction();
        if (intentAction == "android.app.action.DEVICE_ADMIN_DISABLED") {
            Toast.makeText(context, "Admin is Disabled", Toast.LENGTH_SHORT).show();
        } else if ((intentAction == "android.app.action.DEVICE_ADMIN_ENABLED")) {
            Toast.makeText(context, "Admin is Enabled", Toast.LENGTH_SHORT).show();
        }
    }
}

3. 編寫AndroidManifest.xml
<receiver android:name="DeviceAdminReceiver"
            android:label="@string/device_admin"
            android:description="@string/device_admin_description"
            android:permission="android.permission.BIND_DEVICE_ADMIN">
            <meta-data android:name="android.app.device_admin"
                              android:resource="@xml/device_policies" />
            <intent-filter>
                <action android:name="android.app.action.DEVICE_ADMIN_ENABLED" />
                <!--<action android:name="android.app.action.DEVICE_ADMIN_DISABLED" />
                      <action android:name="android.app.action.DEVICE_ADMIN_DISABLE_REQUESTED" />-->
            </intent-filter>
</receiver>

a. android:label是在Device Adminstrator中的選項名稱
b. android:description是在Device Adminstrator中的選項描述
c. android:resource指定xml檔案名稱

5. example of disable camera
public void DisableCamera(Context context) {
    Log.i(TAG, "DisableCamera");
    ComponentName deviceAdminComponent = new ComponentName(context, DeviceAdminReceiver.class);
    DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
    Intent intent = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
    intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, deviceAdminComponent);
    isCameraDisable = !isCameraDisable;
    dpm.setCameraDisabled(deviceAdminComponent, isCameraDisable);

    if (isCameraDisable) {
        Toast.makeText(context, "Camera is Disabled", Toast.LENGTH_LONG).show();
    } else {
        Toast.makeText(context, "Camera is Enabled", Toast.LENGTH_LONG).show();
    }
}

這樣使用它: DisableCamera(MainActivity.this);

6. example of lock screen
public static void lockScreen(Context context) {
    Log.d("lockScreen", "lockScreen");
    ComponentName mDeviceAdminSample = null;
    DevicePolicyManager dpm = (DevicePolicyManager) context.getSystemService(Context.DEVICE_POLICY_SERVICE);
    Intent intent = new Intent(DevicePolicyManager.ACTION_ADD_DEVICE_ADMIN);
    intent.putExtra(DevicePolicyManager.EXTRA_DEVICE_ADMIN, mDeviceAdminSample);
    dpm.lockNow();
}

這樣用: lockScreen(MainActivity.this);