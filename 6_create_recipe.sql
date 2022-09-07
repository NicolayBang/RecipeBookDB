
 CREATE TABLE Recipe(
    recipe_id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    image_id INT DEFAULT NULL,
    category_id INT DEFAULT NULL,
    difficulty_id INT DEFAULT NULL,
    date_created DATETIME DEFAULT CURRENT_TIMESTAMP,
    name TINYTEXT NOT NULL,
    description VARCHAR(500) NOT NULL,
    ingredients VARCHAR(500) NOT NULL,
    directions  VARCHAR(500) NOT NULL,
    PRIMARY KEY (recipe_id),
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (image_id) REFERENCES Image(image_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
    FOREIGN KEY (difficulty_id) REFERENCES Difficulty(difficulty_id)
);

alter table Recipe change column category_id category_id INT NOT NULL;

describe Recipe;






