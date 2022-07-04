直接從192.168.56.3 scp即可

10.36.94.194
user/1234
scp -r docker-compose.yml user@10.36.94.194:/home/user/
scp -r IMFR_A1.4.2.859b4c1.tgz user@10.36.94.194:/home/user/
把檔案複製到 "/mnt/FACASHARE/T5G/ECS-Dev/MEC SW Release/R2_P3/Release image/APP/"
chown -R www-data:5g 檔案
chmod 664 檔案

10.36.91.110
faca/123456
scp -r docker-compose.yml faca@10.36.91.110:/home/faca/Nick/
scp -r IMFR_A1.4.2.859b4c1.tgz faca@10.36.91.110:/home/faca/Nick/
scp -P 2222 -r docker-compose.yml user@172.18.32.226:/home/user/
scp -P 2222 -r IMFR_A1.4.2.859b4c1.tgz user@172.18.32.226:/home/user/
scp -P 2222 -r docker-compose.yml user@10.60.3.12:/home/user/
scp -P 2222 -r IMFR_A1.4.2.859b4c1.tgz user@10.60.3.12:/home/user/