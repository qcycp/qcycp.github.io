---
title: tmp_python_youtube_downloader
tags:
---
Youtube Downloader by pytube
===

```python
#https://python-pytube.readthedocs.io/en/latest/user/quickstart.html
import tkinter as tk
from pytube import YouTube
import os
import threading

def progress_function(stream = None, chunk = None, file_handle = None, remaining = None):
    global fileSize
    percent = (100*(fileSize-remaining))/fileSize
    labelMsg.config(text = "{:00.0f}%".format(percent))

def clickUrl():
    global listvideo, listradio, fileChoosen
    for r in listradio:
        r.destroy()
    listradio.clear()
    listvideo.clear()
    filename.set("")
    btnDown.config(state="disabled")

    labelMsg.config(text = "")
    if url.get() == "":
        labelMsg.config(text = "請輸入下載的URL!!")
    else:
        try:
            input_url = url.get()
            rbvalue = 1
            
            yt = YouTube(input_url, on_progress_callback=progress_function)
            filename.set(yt.title)
            #audio = yt.streams.filter(only_audio=True, file_extension='mp4').first()
            for v1 in yt.streams.filter(adaptive=True, file_extension='mp4').all():
                listvideo.append(v1)
            for v2 in listvideo:
                rbtem = tk.Radiobutton(frame3, text = v2, variable = video, value = rbvalue, command = radioBtnVideo)
                if rbvalue == 1:
                    rbtem.select()
                    fileChoosen = listvideo[0]
                listradio.append(rbtem)
                rbtem.grid(row = rbvalue - 1, column = 0, sticky = "w")
                rbvalue += 1
            btnDown.config(state = "normal") #設定下載按鈕有效
        except:
            labelMsg.config(text = "找不到此 Youtube 影片!!")

def downloadJob():
    global fileChoosen, listvideo, listradio
    fpath = path.get()
    tempath = fpath.replace("\\", "\\\\")
    fpath = tempath
    fileChoosen.download(output_path=fpath, filename=filename.get())

    for r in listradio:
        r.destroy()
    listradio.clear()
    listvideo.clear()
    url.set("")
    filename.set("")
    btnDown.config(state="disabled")
    labelMsg.config(text = "")

def clickDownload():
    global fileChoosen, fileSize
    labelMsg.config(text = "")

    if path.get() == "":
        labelMsg.config(text = "請輸入儲存的位置!!")
    else:
        fpath = path.get()
        tempath = fpath.replace("\\", "\\\\")
        fpath = tempath
        if not os.path.exists(fpath):
            labelMsg.config(text = "儲存位置設定錯誤!!")
            return
        if filename.get() == "":
            labelMsg.config(text = "請設定儲存的檔案名稱!!")
            return

        fileSize = fileChoosen.filesize
        #fileChoosen.download(output_path = fpath, filename = filename.get())
        t = threading.Thread(target=downloadJob)
        t.start()

def radioBtnVideo():
    global fileChoosen
    labelMsg.config(text = "")
    fileChoosen = listvideo[video.get() - 1]

win = tk.Tk()
win.geometry("650x360")
win.title("Youtube Downloader")
fileChoosen = ""
fileSize = 0
listvideo = []
listradio = []
video = tk.IntVar()
url = tk.StringVar()
path = tk.StringVar()
filename = tk.StringVar()
url.set("https://www.youtube.com/watch?v=5W0A0TCWZfI")
path.set("C:\\Users\\qcycp\\Video")

frame1 = tk.Frame(win, width = 650)
frame1.pack()
label1 = tk.Label(frame1, text = "Youtube 網址: ")
entryUrl = tk.Entry(frame1, textvariable = url)
entryUrl.config(width = 60)
btnUrl = tk.Button(frame1, text = "OK", command = clickUrl)
label1.grid(row = 0, column = 0, sticky = "e")
entryUrl.grid(row = 0, column = 1)
btnUrl.grid(row = 0, column = 2)

label2 = tk.Label(frame1, text = "存檔路徑: ")
entryPath = tk.Entry(frame1, textvariable = path)
entryPath.config(width = 60)
label2.grid(row = 1, column = 0, pady = 6, sticky = "e")
entryPath.grid(row = 1, column = 1)

label3 = tk.Label(frame1, text = "檔案名稱: ")
entryFile = tk.Entry(frame1, textvariable = filename)
entryFile.config(width = 60)
label3.grid(row = 2, column = 0, pady = 3, sticky = "e")
entryFile.grid(row = 2, column = 1)

frame2 = tk.Frame(win)
frame2.pack()
btnDown = tk.Button(frame2, text = "下載", command = clickDownload)
btnDown.pack(pady = 6)
btnDown.config(state="disable") #一開始，下載按鈕無效

labelMsg = tk.Label(win, text = "", fg = "red")
labelMsg.pack()

frame3 = tk.Frame(win)
frame3.pack()

win.mainloop()
```