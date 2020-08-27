class JungleplantsController < ApplicationController
  before_action :set_jungle, only:[:new, :create]

  def index
    @jungleplants = Jungleplant.all
    authorize @jungleplants
  end

  def show
    authorize @jungleplant
  end

  def new
    @jungleplant = Jungleplant.new
    @plants = Plant.all
    # authorize @jungleplant
    authorize @plants
    authorize @jungle
  end

  def create
    @jungleplant = Jungleplant.create(jungleplant_params)
    @jungleplant.jungle = @jungle
    if @jungleplant.save
      redirect_to jungle_path(@jungle)
    else
      render :new
    end
    authorize @jungleplant
    authorize @jungle
  end

  def edit
    authorize @jungleplant
  end

  def update
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
    params.require(:jungleplant).permit(:status, :comment, :plant_id)
  end

end
