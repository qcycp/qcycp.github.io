---
title: tmp_telegram_bot
abbrlink: 284ab795
tags:
---
@BotFather
=> /start
=> newbot
=> Beauty (name)
=> qcycp_bot (username)

t.me/qcycp_bot
Use this token to access the HTTP API:
926429631:AAFTAVgcWIXut8IgyYEVUGVtdaQ3wZqWClc


https://api.telegram.org/bot926429631:AAFTAVgcWIXut8IgyYEVUGVtdaQ3wZqWClc/getUpdates
有加入此bot，並且發過訊息，下此api才能撈到對方的chat_id

```
{
    "ok": true,
    "result": [{
        "update_id": 55449301,
        "message": {
            "message_id": 4,
            "from": {
                "id": 916571214,
                "is_bot": false,
                "first_name": "Nick",
                "last_name": "Cheng",
                "language_code": "zh-hans"
            },
            "chat": {
                "id": 916571214,
                "first_name": "Nick",
                "last_name": "Cheng",
                "type": "private"
            },
            "date": 1571396152,
            "text": "test"
        }
    }]
}
```


https://pypi.org/project/python-telegram-bot/
https://github.com/python-telegram-bot/python-telegram-bot/wiki/Code-snippets
https://medium.com/@zaoldyeck9970/%E5%AF%A6%E6%88%B0%E7%AF%87-%E6%89%93%E9%80%A0%E4%BA%BA%E6%80%A7%E5%8C%96-telegram-bot-ed9bb5b8a6d9
