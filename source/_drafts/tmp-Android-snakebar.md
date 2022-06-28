---
title: tmp_Android_snakebar
tags:
---
Snackbar
===

```java
Snackbar.make(contentView, "I’m Snackbar",  Snackbar.LENGTH_LONG).show();
```

```java
Snackbar.make(findViewById(android.R.id.content), "I’m Snackbar",  Snackbar.LENGTH_LONG).show();
```

```java
Snackbar.make(contentView,"I'm Snackbar",Snackbar.LENGTH_LONG)
        .setAction("OK", new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Log.i("SNACKBAR","OK");
            }
        })
        .show();
```