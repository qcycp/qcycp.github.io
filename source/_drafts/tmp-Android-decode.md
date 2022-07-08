---
title: tmp_Android_decode
abbrlink: a1b8956d
tags:
---
Android中軟解碼和硬解碼
===

我們先來看一下Android系統中解碼器的命名，軟解碼器通常是以OMX.google開頭的。硬解碼器通常是以OMX.[hardware_vendor]開頭的，比如TI的解碼器是以OMX.TI開頭的。當然還有一些不遵守這個命名規範的，不以OMX.開頭的，那也會被認為是軟解碼器。

判斷規則見frameworks/av/media/libstagefright/OMXCodec.cpp：
```c++
static bool IsSoftwareCodec(const char *componentName) {
    if (!strncmp("OMX.google.", componentName, 11)) {
        return true;
    }

    if (!strncmp("OMX.", componentName, 4)) {
        return false;
    }

    return true;
}
```

實際上系統中存在的解碼器可以很多，但能夠被應用使用的解碼器是根據配置來的，即/system/etc/media_codecc.xml。這個文件一般由硬件或者係統的生產廠家在build整個系統的時候提供，一般是保存在代碼的device/[company]/[codename]目錄下的，例如device/samsung/tuna/media_codecs.xml。這個文件配置了系統中有哪些可用的codec以及，這些codec對應的媒體文件類型。在這個文件裡面，系統裡面提供的軟硬codec都需要被列出來。

也就是說，如果系統裡面實際上包含了某個codec，但是並沒有被配置在這個文件裡，那麼應用程序也無法使用到！

在這裡配置文件裡面，如果出現多個codec對應同樣類型的媒體格式的時候，這些codec都會被保留起來。當系統使用的時候，將後選擇第一個匹配的codec。除非是指明了要軟解碼還是硬解碼，但是Android的framework層為上層提供服務的AwesomePlayer中在處理音頻和視頻的時候，對到底是選擇軟解還是硬解的參數沒有設置。所以雖然底層是支持選擇的，但是對於上層使用MediaPlayer的Java程序來說，還是只能接受默認的codec選取規則。

但是Android提供的命令行程序/system/bin/stagefright在播放音頻文件的時候，倒是可以根據參數來選擇到底使用軟解碼還是硬解碼，但是該工具只支持播放音頻，不支持播放視頻。

一般來說，如果系統裡面有對應媒體的硬件解碼器的話，系統開發人員應該是會配置在media_codecs.xml中，所以大多數情況下，如果有硬件解碼器，那麼我們總是會使用到硬件解碼器。極少數情況下，硬件解碼器存在，但不配置，我猜測只可能是這個硬解碼器還有bug，暫時還不適合發布。
總結一下（自己的理解，請大家指正）：
軟解就是通過播放器自帶的分離器、解碼器以及畫面渲染來達到表現出視頻畫面的過程。視頻軟解和視頻硬解相比，軟解畫面更華美，因為使用了更多渲染和浮點運算，這讓畫面質量更上一層樓。軟解消耗cpu和耗時可能會在低配設備上面產生卡頓現象。這是可以採取1，低碼率視頻2，採用硬解。
視頻硬解通過顯卡的硬件加速，捨棄了一部分畫質作為代價，來盡量保證影音同步。

我覺得第三方的播放器 所謂調用硬解 就是調用系統的mediaplayer，而軟解 就是調用自己實現的player，基於ffmpeg的。 native有所謂的prefer，就是有軟解和硬解存在的時候，優先調用perfer
系統針對某種解碼格式有對應的硬解或者軟解實現，會在註冊的map裡面找。想要 擴展解碼器 如果不是廠商，一般都是引入ffmpeg。目前市面的基本都是

轉錄自http://blog.sina.com.cn/s/blog_9879b42e0102v5s8.html