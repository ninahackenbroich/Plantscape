class JungleplantsController < ApplicationController

  def index
    @jungleplants = JunglePlant.all

  end

  def show
    authorize @jungleplant

  end

  def create
    @jungleplant = JunglePlant.new
    authorize @jungleplant

  end

  def new
    authorize @jungleplant

  end

  def edit
    authorize @jungleplant

  new

  def update
    authorize @jungleplant

  end

  def destroy
    authorize @jungleplant

  end

end
