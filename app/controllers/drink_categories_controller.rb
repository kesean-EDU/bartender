class DrinkCategoriesController < ApplicationController
  def index
    @drink_categories = DrinkCategory.all
  end
end
