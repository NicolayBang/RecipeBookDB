/*
 Will implement google auth, so this check is not necessary
 */
#
#
# ALTER TABLE User ADD CONSTRAINT email_is_unique UNIQUE (email);
#
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
