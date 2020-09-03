class JungleplantsController < ApplicationController
  before_action :set_jungle, only: [:new, :show, :create, :edit, :update, :destroy]

  def index
    @jungleplants = Jungleplant.all
    authorize @jungleplants
  end

  def show
    @jungleplant =  Jungleplant.find(params[:id])
    authorize @jungleplant
    @plant = @jungleplant.plant
  end

  def new
    @jungleplant = Jungleplant.new
    @plants = Plant.all
    # authorize @jungleplant
    authorize @plants
    authorize @jungleplant
  end

  def create
    @jungleplant = Jungleplant.new(jungleplant_params)
    @jungleplant.jungle = @jungle
    @jungleplant.save
    if @jungleplant.save!
      redirect_to dashboards_index_path(@jungle)
    else
      render :new
    end
    authorize @jungleplant
    authorize @jungle
  end

  def edit
    @jungleplant = Jungleplant.find(params[:id])
    @plant = @jungleplant.plant
    authorize @jungleplant
  end

  def update
    @jungleplant = Jungleplant.find(params[:id])
    if @jungleplant.update(jungleplant_params)
      redirect_to dashboards_index_path, notice: 'Your plant was successfully updated.'
    else
      render :edit
    end
  	authorize @jungle
    authorize @jungleplant
  end

  def destroy
    @jungleplant = Jungleplant.find(params[:id])
    authorize @jungleplant
    @jungleplant.destroy!
    redirect_to dashboards_index_path, notice: ' Your Jungleplan was successfully destroyed.'
  end

  private

  def set_jungle
    @jungle = current_user.jungles.first
  end

  def jungleplant_params
    params.require(:jungleplant).permit(:status, :comments, :plant_id)
  end

end
