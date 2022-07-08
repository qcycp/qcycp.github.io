---
title: tmp_Android_url_checking
abbrlink: bd486633
tags:
---
Check url is available or not
===

```java
public void checkUrlIsAvailable(final String... url) {
    new AsyncTask() {
        @Override
        protected void onPreExecute() {
            super.onPreExecute();
        }

        @Override
        protected Boolean doInBackground(String... params) {
            final int HTTP_STATUS_OK = 200;
            int responseCode;
            boolean result = true;

            try {
                URL url = new URL(params[0]);
                HttpURLConnection connection = (HttpURLConnection) url.openConnection();
                connection.setConnectTimeout(5000);
                connection.setReadTimeout(5000);
                responseCode = connection.getResponseCode();
                if (responseCode != HTTP_STATUS_OK) {
                    result = false;
                }
            } catch (Exception e) {
                result = false;
                e.printStackTrace();
            }
            return result;
        }

        @Override
        protected void onPostExecute(Boolean result) {
            if (result) {
                Log.d(TAG, "Load url successfully.");
            } else {
                Log.d(TAG, "Load url failed.");
            }
        }
    }.execute(url);
}
```