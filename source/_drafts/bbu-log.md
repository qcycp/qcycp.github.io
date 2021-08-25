---
title: bbu_log
abbrlink: 165bed7f
tags:
---
* ptp
```
ptp4l[331215.273]: selected /dev/ptp9 as PTP clock
ptp4l[331215.290]: port 1: INITIALIZING to LISTENING on INIT_COMPLETE
ptp4l[331215.290]: port 0: INITIALIZING to LISTENING on INIT_COMPLETE
ptp4l[331215.325]: port 1: new foreign master e8c57a.fffe.5c0a6c-18
ptp4l[331215.575]: selected best master clock e8c57a.fffe.5c0a6c
ptp4l[331215.576]: updating UTC offset to 37
ptp4l[331215.576]: port 1: LISTENING to UNCALIBRATED on RS_SLAVE
ptp4l[331215.950]: port 1: UNCALIBRATED to SLAVE on MASTER_CLOCK_SELECTED
ptp4l[331216.700]: rms  453 max  664 freq  -9177 +/- 395 delay  1317 +/-   7
ptp4l[331217.700]: rms  128 max  180 freq  -9614 +/- 152 delay  1321 +/-   2
ptp4l[331218.700]: rms  131 max  173 freq  -9869 +/-  28 delay  1314 +/-   6
ptp4l[331219.700]: rms   51 max   81 freq  -9866 +/-  24 delay  1314 +/-   3
ptp4l[331220.700]: rms   10 max   18 freq  -9813 +/-  17 delay  1310 +/-   3
ptp4l[331221.700]: rms   16 max   31 freq  -9799 +/-  26 delay  1316 +/-   3
ptp4l[331222.700]: rms   13 max   27 freq  -9796 +/-  21 delay  1318 +/-   3
ptp4l[331223.700]: rms   10 max   19 freq  -9794 +/-  17 delay  1319 +/-   2
ptp4l[331224.700]: rms   12 max   27 freq  -9787 +/-  20 delay  1313 +/-   2
ptp4l[331225.700]: rms   13 max   28 freq  -9796 +/-  21 delay  1312 +/-   2
```
* phc
```
phc2sys[330775.422]: clock set to insert leap second at midnight (UTC)
phc2sys[330775.422]: CLOCK_REALTIME phc offset     18731 s0 freq   -2538 delay   1235
phc2sys[330776.423]: CLOCK_REALTIME phc offset     18782 s2 freq   -2487 delay   1248
phc2sys[330777.423]: CLOCK_REALTIME phc offset     18780 s2 freq  +16293 delay   1239
phc2sys[330778.423]: CLOCK_REALTIME phc offset        15 s2 freq   +3162 delay   1250
phc2sys[330779.423]: CLOCK_REALTIME phc offset     -5667 s2 freq   -2516 delay   1263
phc2sys[330780.423]: CLOCK_REALTIME phc offset     -5621 s2 freq   -4170 delay   1259
phc2sys[330781.424]: CLOCK_REALTIME phc offset     -3938 s2 freq   -4173 delay   1238
phc2sys[330782.424]: CLOCK_REALTIME phc offset     -2241 s2 freq   -3657 delay   1245
phc2sys[330783.424]: CLOCK_REALTIME phc offset     -1080 s2 freq   -3169 delay   1254
phc2sys[330784.424]: CLOCK_REALTIME phc offset      -397 s2 freq   -2810 delay   1248
phc2sys[330785.424]: CLOCK_REALTIME phc offset       -76 s2 freq   -2608 delay   1243
phc2sys[330786.424]: CLOCK_REALTIME phc offset        54 s2 freq   -2501 delay   1256
phc2sys[330787.424]: CLOCK_REALTIME phc offset        56 s2 freq   -2482 delay   1241
phc2sys[330788.424]: CLOCK_REALTIME phc offset        51 s2 freq   -2471 delay   1242
phc2sys[330789.424]: CLOCK_REALTIME phc offset        37 s2 freq   -2469 delay   1252
phc2sys[330790.424]: CLOCK_REALTIME phc offset        28 s2 freq   -2467 delay   1247
phc2sys[330791.425]: CLOCK_REALTIME phc offset         7 s2 freq   -2480 delay   1254
```
* FlexRAN
```
====== Start Time ======
2021-08-20-16:17:01-CST
====== Start to active L1 ======

sourcing /opt/intel/system_studio_2019/bin/iccvars.sh  intel64 -platform linux
Set RTE_SDK=/opt/dpdk-19.11
Set RTE_TARGET=x86_64-native-linuxapp-icc


====================================================================================
Environment Variables:
====================================================================================
RTE_SDK=/opt/dpdk-19.11
RTE_TARGET=x86_64-native-linuxapp-icc
WIRELESS_SDK_TARGET_ISA=avx512
RPE_DIR=/opt/faca/FlexRAN/libs/ferrybridge
CPA_DIR=/opt/faca/FlexRAN/libs/cpa
ROE_DIR=/opt/faca/FlexRAN/libs/roe
XRAN_DIR=/opt/faca/FlexRAN/xran
DIR_WIRELESS_SDK_ROOT=/opt/faca/FlexRAN/sdk
SDK_BUILD=build-avx512-icc
DIR_WIRELESS_SDK=/opt/faca/FlexRAN/sdk/build-avx512-icc
FLEXRAN_SDK=/opt/faca/FlexRAN/sdk/build-avx512-icc/install
DIR_WIRELESS_FW=/opt/faca/FlexRAN/framework
DIR_WIRELESS_TEST_4G=/opt/faca/FlexRAN/tests/lte
DIR_WIRELESS_TEST_5G=/opt/faca/FlexRAN/tests/nr5g
DIR_WIRELESS_TABLE_5G=/opt/faca/FlexRAN/bin/nr5g/gnb/l1/table
DIR_WIRELESS_XUE=/opt/faca/FlexXUE
====================================================================================

DIR_WIRELESS_TABLE_5G=/opt/faca/FlexRAN/bin/nr5g/gnb/l1/table
MKLROOT=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl
WIRELESS_SDK_TARGET_ISA=avx512
INTEL_LICENSE_FILE=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/licenses:/opt/intel/licenses:/intel/licenses
IPPROOT=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/ipp
CPA_DIR=/opt/faca/FlexRAN/libs/cpa
LIBRARY_PATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/ipp/lib/intel64:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/compiler/lib/intel64_lin:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl/lib/intel64_lin:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/lib/intel64/gcc4.7:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/lib/intel64/gcc4.7
DIR_WIRELESS_XUE=/opt/faca/FlexXUE
OLDPWD=/opt/faca
FLEXRAN_SDK=/opt/faca/FlexRAN/sdk/build-avx512-icc/install
LD_LIBRARY_PATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/compiler/lib/intel64_lin:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/ipp/lib/intel64:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/compiler/lib/intel64_lin:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl/lib/intel64_lin:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/lib/intel64/gcc4.7:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/lib/intel64/gcc4.7
XRAN_DIR=/opt/faca/FlexRAN/xran
PSTLROOT=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/pstl
SDK_BUILD=build-avx512-icc
CPATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/ipp/include:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl/include:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/pstl/include:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/include:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb/include
RPE_DIR=/opt/faca/FlexRAN/libs/ferrybridge
NLSPATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/compiler/lib/intel64/locale/%l_%t/%N:/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl/lib/intel64_lin/locale/%l_%t/%N
PATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/bin/intel64:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin
RTE_SDK=/opt/dpdk-19.11
TBBROOT=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/tbb
DIR_WIRELESS_TEST_4G=/opt/faca/FlexRAN/tests/lte
WIRELESS_SDK_TOOLCHAIN=icc
RTE_TARGET=x86_64-native-linuxapp-icc
PWD=/opt/faca/FlexRAN
LANG=en_US.UTF-8
DIR_WIRELESS_FW=/opt/faca/FlexRAN/framework
ROE_DIR=/opt/faca/FlexRAN/libs/roe
DIR_WIRELESS_SDK_ROOT=/opt/faca/FlexRAN/sdk
SHLVL=1
DIR_WIRELESS_SDK=/opt/faca/FlexRAN/sdk/build-avx512-icc
PKG_CONFIG_PATH=/opt/intel/system_studio_2019/compilers_and_libraries_2019.3.206/linux/mkl/bin/pkgconfig
DIR_WIRELESS_LLS=/opt/faca/TestLLS
DIR_WIRELESS_TEST_5G=/opt/faca/FlexRAN/tests/nr5g
_=/usr/bin/env

./l1.sh: line 39: /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu10/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu11/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu12/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu13/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu14/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu15/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu16/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu17/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu18/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu19/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu20/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu21/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu22/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu23/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu24/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu25/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu26/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu27/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu28/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu29/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu30/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu31/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu32/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu33/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu34/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu35/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu36/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu37/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu38/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu39/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu5/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu6/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu8/cpufreq/scaling_governor: No such file or directory
./l1.sh: line 39: /sys/devices/system/cpu/cpu9/cpufreq/scaling_governor: No such file or directory
Radio mode with XRAN - Sub6 100Mhz
DPDK WLS MODE
kernel.sched_rt_runtime_us = -1
kernel.shmmax = 2147483648
kernel.shmall = 2147483648
Note: Forwarding request to 'systemctl disable irqbalance.service'.
using configuration file phycfg_xran.xml
using configuration file xrancfg_sub6.xml
>> Running... ./l1app table 0 1 --cfgfile=phycfg_xran.xml --xranfile=xrancfg_sub6.xml
FlexRAN SDK bblib_layerdemapping_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_layermapping_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_cestimate_5gnr_version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_cestimate_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_llr_demapping version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pdcch_remapping_5gnr_version version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_reed_muller version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_lte_modulation version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_decoder_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_rate_dematching_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_PhaseNoise_5G version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_mimo_mmse_detection_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_fd_correlation version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_scramble_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_equ_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_ta_compensation_version_5gnr jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_encoder_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_prach_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_fft_ifft version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_common version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_lte_crc version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_lte_dft_idft version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_irc_rnn_calculation_5gnr_version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_mmse_irc_mimo_5gnr_version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_srs_cestimate_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_zf_matrix_gen version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_beamforming_dl_expand version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pusch_focompensation_5gnr_version jenkins-FlexRAN-SDK-REL-291-g9f315235
=========================
5GNR PHY Application     
=========================


--------------------------------------------------------
File[phycfg_xran.xml] Version: 20.11
--------------------------------------------------------
 --version=20.11
 --successiveNoApi=15
 --wls_dev_name=wls0
 --wlsMemorySize=0x3F600000
 --dlIqLog=0
 --ulIqLog=0
 --iqLogDumpToFile=0
 --phyMlog=1
 --phyStats=1
 --dpdkFilePrefix=wls0
 --dpdkMemorySize=16384
 --dpdkIovaMode=0
 --dpdkBasebandFecMode=1
 --dpdkBasebandDevice=0000:40:00.0
 --numSharedResource=0
 --mempoolName0=fast_pkt
 --numElement0=65535
 --elementSize0=2048
 --privateDataSize0=64
 --ringName0=0
 --ringSize0=1024
 --portAddr0=0000:af:00.0
 --portSocketIdx0=1
 --txQueueNum0=1
 --txQueueDesc0=512
 --rxQueueNum0=1
 --rxQueueDesc0=128
 --maxPayloadSize0=9728
 --mempoolName1=header_pkt
 --numElement1=65535
 --elementSize1=2048
 --privateDataSize1=64
 --ringName1=0
 --ringSize1=1024
 --portAddr1=0000:af:00.1
 --portSocketIdx1=1
 --txQueueNum1=2
 --txQueueDesc1=512
 --rxQueueNum1=1
 --rxQueueDesc1=128
 --maxPayloadSize1=9728
 --mempoolName2=clone_pkt
 --numElement2=65535
 --elementSize2=2048
 --privateDataSize2=64
 --ringName2=0
 --ringSize2=1024
 --portAddr2=0
 --portSocketIdx2=0
 --txQueueNum2=1
 --txQueueDesc2=512
 --rxQueueNum2=1
 --rxQueueDesc2=128
 --maxPayloadSize2=9728
 --mempoolName3=pdu3
 --numElement3=65535
 --elementSize3=2048
 --privateDataSize3=64
 --ringName3=sdu3
 --ringSize3=1024
 --portAddr3=0
 --portSocketIdx3=0
 --txQueueNum3=1
 --txQueueDesc3=512
 --rxQueueNum3=1
 --rxQueueDesc3=128
 --maxPayloadSize3=9728
 --radioEnable=4
 --ferryBridgeMode=1
 --ferryBridgeEthPort=1
 --ferryBridgeSyncPorts=0
 --ferryBridgeOptCableLoopback=0
 --radioCfg0PCIeEthDev=0000:19:00.0
 --radioCfg0DpdkRx=1
 --radioCfg0DpdkTx=2
 --radioCfg0TxAnt=2
 --radioCfg0RxAnt=2
 --radioCfg0RxAgc=0
 --radioCfg0NumCell=1
 --radioCfg0Cell0PhyId=0
 --radioCfg0Cell1PhyId=1
 --radioCfg0Cell2PhyId=2
 --radioCfg0Cell3PhyId=3
 --radioCfg0Cell4PhyId=4
 --radioCfg0Cell5PhyId=5
 --radioCfg0riuMac=11:22:33:44:55:66
 --radioCfg1PCIeEthDev=0000:03:00.1
 --radioCfg1DpdkRx=1
 --radioCfg1DpdkTx=1
 --radioCfg1TxAnt=4
 --radioCfg1RxAnt=4
 --radioCfg1RxAgc=0
 --radioCfg1NumCell=1
 --radioCfg1Cell0PhyId=2
 --radioCfg1Cell1PhyId=3
 --radioCfg1Cell2PhyId=2
 --radioCfg1Cell3PhyId=3
 --radioCfg1riuMac=ac:1f:6b:2c:9f:07
 --radioCfg2PCIeEthDev=0000:05:00.0
 --radioCfg2DpdkRx=10
 --radioCfg2DpdkTx=11
 --radioCfg2TxAnt=4
 --radioCfg2RxAnt=4
 --radioCfg2RxAgc=0
 --radioCfg2NumCell=2
 --radioCfg2Cell0PhyId=4
 --radioCfg2Cell1PhyId=5
 --radioCfg2Cell2PhyId=2
 --radioCfg2Cell3PhyId=3
 --radioCfg2riuMac=ac:1f:6b:2c:9f:07
 --radioCfg3PCIeEthDev=0000:05:00.1
 --radioCfg3DpdkRx=12
 --radioCfg3DpdkTx=13
 --radioCfg3TxAnt=4
 --radioCfg3RxAnt=4
 --radioCfg3RxAgc=0
 --radioCfg3NumCell=2
 --radioCfg3Cell0PhyId=6
 --radioCfg3Cell1PhyId=7
 --radioCfg3Cell2PhyId=2
 --radioCfg3Cell3PhyId=3
 --radioCfg3riuMac=ac:1f:6b:2c:9f:07
 --radioCfg4PCIeEthDev=0000:00:08.0
 --radioCfg4DpdkRx=14
 --radioCfg4DpdkTx=15
 --radioCfg4TxAnt=4
 --radioCfg4RxAnt=4
 --radioCfg4RxAgc=0
 --radioCfg4NumCell=2
 --radioCfg4Cell0PhyId=8
 --radioCfg4Cell1PhyId=9
 --radioCfg4Cell2PhyId=2
 --radioCfg4Cell3PhyId=3
 --radioCfg4riuMac=ac:1f:6b:2c:9f:07
 --radioCfg5PCIeEthDev=0000:08:00.0
 --radioCfg5DpdkRx=16
 --radioCfg5DpdkTx=16
 --radioCfg5TxAnt=4
 --radioCfg5RxAnt=4
 --radioCfg5RxAgc=0
 --radioCfg5NumCell=2
 --radioCfg5Cell0PhyId=10
 --radioCfg5Cell1PhyId=11
 --radioCfg5Cell2PhyId=2
 --radioCfg5Cell3PhyId=3
 --radioCfg5riuMac=ac:1f:6b:2c:9f:07
 --radioCfg6PCIeEthDev=0000:00:05.0
 --radioCfg6DpdkRx=16
 --radioCfg6DpdkTx=16
 --radioCfg6TxAnt=4
 --radioCfg6RxAnt=4
 --radioCfg1RxAgc=0
 --radioCfg6NumCell=2
 --radioCfg6Cell0PhyId=12
 --radioCfg6Cell1PhyId=13
 --radioCfg6Cell2PhyId=2
 --radioCfg6Cell3PhyId=3
 --radioCfg6riuMac=ac:1f:6b:2c:9f:07
 --radioCfg7PCIeEthDev=0000:00:06.0
 --radioCfg7DpdkRx=16
 --radioCfg7DpdkTx=16
 --radioCfg7TxAnt=4
 --radioCfg7RxAnt=4
 --radioCfg7RxAgc=0
 --radioCfg7NumCell=2
 --radioCfg7Cell0PhyId=14
 --radioCfg7Cell1PhyId=15
 --radioCfg7Cell2PhyId=2
 --radioCfg7Cell3PhyId=3
 --radioCfg7riuMac=ac:1f:6b:2c:9f:07
 --radioPort0=0
 --radioPort1=1
 --radioPort2=2
 --radioPort3=3
 --radioPort4=4
 --radioPort5=5
 --radioPort6=6
 --radioPort7=7
 --BitMapHack=0x0000
 --CondutiveEnable=0
 --PdschSymbolSplit=0
 --PdschDlWeightSplit=0
 --FecEncSplit=4
 --PuschChanEstSplit=0
 --PuschMmseSplit=0
 --PuschLlrRxSplit=0
 --PuschUlWeightSplit=0
 --FecDecEarlyTermDisable=0
 --FecDecNumIter=12
 --FecDecSplit=4
 --llrOutDecimalDigit=2
 --IrcEnableThreshold=-100
 --PuschNoiseScale=2
 --CEInterpMethod=0
 --CEFocEnable=0
 --CEFocGranularity=768
 --PuschLinearInterpEnable=0
 --PuschLinearInterpGranularity0=99
 --PuschLinearInterpGranularity1=0,1,2,3,4
 --PuschLinearInterpGranularity2=0,1,2,3,4
 --PuschLinearInterpGranularity3=0,1,2,3,4
 --PucchSplit=0
 --SrsCeSplit=0
 --prachDetectThreshold=80
 --UrllcPuschFecSplit=0
 --UrllcBbdevIdEnd=0
 --MlogSubframes=128
 --MlogCores=40
 --MlogSize=10000
 --systemThread=1, 0, 0
 --timerThread=0, 96, 0
 --FpgaDriverCpuInfo=3, 96, 0
 --FrontHaulCpuInfo=3, 96, 0
 --radioDpdkMaster=2, 99, 0
 --BbuPoolSleepEnable=1
 --BbuPoolThreadCorePriority=94
 --BbuPoolThreadCorePolicy=0
 --BbuPoolThreadDefault_0_63=0xF0
 --BbuPoolThreadDefault_64_127=0x0
 --BbuPoolThreadSrs_0_63=0x0
 --BbuPoolThreadSrs_64_127=0x0
 --BbuPoolThreadDlbeam_0_63=0x0
 --BbuPoolThreadDlbeam_64_127=0x0
 --BbuPoolThreadUrllc=0x100
 --FrontHaulTimeAdvance=7450
 --nEthPorts=462607
 --nPhaseCompFlag=0
 --nFecFpgaVersionMu3=0x20010900
 --nFecFpgaVersionMu0_1=0x0423D420
 --nFhFpgaVersionMu3=0x8001000F
 --nFhFpgaVersionMu0_1=0x90010008
 --StreamStats=0
 --StreamIp=127.0.0.1
 --StreamPort=2000

wls_dev_filename: wls0
dpdkFilePrefix: wls0
numSharedResource: 0
phycfg_apply: Initialize Radio Interface with XRAN library
Setting FecEncSplit to 1 to run on HW accelerator
Setting FecDecSplit to 1 to run on HW accelerator



--------------------------------------------------------
File[xrancfg_sub6.xml] Version: 20.11
--------------------------------------------------------
 --version=20.11
 --oRuNum=1
 --oRuEthLinkSpeed=10
 --oRuLinesNumber=1
 --oRuCUon1Vf=1
 --PciBusAddoRu0Vf0=0000:61:02.0
 --PciBusAddoRu0Vf1=0000:61:02.1
 --PciBusAddoRu0Vf2=0000:51:01.2
 --PciBusAddoRu0Vf3=0000:51:01.3
 --PciBusAddoRu1Vf0=0000:61:06.0
 --PciBusAddoRu1Vf1=0000:61:06.1
 --PciBusAddoRu1Vf2=0000:51:01.6
 --PciBusAddoRu1Vf3=0000:51:01.7
 --PciBusAddoRu2Vf0=0000:18:0a.0
 --PciBusAddoRu2Vf1=0000:18:0a.1
 --PciBusAddoRu2Vf2=0000:51:02.2
 --PciBusAddoRu2Vf3=0000:51:02.3
 --PciBusAddoRu3Vf0=0000:00:00.0
 --PciBusAddoRu3Vf1=0000:00:00.0
 --PciBusAddoRu3Vf2=0000:00:00.0
 --PciBusAddoRu3Vf3=0000:00:00.0
 --oRuRem0Mac0=aa:bb:cc:dd:ee:ff
 --oRuRem0Mac1=aa:bb:cc:dd:ee:ff
 --oRuRem0Mac2=00:11:22:33:00:21
 --oRuRem0Mac3=00:11:22:33:00:31
 --oRuRem1Mac0=12:34:56:78:90:fe
 --oRuRem1Mac1=12:34:56:78:90:fe
 --oRuRem1Mac2=00:11:22:33:01:21
 --oRuRem1Mac3=00:11:22:33:01:31
 --oRuRem2Mac0=12:34:56:78:90:fd
 --oRuRem2Mac1=12:34:56:78:90:fd
 --oRuRem2Mac2=00:11:22:33:02:21
 --oRuRem2Mac3=00:11:22:33:02:31
 --oRuRem3Mac0=00:11:22:33:03:01
 --oRuRem3Mac1=00:11:22:33:03:11
 --oRuRem3Mac2=00:11:22:33:03:21
 --oRuRem3Mac3=00:11:22:33:03:31
 --oRu0NumCc=1
 --oRu0Cc0PhyId=0
 --oRu0Cc1PhyId=1
 --oRu0Cc2PhyId=2
 --oRu0Cc3PhyId=3
 --oRu0Cc4PhyId=4
 --oRu0Cc5PhyId=5
 --oRu0Cc6PhyId=6
 --oRu0Cc7PhyId=7
 --oRu0Cc8PhyId=8
 --oRu0Cc9PhyId=9
 --oRu0Cc10PhyId=10
 --oRu0Cc11PhyId=11
 --oRu1NumCc=1
 --oRu1Cc0PhyId=1
 --oRu1Cc1PhyId=1
 --oRu1Cc2PhyId=2
 --oRu1Cc3PhyId=3
 --oRu2NumCc=1
 --oRu2Cc0PhyId=2
 --oRu2Cc1PhyId=1
 --oRu2Cc2PhyId=2
 --oRu2Cc3PhyId=3
 --xRANThread=8, 96, 0
 --xRANWorker=0x00000200, 96, 0
 --Category=0
 --xranPmdSleep=0
 --Tadv_cp_dl=25
 --T2a_min_cp_dl=285
 --T2a_max_cp_dl=429
 --T2a_min_cp_ul=285
 --T2a_max_cp_ul=429
 --T2a_min_up=71
 --T2a_max_up=428
 --Ta3_min=20
 --Ta3_max=32
 --MTU=8000
 --c_plane_vlan_tag=1
 --u_plane_vlan_tag=2
 --T1a_min_cp_dl=285
 --T1a_max_cp_dl=470
 --T1a_min_cp_ul=285
 --T1a_max_cp_ul=429
 --T1a_min_up=96
 --T1a_max_up=196
 --Ta4_min=0
 --Ta4_max=75
 --EnableCp=1
 --DynamicSectionEna=0
 --DynamicSectionEnaUL=0
 --xRANSFNWrap=1
 --xRANNumDLPRBs=0
 --xRANNumULPRBs=0
 --Gps_Alpha=0
 --Gps_Beta=0
 --xranCompMethod=1
 --xraniqWidth=9
 --xranModCompEna=0
 --xraniqWidthPrach=16
 --xranCompMethodPrach=0
 --oRu0nPrbElemDl=1
 --oRu0PrbElemDl0=0,273,0,14,0,0,1,9,0,0,0
 --oRu0PrbElemDl1=50,25,0,14,1,1,0,16,1,0,0
 --oRu0PrbElemDl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu0PrbElemDl3=144,48,0,14,4,1,1,9,1,0,0
 --oRu0PrbElemDl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu0PrbElemDl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu0PrbElemDl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu0PrbElemDl7=252,21,0,14,8,1,1,9,1,0,0
 --oRu0nPrbElemUl=2
 --oRu0PrbElemUl0=0,0,0,14,0,0,1,9,0,0,0
 --oRu0PrbElemUl1=0,273,0,14,0,0,1,9,0,0,0
 --oRu0PrbElemUl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu0PrbElemUl3=108,36,0,14,4,1,1,9,1,0,0
 --oRu0PrbElemUl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu0PrbElemUl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu0PrbElemUl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu0PrbElemUl7=252,21,0,14,8,1,1,9,1,0,0
 --oRu1nPrbElemDl=1
 --oRu1PrbElemDl0=0,273,0,14,0,0,1,9,0,0,0
 --oRu1PrbElemDl1=50,25,0,14,1,1,0,16,1,0,0
 --oRu1PrbElemDl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu1PrbElemDl3=144,48,0,14,4,1,1,9,1,0,0
 --oRu1PrbElemDl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu1PrbElemDl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu1PrbElemDl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu1PrbElemDl7=252,21,0,14,8,1,1,9,1,0,0
 --oRu1nPrbElemUl=2
 --oRu1PrbElemUl0=0,0,0,14,0,0,1,9,0,0,0
 --oRu1PrbElemUl1=0,273,0,14,0,0,1,9,0,0,0
 --oRu1PrbElemUl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu1PrbElemUl3=108,36,0,14,4,1,1,9,1,0,0
 --oRu1PrbElemUl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu1PrbElemUl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu1PrbElemUl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu1PrbElemUl7=252,21,0,14,8,1,1,9,1,0,0
 --oRu2nPrbElemDl=1
 --oRu2PrbElemDl0=0,273,0,14,0,0,1,9,0,0,0
 --oRu2PrbElemDl1=50,25,0,14,1,1,0,16,1,0,0
 --oRu2PrbElemDl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu2PrbElemDl3=144,48,0,14,4,1,1,9,1,0,0
 --oRu2PrbElemDl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu2PrbElemDl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu2PrbElemDl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu2PrbElemDl7=252,21,0,14,8,1,1,9,1,0,0
 --oRu2nPrbElemUl=2
 --oRu2PrbElemUl0=0,0,0,14,0,0,1,9,0,0,0
 --oRu2PrbElemUl1=0,273,0,14,0,0,1,9,0,0,0
 --oRu2PrbElemUl2=72,36,0,14,3,1,1,9,1,0,0
 --oRu2PrbElemUl3=108,36,0,14,4,1,1,9,1,0,0
 --oRu2PrbElemUl4=144,36,0,14,5,1,1,9,1,0,0
 --oRu2PrbElemUl5=180,36,0,14,6,1,1,9,1,0,0
 --oRu2PrbElemUl6=216,36,0,14,7,1,1,9,1,0,0
 --oRu2PrbElemUl7=252,21,0,14,8,1,1,9,1,0,0


timer_set_tsc_freq_from_clock: System clock (rdtsc) resolution 2399999856 [Hz]
                               Ticks per usec 2399
MLogOpen: filename(l1mlog.bin) mlogSubframes (128), mlogCores(40), mlogSize(10000) mlog_mask (-1)
    mlogSubframes (128), mlogCores(40), mlogSize(10000)
    localMLogTimerInit
        System clock (rdtsc)  resolution 2400000235 [Hz]
        Ticks per us 2400
    MLog Storage: 0x7f4576bee100 -> 0x7f4579cc4830 [ 51210032 bytes ]
    localMLogFreqReg: 2400. Storing: 2400
    Mlog Open successful

gnb_io_xran_init
num_o_ru 1 EthLinesNumber 1 where VFs 1 per EthLine
VF[0] 0000:61:02.0 [C+U Plane]
oRu0nPrbElemDl0: oRu0: nRBStart 0,nRBSize 273,nStartSymb 0,numSymb 14,nBeamIndex 0, bf_weight_update 0 compMethod 1, iqWidth 9 BeamFormingType 0 scaler 0 remask 0x0
(0,0,0,0,0,0):0 numBundPrb 0, numSetBFW 0, RAD 0, disableBFW 0, bfwIqWidth 0, bfwCompMeth 0
oRu0nPrbElemUl0: oRu0: nRBStart 0,nRBSize 0,nStartSymb 0,numSymb 14,nBeamIndex 0, bf_weight_update 0 compMethod 1, iqWidth 9 BeamFormingType 0 scaler 0 remask 0x0
(0,0,0,0,0,0):0 numBundPrb 0, numSetBFW 0, RAD 0, disableBFW 0, bfwIqWidth 0, bfwCompMeth 0
oRu0nPrbElemUl1: oRu0: nRBStart 0,nRBSize 273,nStartSymb 0,numSymb 14,nBeamIndex 0, bf_weight_update 0 compMethod 1, iqWidth 9 BeamFormingType 0 scaler 0 remask 0x0
(0,0,0,0,0,0):1 numBundPrb 0, numSetBFW 0, RAD 0, disableBFW 0, bfwIqWidth 0, bfwCompMeth 0
gnb_io_xran_cfg_setup successful
'DPDK 19.11.0'
 xran_init: MTU 8000
PF Eth line speed 10G
PF Eth lines per O-xU port 1
BBDEV_FEC_ACCL_NR5G
hw-accelerated bbdev 0000:40:00.0
total cores 40 c_mask 0x00000000000000304 core 8 [id] system_core 2 [id] pkt_proc_core 0x00000000000000200 [mask] pkt_aux_core 0 [id] timing_core 8 [id]
xran_ethdi_init_dpdk_io: Calling rte_eal_init:wls0 -c 0x00000000000000304 -n2 --iova-mode=pa --socket-mem=16384 --socket-limit=16384 --proc-type=auto --file-prefix wls0 -w0000:00:00.0 -w0000:40:00.0  
EAL: Detected 40 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Auto-detected process type: PRIMARY
EAL: Multi-process socket /var/run/dpdk/wls0/mp_socket
EAL: Selected IOVA mode 'PA'
EAL: Probing VFIO support...

====== L1 is ready ======
EAL: PCI device 0000:40:00.0 on NUMA socket 0
EAL:   probe driver: 8086:d8f intel_fpga_5gnr_fec_pf
xran_init_mbuf_pool: socket 0
EAL: PCI device 0000:61:02.0 on NUMA socket 0
EAL:   probe driver: 8086:37cd net_i40e_vf
initializing port 0 for TX, drv=net_i40e_vf
Port 0 MAC: 00 11 22 33 44 66
Port 0: nb_rxd 4096 nb_txd 4096
[0] mempool_rx__0
[0] mempool_small__0

Checking link status portid [0]   ... done
Port 0 Link Up - speed 10000 Mbps - full-duplex
[ 0] vf  0 local  SRC MAC: 00 11 22 33 44 66
[ 0] vf  0 remote DST MAC: aa bb cc dd ee ff
created dl_gen_ring_up_0
xran_init successful, pHandle = 0x7f45426ef040


bbdev_init:
Socket ID: 0
FEC is accelerated through BBDEV: 0000:40:00.0
wls_layer_init[wls0] nWlsMemorySize[1063256064]
wls_lib: Open wls0 (DPDK memzone)
wls_lib: WLS_Open 0x4bf600000
wls_lib: link: 0 <-> 1
wls_lib: Mode 0
wls_lib: WLS shared management memzone: wls0
wls_lib: hugePageSize on the system is 1073741824
wls_lib: WLS_Alloc [1063256064] bytes


===========================================================================================================
PHY VERSION
===========================================================================================================
Version: null
IMG-date: Jul  1 2021
IMG-time: 19:40:45
===========================================================================================================
DEPENDENCIES VERSIONS
===========================================================================================================
FlexRAN BBU pooling version 20.11
FlexRAN SDK bblib_layerdemapping_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_layermapping_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_cestimate_5gnr_version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_cestimate_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_llr_demapping version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pdcch_remapping_5gnr_version version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_reed_muller version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_lte_modulation version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_decoder_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_rate_dematching_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_PhaseNoise_5G version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_mimo_mmse_detection_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_fd_correlation version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_scramble_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_equ_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_ta_compensation_version_5gnr jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_polar_encoder_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_prach_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_fft_ifft version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_pucch_5gnr version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_lte_crc version jenkins-FlexRAN-SDK-REL-291-g9f315235
FlexRAN SDK bblib_common version jenkins-FlexRAN-SDK-REL-291-g9f315235
===========================================================================================================

===========================================================================================================
Non BBU threads in application
===========================================================================================================
nr5g_gnb_phy2mac_api_proc_stats_thread: [PID:  97370] binding on [CPU  1] [PRIO:  0] [POLICY:  1]
wls_rx_handler (non-rt):                [PID:  97821] binding on [CPU  1]
===========================================================================================================

PHY>welcome to application console

allcellup
All Cell up!
PHY>Received MSG_TYPE_PHY_CONFIG_REQ: 0
Processing MSG_TYPE_PHY_CONFIG_REQ: 0
phy_bbupool_set_config: Using cores: 0x00000000000000f0 for BBU Pool nBbuPoolSleepEnable: 1
BBU Pooling: queueId = 0, the according nCoreNum = 4, the according cpuSetMask = 0xf0
BBU Pooling: gCoreIdxMap[0] = 4 is available!
BBU Pooling: gCoreIdxMap[1] = 5 is available!
BBU Pooling: gCoreIdxMap[2] = 6 is available!
BBU Pooling: gCoreIdxMap[3] = 7 is available!
BBU Pooling: taskId =  0 taskName =     DL_L1_CONFIG is registered
BBU Pooling: taskId =  1 taskName =   DL_L1_PDSCH_TB is registered
BBU Pooling: taskId =  2 taskName = DL_L1_PDSCH_SCRAMBLER is registered
BBU Pooling: taskId =  3 taskName = DL_L1_PDSCH_SYMBOL_TX is registered
BBU Pooling: taskId =  4 taskName = DL_L1_PDSCH_RS_GEN is registered
BBU Pooling: taskId =  5 taskName = DL_L1_CONTROL_CHANNELS is registered
BBU Pooling: taskId =  6 taskName =     UL_L1_CONFIG is registered
BBU Pooling: taskId =  7 taskName = UL_L1_PUSCH_DECOMP0 is registered
BBU Pooling: taskId =  8 taskName = UL_L1_PUSCH_DECOMP7 is registered
BBU Pooling: taskId =  9 taskName =  UL_L1_PUSCH_CE0 is registered
BBU Pooling: taskId = 10 taskName =  UL_L1_PUSCH_CE7 is registered
BBU Pooling: taskId = 11 taskName = UL_L1_PUSCH_MMSE0_PRE is registered
BBU Pooling: taskId = 12 taskName = UL_L1_PUSCH_MMSE7_PRE is registered
BBU Pooling: taskId = 13 taskName = UL_L1_PUSCH_MMSE0 is registered
BBU Pooling: taskId = 14 taskName = UL_L1_PUSCH_MMSE7 is registered
BBU Pooling: taskId = 15 taskName =  UL_L1_PUSCH_LLR is registered
BBU Pooling: taskId = 16 taskName = UL_L1_PUSCH_DECODE is registered
BBU Pooling: taskId = 17 taskName =   UL_L1_PUSCH_TB is registered
BBU Pooling: taskId = 18 taskName =      UL_L1_PUCCH is registered
BBU Pooling: taskId = 19 taskName =      UL_L1_PRACH is registered
BBU Pooling: taskId = 20 taskName =        UL_L1_SRS is registered
BBU Pooling: taskId = 21 taskName =       DL_L1_POST is registered
BBU Pooling: taskId = 22 taskName =       UL_L1_POST is registered
BBU Pooling: next taskList of     DL_L1_CONFIG:    DL_L1_PDSCH_TB    DL_L1_PDSCH_RS_GEN    DL_L1_CONTROL_CHANNELS  
BBU Pooling: next taskList of   DL_L1_PDSCH_TB:               N/A

BBU Pooling: next taskList of DL_L1_PDSCH_SCRAMBLER:  DL_L1_PDSCH_SYMBOL_TX  
BBU Pooling: next taskList of DL_L1_PDSCH_SYMBOL_TX:        DL_L1_POST  
BBU Pooling: next taskList of DL_L1_PDSCH_RS_GEN:  DL_L1_PDSCH_SYMBOL_TX  
BBU Pooling: next taskList of DL_L1_CONTROL_CHANNELS:        DL_L1_POST  
BBU Pooling: next taskList of     UL_L1_CONFIG:        UL_L1_POST  
BBU Pooling: next taskList of UL_L1_PUSCH_DECOMP0:   UL_L1_PUSCH_CE0     UL_L1_PUSCH_CE7  
BBU Pooling: next taskList of UL_L1_PUSCH_DECOMP7:   UL_L1_PUSCH_CE7  
BBU Pooling: next taskList of  UL_L1_PUSCH_CE0:  UL_L1_PUSCH_MMSE0    UL_L1_PUSCH_MMSE7  
BBU Pooling: next taskList of  UL_L1_PUSCH_CE7:  UL_L1_PUSCH_MMSE7  
BBU Pooling: next taskList of UL_L1_PUSCH_MMSE0_PRE:  UL_L1_PUSCH_MMSE0    UL_L1_PUSCH_MMSE7  
BBU Pooling: next taskList of UL_L1_PUSCH_MMSE7_PRE:  UL_L1_PUSCH_MMSE7  
BBU Pooling: next taskList of UL_L1_PUSCH_MMSE0:   UL_L1_PUSCH_LLR  
BBU Pooling: next taskList of UL_L1_PUSCH_MMSE7:   UL_L1_PUSCH_LLR  
BBU Pooling: next taskList of  UL_L1_PUSCH_LLR:  UL_L1_PUSCH_DECODE  
BBU Pooling: next taskList of UL_L1_PUSCH_DECODE:               N/A

BBU Pooling: next taskList of   UL_L1_PUSCH_TB:        UL_L1_POST  
BBU Pooling: next taskList of      UL_L1_PUCCH:        UL_L1_POST  
BBU Pooling: next taskList of      UL_L1_PRACH:        UL_L1_POST  
BBU Pooling: next taskList of        UL_L1_SRS:        UL_L1_POST  
BBU Pooling: next taskList of       DL_L1_POST:               N/A

BBU Pooling: next taskList of       UL_L1_POST:               N/A

enter RtThread Launch
Allocated gpThreadWorker[coreIdx: 0][CoreNum: 4]: [0x7f4534000b70]
Allocated gpThreadWorker[coreIdx: 1][CoreNum: 5]: [0x7f4534000e20]
bbupool_core_main: the server's coreNum = 40, the nCore = 4,nRtCoreMask = 0xf0, the nFeIfCore = 0,nFeIfCoreMask = 0x0
bbupool_core_main pthread_setaffinity_np succeed: coreId = 1, result = 0
Allocated gpThreadWorker[coreIdx: 2][CoreNum: 6]: [0x7f45340010d0]
Allocated gpThreadWorker[coreIdx: 3][CoreNum: 7]: [0x7f4534001380]
4 thread associated with queue 0:coreIdx 0 1 2 3 
Leave RtThread Launch
launching Thread 1 Queue 0 uCoreIdx 1 CoreId 5 Priority 94 Policy 1 nRtCoreSleep 1 nFriendCnt 0 nCurrentSfIdx -1

launching Thread 2 Queue 0 uCoreIdx 2 CoreId 6 Priority 94 Policy 1 nRtCoreSleep 1 nFriendCnt 0 nCurrentSfIdx -1

launching Thread 0 Queue 0 uCoreIdx 0 CoreId 4 Priority 94 Policy 1 nRtCoreSleep 1 nFriendCnt 0 nCurrentSfIdx -1

launching Thread 3 Queue 0 uCoreIdx 3 CoreId 7 Priority 94 Policy 1 nRtCoreSleep 1 nFriendCnt 0 nCurrentSfIdx -1

nr5g_gnb_mac2phy_api_proc_print_phy_init [0]:
    nCarrierIdx: 0
    nDMRSTypeAPos: 2
    nPhyCellId: 11
    nDLAbsFrePointA: 4800720
    nULAbsFrePointA: 4800720
    nDLCompressionIdx: 0
    nDLCompiqWidth: 0
    nDLCompScaleFactor: 0
    nDLCompreMask: 0
    nULDecompressionIdx: 0
    nULDecompiqWidth: 0
    nDLBandwidth: 100
    nULBandwidth: 100
    nDLFftSize: 4096
    nULFftSize: 4096
    nSSBPwr: 0
    nSSBAbsFre: 4804320
    nSSBPeriod: 2
    nSSBSubcSpacing: 2
    nSSBSubcOffset: 0
    nSSBPrbOffset: 0
    nMIB[0]: 1
    nMIB[1]: 4
    nMIB[2]: 4
    nDLK0: 1
    nULK0: 1
    nSSBMask[0]: 1
    nSSBMask[1]: 0
    nNrOfTxAnt: 4
    nNrOfRxAnt: 4
    nNrOfDLPorts: 4
    nNrOfULPorts: 4
    nCarrierAggregationLevel: 0
    nFrameDuplexType: 1
    nSubcCommon: 1
    nTddPeriod: 10 (TDD)
    SlotConfig:
        Slot Sym 0 Sym 1 Sym 2 Sym 3 Sym 4 Sym 5 Sym 6 Sym 7 Sym 8 Sym 9 Sym10 Sym11 Sym12 Sym13 
           0   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           1   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           2   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           3   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    GD    GD  
           4   UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL  
           5   UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL    UL  
           6   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           7   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           8   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  
           9   DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL    DL  

    nPrachConfIdx: 158
    nPrachSubcSpacing: 1
    nPrachZeroCorrConf: 6
    nPrachRestrictSet: 0
    nPrachRootSeqIdx: 0
    nPrachFreqStart: 0
    nPrachFdm: 1
    nPrachSsbRach: 3
    nPrachNrofRxRU: 4
    nCyclicPrefix: 0
    nGroupHopFlag: 0
    nSequenceHopFlag: 0
    nHoppingId: 11
    nUrllcCapable: 0
    nUrllcMiniSlotMask: 0 (0x00000000)
read_table: File table/common/pss_table.bin of size 381 read_size: 381
read_table: File table/common/sss_table.bin of size 128016 read_size: 128016
read_table: File table/common/srs_zc_36_plus.bin of size 905916 read_size: 905916
read_table: File table/common/pucch_zc_36_plus.bin of size 383040 read_size: 383040
read_table: File table/common/srs_wiener_sinc_comb2.bin of size 81216 read_size: 81216
read_table: File table/common/srs_wiener_sinc_comb4.bin of size 81216 read_size: 81216
BBU Pooling Info: maximum period length was configured, preMaxSF = 20480, postMasSF = 20480 
set_slot_type SlotPattern:
    Slot:       0    1    2    3    4    5    6    7    8    9
        0      DL   DL   DL   SP   UL   UL   DL   DL   DL   DL

PHYDI-INIT[from 1] PhyInstance: 0

---------------------------------------------------------
Global Variables:
---------------------------------------------------------
gCarrierAggLevel:                    0
gCarrierAggLevelInit:                1
gSupportedAVX2                       1
---------------------------------------------------------

Received MSG_TYPE_PHY_START_REQ: 0
Processing MSG_TYPE_PHY_START_REQ: 0
di_open port 0

xran_init_vfs_mapping: p 0 vf 0
XRAN_UP_VF: 0x0000
xran_timing_source_thread [CPU  8] [PID:  97317]
TTI interval 500 [us]
Start C-plane DL 30 us after TTI  [trigger on sym 1]
Start C-plane UL 71 us after TTI  [trigger on sym 2]
Start U-plane DL 196 us before OTA [offset  in sym -5]
Start U-plane UL 75 us OTA        [offset  in sym 3]
C-plane to U-plane delay 166 us after TTI
Start Sym timer 71428 ns
O-XU      0
HW        0
Num cores 2
Num ports 1
O-RU Cat  0
O-RU CC   1
O-RU eAxC 4
p:0 XRAN_JOB_TYPE_CP_DL worker id 1
p:0 XRAN_JOB_TYPE_CP_UL worker id 1
xran_generic_worker_thread [CPU  9] [PID:  97317]
spawn worker 0 core 9
xran_open [CPU  1] [PID:  97317]
Waithing on Timing thread...
----------------------------------------------------------------------------
mem_mgr_display_size:
    Num Memory Alloc:            5,004
    Total Memory Size:   4,254,824,002
----------------------------------------------------------------------------


PHYDI-START[from 1] PhyInstance: 0, Mode: 4, Count: 4294967295, Period: 0, NumSlotPerSfn: 20
nr5g_gnb_urllc_register_call_backs: nTimerMode[0] nUrllcMiniSlotMask[0]
port [0] gnb_io_xran_start: gGnbIoXranStarted[0] CC 1 Ant 4 AntElm 0  [Cell: nNrOfDLPorts 4 nNrOfULPorts 4]
port 0 has 1 CCs
port 0 cc_id 0 is phy id 0
XRAN front haul xran_mm_init 
xran_sector_get_instances [0]: CC 0 handle 0x7f4535220080
Handle: 0x113cae60 Instance: 0x7f4535220080
gnb_io_xran_start [0]: CC 0 handle 0x7f4535220080
Sucess xran_mm_init Instance 0x7f4535220080
nSectorNum 1
ru_0_cc_0_idx_0: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 0] nNumberOfBuffers 1120 nBufferSize 17008
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 0] mb pool 0x4c0d56e80 
ru_0_cc_0_idx_1: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 1] nNumberOfBuffers 26880 nBufferSize 32
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 1] mb pool 0x4c0bd0b00 
ru_0_cc_0_idx_2: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 2] nNumberOfBuffers 1120 nBufferSize 7408
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 2] mb pool 0x4c0a0e780 
ru_0_cc_0_idx_3: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 3] nNumberOfBuffers 1120 nBufferSize 17008
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 3] mb pool 0x4bfffac40 
ru_0_cc_0_idx_4: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 4] nNumberOfBuffers 26880 nBufferSize 32
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 4] mb pool 0x4bfe748c0 
ru_0_cc_0_idx_5: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 5] nNumberOfBuffers 1120 nBufferSize 7408
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 5] mb pool 0x47bb53e80 
ru_0_cc_0_idx_6: [ handle 0x7f4535220080 0 0 ] [nPoolIndex 6] nNumberOfBuffers 1120 nBufferSize 8192
CC:[ handle 0x7f4535220080 ru 0 cc_idx 0 ] [nPoolIndex 6] mb pool 0x47b144540 
port [0] gnb_io_xran_init_cp
port [0] init xran successfully
O-DU: XRAN start time: 08/20/21 08:18:47.403873113 UTC [500]
O-DU: thread_run start time: 08/20/21 08:18:48.000000019 UTC [500]
BBU Pooling Info: bbupool rt thread start on CoreIdx 1 coreId 5 at 20542192915590536 at sf=0 with queue 0 successfully
BBU Pooling: enter multicell Activate!
BBU Pooling: active result: Q_id = 0,currenSf = 0, curCellNum = 0, activesfn = 4, CellNumInActSfn = 1
BBU Pooling: multiCell Activate sucessfully!
BBU Pooling Info: bbupool rt thread start on CoreIdx 2 coreId 6 at 20542192915611538 at sf=0 with queue 0 successfully
BBU Pooling Info: bbupool rt thread start on CoreIdx 3 coreId 7 at 20542192915607818 at sf=0 with queue 0 successfully
BBU Pooling Info: bbupool rt thread start on CoreIdx 0 coreId 4 at 20542192915609748 at sf=0 with queue 0 successfully
phy_bbupool_rx_handler: PhyId[0] nSfIdx[4] frame,slot[0,5] gNumSlotPerSfn[20]
==== l1app Time: 5002 ms NumCarrier: 1 NumBbuCores: 4. Tti2Tti Time: [489.00..500.00..507.00] usces
-------------------------------------------------------------------------------------------------------------------------------------------------------
    Latency (usecs)             Min       Avg       Max
    DL_LINK                  278.00    308.18    378.00
    UL_LINK                    0.00      0.00      0.00
    SRS_LINK                   0.00      0.00      0.00
==== [o-du0][rx 0 pps 0 kbps 1176985][tx 490251 pps 98050 kbps 5406969] [on_time 0 early 0 late 0 corrupt 0 pkt_dupl 0 Total 0]
     Pusch[   56030    56029        0        0        0        0        0        0] SRS[       0]
-------------------------------------------------------------------------------------------------------------------------------------------------------
      Cell up/down          DL Tput           UL Tput         UL BLER         SRS SNR
      0    up     (Kbps)         44          0 /         0      0.00%         0 Db
-------------------------------------------------------------------------------------------------------------------------------------------------------
Core Utilization [4 BBU core(s)]:
     Core Id:   4   5   6   7   Avg
     Util %:   15  14  15  10 13.50
     Xran Id:   8   9     Master Core Util:  47 %
-------------------------------------------------------------------------------------------------------------------------------------------------------
==== l1app Time: 10002 ms NumCarrier: 1 NumBbuCores: 4. Tti2Tti Time: [490.00..500.00..506.00] usces
-------------------------------------------------------------------------------------------------------------------------------------------------------
    Latency (usecs)             Min       Avg       Max
    DL_LINK                  283.00    306.55    355.00
    UL_LINK                    0.00      0.00      0.00
    SRS_LINK                   0.00      0.00      0.00
==== [o-du0][rx 0 pps 0 kbps 1176985][tx 980247 pps 97999 kbps 5406969] [on_time 0 early 0 late 0 corrupt 0 pkt_dupl 0 Total 0]
     Pusch[   55979    55979        0        0        0        0        0        0] SRS[       0]
-------------------------------------------------------------------------------------------------------------------------------------------------------
      Cell up/down          DL Tput           UL Tput         UL BLER         SRS SNR
      0    up     (Kbps)         44          0 /         0      0.00%         0 Db
-------------------------------------------------------------------------------------------------------------------------------------------------------
Core Utilization [4 BBU core(s)]:
     Core Id:   4   5   6   7   Avg
     Util %:   13  15  14  13 13.75
     Xran Id:   8   9     Master Core Util:  50 %
-------------------------------------------------------------------------------------------------------------------------------------------------------
MSG_TYPE_PHY_SLOT_IND  SFN = 0  CNT = 20476  418014112.000000(us)
==== l1app Time: 15002 ms NumCarrier: 1 NumBbuCores: 4. Tti2Tti Time: [492.00..500.00..506.00] usces
-------------------------------------------------------------------------------------------------------------------------------------------------------
    Latency (usecs)             Min       Avg       Max
    DL_LINK                  287.00    311.20    352.00
    UL_LINK                    0.00      0.00      0.00
    SRS_LINK                   0.00      0.00      0.00
==== [o-du0][rx 0 pps 0 kbps 1176985][tx 1470239 pps 97998 kbps 5406969] [on_time 0 early 0 late 0 corrupt 0 pkt_dupl 0 Total 0]
     Pusch[   55991    55992        0        0        0        0        0        0] SRS[       0]
-------------------------------------------------------------------------------------------------------------------------------------------------------
      Cell up/down          DL Tput           UL Tput         UL BLER         SRS SNR
      0    up     (Kbps)         44          0 /         0      0.00%         0 Db
-------------------------------------------------------------------------------------------------------------------------------------------------------
Core Utilization [4 BBU core(s)]:
     Core Id:   4   5   6   7   Avg
     Util %:   17  14  12  11 13.50
     Xran Id:   8   9     Master Core Util:  50 %
-------------------------------------------------------------------------------------------------------------------------------------------------------
==== l1app Time: 20002 ms NumCarrier: 1 NumBbuCores: 4. Tti2Tti Time: [491.00..500.00..506.00] usces
-------------------------------------------------------------------------------------------------------------------------------------------------------
    Latency (usecs)             Min       Avg       Max
    DL_LINK                  282.00    310.82    348.00
    UL_LINK                    0.00      0.00      0.00
    SRS_LINK                   0.00      0.00      0.00
==== [o-du0][rx 0 pps 0 kbps 1176985][tx 1960239 pps 98000 kbps 5406969] [on_time 0 early 0 late 0 corrupt 0 pkt_dupl 0 Total 0]
     Pusch[   56000    56000        0        0        0        0        0        0] SRS[       0]
-------------------------------------------------------------------------------------------------------------------------------------------------------
      Cell up/down          DL Tput           UL Tput         UL BLER         SRS SNR
      0    up     (Kbps)         44          0 /         0      0.00%         0 Db
-------------------------------------------------------------------------------------------------------------------------------------------------------
Core Utilization [4 BBU core(s)]:
     Core Id:   4   5   6   7   Avg
     Util %:   15  13  15  13 14.00
     Xran Id:   8   9     Master Core Util:  50 %
-------------------------------------------------------------------------------------------------------------------------------------------------------
==== l1app Time: 25002 ms NumCarrier: 1 NumBbuCores: 4. Tti2Tti Time: [491.00..500.00..506.00] usces
-------------------------------------------------------------------------------------------------------------------------------------------------------
    Latency (usecs)             Min       Avg       Max
    DL_LINK                  279.00    311.33    355.00
    UL_LINK                    0.00      0.00      0.00
    SRS_LINK                   0.00      0.00      0.00
==== [o-du0][rx 0 pps 0 kbps 1176985][tx 2450239 pps 98000 kbps 5406969] [on_time 0 early 0 late 0 corrupt 0 pkt_dupl 0 Total 0]
     Pusch[   56000    56000        0        0        0        0        0        0] SRS[       0]
-------------------------------------------------------------------------------------------------------------------------------------------------------
      Cell up/down          DL Tput           UL Tput         UL BLER         SRS SNR
      0    up     (Kbps)         44          0 /         0      0.00%         0 Db
-------------------------------------------------------------------------------------------------------------------------------------------------------
Received MSG_TYPE_PHY_STOP_REQ: 0
nr5g_gnb_mac2phy_api_error_check_use_empty_channels: 0 1  (sfn: 864 15) successiveNoApi: 1
Stopping because: PHY_STATE_FORCE_STOP. gStop = 0
phydi_shutdown[from 8]: phyInstance: -1, sendStop: 0, testFileName: 0, phyIdStart: 0, phyIdStop: 1
    PHY_SHUTDOWN PhyInstance[0] PhyState[1] PhyStateCount[1]
phydi_stop[from 8]: phyInstance: 0, sendStop: 0, phyIdStart: 0, phyIdStop: 1
MLogPrint: ext_filename((null).bin)
    Opening MLog File: l1mlog-c0.bin
    MLog file l1mlog-c0.bin closed
    Mlog Print successful

fh_rx_bbdev-9 worker thread finished on core 9 [worker id 0]
    PHY_STOP PhyInstance[0] PhyState[1] PhyStartMode[4] PhyStateCount[1]

BBU Pooling: enter multicell deactivate!
BBU Pooling:deactive result: Q_Id = 0,currenSf = 17293, curCellNum = 1, deactivesfn = 17298, CellNumInDeactSfn = 0
BBU Pooling: multicell deactivate sucessfully!
----------------------------------------------------------------------------
mem_mgr_display_size:
    Num Memory Alloc:                0
    Total Memory Size:               0
----------------------------------------------------------------------------


Closing timing source thread...
Cleanup after [PID] 97264
```
* CU
```
====== Start Time ======
2021-08-20-16:10:04-CST
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet 168.168.31.102/16 brd 168.168.255.255 scope global lo:DU
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp61s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 64:4c:36:12:46:a0 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::664c:36ff:fe12:46a0/64 scope link 
       valid_lft forever preferred_lft forever
3: enp61s0f1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a1 brd ff:ff:ff:ff:ff:ff
4: enp63s0f0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a4 brd ff:ff:ff:ff:ff:ff
5: enp63s0f1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a5 brd ff:ff:ff:ff:ff:ff
6: enp97s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 28:c1:3c:95:6f:c0 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::2ac1:3cff:fe95:6fc0/64 scope link 
       valid_lft forever preferred_lft forever
7: enp97s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 28:c1:3c:95:6f:c1 brd ff:ff:ff:ff:ff:ff
    inet 168.168.31.101/16 brd 168.168.255.255 scope global enp97s0f1:CULow
       valid_lft forever preferred_lft forever
8: enp97s0f2: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 28:c1:3c:95:6f:c2 brd ff:ff:ff:ff:ff:ff
    inet 192.168.82.111/24 brd 192.168.82.255 scope global enp97s0f2
       valid_lft forever preferred_lft forever
9: enp97s0f3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 28:c1:3c:95:6f:c3 brd ff:ff:ff:ff:ff:ff
    inet 10.60.7.56/23 brd 10.60.7.255 scope global dynamic enp97s0f3
       valid_lft 2143sec preferred_lft 2143sec
    inet6 fe80::2ac1:3cff:fe95:6fc3/64 scope link 
       valid_lft forever preferred_lft forever
10: enp134s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1600 qdisc mq state UP group default qlen 1000
    link/ether 40:a6:b7:3c:52:6c brd ff:ff:ff:ff:ff:ff
    inet 192.168.120.25/24 brd 192.168.120.255 scope global enp134s0f0:NgC
       valid_lft forever preferred_lft forever
    inet 5.5.5.13/8 brd 5.255.255.255 scope global enp134s0f0:NgU
       valid_lft forever preferred_lft forever
    inet6 fe80::42a6:b7ff:fe3c:526c/64 scope link 
       valid_lft forever preferred_lft forever
11: enp134s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 40:a6:b7:3c:52:6d brd ff:ff:ff:ff:ff:ff
    inet 192.168.19.49/24 brd 192.168.19.255 scope global enp134s0f1
       valid_lft forever preferred_lft forever
    inet6 fe80::42a6:b7ff:fe3c:526d/64 scope link 
       valid_lft forever preferred_lft forever
215: enp97s2f2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 82:5c:29:0d:11:9e brd ff:ff:ff:ff:ff:ff
    inet6 fe80::805c:29ff:fe0d:119e/64 scope link 
       valid_lft forever preferred_lft forever
====== Start to initiate CU ======
kill: usage: kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [sigspec]
rm -rf \
	*.o *.a *.xso *.fxs *.xsd *.ccl \
	*_proto.h \
	./confd-cdb *.db aaa_cdb.* \
	rollback*/rollback{0..999} rollback{0..999} \
	cli-history \
	host.key host.cert ssh-keydir \
	*.log confderr.log.* \
	etc *.access \
	running.invalid global.data _tmp* local.data
rm ../../yang/*.fxs
rm: cannot remove ‘../../yang/*.fxs’: No such file or directory
make: [clean] Error 1 (ignored)
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_managed_function.fxs  ../../yang/_3gpp_common_managed_function.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_measurements.fxs  ../../yang/_3gpp_common_measurements.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_fm.fxs  ../../yang/_3gpp_common_fm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_tm.fxs  ../../yang/_3gpp_common_tm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_log_vs_config.fxs  ../../yang/gnb_log_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_egtp_vs_config.fxs  ../../yang/gnb_egtp_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_ngc_vs_config.fxs  ../../yang/gnb_ngc_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_sctp_vs_config.fxs  ../../yang/gnb_sctp_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_vs_config.fxs  ../../yang/gnb_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_managed_element.fxs  ../../yang/_3gpp_common_managed_element.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_vs_data_container.fxs  ../../yang/_3gpp_common_vs_data_container.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_nrm_types.fxs  ../../yang/_3gpp_common_nrm_types.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_nr_nrm.fxs  ../../yang/_3gpp_nr_nrm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_cu_vs_config.fxs  ../../yang/gnb_cu_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_ep_rp.fxs  ../../yang/_3gpp_common_ep_rp.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/_3gpp_common_top.fxs  ../../yang/_3gpp_common_top.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_cell_cu_vs_config.fxs  ../../yang/gnb_cell_cu_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_cu_vs_alarms.fxs  ../../yang/gnb_cu_vs_alarms.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang -F gnb_cell_cu_meas_vs_config:ARCHITECTURE_CONFIG_OPTION_SA,ARCHITECTURE_CONFIG_OPTION_NSA -c -o ../../yang/gnb_cu_vs_features.fxs  ../../yang/gnb_cu_vs_features.yang
mkdir -p ./confd-cdb
cp /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/var/confd/cdb/aaa_init.xml ./confd-cdb
ln -s /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd/ssh ssh-keydir
FXS build complete
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confd -c ../config/confd.conf --addloadpath /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd
+ netconf-console --host=127.0.0.1 --port=2101 /opt/faca/FlexXCU/q1_cu_bin/bin/../config/bbu_cu.xml
<?xml version="1.0" encoding="UTF-8"?>
<rpc-reply xmlns="urn:ietf:params:xml:ns:netconf:base:1.0" message-id="1">
  <ok/>
</rpc-reply>
+ cd -
/opt/faca/FlexXCU/q1_cu_bin/bin
====== Start to active CU ======
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:2101            0.0.0.0:*               LISTEN      93235/confd         
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      2104/sshd           
tcp        0      0 0.0.0.0:11001           0.0.0.0:*               LISTEN      93235/confd         
tcp        0      0 10.60.7.56:22           10.60.6.200:50557       ESTABLISHED 52105/sshd: root@pt 
tcp        0      0 10.60.7.56:22           10.60.6.200:57350       ESTABLISHED 79386/sshd: root@pt 
tcp        0      0 10.60.7.56:22           10.60.6.200:58846       ESTABLISHED 79553/sshd: root@no 
tcp        0      0 10.60.7.56:22           172.18.228.30:63005     ESTABLISHED 53944/sshd: root@no 
tcp        0      0 127.0.0.1:43982         127.0.0.1:2101          TIME_WAIT   -                   
tcp        0     96 10.60.7.56:22           10.60.6.200:56885       ESTABLISHED 5438/sshd: root@pts 
tcp        0      0 10.60.7.56:22           10.36.94.120:60546      ESTABLISHED 55030/sshd: root@pt 
tcp        0      0 10.60.7.56:22           10.60.6.200:52705       ESTABLISHED 5511/sshd: root@pts 
tcp        0      0 10.60.7.56:22           10.60.6.200:57034       ESTABLISHED 4424/sshd: root@pts 
tcp        0      0 10.60.7.56:22           10.60.6.233:51418       ESTABLISHED 42649/sshd: root@pt 
tcp        0      0 10.60.7.56:22           172.18.228.30:62821     ESTABLISHED 53920/sshd: root@pt 
tcp        0      0 10.60.7.56:22           10.60.6.233:55897       ESTABLISHED 42675/sshd: root@no 
tcp6       0      0 :::22                   :::*                    LISTEN      2104/sshd           
/opt/faca/FlexXCU/q1_cu_bin/bin
===================== start CU =====================
INFO: 2021/08/20 16:10:13 log.go:32: license center in normal mode
INFO: 2021/08/20 16:10:13 log.go:32: checking license...
l6Tm5whDX0kCCLVwbrn5P+BLKbbQy1QMvDlYSAHETte0UYBSlY7U6qQnfkwEnl0f8XGs/xm4gbuzzQyEv+e5Ih8HRb8+HHAFpqrb3FPl+myg9wu3wgxWsBcACO/ZE38iVmyEn56qeyc6fcdzqtMa4JyABAunkWjOpyhPRGno6l1kQ39z7Kg5guCXQaAJ+2SkQxMR4Uzy75abRhzo1rhXIz1LS2S2qJ0wZ5N2s0grh8qYouNuzOElOLlyP7llUSBzUq8MAzzBxeiWPOQYUGdQg721QZn3qLr8VDlhuv7+7ybzuwa6Prly3Jm1azkfi6kswG44cbiUgQH7TyNv8RiODg==INFO: 2021/08/20 16:10:13 main.go:176: This is a linux based OS
INFO: 2021/08/20 16:10:13 log.go:32: Lzf0148MIK_4VTBhwT1f7YQY2fMoR2UOvPMZfWchhbw=
INFO: 2021/08/20 16:10:13 main.go:113: number of maxium node:3
INFO: 2021/08/20 16:10:13 main.go:119: license actication date:20210818
INFO: 2021/08/20 16:10:13 main.go:126: license expiration date:20220818
INFO: 2021/08/20 16:10:13 log.go:32: license check passed
Calling rte_eal_init 
 fast_pkt_app -c 10000 -m 2048 -n 1 --file-prefix=mem_config --proc-type=auto -w0000:b1:01.1 -w0000:b1:01.2
EAL: Detected 40 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Auto-detected process type: PRIMARY
EAL: Multi-process socket /var/run/dpdk/mem_config/mp_socket
EAL: Selected IOVA mode 'PA'
EAL: Probing VFIO support...
EAL:   Invalid NUMA socket, default to 0
EAL: Probe PCI driver: qat (8086:37c9) device: 0000:b1:01.1 (socket 0)
CRYPTODEV: Creating cryptodev 0000:b1:01.1_qat_sym

CRYPTODEV: Initialisation parameters - name: 0000:b1:01.1_qat_sym,socket id: 0, max queue pairs: 0
EAL:   Invalid NUMA socket, default to 0
EAL: Probe PCI driver: qat (8086:37c9) device: 0000:b1:01.2 (socket 0)
CRYPTODEV: Creating cryptodev 0000:b1:01.2_qat_sym

CRYPTODEV: Initialisation parameters - name: 0000:b1:01.2_qat_sym,socket id: 0, max queue pairs: 0
EAL: No legacy callbacks, legacy socket not created
EXIT_FAILURE, No Ethernet ports& n CRYPTODEV: elt_size 0 is expanded to 32

[20/08/2021 16:10:15.761295][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:199]SUCCESSFULLY CONFIGURED CRYPTO-DEV 0 
[20/08/2021 16:10:15.782078][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:218]SUCCESSFULLY SETUP QUEUE-PAIR 0 ON CRYTPO-DEV 0 
[20/08/2021 16:10:15.782822][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:218]SUCCESSFULLY SETUP QUEUE-PAIR 1 ON CRYTPO-DEV 0 
[20/08/2021 16:10:15.782835][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:227]STARTED CRYPTO DEVICE 0 
[20/08/2021 16:10:15.782844][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:199]SUCCESSFULLY CONFIGURED CRYPTO-DEV 1 
[20/08/2021 16:10:15.803596][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:218]SUCCESSFULLY SETUP QUEUE-PAIR 0 ON CRYTPO-DEV 1 
[20/08/2021 16:10:15.803609][FAST_CRYPTO][TRC][ngp_fast_crypto.cpp:227]STARTED CRYPTO DEVICE 1 
[20/08/2021 16:10:15.803928][MEM][TRC][ngp_data_pool.h:922]Mem config parsed 
[20/08/2021 16:10:20.733013][MEM][TRC][ngp_mem_config_parser.h:324]Mem config parsed 

Total size = 1009920000, Pool start = 0x7f5215f9c010
      Size 0: Offset = 0, Size start = 0x7f5215f9c010, Size end = 0x7f52171eb810
      Size 1: Offset = 19200000, Size start = 0x7f52171eb810, Size end = 0x7f522ae15010
      Size 2: Offset = 350720000, Size start = 0x7f522ae15010, Size end = 0x7f52522be810

Total size = 1009920000, Pool start = 0x7f51d8476010
      Size 0: Offset = 0, Size start = 0x7f51d8476010, Size end = 0x7f51d96c5810
      Size 1: Offset = 19200000, Size start = 0x7f51d96c5810, Size end = 0x7f51ed2ef010
      Size 2: Offset = 350720000, Size start = 0x7f51ed2ef010, Size end = 0x7f5214798810
[20/08/2021 16:10:23.280270][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280364][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280449][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280513][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280583][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280642][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.280716][SCTP][TRC][ngp_sctp_epoll.h:345]Running SCTP server 
[20/08/2021 16:10:23.280751][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
on_init from App:
oam_capability_ind:
    me
        managed_element
        managed_by_list.count = 0
        managed_element_type_list_list.count = 0
        vs_data_container_list.count = 0
    gnbcu_function_list.count = 0
    pm_capability
    me_id = 0
    job_id = 0
    vendor_name = 
    user_label = 
    sw_version = 
    begin_date = 
    begin_time = 
    begin_date_time = 
    begin_date_ist = 
    begin_time_ist = 
    begin_date_time_ist = 
    end_date = 
    end_time = 
    end_date_time = 
    end_date_ist = 
    end_time_ist = 
    end_date_time_ist = 
    capability_per_category_list.count = 24
            capability_per_category
            m_category_id = 1
            m_category_name = RRC.ConnEstab
            counters_list.count = 44
                    counters
                    m_counter_id = 10001
                    m_counter_name = RRC.ConnEstabAtt.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 10002
                    m_counter_name = RRC.ConnEstabAtt.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 10003
                    m_counter_name = RRC.ConnEstabAtt.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10004
                    m_counter_name = RRC.ConnEstabAtt.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10005
                    m_counter_name = RRC.ConnEstabAtt.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 10006
                    m_counter_name = RRC.ConnEstabAtt.moData
                    counter_value = 0
                    counters
                    m_counter_id = 10007
                    m_counter_name = RRC.ConnEstabAtt.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 10008
                    m_counter_name = RRC.ConnEstabAtt.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 10009
                    m_counter_name = RRC.ConnEstabAtt.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 10010
                    m_counter_name = RRC.ConnEstabAtt.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10011
                    m_counter_name = RRC.ConnEstabAtt.mcsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10012
                    m_counter_name = gnb.RRC.ConnEstabSetup.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 10013
                    m_counter_name = gnb.RRC.ConnEstabSetup.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 10014
                    m_counter_name = gnb.RRC.ConnEstabSetup.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10015
                    m_counter_name = gnb.RRC.ConnEstabSetup.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10016
                    m_counter_name = gnb.RRC.ConnEstabSetup.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 10017
                    m_counter_name = gnb.RRC.ConnEstabSetup.moData
                    counter_value = 0
                    counters
                    m_counter_id = 10018
                    m_counter_name = gnb.RRC.ConnEstabSetup.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 10019
                    m_counter_name = gnb.RRC.ConnEstabSetup.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 10020
                    m_counter_name = gnb.RRC.ConnEstabSetup.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 10021
                    m_counter_name = gnb.RRC.ConnEstabSetup.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10022
                    m_counter_name = gnb.RRC.ConnEstabSetup.mcsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10023
                    m_counter_name = RRC.ConnEstabSucc.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 10024
                    m_counter_name = RRC.ConnEstabSucc.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 10025
                    m_counter_name = RRC.ConnEstabSucc.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10026
                    m_counter_name = RRC.ConnEstabSucc.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10027
                    m_counter_name = RRC.ConnEstabSucc.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 10028
                    m_counter_name = RRC.ConnEstabSucc.moData
                    counter_value = 0
                    counters
                    m_counter_id = 10029
                    m_counter_name = RRC.ConnEstabSucc.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 10030
                    m_counter_name = RRC.ConnEstabSucc.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 10031
                    m_counter_name = RRC.ConnEstabSucc.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 10032
                    m_counter_name = RRC.ConnEstabSucc.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10033
                    m_counter_name = RRC.ConnEstabSucc.mcsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10034
                    m_counter_name = gnb.RRC.ConnEstabReject.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 10035
                    m_counter_name = gnb.RRC.ConnEstabReject.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 10036
                    m_counter_name = gnb.RRC.ConnEstabReject.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10037
                    m_counter_name = gnb.RRC.ConnEstabReject.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10038
                    m_counter_name = gnb.RRC.ConnEstabReject.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 10039
                    m_counter_name = gnb.RRC.ConnEstabReject.moData
                    counter_value = 0
                    counters
                    m_counter_id = 10040
                    m_counter_name = gnb.RRC.ConnEstabReject.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 10041
                    m_counter_name = gnb.RRC.ConnEstabReject.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 10042
                    m_counter_name = gnb.RRC.ConnEstabReject.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 10043
                    m_counter_name = gnb.RRC.ConnEstabReject.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 10044
                    m_counter_name = gnb.RRC.ConnEstabReject.mcsPriorityAccess
                    counter_value = 0
            capability_per_category
            m_category_id = 2
            m_category_name = RRC.ConnReEstab
            counters_list.count = 16
                    counters
                    m_counter_id = 20001
                    m_counter_name = RRC.ConnReEstabAtt.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 20002
                    m_counter_name = RRC.ConnReEstabAtt.reconfigFail
                    counter_value = 0
                    counters
                    m_counter_id = 20003
                    m_counter_name = RRC.ConnReEstabAtt.HOFail
                    counter_value = 0
                    counters
                    m_counter_id = 20004
                    m_counter_name = RRC.ConnReEstabAtt.Other
                    counter_value = 0
                    counters
                    m_counter_id = 20005
                    m_counter_name = gnb.RRC.ConnReEstab.ReEstab.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 20006
                    m_counter_name = gnb.RRC.ConnReEstab.ReEstab.reconfigurationFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20007
                    m_counter_name = gnb.RRC.ConnReEstab.ReEstab.handoverFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20008
                    m_counter_name = gnb.RRC.ConnReEstab.ReEstab.otherFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20013
                    m_counter_name = RRC.ConnReEstabSuccWithUeContext.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 20014
                    m_counter_name = RRC.ConnReEstabSuccWithUeContext.reconfigurationFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20015
                    m_counter_name = RRC.ConnReEstabSuccWithUeContext.handoverFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20016
                    m_counter_name = RRC.ConnReEstabSuccWithUeContext.otherFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20017
                    m_counter_name = RRC.ConnReEstabSuccWithoutUeContext.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 20018
                    m_counter_name = RRC.ReEstabSuccWithoutUeContext.reconfigurationFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20019
                    m_counter_name = RRC.ReEstabSuccWithoutUeContext.handoverFailure
                    counter_value = 0
                    counters
                    m_counter_id = 20020
                    m_counter_name = RRC.ReEstabSuccWithoutUeContext.otherFailure
                    counter_value = 0
            capability_per_category
            m_category_id = 4
            m_category_name = RRC.ConnReconfig
            counters_list.count = 3
                    counters
                    m_counter_id = 40001
                    m_counter_name = gnb.RRC.ConnReConfigAtt
                    counter_value = 0
                    counters
                    m_counter_id = 40002
                    m_counter_name = gnb.RRC.ConnReConfigSucc
                    counter_value = 0
                    counters
                    m_counter_id = 40003
                    m_counter_name = gnb.RRC.ConnReConfigTimeOut
                    counter_value = 0
            capability_per_category
            m_category_id = 7
            m_category_name = RRC.ConnUser
            counters_list.count = 2
                    counters
                    m_counter_id = 70001
                    m_counter_name = RRC.Conn.Avg
                    counter_value = 0
                    counters
                    m_counter_id = 70002
                    m_counter_name = RRC.Conn.Max
                    counter_value = 0
            capability_per_category
            m_category_id = 9
            m_category_name = UECNTX.ConnEstab
            counters_list.count = 22
                    counters
                    m_counter_id = 90001
                    m_counter_name = UECNTX.ConnEstabAtt.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 90002
                    m_counter_name = UECNTX.ConnEstabAtt.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 90003
                    m_counter_name = UECNTX.ConnEstabAtt.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90004
                    m_counter_name = UECNTX.ConnEstabAtt.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90005
                    m_counter_name = UECNTX.ConnEstabAtt.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 90006
                    m_counter_name = UECNTX.ConnEstabAtt.moData
                    counter_value = 0
                    counters
                    m_counter_id = 90007
                    m_counter_name = UECNTX.ConnEstabAtt.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 90008
                    m_counter_name = UECNTX.ConnEstabAtt.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 90009
                    m_counter_name = UECNTX.ConnEstabAtt.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 90010
                    m_counter_name = UECNTX.ConnEstabAtt.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90011
                    m_counter_name = UECNTX.ConnEstabAtt.mcsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90012
                    m_counter_name = UECNTX.ConnEstabSucc.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 90013
                    m_counter_name = UECNTX.ConnEstabSucc.Emergency
                    counter_value = 0
                    counters
                    m_counter_id = 90014
                    m_counter_name = UECNTX.ConnEstabSucc.highPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90015
                    m_counter_name = UECNTX.ConnEstabSucc.mtAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90016
                    m_counter_name = UECNTX.ConnEstabSucc.moSig
                    counter_value = 0
                    counters
                    m_counter_id = 90017
                    m_counter_name = UECNTX.ConnEstabSucc.moData
                    counter_value = 0
                    counters
                    m_counter_id = 90018
                    m_counter_name = UECNTX.ConnEstabSucc.moVoCall
                    counter_value = 0
                    counters
                    m_counter_id = 90019
                    m_counter_name = UECNTX.ConnEstabSucc.moViCall
                    counter_value = 0
                    counters
                    m_counter_id = 90020
                    m_counter_name = UECNTX.ConnEstabSucc.moSMS
                    counter_value = 0
                    counters
                    m_counter_id = 90021
                    m_counter_name = UECNTX.ConnEstabSucc.mpsPriorityAccess
                    counter_value = 0
                    counters
                    m_counter_id = 90022
                    m_counter_name = UECNTX.ConnEstabSucc.mcsPriorityAccess
                    counter_value = 0
            capability_per_category
            m_category_id = 10
            m_category_name = UECNTX.Release
            counters_list.count = 10
                    counters
                    m_counter_id = 100001
                    m_counter_name = UECNTX.Release.gNBinit.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 100002
                    m_counter_name = UECNTX.Release.gNBinit.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 100003
                    m_counter_name = UECNTX.Release.gNBinit.TNLCause
                    counter_value = 0
                    counters
                    m_counter_id = 100004
                    m_counter_name = UECNTX.Release.gNBinit.Misc.unspecified
                    counter_value = 0
                    counters
                    m_counter_id = 100005
                    m_counter_name = gnb.UECNTX.Release.gNBinit.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 100006
                    m_counter_name = UECNTX.Release.5GCinit.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 100007
                    m_counter_name = UECNTX.Release.5GCinit.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 100008
                    m_counter_name = UECNTX.Release.5GCinit.TNLCause
                    counter_value = 0
                    counters
                    m_counter_id = 100009
                    m_counter_name = UECNTX.Release.5GCinit.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 100010
                    m_counter_name = UECNTX.Release.5GCinit.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 11
            m_category_name = SM.PDUSessionSetup
            counters_list.count = 7
                    counters
                    m_counter_id = 110001
                    m_counter_name = SM.PDUSessionSetupReq
                    counter_value = 0
                    counters
                    m_counter_id = 110002
                    m_counter_name = SM.PDUSessionSetupSucc
                    counter_value = 0
                    counters
                    m_counter_id = 110003
                    m_counter_name = SM.PDUSessionSetupFail.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 110004
                    m_counter_name = SM.PDUSessionSetupFail.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 110005
                    m_counter_name = SM.PDUSessionSetupFail.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 110006
                    m_counter_name = SM.PDUSessionSetupFail.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 110007
                    m_counter_name = SM.PDUSessionSetupFail.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 14
            m_category_name = QF.Estab
            counters_list.count = 26
                    counters
                    m_counter_id = 140001
                    m_counter_name = QF.EstabAttNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140002
                    m_counter_name = QF.EstabAttNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 140003
                    m_counter_name = QF.EstabAttNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 140004
                    m_counter_name = QF.EstabAttNbr.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 140005
                    m_counter_name = QF.EstabSuccNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140006
                    m_counter_name = QF.EstabSuccNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 140007
                    m_counter_name = QF.EstabSuccNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 140008
                    m_counter_name = QF.EstabSuccNbr.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 140009
                    m_counter_name = QF.EstabFailNbr.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140010
                    m_counter_name = QF.EstabFailNbr.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 140011
                    m_counter_name = QF.EstabFailNbr.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 140012
                    m_counter_name = QF.EstabFailNbr.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 140013
                    m_counter_name = QF.EstabFailNbr.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 140019
                    m_counter_name = QF.InitialEstabAttNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140020
                    m_counter_name = QF.InitialEstabAttNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 140021
                    m_counter_name = QF.InitialEstabAttNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 140022
                    m_counter_name = QF.InitialEstabAttNbr.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 140023
                    m_counter_name = QF.InitialEstabSuccNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140024
                    m_counter_name = QF.InitialEstabSuccNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 140025
                    m_counter_name = QF.InitialEstabSuccNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 140026
                    m_counter_name = QF.InitialEstabSuccNbr.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 140027
                    m_counter_name = QF.InitialEstabFailNbr.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 140028
                    m_counter_name = QF.InitialEstabFailNbr.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 140029
                    m_counter_name = QF.InitialEstabFailNbr.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 140030
                    m_counter_name = QF.InitialEstabFailNbr.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 140031
                    m_counter_name = QF.InitialEstabFailNbr.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 15
            m_category_name = QF.Mod
            counters_list.count = 13
                    counters
                    m_counter_id = 150001
                    m_counter_name = QF.ModNbrAtt.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 150002
                    m_counter_name = QF.ModNbrAtt.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 150003
                    m_counter_name = QF.ModNbrAtt.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 150004
                    m_counter_name = QF.ModNbrAtt.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 150005
                    m_counter_name = QF.ModNbrSucc.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 150006
                    m_counter_name = QF.ModNbrSucc.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 150007
                    m_counter_name = QF.ModNbrSucc.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 150008
                    m_counter_name = QF.ModNbrSucc.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 150009
                    m_counter_name = QF.ModNbrFail.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 150010
                    m_counter_name = QF.ModNbrFail.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 150011
                    m_counter_name = QF.ModNbrFail.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 150012
                    m_counter_name = QF.ModNbrFail.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 150013
                    m_counter_name = QF.ModNbrFail.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 16
            m_category_name = QF.Rel
            counters_list.count = 7
                    counters
                    m_counter_id = 160001
                    m_counter_name = QF.RelActNbr.QoS
                    counter_value = 0
                    counters
                    m_counter_id = 160002
                    m_counter_name = QF.RelActNbr.QoS.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 160003
                    m_counter_name = QF.ReleaseAttNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 160004
                    m_counter_name = QF.ReleaseAttNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 160005
                    m_counter_name = QF.ReleaseAttNbr.5QI2
                    counter_value = 0
                    counters
                    m_counter_id = 160006
                    m_counter_name = QF.ReleaseAttNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 160007
                    m_counter_name = QF.ReleaseAttNbr.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 17
            m_category_name = QF.SessionTime
            counters_list.count = 2
                    counters
                    m_counter_id = 170001
                    m_counter_name = QF.SessionTimeQoS.QoS
                    counter_value = 0
                    counters
                    m_counter_id = 170003
                    m_counter_name = QF.SessionTimeUE
                    counter_value = 0
            capability_per_category
            m_category_id = 18
            m_category_name = DRB.Estab
            counters_list.count = 16
                    counters
                    m_counter_id = 180001
                    m_counter_name = DRB.EstabAtt.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 180002
                    m_counter_name = DRB.EstabAtt.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 180003
                    m_counter_name = DRB.EstabAtt.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 180004
                    m_counter_name = DRB.EstabAtt.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 180005
                    m_counter_name = DRB.EstabSucc.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 180006
                    m_counter_name = DRB.EstabSucc.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 180007
                    m_counter_name = DRB.EstabSucc.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 180008
                    m_counter_name = DRB.EstabSucc.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 180009
                    m_counter_name = DRB.InitialEstabAtt.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 180010
                    m_counter_name = DRB.InitialEstabAtt.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 180011
                    m_counter_name = DRB.InitialEstabAtt.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 180012
                    m_counter_name = DRB.InitialEstabAtt.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 180013
                    m_counter_name = DRB.InitialEstabSucc.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 180014
                    m_counter_name = DRB.InitialEstabSucc.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 180015
                    m_counter_name = DRB.InitialEstabSucc.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 180016
                    m_counter_name = DRB.InitialEstabSucc.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 19
            m_category_name = DRB.Rel
            counters_list.count = 5
                    counters
                    m_counter_id = 190001
                    m_counter_name = DRB.RelActNbr.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 190002
                    m_counter_name = DRB.RelActNbr.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 190003
                    m_counter_name = DRB.RelActNbr.5QI2
                    counter_value = 0
                    counters
                    m_counter_id = 190004
                    m_counter_name = DRB.RelActNbr.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 190005
                    m_counter_name = DRB.RelActNbr.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 20
            m_category_name = DRB.SessionTime
            counters_list.count = 4
                    counters
                    m_counter_id = 200001
                    m_counter_name = DRB.SessionTime.5QI.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 200002
                    m_counter_name = DRB.SessionTime.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 200003
                    m_counter_name = DRB.SessionTime.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 200004
                    m_counter_name = DRB.SessionTime.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 21
            m_category_name = MM.IntergNBHoOut
            counters_list.count = 14
                    counters
                    m_counter_id = 210001
                    m_counter_name = MM.HoPrepInterReq.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 210002
                    m_counter_name = MM.HoPrepInterReq.NG
                    counter_value = 0
                    counters
                    m_counter_id = 210005
                    m_counter_name = MM.HoPrepInterSucc.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 210006
                    m_counter_name = MM.HoPrepInterSucc.NG
                    counter_value = 0
                    counters
                    m_counter_id = 210009
                    m_counter_name = MM.HoPrepInterFail.Xn.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 210010
                    m_counter_name = MM.HoPrepInterFail.Xn.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 210011
                    m_counter_name = MM.HoPrepInterFail.Xn.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 210012
                    m_counter_name = MM.HoPrepInterFail.Xn.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 210013
                    m_counter_name = MM.HoPrepInterFail.Xn.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 210014
                    m_counter_name = MM.HoPrepInterFail.NG.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 210015
                    m_counter_name = MM.HoPrepInterFail.NG.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 210016
                    m_counter_name = MM.HoPrepInterFail.NG.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 210017
                    m_counter_name = MM.HoPrepInterFail.NG.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 210018
                    m_counter_name = MM.HoPrepInterFail.NG.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 22
            m_category_name = MM.IntergNBHoIn
            counters_list.count = 14
                    counters
                    m_counter_id = 220001
                    m_counter_name = MM.HoResAlloInterReq.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 220002
                    m_counter_name = MM.HoResAlloInterReq.NG
                    counter_value = 0
                    counters
                    m_counter_id = 220005
                    m_counter_name = MM.HoResAlloInterSucc.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 220006
                    m_counter_name = MM.HoResAlloInterSucc.NG
                    counter_value = 0
                    counters
                    m_counter_id = 220009
                    m_counter_name = MM.HoResAlloInterFail.Xn.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 220010
                    m_counter_name = MM.HoResAlloInterFail.Xn.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 220011
                    m_counter_name = MM.HoResAlloInterFail.Xn.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 220012
                    m_counter_name = MM.HoResAlloInterFail.Xn.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 220013
                    m_counter_name = MM.HoResAlloInterFail.Xn.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 220014
                    m_counter_name = MM.HoResAlloInterFail.NG.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 220015
                    m_counter_name = MMM.HoResAlloInterFail.NG.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 220016
                    m_counter_name = MM.HoResAlloInterFail.NG.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 220017
                    m_counter_name = MM.HoResAlloInterFail.NG.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 220018
                    m_counter_name = MM.HoResAlloInterFail.NG.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 23
            m_category_name = MM.IntergNBHoExe
            counters_list.count = 14
                    counters
                    m_counter_id = 230001
                    m_counter_name = MM.HoExeInterReq.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 230002
                    m_counter_name = MM.HoExeInterReq.NG
                    counter_value = 0
                    counters
                    m_counter_id = 230005
                    m_counter_name = MM.HoExeInterSucc.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 230006
                    m_counter_name = MM.HoExeInterSucc.NG
                    counter_value = 0
                    counters
                    m_counter_id = 230009
                    m_counter_name = MM.HoExeInterFail.Xn.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 230010
                    m_counter_name = MM.HoExeInterFail.Xn.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 230011
                    m_counter_name = MM.HoExeInterFail.Xn.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 230012
                    m_counter_name = MM.HoExeInterFail.Xn.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 230013
                    m_counter_name = MM.HoExeInterFail.Xn.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 230014
                    m_counter_name = MM.HoExeInterFail.NG.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 230015
                    m_counter_name = MM.HoExeInterFail.NG.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 230016
                    m_counter_name = MM.HoExeInterFail.NG.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 230017
                    m_counter_name = MM.HoExeInterFail.NG.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 230018
                    m_counter_name = MM.HoExeInterFail.NG.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 24
            m_category_name = MM.IntergNBHoExeTime
            counters_list.count = 4
                    counters
                    m_counter_id = 240001
                    m_counter_name = MM.HoExeInterReq.TimeMean.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 240002
                    m_counter_name = MM.HoExeInterReq.TimeMean.NG
                    counter_value = 0
                    counters
                    m_counter_id = 240005
                    m_counter_name = MM.HoExeInterReq.TimeMax.Xn
                    counter_value = 0
                    counters
                    m_counter_id = 240006
                    m_counter_name = MM.HoExeInterReq.TimeMax.NG
                    counter_value = 0
            capability_per_category
            m_category_id = 25
            m_category_name = MM.HoOut5gsToEps
            counters_list.count = 7
                    counters
                    m_counter_id = 250001
                    m_counter_name = MM.HoOut5gsToEpsPrepReq
                    counter_value = 0
                    counters
                    m_counter_id = 250003
                    m_counter_name = MM.HoOut5gsToEpsPrepSucc
                    counter_value = 0
                    counters
                    m_counter_id = 250005
                    m_counter_name = MM.HoOut5gsToEpsPrepFail.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 250006
                    m_counter_name = MM.HoOut5gsToEpsPrepFail.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 250007
                    m_counter_name = MM.HoOut5gsToEpsPrepFail.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 250008
                    m_counter_name = MM.HoOut5gsToEpsPrepFail.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 250009
                    m_counter_name = MM.HoOut5gsToEpsPrepFail.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 26
            m_category_name = MM.HoIncEpsTo5gs
            counters_list.count = 7
                    counters
                    m_counter_id = 260001
                    m_counter_name = MM.HoIncEpsTo5gsResAlloReq
                    counter_value = 0
                    counters
                    m_counter_id = 260003
                    m_counter_name = MM.HoIncEpsTo5gsResAlloSucc
                    counter_value = 0
                    counters
                    m_counter_id = 260005
                    m_counter_name = MM.HoIncEpsTo5gsResAlloFail.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 260006
                    m_counter_name = MM.HoIncEpsTo5gsResAlloFail.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 260007
                    m_counter_name = MM.HoIncEpsTo5gsResAlloFail.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 260008
                    m_counter_name = MM.HoIncEpsTo5gsResAlloFail.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 260009
                    m_counter_name = MM.HoIncEpsTo5gsResAlloFail.ProtocolCause
                    counter_value = 0
            capability_per_category
            m_category_id = 27
            m_category_name = MM.HoOutExe5gsToEps
            counters_list.count = 8
                    counters
                    m_counter_id = 270001
                    m_counter_name = MM.HoOutExe5gsToEpsReq
                    counter_value = 0
                    counters
                    m_counter_id = 270003
                    m_counter_name = MM.HoOutExe5gsToEpsSucc
                    counter_value = 0
                    counters
                    m_counter_id = 270005
                    m_counter_name = MM.HoOutExe5gsToEpsFail.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 270006
                    m_counter_name = MM.HoOutExe5gsToEpsFail.RNCause
                    counter_value = 0
                    counters
                    m_counter_id = 270007
                    m_counter_name = MM.HoOutExe5gsToEpsFail.TLCause
                    counter_value = 0
                    counters
                    m_counter_id = 270008
                    m_counter_name = MM.HoOutExe5gsToEpsFail.NASCause
                    counter_value = 0
                    counters
                    m_counter_id = 270009
                    m_counter_name = MM.HoOutExe5gsToEpsFail.ProtocolCause
                    counter_value = 0
                    counters
                    m_counter_id = 270010
                    m_counter_name = gnb.MM.HoOutExe5gsToEpsFail.Tot.VoNR
                    counter_value = 0
            capability_per_category
            m_category_id = 29
            m_category_name = DRB.dlDataVolume.L3
            counters_list.count = 6
                    counters
                    m_counter_id = 290001
                    m_counter_name = DRB.PdcpSduVolumeDL.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 290002
                    m_counter_name = DRB.PdcpSduVolumeDL.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 290003
                    m_counter_name = DRB.PdcpSduVolumeDL.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 290004
                    m_counter_name = PdcpSduVolumeXnDL.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 290005
                    m_counter_name = PdcpSduVolumeXnDL.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 290006
                    m_counter_name = PdcpSduVolumeXnDL.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 30
            m_category_name = DRB.ulDataVolume.L3
            counters_list.count = 6
                    counters
                    m_counter_id = 300001
                    m_counter_name = DRB.PdcpSduVolumeUl.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 300002
                    m_counter_name = DRB.PdcpSduVolumeUl.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 300003
                    m_counter_name = DRB.PdcpSduVolumeUl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 300004
                    m_counter_name = PdcpSduVolumeXnUl.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 300005
                    m_counter_name = PdcpSduVolumeXnUl.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 300006
                    m_counter_name = PdcpSduVolumeXnUl.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 31
            m_category_name = DRB.packetLossDropDisc
            counters_list.count = 6
                    counters
                    m_counter_id = 310001
                    m_counter_name = DRB.PdcpPacketLossRateUl.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 310002
                    m_counter_name = DRB.PdcpPacketLossRateUl.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 310003
                    m_counter_name = DRB.PdcpPacketLossRateUl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 310004
                    m_counter_name = DRB.PdcpPacketDropRateDl.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 310005
                    m_counter_name = DRB.PdcpPacketDropRateDl.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 310006
                    m_counter_name = DRB.PdcpPacketDropRateDl.5QI9
                    counter_value = 0
    fm_capability
    m_num_alarms = 6
    alarm_info_list.count = 6
            alarm_info
            m_alarm_id = 5377
            m_alarm_name = NGC_ALARM_AMF_COMM_DOWN
            alarm_info
            m_alarm_id = 5378
            m_alarm_name = NGC_ALARM_NG_SETUP_FAILURE
            alarm_info
            m_alarm_id = 5379
            m_alarm_name = NGC_ALARM_EXCESSIVE_RESET_MSGS_WITH_AMF
            alarm_info
            m_alarm_id = 5121
            m_alarm_name = CELL_ALARM_SLEEPING_CELL_DETECTION
            alarm_info
            m_alarm_id = 4609
            m_alarm_name = CU_ALARM_ALL_AMF_COMM_DOWN
            alarm_info
            m_alarm_id = 4353
            m_alarm_name = ME_ALARM_MEMORY_FULL
OAM_CONFD_CONFIG
OAM_CONFD_IP_ADDRESS : 127.0.0.1
OAM_CONFD_PORT : 11001
OAM_CONFD_LOGGING : 1
OAM_INTF_STR_LOGGING : 1
OAM_CONFD_TIMER : 10
OAM_CONFD_COUNT : 100
CONFD LOG LEVEL : Debug ENABLED
[20/08/2021 16:10:23.296937][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
[20/08/2021 16:10:23.296999][STHREAD][INF][ngp_sys_thread.cpp:197]Policy : SCHED_RR 
establish_confd_subscription_connection
path action MODIFY
path /MEaction CREATE
path /ME/AlarmListaction CREATEvalue 1
path /ME/AlarmList[0]action CREATE
path /ME/AlarmList[0]/idaction CREATEvalue 0
path /ME/FMControlaction CREATEvalue 1
path /ME/FMControl[0]action CREATE
path /ME/FMControl[0]/administrativeStateaction CREATEvalue 0
path /ME/FMControl[0]/idaction CREATEvalue 0
path /ME/GNBCUFunctionaction CREATEvalue 1
path /ME/GNBCUFunction[0]action CREATE
path /ME/GNBCUFunction[0]/EP_F1Uaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_F1U[0]action CREATE
path /ME/GNBCUFunction[0]/EP_F1U[0]/farEndEntityaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_F1U[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_F1U[0]/localIpAddressaction CREATEvalue 168.168.31.101
path /ME/GNBCUFunction[0]/EP_F1U[0]/localVlanIdaction CREATEvalue 7
path /ME/GNBCUFunction[0]/EP_F1U[0]/objectClassaction CREATEvalue EP_F1U
path /ME/GNBCUFunction[0]/EP_F1U[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_F1U[0]/remoteAddressaction CREATEvalue 1.1.1.1
path /ME/GNBCUFunction[0]/EP_F1U[0]/userLabelaction CREATEvalue EP_F1U
path /ME/GNBCUFunction[0]/EP_NgCaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_NgC[0]action CREATE
path /ME/GNBCUFunction[0]/EP_NgC[0]/farEndEntityaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_NgC[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgC[0]/localIpAddressaction CREATEvalue 192.168.120.25
path /ME/GNBCUFunction[0]/EP_NgC[0]/localVlanIdaction CREATEvalue 7
path /ME/GNBCUFunction[0]/EP_NgC[0]/objectClassaction CREATEvalue EP_NgC
path /ME/GNBCUFunction[0]/EP_NgC[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgC[0]/remoteAddressaction CREATEvalue 192.168.120.139
path /ME/GNBCUFunction[0]/EP_NgC[0]/userLabelaction CREATEvalue EP_NgC
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContaineraction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]action CREATE
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/vsDataaction CREATEvalue 
		  <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
		    <gnbCuConfig>
		     <id>0</id>
             <gnbNgcVsConfig>
                <id>5</id>
                <AMF-Region-id>01111111</AMF-Region-id>
                <AMF-Set-id>0111111101</AMF-Set-id>
                <AMF-Pointer>011111</AMF-Pointer>
                <ngcAlarm>
                   <alarmId>ALARM_AMF_COMM_DOWN</alarmId>
                   <alarmName>ALARM_AMF_COMM_DOWN</alarmName>
                   <thresholdLevel>0</thresholdLevel>
                   <thresholdCount>0</thresholdCount>
                   <thresholdTimeInterval>600</thresholdTimeInterval>
                </ngcAlarm>
                <ngcAlarm>
                   <alarmId>ALARM_NG_SETUP_FAILURE</alarmId>
                   <alarmName>ALARM_NG_SETUP_FAILURE</alarmName>
                   <thresholdLevel>0</thresholdLevel>
                   <thresholdCount>0</thresholdCount>
                   <thresholdTimeInterval>600</thresholdTimeInterval>
                </ngcAlarm>
                <ngcAlarm>
                   <alarmId>ALARM_EXCESSIVE_RESET_MSGS_WITH_AMF</alarmId>
                   <alarmName>ALARM_EXCESSIVE_RESET_MSGS_WITH_AMF</alarmName>
                   <thresholdLevel>0</thresholdLevel>
                   <thresholdCount>0</thresholdCount>
                   <thresholdTimeInterval>600</thresholdTimeInterval>
                </ngcAlarm>
             </gnbNgcVsConfig>
		    </gnbCuConfig>
		  </gnbvs>
          
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/vsDataFormatVersionaction CREATEvalue gnb_ngc_vs_config.yang
path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBCUFunction[0]/EP_NgUaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_NgU[0]action CREATE
path /ME/GNBCUFunction[0]/EP_NgU[0]/farEndEntityaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_NgU[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgU[0]/localIpAddressaction CREATEvalue 5.5.5.13
path /ME/GNBCUFunction[0]/EP_NgU[0]/localVlanIdaction CREATEvalue 7
path /ME/GNBCUFunction[0]/EP_NgU[0]/objectClassaction CREATEvalue EP_NgU
path /ME/GNBCUFunction[0]/EP_NgU[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_NgU[0]/remoteAddressaction CREATEvalue 1.1.1.1
path /ME/GNBCUFunction[0]/EP_NgU[0]/userLabelaction CREATEvalue EP_NgU
path /ME/GNBCUFunction[0]/EP_XnUaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_XnU[0]action CREATE
path /ME/GNBCUFunction[0]/EP_XnU[0]/farEndEntityaction CREATEvalue 1
path /ME/GNBCUFunction[0]/EP_XnU[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_XnU[0]/localIpAddressaction CREATEvalue 192.168.120.16
path /ME/GNBCUFunction[0]/EP_XnU[0]/localVlanIdaction CREATEvalue 7
path /ME/GNBCUFunction[0]/EP_XnU[0]/objectClassaction CREATEvalue EP_XnU
path /ME/GNBCUFunction[0]/EP_XnU[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/EP_XnU[0]/remoteAddressaction CREATEvalue 1.1.1.1
path /ME/GNBCUFunction[0]/EP_XnU[0]/userLabelaction CREATEvalue EP_XnU
path /ME/GNBCUFunction[0]/NRCellCUaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]action CREATE
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelationaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]action CREATE
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/isHOAllowedaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/isRemoveAllowedaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/objectClassaction CREATEvalue RNCFunction
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersListaction MODIFY
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/environmentTypeaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/equipmentTypeaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/powerInterfaceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteDescriptionaction CREATEvalue prestige tech park
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteIdentificationaction CREATEvalue Tech Park
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteLatitudeaction CREATEvalue 129781_4
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteLongitudeaction CREATEvalue 776653_4
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/userLabelaction CREATEvalue NRCellCU
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersListaction MODIFY
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/autoScalableaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/flavourIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/vnfInstanceIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/vnfdIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/cellIndexaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/nCIaction CREATEvalue 000000001
path /ME/GNBCUFunction[0]/NRCellCU[0]/objectClassaction CREATEvalue RNCFunction
path /ME/GNBCUFunction[0]/NRCellCU[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]action CREATE
path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]/MCCaction CREATEvalue 460
path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]/MNCaction CREATEvalue 11
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersListaction MODIFY
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/environmentTypeaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/equipmentTypeaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/powerInterfaceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteDescriptionaction CREATEvalue prestige tech park
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteIdentificationaction CREATEvalue Tech Park
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteLatitudeaction CREATEvalue 129781_4
path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteLongitudeaction CREATEvalue 776653_4
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyaction CREATEvalue rRMPolicy
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyNSSIIdaction CREATEvalue NssidPolicy
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatioaction CREATEvalue 8
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2action CREATE
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/groupIdaction CREATEvalue 12
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/quotaTypeaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMarginMaxRationaction CREATEvalue 50
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMarginMinRationaction CREATEvalue 55
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMaxRationaction CREATEvalue 5
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMinRationaction CREATEvalue 15
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/sNSSAIaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/sNSSAI[0]action CREATEvalue 3
path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyTypeaction CREATEvalue 16
path /ME/GNBCUFunction[0]/NRCellCU[0]/s-NSSAIaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/s-NSSAI[0]action CREATEvalue 2
path /ME/GNBCUFunction[0]/NRCellCU[0]/sCellUlconfiguredaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/userLabelaction CREATEvalue NRCellCU
path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersListaction MODIFY
path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/autoScalableaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/flavourIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/vnfInstanceIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/vnfdIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContaineraction CREATEvalue 1
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]action CREATE
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/vsDataaction CREATEvalue 
		  <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
	        <gnbCuConfig>
		   <id>0</id>
       <gnbCellCuVsConfig>
       <id>0</id>
       <MCC>460</MCC>
       <MNC>11</MNC>
        <encAlgo>NEA0</encAlgo>
        <intAlgo>NIA1</intAlgo>
        <ueInactivityTimerSec>s20</ueInactivityTimerSec>
        <cellDesignatedPrimary>false</cellDesignatedPrimary>
        <drxEnabled>false</drxEnabled>
        <gnbNrCellCuRelationVsConfig>
          <id>0</id>
            <nrCellIdentifier>2</nrCellIdentifier>
            <nrNeighbourCellRelationIdx>1</nrNeighbourCellRelationIdx>
            <MCC>460</MCC>
            <MNC>11</MNC>
            <targetNRPhysicalCellId>29</targetNRPhysicalCellId>
            <targetNRGnbIdLen>22</targetNRGnbIdLen>
            <targetNRGnbId>2</targetNRGnbId>
            <TAC>0001</TAC>
            <modeFdd>
               <NR-DL>
                 <nrArfcn>65535</nrArfcn>
                 <numFreqBands>
                   <nrFreqBandInd>2</nrFreqBandInd>
                   <sulFreqBands>3</sulFreqBands>
                   <sulFreqBands>3</sulFreqBands>
                 </numFreqBands>
                 <subCarrierSpacingInKhz>15</subCarrierSpacingInKhz>
                 <nrNumRb>11</nrNumRb>
               </NR-DL>
               <NR-UL>
                 <nrArfcn>65535</nrArfcn>
                 <numFreqBands>
                   <nrFreqBandInd>12</nrFreqBandInd>
                   <sulFreqBands>13</sulFreqBands>
                 </numFreqBands>
                 <subCarrierSpacingInKhz>15</subCarrierSpacingInKhz>
                 <nrNumRb>11</nrNumRb>
               </NR-UL>
            </modeFdd>
            <nrNeighbourGnbIpAddr>1.1.1.1</nrNeighbourGnbIpAddr>
            <noXnPresent>true</noXnPresent>
            <noXnHoPresent>true</noXnHoPresent>
          </gnbNrCellCuRelationVsConfig>
          <srbConfig>
            <srbId>1</srbId>
            <srbConfigInfo>
              <reorderingTimerMs>40</reorderingTimerMs>
            </srbConfigInfo>
           </srbConfig>
          <srbConfig>
            <srbId>2</srbId>
            <srbConfigInfo>
             <reorderingTimerMs>40</reorderingTimerMs>
             </srbConfigInfo>
          </srbConfig>
        <eutraQosConfig>
          <configIndex>1</configIndex>
          <qci>1</qci>
          <snSizeDL>12</snSizeDL>
          <snSizeUL>12</snSizeUL>
          <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
          <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
          <sduDiscardTimerMs>infinity</sduDiscardTimerMs>
          <rlcMode>RLC_UM_BIDIRECTIONAL</rlcMode>
          <reorderingTimerMs>40</reorderingTimerMs>
        </eutraQosConfig>
        <nrQosConfig>
          <configIndex>1</configIndex>
           <fiveQi>9</fiveQi>
           <snSizeDL>18</snSizeDL>
           <snSizeUL>18</snSizeUL>
           <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
           <sduDiscardTimerMs>ms500</sduDiscardTimerMs>
           <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
           <rlcMode>RLC_AM</rlcMode>
           <reorderingTimerMs>100</reorderingTimerMs>
           <defaultDrb>true</defaultDrb>
           <sdapHeaderUL>true</sdapHeaderUL>
           <sdapHeaderDL>true</sdapHeaderDL>
        </nrQosConfig>
        <nrQosConfig>
          <configIndex>2</configIndex>
           <fiveQi>5</fiveQi>
           <snSizeDL>18</snSizeDL>
           <snSizeUL>18</snSizeUL>
           <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
           <sduDiscardTimerMs>ms500</sduDiscardTimerMs>
           <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
           <rlcMode>RLC_AM</rlcMode>
           <reorderingTimerMs>100</reorderingTimerMs>
           <defaultDrb>false</defaultDrb>
           <sdapHeaderUL>true</sdapHeaderUL>
           <sdapHeaderDL>true</sdapHeaderDL>
        </nrQosConfig>
        <nrQosConfig>
          <configIndex>3</configIndex>
           <fiveQi>0</fiveQi>
           <snSizeDL>18</snSizeDL>
           <snSizeUL>18</snSizeUL>
           <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
           <sduDiscardTimerMs>ms500</sduDiscardTimerMs>
           <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
           <rlcMode>RLC_AM</rlcMode>
           <reorderingTimerMs>100</reorderingTimerMs>
           <defaultDrb>false</defaultDrb>
           <sdapHeaderUL>true</sdapHeaderUL>
           <sdapHeaderDL>true</sdapHeaderDL>
        </nrQosConfig>
        <nrQosConfig>
          <configIndex>4</configIndex>
           <fiveQi>1</fiveQi>
           <snSizeDL>18</snSizeDL>
           <snSizeUL>18</snSizeUL>
           <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
           <sduDiscardTimerMs>ms500</sduDiscardTimerMs>
           <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
           <rlcMode>RLC_AM</rlcMode>
           <reorderingTimerMs>100</reorderingTimerMs>
           <defaultDrb>false</defaultDrb>
           <sdapHeaderUL>true</sdapHeaderUL>
           <sdapHeaderDL>true</sdapHeaderDL>
        </nrQosConfig>
        <nrQosConfig>
          <configIndex>5</configIndex>
           <fiveQi>2</fiveQi>
           <snSizeDL>18</snSizeDL>
           <snSizeUL>18</snSizeUL>
           <ulDataSplitThresholdInBytes>b100</ulDataSplitThresholdInBytes>
           <sduDiscardTimerMs>ms500</sduDiscardTimerMs>
           <enableUlOutOfOrderDelivery>false</enableUlOutOfOrderDelivery>
           <rlcMode>RLC_AM</rlcMode>
           <reorderingTimerMs>100</reorderingTimerMs>
           <defaultDrb>false</defaultDrb>
           <sdapHeaderUL>true</sdapHeaderUL>
           <sdapHeaderDL>true</sdapHeaderDL>
        </nrQosConfig>
<!--
        <siConfig>SIB2</siConfig>
        <siConfig>SIB3</siConfig>
-->
        <qHyst>1</qHyst>
        <cellReselectionThreshold>5</cellReselectionThreshold>
        <reselectionPriority>7</reselectionPriority>
        <qRxLevMin>22</qRxLevMin>
        <intraFreqReselectionThreshold>20</intraFreqReselectionThreshold>
        <tReselectionNr>0</tReselectionNr>
        <deriveSsbIdxFromCell>true</deriveSsbIdxFromCell>
        <intraFreqNeighCells>
          <nRpCI>300</nRpCI>
          <offsetCell>dB12</offsetCell>
          <rxLevMinOffsetCell>3</rxLevMinOffsetCell>
          <rxLevMinOffsetCellSul>6</rxLevMinOffsetCellSul>
          <qualMinOffsetCell>1</qualMinOffsetCell>
        </intraFreqNeighCells>
        <intraFreqBlackCells>
          <start>300</start>
          <range>8</range>
        </intraFreqBlackCells>
        <measConfigSA>
          <measConfigEmbb>
            <measObjectToAddMod>
              <measObjectRefId>1</measObjectRefId>
              <measObjectType>NR</measObjectType>
              <measObjectNr>
              <ssbFrequency>720288</ssbFrequency>
              <ssbSubCarrierSpacing>KHZ30</ssbSubCarrierSpacing>
              <qOffsetRangeList>
                <rsrpOffsetSsb>DB0</rsrpOffsetSsb>
                <rsrqOffsetSsb>DB0</rsrqOffsetSsb>
                <sinrOffsetSsb>DB0</sinrOffsetSsb>
                <rsrpOffsetCsiRs>DB0</rsrpOffsetCsiRs>
                <rsrqOffsetCsiRs>DB0</rsrqOffsetCsiRs>
                <sinrOffsetCsiRs>DB0</sinrOffsetCsiRs>
              </qOffsetRangeList>
              <absThreshSsBlocksConsolidation>
              <thresholdRsrp>1</thresholdRsrp>
              <thresholdRsrq>1</thresholdRsrq>
              <thresholdSinr>1</thresholdSinr>
              </absThreshSsBlocksConsolidation>
              <numSsBlocksToAverage>2</numSsBlocksToAverage>
              <refFreqCsiRs>1</refFreqCsiRs>
              <absThreshCsiRsConsolidation>
              <thresholdRsrp>1</thresholdRsrp>
              <thresholdRsrq>1</thresholdRsrq>
              <thresholdSinr>1</thresholdSinr>
              </absThreshCsiRsConsolidation>
              <numCsiRsResourcesToAverage>2</numCsiRsResourcesToAverage>
              <quantityConfigIndex>1</quantityConfigIndex>
             </measObjectNr>
           </measObjectToAddMod>
           <reportConfigToAddMod>
            <reportConfigRefId>1</reportConfigRefId>
            <measObjectRefId>1</measObjectRefId>
            <reportConfigType>NR</reportConfigType>
            <reportConfigNr>
              <reportType>EVENT_TRIGGERED</reportType>
               <eventReport>
                 <eventId>EVENT_A3</eventId>
                 <measTriggerQuantityOffsetA3>
                    <eventA3useWhiteCellList>false</eventA3useWhiteCellList>
                    <rsrp>40</rsrp>
                 </measTriggerQuantityOffsetA3>
                 <reportOnLeave>false</reportOnLeave>
                 <hysteresis>0</hysteresis>
                 <timeToTrigger>MS40</timeToTrigger>
                 <eventRsType>SSB</eventRsType>
                 <eventReportInterval>MS5120</eventReportInterval>
                 <eventReportAmount>R1</eventReportAmount>
                 <eventMeasReportQuantity>
                   <rsrp>true</rsrp>
                   <rsrq>false</rsrq>
                   <sinr>false</sinr>
                 </eventMeasReportQuantity>
                 <eventMaxReportCell>1</eventMaxReportCell>
                 <eventInculdeBeamMeasurements>false</eventInculdeBeamMeasurements>
              </eventReport>
              <!--
              <periodicReport>
                 <periodicRsType>SSB</periodicRsType>
                 <periodicReportInterval>MIN1</periodicReportInterval>
                 <periodicReportAmount>R1</periodicReportAmount>
                 <periodicMeasReportQuantity>
                   <rsrp>true</rsrp>
                   <rsrq>false</rsrq>
                   <sinr>false</sinr>
                 </periodicMeasReportQuantity>
                 <periodicMaxReportCell>1</periodicMaxReportCell>
                 <periodicInculdeBeamMeasurements>true</periodicInculdeBeamMeasurements>
                 <useWhiteCellList>true</useWhiteCellList>
              </periodicReport>
              -->
            </reportConfigNr>
          </reportConfigToAddMod>
          </measConfigEmbb>
        </measConfigSA>
        <ueCapabilityTriggerAfterSMCProc>true</ueCapabilityTriggerAfterSMCProc>
	    <drxConfig>
	      <drxConfigDataSpecific>
            <enabled>true</enabled>
            <longDrxCycleLength>ms80</longDrxCycleLength>
		    <shortDrxCycleLength>ms5</shortDrxCycleLength>
	        <shortDrxCycleTimer>2</shortDrxCycleTimer>
          </drxConfigDataSpecific>
          <drxConfigAnrSpecific>
            <enabled>true</enabled>
            <longDrxCycleLength>ms320</longDrxCycleLength>
	        <shortDrxCycleLength>ms8</shortDrxCycleLength>
	        <shortDrxCycleTimer>4</shortDrxCycleTimer>
	      </drxConfigAnrSpecific>
        </drxConfig>
        <cellAlarm>
          <alarmId>ALARM_SLEEPING_CELL_DETECTION</alarmId>
          <alarmName>ALARM_SLEEPING_CELL_DETECTION</alarmName>
          <thresholdLevel>0</thresholdLevel>
          <thresholdCount>0</thresholdCount>
          <thresholdTimeInterval>600</thresholdTimeInterval>
        </cellAlarm>
      </gnbCellCuVsConfig>
	  </gnbCuConfig>
	  </gnbvs>
          
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/vsDataFormatVersionaction CREATEvalue gnb_cell_cu_vs_config.yang
path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBCUFunction[0]/gNB-typeaction CREATEvalue 0
path /ME/GNBCUFunction[0]/gNBCUNameaction CREATEvalue CU1
path /ME/GNBCUFunction[0]/gNBIdaction CREATEvalue 0
path /ME/GNBCUFunction[0]/gNBIdLengthaction CREATEvalue 22
path /ME/GNBCUFunction[0]/gnbIndexaction CREATEvalue 0
path /ME/GNBCUFunction[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/objectClassaction CREATEvalue RNCFunction
path /ME/GNBCUFunction[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/pLMNIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/pLMNId[0]action CREATE
path /ME/GNBCUFunction[0]/pLMNId[0]/MCCaction CREATEvalue 460
path /ME/GNBCUFunction[0]/pLMNId[0]/MNCaction CREATEvalue 11
path /ME/GNBCUFunction[0]/peeParametersListaction MODIFY
path /ME/GNBCUFunction[0]/peeParametersList/environmentTypeaction CREATEvalue 1
path /ME/GNBCUFunction[0]/peeParametersList/equipmentTypeaction CREATEvalue 0
path /ME/GNBCUFunction[0]/peeParametersList/powerInterfaceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/peeParametersList/siteDescriptionaction CREATEvalue Prestige Tech Park
path /ME/GNBCUFunction[0]/peeParametersList/siteIdentificationaction CREATEvalue TECH PARK
path /ME/GNBCUFunction[0]/peeParametersList/siteLatitudeaction CREATEvalue 129781_4
path /ME/GNBCUFunction[0]/peeParametersList/siteLongitudeaction CREATEvalue 776653_4
path /ME/GNBCUFunction[0]/userLabelaction CREATEvalue GNBCUFunction
path /ME/GNBCUFunction[0]/vnfParametersListaction MODIFY
path /ME/GNBCUFunction[0]/vnfParametersList/autoScalableaction CREATEvalue 0
path /ME/GNBCUFunction[0]/vnfParametersList/flavourIdaction CREATEvalue 1
path /ME/GNBCUFunction[0]/vnfParametersList/vnfInstanceIdaction CREATEvalue 0
path /ME/GNBCUFunction[0]/vnfParametersList/vnfdIdaction CREATEvalue 0
path /ME/GNBCUFunction[0]/vsDataContaineraction CREATEvalue 4
path /ME/GNBCUFunction[0]/vsDataContainer[0]action CREATE
path /ME/GNBCUFunction[0]/vsDataContainer[0]/idaction CREATEvalue 0
path /ME/GNBCUFunction[0]/vsDataContainer[0]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/vsDataContainer[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBCUFunction[0]/vsDataContainer[0]/vsDataaction CREATEvalue 
		   <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
		     <gnbCuConfig>
			   <id>0</id>
               <numOutboundStreams>2</numOutboundStreams>
               <maxInboundStreams>2</maxInboundStreams>
               <maxInitAttempts>5</maxInitAttempts>
               <heartBeatIntervalInMs>5000</heartBeatIntervalInMs>
               <maxPathRetx>1</maxPathRetx>
               <rtoInitial>3000</rtoInitial>
               <rtomin>1000</rtomin>
               <rtomax>60000</rtomax>
               <f1cServerLocalIpAddress>168.168.31.101</f1cServerLocalIpAddress>
               <x2cServerLocalIpAddress>168.168.31.201</x2cServerLocalIpAddress>
               <xncServerLocalIpAddress>168.168.31.102</xncServerLocalIpAddress>
               <xncClientLocalIpAddress>168.168.31.101</xncClientLocalIpAddress>
		     </gnbCuConfig>
		   </gnbvs>
        
path /ME/GNBCUFunction[0]/vsDataContainer[0]/vsDataFormatVersionaction CREATEvalue gnb_sctp_vs_config.yang
path /ME/GNBCUFunction[0]/vsDataContainer[0]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBCUFunction[0]/vsDataContainer[1]action CREATE
path /ME/GNBCUFunction[0]/vsDataContainer[1]/idaction CREATEvalue 1
path /ME/GNBCUFunction[0]/vsDataContainer[1]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/vsDataContainer[1]/objectInstanceaction CREATEvalue 1
path /ME/GNBCUFunction[0]/vsDataContainer[1]/vsDataaction CREATEvalue 
		   <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
		     <gnbCuConfig>
			   <id>0</id>
               <cuLog>
                 <moduleId>APP</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>OAM_AGENT</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>GNB_MGR</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>CU_UP_MGR</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>RM</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>UE_CONN_MGR</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>BEARER_MGR</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>CODEC_COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>X2AP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>F1AP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>RRC_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>NGAP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>XNAP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>E1AP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SCTP_COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SCTP_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SCTP_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SCTP_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_UPPER_TX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_UPPER_RX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_UPPER_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_UPPER_RX</moduleId>
                 <logLevel>FATAL</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_LOWER_TX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_LOWER_RX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_LOWER_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_LOWER_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_TX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_RX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_TX</moduleId>
                 <logLevel>FATAL</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_C_CNTRL</moduleId>
                 <logLevel>TRC</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_C_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PDCP_C_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>UDP_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>UDP_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>UDP_DL_RX</moduleId>
                 <logLevel>FATAL</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>UDP_UL_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>NRUP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_COMMON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_TX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_RX_CNTRL</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_TX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>SDAP_CODEC</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>TIMER</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>EGTPU_TIMER</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>CRYPTO_RX</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>PM</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>FM</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <cuLog>
                 <moduleId>DSON</moduleId>
                 <logLevel>ERR</logLevel>
               </cuLog>
               <ngpLog>
                 <moduleId>MEM</moduleId>
                 <logLevel>FATAL</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>BUF</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>STATS</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>TIMER</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>STHREAD</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>CTHREAD</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>SYS</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>EXCP</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>COMM</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>SCTP</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>UDP</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>TCP</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>MSGQ</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>PRIOQ</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>WORKQ</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <ngpLog>
                 <moduleId>PERF</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
			   <ngpLog>
                 <moduleId>FAST_CRYPTO</moduleId>
                 <logLevel>ERR</logLevel>
               </ngpLog>
               <logFilePath>/opt/faca/log/cu/</logFilePath>
               <logFileName>cu</logFileName>
               <maxLogFileSize>10000000</maxLogFileSize>
               <maxLogFileCount>5</maxLogFileCount>
               <enableBinLog>false</enableBinLog>
               <rrcWiresharkDisector>
                <enableRrcWiresharkDisector>false</enableRrcWiresharkDisector>
                <localAddress>127.0.0.1</localAddress>
                <remoteAddress>127.0.0.1</remoteAddress>
                <remotePort>9999</remotePort>
               </rrcWiresharkDisector>
		     </gnbCuConfig>
		   </gnbvs>
        
path /ME/GNBCUFunction[0]/vsDataContainer[1]/vsDataFormatVersionaction CREATEvalue gnb_log_vs_config.yang
path /ME/GNBCUFunction[0]/vsDataContainer[1]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBCUFunction[0]/vsDataContainer[2]action CREATE
path /ME/GNBCUFunction[0]/vsDataContainer[2]/idaction CREATEvalue 2
path /ME/GNBCUFunction[0]/vsDataContainer[2]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/vsDataContainer[2]/objectInstanceaction CREATEvalue 2
path /ME/GNBCUFunction[0]/vsDataContainer[2]/vsDataaction CREATEvalue 
		  <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
			<gnbCuConfig>
		       <id>0</id>
               <maxNumUes>1025</maxNumUes>
               <maxNumRb>5000</maxNumRb>
               <caEnabled>false</caEnabled>
               <maxCellsInAggregate>5</maxCellsInAggregate>
               <dlDataSplitThresholdInBytes>b100</dlDataSplitThresholdInBytes>
               <dlDataSplitPrimaryPath>PRIMARY_CELL_GROUP</dlDataSplitPrimaryPath>
               <sliceManagerIpAddress>172.27.36.101</sliceManagerIpAddress>
               <timeToWaitInSec>5</timeToWaitInSec>
               <duId>1</duId>
               <msgRetryIntervalInSec>5</msgRetryIntervalInSec>
               <msgMaxRetryCount>3</msgMaxRetryCount>
               <maxIncomingConnections>3</maxIncomingConnections>
               <sliceManagerPort>4343</sliceManagerPort>
               <maxNumPduSessions>4</maxNumPduSessions>
               <taConfig>
                 <tac>0001</tac>
                 <bcastPlmnInfo>
                   <id>0</id>
                   <MCC>460</MCC>
                   <MNC>11</MNC>
                   <sNSSAI>16777217</sNSSAI>
                   <sNSSAI>16908288</sNSSAI>
		           <sNSSAI>50529801</sNSSAI>
                 </bcastPlmnInfo>
               </taConfig>
               <defaultPagingDrx>rf32</defaultPagingDrx>
               <cuAlarm>
                    <alarmId>ALARM_ALL_AMF_COMM_DOWN</alarmId>
                    <alarmName>ALARM_ALL_AMF_COMM_DOWN</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
               </cuAlarm>
			</gnbCuConfig>
		  </gnbvs>
        
path /ME/GNBCUFunction[0]/vsDataContainer[2]/vsDataFormatVersionaction CREATEvalue gnb_cu_vs_config.yang
path /ME/GNBCUFunction[0]/vsDataContainer[2]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBCUFunction[0]/vsDataContainer[3]action CREATE
path /ME/GNBCUFunction[0]/vsDataContainer[3]/idaction CREATEvalue 3
path /ME/GNBCUFunction[0]/vsDataContainer[3]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBCUFunction[0]/vsDataContainer[3]/objectInstanceaction CREATEvalue 3
path /ME/GNBCUFunction[0]/vsDataContainer[3]/vsDataaction CREATEvalue 
           <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
              <gnbCuConfig>
              <id>0</id>
			<sendUdpPortExtWithErrorInd>true</sendUdpPortExtWithErrorInd>
			<endMarkerTimerInMs>2000</endMarkerTimerInMs>
			<pathMgmtConfig>
			   <echoT3ResponseInSec>1</echoT3ResponseInSec>
			   <echoN3Requests>1</echoN3Requests>
			   <echoIntervalInSec>60</echoIntervalInSec>
			</pathMgmtConfig>
              </gnbCuConfig>
           </gnbvs>
        
path /ME/GNBCUFunction[0]/vsDataContainer[3]/vsDataFormatVersionaction CREATEvalue gnb_egtp_vs_config.yang
path /ME/GNBCUFunction[0]/vsDataContainer[3]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/MeasurementControlaction CREATEvalue 1
path /ME/MeasurementControl[0]action CREATE
path /ME/MeasurementControl[0]/defaultFileBasedGPaction CREATEvalue 900
path /ME/MeasurementControl[0]/defaultFileLocationaction CREATEvalue /opt/faca/log/cu/
path /ME/MeasurementControl[0]/defaultFileReportingPeriodaction CREATEvalue 15
path /ME/MeasurementControl[0]/defaultSamplingNumberaction CREATEvalue 10
path /ME/MeasurementControl[0]/idaction CREATEvalue 0
path /ME/MeasurementControl[0]/pMAdministrativeStateaction CREATEvalue 0
path /ME/dnPrefixaction CREATEvalue gnb
path /ME/idaction CREATEvalue 0
path /ME/locationNameaction CREATEvalue BLR
path /ME/objectClassaction CREATEvalue ME
path /ME/objectInstanceaction CREATEvalue 0
path /ME/swVersionaction CREATEvalue 2.0
path /ME/userDefinedStateaction CREATEvalue DRAFT
path /ME/userLabelaction CREATEvalue ME
path /ME/vendorNameaction CREATEvalue RSYS
1 read for path /ME
1 read for path /ME
1read for path/ME/objectClass
1read for path/ME/objectInstance
1 read for path /ME/id
1read for path/ME/vendorName
1 read for path /ME/userDefinedState
1read for path/ME/swVersion
1read for path/ME/dnPrefix
1 read for path /ME/userLabel
1read for path/ME/locationName
1read for path/ME/managedBy
1read for path/ME/managedElementTypeList
1read for path/ME/vsDataContainer
1 read for path /ME
1 read for path /ME
1read for path/ME/MeasurementControl
1 read for path /ME/MeasurementControl[0]
1read for key path/ME/MeasurementControl[0]/id
1 read for path /ME/MeasurementControl[0]
1 read for path /ME/MeasurementControl[0]/id
1 read for path /ME/MeasurementControl[0]
1 read for path /ME/MeasurementControl[0]/pMAdministrativeState
1 read for path /ME/MeasurementControl[0]/defaultFileLocation
1 read for path /ME/MeasurementControl[0]/defaultSamplingNumber
1 read for path /ME/MeasurementControl[0]/defaultFileBasedGP
1 read for path /ME/MeasurementControl[0]/defaultFileReportingPeriod
1read for path/ME/MeasurementControl[0]/MeasurementReader
1read for path/ME/ThresholdMonitoringCapability
1read for path/ME/ThresholdMonitor
1 read for path /ME
1read for path/ME/FMControl
1 read for path /ME/FMControl[0]
1read for key path/ME/FMControl[0]/id
1 read for path /ME/FMControl[0]
1 read for path /ME/FMControl[0]/id
1 read for path /ME/FMControl[0]
1 read for path /ME/FMControl[0]/administrativeState
1read for path/ME/AlarmList
1 read for path /ME/AlarmList[0]
1read for key path/ME/AlarmList[0]/id
1 read for path /ME/AlarmList[0]
1 read for path /ME/AlarmList[0]/id
1 read for path /ME/AlarmList[0]
1read for path/ME/GNBCUFunction
1 read for path /ME/GNBCUFunction[0]
1read for key path/ME/GNBCUFunction[0]/id
1read for key path/ME/GNBCUFunction[0]/gNBId
1 read for path /ME/GNBCUFunction[0]
1 read for path /ME/GNBCUFunction[0]
1read for path/ME/GNBCUFunction[0]/objectClass
1read for path/ME/GNBCUFunction[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/id
1read for path/ME/GNBCUFunction[0]/userLabel
1 read for path /ME/GNBCUFunction[0]/vnfParametersList/vnfInstanceId
1 read for path /ME/GNBCUFunction[0]/vnfParametersList/vnfdId
1 read for path /ME/GNBCUFunction[0]/vnfParametersList/flavourId
1 read for path /ME/GNBCUFunction[0]/vnfParametersList/autoScalable
1 read for path /ME/GNBCUFunction[0]/peeParametersList/siteIdentification
1 read for path /ME/GNBCUFunction[0]/peeParametersList/siteLatitude
1 read for path /ME/GNBCUFunction[0]/peeParametersList/siteLongitude
1 read for path /ME/GNBCUFunction[0]/peeParametersList/siteDescription
1 read for path /ME/GNBCUFunction[0]/peeParametersList/equipmentType
1 read for path /ME/GNBCUFunction[0]/peeParametersList/environmentType
1 read for path /ME/GNBCUFunction[0]/peeParametersList/powerInterface
1read for path/ME/GNBCUFunction[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[0]
1read for key path/ME/GNBCUFunction[0]/vsDataContainer[0]/id
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[0]
1read for path/ME/GNBCUFunction[0]/vsDataContainer[0]/objectClass
1read for path/ME/GNBCUFunction[0]/vsDataContainer[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[0]/id
1read for path/ME/GNBCUFunction[0]/vsDataContainer[0]/vsDataType
1read for path/ME/GNBCUFunction[0]/vsDataContainer[0]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[1]
1read for key path/ME/GNBCUFunction[0]/vsDataContainer[1]/id
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[1]
1read for path/ME/GNBCUFunction[0]/vsDataContainer[1]/objectClass
1read for path/ME/GNBCUFunction[0]/vsDataContainer[1]/objectInstance
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[1]/id
1read for path/ME/GNBCUFunction[0]/vsDataContainer[1]/vsDataType
1read for path/ME/GNBCUFunction[0]/vsDataContainer[1]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[2]
1read for key path/ME/GNBCUFunction[0]/vsDataContainer[2]/id
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[2]
1read for path/ME/GNBCUFunction[0]/vsDataContainer[2]/objectClass
1read for path/ME/GNBCUFunction[0]/vsDataContainer[2]/objectInstance
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[2]/id
1read for path/ME/GNBCUFunction[0]/vsDataContainer[2]/vsDataType
1read for path/ME/GNBCUFunction[0]/vsDataContainer[2]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[3]
1read for key path/ME/GNBCUFunction[0]/vsDataContainer[3]/id
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[3]
1read for path/ME/GNBCUFunction[0]/vsDataContainer[3]/objectClass
1read for path/ME/GNBCUFunction[0]/vsDataContainer[3]/objectInstance
1 read for path /ME/GNBCUFunction[0]/vsDataContainer[3]/id
1read for path/ME/GNBCUFunction[0]/vsDataContainer[3]/vsDataType
1read for path/ME/GNBCUFunction[0]/vsDataContainer[3]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]
1read for path/ME/GNBCUFunction[0]/gNBCUName
1 read for path /ME/GNBCUFunction[0]/gNBId
1read for path/ME/GNBCUFunction[0]/gNBIdLength
1 read for path /ME/GNBCUFunction[0]/gnbIndex
1read for path/ME/GNBCUFunction[0]/pLMNId
1 read for path /ME/GNBCUFunction[0]/pLMNId[0]
1read for key path/ME/GNBCUFunction[0]/pLMNId[0]/MCC
1read for key path/ME/GNBCUFunction[0]/pLMNId[0]/MNC
1 read for path /ME/GNBCUFunction[0]/pLMNId[0]/MCC
1 read for path /ME/GNBCUFunction[0]/pLMNId[0]/MNC
1 read for path /ME/GNBCUFunction[0]/gNB-type
1read for path/ME/GNBCUFunction[0]/EP_NgC
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]
1read for key path/ME/GNBCUFunction[0]/EP_NgC[0]/id
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/objectClass
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]/id
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/userLabel
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/farEndEntity
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]
1read for key path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/id
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/objectClass
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/id
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/vsDataType
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/vsDataContainer[0]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgC[0]/localIpAddress
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/localVlanId
1read for path/ME/GNBCUFunction[0]/EP_NgC[0]/remoteAddress
1read for path/ME/GNBCUFunction[0]/EP_NgU
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]
1read for key path/ME/GNBCUFunction[0]/EP_NgU[0]/id
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/objectClass
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]/id
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/userLabel
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/farEndEntity
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]
1 read for path /ME/GNBCUFunction[0]/EP_NgU[0]/localIpAddress
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/localVlanId
1read for path/ME/GNBCUFunction[0]/EP_NgU[0]/remoteAddress
1read for path/ME/GNBCUFunction[0]/EP_XnU
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]
1read for key path/ME/GNBCUFunction[0]/EP_XnU[0]/id
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/objectClass
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]/id
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/userLabel
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/farEndEntity
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]
1 read for path /ME/GNBCUFunction[0]/EP_XnU[0]/localIpAddress
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/localVlanId
1read for path/ME/GNBCUFunction[0]/EP_XnU[0]/remoteAddress
1read for path/ME/GNBCUFunction[0]/EP_X2U
1read for path/ME/GNBCUFunction[0]/EP_S1U
1read for path/ME/GNBCUFunction[0]/EP_F1U
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]
1read for key path/ME/GNBCUFunction[0]/EP_F1U[0]/id
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/objectClass
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]/id
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/userLabel
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/farEndEntity
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBCUFunction[0]/EP_F1U[0]/localIpAddress
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/localVlanId
1read for path/ME/GNBCUFunction[0]/EP_F1U[0]/remoteAddress
1read for path/ME/GNBCUFunction[0]/NRCellCU
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]
1read for key path/ME/GNBCUFunction[0]/NRCellCU[0]/id
1read for key path/ME/GNBCUFunction[0]/NRCellCU[0]/nCI
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/objectClass
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/id
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/userLabel
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/vnfInstanceId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/vnfdId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/flavourId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vnfParametersList/autoScalable
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteIdentification
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteLatitude
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteLongitude
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/siteDescription
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/equipmentType
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/environmentType
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/peeParametersList/powerInterface
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]
1read for key path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/id
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/objectClass
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/id
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/vsDataType
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/vsDataContainer[0]/vsDataFormatVersion
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/nCI
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/cellIndex
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]
1read for key path/ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]/MCC
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]/MCC
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/pLMNId[0]/MNC
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/s-NSSAI
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyType
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyNSSIId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicy
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/groupId
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/sNSSAI
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/quotaType
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMaxRation
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMarginMaxRation
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMinRation
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/rRMPolicyRatio2/rRMPolicyMarginMinRation
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]
1read for key path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/id
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/objectClass
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/objectInstance
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/id
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/userLabel
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/vnfInstanceId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/vnfdId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/flavourId
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vnfParametersList/autoScalable
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteIdentification
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteLatitude
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteLongitude
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/siteDescription
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/equipmentType
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/environmentType
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/peeParametersList/powerInterface
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/vsDataContainer
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]
1 read for path /ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/isRemoveAllowed
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/NRCellRelation[0]/isHOAllowed
1read for path/ME/GNBCUFunction[0]/NRCellCU[0]/sCellUlconfigured
close_confd_subscription_connection
establish_confd_subscription_connection
SYS->COMM: dynamic configuration read 3gpp
INFO: DECODING MANAGED ELEMENT VSDATA
INFO: DECODING MANAGED FUNCTION VSDATA
INFO: DECODING NGC VSDATA
INFO: DECODING NRCELLCU VSDATA
path action MODIFY
path /MEaction CREATE
path /gnbvsaction CREATE
path /gnbvs/gnbCuConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/caEnabledaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/cuAlarmaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]action CREATE
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/alarmIdaction CREATEvalue 4609
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/alarmNameaction CREATEvalue ALARM_ALL_AMF_COMM_DOWN
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbCuConfig[0]/cuLogaction CREATEvalue 53
path /gnbvs/gnbCuConfig[0]/cuLog[0]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[0]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[0]/moduleIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/cuLog[10]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[10]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[10]/moduleIdaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/cuLog[11]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[11]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[11]/moduleIdaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/cuLog[12]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[12]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[12]/moduleIdaction CREATEvalue 13
path /gnbvs/gnbCuConfig[0]/cuLog[13]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[13]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[13]/moduleIdaction CREATEvalue 14
path /gnbvs/gnbCuConfig[0]/cuLog[14]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[14]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[14]/moduleIdaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/cuLog[15]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[15]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[15]/moduleIdaction CREATEvalue 16
path /gnbvs/gnbCuConfig[0]/cuLog[16]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[16]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[16]/moduleIdaction CREATEvalue 17
path /gnbvs/gnbCuConfig[0]/cuLog[17]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[17]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[17]/moduleIdaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/cuLog[18]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[18]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[18]/moduleIdaction CREATEvalue 19
path /gnbvs/gnbCuConfig[0]/cuLog[19]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[19]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[19]/moduleIdaction CREATEvalue 20
path /gnbvs/gnbCuConfig[0]/cuLog[1]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[1]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[1]/moduleIdaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[20]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[20]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[20]/moduleIdaction CREATEvalue 21
path /gnbvs/gnbCuConfig[0]/cuLog[21]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[21]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[21]/moduleIdaction CREATEvalue 22
path /gnbvs/gnbCuConfig[0]/cuLog[22]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[22]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[22]/moduleIdaction CREATEvalue 23
path /gnbvs/gnbCuConfig[0]/cuLog[23]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[23]/logLevelaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/cuLog[23]/moduleIdaction CREATEvalue 24
path /gnbvs/gnbCuConfig[0]/cuLog[24]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[24]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[24]/moduleIdaction CREATEvalue 25
path /gnbvs/gnbCuConfig[0]/cuLog[25]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[25]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[25]/moduleIdaction CREATEvalue 26
path /gnbvs/gnbCuConfig[0]/cuLog[26]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[26]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[26]/moduleIdaction CREATEvalue 27
path /gnbvs/gnbCuConfig[0]/cuLog[27]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[27]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[27]/moduleIdaction CREATEvalue 28
path /gnbvs/gnbCuConfig[0]/cuLog[28]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[28]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[28]/moduleIdaction CREATEvalue 29
path /gnbvs/gnbCuConfig[0]/cuLog[29]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[29]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[29]/moduleIdaction CREATEvalue 30
path /gnbvs/gnbCuConfig[0]/cuLog[2]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[2]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[2]/moduleIdaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/cuLog[30]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[30]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[30]/moduleIdaction CREATEvalue 31
path /gnbvs/gnbCuConfig[0]/cuLog[31]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[31]/logLevelaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/cuLog[31]/moduleIdaction CREATEvalue 32
path /gnbvs/gnbCuConfig[0]/cuLog[32]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[32]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[32]/moduleIdaction CREATEvalue 33
path /gnbvs/gnbCuConfig[0]/cuLog[33]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[33]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[33]/moduleIdaction CREATEvalue 34
path /gnbvs/gnbCuConfig[0]/cuLog[34]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[34]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[34]/moduleIdaction CREATEvalue 35
path /gnbvs/gnbCuConfig[0]/cuLog[35]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[35]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[35]/moduleIdaction CREATEvalue 36
path /gnbvs/gnbCuConfig[0]/cuLog[36]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[36]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[36]/moduleIdaction CREATEvalue 37
path /gnbvs/gnbCuConfig[0]/cuLog[37]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[37]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[37]/moduleIdaction CREATEvalue 38
path /gnbvs/gnbCuConfig[0]/cuLog[38]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[38]/logLevelaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/cuLog[38]/moduleIdaction CREATEvalue 39
path /gnbvs/gnbCuConfig[0]/cuLog[39]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[39]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[39]/moduleIdaction CREATEvalue 40
path /gnbvs/gnbCuConfig[0]/cuLog[3]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[3]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[3]/moduleIdaction CREATEvalue 4
path /gnbvs/gnbCuConfig[0]/cuLog[40]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[40]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[40]/moduleIdaction CREATEvalue 41
path /gnbvs/gnbCuConfig[0]/cuLog[41]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[41]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[41]/moduleIdaction CREATEvalue 42
path /gnbvs/gnbCuConfig[0]/cuLog[42]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[42]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[42]/moduleIdaction CREATEvalue 43
path /gnbvs/gnbCuConfig[0]/cuLog[43]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[43]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[43]/moduleIdaction CREATEvalue 44
path /gnbvs/gnbCuConfig[0]/cuLog[44]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[44]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[44]/moduleIdaction CREATEvalue 45
path /gnbvs/gnbCuConfig[0]/cuLog[45]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[45]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[45]/moduleIdaction CREATEvalue 46
path /gnbvs/gnbCuConfig[0]/cuLog[46]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[46]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[46]/moduleIdaction CREATEvalue 47
path /gnbvs/gnbCuConfig[0]/cuLog[47]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[47]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[47]/moduleIdaction CREATEvalue 48
path /gnbvs/gnbCuConfig[0]/cuLog[48]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[48]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[48]/moduleIdaction CREATEvalue 49
path /gnbvs/gnbCuConfig[0]/cuLog[49]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[49]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[49]/moduleIdaction CREATEvalue 50
path /gnbvs/gnbCuConfig[0]/cuLog[4]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[4]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[4]/moduleIdaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[50]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[50]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[50]/moduleIdaction CREATEvalue 51
path /gnbvs/gnbCuConfig[0]/cuLog[51]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[51]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[51]/moduleIdaction CREATEvalue 52
path /gnbvs/gnbCuConfig[0]/cuLog[52]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[52]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[52]/moduleIdaction CREATEvalue 53
path /gnbvs/gnbCuConfig[0]/cuLog[5]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[5]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[5]/moduleIdaction CREATEvalue 6
path /gnbvs/gnbCuConfig[0]/cuLog[6]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[6]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[6]/moduleIdaction CREATEvalue 7
path /gnbvs/gnbCuConfig[0]/cuLog[7]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[7]/logLevelaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/cuLog[7]/moduleIdaction CREATEvalue 8
path /gnbvs/gnbCuConfig[0]/cuLog[8]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[8]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[8]/moduleIdaction CREATEvalue 9
path /gnbvs/gnbCuConfig[0]/cuLog[9]action CREATE
path /gnbvs/gnbCuConfig[0]/cuLog[9]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/cuLog[9]/moduleIdaction CREATEvalue 10
path /gnbvs/gnbCuConfig[0]/defaultPagingDrxaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/dlDataSplitPrimaryPathaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/dlDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/duIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/duId[0]action CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/enableBinLogaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/endMarkerTimerInMsaction CREATEvalue 2000
path /gnbvs/gnbCuConfig[0]/f1cServerLocalIpAddressaction CREATEvalue 168.168.31.101
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/MCCaction CREATEvalue 460
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/MNCaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarmaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/alarmIdaction CREATEvalue 5121
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/alarmNameaction CREATEvalue ALARM_SLEEPING_CELL_DETECTION
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellDesignatedPrimaryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellReselectionThresholdaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/deriveSsbIdxFromCellaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfigaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecificaction CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/enabledaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/longDrxCycleLengthaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/shortDrxCycleLengthaction CREATEvalue 6
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/shortDrxCycleTimeraction CREATEvalue 4
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecificaction CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/enabledaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/longDrxCycleLengthaction CREATEvalue 7
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/shortDrxCycleLengthaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/shortDrxCycleTimeraction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxEnabledaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/encAlgoaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/encAlgo[0]action CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/configIndexaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/qciaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/reorderingTimerMsaction CREATEvalue 40
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/rlcModeaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/sduDiscardTimerMsaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/snSizeDLaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/snSizeULaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/MCCaction CREATEvalue 460
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/MNCaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/TACaction CREATEvalue 0001
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/idaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFddaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DLaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/nrArfcnaction CREATEvalue 65535
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/nrNumRbaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBandsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/nrFreqBandIndaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/sulFreqBandsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/sulFreqBands[0]action CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/subCarrierSpacingInKhzaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-ULaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/nrArfcnaction CREATEvalue 65535
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/nrNumRbaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBandsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/nrFreqBandIndaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/sulFreqBandsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/sulFreqBands[0]action CREATEvalue 13
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/subCarrierSpacingInKhzaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/noXnHoPresentaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/noXnPresentaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrCellIdentifieraction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrNeighbourCellRelationIdxaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrNeighbourGnbIpAddraction CREATEvalue 1.1.1.1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRGnbIdaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRGnbIdLenaction CREATEvalue 22
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRPhysicalCellIdaction CREATEvalue 29
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/idaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intAlgoaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intAlgo[0]action CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCellsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]/rangeaction CREATEvalue 8
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]/startaction CREATEvalue 300
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCellsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/nRpCIaction CREATEvalue 300
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/offsetCellaction CREATEvalue 24
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/qualMinOffsetCellaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/rxLevMinOffsetCellaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/rxLevMinOffsetCellSulaction CREATEvalue 6
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqReselectionThresholdaction CREATEvalue 20
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSAaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbbaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddModaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNraction CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidationaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdRsrpaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdRsrqaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdSinraction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidationaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdRsrpaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdRsrqaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdSinraction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/numCsiRsResourcesToAverageaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/numSsBlocksToAverageaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeListaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrpOffsetCsiRsaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrpOffsetSsbaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrqOffsetCsiRsaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrqOffsetSsbaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/sinrOffsetCsiRsaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/sinrOffsetSsbaction CREATEvalue 15
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/quantityConfigIndexaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/refFreqCsiRsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/ssbFrequencyaction CREATEvalue 720288
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/ssbSubCarrierSpacingaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectRefIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectTypeaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddModaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/measObjectRefIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNraction CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReportaction CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventIdaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventInculdeBeamMeasurementsaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMaxReportCellaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantityaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/rsrpaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/rsrqaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/sinraction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventReportAmountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventReportIntervalaction CREATEvalue 6
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventRsTypeaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/hysteresisaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/eventA3useWhiteCellListaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/rsrpaction CREATEvalue 40
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/reportOnLeaveaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/timeToTriggeraction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/reportTypeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigRefIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigTypeaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfigaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/configIndexaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/defaultDrbaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/fiveQiaction CREATEvalue 9
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/reorderingTimerMsaction CREATEvalue 100
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/rlcModeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sdapHeaderDLaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sdapHeaderULaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sduDiscardTimerMsaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/snSizeDLaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/snSizeULaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/configIndexaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/defaultDrbaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/fiveQiaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/reorderingTimerMsaction CREATEvalue 100
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/rlcModeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sdapHeaderDLaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sdapHeaderULaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sduDiscardTimerMsaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/snSizeDLaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/snSizeULaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/configIndexaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/defaultDrbaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/fiveQiaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/reorderingTimerMsaction CREATEvalue 100
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/rlcModeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sdapHeaderDLaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sdapHeaderULaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sduDiscardTimerMsaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/snSizeDLaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/snSizeULaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/configIndexaction CREATEvalue 4
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/defaultDrbaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/fiveQiaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/reorderingTimerMsaction CREATEvalue 100
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/rlcModeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sdapHeaderDLaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sdapHeaderULaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sduDiscardTimerMsaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/snSizeDLaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/snSizeULaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/configIndexaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/defaultDrbaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/enableUlOutOfOrderDeliveryaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/fiveQiaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/reorderingTimerMsaction CREATEvalue 100
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/rlcModeaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sdapHeaderDLaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sdapHeaderULaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sduDiscardTimerMsaction CREATEvalue 12
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/snSizeDLaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/snSizeULaction CREATEvalue 18
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/ulDataSplitThresholdInBytesaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/qHystaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/qRxLevMinaction CREATEvalue 22
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/reselectionPriorityaction CREATEvalue 7
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfigaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbConfigInfoaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbConfigInfo/reorderingTimerMsaction CREATEvalue 40
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbIdaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbConfigInfoaction MODIFY
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbConfigInfo/reorderingTimerMsaction CREATEvalue 40
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbIdaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/tReselectionNraction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/ueCapabilityTriggerAfterSMCProcaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/ueInactivityTimerSecaction CREATEvalue 8
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Pointeraction CREATEvalue 11111
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Region-idaction CREATEvalue 1111111
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Set-idaction CREATEvalue 111111101
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/idaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarmaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/alarmIdaction CREATEvalue 5377
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/alarmNameaction CREATEvalue ALARM_AMF_COMM_DOWN
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/alarmIdaction CREATEvalue 5378
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/alarmNameaction CREATEvalue ALARM_NG_SETUP_FAILURE
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]action CREATE
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/alarmIdaction CREATEvalue 5379
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/alarmNameaction CREATEvalue ALARM_EXCESSIVE_RESET_MSGS_WITH_AMF
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbCuConfig[0]/heartBeatIntervalInMsaction CREATEvalue 5000
path /gnbvs/gnbCuConfig[0]/idaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/logFileNameaction CREATEvalue cu
path /gnbvs/gnbCuConfig[0]/logFilePathaction CREATEvalue /opt/faca/log/cu/
path /gnbvs/gnbCuConfig[0]/maxCellsInAggregateaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/maxInboundStreamsaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/maxIncomingConnectionsaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/maxInitAttemptsaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/maxLogFileCountaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/maxLogFileSizeaction CREATEvalue 10000000
path /gnbvs/gnbCuConfig[0]/maxNumPduSessionsaction CREATEvalue 4
path /gnbvs/gnbCuConfig[0]/maxNumRbaction CREATEvalue 5000
path /gnbvs/gnbCuConfig[0]/maxNumUesaction CREATEvalue 1025
path /gnbvs/gnbCuConfig[0]/maxPathRetxaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/msgMaxRetryCountaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/msgRetryIntervalInSecaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/ngpLogaction CREATEvalue 17
path /gnbvs/gnbCuConfig[0]/ngpLog[0]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[0]/logLevelaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/ngpLog[0]/moduleIdaction CREATEvalue 4096
path /gnbvs/gnbCuConfig[0]/ngpLog[10]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[10]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[10]/moduleIdaction CREATEvalue 4106
path /gnbvs/gnbCuConfig[0]/ngpLog[11]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[11]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[11]/moduleIdaction CREATEvalue 4107
path /gnbvs/gnbCuConfig[0]/ngpLog[12]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[12]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[12]/moduleIdaction CREATEvalue 4108
path /gnbvs/gnbCuConfig[0]/ngpLog[13]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[13]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[13]/moduleIdaction CREATEvalue 4109
path /gnbvs/gnbCuConfig[0]/ngpLog[14]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[14]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[14]/moduleIdaction CREATEvalue 4110
path /gnbvs/gnbCuConfig[0]/ngpLog[15]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[15]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[15]/moduleIdaction CREATEvalue 4111
path /gnbvs/gnbCuConfig[0]/ngpLog[16]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[16]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[16]/moduleIdaction CREATEvalue 4115
path /gnbvs/gnbCuConfig[0]/ngpLog[1]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[1]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[1]/moduleIdaction CREATEvalue 4097
path /gnbvs/gnbCuConfig[0]/ngpLog[2]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[2]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[2]/moduleIdaction CREATEvalue 4098
path /gnbvs/gnbCuConfig[0]/ngpLog[3]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[3]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[3]/moduleIdaction CREATEvalue 4099
path /gnbvs/gnbCuConfig[0]/ngpLog[4]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[4]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[4]/moduleIdaction CREATEvalue 4100
path /gnbvs/gnbCuConfig[0]/ngpLog[5]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[5]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[5]/moduleIdaction CREATEvalue 4101
path /gnbvs/gnbCuConfig[0]/ngpLog[6]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[6]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[6]/moduleIdaction CREATEvalue 4102
path /gnbvs/gnbCuConfig[0]/ngpLog[7]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[7]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[7]/moduleIdaction CREATEvalue 4103
path /gnbvs/gnbCuConfig[0]/ngpLog[8]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[8]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[8]/moduleIdaction CREATEvalue 4104
path /gnbvs/gnbCuConfig[0]/ngpLog[9]action CREATE
path /gnbvs/gnbCuConfig[0]/ngpLog[9]/logLevelaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/ngpLog[9]/moduleIdaction CREATEvalue 4105
path /gnbvs/gnbCuConfig[0]/numOutboundStreamsaction CREATEvalue 2
path /gnbvs/gnbCuConfig[0]/pathMgmtConfigaction MODIFY
path /gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoIntervalInSecaction CREATEvalue 60
path /gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoN3Requestsaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoT3ResponseInSecaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/rrcWiresharkDisectoraction MODIFY
path /gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/enableRrcWiresharkDisectoraction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/localAddressaction CREATEvalue 127.0.0.1
path /gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/remoteAddressaction CREATEvalue 127.0.0.1
path /gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/remotePortaction CREATEvalue 9999
path /gnbvs/gnbCuConfig[0]/rtoInitialaction CREATEvalue 3000
path /gnbvs/gnbCuConfig[0]/rtomaxaction CREATEvalue 60000
path /gnbvs/gnbCuConfig[0]/rtominaction CREATEvalue 1000
path /gnbvs/gnbCuConfig[0]/sendUdpPortExtWithErrorIndaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/sliceManagerIpAddressaction CREATEvalue 172.27.36.101
path /gnbvs/gnbCuConfig[0]/sliceManagerPortaction CREATEvalue 4343
path /gnbvs/gnbCuConfig[0]/taConfigaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/taConfig[0]action CREATE
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfoaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]action CREATE
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/MCCaction CREATEvalue 460
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/MNCaction CREATEvalue 11
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/idaction CREATEvalue 0
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/sNSSAIaction CREATEvalue 3
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/sNSSAI[0]action CREATEvalue 16777217
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/sNSSAI[1]action CREATEvalue 16908288
path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/sNSSAI[2]action CREATEvalue 50529801
path /gnbvs/gnbCuConfig[0]/taConfig[0]/tacaction CREATEvalue 0001
path /gnbvs/gnbCuConfig[0]/timeToWaitInSecaction CREATEvalue 5
path /gnbvs/gnbCuConfig[0]/x2cServerLocalIpAddressaction CREATEvalue 168.168.31.201
path /gnbvs/gnbCuConfig[0]/xncClientLocalIpAddressaction CREATEvalue 1
path /gnbvs/gnbCuConfig[0]/xncClientLocalIpAddress[0]action CREATEvalue 168.168.31.101
path /gnbvs/gnbCuConfig[0]/xncServerLocalIpAddressaction CREATEvalue 168.168.31.102
1read for path/gnbvs/gnbCuConfig
1 read for path /gnbvs/gnbCuConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/numOutboundStreams
1read for path/gnbvs/gnbCuConfig[0]/maxInboundStreams
1read for path/gnbvs/gnbCuConfig[0]/maxInitAttempts
1read for path/gnbvs/gnbCuConfig[0]/heartBeatIntervalInMs
1read for path/gnbvs/gnbCuConfig[0]/maxPathRetx
1read for path/gnbvs/gnbCuConfig[0]/rtoInitial
1read for path/gnbvs/gnbCuConfig[0]/rtomin
1read for path/gnbvs/gnbCuConfig[0]/rtomax
1 read for path /gnbvs/gnbCuConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/f1cServerLocalIpAddress
1read for path/gnbvs/gnbCuConfig[0]/xncServerLocalIpAddress
1read for path/gnbvs/gnbCuConfig[0]/x2cServerLocalIpAddress
1read for path/gnbvs/gnbCuConfig[0]/xncClientLocalIpAddress
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/sendUdpPortExtWithErrorInd
1read for path/gnbvs/gnbCuConfig[0]/endMarkerTimerInMs
1read for path/gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoT3ResponseInSec
1read for path/gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoN3Requests
1read for path/gnbvs/gnbCuConfig[0]/pathMgmtConfig/echoIntervalInSec
1 read for path /gnbvs/gnbCuConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/dlDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/dlDataSplitPrimaryPath
1read for path/gnbvs/gnbCuConfig[0]/taConfig
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/taConfig[0]/tac
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/tac
1read for path/gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]
1read for key path/gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/MCC
1 read for path /gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/MNC
1read for path/gnbvs/gnbCuConfig[0]/taConfig[0]/bcastPlmnInfo[0]/sNSSAI
1read for path/gnbvs/gnbCuConfig[0]/defaultPagingDrx
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/sliceManagerIpAddress
1read for path/gnbvs/gnbCuConfig[0]/sliceManagerPort
1read for path/gnbvs/gnbCuConfig[0]/maxNumUes
1read for path/gnbvs/gnbCuConfig[0]/maxNumPduSessions
1read for path/gnbvs/gnbCuConfig[0]/maxNumRb
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/caEnabled
1read for path/gnbvs/gnbCuConfig[0]/maxCellsInAggregate
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/timeToWaitInSec
1read for path/gnbvs/gnbCuConfig[0]/msgRetryIntervalInSec
1read for path/gnbvs/gnbCuConfig[0]/msgMaxRetryCount
1read for path/gnbvs/gnbCuConfig[0]/maxIncomingConnections
1read for path/gnbvs/gnbCuConfig[0]/duId
1read for path/gnbvs/gnbCuConfig[0]/cuAlarm
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]
1read for key path/gnbvs/gnbCuConfig[0]/cuAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/alarmName
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdCount
1 read for path /gnbvs/gnbCuConfig[0]/cuAlarm[0]/thresholdTimeInterval
1 read for path /gnbvs/gnbCuConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/cuLog
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[0]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[0]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[0]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[0]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[1]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[1]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[1]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[1]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[2]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[2]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[2]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[2]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[3]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[3]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[3]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[3]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[4]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[4]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[4]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[4]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[5]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[5]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[5]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[5]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[6]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[6]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[6]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[6]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[7]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[7]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[7]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[7]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[8]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[8]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[8]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[8]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[9]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[9]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[9]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[9]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[10]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[10]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[10]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[10]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[11]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[11]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[11]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[11]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[12]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[12]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[12]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[12]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[13]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[13]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[13]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[13]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[14]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[14]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[14]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[14]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[15]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[15]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[15]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[15]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[16]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[16]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[16]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[16]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[17]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[17]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[17]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[17]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[18]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[18]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[18]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[18]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[19]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[19]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[19]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[19]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[20]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[20]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[20]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[20]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[21]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[21]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[21]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[21]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[22]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[22]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[22]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[22]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[23]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[23]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[23]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[23]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[24]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[24]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[24]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[24]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[25]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[25]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[25]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[25]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[26]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[26]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[26]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[26]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[27]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[27]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[27]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[27]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[28]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[28]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[28]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[28]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[29]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[29]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[29]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[29]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[30]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[30]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[30]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[30]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[31]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[31]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[31]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[31]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[32]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[32]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[32]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[32]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[33]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[33]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[33]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[33]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[34]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[34]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[34]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[34]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[35]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[35]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[35]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[35]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[36]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[36]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[36]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[36]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[37]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[37]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[37]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[37]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[38]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[38]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[38]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[38]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[39]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[39]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[39]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[39]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[40]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[40]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[40]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[40]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[41]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[41]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[41]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[41]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[42]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[42]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[42]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[42]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[43]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[43]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[43]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[43]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[44]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[44]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[44]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[44]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[45]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[45]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[45]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[45]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[46]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[46]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[46]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[46]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[47]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[47]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[47]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[47]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[48]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[48]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[48]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[48]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[49]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[49]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[49]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[49]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[50]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[50]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[50]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[50]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[51]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[51]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[51]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[51]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[52]
1read for key path/gnbvs/gnbCuConfig[0]/cuLog[52]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/cuLog[52]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/cuLog[52]/logLevel
1read for path/gnbvs/gnbCuConfig[0]/ngpLog
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[0]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[0]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[0]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[0]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[1]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[1]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[1]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[1]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[2]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[2]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[2]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[2]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[3]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[3]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[3]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[3]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[4]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[4]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[4]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[4]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[5]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[5]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[5]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[5]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[6]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[6]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[6]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[6]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[7]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[7]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[7]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[7]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[8]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[8]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[8]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[8]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[9]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[9]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[9]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[9]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[10]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[10]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[10]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[10]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[11]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[11]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[11]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[11]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[12]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[12]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[12]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[12]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[13]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[13]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[13]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[13]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[14]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[14]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[14]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[14]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[15]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[15]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[15]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[15]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[16]
1read for key path/gnbvs/gnbCuConfig[0]/ngpLog[16]/moduleId
1 read for path /gnbvs/gnbCuConfig[0]/ngpLog[16]/moduleId
1read for path/gnbvs/gnbCuConfig[0]/ngpLog[16]/logLevel
1 read for path /gnbvs/gnbCuConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/logFilePath
1read for path/gnbvs/gnbCuConfig[0]/logFileName
1read for path/gnbvs/gnbCuConfig[0]/maxLogFileSize
1read for path/gnbvs/gnbCuConfig[0]/maxLogFileCount
1read for path/gnbvs/gnbCuConfig[0]/enableBinLog
1read for path/gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/enableRrcWiresharkDisector
1read for path/gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/localAddress
1read for path/gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/remoteAddress
1read for path/gnbvs/gnbCuConfig[0]/rrcWiresharkDisector/remotePort
1read for path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Region-id
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Set-id
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/AMF-Pointer
1read for path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcMsgRetryIntervalInSec
1read for path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcMsgMaxRetryCount
1read for path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/alarmName
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdLevel
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdCount
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[0]/thresholdTimeInterval
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]
1read for key path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/alarmName
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdLevel
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdCount
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[1]/thresholdTimeInterval
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]
1read for key path/gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/alarmName
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdLevel
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdCount
1 read for path /gnbvs/gnbCuConfig[0]/gnbNgcVsConfig[0]/ngcAlarm[2]/thresholdTimeInterval
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/MCC
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/MNC
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/encAlgo
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intAlgo
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/ueInactivityTimerSec
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellDesignatedPrimary
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/id
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrNeighbourCellRelationIdx
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrCellIdentifier
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/MCC
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/MNC
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRPhysicalCellId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRGnbIdLen
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/targetNRGnbId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/TAC
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/nrArfcn
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/nrFreqBandInd
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/nrFreqBandInd
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/numFreqBands[0]/sulFreqBands
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/subCarrierSpacingInKhz
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-DL/nrNumRb
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/nrArfcn
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/nrFreqBandInd
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/nrFreqBandInd
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/numFreqBands[0]/sulFreqBands
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/subCarrierSpacingInKhz
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeFdd/NR-UL/nrNumRb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/modeTdd
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/nrNeighbourGnbIpAddr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/noXnPresent
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/gnbNrCellCuRelationVsConfig[0]/noXnHoPresent
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxEnabled
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraConfig/eutraNeighbourCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[0]/srbConfigInfo/reorderingTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/srbConfig[1]/srbConfigInfo/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/qci
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/eutraQosConfig[0]/sduDiscardTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/fiveQi
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sduDiscardTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/defaultDrb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sdapHeaderUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[0]/sdapHeaderDL
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/fiveQi
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sduDiscardTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/defaultDrb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sdapHeaderUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[1]/sdapHeaderDL
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/fiveQi
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sduDiscardTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/defaultDrb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sdapHeaderUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[2]/sdapHeaderDL
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/fiveQi
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sduDiscardTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/defaultDrb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sdapHeaderUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[3]/sdapHeaderDL
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/configIndex
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/fiveQi
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/snSizeDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/snSizeUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/ulDataSplitThresholdInBytes
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/enableUlOutOfOrderDelivery
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/rlcMode
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/reorderingTimerMs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sduDiscardTimerMs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/defaultDrb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sdapHeaderUL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/nrQosConfig[4]/sdapHeaderDL
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/siConfig
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/qHyst
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellReselectionThreshold
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/reselectionPriority
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/qRxLevMin
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqReselectionThreshold
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/tReselectionNr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/deriveSsbIdxFromCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/nRpCI
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/nRpCI
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/offsetCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/rxLevMinOffsetCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/rxLevMinOffsetCellSul
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqNeighCells[0]/qualMinOffsetCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]/start
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]/start
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/intraFreqBlackCells[0]/range
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectRefId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectRefId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectType
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/ssbFrequency
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/ssbSubCarrierSpacing
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrpOffsetSsb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrqOffsetSsb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/sinrOffsetSsb
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrpOffsetCsiRs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/rsrqOffsetCsiRs
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/qOffsetRangeList/sinrOffsetCsiRs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdRsrp
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdRsrq
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshSsBlocksConsolidation/thresholdSinr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/numSsBlocksToAverage
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/refFreqCsiRs
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdRsrp
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdRsrq
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/absThreshCsiRsConsolidation/thresholdSinr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/numCsiRsResourcesToAverage
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectNr/quantityConfigIndex
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/measObjectToAddMod[0]/measObjectEutra
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigRefId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/measObjectRefId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigRefId
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigType
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/reportType
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/periodicReport
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityA1
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityA2
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/rsrp
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/rsrp
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/rsrq
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/sinr
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityOffsetA3/eventA3useWhiteCellList
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/measTriggerQuantityA4
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/reportOnLeave
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/hysteresis
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/timeToTrigger
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventRsType
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventReportInterval
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventReportAmount
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/rsrp
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/rsrq
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMeasReportQuantity/sinr
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventMaxReportCell
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigNr/eventReport/eventInculdeBeamMeasurements
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/measConfigSA/measConfigEmbb/reportConfigToAddMod[0]/reportConfigIRAT
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/enabled
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/longDrxCycleLength
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/shortDrxCycleLength
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigDataSpecific/shortDrxCycleTimer
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/enabled
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/longDrxCycleLength
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/shortDrxCycleLength
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/drxConfig/drxConfigAnrSpecific/shortDrxCycleTimer
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/ueCapabilityTriggerAfterSMCProc
1read for path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]
1read for key path/gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/alarmId
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/alarmName
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdLevel
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdCount
1 read for path /gnbvs/gnbCuConfig[0]/gnbCellCuVsConfig[0]/cellAlarm[0]/thresholdTimeInterval
    me
        managed_element
            top
            m_object_class = ME
            m_object_instance = 0
        m_id = 0
        m_vendor_name = RSYS
        m_user_defined_state = DRAFT
        m_sw_version = 2.0
        m_dn_prefix = gnb
        m_user_label = ME
        m_location_name = BLR
        managed_by_list.count = 0
        managed_element_type_list_list.count = 0
        vs_data_container_list.count = 0
            measurements
            measurements_list_list.count = 0
            measurement_subtree
            measurement_control_list.count = 1
                    measurement_control
                        top_grp
                        m_id = 0
                        measurement_control_grp
                        m_p_m_administrative_state = 0
                        m_default_file_location = /opt/faca/log/cu/
                        m_default_sampling_number = 10
                        m_default_file_based_gp = 900
                        m_default_file_reporting_period = 15
                    measurement_reader_list.count = 0
            threshold_monitoring_capability_list.count = 0
            threshold_monitor_list.count = 0
            fm_subtree
            fm_control_list.count = 1
                    fm_control
                        top_grp
                        m_id = 0
                        fm_control_grp
                        m_administrative_state = 0
            alarm_list_list.count = 1
                    alarm_list
                        top_grp
                        m_id = 0
                        alarm_list_grp
                        alarm_record_grp_list.count = 0
    gnbcu_function_list.count = 1
            gnbcu_function
                managed_function
                    top
                    m_object_class = RNCFunction
                    m_object_instance = 0
                m_id = 0
                m_user_label = GNBCUFunction
                    vnf_parameters_list
                    m_vnf_instance_id = 0
                    m_vnfd_id = 0
                    m_flavour_id = 1
                    m_auto_scalable = 0
                    pee_parameters_list
                    m_site_identification = TECH PARK
                    m_site_latitude.value = 129781
                    m_site_latitude.fraction_digits = 
                    m_site_longitude.value = 776653
                    m_site_longitude.fraction_digits = 
                    m_site_description = Prestige Tech Park
                    m_equipment_type = 0
                    m_environment_type = 1
                    m_power_interface = 0
                vs_data_container_list.count = 4
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 0
                        m_id = 0
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_sctp_vs_config.yang
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 1
                        m_id = 1
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_log_vs_config.yang
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 2
                        m_id = 2
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_cu_vs_config.yang
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 3
                        m_id = 3
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_egtp_vs_config.yang
                    measurements
                    measurements_list_list.count = 0
            m_g_nbcu_name = CU1
            m_g_nb_id = 0
            m_g_nb_id_length = 
            m_gnb_index =  
            p_lmn_id_list.count = 1
                    p_lmn_id
                    m_mcc = 460
                    m_mnc = 11
            m_g_nb_type = 0
            ep_ng_c_list.count = 1
                    ep_ng_c
                        ep_xx
                            ep_rp
                                top
                                m_object_class = EP_NgC
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = EP_NgC
                            m_far_end_entity = 1
                            vs_data_container_list.count = 1
                                    vs_data_container
                                        top
                                        m_object_class = vsDataContainer
                                        m_object_instance = 0
                                    m_id = 0
                                    m_vs_data_type = 2019-12-31
                                    m_vs_data_format_version = gnb_ngc_vs_config.yang
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 192.168.120.25
                        m_local_vlan_id = 7
                        m_remote_address = 192.168.120.139
                        gnb_ngc_vs_config
                        m_id = 5
                            a_mfi
                            m_amf__region_id = 1111111
                            m_amf__set_id = 111111101
                            m_amf__pointer = 11111
                        ngc_alarm_list.count = 3
                                ngc_alarm
                                m_alarm_id = 5377
                                m_alarm_name = ALARM_AMF_COMM_DOWN
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                ngc_alarm
                                m_alarm_id = 5378
                                m_alarm_name = ALARM_NG_SETUP_FAILURE
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                ngc_alarm
                                m_alarm_id = 5379
                                m_alarm_name = ALARM_EXCESSIVE_RESET_MSGS_WITH_AMF
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
            ep_ng_u_list.count = 1
                    ep_ng_u
                        ep_xx
                            ep_rp
                                top
                                m_object_class = EP_NgU
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = EP_NgU
                            m_far_end_entity = 1
                            vs_data_container_list.count = 0
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 5.5.5.13
                        m_local_vlan_id = 7
                        m_remote_address = 1.1.1.1
            ep_xn_u_list.count = 1
                    ep_xn_u
                        ep_xx
                            ep_rp
                                top
                                m_object_class = EP_XnU
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = EP_XnU
                            m_far_end_entity = 1
                            vs_data_container_list.count = 0
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 192.168.120.16
                        m_local_vlan_id = 7
                        m_remote_address = 1.1.1.1
            ep_x2_u_list.count = 0
            ep_s1_u_list.count = 0
            ep_f1_u_list.count = 1
                    ep_f1_u
                        ep_xx
                            ep_rp
                                top
                                m_object_class = EP_F1U
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = EP_F1U
                            m_far_end_entity = 1
                            vs_data_container_list.count = 0
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 168.168.31.101
                        m_local_vlan_id = 7
                        m_remote_address = 1.1.1.1
            nr_cell_cu_list.count = 1
                    nr_cell_cu
                        managed_function
                            top
                            m_object_class = RNCFunction
                            m_object_instance = 0
                        m_id = 0
                        m_user_label = NRCellCU
                            vnf_parameters_list
                            m_vnf_instance_id = 1
                            m_vnfd_id = 1
                            m_flavour_id = 1
                            m_auto_scalable = 0
                            pee_parameters_list
                            m_site_identification = Tech Park
                            m_site_latitude.value = 129781
                            m_site_latitude.fraction_digits = 
                            m_site_longitude.value = 776653
                            m_site_longitude.fraction_digits = 
                            m_site_description = prestige tech park
                            m_equipment_type = 0
                            m_environment_type = 1
                            m_power_interface = 0
                        vs_data_container_list.count = 1
                                vs_data_container
                                    top
                                    m_object_class = vsDataContainer
                                    m_object_instance = 0
                                m_id = 0
                                m_vs_data_type = 2019-12-31
                                m_vs_data_format_version = gnb_cell_cu_vs_config.yang
                            measurements
                            measurements_list_list.count = 0
                    m_n_ci = 000000001
                    m_cell_index =  
                    p_lmn_id_list.count = 1
                            p_lmn_id
                            m_mcc = 460
                            m_mnc = 11
                    s_nssai_list.count = 1
                        s_nssai_list.value[0] = 2
                    m_r_rm_policy_type = 16
                    m_r_rm_policy_nssi_id = NssidPolicy
                    m_r_rm_policy_ratio = 
                    m_r_rm_policy = rRMPolicy
                        r_rm_policy_ratio2
                            rrm_policy_ratio2
                            m_group_id = 12
                            s_nssai_list.count = 1
                                s_nssai_list.value[0] = 3
                            m_quota_type = 1
                            m_r_rm_policy_max_ration = 
                            m_r_rm_policy_margin_max_ration = 2
                            m_r_rm_policy_min_ration = 
                            m_r_rm_policy_margin_min_ration = 7
                    nr_cell_relation_list.count = 1
                            nr_cell_relation
                                managed_function
                                    top
                                    m_object_class = RNCFunction
                                    m_object_instance = 0
                                m_id = 0
                                m_user_label = NRCellCU
                                    vnf_parameters_list
                                    m_vnf_instance_id = 1
                                    m_vnfd_id = 1
                                    m_flavour_id = 1
                                    m_auto_scalable = 0
                                    pee_parameters_list
                                    m_site_identification = Tech Park
                                    m_site_latitude.value = 129781
                                    m_site_latitude.fraction_digits = 
                                    m_site_longitude.value = 776653
                                    m_site_longitude.fraction_digits = 
                                    m_site_description = prestige tech park
                                    m_equipment_type = 0
                                    m_environment_type = 1
                                    m_power_interface = 0
                                vs_data_container_list.count = 0
                                    measurements
                                    measurements_list_list.count = 0
                                nr_cell_relation_grp
                                m_is_remove_allowed = 1
                                m_is_ho_allowed = 1
                                gnb_nr_cell_cu_relation_vs_config
                                m_id = 0
                                    nr_neighbour_cell_config
                                    m_nr_neighbour_cell_relation_idx = 1
                                    m_nr_cell_identifier = 2
                                        p_lmn_id
                                        m_mcc = 460
                                        m_mnc = 11
                                    m_target_nr_physical_cell_id = 29
                                    m_target_nr_gnb_id_len = 
                                    m_target_nr_gnb_id = 2
                                    m_tac = 0001
                                        nr_mode_type
                                        type = 0
                                            NR_MODE_TYPE_FDD
                                                mode_fdd
                                                    nr_mode_fdd
                                                        nr_dl
                                                            nr_freq_info
                                                            m_nr_arfcn = 65535
                                                            num_freq_bands_list.count = 1
                                                                    num_freq_bands
                                                                    m_nr_freq_band_ind = 
                                                                    sul_freq_bands_list.count = 1
                                                                        sul_freq_bands_list.value[0] = 
                                                            nr_tx_bandwidth
                                                            m_sub_carrier_spacing_in_khz = 0
                                                            m_nr_num_rb = 11
                                                        nr_ul
                                                            nr_freq_info
                                                            m_nr_arfcn = 65535
                                                            num_freq_bands_list.count = 1
                                                                    num_freq_bands
                                                                    m_nr_freq_band_ind = 
                                                                    sul_freq_bands_list.count = 1
                                                                        sul_freq_bands_list.value[0] = 
                                                            nr_tx_bandwidth
                                                            m_sub_carrier_spacing_in_khz = 0
                                                            m_nr_num_rb = 11
                                    m_nr_neighbour_gnb_ip_addr = 1.1.1.1
                                    m_no_xn_present = 1
                                    m_no_xn_ho_present = 1
                    m_s_cell_ulconfigured = 0
                        gnb_cell_cu_vs_config
                            p_lmn_id
                            m_mcc = 460
                            m_mnc = 11
                        m_id = 0
                            prefered_security_algorithm
                            enc_algo_list.count = 1
                                enc_algo_list.value[0] = 0
                            int_algo_list.count = 1
                                int_algo_list.value[0] = 1
                        m_ue_inactivity_timer_sec = 8
                        m_cell_designated_primary = 0
                        gnb_nr_cell_cu_relation_vs_config_list.count = 1
                                gnb_nr_cell_cu_relation_vs_config
                                m_id = 0
                                    nr_neighbour_cell_config
                                    m_nr_neighbour_cell_relation_idx = 1
                                    m_nr_cell_identifier = 2
                                        p_lmn_id
                                        m_mcc = 460
                                        m_mnc = 11
                                    m_target_nr_physical_cell_id = 29
                                    m_target_nr_gnb_id_len = 
                                    m_target_nr_gnb_id = 2
                                    m_tac = 0001
                                        nr_mode_type
                                        type = 0
                                            NR_MODE_TYPE_FDD
                                                mode_fdd
                                                    nr_mode_fdd
                                                        nr_dl
                                                            nr_freq_info
                                                            m_nr_arfcn = 65535
                                                            num_freq_bands_list.count = 1
                                                                    num_freq_bands
                                                                    m_nr_freq_band_ind = 
                                                                    sul_freq_bands_list.count = 1
                                                                        sul_freq_bands_list.value[0] = 
                                                            nr_tx_bandwidth
                                                            m_sub_carrier_spacing_in_khz = 0
                                                            m_nr_num_rb = 11
                                                        nr_ul
                                                            nr_freq_info
                                                            m_nr_arfcn = 65535
                                                            num_freq_bands_list.count = 1
                                                                    num_freq_bands
                                                                    m_nr_freq_band_ind = 
                                                                    sul_freq_bands_list.count = 1
                                                                        sul_freq_bands_list.value[0] = 
                                                            nr_tx_bandwidth
                                                            m_sub_carrier_spacing_in_khz = 0
                                                            m_nr_num_rb = 11
                                    m_nr_neighbour_gnb_ip_addr = 1.1.1.1
                                    m_no_xn_present = 1
                                    m_no_xn_ho_present = 1
                        m_drx_enabled = 0
                            eutra_config
                            eutra_neighbour_cell_list.count = 0
                        srb_config_list.count = 2
                                srb_config
                                m_srb_id = 1
                                    srb_config_info
                                    m_reordering_timer_ms = 40
                                srb_config
                                m_srb_id = 2
                                    srb_config_info
                                    m_reordering_timer_ms = 40
                        eutra_qos_config_list.count = 1
                                eutra_qos_config
                                m_config_index = 
                                    eutra_qos_config_info
                                    m_qci = 
                                        pdcp_config
                                        m_sn_size_dl = 
                                        m_sn_size_ul = 
                                        m_ul_data_split_threshold_in_bytes = 1
                                        m_enable_ul_out_of_order_delivery = 0
                                        m_rlc_mode = 2
                                        m_reordering_timer_ms = 40
                                        m_sdu_discard_timer_ms = 15
                        nr_qos_config_list.count = 5
                                qos_cfg
                                m_config_index = 
                                m_five_qi = 	
                                    pdcp_config
                                    m_sn_size_dl = 
                                    m_sn_size_ul = 
                                    m_ul_data_split_threshold_in_bytes = 1
                                    m_enable_ul_out_of_order_delivery = 0
                                    m_rlc_mode = 1
                                    m_reordering_timer_ms = 100
                                    m_sdu_discard_timer_ms = 12
                                    sdap_config
                                    m_default_drb = 1
                                    m_sdap_header_ul = 1
                                    m_sdap_header_dl = 1
                                qos_cfg
                                m_config_index = 
                                m_five_qi = 
                                    pdcp_config
                                    m_sn_size_dl = 
                                    m_sn_size_ul = 
                                    m_ul_data_split_threshold_in_bytes = 1
                                    m_enable_ul_out_of_order_delivery = 0
                                    m_rlc_mode = 1
                                    m_reordering_timer_ms = 100
                                    m_sdu_discard_timer_ms = 12
                                    sdap_config
                                    m_default_drb = 0
                                    m_sdap_header_ul = 1
                                    m_sdap_header_dl = 1
                                qos_cfg
                                m_config_index = 
                                m_five_qi =  
                                    pdcp_config
                                    m_sn_size_dl = 
                                    m_sn_size_ul = 
                                    m_ul_data_split_threshold_in_bytes = 1
                                    m_enable_ul_out_of_order_delivery = 0
                                    m_rlc_mode = 1
                                    m_reordering_timer_ms = 100
                                    m_sdu_discard_timer_ms = 12
                                    sdap_config
                                    m_default_drb = 0
                                    m_sdap_header_ul = 1
                                    m_sdap_header_dl = 1
                                qos_cfg
                                m_config_index = 
                                m_five_qi = 
                                    pdcp_config
                                    m_sn_size_dl = 
                                    m_sn_size_ul = 
                                    m_ul_data_split_threshold_in_bytes = 1
                                    m_enable_ul_out_of_order_delivery = 0
                                    m_rlc_mode = 1
                                    m_reordering_timer_ms = 100
                                    m_sdu_discard_timer_ms = 12
                                    sdap_config
                                    m_default_drb = 0
                                    m_sdap_header_ul = 1
                                    m_sdap_header_dl = 1
                                qos_cfg
                                m_config_index = 
                                m_five_qi = 
                                    pdcp_config
                                    m_sn_size_dl = 
                                    m_sn_size_ul = 
                                    m_ul_data_split_threshold_in_bytes = 1
                                    m_enable_ul_out_of_order_delivery = 0
                                    m_rlc_mode = 1
                                    m_reordering_timer_ms = 100
                                    m_sdu_discard_timer_ms = 12
                                    sdap_config
                                    m_default_drb = 0
                                    m_sdap_header_ul = 1
                                    m_sdap_header_dl = 1
                        si_config_list.count = 0
                            cell_reselection_info
                            m_q_hyst = 
                                cell_reselection_serving_freq_info
                                m_cell_reselection_threshold = 
                                m_reselection_priority = 
                                intra_freq_cell_reselection_info
                                m_q_rx_lev_min = 22
                                m_intra_freq_reselection_threshold = 20
                                m_t_reselection_nr = 0
                                m_derive_ssb_idx_from_cell = 1
                        intra_freq_neigh_cells_list.count = 1
                                intra_freq_neigh_cells
                                m_n_rp_ci = 300
                                m_offset_cell = 24
                                m_rx_lev_min_offset_cell = 
                                m_rx_lev_min_offset_cell_sul = 
                                m_qual_min_offset_cell = 
                        intra_freq_black_cells_list.count = 1
                                intra_freq_black_cells
                                m_start = 300
                                m_range = 8
                            gnb_cell_cu_meas_vs_config
                                meas_config_sa
                                    meas_config_embb
                                        gnb_cell_cu_meas_vs_config_info
                                        meas_object_to_add_mod_list.count = 1
                                                meas_object_to_add_mod
                                                m_meas_object_ref_id = 
                                                m_meas_object_type = 0
                                                    meas_object
                                                    type = 0
                                                        MEAS_OBJECT_MEAS_NR
                                                            meas_object_nr
                                                            m_ssb_frequency = 720288
                                                            m_ssb_sub_carrier_spacing = 1
                                                                q_offset_range_list
                                                                    q_offset_range_info
                                                                    m_rsrp_offset_ssb = 15
                                                                    m_rsrq_offset_ssb = 15
                                                                    m_sinr_offset_ssb = 15
                                                                    m_rsrp_offset_csi_rs = 15
                                                                    m_rsrq_offset_csi_rs = 15
                                                                    m_sinr_offset_csi_rs = 15
                                                                abs_thresh_ss_blocks_consolidation
                                                                    threshold_nr
                                                                    m_threshold_rsrp = 
                                                                    m_threshold_rsrq = 
                                                                    m_threshold_sinr = 
                                                            m_num_ss_blocks_to_average = 2
                                                            m_ref_freq_csi_rs = 1
                                                                abs_thresh_csi_rs_consolidation
                                                                    threshold_nr
                                                                    m_threshold_rsrp = 
                                                                    m_threshold_rsrq = 
                                                                    m_threshold_sinr = 
                                                            m_num_csi_rs_resources_to_average = 2
                                                            m_quantity_config_index = 1
                                        report_config_to_add_mod_list.count = 1
                                                report_config_to_add_mod
                                                m_meas_object_ref_id = 
                                                m_report_config_ref_id = 
                                                m_report_config_type = 0
                                                    report_config
                                                    type = 0
                                                        REPORT_CONFIG_CFG_NR
                                                            report_config_nr
                                                            m_report_type = 1
                                                                config_type
                                                                type = 1
                                                                    CONFIG_TYPE_CFG_EVENT_TRIGGERED
                                                                        event_report
                                                                        m_event_id = 2
                                                                            event
                                                                            type = 2
                                                                                EVENT_A3
                                                                                    meas_trigger_quantity_offset_a3
                                                                                        meas_trigger_quantity_offset
                                                                                            trigger_offset
                                                                                            type = 0
                                                                                                TRIGGER_OFFSET_MEAS_RSRP
                                                                                                m_rsrp = (
                                                                                        event_a3
                                                                                        m_event_a3use_white_cell_list = 0
                                                                            common_event_attribute
                                                                            m_report_on_leave = 0
                                                                            m_hysteresis =  
                                                                            m_time_to_trigger = 1
                                                                            event_report_config
                                                                            m_event_rs_type = 0
                                                                            m_event_report_interval = 6
                                                                            m_event_report_amount = 0
                                                                                event_meas_report_quantity
                                                                                    report_quantity
                                                                                    m_rsrp = 1
                                                                                    m_rsrq = 0
                                                                                    m_sinr = 0
                                                                            m_event_max_report_cell = 
                                                                            m_event_inculde_beam_measurements = 0
                            drx_config_info
                                drx_config
                                    drx_config_data_specific
                                    m_enabled = 1
                                        gnb_cell_drx_config_info
                                        m_long_drx_cycle_length = 7
                                        m_short_drx_cycle_length = 3
                                        m_short_drx_cycle_timer = 
                                    drx_config_anr_specific
                                    m_enabled = 1
                                        gnb_cell_drx_config_info
                                        m_long_drx_cycle_length = 11
                                        m_short_drx_cycle_length = 6
                                        m_short_drx_cycle_timer = 
                        m_ue_capability_trigger_after_smc_proc = 1
                        cell_alarm_list.count = 1
                                cell_alarm
                                m_alarm_id = 5121
                                m_alarm_name = ALARM_SLEEPING_CELL_DETECTION
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                gnb_cu_vs_config
                    pdcp_config_up
                    m_dl_data_split_threshold_in_bytes = 1
                    m_dl_data_split_primary_path = 0
                ta_config_list.count = 1
                        ta_config
                        m_tac = 0001
                        bcast_plmn_info_list.count = 1
                                bcast_plmn_info
                                m_id = 0
                                    p_lmn_id
                                    m_mcc = 460
                                    m_mnc = 11
                                s_nssai_list.count = 3
                                    s_nssai_list.value[0] = 16777217
                                    s_nssai_list.value[1] = 16908288
                                    s_nssai_list.value[2] = 50529801
                m_default_paging_drx = 0
                    end_point_config
                    m_slice_manager_ip_address = 172.27.36.101
                    m_slice_manager_port = 4343
                m_max_num_ues = 1025
                m_max_num_pdu_sessions = 4
                m_max_num_rb = 5000
                    ca_config
                    m_ca_enabled = 0
                    m_max_cells_in_aggregate = 5
                    sctp_user_config
                    m_time_to_wait_in_sec = 5
                    m_msg_retry_interval_in_sec = 5
                    m_msg_max_retry_count = 
                    m_max_incoming_connections = 3
                du_id_list.count = 1
                    du_id_list.value[0] = 1
                cu_alarm_list.count = 1
                        cu_alarm
                        m_alarm_id = 4609
                        m_alarm_name = ALARM_ALL_AMF_COMM_DOWN
                            alarm_threshold
                            m_threshold_level = 0
                            m_threshold_count = 0
                            m_threshold_time_interval = 600
                gnb_egtp_vs_config
                m_send_udp_port_ext_with_error_ind = 1
                m_end_marker_timer_in_ms = 2000
                    path_mgmt_config
                    m_echo_t3_response_in_sec = 1
                    m_echo_n3_requests = 1
                    m_echo_interval_in_sec = 60
                gnb_log_vs_config_cu
                    logging_level_config_cu
                    cu_log_list.count = 53
                            cu_log
                            m_module_id = 1
                            m_log_level = 5
                            cu_log
                            m_module_id = 2
                            m_log_level = 2
                            cu_log
                            m_module_id = 3
                            m_log_level = 2
                            cu_log
                            m_module_id = 4
                            m_log_level = 5
                            cu_log
                            m_module_id = 5
                            m_log_level = 5
                            cu_log
                            m_module_id = 6
                            m_log_level = 5
                            cu_log
                            m_module_id = 7
                            m_log_level = 5
                            cu_log
                            m_module_id = 8
                            m_log_level = 5
                            cu_log
                            m_module_id = 9
                            m_log_level = 2
                            cu_log
                            m_module_id = 10
                            m_log_level = 2
                            cu_log
                            m_module_id = 11
                            m_log_level = 2
                            cu_log
                            m_module_id = 12
                            m_log_level = 2
                            cu_log
                            m_module_id = 13
                            m_log_level = 2
                            cu_log
                            m_module_id = 14
                            m_log_level = 2
                            cu_log
                            m_module_id = 15
                            m_log_level = 2
                            cu_log
                            m_module_id = 16
                            m_log_level = 2
                            cu_log
                            m_module_id = 17
                            m_log_level = 2
                            cu_log
                            m_module_id = 18
                            m_log_level = 2
                            cu_log
                            m_module_id = 19
                            m_log_level = 2
                            cu_log
                            m_module_id = 20
                            m_log_level = 2
                            cu_log
                            m_module_id = 21
                            m_log_level = 2
                            cu_log
                            m_module_id = 22
                            m_log_level = 2
                            cu_log
                            m_module_id = 23
                            m_log_level = 2
                            cu_log
                            m_module_id = 24
                            m_log_level = 1
                            cu_log
                            m_module_id = 25
                            m_log_level = 2
                            cu_log
                            m_module_id = 26
                            m_log_level = 2
                            cu_log
                            m_module_id = 27
                            m_log_level = 2
                            cu_log
                            m_module_id = 28
                            m_log_level = 2
                            cu_log
                            m_module_id = 29
                            m_log_level = 2
                            cu_log
                            m_module_id = 30
                            m_log_level = 2
                            cu_log
                            m_module_id = 31
                            m_log_level = 2
                            cu_log
                            m_module_id = 32
                            m_log_level = 1
                            cu_log
                            m_module_id = 33
                            m_log_level = 2
                            cu_log
                            m_module_id = 34
                            m_log_level = 5
                            cu_log
                            m_module_id = 35
                            m_log_level = 2
                            cu_log
                            m_module_id = 36
                            m_log_level = 2
                            cu_log
                            m_module_id = 37
                            m_log_level = 2
                            cu_log
                            m_module_id = 38
                            m_log_level = 2
                            cu_log
                            m_module_id = 39
                            m_log_level = 1
                            cu_log
                            m_module_id = 40
                            m_log_level = 2
                            cu_log
                            m_module_id = 41
                            m_log_level = 2
                            cu_log
                            m_module_id = 42
                            m_log_level = 2
                            cu_log
                            m_module_id = 43
                            m_log_level = 2
                            cu_log
                            m_module_id = 44
                            m_log_level = 2
                            cu_log
                            m_module_id = 45
                            m_log_level = 2
                            cu_log
                            m_module_id = 46
                            m_log_level = 2
                            cu_log
                            m_module_id = 47
                            m_log_level = 2
                            cu_log
                            m_module_id = 48
                            m_log_level = 2
                            cu_log
                            m_module_id = 49
                            m_log_level = 2
                            cu_log
                            m_module_id = 50
                            m_log_level = 2
                            cu_log
                            m_module_id = 51
                            m_log_level = 2
                            cu_log
                            m_module_id = 52
                            m_log_level = 2
                            cu_log
                            m_module_id = 53
                            m_log_level = 2
                    ngp_log_list.count = 17
                            ngp_log
                            m_module_id = 4096
                            m_log_level = 1
                            ngp_log
                            m_module_id = 4097
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4098
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4099
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4100
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4101
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4102
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4103
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4104
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4105
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4106
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4107
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4108
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4109
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4110
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4111
                            m_log_level = 2
                            ngp_log
                            m_module_id = 4115
                            m_log_level = 2
                    common_logging_config
                    m_log_file_path = /opt/faca/log/cu/
                    m_log_file_name = cu
                    m_max_log_file_size = 10000000
                    m_max_log_file_count = 
                    m_enable_bin_log = 0
                    rrc_wireshark_disector
                    m_enable_rrc_wireshark_disector = 0
                    m_local_address = 127.0.0.1
                    m_remote_address = 127.0.0.1
                    m_remote_port = 9999
                gnb_sctp_vs_cfg
                m_num_outbound_streams = 2
                m_max_inbound_streams = 2
                m_max_init_attempts = 5
                m_heart_beat_interval_in_ms = 5000
                m_max_path_retx = 1
                m_rto_initial = 3000
                m_rtomin = 1000
                m_rtomax = 60000
                    gnb_sctp_transport_config
                    m_f1c_server_local_ip_address = 168.168.31.101
                    m_xnc_server_local_ip_address = 168.168.31.102
                    m_x2c_server_local_ip_address = 168.168.31.201
                    xnc_client_local_ip_address_list.count = 1
                        xnc_client_local_ip_address_list.value[0] = 168.168.31.101
GNB_CONFIG_REQ_PRINT_START
GNB ID = 0
GNB ID LEN = 22
GNB INDEX = 0
SCTP_CONFIG_PRESENCE = True
SCTP_CONFIG
    NUM_OUTBOUND_STREAMS = 2
    MAX_INBOUND_STREAMS = 2
    MAX_INIT_ATTEMPTS = 5
    HEARTBEAT_INTERVAL = 5000
    MAX_PATH_RETX = 1
    RTO_INITIAL = 3000
    RTO_MIN = 1000
    RTO_MAX = 60000
EGTPU_CONFIG_PRESENCE = True
EGTPU_CONFIG_INFO
    SEND_UDP_PORT_EXT_WITH_ERROR_IND = True
    END_MARKER_TIMER_MS = 2000
    PATH_MGMT_CONFIG_PRESENT = True
    PATH_MANAGEMENT_CONFIG
        ECHO_T3_RESPONSE_SEC = 1
        ECHO_N3_REQUESTS = 
        ECHO_INTERVAL_SEC = 60
PDCP_CONFIG_UP_PRESENCE = True
PDCP_CONFIG_UP
    DL_DATA_SPLIT_THRESHOLD_PRESENT = True
    DL_DATA_SPLIT_THRESHOLD_BYTES = 100
    DL_DATA_SPLIT_PRIMARY_PATH = 0
GNB_EGTPU_TRANSPORT_CONFIG_PRESENCE = True
GNB_EGTPU_TRANSPORT_CONFIG
    EGTPU_UPPER_TRANSPORT_CONFIG
    NUM_TRANSPORT_IP_ADDRESS = 1
        IPv4 ADDRESS = 5.5.5.13
    EGTPU_LOWER_TRANSPORT_CONFIG
    NUM_TRANSPORT_IP_ADDRESS = 1
        IPv4 ADDRESS = 168.168.31.101
TA_CONFIG_PRESENCE = True
TA_CONFIG
    NUM_TA_CONFIG_INFO = 1
    TA_CONFIG_INFO
        TAC = 1
        NUM_BROADCAST_PLMN_INFO = 1
        BROADCAST_PLMN_INFO
            PLMN_ID
                MCC = 4_6_0
                NUM_MNC_DIGITS = 2
                MNC = 1
            TAC = 3
            S_NSSAI
                SST = 1
                SD_PRESENT = True
                SD = 1
            S_NSSAI
                SST = 1
                SD_PRESENT = True
                SD = 131072
            S_NSSAI
                SST = 3
                SD_PRESENT = True
                SD = 198153
SLICE_MGR_ENDPOINT_PRESENCE = True
TRANSPORT_ENDPOINT
    TRANSPORT_ENDPOINT_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 172.27.36.101
    PORT_NUM = 4343
MAX_NUM_UES_PRESENCE = True
MAX_NUM_UES = 1025
MAX_NUM_RBS_PRESENCE = True
MAX_NUM_RBS = 5000
MAX_NUM_PDU_SESSIONS_PRESENCE = True
MAX_NUM_PDU_SESSIONS = 4
CA_CONFIG_PRESENCE = True
CA_CONFIG
    CA_ENABLED = False
    MAX_CELLS_IN_AGGREGATE = 5
GNB_SCTP_TRANSPORT_CONFIG_PRESENCE = True
CA_CONFIG
    GNB_F1C_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 168.168.31.101
    GNB_XNC_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 168.168.31.102
    NUM_XN_CLIENT_LOCAL_IP_ADDRESS = 
        IP_ADDR_TYPE_IPV4
        ADDR = 168.168.31.101
    GNB_X2C_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 
SCTP_USER_CONFIG_PRESENCE = True
SCTP_USER_CONFIG
    TIME_TO_WAIT_SEC = 5
    MSG_RETRY_INTERVAL_SEC = 5
    MSG_MAX_RETRY_COUNT = 3
    MAX_INCOMING_CONNECTIONS = 3
LOGGING_CONFIG_PRESENCE = False
DU_CONFIG_LIST
    NUM_DU_CONFIG = 
    DU CONFIG ACTION = 1
    DU ID = 1
AMF_CONFIG_LIST
    NUM_AMF_CONFIG = 
    AMF_CONFIG_ACTION = 1
    NGC_INDEX = 0
    GNB_SCTP_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 192.168.120.25
    AMF_SCTP_IP_ADDRESS
        IP_ADDR_TYPE_IPV4
        ADDR = 192.168.120.139
DEFAULT_PAGING_DRX_PRESENCE = True
DEFAULT_PAGING_DRX = 0
RRC_WIRESHARK_DISECTOR_CONFIG = False
CELL_CONFIG
    NUM OF CELL CONFIG = 
    PLMN_ID = 46011
    NR_CELL_IDENTIFIER = 1
    CELL_INDEX = 0
    EUTRA_NEIGHBOUR_CELL_LIST
        NUM OF EUTRA NEIGHBOUR CELL = 0
    IS_UE_CAPABILITY_TRIGGERED_AFTER_SMC_PROC = TRUE
    NR_NEIGHBOUR_CELL_LIST
        NUM_OF_NR_NEIGHBOUR_CELL_ADD_MOD_INFO = 1
        NR_CGI
            PLMN_ID = 46011
            NR_CELL_ID
                GNB_ID
                    GNB_ID = 2
                    GNB_ID_LEN = 
                CELL_IDENTITY = 2
        GNB_ID
            GNB_ID = 2
            GNB_ID_LEN = 
        NUM_OF_NR_NEIGHBOUR_CELL_DELETE_INFO = 0
    SRB_CONFIG
        NUM_SRB_CONFIG_INFO = 2
        SRB_ID = 1
        REORDERING_TIMER_PRESENT = True
        REORDERING_TIMER_MS = 40
        SRB_ID = 2
        REORDERING_TIMER_PRESENT = True
        REORDERING_TIMER_MS = 40
    BLACK_CELLS_CONFIG
        NUM OF INTRA FREQ BLACK CELL = 
        START = 300
        RANGE_PRESENT = TRUE
        RANGE = 8
    SA_MEAS_CONFIG_LIST
        NUM OF SA MEAS CONFIG = 
        MEAS_CONFIG
            MEAS_PROFULE_TYPE = 0
            NUM_OF_MEAS_OBJECT_INFO = 
            MEAS_OBJ_REF_ID = 
            MEAS_OBJ_TYPE = 0
            NUM_OF_REPORT_CONFIG_INFO = 
            MEAS_OBJ_REF_ID = 
            REPORT_CONFIG_REF_ID = 
            REPORT_CONFIG_TYPE = 0
    NUM_OF_SA_MEAS_CONFIG =  
    S_CELL_UL_CONFIGURED = 0
    IS_DRX_EANBLED = False
    DRX_CONFIG_INFO
        IS_DRX_CONFIG_DATA_SPECIFIC_PRESENT = TRUE
        DRX_CONFIG
            LONG_DRX_CYCLE_LENGTH = 7
            IS_DRX_SHORT_CYCLE_PRESENT = TRUE
            SHORT_DRX_CYCLE_LENGTH = 3
            SHORT_DRX_CYCLE_TIMER = 
        IS_DRX_CONFIG_ANR_SPECIFIC_PRESENT = TRUE
        DRX_CONFIG
            LONG_DRX_CYCLE_LENGTH = 11
            IS_DRX_SHORT_CYCLE_PRESENT = TRUE
            SHORT_DRX_CYCLE_LENGTH = 6
            SHORT_DRX_CYCLE_TIMER = 
GNB_CONFIG_REQ_PRINT_END
GNB_CONFIG_RES
STATUS = 0
send_cfg_rsp:
    me
    gnbcu_function_list.count = 0
#############################################################################################################################
                  PDCP RX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  PDCP TX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  SDAP RX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  SDAP TX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
                  SDAP TX INST UE STATISTICS
#############################################################################################################################

#############################################################################################################################
#############################################################################################################################
                  EGTPU UPPER RX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  EGTPU LOWER TX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  EGTPU LOWER RX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
#############################################################################################################################
                  EGTPU UPPER TX [0] STATISTICS
#############################################################################################################################
#############################################################################################################################
```
* DU
```
====== Start Time ======
2021-08-20-16:10:36-CST
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet 168.168.31.102/16 brd 168.168.255.255 scope global lo:DU
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp61s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 64:4c:36:12:46:a0 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::664c:36ff:fe12:46a0/64 scope link 
       valid_lft forever preferred_lft forever
3: enp61s0f1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a1 brd ff:ff:ff:ff:ff:ff
4: enp63s0f0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a4 brd ff:ff:ff:ff:ff:ff
5: enp63s0f1: <BROADCAST,MULTICAST> mtu 1500 qdisc noop state DOWN group default qlen 1000
    link/ether 64:4c:36:12:46:a5 brd ff:ff:ff:ff:ff:ff
6: enp97s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 28:c1:3c:95:6f:c0 brd ff:ff:ff:ff:ff:ff
    inet6 fe80::2ac1:3cff:fe95:6fc0/64 scope link 
       valid_lft forever preferred_lft forever
7: enp97s0f1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 28:c1:3c:95:6f:c1 brd ff:ff:ff:ff:ff:ff
    inet 168.168.31.101/16 brd 168.168.255.255 scope global enp97s0f1:CULow
       valid_lft forever preferred_lft forever
8: enp97s0f2: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN group default qlen 1000
    link/ether 28:c1:3c:95:6f:c2 brd ff:ff:ff:ff:ff:ff
    inet 192.168.82.111/24 brd 192.168.82.255 scope global enp97s0f2
       valid_lft forever preferred_lft forever
9: enp97s0f3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 28:c1:3c:95:6f:c3 brd ff:ff:ff:ff:ff:ff
    inet 10.60.7.56/23 brd 10.60.7.255 scope global dynamic enp97s0f3
       valid_lft 2111sec preferred_lft 2111sec
    inet6 fe80::2ac1:3cff:fe95:6fc3/64 scope link 
       valid_lft forever preferred_lft forever
10: enp134s0f0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1600 qdisc mq state UP group default qlen 1000
    link/ether 40:a6:b7:3c:52:6c brd ff:ff:ff:ff:ff:ff
    inet 192.168.120.25/24 brd 192.168.120.255 scope global enp134s0f0:NgC
       valid_lft forever preferred_lft forever
    inet 5.5.5.13/8 brd 5.255.255.255 scope global enp134s0f0:NgU
       valid_lft forever preferred_lft forever
    inet6 fe80::42a6:b7ff:fe3c:526c/64 scope link 
       valid_lft forever preferred_lft forever
11: enp134s0f1: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 40:a6:b7:3c:52:6d brd ff:ff:ff:ff:ff:ff
    inet 192.168.19.49/24 brd 192.168.19.255 scope global enp134s0f1
       valid_lft forever preferred_lft forever
    inet6 fe80::42a6:b7ff:fe3c:526d/64 scope link 
       valid_lft forever preferred_lft forever
215: enp97s2f2: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP group default qlen 1000
    link/ether 82:5c:29:0d:11:9e brd ff:ff:ff:ff:ff:ff
    inet6 fe80::805c:29ff:fe0d:119e/64 scope link 
       valid_lft forever preferred_lft forever
====== Start to initiate DU ======
kill: usage: kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [sigspec]
rm -rf \
    *.o *.a *.xso *.fxs *.xsd *.ccl \
    *_proto.h \
    ./confd-cdb *.db aaa_cdb.* \
    rollback*/rollback{0..999} rollback{0..999} \
    cli-history \
    host.key host.cert ssh-keydir \
    *.log confderr.log.* \
    etc *.access \
    running.invalid global.data _tmp* local.data
rm ../../yang/*.fxs
rm: cannot remove ‘../../yang/*.fxs’: No such file or directory
make: [clean] Error 1 (ignored)
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_nr_nrm.fxs  ../../yang/_3gpp_nr_nrm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_measurements.fxs  ../../yang/_3gpp_common_measurements.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_fm.fxs  ../../yang/_3gpp_common_fm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_tm.fxs  ../../yang/_3gpp_common_tm.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_ep_rp.fxs  ../../yang/_3gpp_common_ep_rp.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_managed_element.fxs  ../../yang/_3gpp_common_managed_element.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_managed_function.fxs  ../../yang/_3gpp_common_managed_function.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_nrm_types.fxs  ../../yang/_3gpp_common_nrm_types.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_top.fxs  ../../yang/_3gpp_common_top.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/_3gpp_common_vs_data_container.fxs  ../../yang/_3gpp_common_vs_data_container.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_cell_du_vs_config.fxs  ../../yang/gnb_cell_du_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_du_vs_config.fxs  ../../yang/gnb_du_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_log_vs_config.fxs  ../../yang/gnb_log_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_sctp_vs_config.fxs  ../../yang/gnb_sctp_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_vs_config.fxs  ../../yang/gnb_vs_config.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_du_vs_features.fxs  ../../yang/gnb_du_vs_features.yang
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confdc --fail-on-warnings --yangpath ../../yang --no-features -c -o ../../yang/gnb_du_vs_alarms.fxs  ../../yang/gnb_du_vs_alarms.yang
mkdir -p ./confd-cdb
cp /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/var/confd/cdb/aaa_init.xml ./confd-cdb
ln -s /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd/ssh ssh-keydir
FXS build complete
/home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/bin/confd -c ../config/confd.conf --addloadpath /home/faca/confd_basic_7.3/confd-basic-7.3.linux.x86_64/../confd/etc/confd
+ netconf-console --host=127.0.0.1 --port=2100 /opt/faca/FlexXDU/q1_du_bin/bin/../config/bbu_du.xml
<?xml version="1.0" encoding="UTF-8"?>
<rpc-reply xmlns="urn:ietf:params:xml:ns:netconf:base:1.0" message-id="1">
  <ok/>
</rpc-reply>
+ cd -
/opt/faca/FlexXDU/q1_du_bin/bin
====== Start to active DU ======
Setting memory parameters for kernel socket buffers
net.core.rmem_max = 705032704
net.core.rmem_default = 705032704
net.core.wmem_max = 705032704
net.core.wmem_default = 705032704
HugePages_Total:      23
HugePages_Free:        1
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:    1048576 kB
start eNodeB
INFO: 2021/08/20 16:10:44 log.go:32: license center in normal mode
INFO: 2021/08/20 16:10:44 log.go:32: checking license...
l6Tm5whDX0kCCLVwbrn5P+BLKbbQy1QMvDlYSAHETte0UYBSlY7U6qQnfkwEnl0f8XGs/xm4gbuzzQyEv+e5Ih8HRb8+HHAFpqrb3FPl+myg9wu3wgxWsBcACO/ZE38iVmyEn56qeyc6fcdzqtMa4JyABAunkWjOpyhPRGno6l1kQ39z7Kg5guCXQaAJ+2SkQxMR4Uzy75abRhzo1rhXIz1LS2S2qJ0wZ5N2s0grh8qYouNuzOElOLlyP7llUSBzUq8MAzzBxeiWPOQYUGdQg721QZn3qLr8VDlhuv7+7ybzuwa6Prly3Jm1azkfi6kswG44cbiUgQH7TyNv8RiODg==INFO: 2021/08/20 16:10:44 main.go:176: This is a linux based OS
INFO: 2021/08/20 16:10:44 log.go:32: Lzf0148MIK_4VTBhwT1f7YQY2fMoR2UOvPMZfWchhbw=
INFO: 2021/08/20 16:10:44 main.go:113: number of maxium node:3
INFO: 2021/08/20 16:10:44 main.go:119: license actication date:20210818
INFO: 2021/08/20 16:10:44 main.go:126: license expiration date:20220818
INFO: 2021/08/20 16:10:44 log.go:32: license check passed
EAL: Detected 40 lcore(s)
EAL: Detected 1 NUMA nodes
EAL: Auto-detected process type: SECONDARY
EAL: Multi-process socket /var/run/dpdk/wls0/mp_socket_93754_48f9f2598544ac
EAL: Selected IOVA mode 'PA'
Calling rte_eal_init: gnodeb -c3 --proc-type=auto --file-prefix wls0 -w 0000:00:06.0 --iova-mode=pa 
EAL: Probing VFIO support...
wls_lib: Open wls0 (DPDK memzone)
wls_lib: WLS_Open 0x4bf600000
wls_lib: link: 1 <-> 0
wls_lib: Mode 1
wls_lib: WLS shared management memzone: wls0
Opening WLS_device: 0x4bf610520
wls_lib: hugePageSize on the system is 1073741824
wls_lib: WLS_Alloc [1063256064] bytes
wls_lib: Connecting to remote peer ...
wls_lib: Connected to remote peer
wls_lib: Memory zone already reserved

 *************** 
 WLS memory: 480000000, 0
Global Memory Info: 
mtDynMemSz[0]: [0x0000000480400000]
mtDynMemSz[1]: [0x0000000480400000]
mtDynMemSz[2]: [0x0000000480400000]
mtDynMemSz[3]: [0x0000000480400000]
mtDynMemSz[4]: [0x0000000480400000]
mtDynMemSz[5]: [0x0000000480400000]
Starting Address of Bkt Entry [0]: [0x0000000480400000], memSize[0]
Starting Address of Bkt Entry [1]: [0x0000000480400000], memSize[0]
Starting Address of Bkt Entry [2]: [0x0000000480400000], memSize[0]
Starting Address of Bkt Entry [3]: [0x0000000480400000], memSize[0]
Starting Address of Bkt Entry [4]: [0x0000000480400000], memSize[0]
Starting Address of Bkt Entry [5]: [0x0000000480400000], memSize[0]
[20/08/2021 16:10:46.858671][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.858786][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.858861][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.858931][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.858990][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.859052][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
send EVT_OAM_START_REQUEST
on_init from App:
oam_capability_ind:
    me
        managed_element
        managed_by_list.count = 0
        managed_element_type_list_list.count = 0
        vs_data_container_list.count = 0
    gnbdu_function_list.count = 0
    pm_capability
    me_id = 0
    job_id = 0
    vendor_name = 
    user_label = 
    sw_version = 
    begin_date = 
    begin_time = 
    begin_date_time = 
    begin_date_ist = 
    begin_time_ist = 
    begin_date_time_ist = 
    end_date = 
    end_time = 
    end_date_time = 
    end_date_ist = 
    end_time_ist = 
    end_date_time_ist = 
    capability_per_category_list.count = 14
            capability_per_category
            m_category_id = 301
            m_category_name = MAC.Rach
            counters_list.count = 5
                    counters
                    m_counter_id = 3010001
                    m_counter_name = RACH.PreambleDedCell
                    counter_value = 0
                    counters
                    m_counter_id = 3010002
                    m_counter_name = RACH.PreambleACell
                    counter_value = 0
                    counters
                    m_counter_id = 3010004
                    m_counter_name = RACH.PreambleDed.Ssb
                    counter_value = 0
                    counters
                    m_counter_id = 3010005
                    m_counter_name = RACH.PreambleA.Ssb
                    counter_value = 0
                    counters
                    m_counter_id = 3010008
                    m_counter_name = gnb.RACH.UsageAvg
                    counter_value = 0
            capability_per_category
            m_category_id = 302
            m_category_name = MAC.cqiReport
            counters_list.count = 52
                    counters
                    m_counter_id = 3020001
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020017
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020033
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020002
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020018
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020034
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020003
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020019
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020035
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020004
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020020
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020036
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020005
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020021
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020037
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020006
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020022
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020038
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020007
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020023
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020039
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020008
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020024
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020040
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020009
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020025
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020041
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020010
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020026
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020042
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020011
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020027
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020043
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020012
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020028
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020044
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020013
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020029
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020045
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020014
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020030
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020046
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020015
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020031
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020047
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020016
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable1
                    counter_value = 0
                    counters
                    m_counter_id = 3020032
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable2
                    counter_value = 0
                    counters
                    m_counter_id = 3020048
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable3
                    counter_value = 0
                    counters
                    m_counter_id = 3020049
                    m_counter_name = wbCqiDist.Avg
                    counter_value = 0
                    counters
                    m_counter_id = 3020050
                    m_counter_name = wbCqiDist.Max
                    counter_value = 0
                    counters
                    m_counter_id = 3020051
                    m_counter_name = wbCqiDist.Min
                    counter_value = 0
                    counters
                    m_counter_id = 3020052
                    m_counter_name = wbCqiDist.Erasure
                    counter_value = 0
            capability_per_category
            m_category_id = 303
            m_category_name = MAC.cqiReportVoNR
            counters_list.count = 52
                    counters
                    m_counter_id = 3030001
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030017
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030033
                    m_counter_name = CARR.WBCQIDist.BinCQI0.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030002
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030018
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030034
                    m_counter_name = CARR.WBCQIDist.BinCQI1.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030003
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030019
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030035
                    m_counter_name = CARR.WBCQIDist.BinCQI2.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030004
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030020
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030036
                    m_counter_name = CARR.WBCQIDist.BinCQI3.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030005
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030021
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030037
                    m_counter_name = CARR.WBCQIDist.BinCQI4.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030006
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030022
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030038
                    m_counter_name = CARR.WBCQIDist.BinCQI5.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030007
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030023
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030039
                    m_counter_name = CARR.WBCQIDist.BinCQI6.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030008
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030024
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030040
                    m_counter_name = CARR.WBCQIDist.BinCQI7.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030009
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030025
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030041
                    m_counter_name = CARR.WBCQIDist.BinCQI8.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030010
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030026
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030042
                    m_counter_name = CARR.WBCQIDist.BinCQI9.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030011
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030027
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030043
                    m_counter_name = CARR.WBCQIDist.BinCQI10.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030012
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030028
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030044
                    m_counter_name = CARR.WBCQIDist.BinCQI11.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030013
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030029
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030045
                    m_counter_name = CARR.WBCQIDist.BinCQI12.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030014
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030030
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030046
                    m_counter_name = CARR.WBCQIDist.BinCQI13.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030015
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030031
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030047
                    m_counter_name = CARR.WBCQIDist.BinCQI14.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030016
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030032
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030048
                    m_counter_name = CARR.WBCQIDist.BinCQI15.BinTable3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3030049
                    m_counter_name = wbCqiDist.Avg.VONR
                    counter_value = 0
                    counters
                    m_counter_id = 3030050
                    m_counter_name = wbCqiDist.Max.VONR
                    counter_value = 0
                    counters
                    m_counter_id = 3030051
                    m_counter_name = wbCqiDist.Min.VONR
                    counter_value = 0
                    counters
                    m_counter_id = 3030052
                    m_counter_name = wbCqiDist.Erasure.VONR
                    counter_value = 0
            capability_per_category
            m_category_id = 305
            m_category_name = MAC.dlMCS
            counters_list.count = 96
                    counters
                    m_counter_id = 3050001
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS0
                    counter_value = 0
                    counters
                    m_counter_id = 3050033
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS0
                    counter_value = 0
                    counters
                    m_counter_id = 3050065
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS0
                    counter_value = 0
                    counters
                    m_counter_id = 3050002
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS1
                    counter_value = 0
                    counters
                    m_counter_id = 3050034
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS1
                    counter_value = 0
                    counters
                    m_counter_id = 3050066
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS1
                    counter_value = 0
                    counters
                    m_counter_id = 3050003
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS2
                    counter_value = 0
                    counters
                    m_counter_id = 3050035
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS2
                    counter_value = 0
                    counters
                    m_counter_id = 3050067
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS2
                    counter_value = 0
                    counters
                    m_counter_id = 3050004
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS3
                    counter_value = 0
                    counters
                    m_counter_id = 3050036
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS3
                    counter_value = 0
                    counters
                    m_counter_id = 3050068
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS3
                    counter_value = 0
                    counters
                    m_counter_id = 3050005
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS4
                    counter_value = 0
                    counters
                    m_counter_id = 3050037
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS4
                    counter_value = 0
                    counters
                    m_counter_id = 3050069
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS4
                    counter_value = 0
                    counters
                    m_counter_id = 3050006
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS5
                    counter_value = 0
                    counters
                    m_counter_id = 3050038
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS5
                    counter_value = 0
                    counters
                    m_counter_id = 3050070
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS5
                    counter_value = 0
                    counters
                    m_counter_id = 3050007
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS6
                    counter_value = 0
                    counters
                    m_counter_id = 3050039
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS6
                    counter_value = 0
                    counters
                    m_counter_id = 3050071
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS6
                    counter_value = 0
                    counters
                    m_counter_id = 3050008
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS7
                    counter_value = 0
                    counters
                    m_counter_id = 3050040
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS7
                    counter_value = 0
                    counters
                    m_counter_id = 3050072
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS7
                    counter_value = 0
                    counters
                    m_counter_id = 3050009
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS8
                    counter_value = 0
                    counters
                    m_counter_id = 3050041
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS8
                    counter_value = 0
                    counters
                    m_counter_id = 3050073
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS8
                    counter_value = 0
                    counters
                    m_counter_id = 3050010
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS9
                    counter_value = 0
                    counters
                    m_counter_id = 3050042
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS9
                    counter_value = 0
                    counters
                    m_counter_id = 3050074
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS9
                    counter_value = 0
                    counters
                    m_counter_id = 3050011
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS10
                    counter_value = 0
                    counters
                    m_counter_id = 3050043
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS10
                    counter_value = 0
                    counters
                    m_counter_id = 3050075
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS10
                    counter_value = 0
                    counters
                    m_counter_id = 3050012
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS11
                    counter_value = 0
                    counters
                    m_counter_id = 3050044
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS11
                    counter_value = 0
                    counters
                    m_counter_id = 3050076
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS11
                    counter_value = 0
                    counters
                    m_counter_id = 3050013
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS12
                    counter_value = 0
                    counters
                    m_counter_id = 3050045
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS12
                    counter_value = 0
                    counters
                    m_counter_id = 3050077
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS12
                    counter_value = 0
                    counters
                    m_counter_id = 3050014
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS13
                    counter_value = 0
                    counters
                    m_counter_id = 3050046
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS13
                    counter_value = 0
                    counters
                    m_counter_id = 3050078
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS13
                    counter_value = 0
                    counters
                    m_counter_id = 3050015
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS14
                    counter_value = 0
                    counters
                    m_counter_id = 3050047
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS14
                    counter_value = 0
                    counters
                    m_counter_id = 3050079
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS14
                    counter_value = 0
                    counters
                    m_counter_id = 3050016
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS15
                    counter_value = 0
                    counters
                    m_counter_id = 3050048
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS15
                    counter_value = 0
                    counters
                    m_counter_id = 3050080
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS15
                    counter_value = 0
                    counters
                    m_counter_id = 3050017
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS16
                    counter_value = 0
                    counters
                    m_counter_id = 3050049
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS16
                    counter_value = 0
                    counters
                    m_counter_id = 3050081
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS16
                    counter_value = 0
                    counters
                    m_counter_id = 3050018
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS17
                    counter_value = 0
                    counters
                    m_counter_id = 3050050
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS17
                    counter_value = 0
                    counters
                    m_counter_id = 3050082
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS17
                    counter_value = 0
                    counters
                    m_counter_id = 3050019
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS18
                    counter_value = 0
                    counters
                    m_counter_id = 3050051
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS18
                    counter_value = 0
                    counters
                    m_counter_id = 3050083
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS18
                    counter_value = 0
                    counters
                    m_counter_id = 3050020
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS19
                    counter_value = 0
                    counters
                    m_counter_id = 3050052
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS19
                    counter_value = 0
                    counters
                    m_counter_id = 3050084
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS19
                    counter_value = 0
                    counters
                    m_counter_id = 3050021
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS20
                    counter_value = 0
                    counters
                    m_counter_id = 3050053
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS20
                    counter_value = 0
                    counters
                    m_counter_id = 3050085
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS20
                    counter_value = 0
                    counters
                    m_counter_id = 3050022
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS21
                    counter_value = 0
                    counters
                    m_counter_id = 3050054
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS21
                    counter_value = 0
                    counters
                    m_counter_id = 3050086
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS21
                    counter_value = 0
                    counters
                    m_counter_id = 3050023
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS22
                    counter_value = 0
                    counters
                    m_counter_id = 3050055
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS22
                    counter_value = 0
                    counters
                    m_counter_id = 3050087
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS22
                    counter_value = 0
                    counters
                    m_counter_id = 3050024
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS23
                    counter_value = 0
                    counters
                    m_counter_id = 3050056
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS23
                    counter_value = 0
                    counters
                    m_counter_id = 3050088
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS23
                    counter_value = 0
                    counters
                    m_counter_id = 3050025
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS24
                    counter_value = 0
                    counters
                    m_counter_id = 3050057
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS24
                    counter_value = 0
                    counters
                    m_counter_id = 3050089
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS24
                    counter_value = 0
                    counters
                    m_counter_id = 3050026
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS25
                    counter_value = 0
                    counters
                    m_counter_id = 3050058
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS25
                    counter_value = 0
                    counters
                    m_counter_id = 3050090
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS25
                    counter_value = 0
                    counters
                    m_counter_id = 3050027
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS26
                    counter_value = 0
                    counters
                    m_counter_id = 3050059
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS26
                    counter_value = 0
                    counters
                    m_counter_id = 3050091
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS26
                    counter_value = 0
                    counters
                    m_counter_id = 3050028
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS27
                    counter_value = 0
                    counters
                    m_counter_id = 3050060
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS27
                    counter_value = 0
                    counters
                    m_counter_id = 3050092
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS27
                    counter_value = 0
                    counters
                    m_counter_id = 3050029
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS28
                    counter_value = 0
                    counters
                    m_counter_id = 3050061
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS28
                    counter_value = 0
                    counters
                    m_counter_id = 3050093
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS28
                    counter_value = 0
                    counters
                    m_counter_id = 3050030
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS29
                    counter_value = 0
                    counters
                    m_counter_id = 3050062
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS29
                    counter_value = 0
                    counters
                    m_counter_id = 3050094
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS29
                    counter_value = 0
                    counters
                    m_counter_id = 3050031
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS30
                    counter_value = 0
                    counters
                    m_counter_id = 3050063
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS30
                    counter_value = 0
                    counters
                    m_counter_id = 3050095
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS30
                    counter_value = 0
                    counters
                    m_counter_id = 3050032
                    m_counter_name = CARR.PDSCHMCSDist.BinTable1.BinMCS31
                    counter_value = 0
                    counters
                    m_counter_id = 3050064
                    m_counter_name = CARR.PDSCHMCSDist.BinTable2.BinMCS31
                    counter_value = 0
                    counters
                    m_counter_id = 3050096
                    m_counter_name = CARR.PDSCHMCSDist.BinTable3.BinMCS31
                    counter_value = 0
            capability_per_category
            m_category_id = 306
            m_category_name = MAC.ulMCS
            counters_list.count = 64
                    counters
                    m_counter_id = 3060001
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS0
                    counter_value = 0
                    counters
                    m_counter_id = 3060033
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS0
                    counter_value = 0
                    counters
                    m_counter_id = 3060002
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS1
                    counter_value = 0
                    counters
                    m_counter_id = 3060034
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS1
                    counter_value = 0
                    counters
                    m_counter_id = 3060003
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS2
                    counter_value = 0
                    counters
                    m_counter_id = 3060035
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS2
                    counter_value = 0
                    counters
                    m_counter_id = 3060004
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS3
                    counter_value = 0
                    counters
                    m_counter_id = 3060036
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS3
                    counter_value = 0
                    counters
                    m_counter_id = 3060005
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS4
                    counter_value = 0
                    counters
                    m_counter_id = 3060037
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS4
                    counter_value = 0
                    counters
                    m_counter_id = 3060006
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS5
                    counter_value = 0
                    counters
                    m_counter_id = 3060038
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS5
                    counter_value = 0
                    counters
                    m_counter_id = 3060007
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS6
                    counter_value = 0
                    counters
                    m_counter_id = 3060039
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS6
                    counter_value = 0
                    counters
                    m_counter_id = 3060008
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS7
                    counter_value = 0
                    counters
                    m_counter_id = 3060040
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS7
                    counter_value = 0
                    counters
                    m_counter_id = 3060009
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS8
                    counter_value = 0
                    counters
                    m_counter_id = 3060041
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS8
                    counter_value = 0
                    counters
                    m_counter_id = 3060010
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS9
                    counter_value = 0
                    counters
                    m_counter_id = 3060042
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS9
                    counter_value = 0
                    counters
                    m_counter_id = 3060011
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS10
                    counter_value = 0
                    counters
                    m_counter_id = 3060043
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS10
                    counter_value = 0
                    counters
                    m_counter_id = 3060012
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS11
                    counter_value = 0
                    counters
                    m_counter_id = 3060044
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS11
                    counter_value = 0
                    counters
                    m_counter_id = 3060013
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS12
                    counter_value = 0
                    counters
                    m_counter_id = 3060045
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS12
                    counter_value = 0
                    counters
                    m_counter_id = 3060014
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS13
                    counter_value = 0
                    counters
                    m_counter_id = 3060046
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS13
                    counter_value = 0
                    counters
                    m_counter_id = 3060015
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS14
                    counter_value = 0
                    counters
                    m_counter_id = 3060047
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS14
                    counter_value = 0
                    counters
                    m_counter_id = 3060016
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS15
                    counter_value = 0
                    counters
                    m_counter_id = 3060048
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS15
                    counter_value = 0
                    counters
                    m_counter_id = 3060017
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS16
                    counter_value = 0
                    counters
                    m_counter_id = 3060049
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS16
                    counter_value = 0
                    counters
                    m_counter_id = 3060018
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS17
                    counter_value = 0
                    counters
                    m_counter_id = 3060050
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS17
                    counter_value = 0
                    counters
                    m_counter_id = 3060019
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS18
                    counter_value = 0
                    counters
                    m_counter_id = 3060051
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS18
                    counter_value = 0
                    counters
                    m_counter_id = 3060020
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS19
                    counter_value = 0
                    counters
                    m_counter_id = 3060052
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS19
                    counter_value = 0
                    counters
                    m_counter_id = 3060021
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS20
                    counter_value = 0
                    counters
                    m_counter_id = 3060053
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS20
                    counter_value = 0
                    counters
                    m_counter_id = 3060022
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS21
                    counter_value = 0
                    counters
                    m_counter_id = 3060054
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS21
                    counter_value = 0
                    counters
                    m_counter_id = 3060023
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS22
                    counter_value = 0
                    counters
                    m_counter_id = 3060055
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS22
                    counter_value = 0
                    counters
                    m_counter_id = 3060024
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS23
                    counter_value = 0
                    counters
                    m_counter_id = 3060056
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS23
                    counter_value = 0
                    counters
                    m_counter_id = 3060025
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS24
                    counter_value = 0
                    counters
                    m_counter_id = 3060057
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS24
                    counter_value = 0
                    counters
                    m_counter_id = 3060026
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS25
                    counter_value = 0
                    counters
                    m_counter_id = 3060058
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS25
                    counter_value = 0
                    counters
                    m_counter_id = 3060027
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS26
                    counter_value = 0
                    counters
                    m_counter_id = 3060059
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS26
                    counter_value = 0
                    counters
                    m_counter_id = 3060028
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS27
                    counter_value = 0
                    counters
                    m_counter_id = 3060060
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS27
                    counter_value = 0
                    counters
                    m_counter_id = 3060029
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS28
                    counter_value = 0
                    counters
                    m_counter_id = 3060061
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS28
                    counter_value = 0
                    counters
                    m_counter_id = 3060030
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS29
                    counter_value = 0
                    counters
                    m_counter_id = 3060062
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS29
                    counter_value = 0
                    counters
                    m_counter_id = 3060031
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS30
                    counter_value = 0
                    counters
                    m_counter_id = 3060063
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS30
                    counter_value = 0
                    counters
                    m_counter_id = 3060032
                    m_counter_name = CARR.PUSCHMCSDist.BinTable1.BinMCS31
                    counter_value = 0
                    counters
                    m_counter_id = 3060064
                    m_counter_name = CARR.PUSCHMCSDist.BinTable2.BinMCS31
                    counter_value = 0
            capability_per_category
            m_category_id = 309
            m_category_name = MAC.downlinkTB
            counters_list.count = 21
                    counters
                    m_counter_id = 3090001
                    m_counter_name = TB.TotNbrDlInitial.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3090002
                    m_counter_name = TB.TotNbrDlInitial.Qpsk
                    counter_value = 0
                    counters
                    m_counter_id = 3090003
                    m_counter_name = TB.TotNbrDlInitial.16Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090004
                    m_counter_name = TB.TotNbrDlInitial.64Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090005
                    m_counter_name = TB.TotNbrDlInitial.256Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090006
                    m_counter_name = TB.IntialErrNbrDl.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3090007
                    m_counter_name = TB.IntialErrNbrDl.Qpsk
                    counter_value = 0
                    counters
                    m_counter_id = 3090008
                    m_counter_name = TB.IntialErrNbrDl.16Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090009
                    m_counter_name = TB.IntialErrNbrDl.64Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090010
                    m_counter_name = TB.IntialErrNbrDl.256Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3090011
                    m_counter_name = TB.TotNbrDl.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3090012
                    m_counter_name = TB.TotNbrDl.1
                    counter_value = 0
                    counters
                    m_counter_id = 3090013
                    m_counter_name = TB.TotNbrDl.2
                    counter_value = 0
                    counters
                    m_counter_id = 3090014
                    m_counter_name = TB.TotNbrDl.3
                    counter_value = 0
                    counters
                    m_counter_id = 3090015
                    m_counter_name = TB.TotNbrDl.4
                    counter_value = 0
                    counters
                    m_counter_id = 3090016
                    m_counter_name = TB.ErrTotalNbrDl.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3090017
                    m_counter_name = TB.ErrTotalNbrDl.1
                    counter_value = 0
                    counters
                    m_counter_id = 3090018
                    m_counter_name = TB.ErrTotalNbrDl.2
                    counter_value = 0
                    counters
                    m_counter_id = 3090019
                    m_counter_name = TB.ErrTotalNbrDl.3
                    counter_value = 0
                    counters
                    m_counter_id = 3090020
                    m_counter_name = TB.ErrTotalNbrDl.4
                    counter_value = 0
                    counters
                    m_counter_id = 3090021
                    m_counter_name = TB.dlresidualErrorTBTotal
                    counter_value = 0
            capability_per_category
            m_category_id = 310
            m_category_name = MAC.downlinkTB.VoNR
            counters_list.count = 21
                    counters
                    m_counter_id = 3100001
                    m_counter_name = TB.TotNbrDlInitial.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100002
                    m_counter_name = TB.TotNbrDlInitial.Qpsk.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100003
                    m_counter_name = TB.TotNbrDlInitial.16Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100004
                    m_counter_name = TB.TotNbrDlInitial.64Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100005
                    m_counter_name = TB.TotNbrDlInitial.256Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100006
                    m_counter_name = TB.IntialErrNbrDl.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100007
                    m_counter_name = TB.IntialErrNbrDl.Qpsk.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100008
                    m_counter_name = TB.IntialErrNbrDl.16Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100009
                    m_counter_name = TB.IntialErrNbrDl.64Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100010
                    m_counter_name = TB.IntialErrNbrDl.256Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100011
                    m_counter_name = TB.TotNbrDl.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100012
                    m_counter_name = TB.TotNbrDl.1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100013
                    m_counter_name = TB.TotNbrDl.2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100014
                    m_counter_name = TB.TotNbrDl.3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100015
                    m_counter_name = TB.TotNbrDl.4.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100016
                    m_counter_name = TB.ErrTotalNbrDl.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100017
                    m_counter_name = TB.ErrTotalNbrDl.1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100018
                    m_counter_name = TB.ErrTotalNbrDl.2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100019
                    m_counter_name = TB.ErrTotalNbrDl.3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100020
                    m_counter_name = TB.ErrTotalNbrDl.4.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3100021
                    m_counter_name = TB.dlresidualErrorTBTotal.VoNR
                    counter_value = 0
            capability_per_category
            m_category_id = 311
            m_category_name = MAC.uplinkTB
            counters_list.count = 21
                    counters
                    m_counter_id = 3110001
                    m_counter_name = TB.TotNbrULInitial.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3110002
                    m_counter_name = TB.TotNbrULInitial.Qpsk
                    counter_value = 0
                    counters
                    m_counter_id = 3110003
                    m_counter_name = TB.TotNbrULInitial.16Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110004
                    m_counter_name = TB.TotNbrULInitial.64Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110005
                    m_counter_name = TB.TotNbrULInitial.256Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110006
                    m_counter_name = TB.IntialErrNbrUL.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3110007
                    m_counter_name = TB.IntialErrNbrUL.Qpsk
                    counter_value = 0
                    counters
                    m_counter_id = 3110008
                    m_counter_name = TB.IntialErrNbrUL.16Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110009
                    m_counter_name = TB.IntialErrNbrUL.64Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110010
                    m_counter_name = TB.IntialErrNbrUL.256Qam
                    counter_value = 0
                    counters
                    m_counter_id = 3110011
                    m_counter_name = TB.TotNbrUl.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3110012
                    m_counter_name = TB.TotNbrUl.1
                    counter_value = 0
                    counters
                    m_counter_id = 3110013
                    m_counter_name = TB.TotNbrUl.2
                    counter_value = 0
                    counters
                    m_counter_id = 3110014
                    m_counter_name = TB.TotNbrUl.3
                    counter_value = 0
                    counters
                    m_counter_id = 3110015
                    m_counter_name = TB.TotNbrUl.4
                    counter_value = 0
                    counters
                    m_counter_id = 3110016
                    m_counter_name = TB.ErrTotalNbrUl.Tot
                    counter_value = 0
                    counters
                    m_counter_id = 3110017
                    m_counter_name = TB.ErrTotalNbrUl.1
                    counter_value = 0
                    counters
                    m_counter_id = 3110018
                    m_counter_name = TB.ErrTotalNbrUl.2
                    counter_value = 0
                    counters
                    m_counter_id = 3110019
                    m_counter_name = TB.ErrTotalNbrUl.3
                    counter_value = 0
                    counters
                    m_counter_id = 3110020
                    m_counter_name = TB.ErrTotalNbrUl.4
                    counter_value = 0
                    counters
                    m_counter_id = 3110021
                    m_counter_name = TB.ResidualErrNbrUl
                    counter_value = 0
            capability_per_category
            m_category_id = 312
            m_category_name = MAC.uplinkTB.VoNR
            counters_list.count = 21
                    counters
                    m_counter_id = 3120001
                    m_counter_name = TB.TotNbrULInitial.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120002
                    m_counter_name = TB.TotNbrULInitial.Qpsk.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120003
                    m_counter_name = TB.TotNbrULInitial.16Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120004
                    m_counter_name = TB.TotNbrULInitial.64Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120005
                    m_counter_name = TB.TotNbrULInitial.256Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120006
                    m_counter_name = TB.IntialErrNbrUL.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120007
                    m_counter_name = TB.IntialErrNbrUL.Qpsk.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120008
                    m_counter_name = TB.IntialErrNbrUL.16Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120009
                    m_counter_name = TB.IntialErrNbrUL.64Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120010
                    m_counter_name = TB.IntialErrNbrUL.256Qam.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120011
                    m_counter_name = TB.TotNbrUl.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120012
                    m_counter_name = TB.TotNbrUl.1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120013
                    m_counter_name = TB.TotNbrUl.2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120014
                    m_counter_name = TB.TotNbrUl.3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120015
                    m_counter_name = TB.TotNbrUl.4.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120016
                    m_counter_name = TB.ErrTotalNbrUl.Tot.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120017
                    m_counter_name = TB.ErrTotalNbrUl.1.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120018
                    m_counter_name = TB.ErrTotalNbrUl.2.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120019
                    m_counter_name = TB.ErrTotalNbrUl.3.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120020
                    m_counter_name = TB.ErrTotalNbrUl.4.VoNR
                    counter_value = 0
                    counters
                    m_counter_id = 3120021
                    m_counter_name = TB.ResidualErrNbrUl.VoNR
                    counter_value = 0
            capability_per_category
            m_category_id = 313
            m_category_name = RRU.downlinkPRB
            counters_list.count = 13
                    counters
                    m_counter_id = 3130002
                    m_counter_name = RRU.PrbTotDlDist.Bin0
                    counter_value = 0
                    counters
                    m_counter_id = 3130003
                    m_counter_name = RRU.PrbTotDlDist.Bin1
                    counter_value = 0
                    counters
                    m_counter_id = 3130004
                    m_counter_name = RRU.PrbTotDlDist.Bin2
                    counter_value = 0
                    counters
                    m_counter_id = 3130005
                    m_counter_name = RRU.PrbTotDlDist.Bin3
                    counter_value = 0
                    counters
                    m_counter_id = 3130006
                    m_counter_name = RRU.PrbTotDlDist.Bin4
                    counter_value = 0
                    counters
                    m_counter_id = 3130007
                    m_counter_name = RRU.PrbTotDlDist.Bin5
                    counter_value = 0
                    counters
                    m_counter_id = 3130008
                    m_counter_name = RRU.PrbTotDlDist.Bin6
                    counter_value = 0
                    counters
                    m_counter_id = 3130009
                    m_counter_name = RRU.PrbTotDlDist.Bin7
                    counter_value = 0
                    counters
                    m_counter_id = 3130010
                    m_counter_name = RRU.PrbTotDlDist.Bin8
                    counter_value = 0
                    counters
                    m_counter_id = 3130011
                    m_counter_name = RRU.PrbTotDlDist.Bin9
                    counter_value = 0
                    counters
                    m_counter_id = 3130001
                    m_counter_name = RRU.PrbTotDl
                    counter_value = 0
                    counters
                    m_counter_id = 3130012
                    m_counter_name = RRU.PrbUsedDl
                    counter_value = 0
                    counters
                    m_counter_id = 3130013
                    m_counter_name = RRU.PrbAvailDl
                    counter_value = 0
            capability_per_category
            m_category_id = 314
            m_category_name = RRU.uplinkPRB
            counters_list.count = 13
                    counters
                    m_counter_id = 3140002
                    m_counter_name = RRU.PrbTotUlDist.Bin0
                    counter_value = 0
                    counters
                    m_counter_id = 3140003
                    m_counter_name = RRU.PrbTotUlDist.Bin1
                    counter_value = 0
                    counters
                    m_counter_id = 3140004
                    m_counter_name = RRU.PrbTotUlDist.Bin2
                    counter_value = 0
                    counters
                    m_counter_id = 3140005
                    m_counter_name = RRU.PrbTotUlDist.Bin3
                    counter_value = 0
                    counters
                    m_counter_id = 3140006
                    m_counter_name = RRU.PrbTotUlDist.Bin4
                    counter_value = 0
                    counters
                    m_counter_id = 3140007
                    m_counter_name = RRU.PrbTotUlDist.Bin5
                    counter_value = 0
                    counters
                    m_counter_id = 3140008
                    m_counter_name = RRU.PrbTotUlDist.Bin6
                    counter_value = 0
                    counters
                    m_counter_id = 3140009
                    m_counter_name = RRU.PrbTotUlDist.Bin7
                    counter_value = 0
                    counters
                    m_counter_id = 3140010
                    m_counter_name = RRU.PrbTotUlDist.Bin8
                    counter_value = 0
                    counters
                    m_counter_id = 3140011
                    m_counter_name = RRU.PrbTotUlDist.Bin9
                    counter_value = 0
                    counters
                    m_counter_id = 3140001
                    m_counter_name = RRU.PrbTotUl
                    counter_value = 0
                    counters
                    m_counter_id = 3140012
                    m_counter_name = RRU.PrbUsedUl
                    counter_value = 0
                    counters
                    m_counter_id = 3140013
                    m_counter_name = RRU.PrbAvailUl
                    counter_value = 0
            capability_per_category
            m_category_id = 322
            m_category_name = DRB.packetLossDropDisc
            counters_list.count = 3
                    counters
                    m_counter_id = 3220001
                    m_counter_name = DRB.RlcPacketDropRateDl.5QI1
                    counter_value = 0
                    counters
                    m_counter_id = 3220002
                    m_counter_name = DRB.RlcPacketDropRateDl.5QI5
                    counter_value = 0
                    counters
                    m_counter_id = 3220003
                    m_counter_name = DRB.RlcPacketDropRateDl.5QI9
                    counter_value = 0
            capability_per_category
            m_category_id = 323
            m_category_name = DRB.ueThroughputDl
            counters_list.count = 14
                    counters
                    m_counter_id = 3230004
                    m_counter_name = DRB.UEThpDlDist.Bin0.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230005
                    m_counter_name = DRB.UEThpDlDist.Bin1.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230006
                    m_counter_name = DRB.UEThpDlDist.Bin2.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230007
                    m_counter_name = DRB.UEThpDlDist.Bin3.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230008
                    m_counter_name = DRB.UEThpDlDist.Bin4.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230009
                    m_counter_name = DRB.UEThpDlDist.Bin5.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230010
                    m_counter_name = DRB.UEThpDlDist.Bin6.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230011
                    m_counter_name = DRB.UEThpDlDist.Bin7.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230012
                    m_counter_name = DRB.UEThpDlDist.Bin8.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230013
                    m_counter_name = DRB.UEThpDlDist.Bin9.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230003
                    m_counter_name = DRB.UEThpDl
                    counter_value = 0
                    counters
                    m_counter_id = 3230001
                    m_counter_name = DRB.ThpVolDl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230002
                    m_counter_name = DRB.ThpTimeDl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3230014
                    m_counter_name = DRB.UEUnresVolDl
                    counter_value = 0
            capability_per_category
            m_category_id = 324
            m_category_name = DRB.ueThroughputUl
            counters_list.count = 14
                    counters
                    m_counter_id = 3240004
                    m_counter_name = DRB.UEThpUlDist.Bin0.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240005
                    m_counter_name = DRB.UEThpUlDist.Bin1.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240006
                    m_counter_name = DRB.UEThpUlDist.Bin2.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240007
                    m_counter_name = DRB.UEThpUlDist.Bin3.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240008
                    m_counter_name = DRB.UEThpUlDist.Bin4.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240009
                    m_counter_name = DRB.UEThpUlDist.Bin5.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240010
                    m_counter_name = DRB.UEThpUlDist.Bin6.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240011
                    m_counter_name = DRB.UEThpUlDist.Bin7.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240012
                    m_counter_name = DRB.UEThpUlDist.Bin8.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240013
                    m_counter_name = DRB.UEThpUlDist.Bin9.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240003
                    m_counter_name = DRB.UEThpUl
                    counter_value = 0
                    counters
                    m_counter_id = 3240001
                    m_counter_name = DRB.ThpVolUl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240002
                    m_counter_name = DRB.ThpTimeUl.5QI9
                    counter_value = 0
                    counters
                    m_counter_id = 3240014
                    m_counter_name = DRB.UEUnresVolUl
                    counter_value = 0
    fm_capability
    m_num_alarms = 12
    alarm_info_list.count = 12
            alarm_info
            m_alarm_id = 14081
            m_alarm_name = F1_C_ALARM_F1_C_COMM_DOWN
            alarm_info
            m_alarm_id = 13313
            m_alarm_name = CELL_ALARM_CELL_ADMIN_LOCKED
            alarm_info
            m_alarm_id = 13314
            m_alarm_name = CELL_ALARM_CELL_SETUP_FAIL
            alarm_info
            m_alarm_id = 13315
            m_alarm_name = CELL_ALARM_CELL_L1_COMM_FAIL
            alarm_info
            m_alarm_id = 13316
            m_alarm_name = CELL_ALARM_CELL_L1_ERROR_IND
            alarm_info
            m_alarm_id = 13317
            m_alarm_name = CELL_ALARM_CELL_TTI_STRETCH
            alarm_info
            m_alarm_id = 13318
            m_alarm_name = CELL_ALARM_CELL_VC_QUEUE_FULL
            alarm_info
            m_alarm_id = 20737
            m_alarm_name = CELL_ALARM_L1_DL_TTI_SLOT_MISMATCH
            alarm_info
            m_alarm_id = 20738
            m_alarm_name = CELL_ALARM_L1_UL_TTI_SLOT_MISMATCH
            alarm_info
            m_alarm_id = 20739
            m_alarm_name = CELL_ALARM_L1_UL_DCI_SLOT_MISMATCH
            alarm_info
            m_alarm_id = 20740
            m_alarm_name = CELL_ALARM_L1_TX_DATA_SLOT_MISMATCH
            alarm_info
            m_alarm_id = 12545
            m_alarm_name = ME_ALARM_MEMORY_FULL
OAM_CONFD_CONFIG
OAM_CONFD_IP_ADDRESS : 127.0.0.1
OAM_CONFD_PORT : 11000
OAM_CONFD_LOGGING : 2
OAM_INTF_STR_LOGGING : 1
OAM_CONFD_TIMER : 10
OAM_CONFD_COUNT : 100
CONFD LOG LEVEL : CONFD_TRACE ENABLED
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_END_SESSION  --> CONFD_OK
[20/08/2021 16:10:46.863922][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
[20/08/2021 16:10:46.863981][STHREAD][INF][ngp_sys_thread.cpp:275]Policy : SCHED_FIFO 
establish_confd_subscription_connection
TRACE Connected (cdb) to ConfD
TRACE CDB_SUBSCRIBE /ME --> CONFD_OK
TRACE CDB_SUBSCRIBE /gnbvs --> CONFD_OK
TRACE CDB_SUBSCRIBE_DONE  --> CONFD_OK
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_EXISTS /ME/GNBDUFunction[0] --> CONFD_OK
TRACE CDB_END_SESSION  --> CONFD_OK
TRACE Connected (cdb) to ConfD
TRACE CDB_TRIGGER_SUBS TRACE CDB_SUBSCRIPTION_EVENT --> 7
TRACE Connected (maapi) to ConfD
TRACE MAAPI_LOAD_ALL_NS
TRACE MAAPI_LOAD_MNS_MAPS
TRACE MAAPI_LOAD_HASH_DB
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_SUB_ITERATE 7
TRACE CDB_END_SESSION  --> CONFD_OK
path action MODIFY
path /MEaction CREATE
path /ME/AlarmListaction CREATEvalue 1
path /ME/AlarmList[0]action CREATE
path /ME/AlarmList[0]/idaction CREATEvalue 0
path /ME/FMControlaction CREATEvalue 1
path /ME/FMControl[0]action CREATE
path /ME/FMControl[0]/administrativeStateaction CREATEvalue 0
path /ME/FMControl[0]/idaction CREATEvalue 0
path /ME/GNBDUFunctionaction CREATEvalue 1
path /ME/GNBDUFunction[0]action CREATE
path /ME/GNBDUFunction[0]/EP_F1Uaction CREATEvalue 1
path /ME/GNBDUFunction[0]/EP_F1U[0]action CREATE
path /ME/GNBDUFunction[0]/EP_F1U[0]/farEndEntityaction CREATEvalue 1
path /ME/GNBDUFunction[0]/EP_F1U[0]/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/EP_F1U[0]/localIpAddressaction CREATEvalue 168.168.31.102
path /ME/GNBDUFunction[0]/EP_F1U[0]/localVlanIdaction CREATEvalue 7
path /ME/GNBDUFunction[0]/EP_F1U[0]/objectClassaction CREATEvalue EP_F1U
path /ME/GNBDUFunction[0]/EP_F1U[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/EP_F1U[0]/remoteAddressaction CREATEvalue 168.168.31.101
path /ME/GNBDUFunction[0]/EP_F1U[0]/userLabelaction CREATEvalue EP_F1U
path /ME/GNBDUFunction[0]/F1C_EPaction MODIFY
path /ME/GNBDUFunction[0]/F1C_EP/farEndEntityaction CREATEvalue 1
path /ME/GNBDUFunction[0]/F1C_EP/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/F1C_EP/localIpAddressaction CREATEvalue 168.168.31.102
path /ME/GNBDUFunction[0]/F1C_EP/localVlanIdaction CREATEvalue 7
path /ME/GNBDUFunction[0]/F1C_EP/objectClassaction CREATEvalue F1C_EP
path /ME/GNBDUFunction[0]/F1C_EP/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/F1C_EP/remoteAddressaction CREATEvalue 168.168.31.101
path /ME/GNBDUFunction[0]/F1C_EP/userLabelaction CREATEvalue F1C_EP
path /ME/GNBDUFunction[0]/NRCellDUaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]action CREATE
path /ME/GNBDUFunction[0]/NRCellDU[0]/administrativeStateaction CREATEvalue 2
path /ME/GNBDUFunction[0]/NRCellDU[0]/arfcnDLaction CREATEvalue 2079415
path /ME/GNBDUFunction[0]/NRCellDU[0]/arfcnSULaction CREATEvalue 2079415
path /ME/GNBDUFunction[0]/NRCellDU[0]/arfcnULaction CREATEvalue 2079415
path /ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwDLaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwSULaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwULaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/nCIaction CREATEvalue 000000001
path /ME/GNBDUFunction[0]/NRCellDU[0]/nRPCIaction CREATEvalue 11
path /ME/GNBDUFunction[0]/NRCellDU[0]/nRTACaction CREATEvalue 0001
path /ME/GNBDUFunction[0]/NRCellDU[0]/objectClassaction CREATEvalue RNCFunction
path /ME/GNBDUFunction[0]/NRCellDU[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]action CREATE
path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]/MCCaction CREATEvalue 460
path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]/MNCaction CREATEvalue 11
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersListaction MODIFY
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/environmentTypeaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/equipmentTypeaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/powerInterfaceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteDescriptionaction CREATEvalue prestige tech park
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteIdentificationaction CREATEvalue Tech Park
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteLatitudeaction CREATEvalue 129781_4
path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteLongitudeaction CREATEvalue 776653_4
path /ME/GNBDUFunction[0]/NRCellDU[0]/s-NSSAIaction CREATEvalue 2
path /ME/GNBDUFunction[0]/NRCellDU[0]/s-NSSAI[0]action CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/s-NSSAI[1]action CREATEvalue 2
path /ME/GNBDUFunction[0]/NRCellDU[0]/userLabelaction CREATEvalue NRCellDU
path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersListaction MODIFY
path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/autoScalableaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/flavourIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/vnfInstanceIdaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/vnfdIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContaineraction CREATEvalue 1
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]action CREATE
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/vsDataaction CREATEvalue 
            <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
             <gnbDuCfg>
              <id>0</id>
              <gnbCellDuVsCfg>
                 <id>0</id>
                 <rntiStart>17017</rntiStart>
                 <maxNumRnti>160</maxNumRnti>
                 <maxNumUes>160</maxNumUes>
                 <servedPlmnList>
                    <servedPlmnIdx>1</servedPlmnIdx>
                    <servedPlmnId>
                       <MCC>460</MCC>
                       <MNC>11</MNC>
                    </servedPlmnId>
                    <sliceList>
                       <sliceIdx>1</sliceIdx>
                       <sst>3</sst>
                       <sd>198153</sd>
                    </sliceList>
                 </servedPlmnList>
                 <modeType>TDD</modeType>
                 <nRCGI>
                    <nrCgipLMNId>
                       <MCC>460</MCC>
                       <MNC>11</MNC>
                    </nrCgipLMNId>
                    <nrCellId>000000001</nrCellId>
                 </nRCGI>
                 <nrMu>KHz30</nrMu>
                 <freqRangeType>FR1_LT_6</freqRangeType>
                 <nTimingAdvanceOffset>nTimingAdvance_25600</nTimingAdvanceOffset>
                 <tciInDci>disabled</tciInDci>
                 <pdcchDmrsScramblingID>11</pdcchDmrsScramblingID>
                 <pdschDataScramblingID>11</pdschDataScramblingID>
                 <puschDataScramblingID>11</puschDataScramblingID>
                 <featureSetBitMap>7</featureSetBitMap>
                 <deploymentMode>SA</deploymentMode>
                 <csiRsCfgInfo>
                 <isCsiRsEnable>false</isCsiRsEnable>
                 <csiRsPeriodicity>CSI_RS_RES_PRDCTY_SLOT160</csiRsPeriodicity>
                 <csiRsRowType>CSI_FREQ_DOM_ALLOC_ROW4</csiRsRowType>
                 <rowBitmap>1</rowBitmap>
                 <firstSym>13</firstSym>
                 <secondSymPres>false</secondSymPres>
                 <secondSym>12</secondSym>
                 <cdmType>CSI_RS_CDM_TYPE_FD_CDM2</cdmType>
                 <csiRsDensity>CSI_RS_DENSITY_ONE</csiRsDensity>
                 <dot5EvenOdd>CSI_RS_DENSITY_DOT5_EVEN_RB</dot5EvenOdd>
                 </csiRsCfgInfo>
                 <macCfgCmn>
                 <maxUlUePerTTI>4</maxUlUePerTTI>
                 <maxUlUeWithSrbPerTti>1</maxUlUeWithSrbPerTti>
                 <maxUlUeWithImsPerTti>1</maxUlUeWithImsPerTti>
                 <maxUlUeWithVoicePerTti>1</maxUlUeWithVoicePerTti>
                 <maxUlUeWithGbrPerTti>4</maxUlUeWithGbrPerTti>
                 <maxUlUeWithNonGbrPerTti>4</maxUlUeWithNonGbrPerTti>
                 <maxDlUePerTTI>1</maxDlUePerTTI>
                 <maxDlUeWithCePerTti>1</maxDlUeWithCePerTti>
                 <maxDlUeWithSrbPerTti>1</maxDlUeWithSrbPerTti>
                 <maxDlUeWithImsPerTti>1</maxDlUeWithImsPerTti>
                 <maxDlUeWithVoicePerTti>1</maxDlUeWithVoicePerTti>
                 <maxDlUeWithGbrPerTti>1</maxDlUeWithGbrPerTti>
                 <maxDlUeWithNonGbrPerTti>1</maxDlUeWithNonGbrPerTti>
                 <numSsb>1</numSsb>
             <ssPbchBurstSetSize>1</ssPbchBurstSetSize>
                 <tagId>0</tagId>
                 <taTmrInMs>INFINITY</taTmrInMs>
             <tUlSyncTime>noTimer</tUlSyncTime>
             <phrConfig>
                 <isPhrEnable>true</isPhrEnable>
                 <phrPeriodicTimer>INFINITY</phrPeriodicTimer>
                 <phrProhibitPeriodicTimer>SF0</phrProhibitPeriodicTimer>
                 <phrTxPwrChangeFactor>INFINITY</phrTxPwrChangeFactor>
                 <phrType2OtherCell>false</phrType2OtherCell>
                 <phrModeOtherCg>false</phrModeOtherCg>
              </phrConfig>
                 <maxUlHqTx>4</maxUlHqTx>
                 <maxDlHqTx>4</maxDlHqTx>
                 <maxMsg4HqTx>1</maxMsg4HqTx>
                 <preambleStart>47</preambleStart>
                 <preambleSize>4</preambleSize>
                 <isBmEnbld>false</isBmEnbld>
                 <isBfrEnbld>false</isBfrEnbld>
                 <cyclicPrefixType>NORMAL</cyclicPrefixType>
                 <dlRank>4</dlRank>
                 <isPhaseTrackingRefSigEnb>false</isPhaseTrackingRefSigEnb>
                 <ulRank>2</ulRank>
                 <dlNumAntPorts>4</dlNumAntPorts>
                 <ulNumOfAntPorts>4</ulNumOfAntPorts>
                 <ulModulation>QAM64</ulModulation>
                 <dlModulation>QAM256</dlModulation>
                 <dlMcs>22</dlMcs>
                 <ulMcs>16</ulMcs>
                 <rarMcs>1</rarMcs>
                 <bcchMcs>4</bcchMcs>
                 <pcchMcs>4</pcchMcs>
                 <dlCcchCqi>3</dlCcchCqi>
                 <ulCcchCqi>3</ulCcchCqi>
                 <enable_dci1_1And0_1>true</enable_dci1_1And0_1>
                 <enable_pdsch_in_ssb_slot>true</enable_pdsch_in_ssb_slot>
                 <dlLaStepup>9</dlLaStepup>
                 <ulLaStepup>2</ulLaStepup>
                 <dlLaStepdown>99</dlLaStepdown>
                 <ulLaStepdown>40</ulLaStepdown>
                 <vonrDlLaStepup>3</vonrDlLaStepup>
                 <vonrUlLaStepup>3</vonrUlLaStepup>
                 <vonrDlLaStepdown>30</vonrDlLaStepdown>
                 <vonrUlLaStepdown>30</vonrUlLaStepdown>
               </macCfgCmn>
               <cfgCmn>
                 <numDlSlot>3</numDlSlot>
                 <numDlSymbol>12</numDlSymbol>
                 <numUlSlot>2</numUlSlot>
                 <numUlSymbol>0</numUlSymbol>
                 <p2Pres>1</p2Pres>
                 <numDlSlotP2>4</numDlSlotP2>
                 <numDlSymbolP2>0</numDlSymbolP2>
                 <numUlSlotP2>0</numUlSlotP2>
                 <numUlSymbolP2>0</numUlSymbolP2>
               </cfgCmn>
               <dlCfgCmn>
                 <dlBwpCfg>
                    <bwpId>0</bwpId>
                    <mu>KHz30</mu>
                    <cyclicPrefix>extended</cyclicPrefix>
                    <numRb>273</numRb>
                    <startRb>0</startRb>
                    <resourceAllocType>1</resourceAllocType>
                    <resourceAllocCfg>1</resourceAllocCfg>
                    <cntrlResourceSetSearchSpaceCfg>
                       <avgAggregationLvl>2</avgAggregationLvl>
                    </cntrlResourceSetSearchSpaceCfg>
                 </dlBwpCfg>
                 <dlFreqInfo>
                    <absFreqPointA>4800720</absFreqPointA>
                    <absArfcnPointA>720048</absArfcnPointA>
                    <absFreqSsb>4804320</absFreqSsb>
                    <absArfcnSsb>720288</absArfcnSsb>
                    <nrFreqBand>79</nrFreqBand>
                    <subCarrierCfg>
                       <offsetToCarrier>0</offsetToCarrier>
                       <subCarrierSpacing>KHz30</subCarrierSpacing>
                       <carrierBw>273</carrierBw>
                    </subCarrierCfg>
                    <bSChannelBwDL>100MHZ</bSChannelBwDL>
                    <dlEarfcn>723324</dlEarfcn>
                 </dlFreqInfo>
                 <numCceRsvdForCmnPdcch>1</numCceRsvdForCmnPdcch>
             </dlCfgCmn>
             <ulCfgCmn>
             <ulTargetCqi>
                <targetCqi>9</targetCqi>
             </ulTargetCqi>
                 <ulBwpCfg>
                    <bwpId>0</bwpId>
                    <pucchCmnCfgPres>true</pucchCmnCfgPres>
                    <puschCmnCfgPres>true</puschCmnCfgPres>
                    <mu>KHz30</mu>
                    <cyclicPrefix>extended</cyclicPrefix>
                    <numRb>273</numRb>
                    <startRb>0</startRb>
                    <distributePucchInBwpEdges>0</distributePucchInBwpEdges>
                    <resourceAllocType>1</resourceAllocType>
                    <resourceAllocCfg>1</resourceAllocCfg>
                    <pucchResourceCmn>0</pucchResourceCmn>
                    <pucchGrpHopping>neither</pucchGrpHopping>
                    <hoppingId>0</hoppingId>
                    <p0Nominal>-82</p0Nominal>
                    <maxCodeRate>zeroDot08</maxCodeRate>
                    <simultaneousHarqAckCsi>false</simultaneousHarqAckCsi>
                    <rachCfgInfo>
                       <rachGenCfg>
                          <prachCfgIdx>158</prachCfgIdx>
                          <msg1Fdm>1</msg1Fdm>
                          <msg1FreqStart>0</msg1FreqStart>
                          <zeroCorrelationZoneCfg>6</zeroCorrelationZoneCfg>
                          <preambleRcvdTgtPwr>-100</preambleRcvdTgtPwr>
                          <preambleTransMax>n10</preambleTransMax>
                          <pwrRampingStep>dB2</pwrRampingStep>
                          <rachRspWindow>sl20</rachRspWindow>
                       </rachGenCfg>
                       <totalNumOfRachPreamble>16</totalNumOfRachPreamble>
                       <ssbsPerRach>SSB_ONE</ssbsPerRach>
                       <cbPreamblePerSsb>4</cbPreamblePerSsb>
                       <grpBPreambleCfg>
                          <msg3SizeGrpA>b56</msg3SizeGrpA>
                          <numOfRachPreambleGrpA>1</numOfRachPreambleGrpA>
                       </grpBPreambleCfg>
                       <contentResolutionTmr>sf40</contentResolutionTmr>
                       <rsrpThresholdSsb>31</rsrpThresholdSsb>
                       <rootSeqType>L139Int</rootSeqType>
                       <rootSeqVal>0</rootSeqVal>
                       <msg1Scs>KHz30</msg1Scs>
                       <restrictedSetCfg>RACH_UNREST</restrictedSetCfg>
                       <maxMsg3Tx>0</maxMsg3Tx>
                       <preambleFormat>ORAN_RACH_FORMAT_0</preambleFormat>
                    </rachCfgInfo>
                    <srPeriodicity>sl80</srPeriodicity>
                    <f2MaxPayloadLen1>12</f2MaxPayloadLen1>
                    <f2MaxPayloadLen2>12</f2MaxPayloadLen2>
                    <f0f2SymLength>1</f0f2SymLength>
                    <cyclicShift>
                       <numOfCyclicShift>12</numOfCyclicShift>
                       <cyclicShiftBitmap>65</cyclicShiftBitmap>
                    </cyclicShift>
                    <puschTxCfg>codeBook</puschTxCfg>
                    <srsCfg>
                       <numSrsSym>1</numSrsSym>
                       <ktc>2</ktc>
                       <maxSrsUePerSlot>1</maxSrsUePerSlot>
                    </srsCfg>
                    <puschPwrCfg>
                       <msg3deltaPreamble>0</msg3deltaPreamble>
                       <p0nominal>-82</p0nominal>
                       <msg3alpha>ALL</msg3alpha>
                       <p0>0</p0>
                       <alpha>ALL</alpha>
                       <deltaMcsEnabled>false</deltaMcsEnabled>
                       <isAccumulated>true</isAccumulated>
                    </puschPwrCfg>
                    <pucchPwrCfg>
                       <p0nominal>-82</p0nominal>
                       <deltaFpucchF0>1</deltaFpucchF0>
                       <deltaFpucchF1>0</deltaFpucchF1>
                       <deltaFpucchF2>1</deltaFpucchF2>
                       <deltaFpucchF3>0</deltaFpucchF3>
                       <deltaFpucchF4>0</deltaFpucchF4>
                       <p0PucchVal>0</p0PucchVal>
                    </pucchPwrCfg>
                    <uciOnPusch>
                       <avoidPuschBasedOnUciType>avoidNone</avoidPuschBasedOnUciType>
                       <semiStaticBetaOffsetAckIdx1>0</semiStaticBetaOffsetAckIdx1>
                       <semiStaticBetaOffsetAckIdx2>0</semiStaticBetaOffsetAckIdx2>
                       <semiStaticBetaOffsetAckIdx3>0</semiStaticBetaOffsetAckIdx3>
                       <alphaScaling>0</alphaScaling>
                    </uciOnPusch>
                    <csiPeriodicity>csiPeriodicity_slots160</csiPeriodicity>
                 </ulBwpCfg>
                 <ulFreqInfo>
                    <absFreqPointA>4800720</absFreqPointA>
                    <absArfcnPointA>720048</absArfcnPointA>
                    <nrFreqBand>79</nrFreqBand>
                    <subCarrierCfg>
                       <offsetToCarrier>0</offsetToCarrier>
                       <subCarrierSpacing>KHz30</subCarrierSpacing>
                       <carrierBw>273</carrierBw>
                    </subCarrierCfg>
                    <bSChannelBwUl>100MHZ</bSChannelBwUl>
                    <freqShft7p5khz>7P5KHZ_DISBL</freqShft7p5khz>
                    <addtionalSpectrumEmission>0</addtionalSpectrumEmission>
                    <pMax>23</pMax>
                    <ulEarfcn>723324</ulEarfcn>
                 </ulFreqInfo>
                 <addnlUlCoresetEnable>false</addnlUlCoresetEnable>
             </ulCfgCmn>
             <!--
             <supplmntryulCfgCmn>
                 <maxUePerUlSlot>8</maxUePerUlSlot>
                 <isHarmonicEnb>false</isHarmonicEnb>
                 <isSulCfgFreqMute>false</isSulCfgFreqMute>
                 <ccchCqi>1</ccchCqi>
                 <sulFreqInfo>
                    <absFreqPointA>3452460</absFreqPointA>
                    <absArfcnPointA>630164</absArfcnPointA>
                    <nrFreqBand>257</nrFreqBand>
                    <subCarrierCfg>
                       <offsetToCarrier>0</offsetToCarrier>
                       <subCarrierSpacing>KHz30</subCarrierSpacing>
                       <carrierBw>273</carrierBw>
                    </subCarrierCfg>
                    <bSChannelBwUl>100MHZ</bSChannelBwUl>
                    <freqShft7p5khz>7P5KHZ_DISBL</freqShft7p5khz>
                    <addtionalSpectrumEmission>0</addtionalSpectrumEmission>
                    <pMax>23</pMax>
                    <ulEarfcn>2079415</ulEarfcn>
                 </sulFreqInfo>
                 <sulTargetCqi>
                    <targetCqi>1</targetCqi>
                 </sulTargetCqi>
                 <sulBwpCfg>
                    <bwpId>0</bwpId>
                    <pucchCmnCfgPres>true</pucchCmnCfgPres>
                    <puschCmnCfgPres>true</puschCmnCfgPres>
                    <mu>KHz30</mu>
                    <cyclicPrefix>extended</cyclicPrefix>
                    <numRb>273</numRb>
                    <startRb>0</startRb>
                    <distributePucchInBwpEdges>0</distributePucchInBwpEdges>
                    <resourceAllocType>1</resourceAllocType>
                    <resourceAllocCfg>1</resourceAllocCfg>
                    <pucchResourceCmn>0</pucchResourceCmn>
                    <pucchGrpHopping>neither</pucchGrpHopping>
                    <hoppingId>0</hoppingId>
                    <p0Nominal>0</p0Nominal>
                    <maxCodeRate>zeroDot80</maxCodeRate>
                    <simultaneousHarqAckCsi>false</simultaneousHarqAckCsi>
                    <rachCfgInfo>
                       <rachGenCfg>
                          <prachCfgIdx>106</prachCfgIdx>
                          <msg1Fdm>1</msg1Fdm>
                          <msg1FreqStart>0</msg1FreqStart>
                          <zeroCorrelationZoneCfg>6</zeroCorrelationZoneCfg>
                          <preambleRcvdTgtPwr>-74</preambleRcvdTgtPwr>
                          <preambleTransMax>n10</preambleTransMax>
                          <pwrRampingStep>dB0</pwrRampingStep>
                          <rachRspWindow>sl8</rachRspWindow>
                       </rachGenCfg>
                       <totalNumOfRachPreamble>63</totalNumOfRachPreamble>
                       <ssbsPerRach>SSB_ONE</ssbsPerRach>
                       <cbPreamblePerSsb>8</cbPreamblePerSsb>
                       <grpBPreambleCfg>
                          <msg3SizeGrpA>b56</msg3SizeGrpA>
                          <numOfRachPreambleGrpA>1</numOfRachPreambleGrpA>
                       </grpBPreambleCfg>
                       <contentResolutionTmr>sf40</contentResolutionTmr>
                       <rsrpThresholdSsb>0</rsrpThresholdSsb>
                       <rootSeqType>L839Int</rootSeqType>
                       <rootSeqVal>0</rootSeqVal>
                       <msg1Scs>KHz30</msg1Scs>
                       <restrictedSetCfg>RACH_UNREST</restrictedSetCfg>
                       <maxMsg3Tx>0</maxMsg3Tx>
                       <preambleFormat>ORAN_RACH_FORMAT_0</preambleFormat>
                    </rachCfgInfo>
                    <srPeriodicity>sl40</srPeriodicity>
                    <f2MaxPayloadLen1>24</f2MaxPayloadLen1>
                    <f2MaxPayloadLen2>36</f2MaxPayloadLen2>
                    <f0f2SymLength>1</f0f2SymLength>
                    <cyclicShift>
                       <numOfCyclicShift>12</numOfCyclicShift>
                       <cyclicShiftBitmap>4095</cyclicShiftBitmap>
                    </cyclicShift>
                    <puschTxCfg>codeBook</puschTxCfg>
                    <srsCfg>
                       <numSrsSym>1</numSrsSym>
                       <ktc>2</ktc>
                       <maxSrsUePerSlot>1</maxSrsUePerSlot>
                    </srsCfg>
                    <puschPwrCfg>
                       <msg3deltaPreamble>0</msg3deltaPreamble>
                       <p0nominal>-70</p0nominal>
                       <msg3alpha>ALL</msg3alpha>
                       <p0>0</p0>
                       <alpha>ALL</alpha>
                       <deltaMcsEnabled>true</deltaMcsEnabled>
                       <isAccumulated>true</isAccumulated>
                    </puschPwrCfg>
                    <pucchPwrCfg>
                       <p0nominal>-74</p0nominal>
                       <deltaFpucchF0>0</deltaFpucchF0>
                       <deltaFpucchF1>0</deltaFpucchF1>
                       <deltaFpucchF2>0</deltaFpucchF2>
                       <deltaFpucchF3>0</deltaFpucchF3>
                       <deltaFpucchF4>0</deltaFpucchF4>
                       <p0PucchVal>0</p0PucchVal>
                    </pucchPwrCfg>
                    <uciOnPusch>
                       <avoidPuschBasedOnUciType>avoidNone</avoidPuschBasedOnUciType>
                       <semiStaticBetaOffsetAckIdx1>0</semiStaticBetaOffsetAckIdx1>
                       <semiStaticBetaOffsetAckIdx2>0</semiStaticBetaOffsetAckIdx2>
                       <semiStaticBetaOffsetAckIdx3>0</semiStaticBetaOffsetAckIdx3>
                       <alphaScaling>0</alphaScaling>
                    </uciOnPusch>
                    <csiPeriodicity>csiPeriodicity_slots160</csiPeriodicity>
                 </sulBwpCfg>
                 </supplmntryulCfgCmn>
                 -->
                 <si-SchedInfo>
                 <sib2Periodcity>rf128</sib2Periodcity>
                 <sib3Periodicity>rf256</sib3Periodicity>
                 <sibs>
                    <valueTag>2</valueTag>
                    <sibType>DU_SIB_TYPE_2</sibType>
                 </sibs>
                 </si-SchedInfo>
                 <l1-CfgInfo>
                 <nDlCenterFreq>3351000</nDlCenterFreq>
                 <nUlCenterFreq>3351000</nUlCenterFreq>
                 <nDlBw>100</nDlBw>
                 <nUlBw>100</nUlBw>
                 <nDlFftSize>4096</nDlFftSize>
                 <nUlFftSize>4096</nUlFftSize>
                 <nCarrierAggregationLvl>0</nCarrierAggregationLvl>
                 <nMode>XRAN</nMode>
                 <nDlCarrierK0>1</nDlCarrierK0>
                 <nUlCarrierK0>1</nUlCarrierK0>
                 <prachCfg>
                    <l1PrachCfgInfoRootSeqIdx>0</l1PrachCfgInfoRootSeqIdx>
                    <prachCfgIdx>158</prachCfgIdx>
                    <zeroCorrelationZoneCfg>6</zeroCorrelationZoneCfg>
                    <highSpeedFlag>false</highSpeedFlag>
                    <prachFreqOffset>0</prachFreqOffset>
                    <prachSubcSpacing>3</prachSubcSpacing>
                    <prachRestrictSet>0</prachRestrictSet>
                    <prachFreqStart>0</prachFreqStart>
                    <prachFdm>two</prachFdm>
                    <prachSsbRach>one</prachSsbRach>
                 </prachCfg>
                 <mibParams>
                    <cellBarred>notBarred</cellBarred>
                    <intraFreqReselection>allowed</intraFreqReselection>
                 </mibParams>
                 <sib1Params>
                    <cellSelectionInfo>
                       <qRxLevMin>
                          <rsrpLvl>-64</rsrpLvl>
                       </qRxLevMin>
                       <qRxLevMinSul>
                          <rsrpLvl>-50</rsrpLvl>
                       </qRxLevMinSul>
                       <qQualMin>
                          <rsrpLvl>-30</rsrpLvl>
                       </qQualMin>
                    </cellSelectionInfo>
                    <cellAccessInfo>
                       <pLMNIdentityList>
                          <pLMNIdentityInfoIndex>1</pLMNIdentityInfoIndex>
                          <pLMNIdList>
                             <pLMNIdIndex>1</pLMNIdIndex>
                             <MCC>460</MCC>
                             <MNC>11</MNC>
                          </pLMNIdList>
                          <tacBitMap>1</tacBitMap>
                          <ranac>1</ranac>
                          <cellId>1</cellId>
                          <cellReservedOperatorUse>notReserved</cellReservedOperatorUse>
                       </pLMNIdentityList>
                    </cellAccessInfo>
                    <ueTmr>
                       <t300>MS1000</t300>
                       <t301>MS1000</t301>
                       <t310>MS1000</t310>
                       <n310>N1</n310>
                       <t311>MS1000</t311>
                       <n311>N1</n311>
                       <t319>MS1000</t319>
                    </ueTmr>
                 </sib1Params>
                 </l1-CfgInfo>
                 <dmrsDlCfg>
                    <dmrsTypeDl>type1</dmrsTypeDl>
                    <dmrsAdditionalPosDl>pos1</dmrsAdditionalPosDl>
                    <maxLenDl>len1</maxLenDl>
                    <scramblingID0Dl>11</scramblingID0Dl>
                    <scramblingID1Dl>11</scramblingID1Dl>
                 </dmrsDlCfg>
                 <dmrsUlCfg>
                    <dmrsTypeUl>type1</dmrsTypeUl>
                    <dmrsAdditionalPosUl>pos1</dmrsAdditionalPosUl>
                    <maxLenUl>len1</maxLenUl>
                    <transPrecodingDisabledUl>
                       <istransPrecodingDisabled>true</istransPrecodingDisabled>
                       <scramblingID0>11</scramblingID0>
                       <scramblingID1>11</scramblingID1>
                    </transPrecodingDisabledUl>
                    <transPrecodingEnabledUl>
                       <istransPrecodingEnabled>false</istransPrecodingEnabled>
                       <nPUSCHId>1</nPUSCHId>
                       <seqGrpHopping>disabled</seqGrpHopping>
                       <seqHopping>enabled</seqHopping>
                    </transPrecodingEnabledUl>
                 </dmrsUlCfg>
                 <ltenrCoTraficPatternType>
                 <isLteNrCoEnable>false</isLteNrCoEnable>
                 <cellId>1</cellId>
                 <activateSfn>2</activateSfn>
                 <isSulFreqMute>false</isSulFreqMute>
                 <sharingType>UL_AND_DL_SHARING</sharingType>
                 <bitWidthSize>10</bitWidthSize>
                 <ulTrafficPattern>830</ulTrafficPattern>
                 <dlTrafficPattern>830</dlTrafficPattern>
                 <mbSfnControlSym>2</mbSfnControlSym>
                 <ltePucchRbInEdge>3</ltePucchRbInEdge>
                 </ltenrCoTraficPatternType>
<!--
                 <nsCfgInfo>
                 <nsAddInfo>
                    <nsiId>2</nsiId>
                    <resType>NS_RES_ISOLATED</resType>
                    <nsResId>2</nsResId>
                    <nsiCellResCfg>
                       <numDlPrb>11</numDlPrb>
                       <numUlPrb>11</numUlPrb>
                    </nsiCellResCfg>
                    <dlSlaTargetRate>5000000</dlSlaTargetRate>
                    <ulSlaTargetRate>5000000</ulSlaTargetRate>
                    <numDlUePerTti>1</numDlUePerTti>
                    <numUlUePerTti>1</numUlUePerTti>
                 </nsAddInfo>
                 <nsModInfo>
                    <nsiId>3</nsiId>
                    <resType>NS_RES_ISOLATED</resType>
                    <nsResId>2</nsResId>
                    <nsiCellResCfg>
                       <numDlPrb>11</numDlPrb>
                       <numUlPrb>11</numUlPrb>
                    </nsiCellResCfg>
                    <dlSlaTargetRate>5000000</dlSlaTargetRate>
                    <ulSlaTargetRate>5000000</ulSlaTargetRate>
                    <numDlUePerTti>1</numDlUePerTti>
                    <numUlUePerTti>1</numUlUePerTti>
                 </nsModInfo>
                 <nsIdToDel>1</nsIdToDel>
                 <nsIdToAct>1</nsIdToAct>
                 <nsIdToDeAct>1</nsIdToDeAct>
                 <reslAddInfo>
                    <nsResId>2</nsResId>
                    <numDlPrb>11</numDlPrb>
                    <numUlPrb>11</numUlPrb>
                 </reslAddInfo>
                 <resourceModInfo>
                    <nsResId>2</nsResId>
                    <numDlPrb>11</numDlPrb>
                    <numUlPrb>11</numUlPrb>
                 </resourceModInfo>
                 <reportType>1</reportType>
                 <period>3</period>
                 </nsCfgInfo>
-->
                 <pCCHcfgInfo>
                 <defaultPagCycle>rf64</defaultPagCycle>
                 <n>ONE_T</n>
                    <ns>one</ns>
                 <monitorType>sCS15KHZoneT</monitorType>
                 <numOfPoPerPf>1</numOfPoPerPf>
                 <occasionOfPo>1</occasionOfPo>
                 </pCCHcfgInfo>
<!--
                 <DrxInfo>
                 <isDrxOnDurationTmrType>drx-onDurationTmrMs</isDrxOnDurationTmrType>
                 <drxInactivityTmr>MS40</drxInactivityTmr>
                 <drxOnDurationTmrInMS>MS1</drxOnDurationTmrInMS>
                 <drxRttTmrDl>56</drxRttTmrDl>
                 <drxRttTmrUl>56</drxRttTmrUl>
                 <drxRetxTmrDl>Slot4</drxRetxTmrDl>
                 <drxRetxTmrUl>Slot4</drxRetxTmrUl>
                 <drxLongCycle>MS80</drxLongCycle>
                 <drxCycleStartOffset>0</drxCycleStartOffset>
                 <drxShortCycleTmr>2</drxShortCycleTmr>
                 <drxShortCycle>MS20</drxShortCycle>
                 <drxSlotOffset>0</drxSlotOffset>
                 </DrxInfo>
-->
                 <cellAlarm>
                    <alarmId>ALARM_CELL_ADMIN_LOCKED</alarmId>
                    <alarmName>ALARM_CELL_ADMIN_LOCKED</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellAlarm>
                    <alarmId>ALARM_CELL_SETUP_FAIL</alarmId>
                    <alarmName>ALARM_CELL_SETUP_FAIL</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellAlarm>
                    <alarmId>ALARM_CELL_L1_COMM_FAIL</alarmId>
                    <alarmName>ALARM_CELL_L1_COMM_FAIL</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellAlarm>
                    <alarmId>ALARM_CELL_L1_ERROR_IND</alarmId>
                    <alarmName>ALARM_CELL_L1_ERROR_IND</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellAlarm>
                    <alarmId>ALARM_CELL_TTI_STRETCH</alarmId>
                    <alarmName>ALARM_CELL_TTI_STRETCH</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellAlarm>
                    <alarmId>ALARM_CELL_VC_QUEUE_FULL</alarmId>
                    <alarmName>ALARM_CELL_VC_QUEUE_FULL</alarmName>
                    <thresholdLevel>0</thresholdLevel>
                    <thresholdCount>0</thresholdCount>
                    <thresholdTimeInterval>600</thresholdTimeInterval>
                 </cellAlarm>
                 <cellPfsCfgInfo>
                 <nr5qiCoeff>5</nr5qiCoeff>
                 <gbrServedRateCoeff>5</gbrServedRateCoeff>
                 <uePfsCoeff>5</uePfsCoeff>
                 <totalSlicePriolvl>10</totalSlicePriolvl>
                 <totalUePfsPriolvl>100</totalUePfsPriolvl>
                 <totalGbrServedRatePriolvl>100</totalGbrServedRatePriolvl>
                 <tptCoEff>5</tptCoEff>
                 <fairnessCoeff>5</fairnessCoeff>
                 </cellPfsCfgInfo>
                 <enableRateMatchSsbPbch>false</enableRateMatchSsbPbch>
                 <enablePdschRateMatchCoreset>false</enablePdschRateMatchCoreset>
                 <numPucchCellGrp>0</numPucchCellGrp>
                 <rlcCfg>
                         <nrQfiGrp>
                                 <fiveqi>0</fiveqi> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <nrQfiGrp>
                                 <fiveqi>1</fiveqi> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <nrQfiGrp>
                                 <fiveqi>2</fiveqi> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <nrQfiGrp>
                                 <fiveqi>3</fiveqi> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <nrQfiGrp>
                                 <fiveqi>5</fiveqi> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <nrQfiGrp>
                                 <fiveqi>9</fiveqi> 
                                 <snFieldLenUlAm>size18</snFieldLenUlAm>
                                 <snFieldLenDlAm>size18</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms250</pollRetxTmr>
                                 <pollPdu>pdu64</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr32</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms10</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </nrQfiGrp>
                         <eutraQosGrp>
                                 <qci>1</qci> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </eutraQosGrp>
                         <eutraQosGrp>
                                 <qci>9</qci> 
                                 <snFieldLenUlAm>size12</snFieldLenUlAm>
                                 <snFieldLenDlAm>size12</snFieldLenDlAm>
                                 <snFieldLenUlUm>size12</snFieldLenUlUm>
                                 <snFieldLenDlUm>size12</snFieldLenDlUm>
                                 <pollRetxTmr>ms400</pollRetxTmr>
                                 <pollPdu>pdu32</pollPdu>
                                 <pollByte>infinity</pollByte>
                                 <maxRetxThreshold>tmr8</maxRetxThreshold>
                                 <reassemblyTmr>ms40</reassemblyTmr>
                                 <statusProhibitTmr>ms35</statusProhibitTmr>
                                 <ulLcPriority>4</ulLcPriority>
                         </eutraQosGrp>
                 </rlcCfg>
                 <nSsbPwr>-10</nSsbPwr>
              </gnbCellDuVsCfg>
           </gnbDuCfg>
          </gnbvs>  
              
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/vsDataFormatVersionaction CREATEvalue gnb_cell_du_vs_config.yang
path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBDUFunction[0]/gNBDUIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/gNBDUNameaction CREATEvalue gnb01du
path /ME/GNBDUFunction[0]/gNBIdaction CREATEvalue 0
path /ME/GNBDUFunction[0]/gNBIdLengthaction CREATEvalue 22
path /ME/GNBDUFunction[0]/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/objectClassaction CREATEvalue RNCFunction
path /ME/GNBDUFunction[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/peeParametersListaction MODIFY
path /ME/GNBDUFunction[0]/peeParametersList/environmentTypeaction CREATEvalue 1
path /ME/GNBDUFunction[0]/peeParametersList/equipmentTypeaction CREATEvalue 0
path /ME/GNBDUFunction[0]/peeParametersList/powerInterfaceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/peeParametersList/siteDescriptionaction CREATEvalue prestige tech park
path /ME/GNBDUFunction[0]/peeParametersList/siteIdentificationaction CREATEvalue Tech Park
path /ME/GNBDUFunction[0]/peeParametersList/siteLatitudeaction CREATEvalue 129781_4
path /ME/GNBDUFunction[0]/peeParametersList/siteLongitudeaction CREATEvalue 776653_4
path /ME/GNBDUFunction[0]/userLabelaction CREATEvalue GNBDUFunction
path /ME/GNBDUFunction[0]/vnfParametersListaction MODIFY
path /ME/GNBDUFunction[0]/vnfParametersList/autoScalableaction CREATEvalue 0
path /ME/GNBDUFunction[0]/vnfParametersList/flavourIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/vnfParametersList/vnfInstanceIdaction CREATEvalue 0
path /ME/GNBDUFunction[0]/vnfParametersList/vnfdIdaction CREATEvalue 1
path /ME/GNBDUFunction[0]/vsDataContaineraction CREATEvalue 3
path /ME/GNBDUFunction[0]/vsDataContainer[0]action CREATE
path /ME/GNBDUFunction[0]/vsDataContainer[0]/idaction CREATEvalue 0
path /ME/GNBDUFunction[0]/vsDataContainer[0]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBDUFunction[0]/vsDataContainer[0]/objectInstanceaction CREATEvalue 0
path /ME/GNBDUFunction[0]/vsDataContainer[0]/vsDataaction CREATEvalue 
          <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
           <gnbDuCfg>
            <id>0</id>
            <numOutboundStrms>1</numOutboundStrms>
            <maxInboundStrms>1</maxInboundStrms>
            <maxInitAttempts>5</maxInitAttempts>
            <heartBeatIntervalInMs>5000</heartBeatIntervalInMs>
            <maxPathRetx>1</maxPathRetx>
           </gnbDuCfg>
          </gnbvs>  
         
path /ME/GNBDUFunction[0]/vsDataContainer[0]/vsDataFormatVersionaction CREATEvalue gnb_sctp_vs_config.yang
path /ME/GNBDUFunction[0]/vsDataContainer[0]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBDUFunction[0]/vsDataContainer[1]action CREATE
path /ME/GNBDUFunction[0]/vsDataContainer[1]/idaction CREATEvalue 1
path /ME/GNBDUFunction[0]/vsDataContainer[1]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBDUFunction[0]/vsDataContainer[1]/objectInstanceaction CREATEvalue 1
path /ME/GNBDUFunction[0]/vsDataContainer[1]/vsDataaction CREATEvalue 
            <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
             <gnbDuCfg>
              <id>0</id>
             <duLog>
                <moduleId>OAMAG</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUMGR</moduleId>
                <logLvl>INF</logLvl>
             </duLog>
             <duLog>
                <moduleId>DURRM</moduleId>
                <logLvl>INF</logLvl>
             </duLog>
             <duLog>
                <moduleId>APPUE</moduleId>
                <logLvl>TRC</logLvl>
             </duLog>
             <duLog>
                <moduleId>CODEC</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>EVENT</moduleId>
                <logLvl>TRC</logLvl>
             </duLog>
             <duLog>
                <moduleId>EGTPU</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUUDP</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUCMN</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUMAC</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>SCHL1</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>SCHL2</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUCL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>DUNS</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>FSPKT</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>NRUP</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>F1AP</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>SCTP</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>CL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>COMMON_UMM</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>SCH</moduleId>
                <logLvl>FATAL</logLvl>
             </duLog>
             <duLog>
                <moduleId>MAC_COMMON</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>MAC_UL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>MAC_DL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>RLC_UL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>RLC_DL</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>RLC_COMMON</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>OAM_AGENT</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>PM</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <duLog>
                <moduleId>FM</moduleId>
                <logLvl>ERR</logLvl>
             </duLog>
             <ngpLog>
                <moduleId>MEM</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>BUF</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>STATS</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>TIMER</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>STHREAD</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>CTHREAD</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>SYS</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>EXCP</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>COMM</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>SCTP</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>UDP</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>TCP</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>MSGQ</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>PRIOQ</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>WORKQ</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <ngpLog>
                <moduleId>PERF</moduleId>
                <logLvl>FATAL</logLvl>
             </ngpLog>
             <logFilePath>/opt/faca/log/du/</logFilePath>
             <logFileName>du</logFileName>
             <maxLogFileSize>10000000</maxLogFileSize>
             <maxLogFileCount>5</maxLogFileCount>
             <enableBinLog>false</enableBinLog>
            </gnbDuCfg>
          </gnbvs>  
          
path /ME/GNBDUFunction[0]/vsDataContainer[1]/vsDataFormatVersionaction CREATEvalue gnb_log_vs_config.yang
path /ME/GNBDUFunction[0]/vsDataContainer[1]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/GNBDUFunction[0]/vsDataContainer[2]action CREATE
path /ME/GNBDUFunction[0]/vsDataContainer[2]/idaction CREATEvalue 2
path /ME/GNBDUFunction[0]/vsDataContainer[2]/objectClassaction CREATEvalue vsDataContainer
path /ME/GNBDUFunction[0]/vsDataContainer[2]/objectInstanceaction CREATEvalue 2
path /ME/GNBDUFunction[0]/vsDataContainer[2]/vsDataaction CREATEvalue 
        <gnbvs xmlns="urn:rdns:com:radisys:nr:gnb">
          <gnbDuCfg>
          <id>0</id>
<!--
          <nsSysCfg>
             <nsiId>1</nsiId>
             <coreList>1</coreList>
             <coreList>2</coreList>
             <coreList>3</coreList>
          </nsSysCfg>
-->
          <maxRlcSduQSize>9000</maxRlcSduQSize>
          <rlcSduQLwrThr>200</rlcSduQLwrThr>
          <rlcSduQUprThr>400</rlcSduQUprThr>
          <nrupFlowCtrlTmrInMS>15</nrupFlowCtrlTmrInMS>
          <enNrupMissingReport>75</enNrupMissingReport>
          <isUlCAEnbld>false</isUlCAEnbld>
          <sliceMgrCfg>
         <nsAgentCfgType>disableNs</nsAgentCfgType>
         <localAddress>192.168.1.104</localAddress>
         <localPort>4343</localPort>
         <remoteAddress>192.168.1.105</remoteAddress>
         <remotePort>4343</remotePort>
         </sliceMgrCfg>
         <gnbF1cVsConfig>
            <F1CAlarm>
               <alarmId>ALARM_F1C_COMM_DOWN</alarmId>
               <alarmName>ALARM_F1C_COMM_DOWN</alarmName>
               <thresholdLevel>0</thresholdLevel>
               <thresholdCount>0</thresholdCount>
               <thresholdTimeInterval>600</thresholdTimeInterval>
            </F1CAlarm>
         </gnbF1cVsConfig>
         </gnbDuCfg>
        </gnbvs>  
      
path /ME/GNBDUFunction[0]/vsDataContainer[2]/vsDataFormatVersionaction CREATEvalue gnb_du_vs_config.yang
path /ME/GNBDUFunction[0]/vsDataContainer[2]/vsDataTypeaction CREATEvalue 2019-12-31
path /ME/MeasurementControlaction CREATEvalue 1
path /ME/MeasurementControl[0]action CREATE
path /ME/MeasurementControl[0]/defaultFileBasedGPaction CREATEvalue 300
path /ME/MeasurementControl[0]/defaultFileLocationaction CREATEvalue /opt/faca/log/du/
path /ME/MeasurementControl[0]/defaultFileReportingPeriodaction CREATEvalue 15
path /ME/MeasurementControl[0]/defaultSamplingNumberaction CREATEvalue 10
path /ME/MeasurementControl[0]/idaction CREATEvalue 0
path /ME/MeasurementControl[0]/pMAdministrativeStateaction CREATEvalue 0
path /ME/dnPrefixaction CREATEvalue gnb
path /ME/idaction CREATEvalue 0
path /ME/locationNameaction CREATEvalue BLE
path /ME/objectClassaction CREATEvalue ME
path /ME/objectInstanceaction CREATEvalue 0
path /ME/swVersionaction CREATEvalue 2.0
path /ME/userDefinedStateaction CREATEvalue DRAFT
path /ME/userLabelaction CREATEvalue ME
path /ME/vendorNameaction CREATEvalue RSYS
1 read for path /ME
1 read for path /ME
1read for path/ME/objectClass
1read for path/ME/objectInstance
1 read for path /ME/id
1read for path/ME/vendorName
1 read for path /ME/userDefinedState
1read for path/ME/swVersion
1read for path/ME/dnPrefix
1 read for path /ME/userLabel
1read for path/ME/locationName
1read for path/ME/managedBy
1read for path/ME/managedElementTypeList
1read for path/ME/vsDataContainer
1 read for path /ME
1 read for path /ME
1read for path/ME/MeasurementControl
1 read for path /ME/MeasurementControl[0]
1read for key path/ME/MeasurementControl[0]/id
1 read for path /ME/MeasurementControl[0]
1 read for path /ME/MeasurementControl[0]/id
1 read for path /ME/MeasurementControl[0]
1 read for path /ME/MeasurementControl[0]/pMAdministrativeState
1 read for path /ME/MeasurementControl[0]/defaultFileLocation
1 read for path /ME/MeasurementControl[0]/defaultSamplingNumber
1 read for path /ME/MeasurementControl[0]/defaultFileBasedGP
1 read for path /ME/MeasurementControl[0]/defaultFileReportingPeriod
1read for path/ME/MeasurementControl[0]/MeasurementReader
1read for path/ME/ThresholdMonitoringCapability
1read for path/ME/ThresholdMonitor
1 read for path /ME
1read for path/ME/FMControl
1 read for path /ME/FMControl[0]
1read for key path/ME/FMControl[0]/id
1 read for path /ME/FMControl[0]
1 read for path /ME/FMControl[0]/id
1 read for path /ME/FMControl[0]
1 read for path /ME/FMControl[0]/administrativeState
1read for path/ME/AlarmList
1 read for path /ME/AlarmList[0]
1read for key path/ME/AlarmList[0]/id
1 read for path /ME/AlarmList[0]
1 read for path /ME/AlarmList[0]/id
1 read for path /ME/AlarmList[0]
1read for path/ME/GNBDUFunction
1 read for path /ME/GNBDUFunction[0]
1read for key path/ME/GNBDUFunction[0]/id
1 read for path /ME/GNBDUFunction[0]
1 read for path /ME/GNBDUFunction[0]
1read for path/ME/GNBDUFunction[0]/objectClass
1read for path/ME/GNBDUFunction[0]/objectInstance
1 read for path /ME/GNBDUFunction[0]/id
1read for path/ME/GNBDUFunction[0]/userLabel
1 read for path /ME/GNBDUFunction[0]/vnfParametersList/vnfInstanceId
1 read for path /ME/GNBDUFunction[0]/vnfParametersList/vnfdId
1 read for path /ME/GNBDUFunction[0]/vnfParametersList/flavourId
1 read for path /ME/GNBDUFunction[0]/vnfParametersList/autoScalable
1 read for path /ME/GNBDUFunction[0]/peeParametersList/siteIdentification
1 read for path /ME/GNBDUFunction[0]/peeParametersList/siteLatitude
1 read for path /ME/GNBDUFunction[0]/peeParametersList/siteLongitude
1 read for path /ME/GNBDUFunction[0]/peeParametersList/siteDescription
1 read for path /ME/GNBDUFunction[0]/peeParametersList/equipmentType
1 read for path /ME/GNBDUFunction[0]/peeParametersList/environmentType
1 read for path /ME/GNBDUFunction[0]/peeParametersList/powerInterface
1read for path/ME/GNBDUFunction[0]/vsDataContainer
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[0]
1read for key path/ME/GNBDUFunction[0]/vsDataContainer[0]/id
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[0]
1read for path/ME/GNBDUFunction[0]/vsDataContainer[0]/objectClass
1read for path/ME/GNBDUFunction[0]/vsDataContainer[0]/objectInstance
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[0]/id
1read for path/ME/GNBDUFunction[0]/vsDataContainer[0]/vsDataType
1read for path/ME/GNBDUFunction[0]/vsDataContainer[0]/vsDataFormatVersion
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[1]
1read for key path/ME/GNBDUFunction[0]/vsDataContainer[1]/id
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[1]
1read for path/ME/GNBDUFunction[0]/vsDataContainer[1]/objectClass
1read for path/ME/GNBDUFunction[0]/vsDataContainer[1]/objectInstance
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[1]/id
1read for path/ME/GNBDUFunction[0]/vsDataContainer[1]/vsDataType
1read for path/ME/GNBDUFunction[0]/vsDataContainer[1]/vsDataFormatVersion
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[2]
1read for key path/ME/GNBDUFunction[0]/vsDataContainer[2]/id
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[2]
1read for path/ME/GNBDUFunction[0]/vsDataContainer[2]/objectClass
1read for path/ME/GNBDUFunction[0]/vsDataContainer[2]/objectInstance
1 read for path /ME/GNBDUFunction[0]/vsDataContainer[2]/id
1read for path/ME/GNBDUFunction[0]/vsDataContainer[2]/vsDataType
1read for path/ME/GNBDUFunction[0]/vsDataContainer[2]/vsDataFormatVersion
1 read for path /ME/GNBDUFunction[0]
1 read for path /ME/GNBDUFunction[0]/gNBDUId
1read for path/ME/GNBDUFunction[0]/gNBDUName
1read for path/ME/GNBDUFunction[0]/gNBId
1read for path/ME/GNBDUFunction[0]/gNBIdLength
1 read for path /ME/GNBDUFunction[0]/F1C_EP
1 read for path /ME/GNBDUFunction[0]/F1C_EP
1 read for path /ME/GNBDUFunction[0]/F1C_EP
1 read for path /ME/GNBDUFunction[0]/F1C_EP
1read for path/ME/GNBDUFunction[0]/F1C_EP/objectClass
1read for path/ME/GNBDUFunction[0]/F1C_EP/objectInstance
1 read for path /ME/GNBDUFunction[0]/F1C_EP/id
1read for path/ME/GNBDUFunction[0]/F1C_EP/userLabel
1read for path/ME/GNBDUFunction[0]/F1C_EP/farEndEntity
1read for path/ME/GNBDUFunction[0]/F1C_EP/vsDataContainer
1 read for path /ME/GNBDUFunction[0]/F1C_EP
1 read for path /ME/GNBDUFunction[0]/F1C_EP/localIpAddress
1read for path/ME/GNBDUFunction[0]/F1C_EP/localVlanId
1read for path/ME/GNBDUFunction[0]/F1C_EP/remoteAddress
1read for path/ME/GNBDUFunction[0]/EP_F1U
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]
1read for key path/ME/GNBDUFunction[0]/EP_F1U[0]/id
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/objectClass
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/objectInstance
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]/id
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/userLabel
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/farEndEntity
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/vsDataContainer
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]
1 read for path /ME/GNBDUFunction[0]/EP_F1U[0]/localIpAddress
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/localVlanId
1read for path/ME/GNBDUFunction[0]/EP_F1U[0]/remoteAddress
1read for path/ME/GNBDUFunction[0]/NRCellDU
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]
1read for key path/ME/GNBDUFunction[0]/NRCellDU[0]/id
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/objectClass
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/objectInstance
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/id
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/userLabel
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/vnfInstanceId
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/vnfdId
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/flavourId
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vnfParametersList/autoScalable
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteIdentification
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteLatitude
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteLongitude
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/siteDescription
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/equipmentType
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/environmentType
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/peeParametersList/powerInterface
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]
1read for key path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/id
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/objectClass
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/objectInstance
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/id
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/vsDataType
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/vsDataContainer[0]/vsDataFormatVersion
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/nCI
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]
1read for key path/ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]/MCC
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]/MCC
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/pLMNId[0]/MNC
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/s-NSSAI
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/administrativeState
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/nRPCI
1 read for path /ME/GNBDUFunction[0]/NRCellDU[0]/nRTAC
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/arfcnDL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/arfcnUL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/arfcnSUL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwDL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwUL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/bSChannelBwSUL
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/NRSectorCarrier
1read for path/ME/GNBDUFunction[0]/NRCellDU[0]/bWP
1read for path/ME/GNBDUFunction[0]/NRSectorCarrier
1read for path/ME/GNBDUFunction[0]/BWP
TRACE CDB_SYNC_SUB CDB_DONE_PRIORITY --> CONFD_OK
close_confd_subscription_connection
establish_confd_subscription_connection
 --> CONFD_OK
TRACE Connected (cdb) to ConfD
TRACE CDB_SUBSCRIBE /ME --> CONFD_OK
TRACE CDB_SUBSCRIBE /gnbvs --> CONFD_OK
TRACE CDB_SUBSCRIBE_DONE  --> CONFD_OK
SYS->COMM: dynamic configuration read 3gpp
INFO: DECODING MANAGED FUNCTION VSDATA
INFO: DECODING NRCELLDU VSDATA
TRACE Connected (maapi) to ConfD
TRACE MAAPI_START_USER_SESSION  --> CONFD_OK
TRACE MAAPI_START_TRANS  --> CONFD_OK
TRACE MAAPI_LOAD_CONFIG  --> CONFD_OK
TRACE Connected (stream) to ConfD
TRACE MAAPI_LOAD_CONFIG_RESULT  --> CONFD_OK
TRACE MAAPI_APPLY_TRANS TRACE CDB_SUBSCRIPTION_EVENT --> 8
TRACE CDB_SYNC_SUB CDB_DONE_PRIORITY --> CONFD_OK
 --> CONFD_OK
TRACE MAAPI_END_USER_SESSION  --> CONFD_OK
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_EXISTS /gnbvs/gnbDuCfg[0] --> CONFD_OK
TRACE CDB_END_SESSION  --> CONFD_OK
TRACE Connected (cdb) to ConfD
TRACE CDB_TRIGGER_SUBS TRACE CDB_SUBSCRIPTION_EVENT --> 8
TRACE Connected (maapi) to ConfD
TRACE MAAPI_LOAD_ALL_NS
TRACE MAAPI_LOAD_MNS_MAPS
TRACE MAAPI_LOAD_HASH_DB
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_SUB_ITERATE 8
TRACE CDB_END_SESSION  --> CONFD_OK
path action MODIFY
path /MEaction CREATE
path /gnbvsaction CREATE
path /gnbvs/gnbDuCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/duLogaction CREATEvalue 30
path /gnbvs/gnbDuCfg[0]/duLog[0]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[0]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[0]/moduleIdaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/duLog[10]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[10]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[10]/moduleIdaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/duLog[11]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[11]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[11]/moduleIdaction CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/duLog[12]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[12]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[12]/moduleIdaction CREATEvalue 13
path /gnbvs/gnbDuCfg[0]/duLog[13]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[13]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[13]/moduleIdaction CREATEvalue 14
path /gnbvs/gnbDuCfg[0]/duLog[14]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[14]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[14]/moduleIdaction CREATEvalue 15
path /gnbvs/gnbDuCfg[0]/duLog[15]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[15]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[15]/moduleIdaction CREATEvalue 16
path /gnbvs/gnbDuCfg[0]/duLog[16]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[16]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[16]/moduleIdaction CREATEvalue 17
path /gnbvs/gnbDuCfg[0]/duLog[17]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[17]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[17]/moduleIdaction CREATEvalue 18
path /gnbvs/gnbDuCfg[0]/duLog[18]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[18]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[18]/moduleIdaction CREATEvalue 19
path /gnbvs/gnbDuCfg[0]/duLog[19]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[19]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[19]/moduleIdaction CREATEvalue 20
path /gnbvs/gnbDuCfg[0]/duLog[1]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[1]/logLvlaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/duLog[1]/moduleIdaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[20]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[20]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[20]/moduleIdaction CREATEvalue 21
path /gnbvs/gnbDuCfg[0]/duLog[21]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[21]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[21]/moduleIdaction CREATEvalue 22
path /gnbvs/gnbDuCfg[0]/duLog[22]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[22]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[22]/moduleIdaction CREATEvalue 23
path /gnbvs/gnbDuCfg[0]/duLog[23]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[23]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[23]/moduleIdaction CREATEvalue 24
path /gnbvs/gnbDuCfg[0]/duLog[24]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[24]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[24]/moduleIdaction CREATEvalue 25
path /gnbvs/gnbDuCfg[0]/duLog[25]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[25]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[25]/moduleIdaction CREATEvalue 26
path /gnbvs/gnbDuCfg[0]/duLog[26]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[26]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[26]/moduleIdaction CREATEvalue 27
path /gnbvs/gnbDuCfg[0]/duLog[27]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[27]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[27]/moduleIdaction CREATEvalue 28
path /gnbvs/gnbDuCfg[0]/duLog[28]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[28]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[28]/moduleIdaction CREATEvalue 29
path /gnbvs/gnbDuCfg[0]/duLog[29]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[29]/logLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[29]/moduleIdaction CREATEvalue 30
path /gnbvs/gnbDuCfg[0]/duLog[2]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[2]/logLvlaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/duLog[2]/moduleIdaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/duLog[3]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[3]/logLvlaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/duLog[3]/moduleIdaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/duLog[4]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[4]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[4]/moduleIdaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/duLog[5]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[5]/logLvlaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/duLog[5]/moduleIdaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/duLog[6]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[6]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[6]/moduleIdaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/duLog[7]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[7]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[7]/moduleIdaction CREATEvalue 7
path /gnbvs/gnbDuCfg[0]/duLog[8]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[8]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[8]/moduleIdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/duLog[9]action CREATE
path /gnbvs/gnbDuCfg[0]/duLog[9]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/duLog[9]/moduleIdaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/enNrupMissingReportaction CREATEvalue 75
path /gnbvs/gnbDuCfg[0]/enableBinLogaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarmaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/alarmIdaction CREATEvalue 13313
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/alarmNameaction CREATEvalue ALARM_CELL_ADMIN_LOCKED
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/alarmIdaction CREATEvalue 13314
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/alarmNameaction CREATEvalue ALARM_CELL_SETUP_FAIL
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/alarmIdaction CREATEvalue 13315
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/alarmNameaction CREATEvalue ALARM_CELL_L1_COMM_FAIL
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/alarmIdaction CREATEvalue 13316
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/alarmNameaction CREATEvalue ALARM_CELL_L1_ERROR_IND
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/alarmIdaction CREATEvalue 13317
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/alarmNameaction CREATEvalue ALARM_CELL_TTI_STRETCH
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/alarmIdaction CREATEvalue 13318
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/alarmNameaction CREATEvalue ALARM_CELL_VC_QUEUE_FULL
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/fairnessCoeffaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/gbrServedRateCoeffaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/nr5qiCoeffaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalGbrServedRatePriolvlaction CREATEvalue 100
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalSlicePriolvlaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalUePfsPriolvlaction CREATEvalue 100
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/tptCoEffaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/uePfsCoeffaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmnaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSlotaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSlotP2action CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSymbolaction CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSymbolP2action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSlotaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSlotP2action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSymbolaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSymbolP2action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/p2Presaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/cdmTypeaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsDensityaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsPeriodicityaction CREATEvalue 160
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsRowTypeaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/dot5EvenOddaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/firstSymaction CREATEvalue 13
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/isCsiRsEnableaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/rowBitmapaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/secondSymaction CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/secondSymPresaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/deploymentModeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmnaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/bwpIdaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/cntrlResourceSetSearchSpaceCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/cntrlResourceSetSearchSpaceCfg/avgAggregationLvlaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/cyclicPrefixaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/muaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/numRbaction CREATEvalue 273
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/resourceAllocCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/resourceAllocTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/startRbaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absArfcnPointAaction CREATEvalue 720048
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absArfcnSsbaction CREATEvalue 720288
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absFreqPointAaction CREATEvalue 4800720
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absFreqSsbaction CREATEvalue 4804320
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/bSChannelBwDLaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/dlEarfcnaction CREATEvalue 723324
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/nrFreqBandaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/nrFreqBand[0]action CREATEvalue 79
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/carrierBwaction CREATEvalue 273
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/offsetToCarrieraction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/subCarrierSpacingaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/numCceRsvdForCmnPdcchaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/dmrsAdditionalPosDlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/dmrsTypeDlaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/maxLenDlaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/scramblingID0Dlaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/scramblingID1Dlaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/dmrsAdditionalPosUlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/dmrsTypeUlaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/maxLenUlaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUlaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/istransPrecodingDisabledaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/scramblingID0action CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/scramblingID1action CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUlaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/istransPrecodingEnabledaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/nPUSCHIdaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/seqGrpHoppingaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/seqHoppingaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/enablePdschRateMatchCoresetaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/enableRateMatchSsbPbchaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/featureSetBitMapaction CREATEvalue 7
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/freqRangeTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/idaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/mibParamsaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/mibParams/cellBarredaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/mibParams/intraFreqReselectionaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nCarrierAggregationLvlaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlBwaction CREATEvalue 100
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlCarrierK0action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlCenterFreqaction CREATEvalue 3351000
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlFftSizeaction CREATEvalue 4096
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nModeaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlBwaction CREATEvalue 100
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlCarrierK0action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlCenterFreqaction CREATEvalue 3351000
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlFftSizeaction CREATEvalue 4096
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/highSpeedFlagaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/l1PrachCfgInfoRootSeqIdxaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachCfgIdxaction CREATEvalue 158
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFdmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFreqOffsetaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFreqStartaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachRestrictSetaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachSsbRachaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachSubcSpacingaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/zeroCorrelationZoneCfgaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Paramsaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityListaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/cellIdaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/cellReservedOperatorUseaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdListaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/MCCaction CREATEvalue 460
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/MNCaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/pLMNIdIndexaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdentityInfoIndexaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/ranacaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/tacBitMapaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qQualMinaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qQualMin/rsrpLvlaction CREATEvalue -30
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMinaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMin/rsrpLvlaction CREATEvalue -64
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMinSulaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMinSul/rsrpLvlaction CREATEvalue -50
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmraction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/n310action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/n311action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t300action CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t301action CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t310action CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t311action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t319action CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternTypeaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/activateSfnaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/bitWidthSizeaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/cellIdaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/dlTrafficPatternaction CREATEvalue 830
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/isLteNrCoEnableaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/isSulFreqMuteaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/ltePucchRbInEdgeaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/mbSfnControlSymaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/sharingTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/ulTrafficPatternaction CREATEvalue 830
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmnaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/bcchMcsaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/cyclicPrefixTypeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlCcchCqiaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlLaStepdownaction CREATEvalue 99
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlLaStepupaction CREATEvalue 9
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlMcsaction CREATEvalue 22
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlModulationaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlNumAntPortsaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlRankaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/enable_dci1_1And0_1action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/enable_pdsch_in_ssb_slotaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isBfrEnbldaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isBmEnbldaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isPhaseTrackingRefSigEnbaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlHqTxaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUePerTTIaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithCePerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithGbrPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithImsPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithNonGbrPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithSrbPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithVoicePerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxMsg4HqTxaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlHqTxaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUePerTTIaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithGbrPerTtiaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithImsPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithNonGbrPerTtiaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithSrbPerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithVoicePerTtiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/numSsbaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/pcchMcsaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfigaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/isPhrEnableaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrModeOtherCgaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrPeriodicTimeraction CREATEvalue 7
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrProhibitPeriodicTimeraction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrTxPwrChangeFactoraction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrType2OtherCellaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/preambleSizeaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/preambleStartaction CREATEvalue 47
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/rarMcsaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ssPbchBurstSetSizeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/tUlSyncTimeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/taTmrInMsaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/tagIdaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulCcchCqiaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulLaStepdownaction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulLaStepupaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulMcsaction CREATEvalue 16
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulModulationaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulNumOfAntPortsaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulRankaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrDlLaStepdownaction CREATEvalue 30
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrDlLaStepupaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrUlLaStepdownaction CREATEvalue 30
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrUlLaStepupaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/maxNumRntiaction CREATEvalue 160
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/maxNumUesaction CREATEvalue 160
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/modeTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGIaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCellIdaction CREATEvalue 000000001
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNIdaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNId/MCCaction CREATEvalue 460
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNId/MNCaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nSsbPwraction CREATEvalue -10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nTimingAdvanceOffsetaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nrMuaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/numPucchCellGrpaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/defaultPagCycleaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/monitorTypeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/naction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/nsaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/numOfPoPerPfaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/occasionOfPoaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/occasionOfPo[0]action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pdcchDmrsScramblingIDaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pdschDataScramblingIDaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/puschDataScramblingIDaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrpaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/qciaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/qciaction CREATEvalue 9
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrpaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/fiveqiaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/fiveqiaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/fiveqiaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/fiveqiaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/fiveqiaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/maxRetxThresholdaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollPduaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollRetxTmraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenDlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenUlAmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/statusProhibitTmraction CREATEvalue 35
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/fiveqiaction CREATEvalue 9
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/maxRetxThresholdaction CREATEvalue 32
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollByteaction CREATEvalue -1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollPduaction CREATEvalue 64
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollRetxTmraction CREATEvalue 250
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/reassemblyTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenDlAmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenDlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenUlAmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenUlUmaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/statusProhibitTmraction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/ulLcPriorityaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rntiStartaction CREATEvalue 17017
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnListaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnIdaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnId/MCCaction CREATEvalue 460
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnId/MNCaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnIdxaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceListaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sdaction CREATEvalue 198153
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sliceIdxaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sstaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sib2Periodcityaction CREATEvalue 128
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sib3Periodicityaction CREATEvalue 256
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibsaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]/sibTypeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]/valueTagaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/tciInDciaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmnaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/addnlUlCoresetEnableaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/bwpIdaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/csiPeriodicityaction CREATEvalue 160
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicPrefixaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicShiftaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicShift/cyclicShiftBitmapaction CREATEvalue 65
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicShift/numOfCyclicShiftaction CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/distributePucchInBwpEdgesaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f0f2SymLengthaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f2MaxPayloadLen1action CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f2MaxPayloadLen2action CREATEvalue 12
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/hoppingIdaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/maxCodeRateaction CREATEvalue 8
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/muaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/numRbaction CREATEvalue 273
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/p0Nominalaction CREATEvalue -82
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchCmnCfgPresaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchGrpHoppingaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF0action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF1action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF2action CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF3action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF4action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/p0PucchValaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/p0nominalaction CREATEvalue -82
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchResourceCmnaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschCmnCfgPresaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/alphaaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/deltaMcsEnabledaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/isAccumulatedaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/msg3alphaaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/msg3deltaPreambleaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/p0action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/p0nominalaction CREATEvalue -82
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschTxCfgaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/cbPreamblePerSsbaction CREATEvalue 4
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/contentResolutionTmraction CREATEvalue 40
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/grpBPreambleCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/grpBPreambleCfg/msg3SizeGrpAaction CREATEvalue 56
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/grpBPreambleCfg/numOfRachPreambleGrpAaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/maxMsg3Txaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/msg1Scsaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/preambleFormataction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/msg1Fdmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/msg1FreqStartaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/prachCfgIdxaction CREATEvalue 158
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/preambleRcvdTgtPwraction CREATEvalue -100
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/preambleTransMaxaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/pwrRampingStepaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/rachRspWindowaction CREATEvalue 20
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/zeroCorrelationZoneCfgaction CREATEvalue 6
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/restrictedSetCfgaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rootSeqTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rootSeqValaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rsrpThresholdSsbaction CREATEvalue 31
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/ssbsPerRachaction CREATEvalue 3
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/totalNumOfRachPreambleaction CREATEvalue 16
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/resourceAllocCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/resourceAllocTypeaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/simultaneousHarqAckCsiaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srPeriodicityaction CREATEvalue 11
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/ktcaction CREATEvalue 2
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/maxSrsUePerSlotaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/numSrsSymaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/startRbaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPuschaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/alphaScalingaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/avoidPuschBasedOnUciTypeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx1action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx2action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx3action CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfoaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/absArfcnPointAaction CREATEvalue 720048
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/absFreqPointAaction CREATEvalue 4800720
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/addtionalSpectrumEmissionaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/bSChannelBwUlaction CREATEvalue 10
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/freqShft7p5khzaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/nrFreqBandaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/nrFreqBand[0]action CREATEvalue 79
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/pMaxaction CREATEvalue 23
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfgaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/carrierBwaction CREATEvalue 273
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/offsetToCarrieraction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/subCarrierSpacingaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/ulEarfcnaction CREATEvalue 723324
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulTargetCqiaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulTargetCqi/targetCqiaction CREATEvalue 9
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfigaction MODIFY
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarmaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]action CREATE
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/alarmIdaction CREATEvalue 14081
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/alarmNameaction CREATEvalue ALARM_F1C_COMM_DOWN
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdCountaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdLevelaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdTimeIntervalaction CREATEvalue 600
path /gnbvs/gnbDuCfg[0]/heartBeatIntervalInMsaction CREATEvalue 5000
path /gnbvs/gnbDuCfg[0]/idaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/isUlCAEnbldaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/logFileNameaction CREATEvalue du
path /gnbvs/gnbDuCfg[0]/logFilePathaction CREATEvalue /opt/faca/log/du/
path /gnbvs/gnbDuCfg[0]/maxInboundStrmsaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/maxInitAttemptsaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/maxLogFileCountaction CREATEvalue 5
path /gnbvs/gnbDuCfg[0]/maxLogFileSizeaction CREATEvalue 10000000
path /gnbvs/gnbDuCfg[0]/maxPathRetxaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/maxRlcSduQSizeaction CREATEvalue 9000
path /gnbvs/gnbDuCfg[0]/ngpLogaction CREATEvalue 16
path /gnbvs/gnbDuCfg[0]/ngpLog[0]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[0]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[0]/moduleIdaction CREATEvalue 4096
path /gnbvs/gnbDuCfg[0]/ngpLog[10]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[10]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[10]/moduleIdaction CREATEvalue 4106
path /gnbvs/gnbDuCfg[0]/ngpLog[11]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[11]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[11]/moduleIdaction CREATEvalue 4107
path /gnbvs/gnbDuCfg[0]/ngpLog[12]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[12]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[12]/moduleIdaction CREATEvalue 4108
path /gnbvs/gnbDuCfg[0]/ngpLog[13]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[13]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[13]/moduleIdaction CREATEvalue 4109
path /gnbvs/gnbDuCfg[0]/ngpLog[14]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[14]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[14]/moduleIdaction CREATEvalue 4110
path /gnbvs/gnbDuCfg[0]/ngpLog[15]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[15]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[15]/moduleIdaction CREATEvalue 4111
path /gnbvs/gnbDuCfg[0]/ngpLog[1]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[1]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[1]/moduleIdaction CREATEvalue 4097
path /gnbvs/gnbDuCfg[0]/ngpLog[2]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[2]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[2]/moduleIdaction CREATEvalue 4098
path /gnbvs/gnbDuCfg[0]/ngpLog[3]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[3]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[3]/moduleIdaction CREATEvalue 4099
path /gnbvs/gnbDuCfg[0]/ngpLog[4]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[4]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[4]/moduleIdaction CREATEvalue 4100
path /gnbvs/gnbDuCfg[0]/ngpLog[5]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[5]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[5]/moduleIdaction CREATEvalue 4101
path /gnbvs/gnbDuCfg[0]/ngpLog[6]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[6]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[6]/moduleIdaction CREATEvalue 4102
path /gnbvs/gnbDuCfg[0]/ngpLog[7]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[7]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[7]/moduleIdaction CREATEvalue 4103
path /gnbvs/gnbDuCfg[0]/ngpLog[8]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[8]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[8]/moduleIdaction CREATEvalue 4104
path /gnbvs/gnbDuCfg[0]/ngpLog[9]action CREATE
path /gnbvs/gnbDuCfg[0]/ngpLog[9]/logLvlaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/ngpLog[9]/moduleIdaction CREATEvalue 4105
path /gnbvs/gnbDuCfg[0]/nrupFlowCtrlTmrInMSaction CREATEvalue 15
path /gnbvs/gnbDuCfg[0]/numOutboundStrmsaction CREATEvalue 1
path /gnbvs/gnbDuCfg[0]/rlcSduQLwrThraction CREATEvalue 200
path /gnbvs/gnbDuCfg[0]/rlcSduQUprThraction CREATEvalue 400
path /gnbvs/gnbDuCfg[0]/sliceMgrCfgaction MODIFY
path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/localAddressaction CREATEvalue 192.168.1.104
path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/localPortaction CREATEvalue 4343
path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/nsAgentCfgTypeaction CREATEvalue 0
path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/remoteAddressaction CREATEvalue 192.168.1.105
path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/remotePortaction CREATEvalue 4343
1read for path/gnbvs/gnbDuCfg
1 read for path /gnbvs/gnbDuCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/id
1 read for path /gnbvs/gnbDuCfg[0]/id
1 read for path /gnbvs/gnbDuCfg[0]
1 read for path /gnbvs/gnbDuCfg[0]
1 read for path /gnbvs/gnbDuCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/duLog
1 read for path /gnbvs/gnbDuCfg[0]/duLog[0]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[0]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[0]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[0]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[1]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[1]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[1]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[1]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[2]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[2]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[2]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[2]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[3]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[3]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[3]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[3]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[4]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[4]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[4]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[4]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[5]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[5]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[5]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[5]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[6]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[6]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[6]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[6]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[7]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[7]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[7]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[7]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[8]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[8]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[8]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[8]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[9]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[9]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[9]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[9]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[10]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[10]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[10]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[10]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[11]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[11]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[11]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[11]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[12]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[12]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[12]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[12]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[13]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[13]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[13]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[13]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[14]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[14]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[14]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[14]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[15]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[15]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[15]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[15]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[16]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[16]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[16]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[16]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[17]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[17]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[17]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[17]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[18]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[18]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[18]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[18]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[19]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[19]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[19]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[19]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[20]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[20]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[20]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[20]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[21]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[21]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[21]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[21]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[22]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[22]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[22]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[22]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[23]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[23]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[23]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[23]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[24]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[24]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[24]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[24]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[25]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[25]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[25]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[25]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[26]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[26]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[26]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[26]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[27]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[27]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[27]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[27]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[28]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[28]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[28]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[28]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/duLog[29]
1read for key path/gnbvs/gnbDuCfg[0]/duLog[29]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/duLog[29]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/duLog[29]/logLvl
1read for path/gnbvs/gnbDuCfg[0]/ngpLog
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[0]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[0]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[0]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[0]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[1]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[1]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[1]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[1]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[2]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[2]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[2]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[2]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[3]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[3]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[3]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[3]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[4]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[4]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[4]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[4]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[5]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[5]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[5]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[5]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[6]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[6]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[6]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[6]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[7]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[7]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[7]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[7]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[8]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[8]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[8]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[8]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[9]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[9]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[9]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[9]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[10]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[10]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[10]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[10]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[11]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[11]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[11]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[11]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[12]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[12]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[12]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[12]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[13]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[13]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[13]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[13]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[14]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[14]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[14]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[14]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[15]
1read for key path/gnbvs/gnbDuCfg[0]/ngpLog[15]/moduleId
1 read for path /gnbvs/gnbDuCfg[0]/ngpLog[15]/moduleId
1read for path/gnbvs/gnbDuCfg[0]/ngpLog[15]/logLvl
1 read for path /gnbvs/gnbDuCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/logFilePath
1read for path/gnbvs/gnbDuCfg[0]/logFileName
1read for path/gnbvs/gnbDuCfg[0]/maxLogFileSize
1read for path/gnbvs/gnbDuCfg[0]/maxLogFileCount
1read for path/gnbvs/gnbDuCfg[0]/enableBinLog
1 read for path /gnbvs/gnbDuCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/numOutboundStrms
1read for path/gnbvs/gnbDuCfg[0]/maxInboundStrms
1read for path/gnbvs/gnbDuCfg[0]/maxInitAttempts
1read for path/gnbvs/gnbDuCfg[0]/heartBeatIntervalInMs
1read for path/gnbvs/gnbDuCfg[0]/maxPathRetx
1 read for path /gnbvs/gnbDuCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/nsSysCfg
1 read for path /gnbvs/gnbDuCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/maxRlcSduQSize
1read for path/gnbvs/gnbDuCfg[0]/rlcSduQLwrThr
1read for path/gnbvs/gnbDuCfg[0]/rlcSduQUprThr
1read for path/gnbvs/gnbDuCfg[0]/nrupFlowCtrlTmrInMS
1read for path/gnbvs/gnbDuCfg[0]/enNrupMissingReport
1 read for path /gnbvs/gnbDuCfg[0]
1 read for path /gnbvs/gnbDuCfg[0]/isUlCAEnbld
1read for path/gnbvs/gnbDuCfg[0]/sliceMgrCfg/nsAgentCfgType
1read for path/gnbvs/gnbDuCfg[0]/sliceMgrCfg/localAddress
1 read for path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/localPort
1read for path/gnbvs/gnbDuCfg[0]/sliceMgrCfg/remoteAddress
1 read for path /gnbvs/gnbDuCfg[0]/sliceMgrCfg/remotePort
1read for path/gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbF1cVsConfig/F1CAlarm[0]/thresholdTimeInterval
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/id
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/id
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rntiStart
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/maxNumRnti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/maxNumUes
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnIdx
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnIdx
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnId/MCC
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/servedPlmnId/MNC
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sliceIdx
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sliceIdx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sst
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/servedPlmnList[0]/sliceList[0]/sd
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/modeType
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNId/MCC
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCgipLMNId/MNC
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nRCGI/nrCellId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nrMu
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/freqRangeType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nTimingAdvanceOffset
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/tciInDci
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pdcchDmrsScramblingID
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pdschDataScramblingID
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/puschDataScramblingID
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/featureSetBitMap
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/deploymentMode
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/numSsb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ssPbchBurstSetSize
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUePerTTI
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithSrbPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithImsPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithVoicePerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithGbrPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlUeWithNonGbrPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUePerTTI
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithCePerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithSrbPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithImsPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithVoicePerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithGbrPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlUeWithNonGbrPerTti
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/tagId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/taTmrInMs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/tUlSyncTime
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/isPhrEnable
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrPeriodicTimer
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrProhibitPeriodicTimer
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrTxPwrChangeFactor
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrType2OtherCell
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/phrConfig/phrModeOtherCg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxUlHqTx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxDlHqTx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/maxMsg4HqTx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/preambleStart
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/preambleSize
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isBmEnbld
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isBfrEnbld
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/cyclicPrefixType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlRank
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/isPhaseTrackingRefSigEnb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulRank
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlNumAntPorts
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulNumOfAntPorts
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulModulation
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlModulation
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlMcs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulMcs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/rarMcs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/bcchMcs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/pcchMcs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlCcchCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulCcchCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/enable_dci1_1And0_1
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/enable_pdsch_in_ssb_slot
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlLaStepup
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulLaStepup
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/dlLaStepdown
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/ulLaStepdown
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrDlLaStepup
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrUlLaStepup
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrDlLaStepdown
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/macCfgCmn/vonrUlLaStepdown
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSlot
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSymbol
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSlot
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSymbol
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/p2Pres
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSlotP2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numDlSymbolP2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSlotP2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cfgCmn/numUlSymbolP2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/bwpId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/bwpId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/mu
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/cyclicPrefix
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/numRb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/startRb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/resourceAllocType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/resourceAllocCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlBwpCfg[0]/cntrlResourceSetSearchSpaceCfg/avgAggregationLvl
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absFreqPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absArfcnPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absFreqSsb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/absArfcnSsb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/nrFreqBand
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/offsetToCarrier
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/offsetToCarrier
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/subCarrierSpacing
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/subCarrierCfg[0]/carrierBw
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/bSChannelBwDL
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/dlFreqInfo/dlEarfcn
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dlCfgCmn/numCceRsvdForCmnPdcch
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulTargetCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulTargetCqi/targetCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/bwpId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/bwpId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchCmnCfgPres
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschCmnCfgPres
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/mu
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicPrefix
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/numRb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/startRb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/distributePucchInBwpEdges
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/resourceAllocType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/resourceAllocCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchResourceCmn
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchGrpHopping
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/hoppingId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/p0Nominal
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/maxCodeRate
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/simultaneousHarqAckCsi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/prachCfgIdx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/msg1Fdm
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/msg1FreqStart
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/zeroCorrelationZoneCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/preambleRcvdTgtPwr
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/preambleTransMax
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/pwrRampingStep
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rachGenCfg/rachRspWindow
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/totalNumOfRachPreamble
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/ssbsPerRach
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/cbPreamblePerSsb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/grpBPreambleCfg/msg3SizeGrpA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/grpBPreambleCfg/numOfRachPreambleGrpA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/contentResolutionTmr
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rsrpThresholdSsb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rootSeqType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/rootSeqVal
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/msg1Scs
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/restrictedSetCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/maxMsg3Tx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/rachCfgInfo/preambleFormat
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srPeriodicity
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f2MaxPayloadLen1
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f2MaxPayloadLen2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/f0f2SymLength
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicShift/numOfCyclicShift
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/cyclicShift/cyclicShiftBitmap
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschTxCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/numSrsSym
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/ktc
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/srsCfg/maxSrsUePerSlot
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/msg3deltaPreamble
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/p0nominal
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/msg3alpha
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/p0
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/alpha
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/deltaMcsEnabled
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/puschPwrCfg/isAccumulated
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/p0nominal
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF0
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF1
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF3
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/deltaFpucchF4
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/pucchPwrCfg/p0PucchVal
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/avoidPuschBasedOnUciType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx1
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx2
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/semiStaticBetaOffsetAckIdx3
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/uciOnPusch/alphaScaling
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulBwpCfg[0]/csiPeriodicity
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/absFreqPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/absArfcnPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/nrFreqBand
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/offsetToCarrier
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/offsetToCarrier
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/subCarrierSpacing
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/subCarrierCfg[0]/carrierBw
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/bSChannelBwUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/freqShft7p5khz
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/addtionalSpectrumEmission
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/pMax
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/ulFreqInfo/ulEarfcn
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ulCfgCmn/addnlUlCoresetEnable
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/maxUePerUlSlot
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/isHarmonicEnb
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/isSulCfgFreqMute
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/ccchCqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/absFreqPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/absArfcnPointA
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/nrFreqBand
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/subCarrierCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/bSChannelBwUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/freqShft7p5khz
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/addtionalSpectrumEmission
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/pMax
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulFreqInfo/ulEarfcn
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulTargetCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulTargetCqi/targetCqi
1 is failed for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulTargetCqi
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/sulCfgCmn/sulBwpCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sib2Periodcity
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sib3Periodicity
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]/valueTag
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]/valueTag
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/si-SchedInfo/sibs[0]/sibType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlCenterFreq
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlCenterFreq
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlBw
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlBw
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlFftSize
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlFftSize
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nCarrierAggregationLvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nMode
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nDlCarrierK0
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/nUlCarrierK0
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/l1PrachCfgInfoRootSeqIdx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachCfgIdx
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/zeroCorrelationZoneCfg
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/highSpeedFlag
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFreqOffset
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachSubcSpacing
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachRestrictSet
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFreqStart
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachFdm
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/prachCfg/prachSsbRach
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/mibParams/cellBarred
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/mibParams/intraFreqReselection
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMin/rsrpLvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qRxLevMinSul/rsrpLvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellSelectionInfo/qQualMin/rsrpLvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdentityInfoIndex
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdentityInfoIndex
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/pLMNIdIndex
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/pLMNIdIndex
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/MCC
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/pLMNIdList[0]/MNC
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/tacBitMap
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/ranac
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/cellId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/cellAccessInfo/pLMNIdentityList[0]/cellReservedOperatorUse
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t300
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t301
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t310
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/n310
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t311
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/n311
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/l1-CfgInfo/sib1Params/ueTmr/t319
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/dmrsTypeDl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/dmrsAdditionalPosDl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/maxLenDl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/scramblingID0Dl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsDlCfg/scramblingID1Dl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/dmrsTypeUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/dmrsAdditionalPosUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/maxLenUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/istransPrecodingDisabled
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/scramblingID0
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingDisabledUl/scramblingID1
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/istransPrecodingEnabled
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/nPUSCHId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/seqGrpHopping
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/dmrsUlCfg/transPrecodingEnabledUl/seqHopping
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/isLteNrCoEnable
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/cellId
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/activateSfn
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/isSulFreqMute
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/sharingType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/bitWidthSize
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/ulTrafficPattern
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/dlTrafficPattern
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/mbSfnControlSym
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/ltenrCoTraficPatternType/ltePucchRbInEdge
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/nsAddInfo
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/nsModInfo
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/nsIdToDel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/nsIdToAct
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/nsIdToDeAct
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/reslAddInfo
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/resourceModInfo
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/reportType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo/period
1 is failed for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nsCfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/defaultPagCycle
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/n
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/ns
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/monitorType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/numOfPoPerPf
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/pCCHcfgInfo/occasionOfPo
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/isDrxOnDurationTmrType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxInactivityTmr
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxOnDurationTmrInMS
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxRttTmrDl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxRttTmrUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxRetxTmrDl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxRetxTmrUl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxLongCycle
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxCycleStartOffset
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxShortCycle
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxShortCycleTmr
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/DrxInfo/drxSlotOffset
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/isCsiRsEnable
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsPeriodicity
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsRowType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/rowBitmap
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/firstSym
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/secondSymPres
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/secondSym
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/cdmType
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/csiRsDensity
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/csiRsCfgInfo/dot5EvenOdd
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/nr5qiCoeff
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/gbrServedRateCoeff
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/uePfsCoeff
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalSlicePriolvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalUePfsPriolvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/totalGbrServedRatePriolvl
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/tptCoEff
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellPfsCfgInfo/fairnessCoeff
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/enableRateMatchSsbPbch
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/enablePdschRateMatchCoreset
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/numPucchCellGrp
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/qci
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/qci
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[0]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/qci
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/qci
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/eutraQosGrp[1]/ulLcPriority
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[0]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[1]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[2]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[3]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[4]/ulLcPriority
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/fiveqi
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenUlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenDlAm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenUlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/snFieldLenDlUm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollRetxTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollPdu
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/pollByte
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/maxRetxThreshold
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/reassemblyTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/statusProhibitTmr
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/rlcCfg/nrQfiGrp[5]/ulLcPriority
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/nSsbPwr
1read for path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[0]/thresholdTimeInterval
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[1]/thresholdTimeInterval
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[2]/thresholdTimeInterval
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[3]/thresholdTimeInterval
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[4]/thresholdTimeInterval
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]
1read for key path/gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/alarmId
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/alarmName
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdLevel
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdCount
1 read for path /gnbvs/gnbDuCfg[0]/gnbCellDuVsCfg[0]/cellAlarm[5]/thresholdTimeInterval
    me
        managed_element
            top
            m_object_class = ME
            m_object_instance = 0
        m_id = 0
        m_vendor_name = RSYS
        m_user_defined_state = DRAFT
        m_sw_version = 2.0
        m_dn_prefix = gnb
        m_user_label = ME
        m_location_name = BLE
        managed_by_list.count = 0
        managed_element_type_list_list.count = 0
        vs_data_container_list.count = 0
            measurements
            measurements_list_list.count = 0
            measurement_subtree
            measurement_control_list.count = 1
                    measurement_control
                        top_grp
                        m_id = 0
                        measurement_control_grp
                        m_p_m_administrative_state = 0
                        m_default_file_location = /opt/faca/log/du/
                        m_default_sampling_number = 10
                        m_default_file_based_gp = 300
                        m_default_file_reporting_period = 15
                    measurement_reader_list.count = 0
            threshold_monitoring_capability_list.count = 0
            threshold_monitor_list.count = 0
            fm_subtree
            fm_control_list.count = 1
                    fm_control
                        top_grp
                        m_id = 0
                        fm_control_grp
                        m_administrative_state = 0
            alarm_list_list.count = 1
                    alarm_list
                        top_grp
                        m_id = 0
                        alarm_list_grp
                        alarm_record_grp_list.count = 0
    gnbdu_function_list.count = 1
            gnbdu_function
                managed_function
                    top
                    m_object_class = RNCFunction
                    m_object_instance = 0
                m_id = 0
                m_user_label = GNBDUFunction
                    vnf_parameters_list
                    m_vnf_instance_id = 0
                    m_vnfd_id = 1
                    m_flavour_id = 1
                    m_auto_scalable = 0
                    pee_parameters_list
                    m_site_identification = Tech Park
                    m_site_latitude.value = 129781
                    m_site_latitude.fraction_digits = 
                    m_site_longitude.value = 776653
                    m_site_longitude.fraction_digits = 
                    m_site_description = prestige tech park
                    m_equipment_type = 0
                    m_environment_type = 1
                    m_power_interface = 0
                vs_data_container_list.count = 3
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 0
                        m_id = 0
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_sctp_vs_config.yang
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 1
                        m_id = 1
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_log_vs_config.yang
                        vs_data_container
                            top
                            m_object_class = vsDataContainer
                            m_object_instance = 2
                        m_id = 2
                        m_vs_data_type = 2019-12-31
                        m_vs_data_format_version = gnb_du_vs_config.yang
                    measurements
                    measurements_list_list.count = 0
            m_g_nbdu_id = 1
            m_g_nbdu_name = gnb01du
            m_g_nb_id = 0
            m_g_nb_id_length = 22
                f1_c_ep
                    ep_f1_c
                        ep_xx
                            ep_rp
                                top
                                m_object_class = F1C_EP
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = F1C_EP
                            m_far_end_entity = 1
                            vs_data_container_list.count = 0
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 168.168.31.102
                        m_local_vlan_id = 7
                        m_remote_address = 168.168.31.101
            ep_f1_u_list.count = 1
                    ep_f1_u
                        ep_xx
                            ep_rp
                                top
                                m_object_class = EP_F1U
                                m_object_instance = 0
                            m_id = 0
                            m_user_label = EP_F1U
                            m_far_end_entity = 1
                            vs_data_container_list.count = 0
                                measurements
                                measurements_list_list.count = 0
                        m_local_ip_address = 168.168.31.102
                        m_local_vlan_id = 7
                        m_remote_address = 168.168.31.101
            nr_cell_du_list.count = 1
                    nr_cell_du
                        managed_function
                            top
                            m_object_class = RNCFunction
                            m_object_instance = 0
                        m_id = 0
                        m_user_label = NRCellDU
                            vnf_parameters_list
                            m_vnf_instance_id = 0
                            m_vnfd_id = 1
                            m_flavour_id = 1
                            m_auto_scalable = 0
                            pee_parameters_list
                            m_site_identification = Tech Park
                            m_site_latitude.value = 129781
                            m_site_latitude.fraction_digits = 
                            m_site_longitude.value = 776653
                            m_site_longitude.fraction_digits = 
                            m_site_description = prestige tech park
                            m_equipment_type = 0
                            m_environment_type = 1
                            m_power_interface = 0
                        vs_data_container_list.count = 1
                                vs_data_container
                                    top
                                    m_object_class = vsDataContainer
                                    m_object_instance = 0
                                m_id = 0
                                m_vs_data_type = 2019-12-31
                                m_vs_data_format_version = gnb_cell_du_vs_config.yang
                            measurements
                            measurements_list_list.count = 0
                    m_n_ci = 000000001
                    p_lmn_id_list.count = 1
                            p_lmn_id
                            m_mcc = 460
                            m_mnc = 11
                    s_nssai_list.count = 2
                        s_nssai_list.value[0] = 1
                        s_nssai_list.value[1] = 2
                    m_administrative_state = 2
                    m_n_rpci = 11
                    m_n_rtac = 0001
                    m_arfcn_dl = 2079415
                    m_arfcn_ul = 2079415
                    m_arfcn_sul = 2079415
                    m_b_s_channel_bw_dl = 1
                    m_b_s_channel_bw_ul = 1
                    m_b_s_channel_bw_sul = 1
                    nr_sector_carrier_list.count = 0
                    b_wp_list.count = 0
                        gnb_cell_du_vs_cfg
                        m_id = 0
                            cell_ue_limit
                            m_rnti_start = 17017
                            m_max_num_rnti = 160
                            m_max_num_ues = 160
                            cell_gen_cfg_info
                            served_plmn_list_list.count = 1
                                    served_plmn_list
                                    m_served_plmn_idx = 
                                        served_plmn_id
                                            p_lmn_id
                                            m_mcc = 460
                                            m_mnc = 11
                                    slice_list_list.count = 1
                                            slice_list
                                            m_slice_idx = 
                                            m_sst = 
                                            m_sd = 198153
                            m_mode_type = 1
                                n_rcgi
                                    nr_cgip_lmn_id
                                        p_lmn_id
                                        m_mcc = 460
                                        m_mnc = 11
                                m_nr_cell_id = 000000001
                            m_nr_mu = 1
                            m_freq_range_type = 1
                        m_n_timing_advance_offset = 1
                        m_tci_in_dci = 0
                        m_pdcch_dmrs_scrambling_id = 11
                        m_pdsch_data_scrambling_id = 11
                        m_pusch_data_scrambling_id = 11
                        m_feature_set_bit_map = 7
                        m_deployment_mode = 1
                            mac_cfg_cmn
                            m_num_ssb = 
                            m_ss_pbch_burst_set_size = 
                            m_max_ul_ue_per_tti = 
                            m_max_ul_ue_with_srb_per_tti = 
                            m_max_ul_ue_with_ims_per_tti = 
                            m_max_ul_ue_with_voice_per_tti = 
                            m_max_ul_ue_with_gbr_per_tti = 
                            m_max_ul_ue_with_non_gbr_per_tti = 
                            m_max_dl_ue_per_tti = 
                            m_max_dl_ue_with_ce_per_tti = 
                            m_max_dl_ue_with_srb_per_tti = 
                            m_max_dl_ue_with_ims_per_tti = 
                            m_max_dl_ue_with_voice_per_tti = 
                            m_max_dl_ue_with_gbr_per_tti = 
                            m_max_dl_ue_with_non_gbr_per_tti = 
                            m_tag_id =  
                            m_ta_tmr_in_ms = 0
                            m_t_ul_sync_time = 0
                                phr_config
                                m_is_phr_enable = 1
                                m_phr_periodic_timer = 7
                                m_phr_prohibit_periodic_timer = 0
                                m_phr_tx_pwr_change_factor = 3
                                m_phr_type2_other_cell = 0
                                m_phr_mode_other_cg = 0
                            m_max_ul_hq_tx = 
                            m_max_dl_hq_tx = 
                            m_max_msg4_hq_tx = 
                            m_preamble_start = /
                            m_preamble_size = 
                            m_is_bm_enbld = 0
                            m_is_bfr_enbld = 0
                            m_cyclic_prefix_type = 0
                            m_dl_rank = 
                            m_is_phase_tracking_ref_sig_enb = 0
                            m_ul_rank = 
                            m_dl_num_ant_ports = 
                            m_ul_num_of_ant_ports = 
                            m_ul_modulation = 0
                            m_dl_modulation = 1
                            m_dl_mcs = 
                            m_ul_mcs = 
                            m_rar_mcs = 
                            m_bcch_mcs = 
                            m_pcch_mcs = 
                            m_dl_ccch_cqi = 
                            m_ul_ccch_cqi = 
                            m_enable_dci1_1_and0_1 = 1
                            m_enable_pdsch_in_ssb_slot = 1
                            m_dl_la_stepup =    
                            m_ul_la_stepup = 
                            m_dl_la_stepdown = c
                            m_ul_la_stepdown = (
                            m_vonr_dl_la_stepup = 
                            m_vonr_ul_la_stepup = 
                            m_vonr_dl_la_stepdown = 
                            m_vonr_ul_la_stepdown = 
                            cfg_cmn
                            m_num_dl_slot = 3
                            m_num_dl_symbol = 
                            m_num_ul_slot = 2
                            m_num_ul_symbol =  
                            m_p2_pres = 
                            m_num_dl_slot_p2 = 4
                            m_num_dl_symbol_p2 =  
                            m_num_ul_slot_p2 = 0
                            m_num_ul_symbol_p2 =  
                            dl_cfg_cmn
                            dl_bwp_cfg_list.count = 1
                                    dl_bwp_cfg
                                    m_bwp_id =  
                                    m_mu = 1
                                    m_cyclic_prefix = 0
                                    m_num_rb = 273
                                    m_start_rb = 0
                                    m_resource_alloc_type = 
                                    m_resource_alloc_cfg = 
                                        cntrl_resource_set_search_space_cfg
                                        m_avg_aggregation_lvl = 
                                dl_freq_info
                                    gnb_du_freq_info_dl_cfg
                                    m_abs_freq_point_a = 4800720
                                    m_abs_arfcn_point_a = 720048
                                    m_abs_freq_ssb = 4804320
                                    m_abs_arfcn_ssb = 720288
                                    nr_freq_band_list.count = 1
                                        nr_freq_band_list.value[0] = 79
                                        gnb_du_sub_carriers
                                        sub_carrier_cfg_list.count = 1
                                                sub_carrier_cfg
                                                m_offset_to_carrier = 0
                                                m_sub_carrier_spacing = 1
                                                m_carrier_bw = 273
                                    m_b_s_channel_bw_dl = 10
                                    m_dl_earfcn = 723324
                            m_num_cce_rsvd_for_cmn_pdcch = 
                            ul_cfg_cmn
                                ul_target_cqi
                                    ul_target_cqi_cfg
                                    m_target_cqi =  
                            ul_bwp_cfg_list.count = 1
                                    ul_bwp_cfg
                                    m_bwp_id =  
                                        ul_bwp_config
                                        m_pucch_cmn_cfg_pres = 1
                                        m_pusch_cmn_cfg_pres = 1
                                        m_mu = 1
                                        m_cyclic_prefix = 0
                                        m_num_rb = 273
                                        m_start_rb = 0
                                        m_distribute_pucch_in_bwp_edges =  
                                        m_resource_alloc_type = 
                                        m_resource_alloc_cfg = 
                                            pucch_cmn_cfg
                                            m_pucch_resource_cmn =  
                                            m_pucch_grp_hopping = 0
                                            m_hopping_id = 0
                                            m_p0_nominal = -82
                                            m_max_code_rate = 8
                                            m_simultaneous_harq_ack_csi = 0
                                            rach_cfg_info
                                                rach_gen_cfg
                                                m_prach_cfg_idx = 
                                                m_msg1_fdm = 
                                                m_msg1_freq_start = 0
                                                m_zero_correlation_zone_cfg = 
                                                m_preamble_rcvd_tgt_pwr = -100
                                                m_preamble_trans_max = 6
                                                m_pwr_ramping_step = 1
                                                m_rach_rsp_window = 20
                                            m_total_num_of_rach_preamble = 
                                            m_ssbs_per_rach = 3
                                            m_cb_preamble_per_ssb = 
                                                grp_b_preamble_cfg
                                                m_msg3_size_grp_a = 56
                                                m_num_of_rach_preamble_grp_a = 
                                            m_content_resolution_tmr = 40
                                            m_rsrp_threshold_ssb = 
                                            m_root_seq_type = 1
                                            m_root_seq_val = 0
                                            m_msg1_scs = 1
                                            m_restricted_set_cfg = 0
                                            m_max_msg3_tx =  
                                            m_preamble_format = 0
                                        m_sr_periodicity = 11
                                        m_f2_max_payload_len1 = 12
                                        m_f2_max_payload_len2 = 12
                                        m_f0f2_sym_length = 
                                            cyclic_shift
                                            m_num_of_cyclic_shift = 
                                            m_cyclic_shift_bitmap = 65
                                        m_pusch_tx_cfg = 0
                                            srs_cfg
                                            m_num_srs_sym = 
                                            m_ktc = 
                                            m_max_srs_ue_per_slot = 
                                            pusch_pwr_cfg
                                            m_msg3delta_preamble =  
                                            m_p0nominal = -82
                                            m_msg3alpha = 10
                                            m_p0 =  
                                            m_alpha = 10
                                            m_delta_mcs_enabled = 0
                                            m_is_accumulated = 1
                                            pucch_pwr_cfg
                                            m_p0nominal = -82
                                            m_delta_fpucch_f0 = 
                                            m_delta_fpucch_f1 =  
                                            m_delta_fpucch_f2 = 
                                            m_delta_fpucch_f3 =  
                                            m_delta_fpucch_f4 =  
                                            m_p0_pucch_val =  
                                            uci_on_pusch
                                            m_avoid_pusch_based_on_uci_type = 0
                                            m_semi_static_beta_offset_ack_idx1 =  
                                            m_semi_static_beta_offset_ack_idx2 =  
                                            m_semi_static_beta_offset_ack_idx3 =  
                                            m_alpha_scaling =  
                                        m_csi_periodicity = 160
                                ul_freq_info
                                    gnb_du_freq_info_ul_cfg
                                    m_abs_freq_point_a = 4800720
                                    m_abs_arfcn_point_a = 720048
                                    nr_freq_band_list.count = 1
                                        nr_freq_band_list.value[0] = 79
                                        gnb_du_sub_carriers
                                        sub_carrier_cfg_list.count = 1
                                                sub_carrier_cfg
                                                m_offset_to_carrier = 0
                                                m_sub_carrier_spacing = 1
                                                m_carrier_bw = 273
                                    m_b_s_channel_bw_ul = 10
                                    m_freq_shft7p5khz = 0
                                    m_addtional_spectrum_emission = 0
                                    m_p_max = 
                                    m_ul_earfcn = 723324
                            m_addnl_ul_coreset_enable = 0
                            si_sched_info
                            m_sib2_periodcity = 128
                            m_sib3_periodicity = 256
                            sibs_list.count = 1
                                    sibs
                                    m_value_tag = 
                                    m_sib_type = 0
                            l1_cfg_info
                            m_n_dl_center_freq = 3351000
                            m_n_ul_center_freq = 3351000
                            m_n_dl_bw = 100
                            m_n_ul_bw = 100
                            m_n_dl_fft_size = 4096
                            m_n_ul_fft_size = 4096
                            m_n_carrier_aggregation_lvl =  
                            m_n_mode = 4
                            m_n_dl_carrier_k0 = 
                            m_n_ul_carrier_k0 = 
                                prach_cfg
                                    l1_prach_cfg_info
                                    m_l1_prach_cfg_info_root_seq_idx = 0
                                    m_prach_cfg_idx = 
                                    m_zero_correlation_zone_cfg = 
                                    m_high_speed_flag = 0
                                    m_prach_freq_offset =  
                                    m_prach_subc_spacing = 
                                    m_prach_restrict_set =  
                                    m_prach_freq_start = 0
                                    m_prach_fdm = 1
                                    m_prach_ssb_rach = 3
                                mib_params
                                m_cell_barred = 1
                                m_intra_freq_reselection = 0
                                sib1_params
                                    cell_selection_info
                                        q_rx_lev_min
                                        m_rsrp_lvl = À
                                        q_rx_lev_min_sul
                                        m_rsrp_lvl = Ί                                        q_qual_min
                                        m_rsrp_lvl = ⊠                                   cell_access_info
                                    p_lmn_identity_list_list.count = 1
                                            p_lmn_identity_list
                                            m_p_lmn_identity_info_index = 
                                                p_lmn_identity_info
                                                p_lmn_id_list_list.count = 1
                                                        p_lmn_id_list
                                                        m_p_lmn_id_index = 
                                                            p_lmn_id
                                                            m_mcc = 460
                                                            m_mnc = 11
                                                m_tac_bit_map = 1
                                                m_ranac = 
                                                m_cell_id = 1
                                                m_cell_reserved_operator_use = 1
                                    ue_tmr
                                    m_t300 = 5
                                    m_t301 = 5
                                    m_t310 = 5
                                    m_n310 = 0
                                    m_t311 = 0
                                    m_n311 = 0
                                    m_t319 = 5
                            dmrs_dl_cfg
                            m_dmrs_type_dl = 0
                            m_dmrs_additional_pos_dl = 1
                            m_max_len_dl = 0
                            m_scrambling_id0_dl = 11
                            m_scrambling_id1_dl = 11
                            dmrs_ul_cfg
                            m_dmrs_type_ul = 0
                            m_dmrs_additional_pos_ul = 1
                            m_max_len_ul = 0
                                trans_precoding_disabled_ul
                                m_istrans_precoding_disabled = 1
                                m_scrambling_id0 = 11
                                m_scrambling_id1 = 11
                                trans_precoding_enabled_ul
                                m_istrans_precoding_enabled = 0
                                m_n_pusch_id = 1
                                m_seq_grp_hopping = 0
                                m_seq_hopping = 1
                            ltenr_co_trafic_pattern_type
                            m_is_lte_nr_co_enable = 0
                            m_cell_id = 1
                            m_activate_sfn = 2
                            m_is_sul_freq_mute = 0
                            m_sharing_type = 1
                            m_bit_width_size = 

                            m_ul_traffic_pattern = 830
                            m_dl_traffic_pattern = 830
                            m_mb_sfn_control_sym = 
                            m_lte_pucch_rb_in_edge = 
                            p_cc_hcfg_info
                            m_default_pag_cycle = 1
                            m_n = 0
                            m_ns = 2
                                first_pdcch_monitoring_info
                                m_monitor_type = 0
                                m_num_of_po_per_pf = 
                                occasion_of_po_list.count = 1
                                    occasion_of_po_list.value[0] = 1
                            csi_rs_cfg_info
                            m_is_csi_rs_enable = 0
                            m_csi_rs_periodicity = 160
                            m_csi_rs_row_type = 2
                            m_row_bitmap = 1
                            m_first_sym = 
                            m_second_sym_pres = 0
                            m_second_sym = 
                            m_cdm_type = 2
                            m_csi_rs_density = 1
                            m_dot5_even_odd = 0
                            cell_pfs_cfg_info
                            m_nr5qi_coeff = 5
                            m_gbr_served_rate_coeff = 5
                            m_ue_pfs_coeff = 5
                            m_total_slice_priolvl = 10
                            m_total_ue_pfs_priolvl = 100
                            m_total_gbr_served_rate_priolvl = 100
                            m_tpt_co_eff = 5
                            m_fairness_coeff = 5
                        m_enable_rate_match_ssb_pbch = 0
                        m_enable_pdsch_rate_match_coreset = 0
                        m_num_pucch_cell_grp =  
                            rlc_cfg
                            eutra_qos_grp_list.count = 2
                                    eutra_qos_grp
                                    m_qci = 
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    eutra_qos_grp
                                    m_qci =     
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                            nr_qfi_grp_list.count = 6
                                    nr_qfi_grp
                                    m_fiveqi =  
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    nr_qfi_grp
                                    m_fiveqi = 
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    nr_qfi_grp
                                    m_fiveqi = 
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    nr_qfi_grp
                                    m_fiveqi = 
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    nr_qfi_grp
                                    m_fiveqi = 
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 1
                                        m_sn_field_len_dl_am = 1
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 400
                                        m_poll_pdu = 32
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 8
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 35
                                    m_ul_lc_priority = 
                                    nr_qfi_grp
                                    m_fiveqi =  
                                        cmn_rlc_cfg
                                        m_sn_field_len_ul_am = 2
                                        m_sn_field_len_dl_am = 2
                                        m_sn_field_len_ul_um = 2
                                        m_sn_field_len_dl_um = 2
                                        ue_rlc_cfg
                                        m_poll_retx_tmr = 250
                                        m_poll_pdu = 64
                                        m_poll_byte = -1
                                        m_max_retx_threshold = 32
                                        m_reassembly_tmr = 40
                                        m_status_prohibit_tmr = 10
                                    m_ul_lc_priority = 
                        m_n_ssb_pwr = ö
                        cell_alarm_list.count = 6
                                cell_alarm
                                m_alarm_id = 13313
                                m_alarm_name = ALARM_CELL_ADMIN_LOCKED
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                cell_alarm
                                m_alarm_id = 13314
                                m_alarm_name = ALARM_CELL_SETUP_FAIL
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                cell_alarm
                                m_alarm_id = 13315
                                m_alarm_name = ALARM_CELL_L1_COMM_FAIL
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                cell_alarm
                                m_alarm_id = 13316
                                m_alarm_name = ALARM_CELL_L1_ERROR_IND
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                cell_alarm
                                m_alarm_id = 13317
                                m_alarm_name = ALARM_CELL_TTI_STRETCH
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
                                cell_alarm
                                m_alarm_id = 13318
                                m_alarm_name = ALARM_CELL_VC_QUEUE_FULL
                                    alarm_threshold
                                    m_threshold_level = 0
                                    m_threshold_count = 0
                                    m_threshold_time_interval = 600
            nr_sector_carrier_list.count = 0
            bwp_list.count = 0
                gnb_log_vs_cfg_du
                    logging_lvl_cfg_du
                    du_log_list.count = 30
                            du_log
                            m_module_id = 0
                            m_log_lvl = 2
                            du_log
                            m_module_id = 1
                            m_log_lvl = 4
                            du_log
                            m_module_id = 2
                            m_log_lvl = 4
                            du_log
                            m_module_id = 3
                            m_log_lvl = 5
                            du_log
                            m_module_id = 4
                            m_log_lvl = 1
                            du_log
                            m_module_id = 5
                            m_log_lvl = 5
                            du_log
                            m_module_id = 6
                            m_log_lvl = 1
                            du_log
                            m_module_id = 7
                            m_log_lvl = 1
                            du_log
                            m_module_id = 8
                            m_log_lvl = 1
                            du_log
                            m_module_id = 10
                            m_log_lvl = 1
                            du_log
                            m_module_id = 11
                            m_log_lvl = 1
                            du_log
                            m_module_id = 12
                            m_log_lvl = 2
                            du_log
                            m_module_id = 13
                            m_log_lvl = 2
                            du_log
                            m_module_id = 14
                            m_log_lvl = 2
                            du_log
                            m_module_id = 15
                            m_log_lvl = 2
                            du_log
                            m_module_id = 16
                            m_log_lvl = 2
                            du_log
                            m_module_id = 17
                            m_log_lvl = 1
                            du_log
                            m_module_id = 18
                            m_log_lvl = 2
                            du_log
                            m_module_id = 19
                            m_log_lvl = 2
                            du_log
                            m_module_id = 20
                            m_log_lvl = 2
                            du_log
                            m_module_id = 21
                            m_log_lvl = 2
                            du_log
                            m_module_id = 22
                            m_log_lvl = 2
                            du_log
                            m_module_id = 23
                            m_log_lvl = 2
                            du_log
                            m_module_id = 24
                            m_log_lvl = 1
                            du_log
                            m_module_id = 25
                            m_log_lvl = 2
                            du_log
                            m_module_id = 26
                            m_log_lvl = 2
                            du_log
                            m_module_id = 27
                            m_log_lvl = 2
                            du_log
                            m_module_id = 28
                            m_log_lvl = 2
                            du_log
                            m_module_id = 29
                            m_log_lvl = 2
                            du_log
                            m_module_id = 30
                            m_log_lvl = 2
                    ngp_log_list.count = 16
                            ngp_log
                            m_module_id = 4096
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4097
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4098
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4099
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4100
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4101
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4102
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4103
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4104
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4105
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4106
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4107
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4108
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4109
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4110
                            m_log_lvl = 1
                            ngp_log
                            m_module_id = 4111
                            m_log_lvl = 1
                    cmn_logging_cfg
                    m_log_file_path = /opt/faca/log/du/
                    m_log_file_name = du
                    m_max_log_file_size = 10000000
                    m_max_log_file_count = 
                    m_enable_bin_log = 0
                gnb_sctp_vs_cfg
                m_num_outbound_strms = 1
                m_max_inbound_strms = 1
                m_max_init_attempts = 5
                m_heart_beat_interval_in_ms = 5000
                m_max_path_retx = 1
                ns_sys_info
                ns_sys_cfg_list.count = 0
                flow_ctrl_cfg_info
                m_max_rlc_sdu_q_size = 9000
                m_rlc_sdu_q_lwr_thr = 200
                m_rlc_sdu_q_upr_thr = 400
                m_nrup_flow_ctrl_tmr_in_ms = 15
                m_en_nrup_missing_report = K
                uplink_ca
                m_is_ul_ca_enbld = 0
                slice_mgr_cfg
                m_ns_agent_cfg_type = 0
                m_local_address = 192.168.1.104
                m_local_port = 4343
                m_remote_address = 192.168.1.105
                m_remote_port = 4343
                gnb_f1c_vs_config
                f1_c_alarm_list.count = 1
                        f1_c_alarm
                        m_alarm_id = 14081
                        m_alarm_namTRACE CDB_SYNC_SUB CDB_DONE_PRIORITY --> CONFD_OK
 --> CONFD_OK
e = ALARM_F1C_COMM_DOWN
                            alarm_threshold
                            m_threshold_level = 0
                            m_threshold_count = 0
                            m_threshold_time_interval = 600
[oam::process_message] Received NEW OAM MESSAGE
[oam::process_message] Received NEW OAM MESSAGE
[oam::process_oam_interface_msg_queue] entering

[gnb_du::oam_agent] Build_oam_gnb_du_config_req Received CONFIG_REQUESTGNB_DU_CONFIG_REQ_INFO
    GNB DU ID = 1
    DU NAME PRESENT = 1
    DU NAME = gnb01du
    SCTP_CONN_CONFIG
        DEST IP ADDR = 168.168.31.101
        SRC IP ADDR = 168.168.31.102
        DEST PORT NUM = 38472
        SRC PORT NUM = 38472
    SCTP_CONFIG
        NUM OF OUTBOUND STREAMS = 1
        MAX INBOUND STREAMS = 1
        MAX INIT ATTEMPTS = 5
        HB INTERVAL = 5000
        MAX PATH RETX = 1
    UE_CONFIG
        START RNTI = 17017
        MAX NUM RNTI = 160
        MAX NUM UES = 160
    EGTPU_CONFIG
        IP ADDRESS = 168.168.31.102
        EGTPU_MIN_TUNNEL_ID = 1
        EGTPU_MAX_TUNNEL_ID = 640
    LOGGING_CONFIG
        GNB_LOGGING_CONFIG
        NUM OF LOGGING CONFIG = 30
            MODULEID = 0
            LOGLEVEL = 2
            MODULEID = 1
            LOGLEVEL = 4
            MODULEID = 2
            LOGLEVEL = 4
            MODULEID = 3
            LOGLEVEL = 5
            MODULEID = 4
            LOGLEVEL = 1
            MODULEID = 5
            LOGLEVEL = 5
            MODULEID = 6
            LOGLEVEL = 1
            MODULEID = 7
            LOGLEVEL = 1
            MODULEID = 8
            LOGLEVEL = 1
            MODULEID = 10
            LOGLEVEL = 1
            MODULEID = 11
            LOGLEVEL = 1
            MODULEID = 12
            LOGLEVEL = 2
            MODULEID = 13
            LOGLEVEL = 2
            MODULEID = 14
            LOGLEVEL = 2
            MODULEID = 15
            LOGLEVEL = 2
            MODULEID = 16
            LOGLEVEL = 2
            MODULEID = 17
            LOGLEVEL = 1
            MODULEID = 18
            LOGLEVEL = 2
            MODULEID = 19
            LOGLEVEL = 2
            MODULEID = 20
            LOGLEVEL = 2
            MODULEID = 21
            LOGLEVEL = 2
            MODULEID = 22
            LOGLEVEL = 2
            MODULEID = 23
            LOGLEVEL = 2
            MODULEID = 24
            LOGLEVEL = 1
            MODULEID = 25
            LOGLEVEL = 2
            MODULEID = 26
            LOGLEVEL = 2
            MODULEID = 27
            LOGLEVEL = 2
            MODULEID = 28
            LOGLEVEL = 2
            MODULEID = 29
            LOGLEVEL = 2
            MODULEID = 30
            LOGLEVEL = 2
        NGP_LOGGING_CONFIG
        NGP NUM OF LOGGING CONFIG = 16
            MODULEID = 4096
            LOGLEVEL = 1
            MODULEID = 4097
            LOGLEVEL = 1
            MODULEID = 4098
            LOGLEVEL = 1
            MODULEID = 4099
            LOGLEVEL = 1
            MODULEID = 4100
            LOGLEVEL = 1
            MODULEID = 4101
            LOGLEVEL = 1
            MODULEID = 4102
            LOGLEVEL = 1
            MODULEID = 4103
            LOGLEVEL = 1
            MODULEID = 4104
            LOGLEVEL = 1
            MODULEID = 4105
            LOGLEVEL = 1
            MODULEID = 4106
            LOGLEVEL = 1
            MODULEID = 4107
            LOGLEVEL = 1
            MODULEID = 4108
            LOGLEVEL = 1
            MODULEID = 4109
            LOGLEVEL = 1
            MODULEID = 4110
            LOGLEVEL = 1
            MODULEID = 4111
            LOGLEVEL = 1
        LOG_FILE_PATH = /opt/faca/log/du/
        LOG_FILE_NAME = du
        MAX_LOG_FILE_SIZE = 10000000
        MAX_LOG_FILE_COUNT = 5
        ENABLE_BIN_LOG = 0
    F1U_FLOW_CTRL_CFG_INFO
        MAX_RLC_SDU_Q_SIZE = 9000
        RLC SDU QUEUE LOWER THRESHOLD = 200
        RLC SDU QUEUE UPPER THRESHOLD = 400
        NR USER PLANE FLOW CONTROL TIMER = 15
        NR USERPLANE MISSING REPORT = 75
    NETWORK_SLICE_CONFIG
        NUM_OF_NETWORK_SLICE_CONFIG = 0
    IS_ULCA_ENABLED = 0
GNB_DU_CONFIG_REQ_INFO
[oam::process_message] Received OAM_DU_CONFIG_RESPONSE
GNB_DU_CONFIG_RES
STATUS = 0

 [OAM-AG]: Initial Cell Add Request to be sent
[oam::process_oam_interface_msg_queue] entering
[OAM-AG]: process_oam_cell_config_request 
CELL_CONFIG_REQ_INFO
    NUM_OF_CELL_CONFIG_REQ_INFO = 1
    CELL_ID = 1
    OAM_CELL_ID = 1
    NR_SUB_CARRIER_SPACING = 1
    SLOT_FORMAT = 0
    NUM_DL_SLOT = 3
    NUM_UL_SLOT = 2
    NUM_DL_SYMBOL = 12
    NUM_UL_SYMBOL = 0
    TDD_UL_DL_PATTERN2_PRES = 1
        NUM_P2_DL_SLOT = 4
        NUM_P2_UL_SLOT = 0
        NUM_P2_DL_SYMBOL = 0
        NUM_P2_UL_SYMBOL = 0
    MAX_UE_PER_UL_SLOT = 4
    MAX_UE_PER_UL_SLOT = 1
    MAX_UE_PER_UL_SLOT = 1
    MAX_UE_PER_UL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 4
    MAX_UE_PER_DL_SLOT = 4
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    MAX_UE_PER_DL_SLOT = 1
    BCCH_MODULATION_CODE_SCHEME = 4
    PCCH_MODULATION_CODE_SCHEME = 4
    RAR_MCS = 1
    DL_CCCH_CQI = 3
    UL_CCCH_CQI = 3
    MAX_UL_HQ_TX = 4
    MAX_DL_HQ_TX = 4
    MSG4_HQ_TX = 1
    PREAMBLE_START = 47
    PREAMBLE_SIZE = 4
    NUM_OF_LOGICAL_CHANNELS = 6
    DMRS_TYPE_A_POSITION = 0
    DMRS_DL_CONF
        DMRS_TYPE = 0
        DMRS_ADD_POS = 1
        DMRS_MAX_LEN = 1
        SCRAMBLING_ID0 = 11
        SCRAMBLING_ID1 = 11
    DMRS_UL_CONF
        DMRS_TYPE = 0
        DMRS_ADD_POS = 1
        DMRS_MAX_LEN = 1
        IS_TRANSFORM_PRECODING_DISABLED = TRUE
        SCRAMBLING_ID0 = 11
        SCRAMBLING_ID1 = 11
        IS_TRANSFORM_PRECODING_ENABLED = FALSE
        PUSCH_IDENTITY = 1
        SEQUENCE_GROUP_HOPPING = 0
        SEQUENCE_HOPPING = 1
    FREQUENCY_RANGE_TYPE = 1
    CMN_LOGICAL_CHNL_PER_CELL
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
        LC_ID = 0
        LC_TYPE = 0
        DIRECTION = 0
        DL_TRCH_TYPE = 0
        UL_TRCH_TYPE = 0
    TRAFFIC_PATTERN_PRES = FALSE
    CFI = 0
    CYCLIC_PREFIX_UL_EXTENDED = FALSE
    NR_CGI
        PLMN_ID = 46011
        NR_CELL_ID = 1
    NR_PCI = 11
    TRACKING_AREA_CODE = 1
    SERVED_PLMNS
        PLMN_ID = 46011
        SLICE_LIST
            SST = 3
            SD = 198153
    NR_MODE_INFO = 1
    SIB - 2_PRESENT = TRUE
    SIB_2_PERIOD = 128
    SIB - 3_PRESENT = TRUE
    SIB_3_PERIOD = 256
    RLC_MODE = 0
    NUM_DL_BWP = 1
    NUM_UL_BWP = 1
    NETWORK_SLICE_CONFIGURATION
        NS_ADD_LIST
            NUM_NS = 0
        NS_MOD_LIST
            NUM_NS = 0
        NS_DEL_LIST
            NUM_NS = 0
        NS_ACT_LIST
            NUM_NS = 0
        NS_DEACT_LIST
            NUM_NS = 0
        RES_ADD_LIST
            NUM_RES = 0
        RES_MOD_LIST
            NUM_RES = 0
        KPI_CFG
            PRES = 0
    NETWORK_SLICE_ID_LIST
    BWP_CONFIGURATION
        DL_BWP_CONFIGURATION
        NUM_DL_BWP = 1
            BWP_ID = 0
            MU = 1
            CYCLIC_PREFIX_CP = FALSE
            NUM_RB = 273
            START_RB = 0
            CS_SS_CONFIG
                AVG_AGGRLVL = 2
            RES_ALLOCATION_TYPE = 1
            RES_ALLOCATION_CFG_TYPE = 1
        UL_BWP_CONFIGURATION
        NUM_UL_BWP = 1
            BWP_ID = 0
            MU = 1
            CYCLIC_PREFIX_CP = FALSE
            NUM_RB = 273
            START_RB = 0
            RACH_CMN_PRES = TRUE
            RACH_CFG_INFO
                RACH_GEN_CFG
                    PRACH_CONFIG_INDEX = 158
                    MSG - 1_FDM = 1
                    MSG1_FEQ_START = 0
                    ZERO_CORR_ZONE_CFG = 6
                    PRAMBL_TGT_PWR_LEVEL = -100
                    PRAMB_TRANS_MAX = 6
                    PWR_RAMPING_STEP = 1
                    RA_RSP_WIN_SIZE = 20
                TOTAL_NUM_OF_RA_PRMBLS = 16
                SSBS_PER_RACH_OCCASSION = 3
                CONTENTION_BASED_PREAMBLE_PER_SSB = 4
                GRP_B_PRMBLS_CFG
                    GRP_B_PRES_OR_NOT = TRUE
                    MSG3_SIZE_GRP_A = 56
                    NUM_OF_RA_PRMBLS = 1
                CONT_RES_TIMER = 40
                SEQ_TYPE = 1
                RSRP_THRESHOLD_SSB = 31
                ROOT_SEQ_INDEX = 0
                MSG1_SCS = 1
                RESTRICTED_SET_CFG = 0
                MSG3_TRANS_PRECODING = 0
                MAX_MSG3_TX = 0
                PRMBL_FRMT = 0
            PUSCH_PRES = TRUE
            PUCCH_PRES = TRUE
            PUCCH_CMN_CFG
                PUCCH_RES_CMN = 0
                PUSCH_GRP_HOPPING = 0
                PUCCH_HOPPING_ID = 0
                PUCCH_P0_NOMINAL = 4294967214
            SR_PRDCTY = 80
            F2_MAX_PAYLOAD_LEN1 = 12
            F2_MAX_PAYLOAD_LEN2 = 12
            F0F2_NUM_SYMBOLS = 1
            CYCLIC_SHIFT
                NUM_OF_CYC_SHIFT = 12
                CYC_SHIFT_BITMAP = 65
            SRS_CONFIG_INFO
                NUM_SRS_SYM = 1
                KTC = 2
                MAX_SRS_UE_PER_SLOT = 1
                GNB_DU_SRS_ALPHA = 0
                GNB_DU_SRS_P0 = 0
                GNB_DU_SRS_PLREFRSTYP = 0
                GNB_DU_SRS_PWR_CNTRL_ADJ_STAT = 0
            PUSCH_TX_CONFIG = 0
            DIST_PUCCH_BWP_EDGE = FALSE
            RES_ALLOCATION_TYPE = 1
            RES_ALLOCATION_CFG_TYPE = 1
            PUSCH_POWER_CONTROL_CONFIG_INFO
                MSG3_DELTA_PREAMBLE = 0
                P0_NOMINAL = -82
                MSG3_ALPHA = 10
                P0 = 0
                ALPHA = 10
                DELTA_MCS_ENABLED = FALSE
                IS_ACCUMULATED = TRUE
            PUCCH_POWER_CONTROL_CONFIG_INFO
                P0_NOMINAL = -82
                DELTAF_PUCCHF0 = 1
                DELTAF_PUCCHF1 = 0
                DELTAF_PUCCHF2 = 1
                DELTAF_PUCCHF3 = 0
                DELTAF_PUCCHF4 = 0
                P0PUCCHVAL = 0
            UCI_ON_PUSCH_CONFIG_INFO
                AVOID_UCI_TYPE = 0
                BETA_OFFSET_INDX1 = 0
                BETA_OFFSET_INDX2 = 0
                BETA_OFFSET_INDX3 = 0
                ALPHA_SCALING = 0
    RRM_CONFIG
        IS_ADDNL_UL_CORESET_PRES = FALSE
        NUM_CCE_RSVD_FOR_COMMON_PDCCH = 1
    TGT_UL_CQI
        PRES = TRUE
        TRGCQI = 9
    TIMING_ADVANCE_OFFSET = 1
    TCI_PRES_IN_DCI = 0
    PDCCH_DMRS_SCRAMBLING = 11
    PDSCH_DATA_SCRAMBLING = 11
    PUSCH_DATA_SCRAMBLING = 11
    FEATURE_SET_BIT_MAP = 7
    DEPLOYMENT_MODE = 1
    FREQ_CONFIGURATION
        FREQ_INFO_UL_PRESENT = TRUE
        UL_FREQUENCY_INFO
            ABSOLUTE_FREQUENCY_POINT_A = 4800720
            ABSOLUTE_ARFCN_POINT_A = 720048
            NUMBER_OF_FREQUENCY_BAND = 1
            NR_FREQ_BAND = 79
            SCS_LIST
                NUMBER_OF_CARRIERS = 1
                OFFSET_TO_CARRIER = 0
                SCS = 1
                CARRIER_BW = 273
            UL_CH_BW = 10
            FREQ_SHFT_7P5KHZ = 0
            ADDITIONAL_SPETRUM_EMISSION = 0
            P_MAX = 23
            UL_EARFCN = 723324
        DL_FREQUENCY_INFO
            ABSOLUTE_FREQUENCY_POINT_A = 4804320
            ABSOLUTE_ARFCN_POINT_A = 720288
            NUMBER_OF_FREQUENCY_BAND = 1
            NR_FREQ_BAND = 79
            ABSOLUTE_FREQUENCY_POINT_A = 4800720
            ABSOLUTE_ARFCN_POINT_A = 720048
            SCS_LIST
                NUMBER_OF_CARRIERS = 1
                OFFSET_TO_CARRIER = 0
                SCS = 1
                CARRIER_BW = 273
            DL_CH_BW = 10
            DL_EARFCN = 723324
    SUL_CELL_CONFIG
        SUL_CONFIG_PRES = FALSE
    L1_CFG_INFO
        DL_CENTER_FREQ = 3351000
        UL_CENTER_FREQ = 3351000
        DL_BW = 100
        UL_BW = 100
        DL_FFT_SIZE = 4096
        UL_FFT_SIZE = 4096
        CA_LVL = 0
        N_MODE = 4
        DL_CARRIER_K0 = 1
        UL_CARRIER_K0 = 1
        PRACH_CFG_INFO
            PRACH_PRES = TRUE
            ROOT_SEQ_INDEX = 0
            PRACH_CFG_INDEX = 158
            ZERO_CORR_ZONE_CFG = 6
            HIGH_SPEED_FLAG = FALSE
            PRACH_FREQ_OFFSET = 0
            PRACH_SUB_CARRIER_SPACNG = 3
            PRACH_RESTRICTED_CFG = 0
            PRACH_TX_OCCASION_IN_FREQ_DOMAIN = 0
            PRACH_FDM = 1
            SSB_PER_RACH_OCCASION = 3
        MIB_PARAMS
            CELL_BARRED_OR_NOT = 1
            INTRA_FREQUENCY_RE - SELECTION = 0
        SIB1_PARAMS
            CELL_SELECTION_INFO
                MINIMUM_RSRP_LEVEL_FOR_NUL = À
                MINIMUM_RSRP_LEVEL_FOR_SUL = Ί                MINIMUM_RSRQ_LEVEL = ⊠           CELL_ACCESS_INFO
                NUM_OF_PLMN = 1
                NUMBER_OF_CONFIGURED_PLMNS = 1
                    PLMN_ID = 46011
                TRACKING_AREA_CODE = 1
                RAN_AREA_CODE = 
                GNB_DU_INTERNAL_CELL_ID = 1
                CELL_RESERVED_FOR_OPERATOR_USE = 1
            UE_TIMERS_AND_CONSTANTS
                T_300 = 5
                T_301 = 5
                T_310 = 5
                N_310 = 0
                T_311 = 0
                N_311 = 0
                T_319 = 5
    SIBS_INFO
    NUM_OF_SIBS = 1
        SIB_TYPE = 0
        SIB_VAL_TAG = 2
    PCCH_CONFIG_INFO
        DFLT_PAGING_CYCLE = 1
        PAGING_DURATION_TYPE = 0
        NETWORK_SLICE_TYPE = 2
        PAGE_FRAME_OFFSET = 0
        NETWORK_SLICE_VALUE = 1
        FRST_PDCCH_MONTIRING_PRES_OR_NOT = TRUE
        PDCCH_MONITOR_INFO
            FIRST_PDCCH_MONITORING_TYPE = 0
            NO_OF_PO_PER_PF = 1
            MAX_NO_OF_OCCASION_OF_PO_PER_PF = 1
    MAX_NUM_OF_UEs = 160
    DRX_CONFIG_INFO
        DRX_ENABLED = FALSE
        DRX_ON_DURATION_TIMER_TYPE_IS_PRESENCE = FALSE
        DRX_ON_DURATION_TIMER = 0
        DRX_INACTIVITY_TIMER = 0
        DRX_RTT_TIMER_FOR_DL = 0
        DRX_RTT_TIMER_FOR_UL = 0
        DRX_RE - TRANSMISSION_TIMER_FOR_DL = 0
        DRX_RE - TRANSMISSION_TIMER_FOR_UL = 0
        DRX_LONG_CYCLE_TIME = 0
        DRX_CYCLE_START_OFFSET = 0
        DRX_SHORT_CYCLE_ENABLED_OR_NOT = FALSE
        DRX_SHORT_CYCLE_TIME = 0
        DRX_SHORT_CYCLE_TIMER = 0
        DRX_SLOT_OFFSET = 0
    CSI_RS_CONFIG_INFO
        CSI_RS_ENABLED = FALSE
        CSI_RS_PERIODICITY = 160
        CSI_RS_ROW_TYPE = 2
        CSI_RS_ROW_BITMAP = 1
        CSI_RS_FIRST_SYMBOL = 13
        CSI_RS_SECOND_SYM_PRESENCE = 0
        CSI_RS_SECOND_SYMBOL = 12
        CSI_RS_CDM_TYPE = 2
        CSI_RS_DENSITY = 1
        CSI_RS_DENSITY_DOT5RB_ENUM = 0
    MEAS_GAP_CONFIG
        MEAS_GAP_LENGTH = 0
        MEAS_GAP_REP_PERIOD = 0
        MEAS_GAP_TIMING_ADVANCE = 0
    RACH_CONFIG_INFO
        PRACH_CONFIG_INDEX = 158
        MSG1_FDM = 1
        MSG1_FREQ_START = 0
        ZERO_CORR_ZONE_CFG = 6
        PRMBL_RECVD_TARGET_PWR = -100
        PRMBL_TRANS_MAX = 6
        PWR_RAMPING_STEP = 1
        RA - RSP_WINDOW = 20
        SSB_PER_RACH_OCCASION = 3
        CONTENTION_BASED_PRMBL_PER_SSB = 0
        CONTENTION_RESOLUTION_TIMER = 40
        ROOT_SEQ_INDEX = 0
        RSRP_THRESHHOLD_SSB = 0
    PFS_CONFIG_INFO
        5_QI_COEFF_VALUE = 5
        GBR_SERVED_RATE_COEFFICIENT = 5
        UE_SERVED_RATE_COEFFICIENT = 5
        THROUGHPUT_COEFFICIENT = 5
        FAIRNESS_COEFFICIENT = 5
        TOTAL_SLICE_PRIORITY_LEVELS = 10
        TOTAL_UE_PFS_PRIORITY_LEVELS = 100
        TOTAL_GBR_SERVED_RATE_PRIORITY_LEVELS = 100
    PDSCH_RATE_MATCH_FO_SS_PBCH = FALSE
    PDSCH_RATE_MATCH = FALSE
    SSB_INFO
        NUMBER_OF_SSB = 1
        SLOT_FORMAT_INDEX = 0
    IS_DCI_0_1_AND_1_1_CFG = TRUE
    MCS_TABLE_FOR_PDSCH = 1
    MCS_TABLE_FOR_PUSCH = 0
    DL_RANK = 4
    UL_RANK = 2
    DL_MCS = 22
    UL_MCS = 16
    DL_PTRS_PRES = FALSE
    UL_PTRS_PRES = FALSE
    TIMING_ALIGNMENT_INFO
        TAG_ID = 0
        TA_TIMER_VALUE = 0
    T_UL_SYNC_TIMER = 0
    UL_NUM_ANT_PORTS = 4
    DL_NUM_ANT_PORTS = 4
    IS_BM_ENBLD = FALSE
    IS_MCELL = FALSE
    MCELL_ID = 0
    IS_PDSCH_IN_SSB_SLOT = TRUE
    RLC_CONFIG_INFO
        QCI_RLC_MAP_SIZE = 2
            QCI_ID = 1
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            QCI_ID = 9
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
        NR5QI_RLC_MAP_SIZE = 6
            NR5QFI_ID = 0
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            NR5QFI_ID = 1
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            NR5QFI_ID = 2
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            NR5QFI_ID = 3
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            NR5QFI_ID = 5
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 1
                DL_SN_FIELD_LEN_AM = 1
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 400
                POLL_PDU = 32
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 8
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 35
            NR5QFI_ID = 9
            RLC_COMMON_CONFIG_INFO
                UL_SN_FIELD_LEN_UM = 2
                DL_SN_FIELD_LEN_UM = 2
                UL_SN_FIELD_LEN_AM = 2
                DL_SN_FIELD_LEN_AM = 2
            RLC_UE_CONFIG_INFO
                POLL_RE_TRANSMIT_TIMER = 250
                POLL_PDU = 64
                POLL_BYTE = -1
                MAX_RETX_THRESHOLD = 32
                REASSEMBLY_TIMER = 40
                STATUS_PROHIBIT_TIMER = 10
    NUM_PUCCH_CELL_GROUP = 0
    SSB_PWR = 4294967286
    DL_LA_SETP_UP = 9
    UL_LA_STEP_UP = 2
    DL_LA_STEP_DOWN = 99
    DL_LA_STEP_DOWN = 40
    VONR_DL_LA_STEP_UP = 3
    VONR_UL_LA_STEP_UP = 3
    VONR_DL_LA_STEP_DOWN = 30
    VONR_UL_LA_STEP_DOWN = 30
CELL_CONFIG_REQ_INFO
[oam::process_message] Received EVT_PM_CONFIG_RSP; no handling
[oam::process_message] Received EVT_FM_CONFIG_RSP; no handling
[oam::process_message] Received OAM_CELL_CONFIG_RESPONSE
GNB_DU_CELL_CONFIG_RES
STATUS = 0
[oam::process_oam_interface_msg_queue] entering
[OAM-AG]: process_oam_cell_config_request 
send_cfg_rsp:
    me
    gnbdu_function_list.count = 1
    ### Triggering F1 Setup Request message...
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_EXISTS /ME/GNBDUFunction[0] --> CONFD_OK
TRACE CDB_EXISTS /ME/GNBDUFunction[0]/NRCellDU[0] --> CONFD_OK
TRACE CDB_SET_ELEM /ME/GNBDUFunction[0]/NRCellDU[0]/operationalState --> CONFD_OK
TRACE CDB_SET_ELEM /ME/GNBDUFunction[0]/NRCellDU[0]/cellState --> CONFD_OK
TRACE CDB_END_SESSION  --> CONFD_OK
[oam::process_oam_interface_msg_queue] entering
[oam::process_oam_interface_msg_queue] Message queue is empty
DU Ver: r2.5.1p4-dirty, release Ver: 2.4.0
[oam::process_message] Received EVT_OAM_CELL_STATUS_INDICATION
CELL_STATUS:   cell_id[1]   oam_cell_state[1]
DU_OAM_CELL_STATUS_INDICATION
CELL_STATUS_IND_CELL_ID = 1
CELL_STATUS = 1
1:num_res 2 res_set.num_res 8 f2_num_grps 1 
res_set.frmt_type: 0 num_res_per_grp 5 num_res_in_last_grp 5  
res_set.frmt_type: 3 num_res_per_grp 5 num_res_in_last_grp 5  
res_set.frmt_type: 2 num_res_per_grp 8 num_res_in_last_grp 8  


 Intial DL BWP based on type-0 pdcch cfg:DL:[5417 13769 8352] UL:[5205 12913 7708]
DL:[5334 14043 8709] UL:[5122 13187 8065]

IA Delta: TFU_DELTA 2 RGU_DELTA 0 TFU_DLDATA_DLDELTA3 TFU_DLCNTRL_DLDELTA 3 TFU_CRCIND_ULDELTA4 TFU_ENV_HQFBKIND_ULDELTA 2 TFU_RECPREQ_DLDELTA3 TFU_ULCNTRL_DLDELTA3 RG_ENV_DL_DELTA3  
CL:CellId=1 DL BW:100 MHz UL BW:100 MHz Mu:1
nSSBAbsFre 4804320 
src0: 0x80000000  reverse = 0x00000001
src1: 0x00000000  reverse = 0x00000000
phyCfgReq->sSlotConfig[0].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[1].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[2].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[3].nSymbolType[0] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[1] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[2] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[3] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[4] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[5] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[6] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[7] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[8] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[9] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[10] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[11] = 0
phyCfgReq->sSlotConfig[3].nSymbolType[12] = 2
phyCfgReq->sSlotConfig[3].nSymbolType[13] = 2
phyCfgReq->sSlotConfig[4].nSymbolType[0] = 1 
phyCfgReq->sSlotConfig[5].nSymbolType[0] = 1 
phyCfgReq->sSlotConfig[6].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[7].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[8].nSymbolType[0] = 0 
phyCfgReq->sSlotConfig[9].nSymbolType[0] = 0 
[oam::process_message] Received EVT_OAM_CELL_STATUS_INDICATION
CELL_STATUS:   cell_id[1]   oam_cell_state[2]
DU_OAM_CELL_STATUS_INDICATION
CELL_STATUS_IND_CELL_ID = 1
CELL_STATUS = 2

CELL[1] is UP
PHY Config Success for Carrier Idx [0]
[INFO]: Configuring L1 Mode: 4
PHY Start Success for for SFN [0] for Subframe [0] Carrier Idx [0]Start response!!!!! !!! MISMATCH in PREVIOUS TTI [0:1] and CURRENT TTI [0:5] NumSlotsInRadioFrame 20  !!! 
 TTI received at APP : 0

====== DU is ready ======
[gNodeB Console]
****************** Kpi Stats ******************
---------------------------------------------------------
-----------------------------------------------
UpTime : 30 sec
[gNodeB Console]
#############################################################################################
                       GNB DU Statistics  
#############################################################################################
---------------------------------------------------------------------------------------------
                       Cell Instantaneous Statistics
---------------------------------------------------------------------------------------------
CELL-ID   AVG-DL-PRB  AVG-DL-PRB-BWP-0  AVG-DL-PRB-BWP-1  AVG-DL-PRB-BWP-2  AVG-DL-PRB-BWP-3  DL-OCC   DL-SUCC   DL-FAIL_0    DL-FAIL_1    DL-FAIL_2    DL-FAIL_3    DL-FAIL_4    DL-FAIL_5    DL-FAIL_6    DL-FAIL_7    DL-FAIL_8    DL-FAIL_9    DL-FAIL_10   DL-FAIL_11   DL-FAIL_12   DL-FAIL_13   DL-FAIL_14   DL-FAIL_15   DL-FAIL_16   DL-FAIL_17   DL-FAIL_18   DL-FAIL_19   DL-FAIL_20   DL-FAIL_21   DL-FAIL_22   DL-FAIL_23   DL-FAIL_24   DL-FAIL_25   DL-FAIL_26   DL-NEWTX    DL-RETX   DL-DTX   DL-NACK-RV[0]   DL-NACK-RV[1]   DL-NACK-RV[2]   DL-NACK-RV[3]   DL-DTX-RV[0]   DL-DTX-RV[1]   DL-DTX-RV[2]   DL-DTX-RV[3]   DL-BLER   AVG-UL-PRB  AVG-UL-PRB-BWP-0  AVG-UL-PRB-BWP-1  AVG-UL-PRB-BWP-2  AVG-UL-PRB-BWP-3  UL-OCC   UL-SUCC   UL-NEWTX   UL-RETX   UL-DATIND   UL-BLER TTI-ERR-MAJOR TTI-ERR-MINOR
1         0           0                 0                 0                 0                 38620    0         0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0            0           0         0        0               0               0               0               0              0              0              0              0         0           0                 0                 0                 0                 0        0         0          0         0           0       0             0       

---------------------------------------------------------------------------------------------
                       Cell UE Per TTI(UE/TTI) Statistics
---------------------------------------------------------------------------------------------
CELL-ID  DL-1    UL-1    DL-2    UL-2    DL-3    UL-3    DL-4    UL-4    DL-5    UL-5    DL-6    UL-6    DL-7    UL-7    DL-8    UL-8    
1        0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       

---------------------------------------------------------------------------------------------
      Cell Level SHORT TERM BLER Statistics
---------------------------------------------------------------------------------------------
CELL-ID  DIR     BLER%    0.0%     <0.5%    <1.0%    <2.0%    <5.0%    <10.0%   <25.0%   <50.0%   <100.0%  
1        DL      0.00     600      0        0        0        0        0        0        0        0        
 
1        UL      0.00     600      0        0        0        0        0        0        0        0        

---------------------------------------------------------------------------------------------
      Cell Level LONG TERM BLER Statistics
---------------------------------------------------------------------------------------------
CELL-ID  DIR     BLER%    0.0%     <0.5%    <1.0%    <2.0%    <5.0%    <10.0%   <25.0%   <50.0%   <100.0%  
1        DL      0.00     1        0        0        0        0        0        0        0        0        
 
1        UL      0.00     1        0        0        0        0        0        0        0        0        

---------------------------------------------------------------------------------------------
                       UE SCH:Beam Instantaneous Statistics
---------------------------------------------------------------------------------------------
UE-ID  CELL-ID  BEAM-ID  BEAM-SWTCH-TRIG  BEAM-SWTCH-SUCC  BEAM-SWTCH-CAUSE-1  BEAM-SWTCH-CAUSE-2  BEAM-SWTCH-CAUSE-3  


---------------------------------------------------------------------------------------------
                       Cell Tpt Statistics
---------------------------------------------------------------------------------------------
CELL-ID  NUM-UE   SCH-DL  SCH-UL    
1        0        0.00    0.00      

Total Number of UEs  : 0
     SCH  DL Tpt : 0.00  UL Tpt 0.00
     EGTP DL Tpt : 0.00  UL Tpt 0.00

---------------------------------------------------------------------------------------------
                      UE Level DL PFS SCH KPI
---------------------------------------------------------------------------------------------
UE-ID  DL-Occ  TXOcc-RETX-Q  TXOcc-MSG4-Q  TXOcc-CCCH-Q  TXOcc-CE-Q  TXOcc-SRB-Q  TXOcc-IMS-Q  TXOcc-VoNR-Q  TXOcc-GBR-Q  TXOcc-NGBR-Q  CQI-HIST-0  CQI-HIST-1  CQI-HIST-2  SRVD-HIST-0   SRVD-HIST-1   SRVD-HIST-2   UE-PFS-PRIO-HIST-0   UE-PFS-PRIO-HIST-1   UE-PFS-PRIO-HIST-2   PRB-MAX-SUCC   PRB-MAX_FAIL   

---------------------------------------------------------------------------------------------
                     DL LC Level PFS SCH KPI
---------------------------------------------------------------------------------------------
UE-ID  5QI  LC-ID     BO-SRVD          CS-CAUSE  5QI-PRIO  GBR-MISS-CNT   GBR-PRIO-HIST-0  GBR-PRIO-HIST-1  GBR-PRIO-HIST-2  

---------------------------------------------------------------------------------------------
                      UE Level UL PFS SCH KPI
---------------------------------------------------------------------------------------------
UE-ID  UL-Occ  TXOcc-HQ-RETX TXOcc-MSG3-Q TXOcc-SR-Q  TXOcc-SRB-Q  TXOcc-IMS-Q  TXOcc-VoNR-Q  TXOcc-GBR-Q  TXOcc-NGBR-Q  CQI-HIST-0  CQI-HIST-1  CQI-HIST-2  SRVD-HIST-0   SRVD-HIST-1   SRVD-HIST-2   UE-PFS-PRIO-HIST-0   UE-PFS-PRIO-HIST-1   UE-PFS-PRIO-HIST-2   PRB-MAX-SUCC   PRB-MAX_FAIL   

---------------------------------------------------------------------------------------------
                      UL LCG Level PFS SCH KPI
---------------------------------------------------------------------------------------------
UE-ID  LCG-ID     BSR-RPTD         BO-SRVD          CS-CAUSE  GBR-MISS-CNT   GBR-PRIO-HIST-0  GBR-PRIO-HIST-1  GBR-PRIO-HIST-2  
TTI received at APP : 3000

  Triggering  the PHY STOP REQ(352:4)
[oam::process_message] Received EVT_OAM_CELL_STATUS_INDICATION
CELL_STATUS:   cell_id[1]   oam_cell_state[1]
DU_OAM_CELL_STATUS_INDICATION
CELL_STATUS_IND_CELL_ID = 1
CELL_STATUS = 1

CELL[1] is DOWN
fm_alarm_indication:
TRACE Connected (cdb) to ConfD
TRACE CDB_NEW_SESSION  --> CONFD_OK
TRACE Established new CDB session to ConfD
TRACE CDB_EXISTS /ME/AlarmList[0] --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/numOfAlarmRecords --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/lastModification --> CONFD_OK
TRACE CDB_EXISTS /ME/AlarmList[0]/AlarmRecordGrp{14081} --> CONFD_OK
TRACE CDB_CREATE /ME/AlarmList[0]/AlarmRecordGrp{14081} --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/AlarmRecordGrp{14081}/alarmType --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/AlarmRecordGrp{14081}/objectClass_objectInstance --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/AlarmRecordGrp{14081}/alarmName --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/AlarmRecordGrp{14081}/alarmRaisedTime --> CONFD_OK
TRACE CDB_SET_ELEM /ME/AlarmList[0]/AlarmRecordGrp{14081}/perceivedSeverity --> CONFD_OK
TRACE CDB_END_SESSION  --> CONFD_OK
```