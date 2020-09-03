class JungleplantsController < ApplicationController
  before_action :set_jungle, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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
    authorize @jungle
  end

  def create
    @jungleplant = Jungleplant.new(jungleplant_params)
    @jungleplant.jungle = @jungle
    @jungleplant.save
    if @jungleplant.save
      redirect_to dashboards_index_path
    else
      render :new
    end
    authorize @jungleplant
    authorize @jungle
  end

  def edit
    authorize @jungleplant
    @plant = @jungleplant.plant
  end

  def update
    if @jungleplant.update(jungleplant_params)
      redirect_to @dashboard, notice: 'Your plant was successfully updated.'
    else
      render :edit
    end
  	authorize @jungle
    authorize @jungleplant
  end

  def destroy
    authorize @jungleplant
  end

  private

  def set_jungle
    @jungle = Jungle.find(params[:jungle_id])
  end

  def jungleplant_params
    params.require(:jungleplant).permit(:status, :comments, :plant_id)
  end

end
