---
title: Hello World in Rust
abbrlink: bfb3e384
date: 2020-06-05 13:55:27
categories: [Programming, Rust]
tags:
- Rust
---
* Install Rust using rustup
  * in windows
`https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe`
  * in linux
`curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

* Hello World
```rust
// This is the main function
fn main() {
    // Statements here are executed when the compiled binary is called

    // Print text to the console
    println!("Hello World!");
}
```
```bash
$ rustc hello.rs
$ ./hello
Hello World!
```