class RenameIngredientsInRecipes < ActiveRecord::Migration
  def change
    rename_column :recipes, :ingredient, :ingredients_id
    change_column :recipes, :ingredients_id, :integer
  end
end
