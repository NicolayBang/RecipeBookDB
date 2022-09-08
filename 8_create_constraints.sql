/*
 Will implement google auth, so this check is not necessary
 */

use recipe_db_v2;

ALTER TABLE User ADD CONSTRAINT email_is_unique UNIQUE (email);
ALTER TABLE Category ADD CONSTRAINT category_name_is_unique UNIQUE (category) ;
ALTER TABLE Recipe ADD CONSTRAINT recipe_name_is_unique UNIQUE (name);/*
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
