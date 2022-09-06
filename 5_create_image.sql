/*

Image:

-image_id      PK, int, not null, auto increment
-image             blob, not null

Create table Image
 */
 CREATE TABLE Image (
  image_id int NOT NULL AUTO_INCREMENT,
  image blob NOT NULL,
  PRIMARY KEY (image_id)
);

describe Image;
