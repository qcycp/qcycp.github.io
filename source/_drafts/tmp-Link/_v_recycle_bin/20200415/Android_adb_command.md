```
adb push local_source /path/to/phone    // 將檔案複製到android裝置
adb pull /path/from/phone local_source  // 將檔案從android裝置上複製回本機端
adb shell getprop                       // 讀取android中build.prop的值
adb shell setprop                       // 修改系统属性
adb devices                             // 查看目前連線的裝置
adb shell                               // shell登入
adb -s devicename shell                 // 指定要連結的device
adb install test.apk
adb install -r test.apk                 // 保留資料，重新安裝test.apk
adb uninstall package.name.xxx          // 移除程式
adb uninstall -k package.name.xxx       // 移除程式時，保留資料
adb reboot                              // 重開機
adb reboot bootloader                   // 重開機後，進入bootloader mode
adb kill-server                         // 關掉 adb 伺服器
adb start-server                        // 啟動 adb 伺服器
adb root
adb remount                             // 將系統(/system)重新掛載成 R/W 模式
adb shell getevent /dev/input/event0
adb shell setevent /dev/input/event0
adb shell dmesg                         // 印出Linux kernel log
adb shell cat /proc/kmsg                // 持續印出 kernel log
adb shell dumpsys                       // 顯示系統資訊
adb shell dumpsys SurfaceFlinger        /* battery: 列出基本的電池資訊
                                           batteryinfo: 各種功能使用 power 的狀況，同About Phone 裡面的電池使用狀況。
                                           SurfaceFlinger: 系統的 Surface 使用情況
                                           power: 列出 Power Manager 的參數，如 wakelock 時間等
                                           alarm: 列出目前有註冊 alarm 者
                                        */
```