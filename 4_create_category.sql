/*
Category:
-category_id  PK, int, not null, auto increment
-category         tinytext, not null
  Create table Category
  */
CREATE TABLE Category
(
    category_id int(11)    NOT NULL AUTO_INCREMENT,
    category    tinyint(5) NOT NULL,
    PRIMARY KEY (category_id)
);


alter table Category change category category tinytext;

describe Category;
