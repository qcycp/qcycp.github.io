---
title: tmp_Android_Asynctask
abbrlink: c160f45c
tags:
---
Android Asynctask
===
http://cw1057.blogspot.tw/2014/12/asynctask-ui-thread.html

主要有四加一個 method。

第一個是 onPreExecute()，由 UI Thread 呼叫，這相當重要，表示可以在這呼叫 UI 物件，一般就是用來顯示進度列，表示背景程式的執行進度。

第二個是 doInBackground(Params...)，接在 onPreExecute() 後面執行，由 Background Thread 呼叫，用來執行費時的工作，由於這是在 Background Thread 裡執行，因此不能在這裡面呼叫 UI 物件。

此時可以說是和休士頓失聯的狀態嗎？

不，可以呼叫 publishProgress(Progress...) 來更新 UI 物件，疑？不是說不能動 UI 嗎？

嘿嘿，AsyncTask 留了一手，publishProgress(Progress...) 是 AsyncTask 的 API，但它不會直接動 UI，只是留個記號，另外會有人負責來檢查這個記號，一旦發現有新資料，就會呼叫 AsyncTask 第三個 method，就是 onProgressUpdate(Progress...)。

第三個是 onProgressUpdate(Progress...)，由 UI Thread 呼叫，由 publishProgress(Progress...) 觸發，執行時間是不確定的，這個 method 一般就是用來更新進度列的（或者說更新 UI 的），doInBackground(Params...) 在呼叫 publishProgress(Progress...) 時，會將目前進度傳進去，當然可以傳其他東西，而 onProgressUpdate(Progress...) 被呼叫時，就會得到目前進度（或其他東西）。

切記，要傳給 onProgressUpdate(Progress...) 的資料一定要透過 publishProgress(Progress...) 的參數，不可以透過 AsyncTask 的 class 變數，因為剛說過，onProgressUpdate(Progress...) 的執行時間點是不確定的，如果第一個 onProgressUpdate(Progress...) 尚未執行，doInBackground(Params...) 又呼叫了一次 publishProgress(Progress...)，那前一個尚未更新的 class 變數就會被覆蓋了。

最後一個是 onPostExecute(Result)，也就是在 doInBackground(Params...) 結束之後執行，不意外的，也是由 UI Thread 呼叫，doInBackground(Params...) 回傳的物件會傳給 onPostExecute(Result)，不過這時倒是可以用 class 變數來傳啦，因為只會執行一次。

整理如下：
只有在 doInBackground(Params...) 裡不能動 UI。
在 doInBackground(Params...) 若想動 UI，得間接透過 publishProgress(Progress...) 與 onProgressUpdate(Progress...)，或者等到 onPostExecute(Result) 再更新 UI。
