```
#!/bin/bash

for i in $(seq 1 10000)
do
    mysql --user=root --password=1234 kangaroo -e "INSERT INTO event (photo, age, gender, quality, confidence, event_type, subject_type, name, subject_photo, timestamp, corporation_id, subject_id, screen_id) VALUES('/static/upload/event/2019-08-14/471ca37477664a7fa8c1e63d2801afee.jpeg', NULL, NULL, NULL, NULL, 0, 0, '009977', '/static/upload/photo/2019-08-14/v2_fae7bef863344f01ffe15404750284d3b11eea2c.jpg', $(date +%s), 6, 3637, 21);"
done
```