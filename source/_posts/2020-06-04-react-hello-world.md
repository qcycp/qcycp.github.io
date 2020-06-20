---
title: Hello World for React
abbrlink: 991d0773
date: 2020-06-04 17:41:33
categories: [Programming, React]
tags:
- React
---
1. install react installation package
`$ sudo npm install -g create-react-app`
2. create react app
`$ create-react-app hello-world`
3. start react server on port 3000
`$ cd hello-world`
`$ npm start`
4. install json server
`$ npm install -g json-server`
5. start json server
到當前的project folder
--watch可以監控當data有修改時，會自動重load server
`$ json-server.cmd --watch --port 3004 ./src/db.json`