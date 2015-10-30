class AddVegetarianToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :vegetarian, :boolean
  end
end
