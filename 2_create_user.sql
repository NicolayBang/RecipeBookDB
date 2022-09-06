
 CREATE TABLE User (
    user_id INT(11) NOT NULL AUTO_INCREMENT,
    pseudo VARCHAR(20) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (user_id)
);

drop table User;
