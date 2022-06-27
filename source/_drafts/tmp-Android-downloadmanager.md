---
title: tmp_Android_downloadmanager
tags:
---
Android DownloadManager
===

AndroidManifest.xml增加權限
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
DownloadManager dMgr = (DownloadManager) getActivity().getSystemService(getActivity().DOWNLOAD_SERVICE);
DownloadManager.Request dmReq = new DownloadManager.Request(Uri.parse("http://192.168.0.126:56789/smb/192.168.0.126:1234/root/test/test.mp4"));
dmReq.setTitle("Platform Tools");
dmReq.setDescription("Download for Linux");
dmReq.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, "test.mp4");
dMgr.enqueue(dmReq);