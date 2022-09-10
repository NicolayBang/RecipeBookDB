/*
Category:
-category_id  PK, int, not null, auto increment
-category         tinytext, not null
  Create table Category
  */
CREATE TABLE Category
(
    category_id int(11)    NOT NULL AUTO_INCREMENT,
    category    tinytext NOT NULL,
    PRIMARY KEY (category_id)
);




describe Category;
