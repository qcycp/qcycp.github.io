---
title: crontab in linux
abbrlink: f9ddbed
date: 2020-05-22 08:48:48
categories: [Software, cron]
tags:
- cron
---
設定週期性要執行的指令
第一次執行會先讓user選擇editor
```bash
$ crontab -e
no crontab for root - using an empty one

Select an editor.  To change later, run 'select-editor'.
  1. /bin/nano        <---- easiest
  2. /usr/bin/vim.basic
  3. /usr/bin/vim.tiny
  4. /bin/ed

Choose 1-4 [1]:


# Edit this file to introduce tasks to be run by cron.
#
# Each task to run has to be defined through a single line
# indicating with different fields when the task will be run
# and what command to run for the task
#
# To define the time you can provide concrete values for
# minute (m), hour (h), day of month (dom), month (mon),
# and day of week (dow) or use '*' in these fields (for 'any').#
# Notice that tasks will be started based on the cron's system
# daemon's notion of time and timezones.
#
# Output of the crontab jobs (including errors) is sent through
# email to the user the crontab file belongs to (unless redirected).
#
# For example, you can run a backup of all your user accounts
# at 5 a.m every week with:
# 0 5 * * 1 tar -zcf /var/backups/home.tgz /home/
#
# For more information see the manual pages of crontab(5) and cron(8)
#
# m h  dom mon dow   command
```
如果要執行的指令需要下sudo，可以編輯root權限的crontab
`$ sudo crontab -e`

在 Linux 裡面執行 crontab 時，log 會被記錄在 syslog 裡面
```bash
$ grep CRON /var/log/syslog
May 22 08:00:01 ubuntu CRON[9527]: (user) CMD (python /home/user/backup.py)
May 22 08:17:01 ubuntu CRON[9851]: (root) CMD (   cd / && run-parts --report /etc/cron.hourly)
```

For example
```bash
# 每天下午17:00都執行backup.sh這個script，並把log存到output.log
00 17 * * * /home/user/backup.sh >> /home/user/output.log 2>&1
# 每分鐘執行
*/1 * * * * do_something
# 每隔30秒執行
*/1 * * * * do_something_A
*/1 * * * * sleep 30; do_something_B
```