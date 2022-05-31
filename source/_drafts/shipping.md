---
title: shipping
abbrlink: 2d1c1724
tags:
---
### 燒 mac 更新 image
* 進 uboot
Hit any key to stop autoboot:  0
=> setenv mmcboot 'setenv bootargs earlycon panic=-1 root=${mmcroot} rw rootwait rootflags=noload;booti ${loadaddr} - ${fdt_addr}'
=> saveenv
=> reset

* BBU
cd /root/burnmac
./update.run 192.168.9.49 6c:ad:ad:00:11:58 6c:ad:ad:00:11:59 M220103444 M214805675 //RRH_IP 1G_MAC_addr 10G_MAC_addr MB_ID RF_ID
scp new_oam_partition_RHON_v3.sh root@192.168.9.49:/home/root/test/
scp mnt_oam_partition_RHON_v3.sh root@192.168.9.49:/home/root/test/
scp install_eng_v1_1_6o_524.run root@192.168.9.49:/home/root/test/

* RU
cd /home/root/test/
./new_oam_partition_RHON_v3.sh
./mnt_oam_partition_RHON_v3.sh
./install_eng_v1_1_6o_524.run

* for N7800
/usr/utils/eeprom_w 7800

* check eeprom data
/usr/utils/eeprom_r

### 出貨報告
https://drive.google.com/drive/folders/1x3Mpwjgk5md4r3H1_eCIoe9Pf8UOjwNN

### 7800
3352260 for Mavenir
3450000 for NEC