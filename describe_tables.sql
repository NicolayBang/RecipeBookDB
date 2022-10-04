show databases;

use recipe_db_v2;
describe User;
describe Difficulty;
describe Category;
describe Tags;
describe Image;
describe Recipe;
describe PrepTime;
describe Ingredient;
describe Instruction;
describe Title;
describe Favourites;

select * from User;
select * from Difficulty;
select * from Category;
select * from Image;

select*from Unit;

select * from Recipe;
select * from Recipe where recipe_id = 1;

select * from PrepTime;

select * from Ingredient;
select * from Ingredient where ingredients_id = 10;

select*from Tags;
select*from Tags where recipe_id = 10;
select* from Category;
select * from Instruction;
select * from Instruction where instructions_id = 4;
select * from Title;

select * from Favourites;
select * from Favourites where user_id = 1;
select * from Favourites where recipe_id = 1;

select * from RecipeIngredientsView;
select * from RecipeInstructionsView where recipe_id = 1;
select * from TagsView;

select * from TagsView;

select * from RecipeCardView;

#Create a query that gets all the recipe with the selected category_id
SELECT LAST_INSERT_ID() as id;


SELECT unit_id FROM Unit Where unit_name = 'Cup'






































