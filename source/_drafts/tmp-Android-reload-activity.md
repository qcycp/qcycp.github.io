---
title: tmp_Android_reload_activity
tags:
---
Reload Activity
===

```
public void reloadActivity() {
    Intent intent = getIntent();
    overridePendingTransition(0, 0);
    intent.addFlags(Intent.FLAG_ACTIVITY_NO_ANIMATION);
    finish();

    overridePendingTransition(0, 0);
    startActivity(intent);
}
```