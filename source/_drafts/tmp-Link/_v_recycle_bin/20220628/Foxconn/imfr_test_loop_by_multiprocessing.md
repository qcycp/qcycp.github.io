```python

    def test_while_loop2(slef):
        def do_job():
            DataManager.ReadConfig()
            DataManager.ReadIPCamConfig()
            ConfigManager.ReadConfig()
            ClientManager.init()
            DataManager.workers = 2
            DataManager.fd_model = 'default+eye'
            DataManager.fd_execution_time_interval = 0.01
            FaceHandler.init_worker(DataManager.workers)

            FaceTrackData.resetData()
            for i, ipcam in enumerate(DataManager.IPCamData):
                ipcam_cap = ipcamCapture(ipcam['Token'], ipcam['Location'], os.path.join(TESTDIR, "video.mp4"))
                FaceTrackData.init_data(i, ipcam)
                break

            ipcam_cap.capture = cv2.VideoCapture(ipcam_cap.camAddr)

            def do_queryframe():
                while True:
                    time.sleep(0.08)
                    status = ipcam_cap.do_queryframe()

            t_qr = threading.Thread(target=do_queryframe, daemon=True, args=())
            t_qr.start()

            t_fr = threading.Thread(target=faceRecognition, daemon=True, args=())
            t_fr.start()

            t_tk = threading.Thread(target=TrackHandler, daemon=True, args=(0, ipcam_cap))
            t_tk.start()

            t_fd = threading.Thread(target=faceDetection, daemon=True, args=(0, ipcam_cap))
            t_fd.start()

            time.sleep(20)

        p = mp.Process(target=do_job, args=())
        p.start()
        time.sleep(10)
        p.terminate()
        p.join()
```