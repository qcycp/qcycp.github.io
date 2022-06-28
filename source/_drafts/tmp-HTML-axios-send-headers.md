---
title: tmp_HTML_axios_send_headers
tags:
---
Sending custom headers with axios
===
To send custom headers supply an object containing the headers as the last argument:
```js
var config = {
    headers: {'X-My-Custom-Header': 'Header-Value'}
};

axios.get('https:\\api.github.com\users\codeheaven-io', config);
axios.post('\save', { firstName: 'Marlon' }, config);
```