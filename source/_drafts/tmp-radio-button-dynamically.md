---
title: tmp_radio_button_dynamically
abbrlink: 5086929b
tags:
---
add radio button dynamically
===

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