requirements.txt
```
appdirs==1.4.3
beautifulsoup4==4.8.1
certifi==2019.9.11
cffi==1.13.0
chardet==3.0.4
cryptography==2.8
future==0.18.1
html5lib==1.0.1
idna==2.8
progressbar2==3.47.0
PTTLibrary==0.8.25
pycparser==2.19
python-telegram-bot==12.2.0
python-utils==2.3.0
requests==2.22.0
six==1.12.0
soupsieve==1.9.4
tornado==6.0.3
uao==0.1.1
uritools==2.2.0
urlextract==0.13.0
urllib3==1.25.6
webencodings==0.5.1
websockets==8.0.2
```

```
import os
import re
import requests
import sys
import time
import traceback
import telegram
import urllib.request
from PTTLibrary import PTT
from urlextract import URLExtract

USERNAME = "qcycp"
PASSWORD = "1234"
TOKEN = "926429631:AAFTAVgcWIXut8IgyYEVUGVtdaQ3wZqWClc"

def handler(Msg):
    with open('LogHandler.txt', 'a', encoding='utf-8') as F:
        F.write(Msg + '\n')

if __name__ == '__main__':
    bot = telegram.Bot(token=TOKEN)
    client_list = list()
    client_list.append('916571214')
    client_list.append('972956652')
    client_list.append('656239373')

    PTTBot = PTT.Library(LogHandler=handler)
    try:
        PTTBot.login(USERNAME, PASSWORD, KickOtherLogin=False)
    except PTT.Exceptions.LoginError:
        PTTBot.log('登入失敗')
    except PTT.Exceptions.WrongIDorPassword:
        PTTBot.log('帳號或密碼錯誤')
    except PTT.Exceptions.LoginTooOften:
        PTTBot.log('登入太頻繁')

    LastIndex = 61614
    while True:
        try:
            NewestIndex = PTTBot.getNewestIndex(PTT.IndexType.BBS, Board='Beauty')
            PTTBot.log('NewestIndex of Beauty: %s" % NewestIndex)
            if LastIndex + 1 <= NewestIndex:
                NewestIndex = LastIndex + 1
                LastIndex = NewestIndex
            else:
                PTTBot.log("資料已最新")
                time.sleep(60)
                continue

            Post = PTTBot.getPost('Beauty', PostIndex=NewestIndex)
            if Post is None:
                PTTBot.log('Post %s is None' % NewestIndex)
                continue

            if Post.getDeleteStatus() != PTT.PostDeleteStatus.NotDeleted:
                if Post.getDeleteStatus() == PTT.PostDeleteStatus.ByModerator:
                    PTTBot.log('文章已刪除')
                elif Post.getDeleteStatus() == PTT.PostDeleteStatus.ByAuthor:
                    PTTBot.log('文章已刪除')
                elif Post.getDeleteStatus() == PTT.PostDeleteStatus.ByUnknow:
                    PTTBot.log('文章已刪除')
                continue

            PTTBot.log('Date: ' + Post.getDate())
            PTTBot.log('Title: ' + Post.getTitle())
            PTTBot.log('Content: ' + Post.getContent())
            folderName = str(NewestIndex) + ' ' + Post.getTitle().strip()
            if os.path.exists(os.path.join('download', folderName)):
                PTTBot.log('%s 已下載' % NewestIndex)
                time.sleep(60)
                continue
            os.makedirs(os.path.join('download', folderName), exist_ok=True)
            extractor = URLExtrator()
            PTTBot.log('%s %s downloading...' % (NewestIndex, Post.getTitle())
            for chat_id in client_list:
                bot.send_message(chat_id=chat_id, text=Post.getTitle())
            for url in extractor.gen_urls(Post.getContent()):
                if 'imgur' not in url:
                    if url.startswith('http'):
                        for chat_id in client_list:
                            bot.send_message(chat_id=chat_id, text=url)
                    continue
                if not url.startswith('http'):
                    continue
                try:
                    extension = url.split('.')[-1]
                    if extension == 'gifv':
                        continue
                    fileName = url.split('/')[-1]
                    if extension not in ['jpg', 'jpeg', 'png', 'bmp', 'gif']:
                        fileName = fileName + '.jpg'
                    PTTBot.log('url: %s, filename: %s' % (url, fileName))
                    filepath = os.path.join('download', folderName, fileName)
                    urllib.request.urlretrieve(url, filepath)

                    for chat_id in client_list:
                        if filepath.endswith('gif'):
                            bot.send_animation(chat_id=chat_id, animation=open(filepath, 'rb'))
                        else:
                            bit.send_photo(chat_id=chat_id, photo=open(filepath, 'rb'))
                except:
                    PTTBot.log(traceback.format_exc())
            time.sleep(20)
        except KeyboardInterrupt:
            PTTBot.logout()
            break
        except:
            PTTBot.log(traceback.format_exc())
            time.sleep(20)

            try:
                PTTBot.login(USERNAME, PASSWORD, KickOtherLogin=False)
            except PTT.Exceptions.LoginError:
                PTTBot.log('登入失敗')
                time.sleep(20)
            except PTT.Exceptions.WrongIDorPassword:
                PTTBot.log('帳號或密碼錯誤')
                time.sleep(20)
            except PTT.Exceptions.LoginTooOften:
                PTTBot.log('登入太頻繁')
                time.sleep(20)
```