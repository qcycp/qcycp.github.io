curl -F "image=@/home/user/test/foliage/pic3.jpg" -X POST http://172.18.66.202:8080/extract | jq

curl -F "image=@/home/user/test/foliage/pic2.jpg" -F "group=http://127.0.0.1:8866/sync/features" -F "check_quality=False" -F "check_fmp=False" -F "with_landmark=False" -X POST http://172.18.66.202:8080/recognize | jq

```
user@vm-docker:~/test/foliage$ curl -F "image=@/home/user/test/foliage/pic2.jpg" -F "group=http://127.0.0.1:8866/sync/features" -F "check_quality=False" -F "check_fmp=True" -F "with_landmark=False" -X POST http://172.18.66.202:8080/recognize | jq
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  6915  100   801  100  6114   1174   8963 --:--:-- --:--:-- --:--:--  8964
{
  "candidates": [
    {
      "id": 5843,
      "subject_id": 3491,
      "photo_id": 5843,
      "confidence": 62.725334
    },
    {
      "id": 7795,
      "subject_id": 5460,
      "photo_id": 7795,
      "confidence": 62.37494
    },
    {
      "id": 6292,
      "subject_id": 3944,
      "photo_id": 6292,
      "confidence": 58.13244
    }
  ],
  "face_info": {
    "rect": {
      "left": 26,
      "top": 27,
      "right": 61,
      "bottom": 63
    },
    "quality": 0.9887841902673244,
    "brightness": 107.51063829787235,
    "std_deviation": 21.30415236763045
  },
  "fmp": {
    "fabricate": -1,
    "mask": -1,
    "panorama": 0.4423036575317383,
    "prediction": 0.4423036575317383,
    "thresholds": {
      "pm20": 0.7,
      "pm10": 0.6,
      "pm5": 0.5,
      "pm1": 0.4,
      "video": 0.16
    }
  },
  "person": {
    "id": 5843,
    "subject_id": 3491,
    "photo_id": 5843,
    "confidence": 62.725334
  },
  "recognized": false,
  "thresholds": {
    "E3": 54.690673828125,
    "E4": 61.97124481201172,
    "E5": 67.56986999511719,
    "E6": 72.45179748535156,
    "recognizing": 78,
    "stranger": 65,
    "verify": 78,
    "gate": 78
  }
}
```