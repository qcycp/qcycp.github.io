1. Message from nucleus to wrapper
* keepalive
* 辨識成功
  * recognizing
  * gone
* 辨識失敗
  * recognizing
  * gone
2. Message from wrapper to frontend
* 辨識成功
  * recognizing
  * gone
* 辨識失敗
  * recognizing
  * gone
3. Message from wrapper to backend
* 辨識成功
* 辨識失敗

## Message from nucleus to wrapper
#### keepalive
```json
{
    'data': {
        'timestamp': 1583459066
    },
    'type': 'keepalive'
}
```
#### 辨識成功
* recognizing
```json
{
    'type': 'track',
    'data': {
        'recognized': True,
        'status': 'recognizing',
        'timestamp': 1583459068,
        'track': 1586,
        'image': 'data:image/jpeg;base64...',
        'person': {
            'compare_time': 48130,
            'confidence': 75.73075103759766,
            'exec_time': 280,
            'face_pitch_angle': 18.013408660888672,
            'face_roll_angle': 5.434871673583984,
            'face_score': 0.9604949951171875,
            'face_yaw_angle': -1.0937901735305786,
            'feature_id': 35205,
            'identify_time': 159,
            'quality': 0.8333333134651184,
            'retry': 0,
            'subject_id': 31883
        }
        'camera': {
            'camera_address': 'rtsp://x.x.x.x:8554/CH001.sdp',
            'camera_id': 12,
            'camera_name': 'IPCAM'
        }
    }
}
```
* gone
```json
{
    'type': 'track',
    'data': {
        'recognized': True,
        'status': 'gone',
        'timestamp': 1583459069,
        'track': 1586,
        'image': 'base64',
        'person': {
            'confidence': 75.73075103759766,
            'feature_id': 35205,
            'subject_id': 31883
        },
        'camera': {
            'camera_address': 'rtsp://x.x.x.x:8554/CH001.sdp',
            'camera_id': 12,
            'camera_name': 'IPCAM'
        }
    }
}
```

#### 辨識失敗
* recognizing
```json
{
    'type': 'track',
    'data': {
        'recognized': False,
        'status': 'recognizing',
        'timestamp': 1583459062,
        'track': 1568,
        'image': 'data:image/jpeg;base64...',
        'person': {
            'compare_time': 64214,
            'confidence': 67.64459991455078,
            'exec_time': 990,
            'face_pitch_angle': -8.43537425994873,
            'face_roll_angle': -2.573228120803833,
            'face_score': 0.9996410608291626,
            'face_yaw_angle': 6.583057403564453,
            'feature': 'face_extract_feature...',
            'feature_id': 35205,
            'identify_time': 202,
            'quality': 0.75,
            'retry': 1,
            'subject_id': 31883
        },
        'camera': {
            'camera_address': 'rtsp://x.x.x.x:8554/CH001.sdp',
            'camera_id': 12,
            'camera_name': 'IPCAM'
        }
    }
}
```
* gone
```json
{
    'type': 'track',
    'data': {
        'recognized': False,
        'status': 'gone',
        'timestamp': 1583459062,
        'track': 1568,
        'image': 'base64',
        'person': {
            'confidence': 67.64459991455078,
            'feature_id': 35205,
            'subject_id': 31883
        },
        'camera': {
            'camera_address': 'rtsp://x.x.x.x:8554/CH001.sdp',
            'camera_id': 12,
            'camera_name': 'IPCAM'
        }
    }
}
```

## Message from wrapper to frontend
#### 辨識成功
* recognizing
```
{
    'sw': '1.0.0',
    'camera_id': 'IPCAM',
    'target': 'rtsp://x.x.x.x:8554/CH001.sdp',
    'event': {
        'timestamp': 1583459068,
        'id': '31883',
        'subject_type': 0,
        'avatar': 'http://192.168.56.3:8857/static/upload/avatar/2020-02-27/645a83ed51224470abf0886d4e4ea744.jpeg',
        'job_number': '1115',
        'name': 'name',
        'recognized': True,
        'corp_name': 'ATD_ADMIN',
        'corp_image': '',
        'track_id': 1586
    },
    'status': 'recognizing',
    'open_door': True/False,
    'door_access_ctl': 'message'
}
```
* gone
```
{
    'sw': '1.0.0',
    'camera_id': 'IPCAM',
    'target': 'rtsp://x.x.x.x:8554/CH001.sdp',
    'event': {
        'timestamp': 1583459069,
        'id': '31883',
        'subject_type': 0,
        'name': 'name',
        'track_id': 1586
    },
    'status': 'gone'
}
```

#### 辨識失敗
* recognizing
```json
{
    'sw': '1.0.0',
    'camera_id': 'IPCAM',
    'target': 'rtsp://x.x.x.x:8554/CH001.sdp'',
    'event': {
        'subject_type': -1,
        'timestamp': 1583459062,
        'avatar': '',
        'job_number': -1,
        'department': '',
        'id': -1,
        'name': '陌生人',
        'recognized': False,
        'face_base_64': 'data:image/jpeg;base64...',
        'track_id': 1568
    },
    'status': 'recognizing',
    'open_door': False,
    'door_access_ctl': '不允許開門'
}
```
* gone
```json
{
    'sw': '1.0.0',
    'camera_id': 'IPCAM',
    'target': 'rtsp://x.x.x.x:8554/CH001.sdp',
    'event': {
        'subject_type': -1,
        'timestamp': 1583459062,
        'id': -1,
        'name': '陌生人',
        'track_id': 1568
    },
    'status': 'gone'
}
```

## Message from wrapper to backend
#### 辨識成功
```json
{
    'screen_id': 12,
    'photo': 'data:image/jpeg;base64...',
    'name': 'name',
    'age': None,
    'gender': None,
    'quality': 0.8333333134651184,
    'confidence': 75.73075103759766,
    'event_type': 0,
    'subject_id': '31883',
    'subject_photo': 35205,
    'timestamp': 1583459068,
    'face_score': 0.9604949951171875,
    'yaw_angle': -1.0937901735305786,
    'pitch_angle': 18.013408660888672,
    'roll_angle': 5.434871673583984,
    'retry': 0,
    'exec_time': 280,
    'identify_time': 159,
    'compare_time': 48130
}
```
#### 辨識失敗
```json
{
    'screen_id': 12,
    'photo': 'data:image/jpeg;base64...',
    'name': None,
    'age': None,
    'gender': None,
    'quality': 0.75,
    'confidence': 67.64459991455078,
    'event_type': 0,
    'subject_id': None,
    'subject_photo': None,
    'timestamp': 1583459062,
    'feature': 'face_extract_feature...',
    'face_score': 0.9996410608291626,
    'yaw_angle': 6.583057403564453,
    'pitch_angle': -8.43537425994873,
    'roll_angle': -2.573228120803833,
    'retry': 1,
    'exec_time': 990,
    'identify_time': 202,
    'compare_time': 64214
}
```