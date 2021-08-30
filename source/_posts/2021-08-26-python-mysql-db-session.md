---
title: python_mysql_db_session
abbrlink: ffdb9082
date: 2021-08-26 09:43:40
categories:
tags:
---
```
class MySqlAlchemy(SQLAlchemy):
    def apply_driver_hacks(self, app, info, options):
        options.update({"isolation_level": "READ COMMITTED"})
        super(MySqlAlchemy, self).apply_driver_hacks(app, info, options)
```