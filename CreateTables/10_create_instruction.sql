CREATE TABLE Steps
(
    step_id INT NOT NULL AUTO_INCREMENT,
    step_nb VARCHAR(3) NOT NULL,

    PRIMARY KEY (step_id)
);



CREATE TABLE Instructions
(
instructions_id int NOT NULL  AUTO_INCREMENT,
recipe_id int NOT NULL,

PRIMARY KEY (instructions_id)
);


CREATE TABLE Instruction
(
    instructions_id INT          NOT NULL,
    step_id         INT          NOT NULL,
    instruction    VARCHAR(255)  NOT NULL
);
