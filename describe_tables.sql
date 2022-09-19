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



select * from Recipe;
select * from Recipe where recipe_id = 1;

select * from PrepTime;

select * from Ingredient;
select * from Ingredient where ingredients_id = 1;

select*from Tags;
select*from Tags where recipe_id = 1;

select * from Instruction;
select * from Instruction where instructions_id = 1;
select * from Title;

select * from Favourites;
select * from Favourites where user_id = 1;
select * from Favourites where recipe_id = 1;

select * from RecipeCardView;
select * from RecipeIngredientsView;
select * from RecipeInstructionsView where recipe_id = 1;
select * from TagsView;

select * from TagsView;
