/*
 Will implement google auth, so this check is not necessary
 */

use recipe_db_v2;

ALTER TABLE User
    ADD CONSTRAINT email_is_unique
        UNIQUE (email);

ALTER TABLE Category
    ADD CONSTRAINT category_name_is_unique
        UNIQUE (category) ;
/* Create constraint that checks if Instruction.instruction with the same recipe_id is unique */
ALTER TABLE Instruction
    ADD CONSTRAINT instruction_is_unique
        UNIQUE (recipe_id, instruction);
/* Create constraint that checks if Ingredient.ingredient with the same recipe_id is unique */
ALTER TABLE Ingredient
    ADD CONSTRAINT ingredient_is_unique
        UNIQUE (recipe_id, ingredient);

ALTER TABLE Tags
    ADD CONSTRAINT fk_tags_recipe_id
        FOREIGN KEY (recipe_id)
            REFERENCES Recipe(recipe_id);

ALTER TABLE Category
    ADD CONSTRAINT fk_category_tags
        FOREIGN KEY (tags_id)
            REFERENCES Tags (tags_id);

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
