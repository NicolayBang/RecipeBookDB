use recipe_db_v2;

/*

 insert into table user the following data:
 pseudo=Nicolay, email = nicolaybang@gmail.com
 */

INSERT INTO User (pseudo, email) VALUES ('Nicolay', 'nicolaybang@gmail.com');
select *
from User;

/*
 insert into table difficulty the numbers 0 to 10
*/

INSERT INTO Difficulty (difficulty) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);
select * from Difficulty;


INSERT INTO Category (category) VALUES ('Gastro'), ('Fusion'), ('French'), ('Italian'),
                                       ('Japanese'), ('Mexican'), ('Chinese'), ('Indian'), ('Thai'), ('Vietnamese'),
                                       ('Middle Eastern'), ('Spanish'), ('American'), ('British'), ('German'),
                                       ('Greek'), ('Portuguese'), ('Russian'), ('Turkish'), ('African'), ('Caribbean'),
                                       ('South American'), ('Fast Food'),('BBQ'),('Healthy'),('Vegan'),('Gluten-Free'),
                                       ('Traditional'),('Scandinavian'),('Canadian'),('Other');
select * from Category;





/*
 insert into table recipe the following data:
 name = 'Mint Tea', description = 'A nice cup of mint tea', ingredients ='500ml of water, 50g of Mint Tea', directions ='1) Boil water. 2) Pour water into cup. 3) Let stand for 3-5minutes' , difficulty_id = 3, category_id = 11, user_id =1
*/

INSERT INTO Recipe (name, description, ingredients, difficulty_id, category_id, user_id)
VALUES ('Mint Tea', 'A nice cup of mint tea', '500ml of water, 50g of Mint Tea', 3, 11, 1);



/*
 insert into table recipe the following data:
 name = 'Chocolate Cake', description = 'A nice piece of chocolate cake', ingredients ='500g of flour, 500g of sugar, 500g of chocolate', directions ='1) Mix flour and sugar. 2) Add chocolate. 3) Bake for 20 minutes' , difficulty_id = 5, category_id = 22, user_id =1
*/

INSERT INTO Recipe (name, description, ingredients, difficulty_id, category_id, user_id)
VALUES ('Chocolate Cake', 'A nice piece of chocolate cake', '500g of flour, 500g of sugar, 500g of chocolate', 5, 13, 1);



/*
 insert into table recipe the following data:
 name = 'Pasta', description = 'A nice plate of pasta', ingredients ='500g of pasta, 500g of tomato sauce, 500g of cheese', directions ='1) Boil water. 2) Cook pasta. 3) Mix sauce and cheese. 4) Serve' , difficulty_id = 3, category_id = 4, user_id =1
*/

INSERT INTO Recipe (name, description, ingredients, difficulty_id, category_id, user_id)
VALUES ('Pasta', 'A nice plate of pasta', '500g of pasta, 500g of tomato sauce, 500g of cheese', 3, 4, 1);

select * from Recipe;

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,1,'Boil water');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,2,'Pour water into cup');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,3,'Let stand');

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,1,'Mix flour and sugar');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,2,'Add chocolate');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,3,'Bake for 20 minutes');

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,1,'Boil water');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,2,'Cook pasta');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,3,'Mix sauce and cheese');


select * from Instruction;





