---
title: Execute mysql commands in shell script
abbrlink: 7bd7c7e8
date: 2020-04-23 16:55:45
categories: Linux
tags:
- linux
- shell script
---
```bash
#!/bin/bash

for i in $(seq 1 10000)
do
    mysql --user=root --password=1234 db_name -e "INSERT INTO table_name (id, date) VALUES ($i, $(date +%s));"
done
```