---
title: tmp_Android_okHttp
abbrlink: 341049db
tags:
---
okhttp - request body
===

```java
//form
RequestBody requestBody = new MultipartBody.Builder()
        .setType(MultipartBody.FORM)
        .addFormDataPart("pad_id", pad_id)
        .addFormDataPart("camera_name", name)
        .addFormDataPart("camera_position", position)
        .build();
        
//json
MediaType JSON = MediaType.parse("application/json; charset=utf-8");
JSONObject object = new JSONObject();
try {
    object.put("pad_id", pad_id);
    object.put("camera_name", name);
    object.put("camera_position", position);
} catch (JSONException e) {
    e.printStackTrace();
}
RequestBody requestBody = RequestBody.create(JSON, object.toString());
```