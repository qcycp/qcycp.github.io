---
title: pyinstaller
abbrlink: d585e6aa
date: 2019-11-25 17:29:00
categories: [Software, Python]
tags:
- python
- 安裝
---

# 安裝
```bash
$ pip install pyinstaller
```

# 生成exe檔
```bash
$ pyinstaller <config> main.py
```

# 指定spec文件
```bash
$ pyinstaller main.spec main.py
```

# config
`--noconsole`: 執行exe檔時，不顯示console視窗
`--onefile`: 打包成單一個exe檔案
`--icon`: 指定exe檔案的icon

# spec文件
1. 控制pyinstall打包，以及程式run time執行時的配置
2. 在執行pyinstall會根據指令的config自動建立，也可以透過以下指令單獨生成spec檔案
pyi-makespec <config> main.py
3. 當專案中需要使用到額外的資源檔案時，必須手動編輯spec文件

# steps for generate exe file:
1. `pyi-makespec --onefile --noconsole --icon D:\\FaceDetection\\data\fd.ico main.py`
2. edit main.spec，添加static file to datas
`a = Analysis(..., datas=[('D:\\FaceDetection\\data', 'data')], ...)`
Note: datas中的資料為一tuple值，第一個欄位為檔案在系統中的路徑，第二個欄位為在打包環境中的路徑
3. `pyinstaller main.spec main.py`

# sample for spec文件
```bash
# -*- mode: python ; coding: utf-8 -*-

block_cipher = None


a = Analysis(['main.py'],
             pathex=['D:\\FaceDetection'],
             binaries=[],
             datas=[('D:\\FaceDetection\\data', 'data')],
             hiddenimports=[],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='main',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          upx_exclude=[],
          runtime_tmpdir=None,
          console=False , icon='D:\\FaceDetection\\data\\fd.ico')
```