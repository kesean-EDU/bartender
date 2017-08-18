class BartendersController < ApplicationController

  def index
    @bartenders = Bartender.all
  end

  def new
    @bartender = Bartender.new
  end

  def create
    # byebug
    @bartender = Bartender.create(bartender_params)
    redirect_to bartenders_path
  end

  private

  def bartender_params
    params.require(:bartender).permit(:name, :drink_category_id, bar_ids: [])
  end
end
