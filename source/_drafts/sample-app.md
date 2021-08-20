---
title: sample_app
tags: Work
abbrlink: 99cf277e
---
* O-DU Low OSC repo doc of O-RAN Bronze release
https://docs.o-ran-sc.org/projects/o-ran-sc-o-du-phy/en/latest/index.html
* O-DU Low OSC repo of O-RAN Bronze release
https://gerrit.o-ran-sc.org/r/o-du/phy.git
  * O-DU Low Bronze Release V 1.1, Aug 2020
  * commit 70d9d920dd4e575f085f1f1a9050fefd1c10e127
* L1 and testmac
https://github.com/intel/FlexRAN.git
* Build Prerequisite
  * Intel® C++ Compiler v19.0.3
    * /opt/intel/system_studio_2019
  * DPDK-19.11
    * /opt/dpdk-19.11
  * Reference
    * https://docs.o-ran-sc.org/projects/o-ran-sc-o-du-phy/en/latest/build_prerequisite.html
* Build FHI library
  * Suppose that the project root folder is /home/user/phy
  * step 1: edit /home/user/phy/setupenv.sh and source
  ![](image_01.png)
  * step 2: build library and sample-app
    * cd /home/user/phy/fhi_lib
    * ./build.sh
    * make clean => ./build.sh xclean
  * check the result
    * /home/user/phy/fhi_lib/lib/build/libxran.so
    * /home/user/phy/fhi_lib/app/build/sample-app
  * step 3: generate test bin files => 會在
    * yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
    * yum install octave -y
    * cd /home/user/phy/fhi_lib/app
    * octave gen_test.m
* Execution
  * cd /home/user/phy
  * source setupenv.sh
  * cd /home/user/phy/fhi_lib/app
  * ./dpdk.sh (once)
  * ./run_o_du.sh
  ![](image_02.png)
* Configuration
  * 只測 DL，nTddPeriod=1
  * 要測 UL，nTddPeriod=10，然後 S 要全 DL(0)
  * 要測 PRACH，nTddPeriod=10，rachEanble=1
```
#usecase/mu1_100mhz/config_file_o_du.dat
nTddPeriod=10
sSlotConfig0=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig1=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig2=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig3=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig4=1,1,1,1,1,1,1,1,1,1,1,1,1,1
sSlotConfig5=1,1,1,1,1,1,1,1,1,1,1,1,1,1
sSlotConfig6=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig7=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig8=0,0,0,0,0,0,0,0,0,0,0,0,0,0
sSlotConfig9=0,0,0,0,0,0,0,0,0,0,0,0,0,0

rachEanble=0
prachConfigIndex=156
```
* Compression Mode
compression mode = 0
MTUSize=6780
PrbElemDl0=0,273,0,14,0,0,0,16,0

compression mode = 1
MTUSize=8000
PrbElemDl0=0,273,0,14,0,0,1,8,0

MTUSize=6900
PrbElemDl0=0,273,0,14,0,0,1,9,0
* Trouble Shooting
o-du 中的 compression mode，原本 hard code 是沒有壓縮的
以下修改可以根據 config_file_o_du.dat 中的 PrbElemDl 來決定 compression mode
```
--- a/fhi_lib/app/src/sample-app.c
+++ b/fhi_lib/app/src/sample-app.c
@@ -871,8 +871,10 @@ int init_xran_iq_content(void)
                                 pRbMap->prbMap[0].nRBStart = 0;
                                 pRbMap->prbMap[0].nRBSize = pXranConf->nDLRBs;
                                 pRbMap->prbMap[0].nBeamIndex = 0;
-                                pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
-                                pRbMap->prbMap[0].iqWidth    = 16;
+                                //pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
+                                //pRbMap->prbMap[0].iqWidth    = 16;
+                                pRbMap->prbMap[0].compMethod = pXranConf->ru_conf.compMeth;
+                                pRbMap->prbMap[0].iqWidth    = pXranConf->ru_conf.iqWidth;
                             } else if(pXranConf->ru_conf.xranCat == XRAN_CATEGORY_B
                                       && startupConfiguration.appMode == APP_O_DU
                                       && sym_id == 0){ /* BF Ws are per slot */
@@ -2041,6 +2043,9 @@ int main(int argc, char *argv[])
                             1);
     }
 #endif
+    struct xran_prb_map* pRbMapDl = &startupConfiguration.PrbMapDl;
+    struct xran_prb_map* pRbMapUl = &startupConfiguration.PrbMapUl;
+    startupConfiguration.compression = pRbMapDl->prbMap[0].compMethod & pRbMapUl->prbMap[0].compMethod;
     if (startupConfiguration.nebyteorderswap == 1 && startupConfiguration.compression == 0){
         for(i = 0; i < MAX_ANT_CARRIER_SUPPORTED && i < (uint32_t)(numCCPorts * num_eAxc); i++) {
             printf("TX: Convert S16 I and S16 Q to network byte order for XRAN Ant: [%d]\n",i);
@@ -2118,8 +2123,8 @@ int main(int argc, char *argv[])
         pRbMap->prbMap[0].nRBStart = 0;
         pRbMap->prbMap[0].nRBSize = pXranConf->nDLRBs;
         pRbMap->prbMap[0].nBeamIndex = 0;
-        pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
-        pRbMap->prbMap[0].iqWidth    = 16;
+        //pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
+        //pRbMap->prbMap[0].iqWidth    = 16;

         pRbMap = &startupConfiguration.PrbMapUl;
         pRbMap->dir = XRAN_DIR_UL;
@@ -2135,8 +2140,8 @@ int main(int argc, char *argv[])
         pRbMap->prbMap[0].nRBStart = 0;
         pRbMap->prbMap[0].nRBSize = pXranConf->nULRBs;
         pRbMap->prbMap[0].nBeamIndex = 0;
-        pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
-        pRbMap->prbMap[0].iqWidth    = 16;
+        //pRbMap->prbMap[0].compMethod = XRAN_COMPMETHOD_NONE;
+        //pRbMap->prbMap[0].iqWidth    = 16;
     } else {
         struct xran_prb_map* pRbMap;
         pRbMap = &startupConfiguration.PrbMapDl;
```