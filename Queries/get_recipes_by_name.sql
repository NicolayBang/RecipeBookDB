#This query returns a recipe that contains a given string in its name
SELECT * FROM RecipeCardView WHERE name LIKE '%chicken%';