class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all.order(:name)
  end

  def show
    @ingredient = find_ingredient
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to(ingredients_path)
  end

  def destroy
    ingredient = find_ingredient
    ingredient.destroy
    redirect_to(ingredients_path)
  end

  def edit
    @ingredient = find_ingredient
  end

  def update
    ingredient = find_ingredient
    ingredient.update(ingredient_params)
    redirect_to(ingredients_path)
  end

  private

  def find_ingredient
    Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end