* 發送broadcast
```sh
am broadcast -a android.intent.action.BOOT_COMPLETED
am broadcast -a android.intent.action.BOOT_COMPLETED -n com.example/.MainActivity
am broadcast -a android.intent.action.BOOT_COMPLETED -c android.intent.category.DEFAULT -n com.example/.MainActivity
am broadcast -a intent.action.UPDATE_APK --es filePath "/sdcard/Download/simple.apk" --ez keep true
```

* StartActivity
```sh
am start -n com.mtreat.faceid/.server.ServerMainActivity
```

* StartService
```sh
am startservice com.foxconn.monitorservice/.service.MonitorServie
am startforegroundservice com.foxconn.monitorservice/.service.MonitorServie
am stopservice com.foxconn.monitorservice/.service.MonitorServie
```

* 啟動瀏覽器，打開目標網址
am start -a android.intent.action.VIEW -d http://www.google.com
* launch Settings
am start -a android.intent.action.MAIN -n com.android.settings/.Settings
* adb shell am broadcast 後面的參數有
[-a ]
[-d ]
[-t ]
[-c [-c ] ...]
[-e|--es ...]
[--ez ...]
[-e|--ei ...]
[-n ]
[-f ] []