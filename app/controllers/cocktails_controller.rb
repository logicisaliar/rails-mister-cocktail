class CocktailsController < ApplicationController

  before_action :set_cocktail, only: [:show]

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    redirect_to cockatil_path(@cocktail) if @cocktail.save
    render :new
  end

  def show
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
