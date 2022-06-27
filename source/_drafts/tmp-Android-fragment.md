---
title: tmp_Android_fragment
tags:
---
在fragment中執行onActivityResult的方法
===

在Activity中，加上以下code
```
@Override
protected void onActivityResult(int requestCode, int resultCode, Intent data) {
    MyFragment fragmentObject = getSupportFragmentManager().findFragmentById(R.id.container);
    fragmentObject.onActivityResult(requestCode, resultCode, data);
}
```