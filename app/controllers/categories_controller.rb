class CategoriesController < ApplicationController

  load_and_authorize_resource

  def index
    @categories = Category.all.order(:name)
  end

  def show
    @category = find_category
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.create(category_params)
    redirect_to(category_path(category.id))
  end

  def destroy
    category = find_category
    category.destroy
    redirect_to(categories_path)
  end

  def edit
    @category = find_category
  end

  def update
    category = find_category
    category.update(category_params)
    redirect_to(category_path(category.id))
  end

  private

  def find_category
    Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end

end