CREATE TABLE Ingredients(
    ingredients_id INT NOT NULL AUTO_INCREMENT,
    recipe_id INT NOT NULL,
    PRIMARY KEY (ingredients_id)
);

CREATE TABLE Ingredient
(
    ingredients_id     INT          NOT NULL,
    unit_id            INT          NOT NULL, # unit_id is a foreign key to the Unit table (cup, tablespoon, grams etc.)
    ingredient         TINYTEXT     NOT NULL,
    quantity           int          NOT NULL

    #UNIQUE (ingredients_id, ingredient)
#    FOREIGN KEY (ingredients_id) REFERENCES Ingredients (ingredients_id)


);

##Create a constraint to make sure each ingredient in Ingredients is unique

# ALTER TABLE Ingredient
# ADD CONSTRAINT unique_ingredient UNIQUE (ingredients_id, ingredient);

##Create a table to store the units of each ingredient
##e.g. 1 cup, 2 tablespoons, 1/2 teaspoon, 1/2 cup etc.





/*ALTER TABLE Ingredient
    ADD CONSTRAINT ingredient_is_unique
        UNIQUE (ingredients_id, ingredient);*/



