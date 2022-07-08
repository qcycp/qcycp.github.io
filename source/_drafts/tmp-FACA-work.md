---
title: tmp_FACA_work
abbrlink: '44e85315'
tags:
---
2021
01/01 auto-start service for BBU
02/01 bbu-cli configuration for r2.3.0
  * refine the architecture of configuration
  * xml parser via python

04/14 ORAM CUS specification study
07/01 IQTool (EVM, preamble detection)

2020
01/01 decode_rtsp_via_GPU
02/15 nucleus testing and improvement
    * sqa issues
    * multitrack
    * cpu capacity for 4/8/12 core
04/13 nucleus improvement
    * TopN response for 1:N api
    * reduce dataset in nucleus (only keep subject_id, feature, photo_id), 修改name, job_number...欄位不需更新dataset
    * remove redundant operation (check access control) and fields (subject_name, job_number) in response for both image and dynamic recognition
    * wrapper
        * 1:N /recognize
        * 1:1 /checkin
        * screen list maintenance
        * send events to kangaroo
        * send events to WFE
        * error_code
    * modification about kangaroo
    * update dataset on kangaroo when pad crud
04/27 survey NVR
05/06 survey EIS(Edge InSight)
05/14 survey Radio Edge Cloud(REC), O-RAN and RAN Intelligent Contraler(RIC)
06/01 Jaeger porting to SmB
07/01 design and implement software license policy
07/31 openness and kubernetes
09/22 FlexRAN compile and test l1app/l2 testmac
10/19 local 5g installer, including cu, du, l1
    * rpm package generator
    * systemd service
11/09 O-RAN-SC
    * o-du low
    * sample app testing for O-RU and O-DU
12/07 Dual Socket Scenerio (2xL1/1xCU/2xDU) auto-start
12/29 special bbu-cli for NEC
    * auto-start service

2019
IMFR
Kangaroo
FacePad

20190711 - 20190814 Stranger Handler
20190903 - 20191015 Multisite HeadQuarter server
20191021 人車辨識系統 SDK server + dashboard sample backend
