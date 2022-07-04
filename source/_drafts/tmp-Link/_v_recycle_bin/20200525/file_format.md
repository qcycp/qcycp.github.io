linux file format
===
dos格式文件傳輸到unix系統時，會在每行的結尾多一個`^M`

in vim

* 查詢file format
:set ff

* 設定file format
:set ff=dos
:set ff=unix