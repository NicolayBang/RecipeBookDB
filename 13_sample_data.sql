use recipe_db_v2;


INSERT INTO User (pseudo, email) VALUES ('Nicolay', 'nicolaybang@gmail.com');
INSERT INTO User (pseudo, email) VALUES ('Test-User', 'test_user@somemail.com');
select *
from User;

INSERT INTO Difficulty (difficulty) VALUES (0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10);
select * from Difficulty;


INSERT INTO Category (category) VALUES ('Gastro'), ('Fusion'), ('French'), ('Italian'),
                                       ('Japanese'), ('Mexican'), ('Chinese'), ('Indian'), ('Thai'), ('Vietnamese'),
                                       ('Middle Eastern'), ('Spanish'), ('American'), ('British'), ('German'),
                                       ('Greek'), ('Portuguese'), ('Russian'), ('Turkish'), ('African'), ('Caribbean'),
                                       ('South American'), ('Fast Food'),('BBQ'),('Healthy'),('Vegan'),('Gluten-Free'),
                                       ('Traditional'),('Scandinavian'),('Canadian'),('Other');

INSERT INTO PrepTime (prep_time) VALUES ('N/A'),('15 min'), ('30 min'), ('45 min'), ('1 h'), ('1 h 15 min'), ('1 h 30 min'),
                                        ('1 h 45 min'), ('2 h'), ('2 h 15 min'), ('2 h 30 min'), ('2 h 45 min'), ('3 h'),
                                        ('3 h 15 min'), ('3 h 30 min'), ('3 h 45 min'), ('4 h'), ('4 h 15 min'), ('4 h 30 min'),
                                        ('4 h 45 min'), ('5 h'), ('5 h 15 min'), ('5 h 30 min'), ('5 h 45 min'), ('6 h'), ('6+ h');

INSERT INTO Recipe (description, nb_of_servings, difficulty_id, category_id, user_id, prep_time_id)
VALUES ('A nice cup of mint tea',2, 3, 11, 1,2);

INSERT INTO Recipe (description, nb_of_servings,difficulty_id, category_id, user_id, prep_time_id)
VALUES ('A nice piece of chocolate cake', 6 ,5, 13, 1,5);

INSERT INTO Recipe (description,nb_of_servings, difficulty_id, category_id, user_id, prep_time_id)
VALUES ('A nice plate of pasta',4, 3, 4, 2,3);

INSERT INTO Title (recipe_id, title) VALUES (1,'Mint Tea'), (2,'Chocolate Cake'), (3,'Pasta');

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






