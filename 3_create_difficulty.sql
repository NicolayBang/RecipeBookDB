
CREATE TABLE Difficulty
(
    difficulty_id int(11)    NOT NULL AUTO_INCREMENT,
    difficulty    tinyint(5) NOT NULL,
    PRIMARY KEY (difficulty_id)
);

/*0 to 10, front end will divide by 2 and fill in stars ex.: 7=3.5stars*/
alter table Difficulty change difficulty difficulty tinyint(10);

alter table Difficulty change difficulty difficulty tinyint(10);


