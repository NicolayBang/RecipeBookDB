CREATE View RecipeIngredientsView AS
(
SELECT
    Title.title               AS   recipe_name,
    Ingredient.ingredient                     ,
    Ingredient.quantity      AS         amount,
    Unit.unit_name           AS unit_of_measure,
    Recipe.recipe_id

FROM Recipe
         INNER JOIN Ingredients ON Ingredients.recipe_id = Recipe.recipe_id
         INNER JOIN Ingredient ON Ingredient.ingredients_id = Ingredients.ingredients_id
         INNER JOIN Unit ON Unit.unit_id = Ingredient.unit_id
         INNER JOIN Title ON Title.title_id = Recipe.title_id




    );


