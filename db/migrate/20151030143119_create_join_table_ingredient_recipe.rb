class CreateJoinTableIngredientRecipe < ActiveRecord::Migration
  def change
    create_join_table :ingredients, :recipes do |t|
      # t.index [:ingredients_id, :recipes_id]
      # t.index [:recipes_id, :ingredients_id]
    end
  end
end
