CREATE TABLE IF NOT EXISTS ARTICLE (
    ARTICLE_ID INT IDENTITY PRIMARY KEY,
    LANG_CODE VARCHAR(10),
    TITLE VARCHAR(100),
    SUBTITLE VARCHAR(100),
    CONTENT LONGVARCHAR,
    DATE_AUTHORED DATE,
    DATE_PUBLISHED DATE
);

CREATE TABLE IF NOT EXISTS ARTICLE_AUTHOR (
    INTERNAL_ID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    AUTHOR_ID INT NOT NULL ,
    LANG_CODE VARCHAR(10) NOT NULL,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    BIOGRAPHY VARCHAR(1000)
);

CREATE TABLE IF NOT EXISTS AUTHOR_LINK (
    LINK_ID INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    ARTICLE_ID INT,
    AUTHOR_ID INT,
    PRIORITY INT,
    FOREIGN KEY (ARTICLE_ID) REFERENCES ARTICLE
);