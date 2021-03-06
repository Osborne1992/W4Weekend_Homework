class RecipesController < ApplicationController

  load_and_authorize_resource

  def index
    @recipes = Recipe.all.order(:name)
  end

  def show
    @recipe = find_recipe
  end

  def new
    @recipe = current_user.recipes.new
  end

  def create
    recipe = current_user.recipes.create(recipe_params)
    redirect_to( recipe_path( recipe.id ) )
  end

  def destroy
    recipe = find_recipe
    recipe.destroy
    redirect_to(recipes_path)
  end

  def edit
    @recipe = find_recipe
  end

  def update
    recipe = find_recipe
    recipe.update(recipe_params)
    redirect_to(recipe_path(recipe.id))
  end

  private

  def find_recipe
    Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :category_id, :vegetarian, :instructions, { ingredient_ids: [] })
  end

end