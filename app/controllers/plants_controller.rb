class PlantsController < ApplicationController
  def index
    @plants = policy_scope(Plant)
  end

  def show
    @plant = Plant.find(params[:id])
    authorize @plant
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
