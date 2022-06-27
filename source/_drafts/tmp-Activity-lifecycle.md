---
title: tmp_Activity_lifecycle
tags:
---
Activity lifecycle
===

```
@Override
protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    setContentView(R.layout.activity_main);
    Log.d(TAG, "onCreate()");
}

@Override
protected void onResume() {
    super.onResume();
    Log.d(TAG, "onResume()");
}

@Override
protected void onStop() {
    super.onStop();
    Log.d(TAG, "onStop()");
}

@Override
protected void onPause() {
    super.onPause();
    Log.d(TAG, "onPause()");
}

@Override
protected void onDestroy() {
    super.onDestroy();
    Log.d(TAG, "onDestroy()");
}
```

Activity的生命周期
===

1. 所有activity的launch mode都是standard
```
1.1. startActivity(A)
     A.onCreate()
     A.onStart()
     A.onResume()
1.1.1. startActivity(A)->startActivity(B)
     A.onPause()
     B.onCreate()
     B.onStart()
     B.onResume()
     A.onStop()
1.1.2.  startActivity(A)->startActivity(B) && finish()
     A.onPause()
     B.onCreate()
     B.onStart()
     B.onResume()
     A.onStop()
     A.onDestroy()
1.1.3 startActivity(A)->Back
     A.onPause()
     A.onStop()
     A.onDestroy()
1.1.1.1 startActivity(A)->startActivity(B)->Back
     B.onPause()
     A.onRestart()
     A.onStart()
     A.onResume()
     B.onStop()
     B.onDestroy()
```

2. 所有activity的launch mode都是singleTop
都跟standard差不多，只差在下面兩種情況
A->startActivity(A)
A在stack 1中->startActivity(B)，B是singleInstance，此時會跳到stack 2去->startActivity(A)，會再跳回stack A
當stack的最上方跟當下要create的activity一樣時，則不再create instance
```
2.1 startActivity(A)
     A.onCreate()
     A.onStart()
     A.onResume()
2.1.1 startActivity(A)->startActivity(A)
     A.onPause()
     A.onNewIntent()
     A.onResume()
```

A是standard, B是singleInstance
```
3.1 startActivity(A1)
     A1.onCreate()
     A1.onStart()
     A1.onResume()
3.1.1 startActivity(A1)->startActivity(B)
     A1.onPause()
     B.onCreate()
     B.onStart()
     B.onResume()
     A1.onStop()
3.1.1.1 startActivity(A1)->startActivity(B)->startActivity(A2)
     B.onPause()
     A2.onCreate()
     A2.onStart()
     A2.onResume()
     B.onStop()
3.1.1.1.1 startActivity(A1)->startActivity(B)->startActivity(A2)->Back 此時會落在A1
     A2.onPause()
     A1.onRestart()
     A1.onStart()
     A1.onResume()
     A2.onStop()
     A2.onDestroy()
3.1.1.1.1 startActivity(A1)->startActivity(B)->startActivity(A2)->Back->Back 此時會落在B
     A1.onPause()
     B.onRestart()
     B.onStart()
     B.onResume()
     A1.onStop()
     A1.onDestroy()
3.1.1.1.1 startActivity(A1)->startActivity(B)->startActivity(A2)->Back->Back->Back 跳回Launcher
     B.onPause()
     B.onStop()
     B.onDestroy()
```

A, B都是singleTask
```
4.1 startActivity(A)
     A.onCreate()
     A.onStart()
     A.onResume()
4.1.1 startActivity(A)->startActivity(B)
     A.onPause()
     B.onCreate()
     B.onStart()
     B.onResume()
     A.onStop()
4.1.1.1 startActivity(A)->startActivity(B)->startActivity(A)
     B.onPause()
     A.onNewIntent()
     A.onRestart()
     A.onStart()
     A.onResume()
     B.onStop()
     B.onDestroy()
4.1.1.2 startActivity(A)->startActivity(B)->startActivity(C)
     B.onPause()
     C.onCreate()
     C.onStart()
     C.onResume()
     B.onStop()
4.1.1.2.1 startActivity(A)->startActivity(B)->startActivity(C)->startActivity(A)
     B.onDestroy()
     C.onPause()
     A.onNewIntent()
     A.onRestart()
     A.onStart()
     A.onResume()
     C.onStop()
     C.onDestroy()
```

*在同一個stack中的就是同一個task
*執行Back後，會跳回同一個stack中的上一個activity
*在同一個stack中執行Back=>畫面閃動小
  從某一個stack中，執行Back，跳到另外一個stack=>畫面閃動大
1.
若現在有兩個stack，執行以下操作
A: standard, B: singleInstance, 跳到下一個activity都不做finish
Step1: startActivity(A1)    Stack1: A1        Stack2:
Step2: startActivity(B)      Stack1: A1        Stack2: B
Step3: startActivity(A2)    Stack1: A1 A2   Stack2: B
Step4: Back                    Stack1: A1        Stack2: B
Step5: Back                    Stack1:             Stack2: B
Step6: Back                    Stack1:             Stack2:

2. A: singleTask, B: SingleTask, C: singleTask, 跳到下一個activity都不做finish
Step1: startActivity(A)      Stack1: A   
Step2: startActivity(B)      Stack1: A B  
Step3: startActivity(C)      Stack1: A B C
Step4: startActivity(B)      Stack1: A B
Step5: startActivity(C)      Stack1: A B C    
Step6: startActivity(A)      Stack1: A
Step7: startActivity(B)      Stack1: A B
Step8: startActivity(C)      Stack1: A B C
Step9: startActivity(B)      Stack1: A B
Step10: Back                   Stack1: A
Step11: Back                   Stack1:

3. A: singleTask, B: SingleTask, C: singleInstance, 跳到下一個activity都不做finish
Step1: startActivity(A)    Stack1: A      Stack2:
Step2: startActivity(B)    Stack1: A B   Stack2:
Step3: startActivity(C)    Stack1: A B   Stack2: C
Step4: startActivity(A)    Stack1: A      Stack2: C
Step5: Back                   Stack1:         Stack2: B
Step6: Back                   Stack1:         Stack2:
