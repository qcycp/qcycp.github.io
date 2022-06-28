---
title: tmp_Android_avoid_Navigation_Drawer_appear
tags:
---
禁止Navigation Drawer右滑出現
===
禁止右滑出現，也禁止左滑消失

```java
mDrawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_LOCKED_CLOSED);
```
    

如果要單純禁止右滑出現，左滑依然可以關掉選單

```java
mDrawerLayout.addDrawerListener(new DrawerLayout.DrawerListener() {
    @Override
    public void onDrawerSlide(View drawerView, float slideOffset) {
        // Respond when the drawer's position changes
    }

    @Override
    public void onDrawerOpened(View drawerView) {
        mDrawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_UNLOCKED);
    }

    @Override
    public void onDrawerClosed(View drawerView) {
        mDrawerLayout.setDrawerLockMode(DrawerLayout.LOCK_MODE_LOCKED_CLOSED);
    }

    @Override
    public void onDrawerStateChanged(int newState) {
        // Respond when the drawer motion state changes
    }
});
```