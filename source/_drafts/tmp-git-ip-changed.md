---
title: tmp_git_ip_changed
abbrlink: 243651e
tags:
---
gitlab server的ip換了
===

sudo vim /home/git/gitlab/config/gitlab.yml
sudo vim /etc/apache2/sites-enabled/gitlab.conf
sudo vim /etc/apache2/sites-enabled/000-default.conf # 將整個檔案全部註解掉 (每行前面都加上 '#')
sudo vim /home/git/gitlab-shell/config.yml
sudo service gitlab restart
sudo service apache2 restart