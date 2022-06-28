---
title: tmp_HTML_avatar_effect
tags:
---
avatar effect
===
[Pure CSS Pulsating Avatar Image Effect Ξ ℂ𝕠𝕕𝕖𝕄𝕪𝕌𝕀](https:\\codemyui.com\pure-css-pulsating-avatar-image-effect\)

html
```html
<div class="avatar">
<img src="https:\\www.google.com.tw\url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiJ5ajBuY_eAhVKgLwKHWXWBlUQjRx6BAgBEAU&url=http%3A%2F%2Fevents.ettoday.net%2Fstar-award2015%2Flady.php%3Fno%3D253&psig=AOvVaw1lFBEfxpG6jTNH23B49GVe&ust=1539933489711062">
<\div>
```
css
```css
body {
  align-items: center;
  background: #222;
  display: flex;
  height: 100%;
  justify-content: center;
  margin: 0;
}

html {
  height: 100%;
}

.avatar {
  height: 200px;
  width: 200px;
  position: relative;
}

.avatar img {
  border-radius: 9999px;
  height: 100%;
  position: relative;
  width: 100%;
  z-index: 2;
}

@keyframes cycle-colors {
0% { border-color: hsl(0, 100%, 50%); }
25% { border-color: hsl(90, 100%, 50%); }
50% { border-color: hsl(180, 100%, 50%); }
75% { border-color: hsl(270, 100%, 50%); }
100% { border-color: hsl(360, 100%, 50%); }
}

@keyframes pulse {
  to {
    opacity: 0;
    transform: scale(1);
  }
}

.avatar::before,
.avatar::after {
  animation: pulse 2s linear infinite;
  border: #fff solid 8px;
  border-radius: 9999px;
  box-sizing: border-box;
  content: ' ';
  height: 140%;
  left: -20%;
  opacity: .6;
  position: absolute;
  top: -20%;
  transform: scale(0.714);
  width: 140%;
  z-index: 1;
}

.avatar::after {
  animation-delay: 1s;
}

.avatar:hover img {
  content: url('https:\\www.google.com.tw\url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwj8rZzSuY_eAhVKTrwKHTDBA08QjRx6BAgBEAU&url=https%3A%2F%2Fwww.facebook.com%2Fboommini%2Fposts%2F%25E9%2599%25BD%25E5%2585%2589%25E6%25B2%2590%25E6%25B5%25B4%25E5%25BF%2583%25E9%259D%2588-%25E7%259C%259F%25E5%25A5%25BD%25EF%25B8%258F%2F2016245148415537%2F&psig=AOvVaw1lFBEfxpG6jTNH23B49GVe&ust=1539933489711062');
}

.avatar:hover::before,
.avatar:hover::after {
  animation: pulse 1s linear infinite, cycle-colors 6s linear infinite;
}

.avatar:hover::after {
  animation-delay: .5s;
}
```