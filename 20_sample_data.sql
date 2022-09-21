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

#To populate first add the title, then the Recipe and then the ingredients and instructions which are assigned to a recipe_id. Assign Tags at the end.
INSERT INTO Title (title) VALUES ('Mint Tea'), ('Chocolate Cake'), ('Pasta');
INSERT INTO Title (title) VALUES ('Traditional French Omelette'), ('Southern Fried Chicken'), ('Baked Salmon');
INSERT INTO Title (title) VALUES ('Chicken Parmesan'), ('Chicken Pot Pie'), ('Chicken and Dumplings');
INSERT INTO Recipe (title_id,description, nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (1,'A nice cup of mint tea',2, 3, 1,2);

INSERT INTO Recipe (title_id,description, nb_of_servings,difficulty_id, user_id, prep_time_id)
VALUES (2,'A nice piece of chocolate cake', 6 ,5,1,5);

INSERT INTO Recipe (title_id,description,nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (3,'A nice plate of pasta',4, 3, 2,3);

/*Populate with 10 different recipes
*/
INSERT INTO Recipe (title_id,description,nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (4,'Hotel style French omelette',2, 4, 1,2),
       (5,'Southern fried chicken',4, 5, 1,3),
       (6,'Baked salmon',2, 6, 1,4);

INSERT INTO Recipe (title_id,description,nb_of_servings, difficulty_id, user_id, prep_time_id)
VALUES (7,'Chicken Parmesan',4, 7, 1,5),
       (8,'Chicken Pot Pie',2, 8, 1,6),
       (9,'Chicken Dumplings',4, 9, 1,7);



INSERT INTO Category (category_id) VALUES ('Gastro'), ('Fusion'), ('French'), ('British'),
                                                ('Japanese'), ('Mexican'), ('Chinese'), ('Indian'), ('Thai'), ('Vietnamese'),
                                                 ('Spanish'), ('Greek'), ('Portuguese'), ('Russian'), ('Turkish'), ('African'), ('Caribbean'),
                                                ('South American'),('BBQ'),('German'),('Gluten-Free'),
                                                ('Traditional'),('Scandinavian'),('Canadian'),('Other'), ('American'), ('Italian'),  ('Healthy'),
                                                ('Vegan'), ('Middle Eastern'), ('Fast Food');

INSERT INTO Category (category_id) VALUES ('Fish'), ('Meat'), ('Vegetarian'), ('Dessert'), ('Breakfast'), ('Lunch'), ('Dinner'), ('Snack'), ('Appetizer'), ('Drink'),
                                          ('Brunch'), ('Side Dish'), ('Salad'), ('Soup'), ('Poultry');

INSERT INTO Tags (recipe_id, category_id) VALUES (1,'British'), (1,'Middle Eastern'),(2,'Italian'),
                                                 (2,'Gastro'), (3,'American'), (3,'Traditional'), (4,'French'), (4,'Healthy'), (5,'American'), (5,'BBQ'), (6,'American'), (6,'Healthy'),
                                                 (7,'Italian'), (7,'Poultry'), (8,'Poultry'), (8,'Traditional'), (9,'Chinese'), (9,'Poultry');

#Insert into UnitType all types of unit of measurement (ex metric, imperial, etc)
INSERT INTO UnitType (unit_type_name) VALUES ('Metric'), ('US'), ('Other');

#Insert into Unit all units of measurement (ex kilogram, gram, etc)

# INSERT INTO Unit (unit_type_id, unit) VALUES (1,'Gram'), (1,'Kilogram'), (1,'Liter'), (1,'Milliliter'), (1,'Piece'),
#                                             (2,'Pound'), (2,'Ounce'), (2,'Teaspoon'), (2,'Tablespoon'), (2,'Cup'), (2,'Pint'),
#                                             (3,'Teaspoon'), (3,'Tablespoon'), (3,'Cup
/*
Insert into Unit table all the units of measure including metric, imperial, US, object and other
*/
INSERT INTO Unit (unit_type_id, unit_name) VALUES (3, ''),
                                               (1,'Gram'), (1,'Kilogram'), (1,'Liter'), (1,'Milliliter'), (1,'Piece'),
                                            (2,'Pound'), (2,'Ounce'), (2,'Teaspoon'), (2,'Tablespoon'), (2,'Cup'), (2,'Pint'),
                                           (2,'Quart'), (2,'Gallon'),(2,'Pint'),
                                            (3,'Bunch'), (3,'Can'), (3,'Bottle'), (3,'Box'), (3,'Bag'), (3,'Bowl'),
                                            (3,'Jar'), (3,'Cup'),  (3, 'Pinch'),(3,'Clove'),(3,'Sprigs');


INSERT INTO Ingredients (recipe_id) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9);



INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (1, 'Mint Tea', '50', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (1, 'Water', '500', 4);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Flour', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Sugar', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (2, 'Chocolate', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Pasta', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Tomato Sauce', '500', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (3, 'Cheese', '500',1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (4, 'Egg', '2', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (4, 'Butter', '1', 10);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (4, 'Milk', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (4, 'Salt', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (4, 'Pepper', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (5, 'Chicken', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (5, 'Flour', '1', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (5, 'Salt', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (5, 'Pepper', '1', 13);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (5, 'Oil', '1', 10);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Salmon', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Salt', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Pepper', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Oil', '1', 10);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Lemon', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Garlic', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (6, 'Parsley', '1', 26);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Chicken', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Salt', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Pepper', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Oil', '1', 10);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Parmesan Cheese', '1', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Parsley', '1', 26);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Lemon', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (7, 'Garlic', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Chicken', '1', 1);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Salt', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Pepper', '1', 25);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Butter', '1', 10);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Chopped Celery', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Chopped Onion', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (8, 'Chopped Carrot', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Minced Coriander', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Minced Cumin', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Minced Garlic', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Minced Ginger', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Minced Turmeric', '1/2', 11);
INSERT INTO Ingredient (ingredients_id, ingredient, quantity, unit_id) VALUE (9, 'Chopped Chicken Breasts', '1', 1);



INSERT INTO Steps (step_nb) VALUES ('1)'), ('2)'), ('3)'), ('4)'), ('5)'), ('6)'), ('7)'), ('8)'), ('9)'),
                                   ('10)'), ('11)'), ('12)'), ('13)'), ('14)'), ('15)'), ('16)'), ('17)'), ('18)'), ('19)'), ('20)')
                                   , ('21)'), ('22)'), ('23)'), ('24)'), ('25)'), ('26)'), ('27)'), ('28)'), ('29)'), ('30)');

INSERT INTO Instructions (recipe_id) VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9);

INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (1,'Boil water',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (1,'Pour water into cup', 2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (1,'Let stand',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (2,'Mix flour and sugar',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (2,'Add chocolate',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (2,'Bake for 20 minutes',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (3,'Boil water',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (3,'Cook pasta',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (3,'Mix sauce and cheese',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (4,'Beat eggs',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (4,'Add milk',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (4,'Add butter',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (4,'Add salt and pepper',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (4,'Cook for 10 minutes',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (5,'Cut chicken into pieces',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (5,'Add flour',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (5,'Add salt and pepper',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (5,'Add oil',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (5,'Cook for 10 minutes',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Add salt and pepper',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Add oil',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Add lemon',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Add garlic',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Add parsley',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (6,'Cook for 10 minutes',6);

INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Add salt and pepper',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Add oil',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Add lemon',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Add garlic',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Add parsley',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (7,'Cook for 10 minutes',6);

INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Add salt and pepper',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Add oil',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Add lemon',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Add garlic',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Add parsley',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (8,'Cook for 10 minutes',6);

INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Add salt and pepper',1);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Add oil',2);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Add lemon',3);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Add garlic',4);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Add parsley',5);
INSERT INTO Instruction (instructions_id,instruction, step_id) VALUE (9,'Cook for 10 minutes',6);




INSERT INTO Favourites (user_id, recipe_id) VALUES (1,2), (1,3),(1,1),(1,4),(1,5),(1,6),(1,7), (1,8), (1,9),(2,1);





