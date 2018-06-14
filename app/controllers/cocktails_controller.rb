class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show]

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      return cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show
    @doses = Dose.where(cocktail_id: @cocktail.id)
  end

  def index
    @cocktails = Cocktail.all
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
