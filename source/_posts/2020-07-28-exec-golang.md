---
title: Package exec
abbrlink: 2c493017
date: 2020-07-28 17:30:32
categories: [Programming, Go]
tags:
- Go
---
* import
```golang
import (
    "os/exec"
)
```
* func (*Cmd) Output
`Output` runs the command and returns its standard output.
  * Example
```golang
cmd := exec.Command("cat", "text")
out, err := cmd.Output()
if err != nil {
    fmt.Printf("error: %s\n", err)
}                      
fmt.Printf("output: %s\n", string(out))
```
  * output
```
error: exit status 1
output: 
```
* func (c *Cmd) CombinedOutput() ([]byte, error)
`CombinedOutput` runs the command and returns its combined standard output and standard error.
  * Example
```golang
cmd := exec.Command("cat", "text")
out, err := cmd.CombinedOutput()
if err != nil {
    fmt.Printf("error: %s\n", err)
}                      
fmt.Printf("output: %s\n", string(out))
```
  * output
```
error: exit status 1
output: cat: text: No such file or directory
```
* func (*Cmd) Run
`Run` starts the specified command and waits for it to complete.
  * Example
```golang
cmd := exec.Command("sleep", "1")
fmt.Println("Running command and waiting for it to finish...")
err := cmd.Run()
fmt.Printf("Command finished with error: %v\n", err)
```
  * output
```
Running command and waiting for it to finish...
Command finished with error: <nil>
```
* func (c *Cmd) Start() error
`Start` starts the specified command but does not wait for it to complete.
* func (c *Cmd) Wait() error
`Wait` waits for the command to exit and waits for any copying to stdin or copying from stdout or stderr to complete.
  * Example
```golang
cmd := exec.Command("sleep", "5")
err := cmd.Start()
if err != nil {
    fmt.Printf("error: %s\n", err)
}
fmt.Println("Waiting for command to finish...")
err = cmd.Wait()
fmt.Printf("Command finished with error: %v", err)
```
  * output
```
$ go run main.go 
Waiting for command to finish...
Command finished with error: <nil>
```
* func (*Cmd) StdoutPipe
`StdoutPipe` returns a pipe that will be connected to the command's standard output when the command starts.
  * Example
```golang
var person struct {
    Name string
    Age  int
}
cmd := exec.Command("echo", "-n", `{"Name": "Bob", "Age": 32}`)
stdout, err := cmd.StdoutPipe()
if err != nil {
    fmt.Printf("error: %s\n", err)
}  
if err := cmd.Start(); err != nil {
    fmt.Printf("error: %s\n", err)
}  
if err := json.NewDecoder(stdout).Decode(&person); err != nil {
    fmt.Printf("error: %s\n", err)
}  
if err := cmd.Wait(); err != nil {
    fmt.Printf("error: %s\n", err)
}  
fmt.Printf("%s is %d years old\n", person.Name, person.Age)
```
  * output
```
Bob is 32 years old
```
* 將 stdout 和 stderr 分開處理
  * Example
```golang
cmd := exec.Command("cat", "text")
var stdout, stderr bytes.Buffer
cmd.Stdout = &stdout
cmd.Stderr = &stderr
err := cmd.Run()    
if err != nil {     
    fmt.Printf("error: %s\n", err)
}                   
outStr, errStr := string(stdout.Bytes()), string(stderr.Bytes())
fmt.Printf("out: %s\nerr: %s\n", outStr, errStr)
```
  * output
    * success
```
error: exit status 1
out: 
err: cat: text: No such file or directory
```
    * fail
```
out: test
err:
```
* 處理 stdin
  * Example
```golang
cmd := exec.Command("tr", "a-z", "A-Z")
cmd.Stdin = strings.NewReader("some input")
var out bytes.Buffer
cmd.Stdout = &out
err := cmd.Run()
if err != nil {
    fmt.Printf("error: %s\n", err)
}
fmt.Printf("in all caps: %q\n", out.String())
```
  * output
```
in all caps: "SOME INPUT"
```
* 設定 Timeout
  * Example
```golang
ctx, cancel := context.WithTimeout(context.Background(), 100*time.Millisecond)
defer cancel()

if err := exec.CommandContext(ctx, "sleep", "5").Run(); err != nil {
    // This will fail after 100 milliseconds. The 5 second sleep will be interrupted.
    fmt.Println("TIMEOUT")
}
```
* Reference
https://golang.org/pkg/os/exec/
https://colobu.com/2017/06/19/advanced-command-execution-in-Go-with-os-exec/