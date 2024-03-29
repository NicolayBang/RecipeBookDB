
drop view if exists RecipeCardView;

CREATE View RecipeCardView AS
(
SELECT Title.title           AS name,
       User.pseudo           AS posted_by,
       User.user_id                      ,
       Recipe.date_created   AS creation_date,
       Difficulty.difficulty,
       PrepTime.prep_time    AS cook_time,
       Recipe.nb_of_likes    AS popularity,
       Recipe.nb_of_servings AS servings,
       Recipe.description,
       Recipe.recipe_id

FROM Recipe
         INNER JOIN Title ON Title.title_id = Recipe.title_id
         INNER JOIN User ON User.user_id = Recipe.user_id
         INNER JOIN Difficulty ON Difficulty.difficulty_id = Recipe.difficulty_id
         INNER JOIN PrepTime ON PrepTime.prep_time_id = Recipe.prep_time_id );



#drop view RecipeIngredientsView;

# FLUSH USER_RESOURCES;
#
# GRANT ALL PRIVILEGES ON l9wg8442wjqiydnn TO 'h0t8uqbccnbr14zr'@'107.171.153.230';




