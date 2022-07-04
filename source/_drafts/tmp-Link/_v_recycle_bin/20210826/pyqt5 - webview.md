pip install PyQt5
pip install PyQtWebEngine

```
import sys
from PyQt5.QtWidgets import QApplication
from PyQt5.QtCore import QUrl
from PyQt5.QtWebEngineWidgets import QWebEngineView

app = QApplication(sys.argv)

web = QWebEngineView()
web.load(QUrl("https://tw.yahoo.com"))
web.show()

sys.exit(app.exec_())
```
