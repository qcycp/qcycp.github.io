---
title: tmp_Android_remove_ActionBar_shadow
tags:
---
去除android action bar下方的陰影
===

For android 4.x以下
<pre class="codeblock prettyprint linenums">
<resources>
    <style name="AppTheme" parent="android:Theme.Material.Light">
        <item name="android:windowContentOverlay">@null</item>
        ....
    </style>
</resources>
</pre>

For android 5.0 API21
直接在程式中執行
ActionBar actionBar = getActionBar();
actionBar.setElevation(0);