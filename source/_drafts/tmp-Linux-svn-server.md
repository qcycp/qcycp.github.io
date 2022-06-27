---
title: tmp_Linux_svn_server
tags:
---
架設svn server
===

#1 安裝需要的套件 (install packages)
apt-get install apache2
apt-get install libapache2-svn
apt-get install subversion

#2 建立SVN的root目錄(create subversion directory)
sudo mkdir -p /home/architecture/svnroot

#3 建立檔案庫 (create SVN repository)
cd /home/architecture/svnroot && sudo mkdir Mstar
sudo svnadmin create /home/architecture/svnroot/Mstar/SuperNova_8570

#4 將存取檔案權限給予apache (set the permissions of the /svn directory to apache)
sudo chown -R www-data:www-data /home/architecture/svnroot/

#5 新增帳號 (create a svn user)
sudo htpasswd [-c] /home/architecture/svnroot/htpasswd nick
-c是將整個檔案重新覆寫，如果只是要新增user，不需要-c

#6 修改 登入相關資訊
sudo vim /etc/apache2/mods-available/dav_svn.conf
<Location /SuperNova_8570>
DAV svn
SVNPath /home/architecture/svnroot/Mstar/SuperNova_8570
AuthType Basic
AuthName "Subversion repository"
AuthUserFile /home/architecture/svnroot/htpasswd
<LimitExcept GET PROPFIND OPTIONS REPORT>
Require valid-user
</LimitExcept>
</Location>

#7 重啟apache (restart apache)
sudo service apache2 restart

#8 上傳檔案
svn import /home/architecture/SuperNova_CodeBase/MSD8570_CN_2K13 http://172.17.2.21/Mstar/SuperNova_8570_patch

#9 下載檔案
svn co http://172.17.2.21/SuperNova_8570_patch
svn co --force http://172.17.2.21/SuperNova_8570_patch .

#10 修改log
svn propedit -r 版本號 --revprop svn:log http://172.17.2.21/SuperNova_8570_patch
p.s. 在/svnroot/Mstar/SuperNova_8570_patch/hooks中，
     把pre-revprop-change.tmpl改成pre-revprop-change，並chmod為0755

#11 備份
svnadmin dump /path/repositoryfolder > SVNBackup.svn_dump
svnadmin create /path/repositoryname
svnadmin load /path/repositoryname < SVNBackup.svn_dump
e.g.
1. 建立backup.sh
DATE=`date +%F`
svnadmin dump /home/architecture/svnroot/Mstar/SuperNova_8570_patch > /HDD1_2T/svnbackup/$DATE-SuperNova_8570_patch.svn_dump
2. 建立排程
crontab -e
0 6 * * * sh /home/nick/backup/backup.sh  ==> 每間早上六點執行backup.sh
crontab -l : 將排程全部刪除