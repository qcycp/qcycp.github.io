:%s/search_from/replace_to/g
將所有 "search_from" 的字串替換成 "replace_to"

忽略大小寫差異
:%s/search_from/replace_to/gi

如果只要取代指定行數範圍的字串，可以用以下格式，例如要搜尋並取代第 50 行至 100 行匹配的字串，可以這樣：
:50,100s/search_from/replace_to/g