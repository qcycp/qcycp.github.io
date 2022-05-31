---
title: split pcap
abbrlink: b080c008
date: 2021-08-20 16:57:43
categories:
tags:
---
1. 使用 wireshark 提供的程式切割
editcap.exe -c frame_size src.pcap new.pcap

2. 使用 tcpdump 切割
tcpdump -r src.pcap -w new.pcap -C file_size(MB)

3. 剪下
editcap.exe -r src.pcap dst.pcap 1-8(只留下 frame 1-8)

4. 合併
mergecap.exe -w dst.pcap src1.pcap src2.pcap