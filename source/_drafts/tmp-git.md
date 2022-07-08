---
title: tmp_git
abbrlink: f5527097
tags:
---
第一次用git上傳就上手
===

```sh
nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git status
# On branch LVN_T5_19r15
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#     modified:   device/nvidia/ardbeg/fstab.tn8
#     modified:   device/nvidia/ardbeg/init.t124.rc
#     modified:   device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#     SmartMnt_Nvidia_T50_T5_LNV_v1.00_20140417/
#     device/nvidia/common/releasetools.pyc
#     out/
no changes added to commit (use "git add" and/or "git commit -a")
```

```
nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git diff
diff --git a/device/nvidia/ardbeg/fstab.tn8 b/device/nvidia/ardbeg/fstab.tn8
index ae38867..785afe9 100755
--- a/device/nvidia/ardbeg/fstab.tn8
+++ b/device/nvidia/ardbeg/fstab.tn8
@@ -7,5 +7,13 @@
/dev/block/platform/sdhci-tegra.3/by-name/CAC           /cache              ext4      noatime,nosuid,nodev,data=writeback,nodelalloc, wait
/dev/block/platform/sdhci-tegra.3/by-name/UDA           /data               ext4      noatime,nosuid,nodev,data=writeback,noauto_da_alloc,    wait,check,encryptable=/dev/block/platform/sdhci-tegra.3
/devices/platform/sdhci-tegra.2/mmc_host/mmc1           auto    vfat      defaults                                                             voldmanaged=sdcard1:auto
-/devices/platform/tegra-xhci                            auto           vfat      defaults                                                             voldmanaged=usbdrive:auto
+#/devices/platform/tegra-xhci                            auto           vfat      defaults                                                             voldmanaged=usbdrive:auto
#/devices/platform/tegra-xhci/usb2/2-2/2-2.1           /mnt/usb1           vfat      defaults                                                             voldmanaged=usb1:auto
+
+/devices/platform/tegra-ehci.2/usb2/2-1                 auto       vfat      defaults                                                             voldmanaged=usbdrive:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.2           auto       vfat      defaults                                                             voldmanaged=usb2:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.3           auto       vfat      defaults                                                             voldmanaged=usb3:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.4           auto       vfat      defaults                                                             voldmanaged=usb4:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.5           auto       vfat      defaults                                                             voldmanaged=usb5:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.6           auto       vfat      defaults                                                             voldmanaged=usb6:auto
+/devices/platform/tegra-ehci.1/usb1/1-1/1-1.7           auto       vfat      defaults                                                             voldmanaged=usb7:auto
diff --git a/device/nvidia/ardbeg/init.t124.rc b/device/nvidia/ardbeg/init.t124.rc
index d9a9b8a..39ded18 100755
--- a/device/nvidia/ardbeg/init.t124.rc
+++ b/device/nvidia/ardbeg/init.t124.rc
@@ -35,6 +35,25 @@ on init
     mkdir /storage/usbdrive 0766 system system
     symlink /mnt/media_rw/usbdrive /storage/usbdrive
     symlink /mnt/media_rw/usbdrive /usbdrive
+
+    mkdir /mnt/media_rw/usb2 0666 media_rw media_rw
+    mkdir /mnt/media_rw/usb3 0666 media_rw media_rw
+    mkdir /mnt/media_rw/usb4 0666 media_rw media_rw
+    mkdir /mnt/media_rw/usb5 0666 media_rw media_rw
+    mkdir /mnt/media_rw/usb6 0666 media_rw media_rw
+    mkdir /mnt/media_rw/usb7 0666 media_rw media_rw
+    mkdir /storage/usb2 0666 system system
+    mkdir /storage/usb3 0666 system system
+    mkdir /storage/usb4 0666 system system
+    mkdir /storage/usb5 0666 system system
+    mkdir /storage/usb6 0666 system system
+    mkdir /storage/usb7 0666 system system
+    symlink /mnt/media_rw/usb2 /storage/usb2
+    symlink /mnt/media_rw/usb3 /storage/usb3
+    symlink /mnt/media_rw/usb4 /storage/usb4
+    symlink /mnt/media_rw/usb5 /storage/usb5
+    symlink /mnt/media_rw/usb6 /storage/usb6
+    symlink /mnt/media_rw/usb7 /storage/usb7
   
     # create directory for mounting calibration partition
     mkdir /mnt/factory 0775 system system
diff --git a/device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml b/device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml
index 097ccbf..934ee3b 100755
--- a/device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml
+++ b/device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml
@@ -48,5 +48,28 @@
                         android:primary="false"
                         android:removable="true"
                         android:mtpReserve="100" />
+    <storage android:mountPoint="/storage/usb2"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
+    <storage android:mountPoint="/storage/usb3"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
+    <storage android:mountPoint="/storage/usb4"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
+    <storage android:mountPoint="/storage/usb5"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
+    <storage android:mountPoint="/storage/usb6"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
+    <storage android:mountPoint="/storage/usb7"
+                        android:storageDescription="@string/storage_usb"
+                        android:primary="false"
+                        android:removable="true" />
</StorageList>
```

```
nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git add device/nvidia/ardbeg/fstab.tn8 device/nvidia/ardbeg/init.t124.rc device/nvidia/ardbeg/overlay-common/frameworks/base/core/res/res/xml/storage_list.xml


nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git commit -m "workarround for usb auto-mount via ehci interface"
[LVN_T5_19r15 168b948] workarround for usb auto-mount via ehci interface
Committer: Nick Cheng <nick@tpvswa01.(none)>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly:

    git config --global user.name "Your Name"
    git config --global user.email you@example.com

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

3 files changed, 52 insertions(+), 2 deletions(-)
```

```
nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git push
Enter passphrase for key '/HDD1_2T/nick/.ssh/id_rsa':
Counting objects: 29, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (12/12), done.
Writing objects: 100% (15/15), 1.33 KiB, done.
Total 15 (delta 8), reused 0 (delta 0)
To git@172.16.0.202:nvidia_t5/tegra-19r5-android-4-3_ardbeg.git
   0dc5282..168b948  LVN_T5_19r15 -> LVN_T5_19r15
```

```
nick@tpvswa01:tegra-19r5-android-4-3_ardbeg $ git log
commit 168b948f3d24ca2f6fae0cafee49d17a181061e5
Author: Nick Cheng <nick@tpvswa01.(none)>
Date:   Thu Apr 17 16:06:43 2014 +0800

    workarround for usb auto-mount via ehci interface
```