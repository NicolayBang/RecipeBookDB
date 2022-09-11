CREATE TABLE Title(
    title_id INT NOT NULL AUTO_INCREMENT,
  #  recipe_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    PRIMARY KEY (title_id)
);
#ALTER TABLE Title ADD CONSTRAINT fk_title_recipe_id FOREIGN KEY (recipe_id) REFERENCES Recipe(recipe_id);

