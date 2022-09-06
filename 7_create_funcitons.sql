#
#
# DELIMITER //
# CREATE FUNCTION isValidEmail (email varchar(255)) RETURNS BOOLEAN
#   BEGIN
#     DECLARE isValid BOOLEAN;
#     IF (email REGEXP '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$') THEN
#       SET isValid = TRUE;
#     ELSE
#       SET isValid = FALSE;
#     END IF;
#     return isValid;
#   END //
# DELIMITER ;
#
# drop function isValidEmail;
