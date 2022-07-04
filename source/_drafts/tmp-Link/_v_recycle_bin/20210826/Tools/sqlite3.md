foreign key

many to one or one to many
```
CREATE TABLE IF NOT EXISTS families (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS  articles (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL,
     family_id INTEGER,
     FOREIGN KEY(family_id) REFERENCES families(id));
```

one to one
```
CREATE TABLE IF NOT EXISTS families (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL,
     article_id INTEGER,
     FOREIGN KEY(article_id) REFERENCES articles(id));
CREATE TABLE IF NOT EXISTS  articles (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL,
     family_id INTEGER,
     FOREIGN KEY(family_id) REFERENCES families(id));
```

many to many
```
CREATE TABLE IF NOT EXISTS families (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS  articles (
     id INTEGER PRIMARY KEY,
     name TEXT NOT NULL);
CREATE TABLE IF NOT EXISTS articles_families (
     article_id INTEGER,
     family_id INTEGER,
     FOREIGN KEY(article_id) REFERENCES articles(id),
     FOREIGN KEY(family_id) REFERENCES families(id)
);
```