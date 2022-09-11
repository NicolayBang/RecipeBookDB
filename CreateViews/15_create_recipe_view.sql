

CREATE View RecipeView AS
(
SELECT Title.title, Recipe.title_id                AS title_view,
       User.email, Recipe.user_id                  AS posted_by,
       Recipe.date_created                         AS creation_date,
       Difficulty.difficulty, Recipe.difficulty_id AS difficulty_stars,
       PrepTime.prep_time, Recipe.prep_time_id     AS cook_time,
       Recipe.nb_of_likes                          AS popularity_view,
       Recipe.nb_of_servings                       AS servings,
       Recipe.description                          AS description_view

FROM Recipe
            INNER JOIN Title
                    ON Title.title_id = Recipe.title_id
            INNER JOIN User
                    ON User.user_id = Recipe.user_id
            INNER JOIN Difficulty
                    ON Difficulty.difficulty_id = Recipe.difficulty_id
            INNER JOIN PrepTime
                    ON PrepTime.prep_time_id = Recipe.prep_time_id

);