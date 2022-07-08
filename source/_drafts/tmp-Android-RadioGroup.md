---
title: tmp_Android_RadioGroup
abbrlink: 9e3f3665
tags:
---
RadioGroup
===

```xml
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent" >

        <RadioGroup
            android:id="@+id/rgroup"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:orientation="horizontal" >

            <RadioButton
                android:id="@+id/warwick"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="warwick" />

            <RadioButton
                android:id="@+id/kyle"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="kyle" />
            <RadioButton
                android:id="@+id/twitch"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="twitch" />            
        </RadioGroup>
    </LinearLayout>
```

```java
    private RadioButton warwick;
    private RadioButton kyle;
    private RadioButton twitch;
    private RadioGroup rgroup;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        warwick = (RadioButton) findViewById(R.id.warwick);
        kyle = (RadioButton) findViewById(R.id.kyle);
        twitch = (RadioButton) findViewById(R.id.twitch);
        rgroup = (RadioGroup) findViewById(R.id.rgroup);
        rgroup.setOnCheckedChangeListener(listener);
    }
    
    private RadioGroup.OnCheckedChangeListener listener = new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup group, int checkedId) {
            // TODO Auto-generated method stub
            int p = group.indexOfChild((RadioButton) findViewById(checkedId));
            int count = group.getChildCount();
            switch (checkedId) {
                case R.id.warwick:
                    break;
                case R.id.kyle:
                    break;
                case R.id.twitch:
                    break;
            }
        }
    };
```