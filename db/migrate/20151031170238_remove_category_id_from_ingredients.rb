class RemoveCategoryIdFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :category_id, :integer
  end
end
