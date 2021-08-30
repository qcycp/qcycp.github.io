---
title: draw_frame
abbrlink: 5e5f185d
date: 2021-08-26 09:31:09
categories:
tags:
---
```python
def draw_track(ipcam_index, ipcam):
    while True:
        try:
            frame, counter = ipcam.getframe()
            if frame is None:
                time.sleep(CONST.SLEEP_TIME_FRAME_DUPLICATED)
                continue

            resize_frame = cv2.resize(frame, (DataManager.imageWidth, DataManager.imageHeight))

            for tid in FaceTrackData.track_data[ipcam_index].track_list.copy():
                tracked_position = FaceTrackData.track_data[ipcam_index].track_list[tid].tracker.get_position()
                t_x = int(tracked_position.left())
                t_y = int(tracked_position.top())
                t_w = int(tracked_position.width())
                t_h = int(tracked_position.height())
                cv2.rectangle(resize_frame, (t_x, t_y),
                                            (t_x + t_w , t_y + t_h),
                                            (FaceTrackData.track_data[ipcam_index].track_list[tid].R, FaceTrackData.track_data[ipcam_index].track_list[tid].G, FaceTrackData.track_data[ipcam_index].track_list[tid].B), 5)
            cv2.imshow(ipcam.location, resize_frame)
            if cv2.waitKey(1) == 27:
                break
        except:
            logging.error('draw_track failed ---> \n%s' % traceback.format_exc())
```