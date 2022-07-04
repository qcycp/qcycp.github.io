1. 安裝samba
sudo apt-get install samba

2. 停止samba服務
舊版 sudo /etc/init.d/samba stop
新版 sudo service smbd stop

3. 啟動samba服務
sudo service smbd start

4. 設定Samba設定檔

```sh
$ sudo vim /etc/samba/smb.conf
[share]
   path = /home/nick
   writeable = yes
   browseable = yes

// optional config
valid users = nick
read only = no
create mask = 0644         ;檔案遮罩
directory mask = 0755      ;資料夾遮罩
public = yes               ;guest也可存取
guess account = root       ;用samba登入預設是root權限
force user = root          ;用samba登入預設是root權限
force group = root         ;用samba登入預設是root權限
guest ok = yes
```

5. 建立帳密
建立帳號
sudo smbpasswd -a $USER
啟動帳號
sudo smbpasswd -a $USER -e