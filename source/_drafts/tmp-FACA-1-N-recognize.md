---
title: tmp_FACA_1_N_recognize
abbrlink: 6f1fb546
tags:
---
curl -F "file=@/home/user/avatar_01.png" -F topN=3 -X POST http://192.168.56.3:9090/recognize | jq
```
{
    "can_door_open": false,
    "error": 7,
    "person": {
        "compare_time": 3161,
        "confidence": 62.61979293823242,
        "exec_time": 719,
        "face_pitch_angle": 13.716989517211914,
        "face_roll_angle": 2.0713508129119873,
        "face_score": 0.9795376658439636,
        "face_yaw_angle": -20.43155860900879,
        "feature": "VgQ3BAAAAAD/SEHGnmjKQkZ+xKinqpfSqEgw0j9XmVvcf8Z6dDyq/7A1xqdDgsWGtoF/vUuMVy98T4yUmV1Ii7aDfWeBIl47NpRwOkSWSDJFUGtIfx1mZZWqmzcwpnmClH56r16dLkuLZ2KBZl4kkm9Hgw+JepSTncKCbnOqp6KZho1hfVGEaB+BV0JUXGGEQ2p7h3aKdXSGU3s/hYHBV7UxmlaNcmysxXGCi2+MdVuOmyFax1Nsa5iK6l+YU4F1kz5fcLGlI41GZZujbFBamp5EqmF7T2+FkLdzU0V0Xk9iqkKWbParTUubepqsQ2WrqpJzWnBZcaB4fIWcaod/xG6JfGd7p4tleHGymatQsFaHX3GPK4yvg2hEnICSc5lygX+RhndBhJ+GXFyQhELtk05qfnqISkqFT4R+kT+BiWE4hFhkUoBohUJylW2gmZitr5ijcY2hOkuzmGpkVYCdjkyDW3NzmZKAdYV+bG1nX5uAc0A4byOTrKB6i6G4qX2ggkx/eJeXYnJjiJ25YF6Cky2QkTs6qq5PlWdQf345L6KKeXFrioy7TKcAg2mfj7RnOz9yWzSqbXhgUH67YVpBVTlWg6E3d34udjFTYJ9lkDlb5ZqyjZCehCSjWo53cZWXbCDgq12Pcniow19fp5N7nLhEL7yDbJGdZ2mPmkR3YZuKilvUpHSBb3eJkpeKS0ps",
        "id": "4339",
        "quality": 0.07067190110683441,
        "retry": 0,
        "tag": {
            "end_time": 0,
            "id": 4339,
            "name": "LH04038",
            "start_time": 0,
            "subject_type": 0
        }
    }
}
```

```
{
  "candidates": [
    {
      "confidence": 62.61980056762695,
      "id": 4039,
      "photo_id": 5826
    },
    {
      "confidence": 62.587059020996094,
      "id": 5255,
      "photo_id": 7736
    },
    {
      "confidence": 62.41948699951172,
      "id": 1128,
      "photo_id": 1343
    }
  ],
  "compare_time": 2986,
  "code": 0,
  "exec_time": 79,
  "face_info": {
    "feature": "VgQ3BAAAAAAASUHGqGjKQkZ+xKinqpfSqEgw0j9XmVvcf8Z6dDyq/7A1xqdDgsWGtoF/vUuMVy98T4yUmV1Ii7aDfWeBIl47NpRwOkSWSDJFUGtIfx1mZZWqmzcwpnmClH56r16dLkuLZ2KBZl4kkm9Hgw+JepSTncKCbnOqp6KZho1hfVGEaB+BV0JUXGGEQ2p7h3aKdXSGU3s/hYHBV7UxmlaNcmysxXGCi2+MdVuOmyFax1Nsa5iK6l+YU4F1kz5fcLGlI41GZZujbFBamp5EqmF7T2+FkLdzU0V0Xk9iqkKWbParTUubepqsQ2WrqpJzWnBZcaB4fIWcaod/xG6JfGd7p4tleHGymatQsFaHX3GPK4yvg2hEnICSc5lygX+RhndBhJ+GXFyQhELtk05qfnqISkqFT4R+kT+BiWE4hFhkUoBohUJylW2gmZitr5ijcY2hOkuzmGpkVYCdjkyDW3NzmZKAdYV+bG1nX5uAc0A4byOTrKB6i6G4qX2ggkx/eJeXYnJjiJ25YF6Cky2QkTs6qq5PlWdQf345L6KKeXFrioy7TKcAg2mfj7RnOz9yWzSqbXhgUH67YVpBVTlWg6E3d34udjFTYJ9lkDlb5ZqyjZCehCSjWo53cZWXbCDgq12Pcniow19fp5N7nLhEL7yDbJGdZ2mPmkR3YZuKilvUpHSBb3eJkpeKS0ps",
    "pitch_angle": 13.716989517211914,
    "quality": 0.07067181169986725,
    "roll_angle": 2.0713508129119873,
    "score": 0.9795377850532532,
    "yaw_angle": -20.43155860900879
  },
  "person": {
    "confidence": 62.61980056762695,
    "id": 4039,
    "photo_id": 5826
  },
  "recognized": false,
  "threshold": 73
}
```

curl -F "file=@/home/user/avatar_01.png" -F ath=50 -F "person_id=4039" -X POST http://192.168.56.3:9090/checkin | jq


curl -F "file=@/home/user/avatar_04.png" -F "screen_token=123" -F ath=50 -F topN=3 -F detailed=1 -X POST http://192.168.56.3:9161/api/recognize | jq
curl -F "file=@/home/user/avatar_04.png" -F "screen_token=123" -F person_id=4039 -X POST http://192.168.56.3:9161/checkin | jq


  10000: read: 0.063 ms, write:  0.146 ms, file size: 2.1M
  20000: read: 0.135 ms, write:  0.373 ms, file size: 4.3M
  30000: read: 0.207 ms, write:  0.477 ms, file size: 6.4M
  40000: read: 0.249 ms, write:  0.706 ms, file size: 8.5M
  50000: read: 0.327 ms, write:  0.840 ms, file size:  11M
 100000: read: 0.675 ms, write:  1.841 ms, file size:  22M
 150000: read: 1.034 ms, write:  2.442 ms, file size:  32M
 200000: read: 1.466 ms, write:  3.318 ms, file size:  43M
 250000: read: 1.927 ms, write:  4.368 ms, file size:  53M
 300000: read: 2.358 ms, write:  5.131 ms, file size:  64M
 400000: read: 2.772 ms, write:  6.463 ms, file size:  85M
 500000: read: 3.451 ms, write:  7.906 ms, file size: 106M
 750000: read: 5.273 ms, write: 12.516 ms, file size: 159M
1000000: read: 6.840 ms, write: 16.761 ms, file size: 212M



+     ERROR_NO_FACE = (300, 'No face is detected')
+     ERROR_FACE_IMAGE_ACCESS_FAILED = (301, 'Image access failed')
+     ERROR_MORE_THAN_ONE_FACE = (302, 'More than one face is detected')
+     ERROR_EXTRACT_FEATURE_FAILED = (303, 'Extract feature failed')
+     ERROR_FACE_MATCH_FAILED = (304, 'Face match failed')
+     ERROR_PERSON_NOT_FOUND = (305, 'Designated person is not found')
+     ERROR_FEATURE_NOT_FOUND = (306, 'No feature for designated person')
+     ERROR_COMMUNICATION_WITH_ENGINE_FAILED = (307, 'Communication with recognition engine failed')
+     ERROR_INVALID_PARAMETER = (308, 'Invalid parameter')
+     ERROR_TOKEN_IS_INVALID = (309, 'Screen token is invalid')
+     ERROR_RECIGNIZED_FAILED = (310, 'Recognized failed')

