---
title: RadioGroup
abbrlink: cc7d2dc0
date: 2018-01-01 00:00:00
categories: Android
tags:
- Android
---
* 靜態宣告
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

* 動態宣告
```java
private int checkedRadioButtonId = -1;

private void initView() {
    Button confirmBtn = findViewById(R.id.confirmBtn);
    final RadioGroup rgroup = findViewById(R.id.rgroup);

    final String[] servers = mApp.getSharedPreference().getServerList().split(",");
    final String[] serverValues = mApp.getSharedPreference().getServerListValue().split(",");

    final RadioButton[] rb = new RadioButton[servers.length];
    for (int i = 0; i < servers.length; i++) {
        rb[i]  = new RadioButton(this);
        String text = serverValues[i] + "(" + servers[i] + ")";
        rb[i].setText(text);
        rb[i].setTextSize(22);
        rb[i].setId(i);

        RadioGroup.LayoutParams params = new RadioGroup.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        params.setMargins(50, 50, 0, 0);
        rb[i].setLayoutParams(params);
        rgroup.addView(rb[i]);
    }

    rgroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() {
        @Override
        public void onCheckedChanged(RadioGroup group, int checkedId) {
            checkedRadioButtonId = rgroup.getCheckedRadioButtonId();
        }
    });
}
```