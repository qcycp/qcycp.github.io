---
title: todo_list
abbrlink: 1b199e07
tags:
---

10/30
1. sample-app
a. 補齊 sample-app UL testing
a.1 針對不同 antenna port 的 experiment 1 (done)
a.2 針對 3.7497, 3.9297，測試不同 SG power output 的 experimant 2 (done)
a.3 整理報告 (done)
b. sample-app testing for PRACH (done)

2. testmac
a. using only one vf and check mantis issue https://mantis.cnsbg.foxconn.com/faca/view.php?id=667 (done)
=> RU 沒有重開， ecpri 內容也正常
b. 測項 1245 目前只能解出 60M 的 pattern，打 100M => SA 目前還沒辦法解
c. verify RX sensitivity (done)

3. s-plane testing with sample-app DL/UL
a. DL EVM 會下降 1% => 1by1 port 測試沒有問題 (done)
b. 第一次測 UL 只要斷開 ssh 就會無法成功 => RD 以複製出現象、解決 (done)
c. DL running 狀態下拔線，會 cu-plane reset 且 ptp unlock => 上傳影片給 RD

* verify v2.3.5q.524 (done)
* ufi + microsemi
* mantis issue reproduce and testing

1. NSA environment?

2. Cisco NCS 540 Configuration, including .1 and .2 profile (with same subnet)
=> NCS 540 still cannot sync with GM (10/8)

3. O-RAN Plugfest check environment and pre-testing
=> on-site testing: 11/Oct/2021

4. conformance test in corning lab
a. Conf 3.2.5.1.1
b. Conf 3.2.5.1.2
c. Conf 3.2.5.3.3

5. SW testing station
station 1: DU emulator
station 2: sample-app
station 3: conductive E2E
station 4: OTA E2E
station 5: sample-app prach full short format test

sample-app DL => 旋轉問題 => fixed by using the same ptp source from ncs 540
sample-app UL => 確認 ptp, 確認 SG 訊號 => 1pps trigger signal from ncs 540 is loose (10/5)
              => sample-app 收到的資料，全部都是 noise => LNA damage for testing unit (10/6)
              => ncs 540 G.8275.1/G.8275.2 profile and GPS/phase_locked issue
              => timing offset issue


6. PTP sync time takes too long => about 15 min
<!-- RRH_PTPV2_JITTER_LEVEL: The estimated jitter of PTP time packets. 0:direct connection to GM/BC, 1:light, 2:medium, 3:heavy -->
=> try JITTER LEVEL 0: 43s
=> try JITTER LEVEL 0: 321s
=> take cisco ncs 540 as BC can use JITTER_LEVEL = 0 option

7. after LO Frequency change, how to update?
=> ptp4l kill 之後無法 re-sync on N77?! => SG cannot send signal when RU re-init
step1 killall ptp4l
step2 ./reset_cuplane
step3 modify RRHconfig._xranxml
step4 ./init_rrh_config_enable_cuplane

* 10MHz 重新接上後，需要重開 RU，才能收到正確的 UL
* 不用接 10MHz 也可以測 UL