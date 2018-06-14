class DosesController < ApplicationController

  before_action :set_cocktail, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail_id = @cocktail.id
    if @dose.save
      redirect_to cocktail_path(@dose.cocktail_id)
    else
      render :new
    end
  end

  def index
    redirect_to cocktails_path
  end

  # def delete
  #   @dose = Dose.find(params[:id])
  #   @dose.delete
  # end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
