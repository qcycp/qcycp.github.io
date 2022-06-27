---
title: tmp_Android_Settings
tags:
---
更改Settings/Display/Font size選項
===

//packages/apps/Settings/res/values/arrays.xml  
```
<string-array name="entries_font_size">
    <item msgid="6490061470416867723">Small</item>
    <item msgid="3579015730662088893">Normal</item>
    <item msgid="1678068858001018666">Large</item>
    <item msgid="490158884605093126">Huge</item>
    <item>Huger</item>
    <item>Hugerr</item>
    <item>Hugerrr</item>
    <item>Hugerrrr</item>
</string-array>

<string-array name="entryvalues_font_size" translatable="false">
    <item>0.85</item>
    <item>1.0</item>
    <item>1.15</item>
    <item>1.30</item>
    <item>1.6</item>
    <item>1.9</item>
    <item>2.2</item>
    <item>2.5</item>
</string-array>
```