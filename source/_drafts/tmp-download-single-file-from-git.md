---
title: tmp_download_single_file_from_git
abbrlink: 9b2c8b5c
tags:
---
Download single file from git
===

從master中，download deploy/docker-compose.yml的檔案
git archive --remote=git@10.36.94.101:SI/wrapper.git HEAD:deploy docker-compose.yml | tar -x

從develop branch中，download deploy/docker-compose.yml的檔案
git archive --remote=git@10.36.94.101:SI/kangaroo.git develop:deploy docker-compose.yml | tar -x
