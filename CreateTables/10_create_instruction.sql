CREATE TABLE Instruction
(
    instruction_id INT          NOT NULL AUTO_INCREMENT,
    recipe_id      INT          NOT NULL,
    step_number    TINYINT      NOT NULL,
    instruction    VARCHAR(255) NOT NULL,
    PRIMARY KEY (instruction_id)

);
