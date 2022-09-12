use recipe_db_v2;


INSERT INTO Image (image_id) VALUE ('default.jpg');

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

#Insert into UnitType all types of unit of measurement (ex metric, imperial, etc)
INSERT INTO UnitType (unit_type_name) VALUES ('Metric'), ('US'), ('Other');

#Insert into Unit all units of measurement (ex kilogram, gram, etc)

# INSERT INTO Unit (unit_type_id, unit) VALUES (1,'Gram'), (1,'Kilogram'), (1,'Liter'), (1,'Milliliter'), (1,'Piece'),
#                                             (2,'Pound'), (2,'Ounce'), (2,'Teaspoon'), (2,'Tablespoon'), (2,'Cup'), (2,'Pint'),
#                                             (3,'Teaspoon'), (3,'Tablespoon'), (3,'Cup
/*
Insert into Unit table all the units of measure including metric, imperial, US, object and other
*/
INSERT INTO Unit (unit_type_id, unit_name) VALUES (1,'Gram'), (1,'Kilogram'), (1,'Liter'), (1,'Milliliter'), (1,'Piece'),
                                            (2,'Pound'), (2,'Ounce'), (2,'Teaspoon'), (2,'Tablespoon'), (2,'Cup'), (2,'Pint'),
                                            (3, 'Pinch'),
                                            (3,'Bunch'), (3,'Can'), (3,'Bottle'), (3,'Box'), (3,'Bag'), (3,'Bowl'),
                                            (3,'Jar'), (3,'Cup'), (3,'Pint'), (3,'Quart'), (3,'Gallon'), (3,'Pinch');


INSERT INTO Ingredients (recipe_id) VALUES (1), (2), (3);



INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (1, 'Mint Tea', '50', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (1, 'Water', '500', 4);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Flour', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Sugar', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Chocolate', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Pasta', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Tomato Sauce', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Cheese', '500',1);


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





