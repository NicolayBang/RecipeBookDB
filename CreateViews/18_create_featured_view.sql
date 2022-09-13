/**
  This view returns the favourite recipes of a user with the user_id. For now
  it will be hardcoded to user nicolaybang@gmail.com (user_id: 1) which will ge given
  full admin privileges in the future.
 */
 drop View if exists FavouriteRecipesView;
 CREATE View FavouriteRecipesView AS
    (


    SELECT recipe_id  AS favourite_recipes,
          User.user_id


    FROM Favourites
    INNER JOIN User on User.user_id = Favourites.user_id


        );
# dropt drop temporary table if exists FavouriteRecipesTable;
# CREATE TEMPORARY TABLE FavouriteRecipesTable AS
#     (
#
#
# SELECT recipe_id  AS favourite_recipes,
#        User.user_id
#
#
# FROM Favourites
#          INNER JOIN User on User.user_id = Favourites.user_id
#
#
#     );






SELECT * from RecipeCardView where posted_by = 'Nicolay' ;

select recipe_id from Favourites where user_id = 1;

# SELECT * from RecipeCardView where recipe_id = Favourites.recipe_id,
#     INNER JOIN Favourites ON Favourites.user_id = RecipeCard