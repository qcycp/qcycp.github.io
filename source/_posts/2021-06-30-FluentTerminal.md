---
title: Fluent Terminal
abbrlink: 10ad64df
date: 2021-06-30 16:31:57
categories: [Software, FluentTerminal]
tags:
- FluentTerminal
---
* Using Python on Fluent Terminal - CMD
1. 手動設定 Path for Python
![](image01.png)
2. 使用 virtualenv 的方式
```shell
C:\Users\User\python> venv\Scripts\activate.bat

(venv) C:\Users\User\python>
```
* Using Python on Fluent Terminal - Power Shell
1. 手動設定 Path for Python
2. 使用 virtualenv 的方式
```shell
PS C:\Users\User\python> venv\Scripts\activate.ps1
(venv) PS C:\Users\User\python>
```
* 整合 cmder
![](image03.png)

* Trouble Shooting
1. Power Shell 預設不能執行某些命令
![](image02.png)
```
PS C:\Users\User\python> Get-ExecutionPolicy
Restricted
```
要將值改成 RemoteSigned
以系統管理員身分執行 Power Shell
```
PS C:\Windows\system32> Set-ExecutionPolicy RemoteSigned

執行原則變更
執行原則有助於防範您不信任的指令碼。如果變更執行原則，可能會使您接觸到 about_Execution_Policies 說明主題 (網址為
https:/go.microsoft.com/fwlink/?LinkID=135170) 中所述的安全性風險。您要變更執行原則嗎?
[Y] 是(Y)  [A] 全部皆是(A)  [N] 否(N)  [L] 全部皆否(L)  [S] 暫停(S)  [?] 說明 (預設值為 "N"): y
PS C:\Windows\system32>
```