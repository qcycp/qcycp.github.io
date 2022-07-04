```
def fake_face_generator():
    count = 0
    while True:
        time.sleep(0.5)
        for i, ipcam in enumerate(DataManager.IPCamData):
            img = cv2.imread('test/photo.jpg')
            face_obj = FaceObject(i, count, img)
            FaceTrackData.face_push(i, face_obj)
        count += 1

threading.Thread(target=fake_face_generator, daemon=True, args=()).start()

```