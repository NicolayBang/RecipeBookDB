

/*ALTER TABLE Instruction ADD CONSTRAINT fk_instruction_instructions_id
    FOREIGN KEY (instructions_id) REFERENCES Instructions(instructions_id);*/

/*CREATE TABLE Ingredients(
    ingredient_id INT NOT NULL AUTO_INCREMENT,
    ingredient VARCHAR(50) NOT NULL,
    quantity varchar(50) NOT NULL,
    PRIMARY KEY (ingredient_id)
);*/


CREATE TABLE Recipe
(
    recipe_id     INT          NOT NULL AUTO_INCREMENT,
    user_id       INT          NOT NULL,
    image_id      INT      DEFAULT NULL,
    category_id   INT          NOT NULL,
    difficulty_id INT      DEFAULT NULL,
    title_id      INT          NOT NULL,
    prep_time_id  INT          NOT NULL,
    date_created  DATETIME DEFAULT CURRENT_TIMESTAMP,
    description   VARCHAR(500) NOT NULL,
    PRIMARY KEY (recipe_id),
    FOREIGN KEY (user_id) REFERENCES User (user_id),
    FOREIGN KEY (image_id) REFERENCES Image (image_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    FOREIGN KEY (difficulty_id) REFERENCES Difficulty (difficulty_id),
    FOREIGN KEY (title_id) REFERENCES Title (title_id),
    FOREIGN KEY (prep_time_id) REFERENCES PrepTime (prep_time_id)

);

describe Recipe;







