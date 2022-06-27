---
title: tmp_adb_usb.ini
tags:
---
adb_usb.ini
===
[adb/usb_vendors.c - platform/system/core - Git at Google](https://android.googlesource.com/platform/system/core/+/52e0b619990cce8becc20d16530ddd91334eff84/adb/usb_vendors.c)

```java
#define ANDROID_PATH            ".android"
#define ANDROID_ADB_INI         "adb_usb.ini"
#define TRACE_TAG               TRACE_USB
/* Keep the list below sorted alphabetically by #define name */
// Acer's USB Vendor ID
#define VENDOR_ID_ACER          0x0502
// Allwinner's USB Vendor ID
#define VENDOR_ID_ALLWINNER     0x1F3A
// Amlogic's USB Vendor ID
#define VENDOR_ID_AMLOGIC       0x1b8e
// AnyDATA's USB Vendor ID
#define VENDOR_ID_ANYDATA       0x16D5
// Archos's USB Vendor ID
#define VENDOR_ID_ARCHOS        0x0E79
// Asus's USB Vendor ID
#define VENDOR_ID_ASUS          0x0b05
// BYD's USB Vendor ID
#define VENDOR_ID_BYD           0x1D91
// Compal's USB Vendor ID
#define VENDOR_ID_COMPAL        0x04B7
// Compalcomm's USB Vendor ID
#define VENDOR_ID_COMPALCOMM    0x1219
// Dell's USB Vendor ID
#define VENDOR_ID_DELL          0x413c
// ECS's USB Vendor ID
#define VENDOR_ID_ECS           0x03fc
// EMERGING_TECH's USB Vendor ID
#define VENDOR_ID_EMERGING_TECH 0x297F
// Emerson's USB Vendor ID
#define VENDOR_ID_EMERSON       0x2207
// Foxconn's USB Vendor ID
#define VENDOR_ID_FOXCONN       0x0489
// Fujitsu's USB Vendor ID
#define VENDOR_ID_FUJITSU       0x04C5
// Funai's USB Vendor ID
#define VENDOR_ID_FUNAI         0x0F1C
// Garmin-Asus's USB Vendor ID
#define VENDOR_ID_GARMIN_ASUS   0x091E
// Gigabyte's USB Vendor ID
#define VENDOR_ID_GIGABYTE      0x0414
// Gigaset's USB Vendor ID
#define VENDOR_ID_GIGASET       0x1E85
// GIONEE's USB Vendor ID
#define VENDOR_ID_GIONEE        0x271D
// Google's USB Vendor ID
#define VENDOR_ID_GOOGLE        0x18d1
// Haier's USB Vendor ID
#define VENDOR_ID_HAIER         0x201E
// Harris's USB Vendor ID
#define VENDOR_ID_HARRIS        0x19A5
// Hisense's USB Vendor ID
#define VENDOR_ID_HISENSE       0x109b
// Honeywell's USB Vendor ID
#define VENDOR_ID_HONEYWELL     0x0c2e
// HP's USB Vendor ID
#define VENDOR_ID_HP            0x03f0
// HTC's USB Vendor ID
#define VENDOR_ID_HTC           0x0bb4
// Huawei's USB Vendor ID
#define VENDOR_ID_HUAWEI        0x12D1
// INQ Mobile's USB Vendor ID
#define VENDOR_ID_INQ_MOBILE    0x2314
// Intel's USB Vendor ID
#define VENDOR_ID_INTEL         0x8087
// Intermec's USB Vendor ID
#define VENDOR_ID_INTERMEC      0x067e
// IRiver's USB Vendor ID
#define VENDOR_ID_IRIVER        0x2420
// K-Touch's USB Vendor ID
#define VENDOR_ID_K_TOUCH       0x24E3
// KT Tech's USB Vendor ID
#define VENDOR_ID_KT_TECH       0x2116
// Kobo's USB Vendor ID
#define VENDOR_ID_KOBO          0x2237
// Kyocera's USB Vendor ID
#define VENDOR_ID_KYOCERA       0x0482
// Lab126's USB Vendor ID
#define VENDOR_ID_LAB126        0x1949
// Lenovo's USB Vendor ID
#define VENDOR_ID_LENOVO        0x17EF
// LenovoMobile's USB Vendor ID
#define VENDOR_ID_LENOVOMOBILE  0x2006
// LG's USB Vendor ID
#define VENDOR_ID_LGE           0x1004
// Lumigon's USB Vendor ID
#define VENDOR_ID_LUMIGON       0x25E3
// Micromax's USB Vendor ID
#define VENDOR_ID_MICROMAX      0x2A96
// Motorola's USB Vendor ID
#define VENDOR_ID_MOTOROLA      0x22b8
// MSI's USB Vendor ID
#define VENDOR_ID_MSI           0x0DB0
// MTK's USB Vendor ID
#define VENDOR_ID_MTK           0x0e8d
// NEC's USB Vendor ID
#define VENDOR_ID_NEC           0x0409
// B&N Nook's USB Vendor ID
#define VENDOR_ID_NOOK          0x2080
// Nvidia's USB Vendor ID
#define VENDOR_ID_NVIDIA        0x0955
// OPPO's USB Vendor ID
#define VENDOR_ID_OPPO          0x22D9
// On-The-Go-Video's USB Vendor ID
#define VENDOR_ID_OTGV          0x2257
// OUYA's USB Vendor ID
#define VENDOR_ID_OUYA          0x2836
// Pantech's USB Vendor ID
#define VENDOR_ID_PANTECH       0x10A9
// Pegatron's USB Vendor ID
#define VENDOR_ID_PEGATRON      0x1D4D
// Philips's USB Vendor ID
#define VENDOR_ID_PHILIPS       0x0471
// Panasonic Mobile Communication's USB Vendor ID
#define VENDOR_ID_PMC           0x04DA
// Positivo's USB Vendor ID
#define VENDOR_ID_POSITIVO      0x1662
// Prestigio's USB Vendor ID
#define VENDOR_ID_PRESTIGIO     0x29e4
// Qisda's USB Vendor ID
#define VENDOR_ID_QISDA         0x1D45
// Qualcomm's USB Vendor ID
#define VENDOR_ID_QUALCOMM      0x05c6
// Quanta's USB Vendor ID
#define VENDOR_ID_QUANTA        0x0408
// Rockchip's USB Vendor ID
#define VENDOR_ID_ROCKCHIP      0x2207
// Samsung's USB Vendor ID
#define VENDOR_ID_SAMSUNG       0x04e8
// Sharp's USB Vendor ID
#define VENDOR_ID_SHARP         0x04dd
// SK Telesys's USB Vendor ID
#define VENDOR_ID_SK_TELESYS    0x1F53
// Smartisan's USB Vendor ID
#define VENDOR_ID_SMARTISAN     0x29a9
// Sonim Tech's USB Vendor ID
#define VENDOR_ID_SONIM_TECH    0x1d9c
// Sony's USB Vendor ID
#define VENDOR_ID_SONY          0x054C
// Sony Ericsson's USB Vendor ID
#define VENDOR_ID_SONY_ERICSSON 0x0FCE
// T & A Mobile Phones' USB Vendor ID
#define VENDOR_ID_T_AND_A       0x1BBB
// TechFaith's USB Vendor ID
#define VENDOR_ID_TECHFAITH     0x1d09
// Teleepoch's USB Vendor ID
#define VENDOR_ID_TELEEPOCH     0x2340
// Texas Instruments's USB Vendor ID
#define VENDOR_ID_TI            0x0451
// Toshiba's USB Vendor ID
#define VENDOR_ID_TOSHIBA       0x0930
// Unowhy's USB Vendor ID
#define VENDOR_ID_UNOWHY        0x2A49
// Vizio's USB Vendor ID
#define VENDOR_ID_VIZIO         0xE040
// Wacom's USB Vendor ID
#define VENDOR_ID_WACOM         0x0531
// Xiaomi's USB Vendor ID
#define VENDOR_ID_XIAOMI        0x2717
// YotaDevices's USB Vendor ID
#define VENDOR_ID_YOTADEVICES   0x2916
// Yulong Coolpad's USB Vendor ID
#define VENDOR_ID_YULONG_COOLPAD 0x1EBF
// ZTE's USB Vendor ID
#define VENDOR_ID_ZTE           0x19D2
/* Keep the list above sorted alphabetically by #define name */
```