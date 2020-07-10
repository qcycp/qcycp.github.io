---
title: 加解密
abbrlink: d3181d19
date: 2020-07-08 17:02:45
categories:
tags:
---
* 對稱式加密 (Symmetric Encryption)
  * 加解密使用同一把 key
  * <font color=#FF0000>傳送方(A)與接收方(B)在溝通加密方式與傳送 key 的過程時，有可能被第三方(C)攔截</font>
    * C 可以使用這把 key 來解密 A/B 傳送的訊息
    * C 可以使用這把 key 來加密攻擊訊息
* 非對稱式加密 (Asymmetric Encryption)
  * 加解密使用 pair key (public key + private key)
    * 使用其中一把 key 加密，只能用另一把 key 解密
  * A 與 B 各自有兩把 key
  * A 與 B 在溝通加密方式時，會將自己的 public key 傳給對方
    * A 會用 B 的 public key 加密訊息，B 再用自己的 private key 解密
    * B 會用A 的 public key 加密訊息，A 再用自己的 private key 解密
  * <font color=#FF0000>A 與 B 將 public key 傳給對方時，有可能被 C 攔截</font>
    * C 可以使用 A/B 的 public key 來加密攻擊內容
* 非對稱式加密 + 數位簽章 (Digital Signature)
  * A 要傳訊息給 B
    * A 先用 B 的 public key 加密
    * A 再用自己的 private key 加密
      * <font color=#FF6600>A 的 private key 不會洩漏</font>
    * B 收到訊息
    * B 先用 A 的 public key 解密
      * <font color=#FF6600>只有 A 發的訊息，在這裡才解的開</font>
    * B 再用自己的 private key 解密
      * <font color=#FF6600>就算 C 用 A 的 public key 解開了 A 傳送出來的訊息，也沒有 B 的 private key 繼續完全解密</font>
  * <font color=#FF0000>A 與 B 將 public key 傳給對方時，有可能被 C 攔截，然後 C 搞事情</font>
    * C 攔截了 A/B 的 public key
    * C 偽造了兩對 public key + private key(<font color=#0000FF>CApub+CApri</font>/<font color=#008000>CBpub+CBpri</font>)，再把 <font color=#0000FF>CApub</font>/<font color=#008000>CBpub</font> 分別傳給 B/A
    * A 要傳訊息給 B
      * A 先用 <font color=#008000>CBpub</font> 加密
      * A 再用自己的 private key 加密
      * C 攔截到訊息後
        * C 先用 A 的 public key 解密
        * C 再用 <font color=#008000>CBpri</font> 完全解密
        * C 先用 B 的 public key 加密
        * C 再用 <font color=#0000FF>CApri</font> 加密
      * B 收到訊息後
        * B 先用 <font color=#0000FF>CApub</font> 解密
        * B 再用自己的 private key 解密
* A/B 在交換 public key 後，透過具有公信力的第三方，再確認一次拿到的真的是對方的 public key
* AES (Advanced Encryption Standard)
  * 對稱式加密算法
  * allows 128, 192 or 256 bit (16, 24, 32 bytes) key length
* AEC