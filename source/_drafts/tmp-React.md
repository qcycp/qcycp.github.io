---
title: tmp_React
abbrlink: f9eeed8
tags:
---
React
===
Create React App doesn’t handle backend logic or databases; it just creates a frontend build pipeline.
When you’re ready to deploy to production, running "npm run build" will create an optimized build of your app in the build folder.

#### npx
1. create project
$ npx create-react-app my-app
2. 啟動server
$ cd my-app
$ npm start

#### npm
1. 先利用npm安裝create-react-app
$ npm install -g create-react-app
2. create project
$ create-react-app react-app
3. 啟動server
$ cd react-app
$ npm start

#### You may serve it with a static server:
npm install -g serve
serve -s build


#### npm run build之後會建立一個build folder
```
assets\
static\
asset-manifest.json
favicon.ico
index.html
manifest.json
servier-worker
```
之後只需要把這包網頁資料放到任一個server裡
e.g. 放到nodejs+express上
僅需要指定根目錄 or 任一路徑對應到index.html
app.use(express.static('build'));
app.use('\', express.static('build'));

https:\\ithelp.ithome.com.tw\articles\10185221
https:\\www.w3ctech.com\topic\2096
https:\\wcc723.github.io\javascript\2017\12\21\javascript-es6-arrow-function\
https:\\medium.com\reactmaker\react-%E8%88%87-bind-this-%E7%9A%84%E4%B8%80%E4%BA%9B%E5%BF%83%E5%BE%97-323c8d3d395d
https:\\developer.mozilla.org\zh-TW\docs\Web\JavaScript\Reference\Functions\Arrow_functions
https:\\www.gitbook.com\book\noootown\deeperience-react-native-boilerplate

#### arrow functions
下列兩種寫法效果一樣
const func = (x) => x + 1
const func = function (x) { return x + 1 }

\\ 正常寫法
var callSomeone = (someone) => {
  return someone + '吃飯了'
}
console.log(callSomeone('小明'))
\\ 縮寫，單一行陳述不需要 {}
var callSomeone = (someone) => someone + '吃飯了'
console.log(callSomeone('小明'))
\\ 只有一個參數可以不加括號
var callSomeone = someone => someone + '吃飯了'
console.log(callSomeone('小明'))
\\ 沒有參數時，一定要有括號
var callSomeone = () => '小明' + '吃飯了'
console.log(callSomeone('小明'))

1. 如果在=>右邊只有一行，且沒有用{}包起來，會自動return該value
2. 在=>右邊需要撰寫多行程式，可以用{}包起來
3. 沒用{}，會自動return，有用{}就不會自動return任何值，要自己寫
4. 如果剛好只有一個參數，可以省略()，不用用()把參數包起來: const func = x => x + 1

箭頭函式可以取代某些原有使用self = this或.bind(this)的情況，它可以在詞法上綁定this變數。
```js
const obj = { a:1 }
function func() {
  setTimeout( () => {
    \\ 這裡`this`會以詞法上的func中為預設
    console.log(this.a)
  }, 2000)
}
func.call(obj) \\ 1
```
```js
const obj = { a: 1 }
function func() {
  setTimeout( function() {
    \\ 這裡`this`，會是這個callback的自己本地(local)綁定值
    \\ this為window物件(嚴格模式為undefined)
    \\ this.a必是undefined
    console.log(this.a)
  }, 2000)
}
func.call(obj) \\ undefined
```
下面兩種寫法效果一樣
由於大括號被解釋為代碼塊，所以如果箭頭函數直接返回一個對象，必須在對像外面加上括號。
```js
var foo = () => {return {'a': 1, 'b': 2}}
var goo = () => ({'a': 1, 'b': 2})
console.log(foo()) \\ Object { a: 1, b: 2 }
console.log(goo()) \\ Object { a: 1, b: 2 }
var hoo = (x) => ({x})
console.log(hoo(2)) \\ Object { x: 2 }
```

bind
官方推薦在constructor中bind，或者用箭頭函數
一個箭頭函數沒有它自己的 this，不過他使用的是封閉的執行上下文的 this 值。箭頭函數在詞法上綁定它們的上下文，所以 this 實際上指向最原始的上下文。如果你要進行命名，這也被叫做詞法環境。
```js
import React, { Component } from "react";

class ButtonWithBind extends Component {
  constructor() {
    super();
    this.state = { toggle: false };
    this.toggleButton = this.toggleButton.bind(this); \\ 為了在callback function toggleButton內可以存取這個class的this
  }

  render() {
    const toggle = this.state.toggle;

    return (
      <div><button onClick={this.toggleButton}>{toggle ? "ON" : "OFF"}<\button><\div>
    );
  }

  toggleButton() {
    this.setState(prevState => ({ toggle: !prevState.toggle }));
  }
}

export default ButtonWithBind;
```
```js
import React, { Component } from "react";

class ButtonWithoutBind extends Component {
  constructor() {
    super();
    this.state = { toggle: false };
  }

  render() {
    const toggle = this.state.toggle;

    return (
      <div><button onClick={this.toggleButton}>{toggle ? "ON" : "OFF"}<\button><\div>
    );
  }

  toggleButton = () => {
    this.setState(prevState => ({ toggle: !prevState.toggle }));
  }
}
```
```js
var name = '全域阿婆'
var auntie = {
  name: '漂亮阿姨',
  callName: function () {
    \\ 注意，這裡是 function，以此為基準產生一個作用域
    console.log('1', this.name); \\ 1 漂亮阿姨
    setTimeout(() => {
      console.log('2', this.name); \\ 2 漂亮阿姨
      console.log('3', this); \\ 3 auntie 這個物件
    }, 10);
  },
  callName2: () => {
    \\ 注意，如果使用箭頭函式，this 依然指向 window
    console.log('4', this.name); \\ 4 全域阿婆
    setTimeout(() => {
      console.log('5', this.name); \\ 5 全域阿婆
      console.log('6', this); \\ 6 window 物件
    }, 10);
  }
}
auntie.callName();
auntie.callName2();
```

state 和 props 同樣儲存資料，有什麼差別？
他們倆最大的差別，props是由父Component 傳來，state是在自己 Component 內部產生的
當父元件改變子元件的 props 的時候，子元件會 call componentWillReceiveProps()
因為 props 是由父元素傳來的，可能會傳錯型態，或者沒有傳值。那麼這時候我們會使用 PropTypes 和 defaultProps 來保護這個 component，避免可能發生的意外。
```js
\\ Props 的型態，如果給錯型態，會跳warning。
Student.propTypes = {
    name: React.PropTypes.string,
    id: React.PropTypes.number,
}

\\ Props 預設值
Student.defaultProps = {
    name: 'Harry',
    id: 1,
}
```