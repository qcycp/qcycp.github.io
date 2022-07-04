1. trouble shooting improvement (both TvFrontend and TvService)
    - log
        * 檔名
        * 上傳機制
        * integrate with crash log
        * 時間戳記: 利用/api/v1/face_pay/timestamp，跟web_frontend server要時間
    - sftp上傳機制
        * 上傳目標: docker vm
        * address/account/pwd 設定 (address UI設定在TvService中)
2. TvService
    - 去除原本與PadManager溝通的部分
        * address設定
        * websocket連線
    - 增加log
        * keepalive message
        * start TvFrontend message
