---
title: Encrypt with RSA and Base64
abbrlink: ca690ff5
date: 2020-07-10 20:05:09
categories: [Programming, Golang]
tags:
- Golang
---
RSA 是非對稱性加密算法
* import
```golang
import (
    "crypto/rand"
    "crypto/rsa"
    "crypto/sha256"
    "crypto/x509"
    "encoding/base64"
    "encoding/gob"
    "encoding/pem"
    "errors"
    "fmt"
    "io/ioutil"
    "os"
)
```
* 生成公私鑰
```golang
func GenerateKeyPair(bits int) (*rsa.PrivateKey, *rsa.PublicKey, error) {
    prikey, err := rsa.GenerateKey(rand.Reader, bits)
    if err != nil {
        return nil, nil, err
    }
    return prikey, &prikey.PublicKey, nil
}

privatekey, publickey, _ := GenerateKeyPair(2048)
fmt.Println(*privatekey) // {{2003898272...5197615363 []}}
fmt.Println(*publickey) // {2003898272...5007771639 65537}
```
* 將密鑰存入檔案
```golang
func saveGobKey(fileName string, key interface{}) error {
    outFile, _ := os.Create(fileName)
    defer outFile.Close()

    encoder := gob.NewEncoder(outFile)
    err = encoder.Encode(key)
    if err != nil {
        return err
    }
}

func savePEMPrivateKey(fileName string, key *rsa.PrivateKey) error {
    outFile, _ := os.Create(fileName)
    defer outFile.Close()

    derStream:= x509.MarshalPKCS1PrivateKey(key)
    var privateKey = &pem.Block{
        Type: "PRIVATE KEY",
        Bytes: derStream,
    }

    err = pem.Encode(outFile, privateKey)
    if err != nil {
        return err
    }
}

func savePEMPublicKey(fileName string, key *rsa.PublicKey) error {
    outFile, _ := os.Create(fileName)
    defer outFile.Close()

    derPkix, _ := x509.MarshalPKIXPublicKey(key)
    var publicKey = &pem.Block{
        Type: "PUBLIC KEY",
        Bytes: derPkix,
    }

    err = pem.Encode(outFile, publicKey)
    if err != nil {
        return err
    }
}

//store key in binary format
saveGobKey("private.key", privatekey)
saveGobKey("public.key", publickey)

//store key in pem format
//-----BEGIN RSA PRIVATE KEY-----
//-----BEGIN PRIVATE KEY-----
//MIIEpQIBAAKCAQEAu/olT1++xi2cfQSF+DjgeEeiFurzhM2MtfTgdVeQngOmtfZh
//...
//23GiddwFvlm+Xbeu0bV8CVg+KLjMsD4UqSbZzqWXCDK/5vNE7fIeus8=
//-----END PRIVATE KEY-----
savePEMPrivateKey("private.pem", privatekey)

//-----BEGIN PUBLIC KEY-----
//MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAu/olT1++xi2cfQSF+Djg
//...
//qwIDAQAB
//-----END PUBLIC KEY-----
savePEMPublicKey("public.pem", publickey)
```
* 加解密
```golang
func Encrypt(message string) (string, error) {
    key, _ := LoadPEMPublicKey("public.pem")

    ciphertext, err := rsa.EncryptOAEP(sha256.New(), rand.Reader, key, []byte(message), []byte(""))
    if err != nil {
        return "", err
    }

    return base64.StdEncoding.EncodeToString(ciphertext), nil
}

func Decrypt(b64_message string) (string, error) {
    key, _ := LoadPEMPrivateKey("private.pem")

    message, err := base64.StdEncoding.DecodeString(b64_message)
    if err != nil {
        return "", err
    }

    plaintext, err := rsa.DecryptOAEP(sha256.New(), rand.Reader, key, message, []byte(""))
    if err != nil {
        return "", err
    }
    return string(plaintext), nil
}

//go only support encrypt by public key and decrypt by private key
//because public key is available to everyone
data := "I'm a genius"
encrypt_data, _ := Encrypt(data)
decrypt_data, _ := Decrypt(encrypt_data)
fmt.Println(decrypt_data) //I'm a genius
```