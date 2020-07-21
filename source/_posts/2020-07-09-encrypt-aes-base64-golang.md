---
title: Encrypt with AES and Base64
abbrlink: d7f0b4a8
date: 2020-07-09 11:32:35
categories: [Programming, Golang]
tags:
- Golang
---
AES 是對稱性加密算法，AES key 長度可以設定為 16, 24, or 32 bytes，分別對應到 AES-128, AES-192, or AES-256
```golang
package main

import (
    "bytes"
    "crypto/aes"
    "crypto/cipher"
    "crypto/rand"
    "encoding/base64"
    "errors"
    "fmt"
    "io"
)

func Encrypt(key, text string) (string ,error) {
    keyBytes := []byte(key)
    textBytes := []byte(text)

    block, err := aes.NewCipher(keyBytes)
    if err != nil {
        return "", err 
    }
    if len(textBytes)%aes.BlockSize != 0 {
        padding := aes.BlockSize - len(textBytes)%aes.BlockSize
        padText := bytes.Repeat([]byte{byte(0)}, padding)
        textBytes = append(textBytes, padText...)
    }

    ciphertext := make([]byte, aes.BlockSize+len(textBytes))
    iv := ciphertext[:aes.BlockSize]
    if _, err := io.ReadFull(rand.Reader, iv); err != nil {
        return "", err
    }   
    cfb := cipher.NewCFBEncrypter(block, iv) 
    cfb.XORKeyStream(ciphertext[aes.BlockSize:], textBytes)
    return base64.StdEncoding.EncodeToString(ciphertext), nil
}

func Decrypt(key, b64 string) (string, error) {
    keyBytes := []byte(key)

    block, err := aes.NewCipher(keyBytes)
    if err != nil {
        return "", err 
    }
    text, err := base64.StdEncoding.DecodeString(b64)
    if err != nil {
        return "", err 
    }
    if len(text) < aes.BlockSize {
        panic("ciphertext too short")
        return "", errors.New("ciphertext to short")
    }

    iv := text[:aes.BlockSize]
    text = text[aes.BlockSize:]
    if len(text)%aes.BlockSize != 0 {
        return "", errors.New("ciphertext is not a multiple of the block size")
    }
    cfb := cipher.NewCFBDecrypter(block, iv)
    cfb.XORKeyStream(text, text)
    text = bytes.TrimRight(text, "\x00")
    return string(text), nil
}

func main() {
    AESEncryptionKey := "ABCDEFGHIJKLMNOP"
    data := "I'm a genius"

    encrypt, _ := Encrypt(AESEncryptionKey, data)
    fmt.Println(encrypt) //n3ZLEui2m9egZaNN1HcqcRYa6gYdMZIf6s7uUQnwvmw=

    decrypt, _ := Decrypt(AESEncryptionKey, encrypt)
    fmt.Println(decrypt)//I'm a genius
}
```