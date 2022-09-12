CREATE TABLE Ingredient
(
    recipe_id     INT          NOT NULL,
    unit_id       INT          NOT NULL, # unit_id is a foreign key to the Unit table (cup, tablespoon, grams etc.)
    ingredient    TINYTEXT     NOT NULL,
    quantity      int          NOT NULL

);

