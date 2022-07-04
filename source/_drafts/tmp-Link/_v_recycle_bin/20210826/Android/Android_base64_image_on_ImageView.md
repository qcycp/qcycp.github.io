```java
import android.util.Base64;
import android.graphics.BitmapFactory;

ImageView img = findViewById(R.id.img);
byte[] bytes = Base64.decode(base64_img, Base64.DEFAULT);
img.setImageBitmap(BitmapFactory.decodeByteArray(bytes, 0, bytes.length));
```