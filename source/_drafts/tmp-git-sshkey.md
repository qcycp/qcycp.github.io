---
title: tmp_git_sshkey
tags:
---
1. GitLab: http://10.36.94.101  

2. 登入GitLab後, 點選右上角MyProfile,  Add PubilcKey  

3. PubilcKey取得方法:  
登入BuildServer  
$ssh-keygen -t rsa -C "nick.yc.cheng@fii-foxconn.com"  
$cat ~/.ssh/id_rsa.pub  
將id_rsa.pub的值貼入到Add PubilcKey的key視窗裡  
http://10.36.94.101/profile/keys  

4. 建立好的key，可以給多台build server使用  
將下列檔案複製到另一台server去即可使用相同的key  
~/.ssh/id_rsa             // private key，可以將權限改成400  
~/.ssh/id_rsa.pub       // public key  

5. 下載Code  
$mkdir {ProjectFolder}  
$cd {ProjectFolder}  
$git clone {git server project}  


![ce886cdfcec5de19eebffa5f1a02b523.png](:/fcf0c2277fe549be973ad7384a245492)

