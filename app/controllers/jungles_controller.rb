class JunglesController < ApplicationController
  before_action :set_jungle, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @jungles = policy_scope(Jungle)
    @user = current_user
    @jungles = Jungle.all
    authorize @jungles
  end

  def show
    authorize @jungle
  end

  def new
    @jungle = Jungle.new
    authorize @jungle
  end
  

  def create
    set_user
    @jungle = Jungle.new(jungle_params)
    authorize @jungle
    @jungle.user = @user
    @jungle.save
    authorize @jungle
    if @jungle.save!
      # jungle.create!(title: life_params.title, description: life_params.description, user_id: current_user.id)
      redirect_to jungle_path(@jungle)
    else
      render :new
    end
  end

  def edit
  	authorize @jungle
  end

  def update
    if @jungle.update(jungle_params)
      redirect_to @jungle, notice: 'Your jungle was successfully updated.'
    else
      render :edit
    end
  	authorize @jungle
  end

  def destroy
    authorize @jungle
    @jungle.destroy!
    redirect_to dashboards_index_path, notice: ' Your Jungle was successfully destroyed.'
  end

  private

  def set_user
    @user = current_user
  end

  def set_jungle
    @jungle = Jungle.find(params[:id])
  end

  def jungle_params
    params.require(:jungle).permit(:name, :address, :photo)
  end
end
