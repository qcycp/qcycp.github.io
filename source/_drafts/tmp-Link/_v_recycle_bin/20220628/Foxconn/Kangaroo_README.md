## How to run in develop environment
export FLASK_APP=main.py
flask run  --host 0.0.0.0 --port 8857

## How to deploy in local vm
cd deploy
sh deploy.sh

## How to formal release
cd deploy
make

#### Release files
##### All files would be stored in deploy/Kangaroo, including
1. docker-compose.yml
2. deploy_kangaroo.A1.0.0.abcdefg.tar
3. adminer.tar
4. redis.tar
5. mysql.tar

##### All files would be zip in Kangaroo.A1.0.0.abcdefg.tgz
You can unzip the file by:
`tar xzf Kangaroo.A1.0.0.abcdefg.tgz
