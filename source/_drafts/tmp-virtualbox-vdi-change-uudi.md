---
title: tmp_virtualbox_vdi_change_uudi
abbrlink: c449be04
tags:
---
VirtualBox vdi change UUID
===

```bash
C:\Program Files\Oracle\VirtualBox
$ VBoxManage internalcommands sethduuid "D:\vm\ubuntu-16.04.5-server.vdi"
UUID changed to: 8f71747a-ec55-4f8a-b6d5-160c9cd69a51

C:\Program Files\Oracle\VirtualBox
$ VBoxManage internalcommands sethduuid "D:\vm\tmp\test.vdi"
UUID changed to: 66817b7a-7926-42c3-af0a-c3ed6e95b2d1
```