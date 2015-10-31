class RemoveIngredientsFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :ingredients_id, :integer
  end
end
