

SELECT * FROM RecipeCardView

        INNER JOIN Tags ON Tags.recipe_id = RecipeCardView.recipe_id
        INNER JOIN Category ON Category.category_id = Tags.category_id

#Example query that returns recipe with either given tags. By using AND clause we can restrict the search further
         #the ids will be sent as parameters to the query
         WHERE Tags.category_id = 'Gastro'
             OR Tags.category_id = 'American'

GROUP BY name#this is to remove duplicate recipes

;