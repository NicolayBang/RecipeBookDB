use recipe_db_v2;
describe User;
describe Difficulty;
describe Category;
describe Image;
describe Recipe;
describe PrepTime;
describe Ingredient;
describe Instruction;
describe Title;

select * from User;
select * from Difficulty;
select * from Category;
select * from Image;

select * from Recipe;
select * from Recipe where recipe_id = 1;

select * from PrepTime;

select * from Ingredient;
select * from Ingredient where recipe_id = 1;

select * from Instruction;
select * from Instruction where recipe_id = 1;
select * from Title;
