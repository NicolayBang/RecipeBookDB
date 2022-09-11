use recipe_db_v2;


INSERT INTO User (pseudo, email) VALUES ('Nicolay', 'nicolaybang@gmail.com');
INSERT INTO User (pseudo, email) VALUES ('Test-User', 'test_user@somemail.com');
select *
from User;

INSERT INTO Difficulty (difficulty) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);
select * from Difficulty;



#INSERT INTO Category (tags_id) VALUES

INSERT INTO PrepTime (prep_time) VALUES ('N/A'),('15 min'), ('30 min'), ('45 min'), ('1 h'), ('1 h 15 min'), ('1 h 30 min'),
                                        ('1 h 45 min'), ('2 h'), ('2 h 15 min'), ('2 h 30 min'), ('2 h 45 min'), ('3 h'),
                                        ('3 h 15 min'), ('3 h 30 min'), ('3 h 45 min'), ('4 h'), ('4 h 15 min'), ('4 h 30 min'),
                                        ('4 h 45 min'), ('5 h'), ('5 h 15 min'), ('5 h 30 min'), ('5 h 45 min'), ('6 h'), ('6+ h');

INSERT INTO Title (title) VALUES ('Mint Tea'), ('Chocolate Cake'), ('Pasta');
INSERT INTO Recipe (title_id,description, nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (1,'A nice cup of mint tea',2, 3, 1,2);

INSERT INTO Recipe (title_id,description, nb_of_servings,difficulty_id, user_id, prep_time_id)
VALUES (2,'A nice piece of chocolate cake', 6 ,5,1,5);

INSERT INTO Recipe (title_id,description,nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (3,'A nice plate of pasta',4, 3, 2,3);


INSERT INTO Category (category) VALUES ('Gastro'), ('Fusion'), ('French'), ('British'),
                                                ('Japanese'), ('Mexican'), ('Chinese'), ('Indian'), ('Thai'), ('Vietnamese'),
                                                 ('Spanish'), ('Greek'), ('Portuguese'), ('Russian'), ('Turkish'), ('African'), ('Caribbean'),
                                                ('South American'),('BBQ'),('German'),('Gluten-Free'),
                                                ('Traditional'),('Scandinavian'),('Canadian'),('Other'), ('American'), ('Italian'),  ('Healthy'),
                                                ('Vegan'), ('Middle Eastern'), ('Fast Food');
INSERT INTO Tags (recipe_id, category_id) VALUES (1,30), (1,28),(2,26), (2,31), (3,27), (3,28);



INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (1, 'Mint Tea', '50g');
INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (1, 'Water', '500ml');

INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (2, 'Flour', '500g');
INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (2, 'Sugar', '500g');
INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (2, 'Chocolate', '500g');

INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (3, 'Pasta', '500g');
INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (3, 'Tomato Sauce', '500g');
INSERT INTO Ingredient (recipe_id, ingredient, quantity) VALUE (3, 'Cheese', '500g');

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,1,'Boil water');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,2,'Pour water into cup');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (1,3,'Let stand');

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,1,'Mix flour and sugar');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,2,'Add chocolate');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (2,3,'Bake for 20 minutes');

INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,1,'Boil water');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,2,'Cook pasta');
INSERT INTO Instruction (recipe_id, step_number, instruction) VALUE (3,3,'Mix sauce and cheese');

INSERT INTO Favourites (user_id, recipe_id) VALUES (1,2), (1,3),(2,1);






