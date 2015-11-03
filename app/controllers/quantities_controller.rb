class QuantitiesController < ApplicationController

  def index
    @quantities = Quantity.all 
  end

  def show
    @quantity = find_quantity
  end

  def new
    @quantity = Quantity.new
  end

  def create
    Quantity.create(quantity_params)
    redirect_to(quantities_path)
  end

  def destroy
    quantity = find_quantity
    quantity.destroy
    redirect_to(quantities_path)
  end

  def edit
    @quantity = find_quantity
  end

  def update
    quantity = find_quantity
    quantity.update(quantity_params)
    redirect_to(quantity_path(quantity.id))
  end

  private

  def find_quantity
    Quantity.find(params[:id])
  end

  def quantity_params
    params.require(:quantity).permit(:ingredient_id, :recipe_id, :amount)
  end

end