
sql_create_logfiles_table = """ CREATE TABLE IF NOT EXISTS logfiles (
                                id integer PRIMARY KEY NOT NULL,
                                filename text,
                                timestamp1 DATETIME DEFAULT CURRENT_TIMESTAMP
                                timestamp2 DATE DEFAULT (datetime('now','localtime'))
                            ); """

| id  |        filename        |     timestamp1      |     timestamp2      |
| --- | ---------------------- | ------------------- | ------------------- |
| 1   | imfr.log.2019-05-01_04 | 2019-05-01 07:06:01 | 2019-05-01 15:06:01 |
| 2   | imfr.log.2019-04-30_17 | 2019-05-01 07:06:01 | 2019-05-01 15:06:01 |
