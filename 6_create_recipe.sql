
CREATE TABLE Instruction(
    instruction_id INT NOT NULL AUTO_INCREMENT,
    instructions_id INT NOT NULL,
    instruction VARCHAR(255) NOT NULL,
    PRIMARY KEY (instruction_id)

);
CREATE TABLE Instructions(
    instructions_id INT NOT NULL AUTO_INCREMENT,
    instruction_id INT NOT NULL,
    PRIMARY KEY (instructions_id),
    FOREIGN KEY (instruction_id) REFERENCES Instruction(instruction_id)
);

/*ALTER TABLE Instruction ADD CONSTRAINT fk_instruction_instructions_id
    FOREIGN KEY (instructions_id) REFERENCES Instructions(instructions_id);*/

/*CREATE TABLE Ingredients(
    ingredient_id INT NOT NULL AUTO_INCREMENT,
    ingredient VARCHAR(50) NOT NULL,
    quantity varchar(50) NOT NULL,
    PRIMARY KEY (ingredient_id)
);*/


CREATE TABLE Recipe(
    recipe_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    image_id INT DEFAULT NULL,
    category_id INT NOT NULL,
    difficulty_id INT DEFAULT NULL,
    instructions_id INT NOT NULL,
    ingredients VARCHAR(500) NOT NULL,
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
    name TINYTEXT NOT NULL,
    description VARCHAR(500) NOT NULL,
    PRIMARY KEY (recipe_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (image_id) REFERENCES Image(image_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (difficulty_id) REFERENCES Difficulty(difficulty_id),
    FOREIGN KEY (instructions_id) REFERENCES Instructions(instructions_id)
);

describe Recipe;






