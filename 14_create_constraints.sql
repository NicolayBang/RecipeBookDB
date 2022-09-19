/*
 Will implement google auth, so this check is not necessary
 */

use recipe_db_v2;



ALTER TABLE User
    ADD CONSTRAINT email_is_unique
        UNIQUE (email);

ALTER TABLE User
    ADD CONSTRAINT pseudo_is_unique
        UNIQUE (pseudo);

ALTER TABLE Category
    ADD CONSTRAINT category_name_is_unique
        UNIQUE (category_id) ;
/* Create constraint that checks if Instruction.instruction with the same recipe_id is unique */

/* Create constraint that checks if Ingredient.ingredient with the same recipe_id is unique */


ALTER TABLE Tags
    ADD CONSTRAINT fk_tags_recipe_id
        FOREIGN KEY (recipe_id)
            REFERENCES Recipe(recipe_id);

ALTER TABLE Tags
    ADD CONSTRAINT fk_tags_category
        FOREIGN KEY (category_id)
            REFERENCES Category (category_id) ;

AlTER TABLE Favourites
    ADD CONSTRAINT fk_favourites_user_id
        FOREIGN KEY (user_id)
            REFERENCES User (user_id);

ALTER TABLE Favourites
    ADD CONSTRAINT fk_favourites_recipe_id
        FOREIGN KEY (recipe_id)
            REFERENCES Recipe (recipe_id);

# ALTER TABLE Instruction
#     ADD CONSTRAINT fk_instruction_recipe_id
#         FOREIGN KEY (recipe_id) REFERENCES Recipe (recipe_id);

# ALTER TABLE Recipe
#     ADD CONSTRAINT fk_recipe_ingredients_id
#         FOREIGN KEY (ingredients_id) REFERENCES Ingredients(ingredients_id);
# ALTER TABLE Ingredient ENGINE=InnoDB;

ALTER TABLE Ingredients
    ADD CONSTRAINT fk_ingredients_recipe_id
        FOREIGN KEY (recipe_id)
            REFERENCES Recipe (recipe_id);

ALTER TABLE Ingredient
    ADD CONSTRAINT fk_ingredient_unit_id
        FOREIGN KEY (unit_id)
            REFERENCES Unit (unit_id);

ALTER TABLE Instruction
    ADD CONSTRAINT instruction_is_unique
        UNIQUE (instructions_id, instruction);

ALTER TABLE Ingredient
    ADD CONSTRAINT fk_ingredient_ingredients_id
        FOREIGN KEY (ingredients_id)
            REFERENCES Ingredients (ingredients_id);

# TODO: Strange error => for the Ingredient table can only add either FK constraint or
#  UNIQUE constraint, but not both.
# Look into this later
# ALTER TABLE Ingredient
#     ADD CONSTRAINT unique_ingredient UNIQUE (ingredients_id, ingredient);

ALTER TABLE Unit
    ADD CONSTRAINT fk_unit_unit_type_id
        FOREIGN KEY (unit_type_id)
            REFERENCES UnitType (unit_type_id);



ALTER TABLE Instruction
    ADD CONSTRAINT fk_instruction_instructions_id
        FOREIGN KEY (instructions_id)
            REFERENCES Instructions (instructions_id);

ALTER TABLE Instruction
    ADD CONSTRAINT fk_instruction_step_id
        FOREIGN KEY (step_id)
            REFERENCES Steps (step_id);

ALTER TABLE Instructions
    ADD CONSTRAINT fk_instructions_recipe_id
        FOREIGN KEY (recipe_id)
            REFERENCES Recipe (recipe_id);

SHOW ENGINE INNODB STATUS;



/*
ALTER TABLE Instruction ADD CONSTRAINT instruction_is_unique select * from
    (select recipe_id, step, count(*) from Instruction group by recipe_id, step) as t where count > 1;

    UNIQUE (instruction);*/


# ALTER TABLE "User" ADD CONSTRAINT email_is_valid CHECK (
#     email REGEXP ('^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$')
#     );
#
#
#
# ALTER TABLE "User" ADD CONSTRAINT email_is_valid CHECK (
#     isValidEmail(email) = TRUE
#     );
#
# SELECT
#     *
# FROM
#     `User`
# WHERE
#     `email`
#
#         NOT REGEXP '^[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9._-]@[a-zA-Z0-9][a-zA-Z0-9._-]*[a-zA-Z0-9]\\.[a-zA-Z]{2,63}$';
#
