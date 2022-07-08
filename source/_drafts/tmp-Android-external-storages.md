---
title: tmp_Android_external_storages
abbrlink: ea5731c7
tags:
---
Get external storages manually
===
https://stackoverflow.com/questions/5694933/find-location-of-removable-sd-card

```
//ExternalStorage.java
import android.os.Environment;

import java.io.File;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class ExternalStorage {
    private static final String TAG = "SmartCMS_ExternalStorage";

    public static final String INTERNAL_SD = "internalSD";
    public static final String EXTERNAL_SD = "externalSD";
    public static final String EXTERNAL_USB = "externalSUSB";

    /**
     * @return A map of all storage locations available
     */
    public static Map getAllStorageLocations() {
        Map map = new HashMap(10);

        map.put(INTERNAL_SD, Environment.getExternalStorageDirectory());

        try {
            File mountFile = new File("/proc/mounts");
            if(mountFile.exists()){
                Scanner scanner = new Scanner(mountFile);
                while (scanner.hasNext()) {
                    String line = scanner.nextLine();
                    if (line.startsWith("/dev/block/vold/179")) {
                        String[] lineElements = line.split(" ");
                        String element = lineElements[1];

                        File ff = new File(element);
                        if (ff.exists() && ff.isDirectory()) {
                            map.put(EXTERNAL_SD, ff);
                        }
                    } else if (line.startsWith("/dev/block/vold/8")) {
                        String[] lineElements = line.split(" ");
                        String element = lineElements[1];

                        File ff = new File(element);
                        if (ff.exists() && ff.isDirectory()) {
                            map.put(EXTERNAL_USB, ff);
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return map;
    }
}
```
Usage:
Map externalLocations = ExternalStorage.getAllStorageLocations();
File internalSD = externalLocations.get(ExternalStorage.INTERNAL_SD);
File externalSD = externalLocations.get(ExternalStorage.EXTERNAL_SD);
File externalUSB = externalLocations.get(ExternalStorage.EXTERNAL_USB);