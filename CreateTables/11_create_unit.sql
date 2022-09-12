CREATE TABLE UnitType
(
    unit_type_id int NOT NULL AUTO_INCREMENT,
    unit_type_name varchar(50) NOT NULL,
    PRIMARY KEY (unit_type_id)
);


CREATE TABLE Unit
(
    unit_id int NOT NULL AUTO_INCREMENT,
    unit_name varchar(50) NOT NULL,
    unit_type_id int NOT NULL,
    PRIMARY KEY (unit_id)

);

