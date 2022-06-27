---
title: tmp_Android_GSON
tags:
---
GSON
===

Response of Web API：
```
{
    name: "Nick",
    age: 30,
    email: "qcycp1007@gmail.com"
}
```

We can create a class：
```
public class PersonalData {
    String name;
    int    age;
    String email;
}
```

使用方式：

[gson-2.3.1.jar](:/967ea9651df04ce39d938e3911a7f560)

//build.gradle
```
dependencies {
    compile files('libs/gson-2.3.1.jar')
}
```

```
import com.google.gson.Gson;

public void parseResponse(String result) {
    Gson gson = new Gson();
    PersonalData retMsg = gson.fromJson(result, PersonalData.class);
    if (retMsg != null) {
        //access data: retMsg.name, retMsg.age, retMsg.email
        //do something...
    } else {
        throw new Exception("exception");
    }
}
```