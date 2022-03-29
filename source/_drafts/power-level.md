---
title: power_level
abbrlink: 6367fc0f
tags:
---
TX Power (100M) @ RU: 指的是 RU output power for bandwidth 100M，這 100M 內所有的 power 總和，也可以稱為 channel power
Power Per RE @ SA: 顯示在 VSA 上，平均一個 RE 的 power (VSA 收到的 power)
Power Per RE @ RU: 平均一個 RE 的 power (RU 收到的 power)，A benchmark for RU input power level
SG Amplitude: SG 訊號打出的 power for bandwidth 100M
cable path loss: 所有物理 Attenuator + 線材造成的 power 損耗

DL 測試，BBU -> RU -> VSA，會藉由 VSA 上的數據，反推 RU 打出的 power level
TX Power (100M) @ RU = Power Per RE @ SA + 35(3276 REs) + cable path loss

UL 測試，SG -> RU -> BBU，SG 設定打出 100M 的 power，最後換算成 power per RE
Power Per RE @ RU = SG Amplitude - 35(3276 REs) - cable path loss