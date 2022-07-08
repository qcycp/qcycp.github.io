---
title: tmp_JAVA_queue
abbrlink: d1e86152
tags:
---
Queue in Java
===

https://openhome.cc/Gossip/Java/Queue.html

如果希望收集物件時可以佇列方式，收集的物件加入至尾端，取得物件時可以從前端，則可以使用Queue介面的實作物件。Queue繼承自Collection，所以也具有Collection的add()、remove()、element()等方法，然而Queue定義了自己的offer()、poll()與peek()等方法，最主要的差別之一在於，add()、remove()、element()等方法操作失敗時會拋出例外，而offer()、poll()與peek()等方法操作失敗時會傳回特定值。

如果物件有實作Queue，並打算以佇列方式使用，且佇列長度受限，通常建議使用offer()、poll()與peek()等方法。offer()方法用來在佇列後端加入物件，成功會傳回true，失敗則傳回false。poll()方法用來取出佇列前端物件，若佇列為空則傳回null。peek()用來取得（但不取出）佇列前端物件，若佇列為空則傳回null。

先前提過LinkedList，它不僅實作了List介面，也實作了Queue的行為，所以可將LinkedList當作佇列來使用。例如：

```
package cc.openhome;

import java.util.*;

interface Request {
    void execute();
}

public class RequestQueue {

    public static void main(String[] args) {
        Queue requests = new LinkedList<>();
        offerRequestTo(requests);
        process(requests);
    }

    static void offerRequestTo(Queue requests) {
        // 模擬將請求加入佇列
        for (int i = 1; i < 6; i++) {
            requests.offer(
                    () -> System.out.printf("處理資料 %f%n", Math.random())
            );
        }
    }
    // 處理佇列中的請求
    static void process(Queue requests) {
        while(requests.peek() != null) {
            Request request = requests.poll();
            request.execute();
        }
    }
}
```

一個執行結果如下：
處理資料 0.302919
處理資料 0.616828
處理資料 0.589967
處理資料 0.475854
處理資料 0.274380

經常地，你也會想對佇列的前端與尾端進行操作，在前端加入物件與取出物件，在尾端加入物件與取出物件，Queue的子介面Deque就定義了這類行為，Deque中定義addFirst()、removeFirst()、getFirst()、addLast()、removeLast()、getLast()等方法，操作失敗時會拋出例外，而offerFirst()、pollFirst()、peekFirst()、offerLast()、pollLast()、peekLast()等方法，操作失敗時會傳回特定值。
Queue的行為與Deque的行為有所重複，有幾個操作是等義的：

![f365304870cc747f5b3a5257d278faa6.png](:/56d18d3450ad47eea18f9d15ca05f09b)

java.util.ArrayDeque實作了Deque介面，以下範例是使用ArrayDeque來實作容量有限的堆疊：
```
package cc.openhome;

import java.util.*;
import static java.lang.System.out;

public class Stack {
    private Deque deque = new ArrayDeque<>();
    private int capacity;
    
    public Stack(int capacity) {
        this.capacity = capacity;
    }
    
    public boolean push(E elem) {
        if(isFull()) {
            return false;
        }
        return deque.offerLast(elem);
    }

    private boolean isFull() {
        return deque.size() + 1 > capacity;
    }
    
    public E pop() {
        return deque.pollLast();
    }
    
    public E peek() {
        return deque.peekLast();
    }
    
    public int size() {
        return deque.size();
    }
    
    public static void main(String[] args) {
        Stack stack = new Stack<>(5);
        stack.push("Justin");
        stack.push("Monica");
        stack.push("Irene");
        out.println(stack.pop());
        out.println(stack.pop());
        out.println(stack.pop());
    }
}
```

堆疊結構是先進後出，所以執行結果最後才顯示Justin：
Irene
Monica
Justin