pytest 路徑問題
===

在test file中，若是import project內的module，會發生ModuleNotFoundError
![123a98a4851344069553982e4600e49c](_v_images/20190415134458940_3545.png =1300x)

* 法一
在project根目錄下，直接執行
`python -m pytest app/test/test_auth.py`
![98009431b929459192c26d61abf71769](_v_images/20190415134603816_2113.png =1300x)

* 法二
設定PYTHONPATH
![028158aaab4943fea13f768ad871d53b](_v_images/20190415134645779_24368.png =1300x)
