class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
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
  
end
