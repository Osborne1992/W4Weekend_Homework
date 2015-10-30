class AddKindToIngredient < ActiveRecord::Migration
  def change
    add_column :ingredients, :kind, :string
  end
end
