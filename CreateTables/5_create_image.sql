/*

Image:

-image_id      PK, int, not null, auto increment
-image             blob, not null

Create table Image
 */
 CREATE TABLE Image (
  image_id VARCHAR(255) NOT NULL ,
  image blob DEFAULT NULL,
  PRIMARY KEY (image_id)
);

INSERT INTO Image (image_id) VALUE ('default.jpg');
