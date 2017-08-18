
class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def show
    @drink = Drink.find(params[:id])
  end

  def new
    @drink = Drink.new
  end

  def create
    
    @drink = Drink.create(drink_params)
    redirect_to drink_path(@drink)
  end

  private

  def drink_params
    params.require(:drink).permit(:name, :price, :drink_category_id)
  end

end
