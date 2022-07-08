---
title: tmp_python_timezone_for_logging
abbrlink: 46b03fbc
tags:
---
timezone for logging
===

```python
def main():
    logging.basicConfig(format="%(asctime)s %(message)s",
                        datefmt="%Y-%m-%d %H:%M:%S")
    logger = logging.getLogger(__name__)
    logger.error("default") #02/19/2019 10:12:29 AM CST test

    logging.Formatter.converter = time.localtime
    logger.error("localtime") #02/19/2019 10:12:29 AM CST test

    logging.Formatter.converter = time.gmtime
    logger.error("gmtime") #02/19/2019 02:11:47 AM CST test

    def customTime(*args):
        utc_dt = utc.localize(datetime.utcnow())
        my_tz = timezone("US/Eastern")
        converted = utc_dt.astimezone(my_tz)
        return converted.timetuple()

    logging.Formatter.converter = customTime
    logger.error("customTime")

    # to find the string code for your desired tz...
    # print(pytz.all_timezones)
    # print(pytz.common_timezones)

if __name__ == "__main__":
    main()
```