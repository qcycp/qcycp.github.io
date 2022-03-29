---
title: testing_station
abbrlink: 2119411b
tags:
---
N77 test flow

station 1: DU emulator
station 2: sample-app
station 3: conductive E2E
station 4: OTA E2E
station 5: sample-app prach full short format test

sample-app_20.04.de3.tgz
sample-app_20.11.39e.tgz

1. binary released
2. support compression 8/9 bits
3. both of RPQN and RHON are supported

But, because of the code base of xran of FlexRAN
a. for 20.04.de3 version, 
       RRH_CMPR_HDR_PRESENT=0,  if RRH_CMPR_TYPE = 0
       RRH_CMPR_HDR_PRESENT=1,  if RRH_CMPR_TYPE = 1
b. for 20.11.39e version, 
       RRH_CMPR_HDR_PRESENT always have to set to 1