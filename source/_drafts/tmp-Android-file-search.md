---
title: tmp_Android_file_search
tags:
---
Recursively search files with particular extension
===

```java
private List mFilesList = new ArrayList();
public boolean searchCmsFile(final String path) {
    List files = scanCmsFiles(path);

    if (files.size() <= 0) {
        Log.d(TAG, "There is no cms data in the target folder");
        return false;
    } else {
        // get the first file
        Log.d(TAG, "Cms file path: " + files.get(0));
        return true;
    }
}

public List scanCmsFiles(final String path) {
    Log.d(TAG, "path: " + path);
    final FilenameFilter ff = new FilenameFilter() {
        private final String[] filter = {".cms", ".CMS"};

        @Override
        public boolean accept(File dir, String filename) {
            for (String ext : filter) {
                if (filename.toLowerCase().endsWith(ext) || new File(dir.getPath() + File.separator + filename).isDirectory()) {
                    return true;
                }
            }

            return false;
        }
    };

    mFilesList.clear();
    scanDirectory(new File(path), ff);
    return mFilesList;
}

private void scanDirectory(File path, FilenameFilter ff) {
    if (path != null && path.exists()) {
        for (File files : path.listFiles(ff)) {
            if (files.isDirectory()) {
                scanDirectory(files, ff);
            } else {
                Log.d(TAG, "file found: " + files.getAbsolutePath());
                mFilesList.add(files.getAbsolutePath());
            }
        }
    }
}
```