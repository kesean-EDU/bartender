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

  def edit
    @drink = Drink.find(params[:id])
  end

  def create
    @drink = Drink.create(drink_params)
    redirect_to drinks_path
  end


  def update
    @drink = Drink.find(params[:id])
    @drink.update(drink_params)
    redirect_to drink_path(@drink) #/drinks/1
  end

  def destroy
  end


  private
    def drinks_params
      params.require(:drinks).permit(:name, :price)
    end


end
