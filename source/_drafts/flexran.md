---
title: flexran
abbrlink: 74fcb349
tags:
---
### build xran
cd /home/faca/FlexRAN_SA/xran
./build.sh
cd /home/faca/FlexRAN_SA/build/nr5g/gnb/l1app
./build_phy.sh SUB6 avx512 BBDEV_FEC_ACCL_NR5G
cp -rf /home/faca/FlexRAN_SA/bin/nr5g/gnb/l1/l1app /opt/faca/FlexRAN/bin/nr5g/gnb/l1/

### 21.03
* patch
/FlexRAN21.03/xran/lib/Makefile
141 DEF += -DFCN_ADAPT

/FlexRAN21.03/build/nr5g/gnb/l1app/makefile_phy
290 OPT := $(OPT) -DFCN_ADAPT

* environment
[root@gnb FlexRAN21.03]# source set_env_var.sh -d
[root@gnb FlexRAN21.03]# export INTEL_LICENSE_FILE=/opt/intel/licenses/license.lic (not necessary)

Enter Intel SystemStudio / ParallelStudio Install Directory for icc, or just enter to set default /opt/intel/system_studio_2019
sourcing /opt/intel/system_studio_2019/bin/iccvars.sh  intel64 -platform linux
Enter DPDK Install Directory, or just enter to set default/opt/dpdk-20.11
Set RTE_SDK=/opt/dpdk-20.11

* compile
[root@gnb FlexRAN21.03]# ./flexran_build.sh -r 5gnr_sub6 -b

* build xran
cd /FlexRAN21.03/xran
./build.sh

* build l1app
cd /FlexRAN21.03/build/nr5g/gnb/l1app
./build_phy.sh SUB6 avx512 BBDEV_FEC_ACCL_NR5G

### 21.11
* patch
/FlexRAN21.11/xran/lib/Makefile
168 DEF += -DFCN_ADAPT

/FlexRAN21.11/build/nr5g/gnb/l1app/makefile
284 OPT := $(OPT) -DFCN_ADAPT

* environment
[root@gnb FlexRAN21.11]# source set_env_var.sh -d

Enter Intel SystemStudio / ParallelStudio Install Directory for icc, or just enter to set default /opt/intel/system_studio_2019
sourcing /opt/intel/system_studio_2019/bin/iccvars.sh  intel64 -platform linux
Enter DPDK Install Directory, or just enter to set default/opt/dpdk-20.11.3
Set RTE_SDK=/opt/dpdk-20.11.3

* compile
[root@gnb FlexRAN21.11]# ./flexran_build.sh -e -r 5gnr

### compile dpdk
```
meson build
cd build
ninja
ninja install
```

### init FEC
driverctl --nosave set-override $fecDevice0 igb_uio
echo "8086 0D8F" | tee /sys/bus/pci/drivers/igb_uio/new_id

cd /home/faca/FlexRAN21.11/
source set_env_var.sh -d
echo 1 > /sys/bus/pci/devices/0000:40:00.0/reset
sleep 1
cd /opt/dpdk-20.11/app/test-bbdev && ./test-bbdev.py -c validation -n 64 -b 1 -i -v ./test_vectors/ldpc_dec_v7813.data

### generate vf
```
echo 0 > /sys/class/net/enp97s0f0/device/sriov_numvfs
echo 3 > /sys/class/net/enp97s0f0/device/sriov_numvfs
sleep 3

# generate vlan mirror for cu-plane
if [ -d "/sys/class/net/enp97s0f0/device/sriov" ]
then
    vf_2_if=$(ls /sys/class/net/enp97s0f0/device/virtfn2/net)
    echo add 2,3 > /sys/class/net/enp97s0f0/device/sriov/2/vlan_mirror
    ifconfig ${vf_2_if} up
    ifconfig ${vf_2_if} mtu 9000
    # tcpdump -i ${vf_2_if} -w ecpri.cap
fi

# add vlan tag by H/W
ip link set enp97s0f0 down
ip link set enp97s0f0 vf 0 vlan 3
ip link set enp97s0f0 vf 1 vlan 2

# adding mac by H/W
ip link set enp97s0f0 vf 0 mac 00:11:22:33:44:26
ip link set enp97s0f0 vf 1 mac 00:11:22:33:44:26
ip link set enp97s0f0 up

# bind dpdk driver
echo "Binding DPDK port.... 61:02.0 61:02.1"
/opt/dpdk-20.11/usertools/dpdk-devbind.py -b igb_uio "61:02.0 61:02.1"
/opt/dpdk-20.11/usertools/dpdk-devbind.py --status-dev net
```

### testmac的config要放在
/FlexRAN/tests/nr5g
/FlexRAN/tests/nr5g/dl/testmac_dl_mu1_100mhz.cfg
/FlexRAN/tests/nr5g/dl/mu1_100mhz

[root@localhost nr5g]# ls
channel  c_master.sh  dl  fd  nr5g_testapp  rctul  run.sh  sweep  ul

### testmac
21.03
```
testmac_set_phy_start: mode[4], period[0], count[0]
TESTMAC>phystart 4 0 0

Usage: [test_type: 0-DL 1-UL 2-FD]
       [Numerology: 0-4]
       [Bandwidth: 5, 10, 15, 20, 25, 30, 40, 50, 60, 80, 100, 200, 400]
       [optional: test_num]
TESTMAC>run 1 1 100 1900
```
21.11
```
testmac_set_phy_start: mode[4], period[0], count[0]
TESTMAC>phystart 4 0 0

Usage: [rat_type: 0-LTE 1-NR]
       [test_type: 0-DL 1-UL 2-FD]
       [Numerology: 0-4 (for NR Only)]
       [Bandwidth: 5, 10, 15, 20, 25, 30, 40, 50, 60, 80, 100, 200, 400 (for NR Only)]
       [optional: test_num]
TESTMAC>run 1 1 1 100 1900
```