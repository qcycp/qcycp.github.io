---
title: tmp_Android_mouse_right_to_back
tags:
---
滑鼠右鍵改為back
===

```
 diff --git a/frameworks/native/services/inputflinger/InputReader.cpp b/frameworks/native/services/inputflinger/InputReader.cpp
index b3abe6b..37aae71 100755
--- a/frameworks/native/services/inputflinger/InputReader.cpp
+++ b/frameworks/native/services/inputflinger/InputReader.cpp
@@ -1171,7 +1171,8 @@ uint32_t CursorButtonAccumulator::getButtonState() const {
         result |= AMOTION_EVENT_BUTTON_PRIMARY;
     }
     if (mBtnRight) {
-        result |= AMOTION_EVENT_BUTTON_SECONDARY;
+        //result |= AMOTION_EVENT_BUTTON_SECONDARY;
+        result |= AMOTION_EVENT_BUTTON_BACK;
     }
     if (mBtnMiddle) {
         result |= AMOTION_EVENT_BUTTON_TERTIARY;
```