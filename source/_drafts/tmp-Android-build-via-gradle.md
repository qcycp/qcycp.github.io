---
title: tmp_Android_build_via_gradle
abbrlink: 7de99399
tags:
---
build apk by gradle
===
### Step 1: install JDK
$ sudo add-apt-repository ppa:webupd8team/java
$ sudo apt-get update
$ sudo apt-get install oracle-java8-installer

```bash
user@vm-docker:~$ java -version
java version "1.8.0_191"
Java(TM) SE Runtime Environment (build 1.8.0_191-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.191-b12, mixed mode)
```

### Step 2: install android sdk
$ wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
$ tar xzf android-sdk_r24.4.1-linux.tgz

add PATH in ~/.profile

    ANDROID_HOME=$HOME/Android/android-sdk-linux
    PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
$ source ~/.profile

list all SDK and install

    $ android list sdk --all
    $ android update sdk -u -a -t a, b, c, d
or update automatically

    $ android update sdk --no-ui

>SDK Readme.txt
>To start the SDK Manager, please execute the program "android".
>
>From the command-line you can also directly trigger an update by
>executing:
>   tools/android update sdk --no-ui
### Step 3: install gradle
[Gradle Distributions](https://services.gradle.org/distributions/)
$ wget https://services.gradle.org/distributions/gradle-4.10.2-bin.zip

add PATH in ~/.profile

    export PATH=$PATH:$HOME/Android/gradle-4.10.2/bin
$ source ~/.profile
```bash
user@vm-docker:~$ gradle -v

------------------------------------------------------------
Gradle 4.10.2
------------------------------------------------------------

Build time:   2018-09-19 18:10:15 UTC
Revision:     b4d8d5d170bb4ba516e88d7fe5647e2323d791dd

Kotlin DSL:   1.0-rc-6
Kotlin:       1.2.61
Groovy:       2.4.15
Ant:          Apache Ant(TM) version 1.9.11 compiled on March 23 2018
JVM:          1.8.0_191 (Oracle Corporation 25.191-b12)
OS:           Linux 4.4.0-131-generic amd64
```

### Step 4: modify local.properties
* in windows
sdk.dir=D\:\\Android\\Sdk
* in linux
sdk.dir=/home/user/Android/android-sdk-linux

### Step 5: set release key information
Generate release.keystore

    $ keytool -genkey -v -keystore release.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000
Generate debug.keystore or you can find the file in /home/user/.android (C:\Users\user\.android)

    $ keytool -genkey -v -keystore debug.keystore -storepass android -alias androiddebugkey -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "C=US, O=Android, CN=Android Debug"
gen出來的key有效期為 10000 天，--alias 參數後面的别名是將來為應用簽名時所需要用到的

in gradle.properties
```bash
RELEASE_KEY_PASSWORD=123456
RELEASE_KEY_ALIAS=alias_name
RELEASE_STORE_PASSWORD=123456
RELEASE_STORE_FILE=/home/user/.android/release.keystore
```
in app/build.gradle
```bash
android {
    signingConfigs {
        release {
            storeFile file(RELEASE_STORE_FILE)
            storePassword RELEASE_STORE_PASSWORD
            keyAlias RELEASE_KEY_ALIAS
            keyPassword RELEASE_KEY_PASSWORD
        }
    }
    buildTypes {
        release {
            minifyEnabled false
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
            signingConfig  signingConfigs.release
        }
    }

}
```
### Step 6: in project root folder
check build.gradle file
$ gradle build