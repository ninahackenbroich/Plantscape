class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = plant.find(params[:id])
  end

  def create
    authorize @plant
  end

  def new
    @plant = Plant.new
    authorize @plant
  end

  def edit
    authorize @plant
  end

  def update
    authorize @plant
  end

  def destroy
    authorize @plant
  end

  private

  def plants_params
    params.require(:plant).permit(:name, :water, :light, :soil, :fertilizer, :repotting)
  end
end
