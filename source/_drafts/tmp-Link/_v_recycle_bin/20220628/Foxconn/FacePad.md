FacePad
===


[Mobile Vision\|Google Developers](https://developers.google.com/vision/)
[GitHub - googlesamples/android-vision: Sample code for the Android Mobile Vision API.](https://github.com/googlesamples/android-vision)
[Projects – opensource.google.com](https://opensource.google.com/projects/android-vision)

1. 避免camera null pointer
2. set recognize true in onResume
3. host choose settings



https://172.18.223.170/mec/view.php?id=98
=> S3: 已解(426dcdd36c41e6c466c367324b92bac4481a88b3)，與server斷線時，websocket會重連，避免null pointer exception
https://172.18.223.170/mec/view.php?id=102
=> S3: 已解(aa4822f90b882f7b37256483c566f12a9ae2ee4e)，切換pad方向後，整個activity會restart，造成允許辨識的flag狀態不正確
https://172.18.223.170/mec/view.php?id=104
=> S2: 已解(dd7a97b69dbf6c560365a25978421834d878762a)，黑屏是因為camera is crash，增加檢查機制，如果當下camera does not work，會重啟camera
https://172.18.223.170/mec/view.php?id=105
=> S5: 已解(a3d4509504eff8911d523be13dd2b1e0fb38b49b)，Modify the color of "Please Pass" message
https://172.18.223.170/mec/view.php?id=106
=> S5: 此為UI修改的建議，暫不修改
https://172.18.223.170/mec/view.php?id=107
=> S3: 我無法複製出現象，在TrendMicro的版本中，取消了change pad orientation的選項


1. 2019/4/19 InnoLux反映，face++辨識紀錄跟三叉機的開門紀錄不一致 => 辨識結果回來，track如果不在了，就不會通知三叉機
2. 2019/3/29 InnoLux反映，export event上，辨識位置欄位為空 => 因為辨識的pad有被刪除過
3. 2019/4/15 TrendMicro反映，常常會辨識失敗 => wifi不穩
4. 2019/4/11 InnoLux反映，無法註冊/登入pad => wifi ap設定問題
5. 2019/3/18 InnoLux反映，apk過期 => 安裝的版本不對
