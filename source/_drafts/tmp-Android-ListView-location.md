---
title: tmp_Android_ListView_location
abbrlink: 8109f3f0
tags:
---
讓ListView記住上次滑動到的位置
===

```
mListView.setOnScrollListener(new AbsListView.OnScrollListener(){

    @Override
    public void onScroll(AbsListView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        // TODO Auto-generated method stub
    }

    @Override
    public void onScrollStateChanged(AbsListView view, int scrollState) {
        // TODO Auto-generated method stub
        position = mListView.getFirstVisiblePosition();
        View v = mListView.getChildAt(0);
        top = (v == null) ? 0 : v.getTop();
        Log.d(TAG, "position: " + position + ", top: " + top);
    }
});

mListView.setSelectionFromTop(position, top);
```