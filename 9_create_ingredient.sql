CREATE TABLE Ingredient
(
    ingredient_id INT          NOT NULL AUTO_INCREMENT,
    recipe_id     INT          NOT NULL,
    ingredient    VARCHAR(255) NOT NULL,
    quantity      VARCHAR(255) NOT NULL,
    PRIMARY KEY (ingredient_id)

);
ALTER TABLE Ingredient
    ADD CONSTRAINT fk_ingredient_recipe_id
        FOREIGN KEY (recipe_id) REFERENCES Recipe (recipe_id);

