---
title: split pcap
abbrlink: b080c008
date: 2021-08-20 16:57:43
categories:
tags:
---
1. 使用 wireshark 提供的程式
editcap.exe -c frame_size old_file new_files

2. 使用 tcpdump
tcpdump -r old_file -w new_files -C file_size(MB)