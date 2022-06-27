---
title: tmp_Linux_disk_partition_over_2G
tags:
---
分割大於 2TB 的硬碟 - parted
===

由於 fdisk 無法正確分割大於 2TB 的硬碟，所以需要靠別的工具來達成。以下皆需要 root 權限。

apt-get install parted ntfs-3g
查詢目前所有磁碟的資訊。

parted -l
假設需要分割的磁碟是 /dev/sde。

parted /dev/sde
以 GPT 格式分割（GUID）。

(parted) mklabel gpt
將單位轉為 TB。

(parted) unit TB
整個切割為一個 3TB 的分割。

(parted) mkpart primary ext4 0.00TB 3.00TB
查詢分割結果。

(parted) print
結束程式。

(parted) quit
將 /dev/sde1 格式化為 EXT4。

mkfs.ext4 /dev/sde1
從輸出訊息可以看出 superblock 備份在好幾個地方。

mke2fs 1.42.5 (29-Jul-2012)
Filesystem label=
OS type: Linux
Block size=4096 (log=2)
Fragment size=4096 (log=2)
Stride=0 blocks, Stripe width=0 blocks
183148544 inodes, 732566272 blocks
36628313 blocks (5.00%) reserved for the super user
First data block=0
Maximum filesystem blocks=4294967296
22357 block groups
32768 blocks per group, 32768 fragments per group
8192 inodes per group
Superblock backups stored on blocks: 
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208, 
        4096000, 7962624, 11239424, 20480000, 23887872, 71663616, 78675968, 
        102400000, 214990848, 512000000, 550731776, 644972544
 
Allocating group tables: done                            
Writing inode tables: done                            
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done
變更 label 為 myhdd。

e2label /dev/sde1 myhdd
製作一個掛載點。

mkdir /mount/point
掛載。

mount /dev/sde1 /mount/point
第一次掛載要修改擁有者，否則一般權限無法使用。

chown -R user /mount/point
收工。

Reference: Linux Creating a Partition Size Larger Than 2TB
http://angelonotes.blogspot.tw/2012/12/2tb-parted.html