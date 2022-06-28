---
title: tmp_HTML_axios
tags:
---
axios
===
```js
axios.get('http:\\localhost:3004\subject_list')
.then(json => json.data.data.map(subject => (   # json是user-defined的，.data是固定的，.data.data第二個data是json第一層的名稱，.map代表data是一個list
  {
    name: subject.name,
    department: subject.department,
    title: subject.title,
    avatar: "http:\\172.18.71.12" + subject.avatar
  })))

axios.get('\user', {
    params: {
      ID: 12345
    }
  })
  .then(function (response) {
    console.log(response);
  })
  .then(response => {
    console.log( response.data );
  })
  .catch(function (error) {
    console.log(error);
  });

axios.post('\user', {
    firstName: 'Fred',
    lastName: 'Flintstone'
  })
  .then(function (response) {
    console.log(response);
  })
  .catch(function (error) {
    console.log(error);
  });

```