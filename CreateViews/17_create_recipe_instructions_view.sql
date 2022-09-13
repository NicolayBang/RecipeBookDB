
#Create a view that shows the Instruction
# in ascending order based on the step_id of the Instruction
# and the name of the recipe

#drop view if exists RecipeInstructionsView;
CREATE View RecipeInstructionsView AS
    (
     SELECT
         Steps.step_nb                               ,
         Instruction.instruction                     ,
         Title.title                   AS recipe_name,
         Instructions.recipe_id

    FROM Recipe
        INNER JOIN Instructions ON Instructions.recipe_id= Recipe.recipe_id
        INNER JOIN Instruction ON Instruction.instructions_id = Instructions.instructions_id
        INNER JOIN Steps ON Steps.step_id = Instruction.step_id
        INNER JOIN Title ON Title.title_id = Recipe.title_id

    ORDER BY Steps.step_nb ASC
    );
